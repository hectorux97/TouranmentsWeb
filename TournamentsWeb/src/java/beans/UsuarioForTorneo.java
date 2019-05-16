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
    private int ronda;

    public UsuarioForTorneo() {
        user= new Usuario();
    }

    public UsuarioForTorneo(Usuario user, int posicion, int dentro) {
        this.user = user;
        this.posicion = posicion;
        this.ronda=dentro;
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

    public int getRonda() {
        return ronda;
    }

    public void setRonda(int dentro) {
        this.ronda = dentro;
    }
    
    
}
