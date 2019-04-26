<%-- 
    Document   : blog2
    Created on : Apr 23, 2019, 2:26:05 PM
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
    <% ArrayList noticias =(ArrayList)request.getAttribute("noticias");
        for(int i=0;i<1;i++){
            Noticia n=(Noticia)noticias.get(i);%>
                <% int id = n.getIdNot(); %>
                <% String res = n.getTitular();%>
                <% String titulo = n.getResumen();%>
                <% String texto = n.getNoticiaTexto();%>
                <% String img = n.getImgNoticia();%>
                <% String autor = n.getAutor();%>
                <% Date date = n.getFechaNoticia();%>
                <% String tipo = n.getTipoNoticia();%>
                
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
        
        <%}%>
        
        
    
  
        
    <!-- Sidebar Widgets Column -->
    <div class="col-md-4">
        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="PaginadeNoticias?noticia=arraytipo tipoNoticia=gamer">#B Gamer</a>
                  </li>
                  <li>
                    <a href="PaginadeNoticias?noticia=arraytipo tipoNoticia=esports">#B ESports</a>
                  </li>
                  
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="PaginadeNoticias?noticia=arraytipo tipoNoticia=novedades">#B Novedades</a>
                  </li>
                  <li>
                    <a href="PaginadeNoticias?noticia=arraytipo tipoNoticia=review">#B Review</a>
                  </li>
                  
                </ul>
              </div>
            </div>
          </div>
        </div>
        
        
        <!-- Las noticias relacionadas
         Tenemos que darles estilos al a con id 1 y 2 para que se vea bien-->
        
        <div class="card my-4">
          <h5 class="card-header">Quizás te interese...</h5>
          <%for(int i=1;i<3;i++){
            Noticia n=(Noticia)noticias.get(i);%>
                <% int id = n.getIdNot(); %>
                <% String res = n.getTitular();%>
                <% String titulo = n.getResumen();%>
                <% String img = n.getImgNoticia();%>
                <% String tipo = n.getTipoNoticia();%>
                <a href="PaginaNoticias?noticia=mostrar idNoticia= <%=id%> tipoNoticia= <%=tipo%>" id="<%=i%>">
          <div class="card h-100">
              <img class="card-img-top" src="img/<%=img%>" alt="">
          <div class="card-body">
            <h2 class="card-title"><%=titulo%></h2>
            <p class="card-text"><%=res%></p>
          </div>
          </div>
               </a>
          <%}%>
        </div>

      </div>
        
        
    </div>   
    </div>
    </div>   
        
        
        <%@include file="/includes/principal/principal.jsp" %>
        <%@include file="/includes/footer.html" %>
    </body> 
</html>

