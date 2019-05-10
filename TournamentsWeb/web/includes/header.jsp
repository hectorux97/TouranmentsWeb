

<%@page import="beans.Usuario"%>

<nav class="navbar navbar-expand-md fixed-top w-100 p-0 h-md-10 front" style="margin:0px;">
    <!--Standard header-->
    <div class="navbar-item w-100 h-10 ">
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
                        <a class="nav-link text-center" href="../index.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="PaginaNoticias?no=inicionoticias&idNoticia=3">Noticias</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="../index.jsp">Competiciones</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="../tv.html">TV</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="#">Contacto</a>
                    </li>
                </ul>
                <!--Right Part-->
                <ul class="nav-item pl-0 mr-4" >
                    <!--Perfil Part!-->
                    <%  
                        if(request.getSession(false)!=null && session.getAttribute("user")!=null){
                            Usuario userHeader=(Usuario)session.getAttribute("user");
                    %>
                    <li class=" active">
                        <img class="perfilImage" <%="src='"+(userHeader.getImageURL()==""?userHeader.getImageURL():"img/perfil/IconoWeb.png")+"'"%> alt="perfilImage"/>
                        
                        <ul class="navbar-nav mr-auto" style="display:inline">
                            <li class="nav-item active shadow-sm collapse show" id="NoramlPerfilDropdown">
                                <div class="dropdown inclinado perfil">
                                    <a class="nav-link" data-toggle="dropdown" href="#">Mi Perfil
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu ">
                                        <li class="dropdown-item"><a  class="nav-link text-white" href="#">Mis Torneos</a></li>
                                        <li class="dropdown-item"><a  class="nav-link text-white" href="../Profile.jsp">Perfil</a></li>
                                        <li class="dropdown-item"><a  class="nav-link text-white" href="/Controlador/LogOut">Log out</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item active inclinado shadow-sm collapse perfil" id="CollapsePerfilDropdown">
                                <a class="nav-link" href="#">Mi Perfil</a>
                            </li>
                        </ul>
                    </li>
                    <%}else{%>
                    <!--Login Register Part!-->
                    <li class=" active" >
                        <ul class="navbar-nav mr-auto d-inline">
                            <li class="nav-item active rightHeader" >
                                <a class="nav-link" href="../Login.jsp">Login</a>
                            </li>
                            <li class="nav-item disable" style="height:12px;background-color:#6d7582;width:1.6px">
                               
                            </li>
                            <li class="nav-item active rightHeader">
                                <a class="nav-link " href="../Register.jsp">Register</a>
                            </li>
                        </ul>
                    </li>
                    <%}%>
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
