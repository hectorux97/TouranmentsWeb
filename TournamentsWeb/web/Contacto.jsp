<%-- 
    Document   : Contacto
    Created on : 14-may-2019, 9:25:00
    Author     : angel
--%>

<%@page import="beans.Email"%>
<%@page import="beans.Partido"%>
<%@page import="DAO.PartidoDAO"%>
<%@page import="beans.Torneo"%>
<%@page import="DAO.TorneoDAO"%>
<%@page import="beans.GlobalInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.GlobalInfoDAO"%>
<%@page import="beans.Juego"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>TounamentsWeb</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="icon" type="image/png" href="img/IconoWeb.png">
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link type="text/javascript" href="competiciones.js">
	 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>           
            
            <%@include file="/includes/header.jsp" %>   
        </header>
        <div class="row">
		<div class="container-fluid separador backgroundImage menubar">
			<h1 class="separadorletras"> Contacto</h1>
			<h5 class="separadorletras"> Contacta con nosotros.</h5>
		</div>
	</div>
	<div class="container">
				<center>
				
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center header">Formulario de contacto</legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="fname" name="name" type="text" placeholder="Nombre" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="lname" name="name" type="text" placeholder="Apellidos" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fas fa-envelope"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <input id="phone" name="phone" type="text" placeholder="Telefono" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="message" name="message" placeholder="Introduce tu mensaje aquí, intentaremos responderte en un máximo de 2 días laborables." rows="7"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn  btn-lg" style="background-color:#a8c916;color:white;">Enviar</button>
                                <%
Email email=new Email();
String de=request.getParameter("email");
String clave=request.getParameter("clave");
String para=request.getParameter("para");
String mensaje=request.getParameter("mensaje");
String asunto=request.getParameter("asunto");

boolean resultado= email.enviarcorreo(de, clave, para, mensaje, asunto);

if(resultado){
out.print("cooreo electronico correctamente enviado"+"nn"+" volver al index");

}else{
out.print("cooreo electronico no enviado»+»nn»+» volver al index");

}

%>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
				</center>
</div>

	
	<!-- FOOTER -->
  <footer class="footer backgroundImage bg-dark footer2 center-block">
    <br>
    <p class="separadorletras">&copy; 2019 Bambing Gaming, Inc. &middot; Todos los derechos reservados</p>
  </footer>

</body>

</html>
