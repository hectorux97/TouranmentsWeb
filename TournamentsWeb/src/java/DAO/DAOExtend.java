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
    boolean count;
    public DAOExtend(){
        if(!count){
            count=true;
           conexion=getConection();
        }
        /*if(conexion==null){
            System.out.println("XXF");
        }*/
    }
    protected Connection getConection() {
        
        Connection con;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");             
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tournamentsmanager","root","");   
            System.out.println("Conexion_Stablished");
            return con;
        }catch(SQLException | ClassNotFoundException e){}
        System.out.println("Conexion_Failed");
        return null;
    }
}
