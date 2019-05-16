<%-- 
    Document   : blog
    Created on : Apr 23, 2019, 2:04:36 PM
    Author     : JF
--%>
<%@page import="beans.Noticia, java.util.*, DAO.NoticiasDAO, beans.GlobalInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/headerLinks.html" %>
        
    </head>
    
    <header>
        <%@include file="/includes/header.jsp" %>
    </header>
    <body>
        <!-- Recuperamos la noticia -->
      <% Noticia mensajes =(Noticia)session.getAttribute("noticia");%>
      <% int id = mensajes.getIdNot(); %>
      <% String res = mensajes.getTitular();%>
      <% String titulo = mensajes.getResumen();%>
      <% String texto = mensajes.getNoticiaTexto();%>
      <% String img = mensajes.getImgNoticia();%>
      <% String autor = mensajes.getAutor().getAlias();%>
      <% Date date = mensajes.getFechaNoticia();%>
       
      
      
       <!-- Page Content -->
  <div class="container">

    <div class="row"> 
        <div class="col-lg-8">
            <!-- Title -->
            <h1 class="mt-4">
                <%=titulo%>
            </h1> 
            <!-- Author -->
            <p class="lead">
          by
          <a href="PaginaNoticias?noticia=arrayautor"><%=autor%></a>
        </p>
        <hr>
            <!-- Date/Time -->
        <p class="getdate" id="getdate">Publicado el <%=date%> </p>
        
        <hr>
        <!-- Preview Image -->
        <img class="img-fluid rounded" src="img/<%=img%>" alt="">
        <hr>
        
        <!-- Post Content -->
        <p class="lead"> <strong><%=res%> </strong></p>
        
        <%=texto%>
        
        </div>
    </div>
  </div>
        
        
        
        <%@include file="/includes/principal/principal.jsp" %>
        <%@include file="/includes/footer.html" %>
    </body>
    <!--<div onclick="-->
             <%//if(request.getParameter("textoNoticia")!=null){%>
    <%//}%>" 
</html>
