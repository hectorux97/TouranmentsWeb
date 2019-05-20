
<%@page import="java.util.Date"%>
<%@page import="beans.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>TounamentsWeb</title>
       
        
        <%@include file="/includes/headerLinks.html" %>
        <style>
           .bd-placeholder-img {
             font-size: 1.125rem;
             text-anchor: middle;
             -webkit-user-select: none;
             -moz-user-select: none;
             -ms-user-select: none;
             user-select: none;
           }

           @media (min-width: 768px) {
               .bd-placeholder-img-lg {
                   font-size: 3.5rem;
               }
           }
        </style>
    </head>
    <body>
        <header>           
            
            <%@include file="/includes/header.jsp" %>   
        </header>
      
            <main role="main ">
                 <%NoticiasDAO notiDAO = new NoticiasDAO();
                ArrayList noticias;
                noticias = notiDAO.getIndexNoticias();%>

  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
      
    <div class="carousel-inner">
        
        <%for(int i=0;i<3;i++){
        Noticia n=(Noticia)noticias.get(i);%>
                <% int id = n.getIdNot(); %>
                <% String titulo = n.getTitular();%>
                <% String res = n.getResumen();%>
                <% String texto = n.getNoticiaTexto();%>
                <% String img = n.getImgNoticia();%>
                <% Date date = n.getFechaNoticia();%>
                <% String tipo = n.getTipoNoticia();%>
                
      <div class="carousel-item <%=(i==(0)?"active":" ")%>">
          <img src="<%=img%>" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2><%=titulo%></h2>
          <p><%=res%></p>
          <p><a class="btn btn-lg btn-primary" href="PaginaNoticias?no=mostrar&idNoticia=<%=id%>&tipoNoticia=<%=tipo%>" role="button">Ver Más</a></p>
        </div>
      </div>
      <%}%>
        
        
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>



  <!-- Noticias
  ================================================== -->
  <!-- Noticias. -->

  <div class="container">
    <div class="row w-100">
        
      <div class="card-group">
        <%for(int i=3;i<6;i++){
        Noticia n=(Noticia)noticias.get(i);%>
                <% int id = n.getIdNot(); %>
                <% String titulo = n.getTitular();%>
                <% String res = n.getResumen();%>
                <% String texto = n.getNoticiaTexto();%>
                <% String img = n.getImgNoticia();%>
                <% Date date = n.getFechaNoticia();%>
                <% String tipo = n.getTipoNoticia();%>
      <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
        <img class="card-img-top" src="<%=img%>" alt="">
        <div class="card-body">
        <h2 class="card-title"><%=titulo%></h2>
        <p class="card-text"><%=res%></p>
        <p><a class="btn btn-secondary" href="PaginaNoticias?no=mostrar&idNoticia=<%=id%>&tipoNoticia=<%=tipo%>" role="button">Ver &raquo;</a></p>
        </div>
        </div>
      </div><!-- /.col-lg-4 -->
      <%}%>
      
    </div><!-- /.row -->
	</div>
  </div>

                <!-- Competiciones -->
                <div class="w-100">
                    <div class="container-fluid separador backgroundImage p-3">
                        <h1 class="separadorletras">Competiciones</h1>
                        <h5 class="separadorletras"> Nuestros torneos activos en cada juego </h5>

                    </div>
                </div>
                <div id="toogleContainer">
                    <div class="container card">
                        <div class="row menujuegos">
                            <ul class="navbar navbar-expand-md  navbar-center">
                                <% GlobalInfoDAO info = new GlobalInfoDAO();
                                    ArrayList<Juego> listaJuegos = info.GetJuegos();
                                    for (Juego j : listaJuegos) {%>
                                <li class="menujuegos">
                                    <img <%="src='" + j.getImagenUrlNombre() + "'"%> class="logojuegotorneo" data-toggle="collapse" data-target=<%="'#" + j.getNombre() + "'"%> <%="href='#" + j.getNombre() + "'"%> role="button" aria-expanded="false" aria-controls=<%="'" + j.getNombre() + "'"%>  data-parent="#toogleContainer">
                                    </img>
                                </li> 
                                <%}%>
                                <!-- <li class="menujuegos">
                                   <img src="img/clash.png" class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                   </img>
                                 </li>
                                 <li class=" menujuegos">
                                   <img src="img/fifa.png" class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                   </img>
                                 </li>
                                 <li class=" menujuegos ">
                                  <img src="img/fortnite.png" class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                   </img>
                                 </li>
                                 <li class="menujuegos">
                                   <img src="img/lol.png" class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                   </img>
                                 </li>
                                         <li class="menujuegos">
                                   <img src="img/rainbow.png" class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                   </img>
                                 </li>-->
                            </ul>
                        </div>
                    </div>
                                 
                    <% 
                    for (Juego j : listaJuegos) {
                        %>                    
                    <div class="collapse" data-parent="#toogleContainer" <%="id='" + j.getNombre() + "'"%>>
                        <div class="card card-body">
                            <table id="ultimostorneos" class="table">
                                <% TorneoDAO torneo = new TorneoDAO();
                                    ArrayList<Torneo> listaTorneos = torneo.GetTorneos(j.getNombre());
                                    for (Torneo t : listaTorneos) {%>
                                <tr class="col-md-8">
                                    
                                    <td ><img class="icono" src="img/copa.png">     <%=  t.getFechaInicio()%></td>
                                    <td ><img class="icono" <%="src='" + t.getJuego().getImagenUrlIcono() + "'"%>></img></td>
                                    <td ><a href="Torneo.jsp?idTorneo=<%=t.getId()%>"><%=  t.getNombre()%></a></td>
                                    <td ><span> <%=  t.getParticipantesNum()%> Participantes </span></td>
                                </tr>
                                <%}%>
                            </table>
                        </div>
                    </div>
                                     

                    <%}%>
                </div>               







                <div class="container margendivs">

                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <h2 class="tituloseccion text-center">Proximos partidos</h2>
                                <table id="partidos" class="centrartabla">
                                    <% PartidoDAO partido = new PartidoDAO();
                                    ArrayList<Partido> listaPartidos = partido.GetPartidos();
                                    for (int i=0;i<3;i++) {
                                        if(listaPartidos.size()>i){
                                            Partido p=listaPartidos.get(i); %>
                                    <tr class="partido">
                                        <td class="juego">
                                            <img class="logojuego" <%="src='" + p.getTorneo().getJuego().getImagenUrlNombre() + "'"%>></img>
                                        </td>
                                        <td class="local">
                                            <img class="logolocal" <%="src='" + p.getUsuario1().getImageURL() + "'"%> ></img><br>
                                    <center><span class="letrasjugadores"><%=  p.getUsuario1().getAlias() %> </span></center>
                                        </td>
                                        <td class="versus">
                                            <span class="fechapartido"><%=  p.getFechaInicio() %></span><br>
                                            VS
                                        </td>

                                        <td class="visitante">
                                            <img class="logovisitante"  <%="src='" + p.getUsuario2().getImageURL() + "'"%>></img><br>
                                        <center> <span class="letrasjugadores"><%=  p.getUsuario2().getAlias() %> </span></center>
                                        </td>
                                    </tr>
                                    <%}}%>
                                </table>
                            </div>
                            <div class="col-md-5 centrarmovil">
                                <h2 class="tituloseccion">Patrocinadores </h2><br>
                                <img class="patrocinadores" src="img/Movistar_footer.png"></img><br>
                                <img class="patrocinadores" src="img/intel-extreme-masters-200.png"></img><br>
                                <img class="patrocinadores" src="img/intel-logo-region.jpg"></img>

                            </div>
                        </div>
                    </div>
                </div>
                <div style="height:100px;" class=""></div>
            </main>
        
        <%@include file="/includes/footer.html" %>
        
    </body>
</html>
