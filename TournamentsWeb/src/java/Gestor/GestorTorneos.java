/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import DAO.TorneoDAO;
import beans.Torneo;

/**
 *
 * @author hector
 */
public class GestorTorneos {
    
    public Torneo NuevoTorneo(Torneo torneo){
        TorneoDAO torneos=new TorneoDAO();
        Torneo t= torneos.GetTorneo(torneo.getNombre());
        
        if(torneo.getId()!=t.getId()){
            if (torneos.GuardarNuevoTorneo(torneo)) {return torneo;}
          
        }
        
       return null;
    }
    
    public boolean EliminarTorneo(Torneo torneo){
        TorneoDAO torneos=new TorneoDAO();
        
        if(torneos.EliminarTorneo(torneo.getId())){
            return true;
        }
        
       return false;
    }
}
