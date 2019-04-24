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
       
        <div class="container">
            <div class="d-flex justify-content-center">
                <div class="card">">
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
                        <form method="post" >
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                </div>
                                <input name="nombre" class="form-control" placeholder="Nombre" type="text">
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                                </div>
                                <!--fa fa-envelope-->
                                <input name="alias" class="form-control" placeholder="Nombre de Usuario" type="text">
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                                </div>
                                <input name="email" class="form-control" placeholder="nombre@gmail.com" type="email">

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
                                <input name="telefono" class="form-control" placeholder="Teléfono Movil" type="number">
                            </div> <!-- form-group// -->

                            <!-- form-group end.// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input name="password" class="form-control" placeholder="Crear Contraseña" type="password">
                            </div> <!-- form-group// -->
                            <div class="form-group input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                                </div>
                                <input name="password2" class="form-control" placeholder="Repetir Contraseña" type="password">
                            </div> <!-- form-group// -->                                      
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block"> Crear Cuenta  </button>
                            </div> <!-- form-group// -->      
                                                                                           
                        </form>
                        
                         <div class="d-flex justify-content-center links">
                                ¿Ya tienes una cuenta?<a href="Login.jsp" style="font-size: 2.2vh">¡Log In!</a>
                            </div> 
                    </article>
                </div> <!-- card.// -->
            </div>
        </div> 
        
        <%@include file="/includes/footer.html" %>
    </body>
</html>
