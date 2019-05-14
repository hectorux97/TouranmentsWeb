<%-- 
    Document   : AdminMisNoticias
    Created on : May 14, 2019, 1:03:38 PM
    Author     : JF
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.NoticiasDAO"%>
<%@page import="beans.Usuario"%>
<%@page import="beans.Noticia"%>
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
        <!--Things of Admin ELIMINAR PARA EL RESTO-->
  <div class=" navbar-item collapse-sm show front col-md-2 p-0" id="leftMenu" style="position:fixed;">
    <ul class="nav flex-column text-center sidebar-sticky" style="background-color: #2d3238;width:100%;">
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_MiPerfil.html">
          Mi Perfil <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_Noticias.html">
          Noticias <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="Admin_Torneo.html">
          Torneos <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="#">
          Partidos Activos <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item menuAdmin  shadow-sm ">
        <a class="nav-link active" href="#">
          Log Out <span class="sr-only">(current)</span>
        </a>
      </li>
    </ul>
  </div>
</header>
        
        <%
            if(request.getSession(false)!=null){
            Usuario user= (Usuario)session.getAttribute("user");
            NoticiasDAO nDAO= new NoticiasDAO();
            ArrayList<Noticia> noticias= nDAO.getNoticiasAutor(user.getId());
            session.setMaxInactiveInterval(1200);
        %>
        
        <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
  <!--Cabecera-->
        <%     
                    
                    if (noticias != null && !noticias.isEmpty()) {
                %>
<!--Perfil-->
<div>
  <form class="left form mx-md-2 my-3 pl-2 rounded" action="index.html" method="post">
    <div class="d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
      <div class="inclinado ">
        <a class="nav-link" href="AdminNoticias.jsp">Nueva Noticia</a>
      </div>
      <div class="inclinado ">
        <a class="nav-link" href="/MostrarMisNoticias">Mis Noticias</a>
      </div>
    </div>
    <table id="table" class="table w-75 border-bottom">
      <thead class="thead-dark">
        <tbody>


      <tr class="">
        <th scope="col">Titulo</th>
        <th scope="col">Tipo</th>
        <th scope="col">Fecha </th>
        <th scope="col">Borrado </th>
      </tr>
    </thead>
    <tbody>
            <%for (int i = 0; i < noticias.size(); i++) {
                Noticia n = noticias.get(i);
            %>
                <tr>
                    <td><%=n.getTitular()%></td>
                    <td><%=n.getTipoNoticia() %></td>
                    <td><%=n.getFechaNoticia()%></td>
                    <td><a href="PaginaNoticia?no=borrar&idNoticia=<%=n.getIdNot()%>">Borrar</a></td>
                </tr>
                            <%}%>
                        </tbody>
    </tbody>
    </table>

    <div class="form-group text-center pb-2 row">
      <div class="inclinado w-25 m-auto ">
        <a class="nav-link " onclick="BorrarNoticias();">Borrar Noticia</a>
      </div>
      <div class="inclinado w-25 m-auto " >
        <a class="nav-link " href="AdminNoticias.jsp">Nueva Noticia</a>
      </div>
    </div>
  </form>
</div>
</main>
        
    <%@include file="/includes/footer.html" %>
    </body>
</html>