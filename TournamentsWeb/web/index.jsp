
<%@page import="beans.GlobalInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.GlobalInfoDAO"%>
<%@page import="beans.Juego"%>
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
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
            <link href="style.css" rel="stylesheet">
            
            <%@include file="/includes/header.jsp" %>   
        </header>
      
            <main role="main ">

  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/fondo1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>First slide label</h2>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/fondo2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Titulo</h2>
          <p>Descripcion Nulla vitae elit libero, a pharetra augue mollis interdum.Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/fondo3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Third slide label</h2>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
        </div>
      </div>
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
      <div class="col-lg-4">
        <svg class="bd-placeholder-img " width="350" height="300" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2>Heading</h2>
        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img" width="350" height="300" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2>Heading</h2>
        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img " width="350" height="300" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2>Heading</h2>
        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
	</div>

                <!-- Competiciones -->
                <div class="w-100">
                    <div class="container-fluid separador backgroundImage p-3">
                        <h1 class="separadorletras">Competiciones</h1>
                        <h5 class="separadorletras"> Nuestros torneos activos en cada juego </h5>

                    </div>
                </div>
                <div class="container">
                    <div class="row menujuegos">
                        <ul class="navbar navbar-expand-md  navbar-center">
                            <% GlobalInfoDAO info = new GlobalInfoDAO();
                                ArrayList<Juego> listaJuegos = info.GetJuegos();
                                for (Juego j : listaJuegos) {%>
                            <li class="menujuegos">
                                <img <%="src='" + j.getImagenUrlNombre() + "'"%> class="logojuegotorneo" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
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

                    <div class="collapse" id="collapseExample">
                        <div class="card card-body">
                            <table id="ultimostorneos">
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td>31/03/2019 16:00</td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html">#Torneo Inagural de League of Legends</a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td>31/03/2019 16:00</td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html">#Torneo Inagural de League of Legends</a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td>31/03/2019 16:00</td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html">#Torneo Inagural de League of Legends</a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td>31/03/2019 16:00</td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html">#Torneo Inagural de League of Legends</a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-instagram"></i></td>
                                    <td>31/03/2019 16:00</td>
                                    <td><img class="icono" src="img/lolico.png"></img></td>
                                    <td><a href="torneo1.html">#Torneo Inagural de League of Legends</a></td>
                                    <td><span> 9 equipos </span></td>
                                </tr>

                            </table>
                        </div>
                    </div>



                </div>
                <div class="container margendivs">

                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <h2 class="tituloseccion text-center">Ultimos partidos</h2>
                                <table id="partidos" class="centrartabla">
                                    <tr class="partido">
                                        <td class="juego">
                                            <img class="logojuego" src="img/csgo.png"></img>
                                        </td>
                                        <td class="local">
                                            <img class="logolocal" src="img/arctic.png"></img><br>
                                            <span>Arctic Gaming </span>
                                        </td>
                                        <td class="versus">
                                            <span class="fechapartido">04/03/2019 13:00</span><br>
                                            VS
                                        </td>

                                        <td class="visitante">
                                            <img class="logovisitante" src="img/heretics.png"></img><br>
                                            <span>Team Heretics </span>
                                        </td>
                                    </tr>
                                    <tr class="partido">
                                        <td class="juego">
                                            <img class="logojuego" src="img/csgo.png"></img>
                                        </td>
                                        <td class="local">
                                            <img class="logolocal" src="img/arctic.png"></img><br>
                                            <span>Arctic Gaming </span>
                                        </td>
                                        <td class="versus">
                                            <span class="fechapartido">04/03/2019 13:00</span><br>
                                            VS
                                        </td>

                                        <td class="visitante">
                                            <img class="logovisitante" src="img/heretics.png"></img><br>
                                            <span>Team Heretics </span>
                                        </td>
                                    </tr>
                                    <tr class="partido">
                                        <td class="juego">
                                            <img class="logojuego" src="img/csgo.png"></img>
                                        </td>
                                        <td class="local">
                                            <img class="logolocal" src="img/arctic.png"></img><br>
                                            <span>Arctic Gaming </span>
                                        </td>
                                        <td class="versus">
                                            <span class="fechapartido">04/03/2019 13:00</span><br>
                                            VS
                                        </td>

                                        <td class="visitante">
                                            <img class="logovisitante" src="img/heretics.png"></img><br>
                                            <span>Team Heretics </span>
                                        </td>
                                    </tr>
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
        <script src="vendor/jquery/jquery.js" ></script>
      <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="vendor/bootstrap/js/bootstrap.js" ></script>
    </body>
</html>
