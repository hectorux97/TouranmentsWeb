/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DAO.GlobalInfoDAO;
import DAO.NickUsuarioDAO;
import DAO.PartidoDAO;
import DAO.TorneoDAO;
import DAO.UsuarioDAO;
import Gestor.GestorUsuario;
import beans.Juego;
import beans.NickUsuario;
import beans.Partido;
import beans.Torneo;
import beans.Usuario;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author hector
 */
public class Test {
    
    public static void main(String[] args){
        
        String sender = "hectortilla6";
        String password = "azariealeli";
        String reciver="hectortilla6@gmail.com";
        //String nombre= request.getParameter("name");
        String asunto="Consulta ";//+ nombre;
        String mensaje= "AASDASDADASD";//request.getParameter("message");
       

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
                System.out.println("ENIVADO");
              t.close();
              System.out.println("ENIVADO");
        } catch (Exception e) {}


    }
 
                                    
                                       
}
           
               
    
    
    

