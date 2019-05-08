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
public class UsuarioForTorneo {
    
    private Usuario user;
    private int posicion;

    public UsuarioForTorneo() {
    }

    public UsuarioForTorneo(Usuario user, int posicion) {
        this.user = user;
        this.posicion = posicion;
    }

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int posicion) {
        this.posicion = posicion;
    }
    
    
}
