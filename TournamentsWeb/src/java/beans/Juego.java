/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author hector
 */
public class Juego {
    
    private String nombre;

    public Juego() {
    }

    public Juego(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getImagenUrlLogo(){
        return "/img/juegos/"+nombre+"/"+nombre+"Logo.png";
    }
    public String getImagenUrlNombre(){
        return "/img/juegos/"+nombre+"/"+nombre+"Nombre.jpg";
    }
    public String getImagenUrlCompeticion(){
        return "/img/juegos/"+nombre+"/"+nombre+"Competicion.png";
    }
}
