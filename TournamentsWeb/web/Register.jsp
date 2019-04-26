<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="beans.Usuario" scope="request" type="beans.Usuario"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<% if(request.getParameter("alias")!=null){%>
    <jsp:forward page="/Controlador/Register"/>    
<%}%>
<!DOCTYPE html>
<html>
    <head>       
        <title>Registro</title>
        <%@include file="/includes/headerLinks.html" %>
        <link rel="stylesheet" href="css/regis.css">
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
        </header>
        <!--Set here the body -->
       
        <div class="container" style="cursor:default;">
            <div class="d-flex justify-content-center">
                <div class="card">
                    <article class="card-body mx-auto" style="max-width: 400px;">
                        <div class="card-header">
                            <h3>Registro</h3>
                        </div>

                        <p>
                            <a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Login via Twitter</a>
                            <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Login via facebook</a>
                        </p>
                        <p class="divider-text">
                            <span class="bg-light">O</span>
                        </p>
                        <form method="post" onsubmit="return Validate()" >
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                </div>
                                <input name="nombre" class="form-control" placeholder="Nombre" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                </div>
                                <!--fa fa-envelope-->
                                <input name="alias" class="form-control" placeholder="Nombre de Usuario" type="text" required>
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                                </div>
                                <input id="email" name="email" class="form-control" placeholder="nombre@gmail.com" type="email" required>

                            </div>
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                                </div>
                                <!--
                PARA LOS PREFIJOS TELEFÓNICOS
                <select class="custom-select" style="max-width: 120px;">
                                    <option selected="">+34</option>
                                    <option value="1">+972</option>
                                    <option value="2">+198</option>
                                    <option value="3">+701</option>
                                </select>-->
                                <input id="telefono" name="telefono" class="form-control" placeholder="Teléfono Movil" type="number" required>
                            </div> <!-- form-group// -->

                            <!-- form-group end.// -->
                            <div id="PasswordError" style="color:red;"></div>
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input id="password" name="password" class="form-control" placeholder="Crear Contraseña" type="password" onkeyup ="CheckPassword();" required>
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input id="password2" name="password2" class="form-control" placeholder="Repetir Contraseña" type="password" onkeyup ="CheckPassword();" required>
                            </div> <!-- form-group// -->                                      
                            <div class="form-group">
                                <button id="submit" type="submit" class="btn btn-primary btn-block" > Crear Cuenta  </button>
                            </div> <!-- form-group// -->      
                                                                                           
                        </form>
                        
                         <div class="d-flex justify-content-center links">
                                ¿Ya tienes una cuenta?<a href="Login.jsp">¡Log In!</a>
                            </div> 
                    </article>
                </div> <!-- card.// -->
            </div>
        </div> 
        <script>
            
           /* var alias= document.getElementById("alias");
            var nombre= document.getElementById("nombre");
            var email= document.getElementById("email");*/
            var password= document.getElementById("password");
            var password2= document.getElementById("password2");
            var telefono= document.getElementById("telefono");
            var passwordChecked=false;
            document.getElementById("PasswordError").innerHTML="";
            var Validate= function(){
                
                if(passwordChecked){
                    return true;
                }
                document.getElementById("PasswordError").innerHTML="Las contraseñas no coinciden";
                password.style.borderborderColor="red";
                password2.style.borderborderColor="red";
                return false;
            };
            
            
            var CheckPassword=function (){
              
                if(password.value===password2.value){
                    passwordChecked=true;
                    
                }else{
                    passwordChecked=false;                       
                  
                }
                
            };
            
            
        </script>
        <%@include file="/includes/footer.html" %>
    </body>
</html>
