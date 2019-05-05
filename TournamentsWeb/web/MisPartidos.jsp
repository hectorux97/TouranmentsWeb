<%@page import="java.util.*" %>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>TounamentsWeb</title>
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>



        </header>
        <%@include file="/includes/HeaderJugador.html"%>
        <center>
            <section role="main"style="overflow: scroll;" >
                <% ArrayList<Partido> partidos = (ArrayList<Partido>) request.getAttribute("partidos");
                    if (partidos != null && !partidos.isEmpty()) {
                %>	
                <h1 style="color: #a8c916">Proximos Partidos</h1>
                <div id="partidos" class="container" style="background-color: #779442;">
                    <table style="background-color: #ffb82c;"class="table">
                        <thead>
                            <tr>
                                <th>NPartido</th>
                                <th>Torneo  </th>
                                <th>Estado  </th> 
                                <th>fecha del partido</th>
                                <th>VerPartido</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i < partidos.size(); i++) {
                                    Partido p = partidos.get(i);
                            %>
                            <tr>
                                <td><%=p.getId()%></td>
                                <td><%=p.getTorneo()%></td>
                                <td><%=p.getEstadoConversion()%></td>
                                <td><%=p.getFechaInicio()%></td>
                                <td><a href="<%="/Controlador/MostrarPartido?idPartido=" + p.getId()%>"></a></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    <br/><br/>
                    <%} else {%>
                    <h1>No tienes ningun partido proximamante</h1>

                    <%}%>            
        </center>
    <%@include file="/includes/footer.html" %>
    </body>
</html>