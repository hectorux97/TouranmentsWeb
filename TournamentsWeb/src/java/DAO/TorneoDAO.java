/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Juego;
import beans.Torneo;
import beans.Usuario;
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
            PreparedStatement ps=conexion.prepareStatement("INSERT INTO torneos(nombreTorneo,fechaPublicacion,fechaInicio,juego) VALUES (?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,torneo.getNombre());
            ps.setDate(2,(java.sql.Date)torneo.getFechaPublicacion());	
            ps.setDate(3,(java.sql.Date)torneo.getFechaInicio());
            ps.setString(4, torneo.getJuegoName());
            ps.executeUpdate();
            ResultSet rs=ps.getGeneratedKeys();
            Statement st= conexion.createStatement();
            //Set the creator of the tournament
            st.executeUpdate("INSERT INTO torneoforusuario VALUES ("
                    +rs.getInt("idTorneos")+","
                    +torneo.getCreador().getId()+")");
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
                UsuarioDAO creador= new UsuarioDAO();
                Usuario user=creador.GetUsuario(result.getInt("idUsuario"));
            return new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"),user, new Juego(rs.getString("juego")));
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
            if(rs.next()){
                Torneo t= new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"), new Juego(rs.getString("juego")));
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
                System.out.println("SET Torneo");
                st=conexion.createStatement();
                ResultSet result= st.executeQuery("SELECT * FROM torneoforusuario WHERE  idTorneo  =  "+idTorneo);
                if(result.next()){                
                    UsuarioDAO creador= new UsuarioDAO();
                    Usuario user= creador.GetUsuario(result.getInt("idUsuario"));
                    return new Torneo(rs.getInt("idTorneos"),rs.getString("nombreTorneo"),rs.getDate("fechaPublcicacion"),rs.getDate("fechaInicio"),new Usuario(), GetParticipantes(idTorneo), new Juego(rs.getString("juego")));
                }
            }else{
                return null;
            }
        }catch(SQLException e){}

        return null;
    }
    
     public boolean ModificarTorneo(Torneo torneo){

        try{
            Statement st=conexion.createStatement();
            st.executeUpdate("UPDATE torneos SET nombreTorneo ='"+torneo.getNombre()+"'," 
                    +"fechaInicio= '"+torneo.getFechaInicio()+"' WHERE idTorneos="+torneo.getId()+";");
            return true;
        }catch(SQLException e){}

        return false;
    }
     
    public ArrayList<Usuario> GetParticipantes(int idTorneo){
        ArrayList<Usuario> participantes=new ArrayList<>();
        try{            
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM torneoforusuario WHERE ( idTorneos  =  "+idTorneo+")");
            while(rs.next()){
                               
                UsuarioDAO creador= new UsuarioDAO();
                Usuario user=creador.GetUsuario(rs.getInt("idUsuario"));
                participantes.add(user);
            } 
            return participantes;
        }catch(SQLException e){}

        return participantes;
    }
    
    public boolean EliminarParticipante(int idParticipante){
        try{            
            Statement st=conexion.createStatement();
            st.executeQuery("DELETE FROM usuariointorneo WHERE ( idUsuario = "+idParticipante+")");
           
            return true;
        }catch(SQLException e){}

        return false;
    }
    
    public boolean EliminarTorneo(int idTorneo){
          try{            
            Statement st=conexion.createStatement();
            st.executeQuery("DELETE FROM usuariointorneo WHERE ( idTorneo = "+idTorneo+")");
            st.executeQuery("DELETE FROM torneos WHERE ( idTorneos = "+idTorneo+")");
            st.executeQuery("DELETE FROM torneoforusuario WHERE ( idTorneo = "+idTorneo+")");
           
            return true;
        }catch(SQLException e){}

        return false;
    }
    
}
