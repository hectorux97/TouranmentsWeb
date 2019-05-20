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
    
    public boolean CrearPartido(Partido p){
         try {
            Statement st = conexion.createStatement();
           
            st.executeUpdate("INSERT INTO partido(idTorneo,idUsuario1,idUsuario2, ronda) VALUES ("
                    +p.getIdTorneo()+","
                    +p.getIdUsuario1()+","
                    +p.getIdUsuario2()+","
                    +p.getRonda()+")");
            
           return true;
        } catch (SQLException e) {}
        return false;        
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
     public ArrayList<Partido> GetPartidosEstado(){
        ArrayList<Partido> partidos= new ArrayList<>();
         try {
            Statement st = conexion.createStatement();
           
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE estado=2 ");
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
     
    public Partido GetPartido(int idUsuario1, int idUsuario2){
        try {
            Statement st = conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE idUsuario1="+idUsuario1+" AND idUsuario2="+idUsuario2);
          
          if(rs.next()){
              TorneoDAO tDAO= new TorneoDAO();
              Torneo t= tDAO.GetTorneo(rs.getInt("idTorneo"));
              UsuarioDAO uDAO= new UsuarioDAO();
              Usuario u1= uDAO.GetUsuario(idUsuario1);
              Usuario u2= uDAO.GetUsuario(idUsuario2);
              Partido p= new Partido(rs.getInt("idPartido"),t, rs.getInt("idTorneo"), u1, idUsuario1, u2, idUsuario2,
                                        rs.getInt("usuario1Points"),rs.getInt("usuario2Points"), rs.getInt("ronda"), rs.getDate("fechaJuego"), rs.getString("img"), rs.getInt("estado"));
               return p;
          }else{
               return new Partido();
          }
        }catch (SQLException e) {}
        return null;       
    }
    
    public boolean ValidarPartido(int id){
        try {
            Statement st = conexion.createStatement();
            st.executeUpdate("UPDATE partido SET estado=3 WHERE idPartido="+id);
            st = conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE idPartido="+id);
            if(rs.next()){
                
                int puntosUsuario1= rs.getInt("usuario1Points");
                int puntosUsuario2= rs.getInt("usuario2Points");
                int usuarioGanador;
                st = conexion.createStatement();
                usuarioGanador=rs.getInt("idUsuario"+((puntosUsuario1>puntosUsuario2)?1:2));               
                st.executeUpdate("UPDATE torneoforusuario SET ronda="+(rs.getInt("ronda")+1)+" WHERE idUsuario="+usuarioGanador);
                return true;
            }           
        }catch (SQLException e) {}
        return false;    
    }
    
    public int GetRondaPartidos(int idTorneo){
        
         try {
            Statement st = conexion.createStatement();           
            ResultSet rs= st.executeQuery("SELECT * FROM partido WHERE idTorneo="+idTorneo+" ORDER BY ronda DESC");
            if(rs.next()){
                return rs.getInt("ronda");
            }           
        }catch (SQLException e) {}
        return 0;   
    }
}
