/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestor;

import DAO.PartidoDAO;
import DAO.TorneoDAO;
import beans.Partido;
import beans.Torneo;
import beans.Usuario;
import beans.UsuarioForTorneo;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author hector
 */
public class GestorTorneos {
    
    public Torneo NuevoTorneo(Torneo torneo){
        TorneoDAO torneos=new TorneoDAO();
        Torneo t= torneos.GetTorneo(torneo.getNombre());
        
        if(t==null){
            if (torneos.GuardarNuevoTorneo(torneo)) {
                return torneo;
            }
          
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
    
    public boolean IniciarTorneo(Torneo torneo){
        
        TorneoDAO tdao= new TorneoDAO();
        PartidoDAO pdao= new PartidoDAO();
        int ronda=0;
        int numPartidos= Math.round(torneo.getMaximoJugadores()/2);       
        ArrayList<UsuarioForTorneo> participantes= tdao.GetParticipantes(torneo.getId());
        tdao.CambiarEstadoTorneo(torneo.getId(),1);
        int numParticpantes=participantes.size();
        int i=0;
        for(int e=0; i<numPartidos;i++,e+=2){
            int u1=-1;
            int u2=-1;
            if(numParticpantes>e){
                u1=participantes.get(e).getUser().getId();
            }
            if(numParticpantes>e+1){
                u2=participantes.get(e+1).getUser().getId();
            }
            Partido p= new Partido(torneo.getId(),u1,u2,ronda);
            if(!pdao.CrearPartido(p)){
                break;
            } 
        }
        if(i==numPartidos){
            return true;
        }
        return false;
    }
    
    public boolean AvanzarRonda(Torneo torneo){
        
        TorneoDAO tdao= new TorneoDAO();
        PartidoDAO pdao= new PartidoDAO();
        int ronda=pdao.GetRondaPartidos(torneo.getId())+1;
        Long val= Math.round(torneo.getMaximoJugadores()/(Math.pow(2, ronda+1)));
        int numPartidos=val.intValue();
        ArrayList<UsuarioForTorneo> participantes= tdao.GetParticipantes(torneo.getId(),ronda);
        int numParticpantes=participantes.size();
       
        int i=0;
        for(int e=0; i<numPartidos;i++,e+=2){
               int u1=-1;
               int u2=-1;
               if(numParticpantes>e){
                   u1=participantes.get(e).getUser().getId();
               }
               if(numParticpantes>e+1){
                   u2=participantes.get(e+1).getUser().getId();
               }
                Partido p= new Partido(torneo.getId(),u1,u2,ronda+1);
                if(!pdao.CrearPartido(p)){
                    break;
                }    

        }
        if(i==numPartidos){
            return true;
        }
        return false;
    }
}
