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
        <title>Noticias</title>
        <%@include file="/includes/headerLinks.html" %>
        
    </head>  
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
        </header>
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4 front" style="position:absolute;right:0;">
            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">Categorías</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">

                                <li>
                                    <a href="/Controlador/PaginaNoticias?no=tipo&tipoNoticia=esports">#B ESports</a>
                                </li>

                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="/Controlador/PaginaNoticias?no=tipo&tipoNoticia=novedades">#B Novedades</a>
                                </li>
                                <li>
                                    <a href="/Controlador/PaginaNoticias?no=tipo&tipoNoticia=review">#B Review</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <div class="container">
        <!-- Recuperamos la noticia -->
        <% ArrayList noticias = (ArrayList) session.getAttribute("noticias");
            int i = 0;
            for (i = 0; i < 1; i++) {
                Noticia n = (Noticia) noticias.get(i);%>
        <% int id = n.getIdNot(); %>
        <% String res = n.getResumen();%>
        <% String titulo = n.getTitular();%>
        <% String texto = n.getNoticiaTexto();%>
        <% String img = n.getImgNoticia();%>
        <% String autorNombre = n.getAutor().getAlias();%>
        <% int idAutor = n.getAutor().getId();%>
        <% Date date = n.getFechaNoticia();%>
        <% String tipo = n.getTipoNoticia();%>

        <!-- Page Content -->
        

            <div class="row"> 
                <div class="col-lg-8">
                    <!-- Title -->
                    <h1 class="mt-4">
                        <%=titulo%>
                    </h1> 
                    <!-- Author -->
                    <p class="lead">
                        Publicado por: 
                        <a href="/Controlador/PaginaNoticias?no=autor&autor=<%=idAutor%>"><%=autorNombre%></a>
                    </p>
                    <hr>
                    <!-- Date/Time -->
                    <p class="getdate" id="getdate">En <%=date%> </p>

                    <hr>
                    <!-- Preview Image -->
                    <img class="img-fluid rounded" src="img/<%=img%>" alt="">
                    <hr>

                    <!-- Post Content -->
                    <p class="lead"> <strong><%=res%> </strong></p>

                    <%=texto%>
                </div>
            </div>
        
                <%}%>
                
        

            <!-- Las noticias relacionadas
             Tenemos que darles estilos al a con id 1 y 2 para que se vea bien-->

            <div class="card my-4 col-md-6">
                <h5 class="card-header">Quizás te interese...</h5>
                <% for (i = 1; i < 3; i++) {
                        Noticia n2 = (Noticia) noticias.get(i);%>
                <% int id = n2.getIdNot(); %>
                <% String titulo = n2.getTitular();%>
                <% String res = n2.getResumen();%>
                <% String texto = n2.getNoticiaTexto();%>
                <% String img = n2.getImgNoticia();%>               
                <% Date date = n2.getFechaNoticia();%>
                <% String tipo = n2.getTipoNoticia();%> 
                <a href="/Controlador/PaginaNoticias?no=mostrar&idNoticia=<%=id%>&tipoNoticia=<%=tipo%>" id="<%=i%>">
                    <div class="card h-100">
                        <img class="card-img-top w-50 m-auto" src="img/<%=img%>" alt="" >
                        <div class="card-body">
                            <h2 class="card-title"><%=titulo%></h2>
                            <p class="card-text"><%=res%></p>
                        </div>
                    </div>
                </a>
                <%}%>
            </div>
    </div>

    <%@include file="/includes/footer.html" %>
    </body> 
</html>

