/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.PartidoDAO;
import beans.Partido;
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
 * @author hector
 */
@WebServlet(urlPatterns = {"/Controlador/ModificarPartido"})
public class ModificarPartido extends HttpServlet {

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
            if (session != null) {
                //int id = ().getId();
                PartidoDAO pDAO = new PartidoDAO();
                Partido requestP= (Partido)request.getAttribute("partidoShow");                
                Partido p = (Partido)session.getAttribute("partido");//pDAO.GetPartido(requestP.getId());
               
                if (p != null && requestP!=null) {
                    p.setPuntosUsuario1(requestP.getPuntosUsuario1());
                    p.setPuntosUsuario2(requestP.getPuntosUsuario2());
                    p.setImgUrl(requestP.getImgUrl());
                    if(pDAO.ActualizarPartido(p)){
                        session.setAttribute("partido", p);
                        response.sendRedirect("/Partidos.jsp?");
                    }else{
                         response.sendRedirect("/MisPartidos.jsp?error=ERROR_UPDATE");
                    }
                   /* RequestDispatcher dispatcher = request.getRequestDispatcher("/Partidos.jsp");
                    dispatcher.forward(request, response);*/
                } else {
                    response.sendRedirect("/MostrarPartido.java?idPartido="+p.getId()+"&error=ERROR_UPDATE");
                }
            } else {
                response.sendRedirect("/index.jsp?error=SESSION_EXPIRED");
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
