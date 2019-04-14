package beans;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hector
 */
public class Usuario {
    
    private int id;
    private String nombre;
    private String password;

   
    private String email;
    private Date fechaCreacion; 
    
    public Usuario(){
   
    }

    public Usuario(int id, String nombre,String password, String email, Date fechaCreacion) {
        this.id = id;
        this.nombre = nombre;
        this.password=password;
        this.email = email;
        this.fechaCreacion = fechaCreacion;
    }

    public Usuario(String nombre, String password, String email) {
        this.nombre = nombre;
        this.password = password;
        this.email = email;
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
 public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
}
