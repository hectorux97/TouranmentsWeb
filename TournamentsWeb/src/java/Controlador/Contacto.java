/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hector
 */
@WebServlet(urlPatterns = {"/Controlador/Contacto"})
public class Contacto extends HttpServlet {

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
        
        String sender = "bambugamingtester";
        String password = "root1234$";
        String reciver= "bambugamingtester@gmail.com";
        String nombre= request.getParameter("name");
        String asunto="Consulta "+ nombre+ " "+request.getParameter("apellido");
        String mensaje="E-mail a responder: "+request.getParameter("email")+"\n";
        mensaje+="Telefono: "+request.getParameter("phone")+"\n";
        mensaje+=request.getParameter("message");
       

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.user", sender);
        props.put("mail.smtp.clave", password); 
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getDefaultInstance(props);

        try {
            // Define message
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(sender));
            message.setSubject(asunto);
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(reciver));
            message.setText(mensaje);

            // Envia el mensaje
            Transport t= session.getTransport("smtp");
            t.connect("smtp.gmail.com", sender, password);
            t.sendMessage(message, message.getRecipients(Message.RecipientType.TO));           
            t.close();           
        } catch (Exception e) {}
        response.sendRedirect("/index.jsp");
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
