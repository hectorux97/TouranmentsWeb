/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Usuario;
import java.sql.*;

/**
 *
 * @author hector
 */
public class UsuarioDAO extends DAOExtend{
    

    
    public UsuarioDAO(){
        conexion=getConection();
    }
    
    public boolean GuardarNuevoUsuario(Usuario user){

        try{
            Statement st=conexion.createStatement();
            st.executeUpdate("INSERT INTO usuarios(nombreUsuario,password,email) VALUES ('"
                    +user.getNombre()+"','"
                    +user.getPassword()+"','"
                    +user.getEmail()+"')");
            return true;
        }catch(SQLException e){}

        return false;
    }

    public boolean CheckJuegoExist(String userName){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM usuarios WHERE ( nombreUsuario LIKE '"+userName+"')");
            return rs.next();

        }catch(SQLException e){}

        return false;
    }
    public Usuario GetUsuario(String userName){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM usuarios WHERE ( nombreUsuario LIKE '"+userName+"')");
            if(rs.next()){
            return new Usuario(rs.getInt("idUsuario"),rs.getString("nombreUsuario"),rs.getString("password"),
                    rs.getString("email"),rs.getDate("fechaCreacionUsuario"));
            }else{
                return null;
            }
        }catch(SQLException e){}

        return null;
    }
    
     public boolean ModificarUsuario(Usuario user){

        try{
            Statement st=conexion.createStatement();
            st.executeUpdate("UPDATE usuarios SET nombreUsuario ='"+user.getNombre()+"'," 
                    +"password= '"+user.getPassword()+"','"
                    +"email= '"+user.getEmail()+"','"
                    +"imagen= '"+user.getImageURL()+"','"
                    +"' WHERE idUsuario="+ user.getId()+";");
            return true;
        }catch(SQLException e){}

        return false;
    }
}
