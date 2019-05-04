/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DAO.GlobalInfoDAO;
import DAO.NickUsuarioDAO;
import DAO.UsuarioDAO;
import Gestor.GestorUsuario;
import beans.Juego;
import beans.NickUsuario;
import beans.Usuario;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author hector
 */
public class Test {
    
    public static void main(String[] args){
        
        
            /*Date date= new Date(2,2,2);
            Usuario usuario = new Usuario(1, "asdadf","", "X",(byte)0, "asdad@gmail.com", date);
            usuario.setApellidos("XXD");
            usuario.setEdad(date);
            GestorUsuario ug= new GestorUsuario();
            if(ug.Modificar(usuario)!=null){
                System.out.println("Succes");
            }*/
          /*  NickUsuarioDAO nickUser= new NickUsuarioDAO();
            ArrayList<NickUsuario> nicks= new ArrayList<>();
            nicks.add(new NickUsuario(new Juego("CSGO"),"ASD"));
            nickUser.GuardarNicks(nicks, 1);*/
          UsuarioDAO userDAO= new UsuarioDAO();
          Usuario user = userDAO.GetUsuario(1);
       String[] nicks= new String[6];
       nicks[1]="ASA";
       nicks[5]="TTDS";
         // nicks.add(new NickUsuario(new Juego("CSGO"),"Nombre"));
          user.setNicks(nicks);
          GestorUsuario gestor= new GestorUsuario();
          //user.setEmail("ASDADS@asdad.com");
          user=gestor.Modificar(user);
            //System.out.println("El nick es "+nicks.get(0).juego.);
        if(user!=null){
            System.out.println("Succes");
        }
        /*if(!user.getNicks().isEmpty()){
          System.out.println("El nick es "+user.getEdad());
        }*/
            
        
        
    }
    
    
}
