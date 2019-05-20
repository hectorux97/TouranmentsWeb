<%-- 
    Document   : ModificarTorneos
    Created on : 20-may-2019, 15:25:27
    Author     : angel
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
        <title>TounamentsWeb</title>
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
    <table class="table">
        <tbody>
<% TorneoDAO torneo = new TorneoDAO();
                                    ArrayList<Torneo> listaTorneos = torneo.GetTorneo();
                                    for (Torneo t : listaTorneos) {%>
                                <tr class="col-md-8">
                                    
                                    <td ><img class="icono" src="img/copa.png">     <%=  t.getFechaInicio()%></td>
                                    <td ><img class="icono" <%="src='" + t.getJuego().getImagenUrlIcono() + "'"%>></img></td>
                                    <td > <span>  <%=  t.getNombre()%> </span> </td>
                                    <td ><button href="Torneo.jsp?idTorneo=<%=t.getId()%>">Generar Partidos </button></td>
                                    <td ><select name="nombrejuego" class="selectpicker  rounded-0" style="width: 150px;">
                                        <option disabled value="0">Juego</option>
                                        <option value="0">Sin Comenzar</option>
                                        <option value="1">Comenzado</option>
                                        <option value="3">Finalizado</option>
                                        </select></td>
                                </tr>
                                <%}%>
                                </tbody>
    </table> 
  </form>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>
