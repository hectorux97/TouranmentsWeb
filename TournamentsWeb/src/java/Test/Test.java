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
        
       
        Torneo t= new Torneo();
        t.setNombre("Nombre");
        t.setJuego(new Juego("CSGO"));
        t.setMaximoJugadores(16);
        t.setReglas("reglas");
        t.setPremio("premio");
        TorneoDAO tdao= new TorneoDAO();
        tdao.GuardarNuevoTorneo(t);


    }
 
                                    
                                       
}
           
               
    
    
    

