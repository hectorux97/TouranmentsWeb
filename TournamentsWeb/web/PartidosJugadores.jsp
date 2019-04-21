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
	<section role="main"style="background-color: #779442;" >
    <% ArrayList partidos=(ArrayList)request.getAttribute("partidos");
       if (partidos != null){
    %>	
        <h1 style="color: #a8c916">Proximos Partidos</h1>
	<div id="partidos" class="container">
	   <table style="background-color: #ffb82c;"class="table">
             <thead>
                <tr>
                   <th>NPartido</th>
	           <th>Torneo  </th>
                   <th>Estado  </th> 
                   <th>fecha del partido</th>
	           <th>Enlace al Partido</th>
                </tr>
             </thead>
             <%
                
                  for(int i=0;i<partidos.size();i++){
                   Partido p=(Partido)partidos.get(i);
             %>
           <tr>
               <td><%=p.getNombre()%></td>
               <td><%=p.getTorneo()%></td>
               <td><%=p.getEstado()%></td>
               <td><a href="<%=p.getEnlace%>"></a></td>
           </tr>
    
           </table>
<br/><br/>
<%}{%><h1 style="color: #a8c916">No tienes ningun partido proximamante</h1>
              
 <%}%>            
</center>
            
        <%@include file="/includes/footer.html" %>
    </body>
</html>