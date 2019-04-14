/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.*;

/**
 *
 * @author hector
 */
public class DAOExtend {
    
    protected Connection conexion;
    
    protected Connection getConection() {
        
        Connection con;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:8080/TournamentsManager","root","");
             return con;
        }catch(SQLException e){}catch(ClassNotFoundException e){}    
        return null;
    }
}
