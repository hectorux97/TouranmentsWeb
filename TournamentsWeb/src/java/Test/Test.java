/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DAO.GlobalInfoDAO;
import Gestor.GestorUsuario;
import beans.Juego;
import beans.Usuario;
import java.sql.Date;

/**
 *
 * @author hector
 */
public class Test {
    
    public static void main(String[] args){
        
        
            Date date= new Date(2,2,2);
            Usuario usuario = new Usuario(1, "asdadf","", "X",(byte)0, "asdad@gmail.com", date);
            usuario.setApellidos("XXD");
            usuario.setEdad(date);
            GestorUsuario ug= new GestorUsuario();
            if(ug.Modificar(usuario)!=null){
                System.out.println("Succes");
            }
            
        
        
    }
    
    
}
