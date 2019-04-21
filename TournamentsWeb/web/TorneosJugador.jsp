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
           
            
            <%@include file="/includes/headerUser.html"%>
        </header>
            <%@include file="/includes/HeaderJugador.html"%>
             <center>
	<section role="main" style="overflow: scroll;">
    <% ArrayList torneos=(ArrayList)request.getAttribute("torneos");
       if (torneos != null){
    %>	
        <h1 style="color: #a8c916">Mis Torneos</h1>
	<div id="Torneos" class="container"style="background-color: #779442;">
	   <table style="width:100%; background-color: #ffb82c; overflow: scroll;"class="table">
             <thead>
               <tr>
                 <th>NTorneo</th> 
                 <th>fecha de publicacion</th>
                 <th>Fecha de inicio</th>
                 <th>Credador</th>
               </tr>
             </thead>
             <%
                
                  for(int i=0;i<torneos.size();i++){
                   Torneo t=(Torneo)torneos.get(i);
             %>
           <tr>
               <td><%=t.getNombre()%></td>
               <td><%=t.getFechaPublicacion()%></td>
               <td><%=t.getFechaInicio()%></td>
               <td><%=t.getCreador().getAlias()%></td>
           </tr>
    
           </table>
<br/><br/>
<%}}else {%> <div>
             <h1>No esta inscrito en ningun torneo actualmente</h1>
             <a style="color: #a8c916; " href="competiciones.html">Inscribete a uno ahora</a>
              </div>
 <%}%>      
</center>
            
        <%@include file="/includes/footer.html" %>
    </body>
</html>
