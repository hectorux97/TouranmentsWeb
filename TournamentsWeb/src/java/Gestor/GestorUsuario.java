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
        Usuario checkUser=udao.GetUsuario(user.getAlias());
        
        
            if(user.getAlias().equals(checkUser.getAlias()) && user.getPassword().equals(checkUser.getPassword())){
                
                return checkUser;
            }
        
        /*if(user.getNombre().equals("asdadf") && user.getPassword().equals("d")){
            return user;
        }/*/
        return null;
    }
    
    public Usuario Register(Usuario user){        
        UsuarioDAO udao=new UsuarioDAO();
        Usuario checkUser=udao.GetUsuario(user.getAlias());
        if(checkUser==null){
            if(udao.GuardarNuevoUsuario(user)){
                return user;
            }
        }
        return null;
    }
    
    public Usuario Modificar(Usuario user){
        UsuarioDAO udao=new UsuarioDAO();
        //Usuario checkUser=udao.GetUsuario(user.getId());
       // System.out.println(checkUser.getAlias());
        if(udao.CheckUserExist(user.getAlias())){
            if(udao.ModificarUsuario(user)){
                return user;
            }
            return null;
        }
        return null;
        
    }
}
