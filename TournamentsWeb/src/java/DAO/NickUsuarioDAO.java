/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Juego;
import beans.NickUsuario;
import beans.Usuario;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author hector
 */
public class NickUsuarioDAO  extends DAOExtend{
    
    ArrayList<Juego> juegos;
    public NickUsuarioDAO() {
        conexion = getConection();
        GlobalInfoDAO info= new GlobalInfoDAO();
        juegos= info.GetJuegos();
    }
    
     public boolean GuardarNicks(ArrayList<NickUsuario> nicks, Usuario user) {

        try {
            Statement st = conexion.createStatement();
            for(NickUsuario nick:nicks){
                st.executeUpdate("REPLACE INTO nickjuegos(nombreJuego,idUsuario,nick) VALUES('"+nick.juego.getNombre()+"',"
                    + user.getId()+",'" 
                    + nick.nombre+"');");
            }
            return true;
        } catch (SQLException e) {
        }

        return false;
    }
     public boolean GuardarNicks(ArrayList<NickUsuario> nicks, int user) {

        try {
            Statement st = conexion.createStatement();
            for(NickUsuario nick:nicks){            
                st.executeUpdate("REPLACE INTO nickjuegos(nombreJuego,idUsuario,nick) VALUES('"+nick.juego.getNombre()+"',"
                        + user+",'" 
                        + nick.nombre+"')");
               // System.out.println("Para el juego "+nick.juego.getNombre()+" el usuario " + user+" tiene el nick: "+nick.nombre);
            }
            
            return true;
        } catch (SQLException e) {
        }

        return false;
    }
     
     public ArrayList<NickUsuario> getNicks(Usuario user){
         ArrayList<NickUsuario> nicks= new ArrayList<>();
         try {
            Statement st = conexion.createStatement();
            ResultSet rs=st.executeQuery("SELECT * FROM nickjuegos WHERE idUsuario="+user.getId());
            while(rs.next()){
                nicks.add(new NickUsuario(new Juego(rs.getString("nombreJuego")),rs.getString("nick")));
            }
            return nicks;
        } catch (SQLException e) {
        }
         
         
         return null;
     }
}
