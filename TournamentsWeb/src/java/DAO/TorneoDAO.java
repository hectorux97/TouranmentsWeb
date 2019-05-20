/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Juego;
import beans.Torneo;
import beans.Usuario;
import beans.UsuarioForTorneo;
import java.sql.*;
import java.util.ArrayList;


/**
 *
 * @author hector
 */
public class TorneoDAO extends DAOExtend{
    
     public TorneoDAO(){
        conexion=getConection();
    }
    
    public boolean GuardarNuevoTorneo(Torneo torneo){
        
        try{           
            Statement st = conexion.createStatement();
            st.executeUpdate("INSERT INTO torneos (nombreTorneo,fechaInicio,juego,reglas,premio,maximoJugadores) VALUES ('"
                    + torneo.getNombre()+ "','"
                    + torneo.getFechaInicio()+"','"
                    + torneo.getJuegoName()+"','"
                    + torneo.getReglas()+"','"
                    + torneo.getPremio()+"',"
                    + torneo.getMaximoJugadores()+ ")");
            return true;
        }catch(SQLException e){}

        return false;
    }
    
    public boolean CambiarEstadoTorneo(int id,int estado){
        
        try{           
            Statement st = conexion.createStatement();
            st.executeUpdate("UPDATE torneos SET estado="+estado+" WHERE idTorneos="+id);
            return true;
        }catch(SQLException e){}

        return false;
        
    }
    
    public boolean CheckTorneoExist(String nombreTorneo){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneos WHERE ( nombreTorneo LIKE '"+nombreTorneo+"')");
            return rs.next();

        }catch(SQLException e){}

