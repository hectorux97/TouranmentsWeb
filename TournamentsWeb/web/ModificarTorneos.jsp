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
    <%@include file="/includes/MenuTorneo.html" %>
    <div class="form-group text-center">

    </div>
    <br />
<% TorneoDAO torneo = new TorneoDAO();
                                    ArrayList<Torneo> listaTorneos = torneo.GetTorneo();
                                    for (Torneo t : listaTorneos) {%>
                                <tr class="col-md-8">
                                    
                                    <td ><img class="icono" src="img/copa.png">     <%=  t.getFechaInicio()%></td>
                                    <td ><img class="icono" <%="src='" + t.getJuego().getImagenUrlIcono() + "'"%>></img></td>
                                    <td > <span>  <%=  t.getNombre()%> </span> </td>
                                    <td ><button href="Torneo.jsp?idTorneo=<%=t.getId()%>">Generar Partidos </button></td>
                                    <td ><select name="nombrejuego" class="selectpicker  rounded-0" style="width: 150px;"></td>
                                    <td> <option disabled value="">Juego</option>
                <option value="">Sin Comenzar</option>
                <option value="">Comenzado</option>
                <option value="">Finalizado</option>
            </select></td>
                                </tr>
                                <%}%>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>
