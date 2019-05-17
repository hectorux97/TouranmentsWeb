/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import DAO.GlobalInfoDAO;
import beans.Juego;

/**
 *
 * @author Angel
 */
public class GestorJuegos {
    public Juego NuevoJuego(String nuevojuego){
        GlobalInfoDAO annadirjuego=new GlobalInfoDAO();
        boolean j= annadirjuego.CheckJuegoExist(nuevojuego);
        
        
            if (j) {
                if(annadirjuego.GuardarNuevoJuego(nuevojuego)){
                return new Juego(nuevojuego);
                }
            }
          
        
        
       return null;
    }
    
}
