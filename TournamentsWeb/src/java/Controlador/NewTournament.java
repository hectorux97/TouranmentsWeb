/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Gestor.GestorTorneos;
import Gestor.GestorUsuario;
import beans.Juego;
import beans.Torneo;
import beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hector
 */
@WebServlet(name = "NewTournament", urlPatterns = {"/Controlador/NewTournament"})
public class NewTournament extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Torneo torneo= (Torneo)request.getAttribute("torneo");
            Juego juego= new Juego (request.getParameter("nombrejuego"));
            torneo.setJuego(juego);
        GestorTorneos gestor=new GestorTorneos();
       try {
                    Date edad= new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("fechaInicio2"));
                    java.sql.Date parseDate= new java.sql.Date(edad.getTime());
                    torneo.setFechaInicio(parseDate);
                }catch(ParseException e){} 
        torneo= gestor.NuevoTorneo(torneo);
        if(torneo!=null){            
            
            response.sendRedirect("/AdministrarTorneos.jsp");
           
        }else{
            response.sendRedirect("Register.jsp?error=PASSWORD_USER_ERROR");
        }
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
