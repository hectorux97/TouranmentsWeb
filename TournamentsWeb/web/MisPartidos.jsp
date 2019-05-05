<%@page import="DAO.PartidoDAO"%>
<%@page import="java.util.*" %>
<%@page import="beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if(request.getSession(false)==null){%>
     <jsp:forward page="/Login.jsp"/>
<%}%>
<!DOCTYPE html>
<html>
    <head>       
        <title>Mis Partidos</title>
        
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>
            <%@include file="/includes/headerPerfil.jsp" %>   
        </header>
        <%
            if(request.getSession(false)!=null){
            Usuario user= (Usuario)session.getAttribute("user");
            PartidoDAO pDAO= new PartidoDAO();
            ArrayList<Partido> partidos= pDAO.GetPartidos(user.getId());
        %>
        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind text-center" >
       
           
                <%     
                    
                    if (partidos != null && !partidos.isEmpty()) {
                %>
                <section role="main"style="overflow: auto;" >
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
                        <h1 class="h2">Mis Partidos</h1>
                    </div>
                <!--<div id="partidos" class="row ml-3" style="background-color: #779442;" > 
                -->
                    <table style="background-color: #ffb82c;border-left:#779442 6px solid;border-right: #779442 6px solid; "class="table m-3 w-75">
                        <thead>
                            <tr>
                                <th>ID Partido</th>
                                <th>Torneo  </th>
                                <th>Estado  </th> 
                                <th>Fecha Competencia</th>
                                <th>VerPartido</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i < partidos.size(); i++) {
                                Partido p = partidos.get(i);
                            %>
                            <tr>
                                <td><%=p.getId()%></td>
                                <td><%=p.getTorneo().getNombre() %></td>
                                <td><%=p.getEstadoConversion()%></td>
                                <td><%=p.getFechaInicio()%></td>
                                <td><a href="<%="/Controlador/MostrarPartido?idPartido=" + p.getId()%>">Ver</a></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    </section>
                    <br/><br/>
                    <%} else {%>
                    <h1 class="m-5">No tienes ningun partido proximamante</h1>

                    <%}%>            
       
        </main>
        <%}%>
    <%@include file="/includes/footer.html" %>
    </body>
</html>