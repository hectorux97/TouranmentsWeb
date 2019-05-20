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
       
        <title>Competiciones</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 
   
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>           
            
            <%@include file="/includes/header.jsp" %>   
        </header>
        <div class="w-100">
		<div class="container-fluid separador backgroundImage menubar">
			<h1 class="separadorletras"> Nuestras Competiciones</h1>
			<h5 class="separadorletras"> Torneos diarios en cada uno de los juegos </h5>
		</div>
	</div>
	<div class="w-100" id="accordion">
        
	<ul class="w-100" style="margin-top:15px;">
	<li <% GlobalInfoDAO info = new GlobalInfoDAO();
                                    ArrayList<Juego> listaJuegos2 = info.GetJuegos();
                                    for (Juego j : listaJuegos2) {%>
                                
                                   <li class="juegos panel "   <%="id='" + j.getNombre() + "'"%> data-toggle="collapse" <%="href='#collapse" + j.getNombre() + "'"%> role="button" aria-expanded="true" <%="aria-controls='" + j.getNombre() + "'"%> ></li>
                                    
                                </li> 
                                <%}%>
	
	</ul>
	
       
        <% GlobalInfoDAO info2 = new GlobalInfoDAO();
                                    ArrayList<Juego> listaJuegos = info2.GetJuegos();
                                     %>
                                      
                    <% 
                    for (Juego j : listaJuegos) {
                        %>                    
                    <div class="collapse" data-parent="#accordion" <%="id='collapse" + j.getNombre() + "'"%> >
                        <div class="card card-body" <%="data-parent='#" + j.getNombre() + "'"%>>
                            <table id="ultimostorneos" class="table">
                                <% TorneoDAO torneo = new TorneoDAO();
                                    ArrayList<Torneo> listaTorneos = torneo.GetTorneos(j.getNombre());
                                    for (Torneo t : listaTorneos) {%>
                                <tr>
                                    <td><img class="icono" src="img/copa.png"></td>
                                    <td><%=  t.getFechaInicio()%></td>
                                    <td><img class="icono" <%="src='" + t.getJuego().getImagenUrlIcono() + "'"%>></img></td>
                                    <td><a href="Torneo.jsp?idTorneo=<%=t.getId()%>"><%=  t.getNombre()%></a></td>
                                    <td><span> <%=  t.getParticipantesNum()%> Participantes </span></td>
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

