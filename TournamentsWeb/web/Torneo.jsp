<%-- 
    Document   : Torneo
    Created on : 11-may-2019, 11:23:06
    Author     : hector
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if(request.getParameter("idTorneo")==null){%>
      <jsp:forward page="index.jsp"/>    
<%}else{
    int id=Integer.parseInt(request.getParameter("idTorneo"));
    TorneoDAO tdao= new TorneoDAO();
    Torneo torneo= tdao.GetTorneo(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Torneo</title>       
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
             <%@include file="/includes/header.jsp" %>   
        </header>
        <main>
	<div class="row w-100 ml-0">
		<div class="container-fluid separador backgroundImage menubar">
			<h1 class="separadorletras">#<%=torneo.getNombre()%></h1>
			<h5 class="separadorletras"> Panel del torneo </h5>
		</div>
	</div>
	<!-- Aqui comienda el acordeon -->
	<div class="container">
	<div class="row">
	<div class="col-md-8">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item infotorneo">
    <a class="nav-item active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><center>Info</center></a>
  </li>
  <li class="nav-item infotorneo">
    <a class="center-block" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><center>Bracket</center></a>
  </li>
  <li class="nav-item infotorneo">
    <a class="" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"><center>Equipos</center></a>
  </li>
  <li class="nav-item infotorneo">
    <a class="" id="contact-tab" data-toggle="tab" href="#reglas" role="tab" aria-controls="contact" aria-selected="false"><center>Reglas</center></a>
  </li>
  
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"><br><br><br>
      <div id="fechainicio"><i class="far fa-clock fa-2x" id="reloj"></i>Comienza <%=torneo.getFechaInicio()%></div><br>
      <div id="juegotorneo">
          <b>Juego:</b><span id="juegousado"><%=torneo.getJuegoName()%></span><br>
          <b> Modo:</b><span id="modo1">1 vs 1 BO1</span><br>
          <b>Premios:</b><span id="premio1"><%=torneo.getPremio()%></span>
      </div><br><br>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"><br><br><br>
      <img src="img/bracket.png"><br><br><br></div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"><br><br><br>
      
    <ul>
        <% ArrayList<UsuarioForTorneo> participantes= tdao.GetParticipantes(id); 
          for(UsuarioForTorneo participante:participantes){%>
              <li><img class="imagenavatar" src="<%=participante.getUser().getImageURL()%>"><br>
                  <span class="m-auto" id="nombreusuario">Jugador 1</span></li> 
          <%}%>
    </ul>
    <br><br>
  </div>
  <div class="tab-pane fade" id="reglas" role="tabpanel" aria-labelledby="contact-tab"><br><br><br>
    <h3><%=torneo.getReglas()%> </h3><br><br>
  </div>
</div>
</div>
<!-- Aqui Finaliza el acordeon -->
<div class="col-md-4">
<div class="card">
  <div class="card-header">
    Requisitos
  </div>
  <div class="card-body">
    <h5 class="card-title">Requisitos del torneo</h5>
    <p class="card-text">- Añadir cuenta del juego del torneo en tu perfil</p>
    <a href="#" class="btn btn-danger">Jugar</a>
  </div>
</div>
</div>
<div class="container" style="height:350px;">
	</div>
	
</main>
         <%@include file="/includes/footer.html" %>
    </body>
</html>
<%}%>