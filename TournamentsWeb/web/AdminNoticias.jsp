<%-- 
    Document   : AdminNoticias
    Created on : May 14, 2019, 1:04:31 PM
    Author     : JF
--%>

page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="notic" class="beans.Noticia" scope="request" type="beans.Noticia"></jsp:useBean>
<jsp:setProperty name="notic" property="*"></jsp:setProperty>
<% if(request.getParameter("titular")!=null){%>
<!-- Con esta primera linea comentada funciona cuando es IdAutor que es un int, antes de cambiarlo por Usuario-->
    <!jsp:forward page="/PaginaNoticias?no=insertar"/> 
    <jsp:forward page="/Controlador/NewNoticia"/> 
<%}%>
<!DOCTYPE html>
<html>
    <head>
        <title>TounamentsWeb</title>
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
            <%@include file="/includes/headerPerfil.jsp" %>       
        </header>

<main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->

<!--Noticia-->
<div>
  <form class="left form mx-md-2 my-3 pl-2 rounded" method="post">
    <div class="d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
      <div class="inclinado ">
        <a class="nav-link" href="AdminNoticias.jsp">Nueva Noticia</a>
      </div>
      <div class="inclinado ">
        <a class="nav-link" href="/MostrarMisNoticias">Mis Noticias</a>
      </div>
      </div>
    <div class="form-group text-center">

    </div>
    <br />
    <div class="form-group row-1 mb-0 ml-4">
        <div class="form-group">
          <label for="titular">Titulo</label>
          <input class="form-control rounded-0 w-25" type="text" name="titular" value="" placeholder="Titulo"><br />

          <label for="resumen">Descripción</label>
          <textarea name="resumen" rows="2" class=" form-control rounded-0 w-50 resize-none" placeholder="Descripcion corta de la noticia"></textarea>
		  
          <label for="imgNoticia">Enlace imagen</label>
          <input class="form-control rounded-0 w-25" type="text" name="imgNoticia" value="" placeholder="Link Imagen"><br />
          
          <label for="tipoNoticia">Enlace imagen</label> <br>
          <input type="radio" name="tipoNoticia" value="review" checked> Review<br>
          <input type="radio" name="tipoNoticia" value="esports"> ESports<br>
          <input type="radio" name="tipoNoticia" value="novedades"> Novedades <br>
          <br>
          
          <!--<label for="idAutor">Autor</label>
          <input class="form-control rounded-0 w-25" type="number" name="idAutor" value="" step="1" placeholder="Tu number"><br />
          -->
          
          
          <label for="noticiaTexto">Noticia</label>
          <textarea name="noticiaTexto" rows="10" class="form-control rounded-0 w-75" placeholder="Escribe el cuerpo de la noticia"></textarea>
        </div>

    
      <div class="form-group text-center pb-2">
        <div class="inclinado w-25 m-auto ">
            <input class="nav-link text-center m-auto" type="submit" name="submit" value="Publicar">
        </div>
      </div>
    </div>
  </form>
</div>
</main>
            
            <%@include file="/includes/footer.html" %>
    </body>
</html>
