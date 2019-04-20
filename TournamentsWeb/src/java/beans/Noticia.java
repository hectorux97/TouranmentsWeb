/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;
import java.util.Date;
/**
 *
 * @author JF
 */
public class Noticia {
    private int idNot;
    private String titular;
    private String resumen;
    private String noticiaTexto;
    private String imgNoticia;
    private int tipoNoticia;
    private Date fechaNoticia;
    private String autor;
    private int status;
    
    //he añadido 2 variables más y estoy pensando en poner otra que sea boolean destacada
    //hay que cambiar la tabla
    //he anadido también status... si fuera 1 se vería la noticia y si fuera 0 no se verá
    
    
    //contructor vacio para el Bean
    public Noticia () {};
    
    // contructor para las tiles(cuadraditos) auque creo que se pueden quedar estáticas
    public Noticia (String titular,String imgNoticia, int tipoNoticia) {
    this.titular=titular;
    this.imgNoticia=imgNoticia;
    this.tipoNoticia=tipoNoticia;
    }
    // constructot para los tipos de noticias
    public Noticia (String titular,String resumen, String imgNoticia) {
    this.titular=titular;
    this.resumen=resumen;
    this.imgNoticia=imgNoticia;
    }
    
    // constructor para las noticias en jsp independiente
    public Noticia (String titular,String resumen,String noticiaTexto,String imgNoticia, int tipoNoticia,Date fechaNoticia, String autor, int status) {
    this.titular=titular;
    this.resumen=resumen;
    this.noticiaTexto=noticiaTexto;
    this.imgNoticia=imgNoticia;
    this.tipoNoticia=tipoNoticia;
    this.fechaNoticia=fechaNoticia;
    this.autor=autor;
    this.status=status;
    }
    //Creo que en ambos constructores no es necesario añadir el id de la noticia, 
    //aun así lo dejo entrecomillado por si es de utilidad
    
    /*
    public Noticia (int idNot,String titular,String resumen,String noticiaTexto,String imgNoticia, int tipoNoticia,Date fechaNoticia, String autor) {
    this.titular=titular;
    this.resumen=resumen;
    this.noticiaTexto=noticiaTexto;
    this.imgNoticia=imgNoticia;
    this.tipoNoticia=tipoNoticia;
    this.idNot=idNot;
    this.fechaNoticia=fechaNoticia;
    this.autor=autor;
    }
    */
    
    
    //GETTERS y SETTERS

    public int getIdNot() {
        return idNot;
    }

    public void setIdNot(int idNot) {
        this.idNot = idNot;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public String getNoticiaTexto() {
        return noticiaTexto;
    }

    public void setNoticiaTexto(String noticiaTexto) {
        this.noticiaTexto = noticiaTexto;
    }

    public String getImgNoticia() {
        return imgNoticia;
    }

    public void setImgNoticia(String imgNoticia) {
        this.imgNoticia = imgNoticia;
    }

    public int getTipoNoticia() {
        return tipoNoticia;
    }

    public void setTipoNoticia(int tipoNoticia) {
        this.tipoNoticia = tipoNoticia;
    }

    public Date getFechaNoticia() {
        return fechaNoticia;
    }

    public void setFechaNoticia(Date fechaNoticia) {
        this.fechaNoticia = fechaNoticia;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
