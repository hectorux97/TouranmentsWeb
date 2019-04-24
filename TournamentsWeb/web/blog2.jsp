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
      <% Noticia mensajes =(Noticia)request.getAttribute("noticia");%>
      <% int id = mensajes.getIdNot(); %>
      <% String res = mensajes.getTitular();%>
      <% String titulo = mensajes.getResumen();%>
      <% String texto = mensajes.getNoticiaTexto();%>
      <% String img = mensajes.getImgNoticia();%>
      <% String autor = mensajes.getAutor();%>
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
                    <a href="#">#B Gamer</a>
                  </li>
                  <li>
                    <a href="#">#B ESports</a>
                  </li>
                  
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">#B Novedades</a>
                  </li>
                  <li>
                    <a href="#">#B Review</a>
                  </li>
                  
                </ul>
              </div>
            </div>
          </div>
        </div>
    
        <div class="card my-4">
          <h5 class="card-header">Quizás te interese...</h5>
          <div class="card h-100">
              <jsp:include page="blogrel.jsp" flush="true">
                  <jsp:param name="idNot" value="<%=(id+1)%>"/>
              </jsp:include>
          </div>
              
          <div class="card h-100">
              <jsp:include page="blogrel2.jsp" flush="true">
                  <jsp:param name="idNot" value="<%=(id+2)%>"/>
              </jsp:include>
          </div>
        </div>

      </div>
        
        
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

