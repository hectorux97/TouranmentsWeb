<%-- 
    Document   : competiciones
    Created on : 09-may-2019, 19:55:00
    Author     : angel
--%>
<%@page import="beans.Partido"%>
<%@page import="DAO.PartidoDAO"%>
<%@page import="beans.Torneo"%>
<%@page import="DAO.TorneoDAO"%>
<%@page import="beans.GlobalInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.GlobalInfoDAO"%>
<%@page import="beans.Juego"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>TounamentsWeb</title>
       
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>           
            
            <%@include file="/includes/header.jsp" %>   
        </header>
        <div class="row">
		<div class="container-fluid separador backgroundImage menubar">
			<h1 class="separadorletras"> Nuestras Competiciones</h1>
			<h5 class="separadorletras"> Torneos diarios en cada uno de los juegos </h5>
		</div>
	</div>
	<div class="w-100">
	<ul class="w-100" style="margin-top:15px;">
	<li class="juegos " id="juego1" data-toggle="collapse" href="#ClashRoyal" role="button" aria-expanded="true" aria-controls="torneos1" ></li>
	<li class="juegos" id="juego2" data-toggle="collapse" href="#Fortnite" role="button" aria-expanded="true" aria-controls="torneos1" ></li>
	<li class="juegos" id="juego3" data-toggle="collapse" href="#LeagueOfLegends" role="button" aria-expanded="false" aria-controls="#LeagueOfLegends" data-target="#LeagueOfLegends" ></li>
	<li class="juegos " id="juego4" data-toggle="collapse" href="#Fifa" role="button" aria-expanded="false" aria-controls="torneos1" ></li>
	<li class="juegos " id="juego5" data-toggle="collapse" href="#RainBow6" role="button" aria-expanded="false" aria-controls="torneos1"></li>
	</ul>
	</div>
        <div class="accordion-group">
        <% GlobalInfoDAO info2 = new GlobalInfoDAO();
                                    ArrayList<Juego> listaJuegos = info2.GetJuegos();
                                     %>
                                      <% 
                    for (Juego j : listaJuegos) {
                        %>      
	
	 <div class="collapse" <%="id='" + j.getNombre() + "'"%>>
           
                   
           <div class="card card-body">
               <table id="ultimostorneos2" class="textomovil">
                            
                                <% TorneoDAO torneo = new TorneoDAO();
                                    ArrayList<Torneo> listaTorneos = torneo.GetTorneos(j.getNombre());
                                    for (Torneo t : listaTorneos) {%>
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td><%=  t.getFechaInicio()%></td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html"><%=  t.getNombre()%></a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>
                                <%}%>
                                  
	
	</table>
        
  </div>
</div>
                             
	
                                 <%}%>
                                 </div>
	<div class="container" style="height:100px;">
	</div>
	<div class="container" style="height:100px;">
	</div>
	<div class="container" style="height:100px;">
	</div>
	<div class="container" style="height:100px;">
	</div>
	
	<!-- FOOTER -->
  <footer class="footer backgroundImage bg-dark footer2 center-block">
    <br>
    <p class="separadorletras">&copy; 2019 Bambing Gaming, Inc. &middot; Todos los derechos reservados</p>
  </footer>

</body>

</html>

