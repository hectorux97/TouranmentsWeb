-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: TournamentsManager
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Noticias`
--

DROP TABLE IF EXISTS `Noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Noticias` (
  `idNoticias` int(11) NOT NULL AUTO_INCREMENT,
  `titular` varchar(100) NOT NULL,
  `resumen` text NOT NULL,
  `noticiaTexto` longtext NOT NULL,
  `imagenNoticia` text,
  `tipoNoticia` varchar(45) DEFAULT NULL,
  `Usuarios_idUsuario` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `fechaNoticia` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idNoticias`),
  KEY `fk_Noticias_Usuarios_idx` (`Usuarios_idUsuario`),
  CONSTRAINT `fk_Noticias_Usuarios` FOREIGN KEY (`Usuarios_idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Noticias`
--

LOCK TABLES `Noticias` WRITE;
/*!40000 ALTER TABLE `Noticias` DISABLE KEYS */;
INSERT INTO `Noticias` VALUES (1,'tituloprueba','resumen prueba','cuerpo de prueba','img.jpg','prueba',1,0,'2019-05-02 18:43:57'),(2,'Brawl Stars lo está petando','Brawl Stars ha conseguido recaudar 150 millones en Marzo y parece que llegará a los 200 millones en Abril. Parece que esta tendencia se mantedrá y crecerá cuando supercell organice campeonatos ','<p>Es innegable que Supercell ya tiene una buena experiencia organizando campeonatos  con sus juegos Clash Royale y Clash of Clans, sólo es cuestion de tiempo que estos lleguen a Brawl Stars</p>\n\n        <p> Seguramente estén esperando a baje el tirón del juego para revitalizarlo con los campeonatos, de hecho, tras la ultima actualización,  han añadido la función \"Brawl TV\" una herramienta que será muy util para poder seguir estas futuras partidas</p>\n\n        <p>Además todavía queda la incognita de cómo serán estos campeonatos, ya que no sabemos que tipo de pruebas formarán parte de la competición. Parece seguro que habrá modo \"Atrapagemas\" pero no sabemos si podremos ver a los mejores gamers en el modo superviviencia o caaz estelar. Seguiremos informando! </p>','brawlstars1.jpg','novedades',2,1,'2019-05-02 19:00:37'),(3,'tituloprueba2','resumen prueba2','cuerpo de prueba2','img2.jpg','review',1,1,'2019-05-03 02:14:13'),(4,'tituloprueba3','resumen prueba3','cuerpo de prueba3','img3.jpg','review',1,1,'2019-05-03 02:14:43'),(5,'tituloprueba4','resumen prueba4','cuerpo de prueba4','img4.jpg','review',3,1,'2019-05-03 02:15:07'),(6,'tituloprueba5','resumen prueba5','cuerpo de prueba5','img5.jpg','novedades',3,1,'2019-05-03 02:15:42'),(7,'tituloprueba6','resumen prueba6','cuerpo de prueba6','img6.jpg','novedades',4,1,'2019-05-03 02:16:16'),(8,'tituloprueba7','resumen prueba7','cuerpo de prueba7','img7.jpg','novedades',4,1,'2019-05-03 02:16:32'),(9,'tituloprueba7','resumen prueba7','cuerpo de prueba7','img7.jpg','novedades',1,1,'2019-05-03 02:17:11'),(10,'tituloprueba8','resumen prueba8','cuerpo de prueba8','img8.jpg','novedades',3,1,'2019-05-03 02:17:37'),(11,'tituloprueba9','resumen prueba9','cuerpo de prueba9','img9.jpg','esports',2,1,'2019-05-03 02:18:37'),(12,'tituloprueba999','resumen prueba999','cuerpo de prueba999','img999.jpg','esports',2,1,'2019-05-03 02:18:58'),(13,'tituloprueba111','resumen prueba111','cuerpo de prueba111','img111.jpg','esports',2,1,'2019-05-03 02:19:21'),(14,'tituloprueba222','resumen prueba222','cuerpo de prueba222','img222.jpg','esports',2,1,'2019-05-03 02:19:45'),(15,'tituloprueba333','resumen prueba333','cuerpo de prueba333','img333.jpg','esports',1,1,'2019-05-03 02:20:07'),(16,'tituloprueba444','resumen prueba444','cuerpo de prueba444','img444.jpg','review',4,1,'2019-05-03 02:31:34'),(17,'tituloprueba555','resumen prueba555','cuerpo de prueba555','img555.jpg','review',4,1,'2019-05-03 02:31:52'),(18,'tituloprueba777','resumen prueba777','cuerpo de prueba777','img777.jpg','novedades',4,1,'2019-05-03 02:32:25'),(19,'tituloprueba888','resumen prueba888','cuerpo de prueba888','img888.jpg','novedades',3,1,'2019-05-03 02:32:50');
/*!40000 ALTER TABLE `Noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 16:34:51
