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
    private String reglas;
    private String premio;
    private Date fechaPublicacion;
    private Date fechaInicio;
    private ArrayList<UsuarioForTorneo> participantes;
    private Juego juego;
    public Torneo() {
    }

    public Torneo(int id, String nombre, String reglas, String premio, Date fechaPublicacion, Date fechaInicio, ArrayList<UsuarioForTorneo> participantes, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.reglas = reglas;
        this.premio = premio;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.participantes = participantes;
        this.juego = juego;
    }

    public Torneo(int id, String nombre, String reglas, String premio, Date fechaPublicacion, Date fechaInicio, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.reglas = reglas;
        this.premio = premio;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.juego = juego;
    }
    
    
    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.juego=juego;
    }

    public Torneo(int id, String nombre, Date fechaPublicacion, Date fechaInicio,ArrayList<UsuarioForTorneo> participantes, Juego juego) {
        this.id = id;
        this.nombre = nombre;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaInicio = fechaInicio;
        this.participantes = participantes;
        this.juego= juego;
    }    

    public Torneo(String nombre,Juego juego) {
        this.nombre = nombre;
        this.juego= juego;
    }
     public Torneo(Juego juego) {
        
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

    public Juego getJuego() {
        return juego;
    }
    
    public String getJuegoName(){
        return juego.getNombre();
    }
    
    public void setJuego(Juego juego) {
        this.juego = juego;
    }

    public String getReglas() {
        return reglas;
    }

    public void setReglas(String reglas) {
        this.reglas = reglas;
    }

    public String getPremio() {
        return premio;
    }

    public void setPremio(String premio) {
        this.premio = premio;
    }

    
    
    public ArrayList<UsuarioForTorneo> getParticipantes() {
        return participantes;
    }

    public void setParticipantes(ArrayList<UsuarioForTorneo> participantes) {
        this.participantes = participantes;
    }
    
    public void addParticipantes(ArrayList<UsuarioForTorneo> participantes) {
        for(UsuarioForTorneo u:participantes){
            this.participantes.add(u);
        }    
    }
     public void addParticipantes(UsuarioForTorneo participantes) {        
        this.participantes.add(participantes);        
    }
}
