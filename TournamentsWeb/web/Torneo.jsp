<%-- 
    Document   : Torneo
    Created on : 11-may-2019, 11:23:06
    Author     : hector
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if (request.getParameter("idTorneo") == null) {%>
<jsp:forward page="index.jsp"/>    
<%} else {
    int id = Integer.parseInt(request.getParameter("idTorneo"));
    TorneoDAO tdao = new TorneoDAO();
    Torneo torneo = tdao.GetTorneo(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Torneo</title>       
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet/css">
        
        <link href="css/torneoBrackets.css"  rel="stylesheet" type="text/css">
        
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>   
        </header>
      
        <% String nick="";
            String ses="";
            if(request.getSession(false)!=null){
                if(session.getAttribute("user")!=null){
                ses="Y";
                Usuario user=(Usuario)session.getAttribute("user");
                nick= user.getNick(torneo.getJuegoName());
                
                 %>
                
               <% session.setMaxInactiveInterval(600);
            }}%>
        <div id="Info" style="display:none;"><%=ses%></div>
        <div id="Nick" style="display:none;"><%=nick%></div>
        <div id="idT" style="display:none;"><%=id%></div>
        <div id="alertas"></div>
        <main>
            <div class="row w-100 ml-0">
                <div class=" separador backgroundImage menubar">
                    <h1 class="separadorletras">#<%=torneo.getNombre()%></h1>
                    <h5 class="separadorletras"> Panel del torneo </h5>
                </div>
            </div>
           
            <!-- Aqui comienda el acordeon -->
            <div class="container col-md-12">
                <div class="row">
                    <div class="col-md-9">
                          <center>
                        <ul class="nav nav-tabs m-auto" id="myTab" role="tablist">
                            <li class="w-25"></li>
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
                               </center>
                        <div class="tab-content " id="myTabContent">
                            <div class="tab-pane fade show active ml-5" id="home" role="tabpanel" aria-labelledby="home-tab"><br><br><br>
                                <div id="fechainicio"><i class="far fa-clock fa-2x" id="reloj"></i>Comienza <%=torneo.getFechaInicio()%></div><br>
                                <div id="juegotorneo">
                                    <b>Juego:</b><span id="juegousado"><%=torneo.getJuegoName()%></span><br>
                                    <b> Modo:</b><span id="modo1">1 vs 1 BO1</span><br>
                                    <b>Premios:</b><span id="premio1"><%=torneo.getPremio()%></span>
                                </div><br><br>
                            </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"><br><br><br>
                            <section id="bracket">
                                <div class="container">
                                    <div class="split split-one">
                                        <div class="round current">
                                            <%for(int i=0;i<5;i++){%>
                                                <div class="round current round-<%=i%>">
                                                <div class="round-details">Ronda <%=i%><br/></div>
                                            <%}%>
                                            <div class="round-details">Round 1<br/><span class="date">March 16</span></div>
                                            <ul class="matchup">
                                                <li class="team team-top">Duke<span class="score">76</span></li>
                                                <li class="team team-bottom">Virginia<span class="score">82</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Wake Forest<span class="score">64</span></li>
                                                <li class="team team-bottom">Clemson<span class="score">56</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">North Carolina<span class="score">68</span></li>
                                                <li class="team team-bottom">Florida State<span class="score">54</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">NC State<span class="score">74</span></li>
                                                <li class="team team-bottom">Maryland<span class="score">92</span></li>
                                            </ul>           
                                            <ul class="matchup">
                                                <li class="team team-top">Georgia Tech<span class="score">78</span></li>
                                                <li class="team team-bottom">Georgia<span class="score">80</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">Auburn<span class="score">64</span></li>
                                                <li class="team team-bottom">Florida<span class="score">63</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">Kentucky<span class="score">70</span></li>
                                                <li class="team team-bottom">Alabama<span class="score">59</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Vanderbilt<span class="score">64</span></li>
                                                <li class="team team-bottom">Gonzaga<span class="score">68</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND ONE -->

                                        <div class="round round-two">
                                            <div class="round-details">Round 2<br/><span class="date">March 18</span></div>         
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND TWO -->

                                        <div class="round round-three">
                                            <div class="round-details">Round 3<br/><span class="date">March 22</span></div>         
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND THREE -->        
                                    </div> 

                                    <div class="champion">
                                        <div class="semis-l">
                                            <div class="round-details">west semifinals <br/><span class="date">March 26-28</span></div>     
                                            <ul class ="matchup championship">
                                                <li class="team team-top">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                            </ul>
                                        </div>
                                        <div class="final">
                                            <i class="fa fa-trophy"></i>
                                            <div class="round-details">championship <br/><span class="date">March 30 - Apr. 1</span></div>      
                                            <ul class ="matchup championship">
                                                <li class="team team-top">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                            </ul>
                                        </div>
                                        <div class="semis-r">       
                                            <div class="round-details">east semifinals <br/><span class="date">March 26-28</span></div>     
                                            <ul class ="matchup championship">
                                                <li class="team team-top">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="vote-count">&nbsp;</span></li>
                                            </ul>
                                        </div>  
                                    </div>


                                    <div class="split split-two">


                                        <div class="round round-three">
                                            <div class="round-details">Round 3<br/><span class="date">March 22</span></div>                     
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND THREE -->    

                                        <div class="round round-two">
                                            <div class="round-details">Round 2<br/><span class="date">March 18</span></div>                     
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">&nbsp;<span class="score">&nbsp;</span></li>
                                                <li class="team team-bottom">&nbsp;<span class="score">&nbsp;</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND TWO -->
                                        <div class="round round-one current">
                                            <div class="round-details">Round 1<br/><span class="date">March 16</span></div>
                                            <ul class="matchup">
                                                <li class="team team-top">Minnesota<span class="score">62</span></li>
                                                <li class="team team-bottom">Northwestern<span class="score">54</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Michigan<span class="score">68</span></li>
                                                <li class="team team-bottom">Iowa<span class="score">66</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Illinois<span class="score">64</span></li>
                                                <li class="team team-bottom">Wisconsin<span class="score">56</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Purdue<span class="score">36</span></li>
                                                <li class="team team-bottom">Boise State<span class="score">40</span></li>
                                            </ul>           
                                            <ul class="matchup">
                                                <li class="team team-top">Penn State<span class="score">38</span></li>
                                                <li class="team team-bottom">Indiana<span class="score">44</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">Ohio State<span class="score">52</span></li>
                                                <li class="team team-bottom">VCU<span class="score">80</span></li>
                                            </ul>   
                                            <ul class="matchup">
                                                <li class="team team-top">USC<span class="score">58</span></li>
                                                <li class="team team-bottom">Cal<span class="score">59</span></li>
                                            </ul>
                                            <ul class="matchup">
                                                <li class="team team-top">Virginia Tech<span class="score">74</span></li>
                                                <li class="team team-bottom">Dartmouth<span class="score">111</span></li>
                                            </ul>                                       
                                        </div>  <!-- END ROUND ONE -->                          
                                    </div>
                                </div>
                            </section>
                        </div>
                                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"><br><br><br>

                                    <ul>
                                        <% ArrayList<UsuarioForTorneo> participantes = tdao.GetParticipantes(id);
                                        for (UsuarioForTorneo participante : participantes) {%>
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
                        <%if (torneo.getEstado() == 0) {
                                boolean can = true;

                                if (request.getSession(false) != null) {
                                    if (session.getAttribute("user") != null) {
                                        Usuario user = (Usuario) session.getAttribute("user");
                                        can = !tdao.CheckParticipante(torneo.getId(), user);
                                }
                            }
                            if (can) {%>
                        <div class="col-md-3">
                            <div class="card">
                                <div class="card-header">
                                    Requisitos
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Requisitos del torneo</h5>
                                    <p class="card-text">- Añadir cuenta del juego del torneo en tu perfil</p>
                                    <input type="button" class="btn btn-danger" value="Inscribirse" onclick="CheckValidation();"/>
                                </div>
                            </div>
                        </div>
                        <!--<div class="container" style="height:350px;"> </div>-->
                        <%} else {%>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    Requisitos
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Requisitos del torneo</h5>
                                    <p class="card-text">- Añadir cuenta del juego del torneo en tu perfil</p>
                                    <input type="button" class="btn btn-danger" value="Salir del Torneo" onclick="Borrar();"/>
                                </div>
                            </div>
                        </div>
                    <%}}%>
            </main>
                    <script>
                        
                        var alertas= document.getElementById("alertas");                        
                        var session= document.getElementById("Info").innerHTML;
                        var nick= document.getElementById("Nick").innerHTML;
                        var idTorneo=document.getElementById("idT").innerHTML;
                        var CheckValidation= function(){
                            if(session==""){
                                alertas.innerHTML="<div class='alert alert-danger alert-dismissible fade show w-100 text-center front' role='alert' style='position:fixed;' id='errorLogin'>Debes estar <strong>Logeado</strong> para inscribirte<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";                                
                                return;
                            }
                            if(nick==""){
                                alertas.innerHTML="<div class='alert alert-warning alert-dismissible fade show w-100 text-center front' role='alert' style='position:fixed;' id='errorNick'>Debes tener un <strong>Nick</strong> para inscribirte<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";                                
                                return;
                            }
                            window.location.replace("/Controlador/Inscripcion?id="+idTorneo);
                        };
                        var Borrar= function(){
                            window.location.replace("/Controlador/BorrarParticipante?id="+idTorneo);
                        }
                    </script>
<%@include file="/includes/footer.html" %>
</body>
</html>
<%}%>