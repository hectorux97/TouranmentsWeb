/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import beans.*;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author hector
 */
public class PartidoDAO extends DAOExtend {
    
    public PartidoDAO() {             
    }
    
    public Partido GetPartido(int id){
        
         try {
            Statement st = conexion.createStatement();
           
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE idPartido="+id);
            if(rs.next()){
                TorneoDAO tDAO= new TorneoDAO();
                Torneo t= tDAO.GetTorneo(rs.getInt("idTorneo"));
                UsuarioDAO uDAO= new UsuarioDAO();
                Usuario u1= uDAO.GetUsuario(rs.getInt("idUsuario1"));
                Usuario u2= uDAO.GetUsuario(rs.getInt("idUsuario2"));
                Partido p= new Partido(rs.getInt("idPartido"),t, rs.getInt("idTorneo"), u1, rs.getInt("idUsuario1"), u2, rs.getInt("idUsuario2"),
                                            rs.getInt("usuario1Points"),rs.getInt("usuario2Points"), rs.getInt("ronda"), rs.getDate("fechaJuego"), rs.getString("img"), rs.getInt("estado"));
                 return p;
            }else{
                 return null;
            }
            
           
        } catch (SQLException e) {}
        return null;        
    }
    
     public ArrayList<Partido> GetPartidos(int id){
        ArrayList<Partido> partidos= new ArrayList<>();
         try {
            Statement st = conexion.createStatement();
           
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE idUsuario1="+id+" OR idUsuario2="+id);
            while(rs.next()){
                TorneoDAO tDAO= new TorneoDAO();
                Torneo t= tDAO.GetTorneo(rs.getInt("idTorneo"));
                UsuarioDAO uDAO= new UsuarioDAO();
                Usuario u1= uDAO.GetUsuario(rs.getInt("idUsuario1"));
                Usuario u2= uDAO.GetUsuario(rs.getInt("idUsuario2"));
                Partido p= new Partido(rs.getInt("idPartido"),t, rs.getInt("idTorneo"), u1, rs.getInt("idUsuario1"), u2, rs.getInt("idUsuario2"),
                                            rs.getInt("usuario1Points"),rs.getInt("usuario2Points"), rs.getInt("ronda"), rs.getDate("fechaJuego"), rs.getString("img"), rs.getInt("estado"));
                partidos.add(p);
            }
            
           
        } catch (SQLException e) {}
        return partidos;        
    }
     public ArrayList<Partido> GetPartidos(){
        ArrayList<Partido> partidos= new ArrayList<>();
         try {
            Statement st = conexion.createStatement();
           
            ResultSet rs= st.executeQuery("SELECT * FROM partido ");
            while(rs.next()){
                TorneoDAO tDAO= new TorneoDAO();
                Torneo t= tDAO.GetTorneo(rs.getInt("idTorneo"));
                UsuarioDAO uDAO= new UsuarioDAO();
                Usuario u1= uDAO.GetUsuario(rs.getInt("idUsuario1"));
                Usuario u2= uDAO.GetUsuario(rs.getInt("idUsuario2"));
                Partido p= new Partido(rs.getInt("idPartido"),t, rs.getInt("idTorneo"), u1, rs.getInt("idUsuario1"), u2, rs.getInt("idUsuario2"),
                                            rs.getInt("usuario1Points"),rs.getInt("usuario2Points"), rs.getInt("ronda"), rs.getDate("fechaJuego"), rs.getString("img"), rs.getInt("estado"));
                partidos.add(p);
            }
            
           
        } catch (SQLException e) {}
        return partidos;        
    }
    
     public boolean ActualizarPartido(Partido p){
         try {
            Statement st = conexion.createStatement();
           
            st.executeUpdate("UPDATE partido SET usuario1Points="+p.getPuntosUsuario1()
                    +",usuario2Points="+p.getPuntosUsuario2()
                    +",img='"+p.getImgUrl()
                    +"',estado="+2
                    +" WHERE idPartido="+p.getId());
            System.out.println("DONE");
            return true;
           
        } catch (SQLException e) {}
        return false;
     }
}
