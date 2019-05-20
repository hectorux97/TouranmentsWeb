<%-- 
    Document   : AdministrarTorneos
    Created on : 17-may-2019, 10:49:17
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="torneo" class="beans.Torneo" scope="request" type="beans.Torneo"></jsp:useBean>
<jsp:setProperty name="torneo" property="*"></jsp:setProperty>
<% if(request.getParameter("nombre")!=null){%>
    <jsp:forward page="/Controlador/NewTournament"/>    
<%}%>
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
            <label for="nombre">Nombre Torneo</label>
            <input class="form-control rounded-0 w-25" type="text" name="nombre" value="" placeholder="Nombre"><br />



            <label for="fechaInicio2">Fecha de inicio</label>
            <input class="form-control rounded-0 w-25" type="date" name="fechaInicio2" value="" placeholder="AAAA-MM-DD"><br />



            <label for="reglas">Reglas del torneo</label>
            <textarea name="reglas" rows="10" class="form-control rounded-0 w-75" placeholder="Reglas"></textarea>

            <label for="maximoJugadores">Numero maximo de Jugadores</label>
            <input class="form-control rounded-0 w-25" type="text" name="maximoJugadores" value="" placeholder="Nº maximo de jugadores"><br />

            <label for="premio">Premio</label>
            <input class="form-control rounded-0 w-25" type="text" name="premio" value="" placeholder="Premio"><br />

            <label for="nombrejuego">Juego del torneo</label>
            <select name="nombrejuego" class="selectpicker form-control rounded-0">
                <option disabled value="">Juego</option>
                <% GlobalInfoDAO info = new GlobalInfoDAO();
                  ArrayList<Juego> listaJuegos = info.GetJuegos();
                  for (Juego j : listaJuegos) {%>
                <option <%="value='" + j.getNombre() + "'"%>> <%=j.getNombre()%></option>
                <%}%>
            </select>
        </div>

   
      <div class="form-group text-center pb-2">
        <div class="inclinado w-25 m-auto ">
            <input class="nav-link text-center m-auto" type="submit" name="submit" value="Publicar Torneo">
        </div>       
      </div>
    </div>
  </form>
</div>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>

