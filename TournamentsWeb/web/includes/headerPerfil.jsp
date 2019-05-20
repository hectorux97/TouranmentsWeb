
<%@page import="beans.Usuario"%>
<% 
    Usuario userHeader=(Usuario)session.getAttribute("user");
    if (userHeader.getPrivilegios() == (byte)0) {
/*if(true){*/%>
<div class=" navbar-item collapse-sm show front col-md-2 p-0" id="leftMenu" style="position:fixed;">
    <ul class="nav flex-column text-center sidebar-sticky" style="background-color: #2d3238;width:100%;">
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/Profile.jsp">
                Mi Perfil <span class="sr-only"></span>
            </a>
        </li>
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/TorneosJugador.jsp">
                Mis Torneos <span class="sr-only"></span>
            </a>
        </li>
        <li class="nav-item menuAdmin shadow-sm ">
            <a class="nav-link active" href="/MisPartidos.jsp">
                Mis Partidos <span class="sr-only"></span>
            </a>
        </li>
      
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/Controlador/LogOut">
                Log Out <span class="sr-only"></span>
            </a>
        </li>
    </ul>
</div>
<%} else {%>

<div class=" navbar-item collapse-sm show front col-md-2 p-0" id="leftMenu" style="position:fixed;">
    <ul class="nav flex-column text-center sidebar-sticky" style="background-color: #2d3238;width:100%;">
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/Profile.jsp">
                Mi Perfil <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/AdminMisNoticias.jsp">
                Noticias <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/PublicarTorneos.jsp">
                Torneos <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/AdministrarPartidos.jsp">
                Mis Partidos <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item menuAdmin  shadow-sm ">
            <a class="nav-link active" href="/Controlador/LogOut">
                Log Out <span class="sr-only">(current)</span>
            </a>
        </li>
    </ul>
</div>
  
  <%}%>