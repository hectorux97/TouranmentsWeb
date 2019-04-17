
package beans;
import java.util.Date;

public class Usuario {
    //LOGIN INFO
    private int id;
    private String alias;
    private String password;    
    private String imageURL;

    
    private String email;
    private Date fechaCreacion;
    
    //User INFO
    private String nombre;
    private String apellidos;
    private String pais;
    private int edad;
    private int telefono;
    
   // private ArrayList <Torneo>
    
    
    //CONSTRUCTOR
    
    public Usuario(Usuario user){
        this.id=user.id;
        this.alias = user.alias;
        this.password = user.password;
        this.imageURL= user.imageURL;
        this.email = user.email;
        this.fechaCreacion = user.fechaCreacion;
        this.nombre = user.nombre;
        this.apellidos = user.apellidos;
        this.pais = user.pais;
        this.edad = user.edad;
        this.telefono = user.telefono;
   
    }

    public Usuario(int id, String alias,String image, String password, String email, Date fechaCreacion, String nombre, String apellidos, String pais, int edad, int telefono) {
        this.id = id;
        this.alias = alias;
        this.password = password;
        this.imageURL= image;
        this.email = email;
        this.fechaCreacion = fechaCreacion;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.pais = pais;
        this.edad = edad;
        this.telefono = telefono;
    }

    public Usuario() {
    }

    public Usuario(int id, String nombre,String password, String image, String email, Date fechaCreacion) {
        this.id = id;
        this.alias = nombre;
        this.password=password;
        this.imageURL=image;
        this.email = email;
        this.fechaCreacion = fechaCreacion;
    }

    public Usuario(String nombre, String password, String email) {
        this.alias = nombre;
        this.password = password;
        this.email = email;
    }
    
    //GETTER & SETTER

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
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
    
    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
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

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    
}
