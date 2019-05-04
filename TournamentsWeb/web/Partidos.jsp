<%-- 
    Document   : Partidos
    Created on : 04-may-2019, 15:24:48
    Author     : hector
--%>

<%@page import="beans.Partido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Partido</title>
        <%@include file="/includes/headerLinks.html" %>

    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>     
        </header>
        <%
            Partido p = (Partido) request.getAttribute("partido");

        %>

        <main>
            <div class="row">
                <div class="container-fluid separador backgroundImage menubar">
                    <h1 class="separadorletras">#Partido <%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%> vs <%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%></h1>
                    <h5 class="separadorletras"><%= p.getFechaInicio()%></h5>
                </div>
            </div>
            <!-- Aqui comienda el acordeon -->
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-7">
                        <table>
                            <tr>
                                <td><img <%="src='" + p.getUsuario1().getImageURL() + "'"%> class="imagenavatar"><br><center><span><%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%></span></center></td>
                            <td class="versuspartido"> <span> VS </span></td>
                            <td> <img <%="src='" + p.getUsuario1().getImageURL() + "'"%> class="imagenavatar"><br><center><span><%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%></span></center></td>
                            </tr>
                            <tr>
                                <td><center><span class="scorepartido"><%=p.getPuntosUsuario1()%></span></center></td>
                            <td class="versuspartido"> <span> - </span></td>
                            <td><center><span class="scorepartido"><%=p.getPuntosUsuario2()%></span></center></td>
                            </tr>
                        </table>
                        <br>
                        <h2>Captura de pantalla:</h2><br>
                        <img <%=p.getImgUrl()%>>
                    </div>

                    <!-- Aqui Finaliza el acordeon -->
                    <div class="col-md-4 col-lg-5">
                        <div class="card">
                            <div class="card-header">
                                Requisitos
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Introducir resultado</h5>
                                <p class="card-text">- Introduzca el resultado del partido junto con la captura de pantalla</p>
                                <form method="post" >
                                    <%=p.getUsuario1().getNick(p.getTorneo().getJuegoName())%>:
                                    <input type="text" name="puntosUsuario1">
                                    <br>
                                    <%=p.getUsuario2().getNick(p.getTorneo().getJuegoName())%>:
                                    <input type="text" name="puntosUsuario2">
                                    <br>
                                    Enlace de la imagen de captura:<br>
                                    <input type="text" name="imgUrl">
                                    <a href="#" class="btn btn-danger">Introducir resultado</a>
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
