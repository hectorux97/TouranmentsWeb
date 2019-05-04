/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.text.SimpleDateFormat;
import java.util.Date;
import Gestor.GestorUsuario;
import beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import javax.servlet.RequestDispatcher;
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
@WebServlet(urlPatterns = {"/Controlador/ModificarUsuario"})
public class ModificarUsuario extends HttpServlet {

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
        HttpSession session= request.getSession(false);
        if(session!=null){
            Usuario user= (Usuario)request.getAttribute("user");
            String[] nicks= request.getParameterValues("nicksJuegos");
            
            if(user==null){
                response.sendRedirect("Profile.jsp?error=USER_MISSING");               
            }else{
                user.setId(((Usuario)session.getAttribute("user")).getId());
                user.setNicks(nicks);
              /*  if(user.getNicks().size()>0){
                     response.sendRedirect("Profile.jsp?error=HAY_NICKS_"+user.getNicks().size());
                     return;
                }*/
                GestorUsuario gestor=new GestorUsuario();
                try {
                    Date edad= new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("fechaNacimiento"));
                    java.sql.Date parseDate= new java.sql.Date(edad.getTime());
                    user.setEdad(parseDate);
                }catch(ParseException e){}

                user= gestor.Modificar(user);
                if(user!=null){            
                    session.setAttribute("user", user);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
                    dispatcher.forward(request, response);

                }else{
                    response.sendRedirect("Profile.jsp?error=UPDATE_ERROR");
                }
            }
       }else{
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
