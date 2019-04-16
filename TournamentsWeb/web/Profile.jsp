<%-- 
    Document   : Profile
    Created on : 16-abr-2019, 11:58:08
    Author     : hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil</title>
         <%@include file="/includes/headerLinks.html" %>         
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
           
            <%@include file="/includes/headerUser.html" %>
            
        </header>
            
            <%@include file="/includes/miPerfil.jsp" %>
            
             <%@include file="/includes/footer.html" %>
    </body>
</html>
