<%-- 
    Document   : postautor
    Created on : Apr 26, 2019, 7:13:03 PM
    Author     : JF
--%>
<%@page import="beans.Noticia, java.util.*, DAO.NoticiasDAO, beans.GlobalInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/includes/headerLinks.html" %>
        
    </head>
    
    <header>
        <%@include file="/includes/header.jsp" %>
    </header>
    <body>
        <%String tit = request.getParameter("autor");%>

        <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
       <div class="col-md-12">

          <h1 class="my-4"> Noticias de <%=tit%>
        </h1>

        <!-- Blog Post -->
        <% ArrayList noticias =(ArrayList)request.getAttribute("noticias");
        for(int i=0;i<noticias.size();i++){
            Noticia n=(Noticia)noticias.get(i);%>
                <% int id = n.getIdNot(); %>
                <% String res = n.getTitular();%>
                <% String titulo = n.getResumen();%>
                <% String texto = n.getNoticiaTexto();%>
                <% String img = n.getImgNoticia();%>
                <% String autor = n.getAutor();%>
                <% Date date = n.getFechaNoticia();%>
                <% String tipo = n.getTipoNoticia();%>
                <a href=""></a> 
    <div class="card mb-4">
            <img class="card-img-top" src="img/<%=img%>" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title"><%=titulo%></h2>
            <p class="card-text"><%=res%></p>
            <a href="PaginaNoticias?noticias=mostrar idNoticia= <%=id%>" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">
              Publicado el: <%=date%> por
              <a href="PaginaNoticias?noticias=autor autor= <%=autor%>"><%=autor%></a>
          </div>
          </div>
        <%}%>
    </div> 
    </div>
    </div>

        
        
        
        <%@include file="/includes/principal/principal.jsp" %>
        <%@include file="/includes/footer.html" %>
    </body> 
</html>