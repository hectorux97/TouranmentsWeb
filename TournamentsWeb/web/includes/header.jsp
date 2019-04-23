

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
                        <a class="nav-link text-center" href="../VistaN.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="#">Noticias</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="#">Competiciones</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="#">TV</a>
                    </li>
                    <li class="nav-item active inclinado shadow-sm">
                        <a class="nav-link text-center" href="#">Contacto</a>
                    </li>
                </ul>
                <!--Right Part-->
                <ul class="nav-item pl-0 mr-4" >
                    <!--Perfil Part!-->
                    <%if(session.isNew()){%>
                    <li class=" active">
                        <img class="perfilImage" src="../img/IconoWeb.png" alt="perfilImage"/>
                        
                        <ul class="navbar-nav mr-auto" style="display:inline">
                            <li class="nav-item active shadow-sm collapse show" id="NoramlPerfilDropdown">
                                <div class="dropdown inclinado perfil">
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
                    <%}else{%>
                    <!--Login Register Part!-->
                    <li class=" active" >
                        <ul class="navbar-nav mr-auto d-inline">
                            <li class="nav-item active rightHeader" >
                                <a class="nav-link" href="../Login.jsp">Login</a>
                            </li>
                            <li class="nav-item disable" style="height:27px;">
                                <hr />
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
