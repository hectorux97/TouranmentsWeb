/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.NoticiasDAO;
import beans.Noticia;
import java.util.Date;
import java.util.ArrayList;

/**
 *
 * @author JF
 */
public class PaginaNoticias extends HttpServlet {

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
        
        String noticia = request.getParameter("noticia");
        
        if (noticia.equals("mostrar")) {
            NoticiasDAO notiDAO = new NoticiasDAO();
            ArrayList noticias;
            String tipo = request.getParameter("tipoNoticia");
            int id = Integer.parseInt(request.getParameter("idNoticia"));
            noticias = notiDAO.getNoticiaYRecomendadas(tipo, id);
            request.setAttribute("noticias", noticias);
            RequestDispatcher rd=request.getRequestDispatcher("/blog2.jsp");
            rd.forward(request,response);
        }  
        
        if (noticia.equals("insertar")) {
            NoticiasDAO notiDAO = new NoticiasDAO();
            Noticia noti = (Noticia)request.getAttribute("noticia");
            boolean aux = notiDAO.subirNoticia(noti);
            if(aux==true){
                ///Ver mejor con las cosas de clase
            }
            else {
                //Poner lo del error
            }
            response.sendRedirect("inicio.html"); // por poner algo
            
        }
        if (noticia.equals("inicionoticias")) {
            
        }
        
        if (noticia.equals("tipo")) {
            NoticiasDAO notiDAO = new NoticiasDAO();
            ArrayList noticias;
            String tipo = request.getParameter("tipoNoticia");
            noticias = notiDAO.getNotiasTipo(tipo);
            request.setAttribute("noticias", noticias);
            RequestDispatcher rd=request.getRequestDispatcher("/posttipo.jsp");
            rd.forward(request,response);
        } 
        if (noticia.equals("autor")) {
            NoticiasDAO notiDAO = new NoticiasDAO();
            ArrayList noticias;
            String autor = request.getParameter("autor");
            noticias = notiDAO.getNoticiasAutor(autor);
            request.setAttribute("noticias", noticias);
            RequestDispatcher rd=request.getRequestDispatcher("/postautor.jsp");
            rd.forward(request,response);
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
