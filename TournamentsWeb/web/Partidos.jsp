<%-- 
    Document   : Partidos
    Created on : 04-may-2019, 15:24:48
    Author     : hector
--%>

<%@page import="beans.Juego"%>
<%@page import="java.sql.Date"%>
<%@page import="beans.Usuario"%>
<%@page import="beans.Torneo"%>
<%@page import="beans.Partido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="partido" class="beans.Partido" scope="request" type="beans.Partido"></jsp:useBean>
<jsp:setProperty name="partido" property="*"></jsp:setProperty>
<% if(request.getParameter("imgUrl")!=null){%>    
    <jsp:forward page="/Controlador/ModificarPartido"/>    
<%}%>
<!DOCTYPE html>
<html>
    <head>

        <title>Partido</title>
        <%@include file="/includes/headerLinks.html" %>
        <%@include file="/includes/headerPerfil.jsp" %> 
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>     
        </header>
        <%
            Partido p = new Partido(new Torneo("Happy", new Usuario(), new Juego("CSGO")), 1, new Usuario("Fer", "", ""), 1, new Usuario("Fer", "", ""), 2, 1, 2, 0, new Date(2000 - 01 - 01), "/img/avatar.png");//(Partido) request.getAttribute("partido");

        %>

        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind">



            <div class="separador  backgroundImage mt-0 p-2" >

                <h1 class="separadorletras mt-0">#Partido <%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%> vs <%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%></h1>
                <h5 class="separadorletras"><%= p.getFechaInicio()%></h5>  
            </div>


            <!-- Aqui comienda el acordeon -->
            <div class="">
                <div class="row ml-2">
                    <div class="col-md-8 col-lg-7">
                        <table>
                            <tr>
                                <td>
                                    <img <%="src='" + p.getUsuario1().getImageURL() + "'"%> class="imagenavatar text-center">
                                    <br>
                                    <h4 class="text-center">as<%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%></h4>
                                </td>
                                <td class="versuspartido"> <span> VS </span></td>
                                <td> 
                                    <img <%="src='" + p.getUsuario1().getImageURL() + "'"%> class="imagenavatar text-center">
                                    <br>
                                    <h4 class="text-center">as<%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%></h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4 class="scorepartido text-center"><%=p.getPuntosUsuario1()%></h4>
                                </td>
                                <td class="versuspartido"> 
                                    <h3> - </h3>
                                </td>
                                <td>
                                    <h4 class="scorepartido text-center"><%=p.getPuntosUsuario2()%></h4>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <h2>Captura de pantalla:</h2><br>
                        <img <%="src='" + p.getImgUrl() + "'"%>>
                    </div>

                    <!-- Aqui Finaliza el acordeon -->
                    <div class="col-md-4 col-lg-5">
                        <div class="form rounded">
                            <h4 class="card-header"><b>Introducir resultado</b></h4>
                            <div class="card-body">

                                
                                <p class="card-text">- Introduzca el resultado del partido junto con la captura de pantalla</p>
                                <form method="post"  >
                                    <div class="form-group row-1">
                                        <div class="row m-auto">

                                            <label for="puntosUusario1"><%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%>:</label>
                                            <input id="puntosUusario1" class="form-control rounded-0" type="number" name="puntosUusario1"  placeholder="2">

                                            <label for="puntosUsuario2"><%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%>:</label>
                                            <input id="puntosUsuario2" class="form-control rounded-0" type="number" name="puntosUsuario2"  placeholder="2">

                                            <label for="imgUrl">Direccion imagen victoria</label>
                                            <input id="imgUrl" class="form-control rounded-0" type="text" name="imgUrl"  placeholder="https://es.gizmodo.com/esta-es-la-primera-imagen-real-de-un-agujero-negro-obte-1833938144">   
                                        </div>
                                    </div>
                                    <div class="form-group pb-2">
                                        <div class="inclinado m-auto shadow-sm w-75">
                                            <input class="nav-link text-center m-auto" type="submit" name="submit" value="Introducir resultado">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container" style="height:100px;">
                </div>

        </main>
        <%@include file="/includes/footer.html"%>       
    </body>
</html>
