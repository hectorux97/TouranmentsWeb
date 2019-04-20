/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import beans.Noticia;
import java.sql.*;
import java.util.Date;
import java.util.ArrayList;
/**
 *
 * @author JF
 */
public class NoticiasDAO extends DAOExtend{
    
    public NoticiasDAO(){
       super();
    }    
    
    public boolean subirNoticia(Noticia minoticia){
             
        
        try{
           
            Statement st=conexion.createStatement();
            
            String titular = minoticia.getTitular();
            String resumen = minoticia.getResumen();
            String texto = minoticia.getNoticiaTexto();
            String img = minoticia.getImgNoticia();
            int tipo = minoticia.getTipoNoticia();
            Date fecha = minoticia.getFechaNoticia();
            String autor = minoticia.getAutor();
            int status = minoticia.getStatus();
            
            //He intentado seguir el orden y he aññadido al final fecha y autor 
            st.executeUpdate("INSERT INTO noticias VALUES (null,'"+titular+"','"+resumen+"','"+texto+"','"+img+"','"+tipo+"','"+fecha+"','"+autor+"','"+status+"')");
           
            return true;
            
        }catch(SQLException e){}
        
        return false;
    }
    
    
    
    //ELIMINAR NOTICIA
    
    public boolean eliminarNoticia(int idNot){
         try{
            Statement st=conexion.createStatement();
            st.executeUpdate("SET status = 0 WHERE idNoticias ='"+idNot+"'"); 
            return true;
            
        }catch(SQLException e){}
        
        return false;
    }
    
    //Mostrar Noticias por Tipología
    //Al pulsar en las 'tags' se debe activar
    
    public ArrayList<Noticia> getNotiasTipo(int tipoNoticia){
        
        ArrayList<Noticia> listaTipoNoticias= new ArrayList<>();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM noticias WHERE status=1 AND tipoNoticia ='"+tipoNoticia+"'");
            
            while(rs.next()){
                
                Noticia minoticia= new Noticia();
                minoticia.setIdNot(rs.getInt("idNoticias"));
                minoticia.setTitular(rs.getString("titular"));
                minoticia.setResumen(rs.getString("resumen"));
                minoticia.setImgNoticia(rs.getNString("imagenNoticia"));
                listaTipoNoticias.add(minoticia);
            }
            
            return listaTipoNoticias;
           
        }catch(SQLException e){}
        
        return null;
    }
    
    //Esto para las últimas noticias, hace falta poner la columna de fechaPublicacion
    //He puesto un contador de 4 noticias, 
    //la idea que esto vaya en la página de inicio de noticias debajo de la noticia destacada 
    //con un include de esos 
    public ArrayList<Noticia> getNoticiasUltimas(){
        
        ArrayList<Noticia> listaUltimasNoticias= new ArrayList<>();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM noticias WHERE status=1 ORDER BY fechaPublicacion");
            int cont = 0;
            while(rs.next()&& cont<4){
                
                Noticia minoticia= new Noticia();
                minoticia.setIdNot(rs.getInt("idNoticias"));
                minoticia.setTitular(rs.getString("titular"));
                minoticia.setResumen(rs.getString("resumen"));
                minoticia.setImgNoticia(rs.getNString("imagenNoticia"));
                listaUltimasNoticias.add(minoticia);
                cont++;
            }
            
            return listaUltimasNoticias;
           
        }catch(SQLException e){}
        
        return null;
    }
    
    
    // Para añadirlo a las jsp de notcias simples en el lateral o abajo
    public ArrayList<Noticia> getNoticiasRecomendadas(int tipoNoticia){
        
        ArrayList<Noticia> listaRecomendadasNoticias= new ArrayList<>();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM noticias WHERE status=1 AND tipoNoticia ='"+tipoNoticia+"'");
            int cont = 0;
            while(rs.next()&& cont<2){
                
                Noticia minoticia= new Noticia();
                minoticia.setIdNot(rs.getInt("idNoticias"));
                minoticia.setTitular(rs.getString("titular"));
                minoticia.setResumen(rs.getString("resumen"));
                minoticia.setImgNoticia(rs.getNString("imagenNoticia"));
                listaRecomendadasNoticias.add(minoticia);
                cont++;
            }
            
            return listaRecomendadasNoticias;
           
        }catch(SQLException e){}
        
        return null;
    }
    /*
        private int idNot;
    private String titular;
    private String resumen;
    private String noticiaTexto;
    private String imgNoticia;
    private int tipoNoticia;
    private Date fechaNoticia;
    private String autor;
        */
    
    //La noticia que queramos mostrar a través de su id sacamos toda la informacion
    
    
    public Noticia mostrarNoticia(int idNot){
        
        Noticia minoticia = new Noticia();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM noticias WHERE idNoticias ='"+idNot+"'");
            int cont = 0;
                
                minoticia.setTitular(rs.getString("titular"));
                minoticia.setResumen(rs.getString("resumen"));
                minoticia.setImgNoticia(rs.getString("imagenNoticia"));
                minoticia.setNoticiaTexto(rs.getString("noticiaTexto"));
                minoticia.setFechaNoticia(rs.getDate("fechaNoticia"));
                minoticia.setAutor(rs.getString("titular"));
            
            return minoticia;
           
        }catch(SQLException e){}
        
        return null;
    }
    
    //Para las tiles (cuadraditos)
    //Sería para una noticia destacada de la que sabemos su id
    //Otra solución que se me ocurre es poner otra columna de boolean 'destacada'
    //y seleccionar la más nueva
    public Noticia mostrarNoticiaInicial(int idNot){
        
        Noticia minoticia = new Noticia();
        try{
            Statement st=conexion.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM noticias WHERE idNoticias ='"+idNot+"'");
            int cont = 0;
                minoticia.setIdNot(idNot);
                minoticia.setTitular(rs.getString("titular"));
                minoticia.setResumen(rs.getString("resumen"));
                minoticia.setImgNoticia(rs.getString("imagenNoticia"));
            
            return minoticia;
           
        }catch(SQLException e){}
        
        return null;
    }
    
}

