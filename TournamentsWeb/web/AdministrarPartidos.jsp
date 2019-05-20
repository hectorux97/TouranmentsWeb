<%-- 
    Document   : AdministrarPartidos
    Created on : 20-may-2019, 15:49:56
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
        <title>Gestor Partidos</title>
        <%@include file="includes/headerLinks.html" %>
    </head>
    <body>
         <header>
            <%@include file="/includes/header.jsp"%>
            <%@include file="/includes/headerPerfil.jsp"%>
        </header>
        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->

<!--Torneo-->
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
    <table>
        <tbody>
                <% PartidoDAO partidos = new PartidoDAO();
                                    ArrayList<Partido> listaPartidos = partidos.GetPartidosEstado();
                                    for (Partido p : listaPartidos) {%>
                                <tr class="col-md-8">
                                    
                                    <td ><img class="icono" src="img/copa.png">     <%=  p.getUsuario1().getAlias()%> VS <%=  p.getUsuario1().getAlias()%> </td>
                                    <td ><span><%=  p.getPuntosUsuario1()%> - <%=  p.getPuntosUsuario2() %></span></td>
                                    <td > <a  href="<%=  p.getImgUrl()%>"> Enlace Imagen del partido </a> </td>
                                    <td ><a class="btn-danger" href="/Controlador/AprobarPartidos?idPartido=<%=p.getId()%>">Aprobar Partido </a></td>
                                    
                                </tr>
                                <%}%>
        </tbody>
    </table> 
  </form>
</main>
 <%@include file="/includes/footer.html" %>
  
</body>
</html>
