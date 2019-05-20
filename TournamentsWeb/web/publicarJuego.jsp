<%-- 
    Document   : publicarJuego
    Created on : 17-may-2019, 16:29:31
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Partido"%>
<%@page import="DAO.PartidoDAO"%>
<%@page import="beans.Torneo"%>
<%@page import="DAO.TorneoDAO"%>
<%@page import="beans.GlobalInfo"%>
<%@page import="DAO.GlobalInfoDAO"%>
<%@page import="beans.Juego"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestor Torneos</title>
        <%@include file="includes/headerLinks.html" %>
    </head>
    <body>
         <header>
            <%@include file="/includes/header.jsp"%>
            <%@include file="/includes/headerPerfil.jsp"%>
        </header>
        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->

<!--Torneo-->
<div>
  <form class="left form mx-md-2 my-3 pl-2 rounded"  method="post">
<%@include file="/includes/MenuTorneo.html" %>
    <div class="form-group text-center">

    </div>
    <br />
    <div class="form-group row-1 mb-0 ml-4">
        <div class="form-group">
            <label for="nombreJuegoNuevo">Nombre del juego</label>
            <input class="form-control rounded-0 w-25" type="text" name="nombreJuegoNuevo" value="" placeholder="Nombre"><br />



           
   
      <div class="form-group text-center pb-2">
         <div class="inclinado w-25 m-auto ">
            <input class="nav-link text-center m-auto" type="submit" name="submit" value="Publicar Nuevo Juego">
        </div>    
      </div>
    </div>
  </form>
</div>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>
