/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.NoticiasDAO;
import beans.Noticia;
import beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JF
 */
@WebServlet(urlPatterns = {"/Controlador/NewNoticia"})
public class NewNoticia extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(false);
        
            if(session != null){
                    
                //Como creo que deberia funcionar    
		Usuario user = (Usuario)session.getAttribute("user");
                NoticiasDAO notiDAO = new NoticiasDAO();
                Noticia noti = (Noticia)request.getAttribute("notic");
                noti.setAutor(user);
                    //Esto es para poder meter eñes y acentos en la noticia desde el useBean
                    String titu = new String(request.getParameter("titular").getBytes("ISO-8859-1"),"UTF-8");
                    String resu = new String(request.getParameter("resumen").getBytes("ISO-8859-1"),"UTF-8");
                    String t = new String(request.getParameter("noticiaTexto").getBytes("ISO-8859-1"),"UTF-8");
                    noti.setTitular(titu);
                    noti.setResumen(resu);
                    noti.setNoticiaTexto(t);
                    
                notiDAO.subirNoticia(noti);
                    
                    
                /*  Como debe funcionar a malas  
		Usuario user = (Usuario)session.getAttribute("usuario");
                //int userid = user.getId();
		String titulo = request.getParameter("titulo");
                String res = request.getParameter("resumen");
                String texto = request.getParameter("texto");
                String img = request.getParameter("img");
                String tipo = request.getParameter("tipoNoticia");
                
		Noticia not = new Noticia();
		not.setTitular(titulo);
                not.setResumen(res);
                not.setNoticiaTexto(texto);
                not.setImgNoticia(img);
                not.setTipoNoticia(tipo);        
                not.setAutor(user);
                NoticiasDAO notiDAO = new NoticiasDAO();
                notiDAO.subirNoticia(not);
		*/
                
		//user= gestion.recuperarUsuario(user.getNombre());		
		response.sendRedirect("AdminMisNoticias.jsp");
            }else{
			
                response.sendRedirect("login.jsp");
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
