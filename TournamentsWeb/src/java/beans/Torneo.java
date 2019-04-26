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

    public Torneo() {
    }

    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Usuario creador) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.creador = creador;
    }

    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Usuario creador, ArrayList<Usuario> participantes) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.creador = creador;
        this.participantes = participantes;
    }
    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        
    }

    public Torneo(String nombre, Usuario creador) {
        this.nombre = nombre;
        this.creador=creador;
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
