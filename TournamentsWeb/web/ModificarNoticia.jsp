<%-- 
    Document   : ModificarNoticia
    Created on : May 15, 2019, 12:14:51 PM
    Author     : JF
--%>

<%@page import="DAO.NoticiasDAO"%>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="notic" class="beans.Noticia" scope="request" type="beans.Noticia"></jsp:useBean>
<jsp:setProperty name="notic" property="*"></jsp:setProperty>
<%if(request.getSession(false)==null && session.getAttribute("user")==null){%>
     <jsp:forward page="/Login.jsp"/>
<%}else{%>
<% if(request.getParameter("titular")!=null){%>  
    <jsp:forward page="/Controlador/ModificarNoticias"/>
<%}%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestor Noticias</title>
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
            <%@include file="/includes/headerPerfil.jsp" %>       
        </header>

<main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->
<%  //NoticiasDAO nDAO = new NoticiasDAO();
    //Noticia n = new Noticia();
    //int idNot = Integer.parseInt(request.getParameter("idNoticias"));
    //nDAO.mostrarNoticia(idNot);
    Noticia n = (Noticia) session.getAttribute("noticia");    
    String tit = n.getTitular();
    String res = n.getResumen();
    String tex = n.getNoticiaTexto();
    String tip = n.getTipoNoticia();
    String img = n.getImgNoticia();
    int id = n.getIdNot();
   // int idAutor = n.getAutor().getId();
%>
<!--Noticia-->
<div>
  <form class="left form mx-md-2 my-3 pl-2 rounded" method="post">
    <div class="d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
      <div class="inclinado ">
        <a class="nav-link" href="/AdminNoticias.jsp">Nueva Noticia</a>
      </div>
      <div class="inclinado ">
        <a class="nav-link" href="/AdminMisNoticias.jsp">Mis Noticias</a>
      </div>
      </div>
    <div class="form-group text-center">

    </div>
    <br />
    <div class="form-group row-1 mb-0 ml-4">
        <div class="form-group">
          <label for="titular">Titulo</label>
          <input class="form-control rounded-0 w-25" type="text" name="titular" value="<%=tit%>"><br />

          <label for="resumen">Descripción</label>
          <textarea name="resumen" rows="2" class=" form-control rounded-0 w-50 resize-none" >
          <%=res%>    
          </textarea>
		  
          <label for="imgNoticia">Enlace imagen</label>
          <input class="form-control rounded-0 w-25" type="text" name="imgNoticia" value="<%=img%>"><br />
          
          <label for="tipoNoticia">Tipo de Noticia:</label> <br> 
          <input type="radio" name="tipoNoticia" value="review" <%=("review".equalsIgnoreCase(tip)?"checked":" ")%>> Review <br>          
          <input type="radio" name="tipoNoticia" value="esports"<%=("esports".equalsIgnoreCase(tip)?"checked":" ")%>> ESports<br>
          <input type="radio" name="tipoNoticia" value="novedades"<%=("novedades".equalsIgnoreCase(tip)?"checked":" ")%>> Novedades <br>
          <br>
          
          <!--<label for="idAutor">Autor</label>
          <input class="form-control rounded-0 w-25" type="number" name="idAutor" value="" step="1" placeholder="Tu number"><br />
          -->
          
          
          <label for="noticiaTexto">Noticia</label>
          <textarea name="noticiaTexto" rows="10" class="form-control rounded-0 w-75" placeholder="Escribe el cuerpo de la noticia">
          <%=tex%>     
          </textarea>
          
          <input type="hidden" name="idNot" value="<%=id%>">
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
<%}%>