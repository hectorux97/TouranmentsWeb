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
    private boolean dentro;

    public UsuarioForTorneo() {
    }

    public UsuarioForTorneo(Usuario user, int posicion, boolean dentro) {
        this.user = user;
        this.posicion = posicion;
        this.dentro=dentro;
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

    public boolean isDentro() {
        return dentro;
    }

    public void setDentro(boolean dentro) {
        this.dentro = dentro;
    }
    
    
}
