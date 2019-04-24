
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<jsp:useBean id="user" class="beans.Usuario" scope="request" type="beans.Usuario"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<% if(request.getParameter("alias")!=null){%>
    <jsp:forward page="/Controlador/Login"/>    
<%}%>
<% Cookie[] cookies = request.getCookies();
    boolean remember=false;
    String username="";
    String password="";
    if (cookies != null) {
        for (Cookie cookie : cookies) {
           if(cookie.getName().equals("remember")){
               if(cookie.getValue().equals("true")){
                  remember=true; 
               }
           }else if(cookie.getName().equals("user")){
              username=cookie.getValue();
           }else if(cookie.getName().equals("password")){
              password=cookie.getValue();
           }
        }
}%>
<!DOCTYPE html>
<html>
    <head>       
        <title>Login</title>
        <%@include file="/includes/headerLinks.html" %>
        <link rel="stylesheet" type="text/css" href="css/Login.css">
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
        </header>
        <!--Set here the body -->
       
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Login</h3>
                    <!-- Iconos de twiter y tal que creo que sobran
                                    <div class="d-flex justify-content-end social_icon">
                                            <span><i class="fab fa-facebook-square"></i></span>
                                            <span><i class="fab fa-google-plus-square"></i></span>
                                            <span><i class="fab fa-twitter-square"></i></span>
                                    </div>-->

                </div>
                <div class="card-body">
                    <form method="post" onsubmit="validateForm()">
                         <% if(request.getParameter("Error")!=null){%> 
                            <div style="color:red;">Error en Usuario o Contraseña</div>
                        <%}%>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            
                            <input type="text" class="form-control" name="alias" placeholder="Usuario" <%=(remember?"value="+username:"")%> required >

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" name="password" placeholder="Contraseña" <%=(remember?"value="+password:"")%> required>
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox" name="remember" value="remember" <%=(remember?"checked":"")%>>Recordarme
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Login" class="btn float-right login_btn" >
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">

                        ¿No tienes una cuenta?<a href="Register.jsp" style="color:white;">¡Regístrate!</a>

                    </div> 
                    <div class="d-flex justify-content-center">
                        <a href="#" style="color:white;">¿Has olvidaddo tu contraseña?</a>
                    </div>
                </div>
            </div>
        </div>
      
        <%@include file="/includes/footer.html" %>
    </body>
</html>
