
package beans;
import DAO.GlobalInfoDAO;
import java.time.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Date;

public class Usuario {
    //LOGIN INFO
    private int id;
    private String alias;
    private String password;    
    private String imageURL;
    private byte privilegios;
    
    private String email;
    private Date fechaCreacion;
    
    //User INFO
    private String nombre;
    private String apellidos;
    private String pais;
    private Date edad;
    private int telefono;
    private ArrayList<NickUsuario> nicks;
    
   // private ArrayList <Torneo>
    
    
    //CONSTRUCTOR
    
    public Usuario(Usuario user){
        this.id=user.id;
        this.alias = user.alias;
        this.password = user.password;
        this.imageURL= user.imageURL;
        this.privilegios=user.privilegios;
        this.email = user.email;
        this.fechaCreacion = user.fechaCreacion;
        this.nombre = user.nombre;
        this.apellidos = user.apellidos;
        this.pais = user.pais;
        this.edad = user.edad;
        this.telefono = user.telefono;
        this.nicks=user.nicks;
   
    }

    public Usuario(int id, String alias,String image, String password, String email,byte privilegios, Date fechaCreacion, String nombre, String apellidos, String pais, Date edad, int telefono) {
        this.id = id;
        this.alias = alias;
        this.password = password;
        this.imageURL= image;
        this.privilegios=privilegios;
        this.email = email;
        this.fechaCreacion = fechaCreacion;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.pais = pais;
        this.edad = edad;
        this.telefono = telefono;
        this.nicks= new ArrayList<>();
    }

    public Usuario() {
        this.nicks= new ArrayList<>();
        this.id=-1;
        this.alias="NO Participant";
    }

    public Usuario(int id, String alias,String password, String image,byte privilegios, String email, Date fechaCreacion) {
        this.id = id;
        this.alias = alias;
        this.password=password;
        this.imageURL=image;
        this.privilegios=privilegios;
        this.email = email;
        this.fechaCreacion = fechaCreacion;
        this.nicks= new ArrayList<>();
    }

    public Usuario(String alias, String password, String email) {
        this.alias = alias;
        this.password = password;
        this.email = email;
        this.nicks= new ArrayList<>();
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

    public byte getPrivilegios() {
        return privilegios;
    }

    public void setPrivilegios(byte privilegios) {
        this.privilegios = privilegios;
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

    public Date getEdad() {
        return edad;
    }
   

    public void setEdad(Date edad) {
        this.edad = edad;
    }    
  
    public int getEdadNum(){
        ZoneId defaultZoneId = ZoneId.systemDefault();
        LocalDate dob= this.edad.toInstant().atZone(defaultZoneId).toLocalDate();
        LocalDate curDate = LocalDate.now();
        return Period.between(dob, curDate).getYears();
    }
    
    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public ArrayList<NickUsuario> getNicks() {
        return nicks;
    }

    public void setNicks(ArrayList<NickUsuario> nicks) {
        this.nicks = nicks;
    }
    public void setNicks(String[] nicksAlias){
        GlobalInfoDAO info= new GlobalInfoDAO();
        ArrayList<Juego> juegos= info.GetJuegos();
        this.nicks= new ArrayList<>();
        for(int i=0;i<juegos.size();i++){
            if(nicksAlias.length-1>=i){
            this.nicks.add(new NickUsuario(juegos.get(i),nicksAlias[i]));
            }
        }
        
    }
    public String getNick(String nombreJuego){
        
        if(nicks!=null && !nicks.isEmpty()){
            for (NickUsuario n : nicks) {
                if (n.juego.getNombre().equals(nombreJuego)) {
                    return n.nombre;
                }
            }
        }
        return "";
    }
    
}
