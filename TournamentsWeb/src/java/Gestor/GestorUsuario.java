/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import beans.Usuario;
import DAO.UsuarioDAO;

/**
 *
 * @author hector
 */
public class GestorUsuario {
    
    public Usuario Login(Usuario user){
        UsuarioDAO udao=new UsuarioDAO();
        Usuario checkUser=udao.GetUsuario(user.getNombre());
        if(user.getNombre().equals(checkUser.getNombre()) && user.getPassword().equals(checkUser.getPassword()) ){
            return user;
        }
        return null;
    }
    
    public Usuario Register(Usuario user){
        
        return user;
    }
    
    
}
