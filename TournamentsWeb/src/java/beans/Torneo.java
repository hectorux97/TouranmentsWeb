/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;


import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author hector
 */
public class Torneo {
    
    
    private int id;
    private String nombre;
    private Date fechaPublicacion;
    private Date fechaInicio;
    private Usuario creador;
    private ArrayList<Usuario> participantes;
    private Juego juego;
    public Torneo() {
    }

    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Usuario creador, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.creador = creador;
        this.juego=juego;
    }

    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Usuario creador, ArrayList<Usuario> participantes, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.creador = creador;
        this.participantes = participantes;
        this.juego= juego;
    }
    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.juego= juego;
        
    }

    public Torneo(String nombre, Usuario creador, Juego juego) {
        this.nombre = nombre;
        this.creador=creador;
        this.juego= juego;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(Date fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Usuario getCreador() {
        return creador;
    }

    public void setCreador(Usuario creador) {
        this.creador = creador;
    }

    public Juego getJuego() {
        return juego;
    }
    
    public String getJuegoName(){
        return juego.getNombre();
    }
    
    public void setJuego(Juego juego) {
        this.juego = juego;
    }

    
    
    public ArrayList<Usuario> getParticipantes() {
        return participantes;
    }

    public void setParticipantes(ArrayList<Usuario> participantes) {
        this.participantes = participantes;
    }
    
    public void addParticipantes(ArrayList<Usuario> participantes) {
        for(Usuario u:participantes){
            this.participantes.add(u);
        }    
    }
     public void addParticipantes(Usuario participantes) {        
        this.participantes.add(participantes);        
    }
}
