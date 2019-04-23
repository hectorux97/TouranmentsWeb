<%-- 
    Document   : Login
    Created on : 23-abr-2019, 16:31:04
    Author     : hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" class="beans.Usuario" scope="request" type="beans.Usuario"></jsp:useBean>
<jsp:setProperty name="usuario" property="*"></jsp:setProperty>
<% if(request.getParameter("alias")!=null){%>
    <jsp:forward page="/Controlador/Login"/>
    
<%}%>
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
                    <form method="post" >
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control" name="alias" placeholder="Usuario">

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" name="password" placeholder="Contraseña">
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox">Recordarme
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Login" class="btn float-right login_btn">
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">

                        ¿No tienes una cuenta?<a href="regis.html" style="color:white;">¡Regístrate!</a>

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
