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

    public boolean CheckUserExist(String userName){
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
            return new Usuario(rs.getInt("idUsuario"),rs.getString("nombreUsuario"),rs.getString("imagen"),rs.getString("password"),
                    rs.getString("email"),rs.getDate("fechaCreacionUsuario"),rs.getString("nombreReal"),
                    rs.getString("apellidosReal"),rs.getString("pais"),rs.getDate("edad"),rs.getInt("telefono"));
            }else{
                return null;
            }
        }catch(SQLException e){}

        return null;
    }
    
     public Usuario GetUsuario(int userID){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM usuarios WHERE ( idUsuario LIKE '"+userID+"')");
            if(rs.next()){
            return new Usuario(rs.getInt("idUsuario"),rs.getString("nombreUsuario"),rs.getString("imagen"),rs.getString("password"),
                    rs.getString("email"),rs.getDate("fechaCreacionUsuario"),rs.getString("nombreReal"),
                    rs.getString("apellidosReal"),rs.getString("pais"),rs.getDate("edad"),rs.getInt("telefono"));
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
     
     public boolean EliminarUsuario(int usuarioId){
          try{            
            Statement st=conexion.createStatement();
            st.executeQuery("DELETE FROM usuariointorneo WHERE ( idUsuario = "+usuarioId+")");
            ResultSet rs=st.executeQuery("SELECT * FROM torneoforusuario WHERE ( idUsuario = "+usuarioId+")");
            st.executeQuery("DELETE FROM torneoforusuario WHERE ( idUsuario = "+usuarioId+")");
            while(rs.next()){
                st.executeQuery("DELETE FROM torneos WHERE ( idTorneos = "+rs.getInt("idTorneo")+")");
            }
            rs=st.executeQuery("SELECT * FROM usuariotonoticia WHERE ( idUsuario = "+usuarioId+")");
            st.executeQuery("DELETE FROM usuariotonoticia WHERE ( idUsuario = "+usuarioId+")");
            while(rs.next()){
                st.executeQuery("DELETE FROM noticias WHERE ( idNoticias = "+rs.getInt("idNoticia")+")");
            }
            return true;
        }catch(SQLException e){}

        return false;
     }
}
