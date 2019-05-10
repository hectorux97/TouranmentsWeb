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
public class NickUsuario {
    
    public Juego juego;
    public String nombre;

    public NickUsuario() {
    }

    public NickUsuario(Juego juego, String nombre) {
        this.juego = juego;
        this.nombre = nombre;
    }
    
    
}
