/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import DAO.NoticiasDAO;
import beans.Noticia;

/**
 *
 * @author JF
 */
public class TestNoticias {
    public static void main(String[] args){
        Noticia not = new Noticia();
        
        not.setTitular("Brawl Stars lo está petando");
        not.setResumen("Brawl Stars ha conseguido recaudar 150 millones en Marzo y parece que llegará a los 200 millones en Abril. Parece que esta tendencia se mantedrá y crecerá cuando supercell organice campeonatos ");
        not.setNoticiaTexto("<p>Es innegable que Supercell ya tiene una buena experiencia organizando campeonatos  con sus juegos Clash Royale y Clash of Clans, sólo es cuestion de tiempo que estos lleguen a Brawl Stars</p>\n" +
"\n" +
"        <p> Seguramente estén esperando a baje el tirón del juego para revitalizarlo con los campeonatos, de hecho, tras la ultima actualización,  han añadido la función \"Brawl TV\" una herramienta que será muy util para poder seguir estas futuras partidas</p>\n" +
"\n" +
"        <p>Además todavía queda la incognita de cómo serán estos campeonatos, ya que no sabemos que tipo de pruebas formarán parte de la competición. Parece seguro que habrá modo \"Atrapagemas\" pero no sabemos si podremos ver a los mejores gamers en el modo superviviencia o caaz estelar. Seguiremos informando! </p>");
        not.setImgNoticia("brawlstars1.jpg");
        not.setTipoNoticia("novedades");
        not.setAutor("CorealaBuena");
        NoticiasDAO conec = new NoticiasDAO();
        System.out.println(not.getImgNoticia());
        System.out.println(not);
        conec.subirNoticia(not);
    }
}
