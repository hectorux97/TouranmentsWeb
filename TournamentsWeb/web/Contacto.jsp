<%-- 
    Document   : Contacto
    Created on : 14-may-2019, 9:25:00
    Author     : angel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>       
        <title>Contacto</title>
        <%@include file="/includes/headerLinks.html" %>
    </head>
    <body>
        <header>
            <%@include file="/includes/header.jsp" %>   
        </header>
        <div class="row m-0 w-100">
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
                                <form class="form-horizontal" method="post" action="/Controlador/Contacto">
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
                                                <input id="lname" name="apellido" type="text" placeholder="Apellidos" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fas fa-envelope"></i></span>
                                            <div class="col-md-8">
                                                <input id="email" name="email" type="email" placeholder="Email" class="form-control">
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
  <%@include file="/includes/footer.html"%>    

</body>

</html>
