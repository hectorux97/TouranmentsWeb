/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import DAO.*;
import beans.*;

/**
 *
 * @author hector
 */
public class GestorPartidos {
    
    public boolean ValidarPartido(int p){
        
        PartidoDAO pdao= new PartidoDAO();
        
       return pdao.ValidarPartido(p);
    }
    
}
