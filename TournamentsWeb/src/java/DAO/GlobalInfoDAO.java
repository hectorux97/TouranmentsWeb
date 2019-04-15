/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Juego;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author hector
 */
public class GlobalInfoDAO extends DAOExtend{
    

    
    public GlobalInfoDAO(){
       super();
    }    
    
    public boolean GuardarNuevoJuego(String juego){
               
        try{
           
            Statement st=conexion.createStatement();
            st.executeUpdate("INSERT INTO Juegos VALUES ('"+juego+"')");
            return true;
        }catch(SQLException e){}
        
        return false;
    }
    
    public boolean CheckJuegoExist(String juego){
         try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM Juegos WHERE ( nombreJuego LIKE '"+juego+"')");
            return rs.next();
           
        }catch(SQLException e){}
        
        return false;
    }
    
    public ArrayList<Juego> GetJuegos(){
        
        ArrayList<Juego> listaJuegos= new ArrayList<>();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM Juegos ");
            
            while(rs.next()){
                Juego j= new Juego(rs.getString("nombreJuego"));
                listaJuegos.add(j);
            }
            
            return listaJuegos;
           
        }catch(SQLException e){}
        
        return listaJuegos;
    }
}
