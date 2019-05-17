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
        <title>TounamentsWeb</title>
        <%@include file="includes/headerLinks.html" %>
    </head>
    <body>
         <header>
  <nav class="navbar navbar-expand-md fixed-top w-100 p-0 h-md-10 front border border-bottom border-dark" style="margin:0px;">
    <!--Standard header-->
    <div class="navbar-item w-100 h-10">
      <div class="navbar front" style="background-color: #2d3238;">
        <!--Buttons collapsed header-->
        <img class="mainLogo" src="../img/IconoWeb.png" alt=""/>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#PrincipalHeader,#NoramlPerfilDropdown,#CollapsePerfilDropdown" aria-controls="navbarsExampleDefault" aria-expanded="true" aria-label="Toggle navigation">
          <i class="fas fa-bars" style="font-size:40px;color:#e1e4ea;" ></i>
        </button>
        <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#leftMenu" aria-controls="navbarsExampleDefault" aria-expanded="true" aria-label="Toggle navigation">
          <i class="fas  fa-user-circle" style="font-size:40px;color:#e1e4ea;" ></i>
        </button>
        <!--Normal Header-->
        <div class="collapse navbar-collapse"  id="PrincipalHeader">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active inclinado shadow-sm">
              <a class="nav-link text-center" href="../index.html">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active inclinado shadow-sm">
              <a class="nav-link text-center" href="../noticias.html">Noticias</a>
            </li>
            <li class="nav-item active inclinado shadow-sm">
              <a class="nav-link text-center" href="../competiciones.html">Competiciones</a>
            </li>
            <li class="nav-item active inclinado shadow-sm">
              <a class="nav-link text-center" href="../tv.html">TV</a>
            </li>
            <li class="nav-item active inclinado shadow-sm">
              <a class="nav-link text-center" href="../contacto.html">Contacto</a>
            </li>
          </ul>
          <!--Right Part-->
          <ul class="nav-item pl-0 mr-4" >
            <!--Perfil Part!-->
            <li class=" active">
              <img class="perfilImage" src="../img/IconoWeb.png" alt="perfilImage"/>
              <ul class="navbar-nav mr-auto" style="display:inline">
                <li class="nav-item active collapse show" id="NoramlPerfilDropdown">
                  <div class="dropdown inclinado perfil shadow-sm">
                    <a class="nav-link" data-toggle="dropdown" href="#">Mi Perfil
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu ">
                      <li class="dropdown-item"><a  class="nav-link text-white" href="#">Mis Torneos</a></li>
                      <li class="dropdown-item"><a  class="nav-link text-white" href="#">Perfil</a></li>
                      <li class="dropdown-item"><a  class="nav-link text-white" href="#">Log out</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item active inclinado shadow-sm collapse perfil" id="CollapsePerfilDropdown">
                  <a class="nav-link" href="#">Mi Perfil</a>
                </li>
              </ul>
            </li>
              <!--Login Register Part!-->
            <li class=" active" style="display:none">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active rightHeader" >
                  <a class="nav-link" href="Login.html">Login</a>
                </li>
                <li class="nav-item disable">
                <hr />
                </li>
                <li class="nav-item active rightHeader">
                  <a class="nav-link " href="regis.html">Register</a>
                </li>
              </ul>
            </li>
            <!--Icons part-->
            <li class="active">
              <ul class="">
                <li class="active" >
                  <a class="mr-1" href="#">
                    <i class="fa fa-facebook-official" style="font-size:24px;color:#3B5998; "></i>
                  </a>
                </li>
                <li class="active" >
                  <a class="mr-1" href="#">
                    <i class="fa fa-instagram" style="font-size:24px;color:#3F729B; "></i>
                  </a>
                </li>
                <li class="active" >
                  <a class="mr-1" href="#">
                    <i class="fa fa-twitter-square" style="font-size:24px;color:#55ACEE; "></i>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
    <!--Things of Admin ELIMINAR PARA EL RESTO-->
  <div class=" navbar-item collapse-sm show front col-md-2 p-0" id="leftMenu" style="position:fixed;">
    <ul class="nav flex-column text-center sidebar-sticky" style="background-color: #2d3238;width:100%;">
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_MiPerfil.html">
          Mi Perfil <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_Noticias.html">
          Noticias <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_Torneo.html">
          Torneos <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="#">
          Partidos Activos <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="#">
          Log Out <span class="sr-only">(current)</span>
        </a>
      </li>
    </ul>
  </div>
</header>
        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->

<!--Torneo-->
<div>
  <form class="left form mx-md-2 my-3 pl-2 rounded"  method="post">
    <div class="d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
      <div class="inclinado ">
        <a class="nav-link" href="#">Publicar Torneo</a>
      </div>
	  <div class="inclinado ">
        <a class="nav-link" href="Admin_MisNoticias.html">Administrar Torneos</a>
      </div>
         <div class="inclinado ">
        <a class="nav-link" href="Admin_MisNoticias.html">Publicar Juego</a>
      </div>
    </div>
    <div class="form-group text-center">

    </div>
    <br />
    <div class="form-group row-1 mb-0 ml-4">
        <div class="form-group">
            <label for="nombreJuegoNuevo">Nombre del juego</label>
            <input class="form-control rounded-0 w-25" type="text" name="nombreJuegoNuevo" value="" placeholder="Nombre"><br />



           
   
      <div class="form-group text-center pb-2">
          <button class="inclinado w-25 m-auto "type="submit">Publicar Juego Nuevo</button>          
      </div>
    </div>
  </form>
</div>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>
