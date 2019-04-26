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
             
	<section role="main">
         <div  id="Form">
             <form method="Psot" action="Controlador/soporte%seleccion=añadirpeticion.java"class="left form mx-md-2 my-3 pl-2 rounded" style="color: #a8c916;" ><center>
                Nombre de Usuario <input style="border-color: #a8c916;" type="Text" name="Nombre" value="">
                <br>Asunto:</br><input style="border-color: #a8c916;" type="Text" name="asunto" value="">
                     
                   
	       <br>Porfavor explique su problema:</br>
                    <textarea style="border-color: #a8c916;" name="mensaje" rows="5" cols="30">
                         
                    </textarea> 		
               <br><input type="Submit" value="Enviar"></br>
	  </form>
	 </div>           
         <% ArrayList soporte=(ArrayList)request.getAttribute("mensajessoporte");
          %>
         <h1 style="color: #a8c916">peticiones activas</h1>
	<div id="soporte" class="container"style="background-color: #779442;">
	   <table style="width:100%; background-color: #ffb82c; overflow: scroll;"class="table">
             <thead>
               <tr>
                 <th>Fecha de envio</th> 
                 <th>Asunto</th>
                 <th>Mensaje</th>
                 <th>Estado</th>
               </tr>
             </thead>
             <%
                
                  for(int i=0;i<soporte.size();i++){
                   Soporte s=(Soporte)soporte.get(i);
             %>
           <tr>
               <td><%=s.getFecha()%></td>
               <td><%=s.getAsunto()%></td>
               <td><%=s.getMensaje()%></td>
               <td><%=s.getEstado%></td>
           </tr>
    
           </table>   
            </section>
             
        <%@include file="/includes/footer.html" %>
    </body>
</html>