        return false;
    }
    public Torneo GetTorneo(String nombreTorneo){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneos WHERE ( nombreTorneo LIKE '"+nombreTorneo+"')");
            if(rs.next()){
                ResultSet result= st.executeQuery("SELECT * FROM torneoforusuario WHERE ( idTorneo  =  "+rs.getInt("idTorneos")+")");                
               /* UsuarioDAO creador= new UsuarioDAO();
                Usuario user=creador.GetUsuario(result.getInt("idUsuario"));*/
                 //Date fechaInicio, ArrayList<UsuarioForTorneo> participantes, Juego juego
                return new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getString("reglas"),rs.getString("premio"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"), new Juego(rs.getString("juego")),rs.getByte("estado"),rs.getInt("maximoJugadores"));
            }else{
                return null;
            }
        }catch(SQLException e){}

        return null;
    }
    public ArrayList<Torneo> GetTorneo(){
         try{
             ArrayList<Torneo> listaTorneos= new ArrayList<>();
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneos");
            while(rs.next()){
                
                Torneo t=  new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getString("reglas"),rs.getString("premio"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"), new Juego(rs.getString("juego")),rs.getByte("estado"),rs.getInt("maximoJugadores"));
                t.setParticipantes(GetParticipantes(rs.getInt("idTorneos")));
                listaTorneos.add(t);              
                
            }
                return listaTorneos ;
           
        }catch(SQLException e){}

        return null;
    }
    
     public Torneo GetTorneo(int idTorneo){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneos WHERE  idTorneos  =  "+idTorneo);
            System.out.println("Get Torneo");
            if(rs.next()){
                //System.out.println("SET Torneo");
                /*st=conexion.createStatement();
                ResultSet result= st.executeQuery("SELECT * FROM torneoforusuario WHERE  idTorneo  =  "+idTorneo);
                if(result.next()){                
                    */
                return new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getString("reglas"),rs.getString("premio"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"),new Juego(rs.getString("juego")),(byte)rs.getInt("estado"),rs.getInt("maximoJugadores"));
                //}
            }else{
                return null;
            }
        }catch(SQLException e){}

        return null;
    }
       public ArrayList<Torneo> GetTorneos(String nombreJuego){
            ArrayList<Torneo> listaTorneos= new ArrayList<>();
         try{
           
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneos WHERE juego LIKE '"+nombreJuego+"'");
            while (rs.next()){
                
                Torneo t=  new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getString("reglas"),rs.getString("premio"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"), new Juego(rs.getString("juego")),rs.getByte("estado"),rs.getInt("maximoJugadores"));
                t.setParticipantes(GetParticipantes(rs.getInt("idTorneos")));
                listaTorneos.add(t);              
                
            }
                return listaTorneos ;
           
        }catch(SQLException e){}

        return listaTorneos;
    }
    
    
     public boolean ModificarTorneo(Torneo torneo){

        try{
            Statement st=conexion.createStatement();
            st.executeUpdate("UPDATE torneos SET nombreTorneo ='"+torneo.getNombre()+"'," 
                    +"reglas='"+torneo.getReglas()+"',"
                    +"premio='"+torneo.getPremio()+"',"
                    +"fechaInicio= '"+torneo.getFechaInicio()
                    +"' WHERE idTorneos="+torneo.getId()+";");
            return true;
        }catch(SQLException e){}

        return false;
    }
    
    public boolean AddParticipante(int idTorneo, Usuario participante){
         try{            
            Statement st=conexion.createStatement();
            st.executeUpdate("INSERT INTO torneoforusuario(idUusario,idTorneo) VALUES("+participante.getId()+","
            +idTorneo+")");
            
            return true;
        }catch(SQLException e){}
        return false;
    }
    
    public boolean CheckParticipante(int idTorneo, Usuario participnate){
        try{            
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneoforusuario WHERE idTorneos = "+idTorneo+ "AND idUsuario="+participnate.getId());
            
            return rs.next();
        }catch(SQLException e){}
        return false;
    }
    
    public ArrayList<UsuarioForTorneo> GetParticipantes(int idTorneo){
        ArrayList<UsuarioForTorneo> participantes=new ArrayList<>();
        try{            
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneoforusuario WHERE idTorneo = "+idTorneo+" ORDER BY posicionEmparejamiento ASC");
            while(rs.next()){
                               
                UsuarioDAO creador= new UsuarioDAO();
                Usuario user=creador.GetUsuario(rs.getInt("idUsuario"));
                UsuarioForTorneo idUsuario= new UsuarioForTorneo(user,rs.getInt("posicionEmparejamiento"),rs.getInt("ronda"));
                participantes.add(idUsuario);
            } 
            return participantes;
        }catch(SQLException e){}

        return participantes;
    }
    public ArrayList<UsuarioForTorneo> GetParticipantes(int idTorneo, int ronda){
        ArrayList<UsuarioForTorneo> participantes=new ArrayList<>();
        try{            
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneoforusuario WHERE idTorneo = "+idTorneo+" AND ronda="+ronda+" ORDER BY posicionEmparejamiento ASC");
            while(rs.next()){
                               
                UsuarioDAO creador= new UsuarioDAO();
                Usuario user=creador.GetUsuario(rs.getInt("idUsuario"));
                UsuarioForTorneo idUsuario= new UsuarioForTorneo(user,rs.getInt("posicionEmparejamiento"),rs.getInt("ronda"));
                participantes.add(idUsuario);
            } 
            return participantes;
        }catch(SQLException e){}

        return participantes;
    }
    
    public boolean EliminarParticipante(int idTorneo,int idParticipante){
        try{            
            Statement st=conexion.createStatement();
            st.executeQuery("DELETE FROM usuariofortorneo WHERE idUsuario = "+idParticipante+"AND idTorneo="+idTorneo);
            return true;
        }catch(SQLException e){}

        return false;
    }
    
    public boolean EliminarTorneo(int idTorneo) {
        try {
            Statement st = conexion.createStatement();
            st.executeQuery("DELETE FROM torneoforusuario WHERE ( idTorneo = " + idTorneo + ")");
            st = conexion.createStatement();
            st.executeQuery("DELETE FROM torneos WHERE ( idTorneos = " + idTorneo + ")");
            return true;
        } catch (SQLException e) {
        }

        return false;
    }
    
}
