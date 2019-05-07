CREATE DATABASE  IF NOT EXISTS `tournamentsmanager` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `tournamentsmanager`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: tournamentsmanager
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `juegos`
--

DROP TABLE IF EXISTS `juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juegos` (
  `nombreJuego` varchar(20) NOT NULL,
  PRIMARY KEY (`nombreJuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegos`
--

LOCK TABLES `juegos` WRITE;
/*!40000 ALTER TABLE `juegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nickjuegos`
--

DROP TABLE IF EXISTS `nickjuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nickjuegos` (
  `nombreJuego` varchar(25) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `nick` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nombreJuego`,`idUsuario`),
  KEY `usuarioFK` (`idUsuario`),
  CONSTRAINT `juegoFK` FOREIGN KEY (`nombreJuego`) REFERENCES `juegos` (`nombreJuego`),
  CONSTRAINT `usuarioFK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nickjuegos`
--

LOCK TABLES `nickjuegos` WRITE;
/*!40000 ALTER TABLE `nickjuegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `nickjuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `noticias` (
  `idNoticias` int(11) NOT NULL AUTO_INCREMENT,
  `titular` varchar(45) NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `noticiaTexto` longtext NOT NULL,
  `imagenNoticia` varchar(45) DEFAULT '',
  `idCreador` int(11) NOT NULL,
  PRIMARY KEY (`idNoticias`),
  KEY `FK_CreadorNoticia_idx` (`idCreador`),
  CONSTRAINT `FK_CreadorNoticia` FOREIGN KEY (`idCreador`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `partido` (
  `idPartido` int(11) NOT NULL AUTO_INCREMENT,
  `idTorneo` int(11) NOT NULL,
  `idUsuario1` int(11) NOT NULL,
  `idUsuario2` int(11) NOT NULL,
  `usuario1Points` tinyint(3) DEFAULT '0',
  `usuario2Points` tinyint(3) DEFAULT '0',
  `ronda` tinyint(2) DEFAULT '0',
  `fechaJuego` datetime DEFAULT '2000-01-01 01:01:01',
  `img` varchar(300) DEFAULT '',
  `estado` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`idPartido`,`idTorneo`,`idUsuario1`,`idUsuario2`),
  KEY `FK_idTorneo` (`idTorneo`),
  KEY `FK_jugador1` (`idUsuario1`),
  KEY `FK_jugador2` (`idUsuario2`),
  CONSTRAINT `FK_idTorneo` FOREIGN KEY (`idTorneo`) REFERENCES `torneos` (`idTorneos`),
  CONSTRAINT `FK_jugador1` FOREIGN KEY (`idUsuario1`) REFERENCES `usuarios` (`idUsuario`),
  CONSTRAINT `FK_jugador2` FOREIGN KEY (`idUsuario2`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneoforusuario`
--

DROP TABLE IF EXISTS `torneoforusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `torneoforusuario` (
  `idUsuario` int(11) NOT NULL,
  `idTorneo` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`idTorneo`),
  KEY `Foreign_torneoID_idx` (`idTorneo`),
  CONSTRAINT `F_torneoID` FOREIGN KEY (`idTorneo`) REFERENCES `torneos` (`idTorneos`),
  CONSTRAINT `Foreign_usuarioID` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneoforusuario`
--

LOCK TABLES `torneoforusuario` WRITE;
/*!40000 ALTER TABLE `torneoforusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `torneoforusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneos`
--

DROP TABLE IF EXISTS `torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `torneos` (
  `idTorneos` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTorneo` varchar(45) NOT NULL,
  `fechaPublcicacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaInicio` date DEFAULT NULL,
  `juego` varchar(20) NOT NULL,
  PRIMARY KEY (`idTorneos`,`juego`),
  KEY `fk_juegoTorneo` (`juego`),
  CONSTRAINT `fk_juegoTorneo` FOREIGN KEY (`juego`) REFERENCES `juegos` (`nombreJuego`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
/*!40000 ALTER TABLE `torneos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(305) NOT NULL,
  `imagen` varchar(300) DEFAULT NULL,
  `fechaCreacionUsuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombreReal` varchar(20) DEFAULT NULL,
  `apellidosReal` varchar(50) DEFAULT NULL,
  `edad` date DEFAULT '2000-01-01',
  `pais` varchar(30) DEFAULT NULL,
  `telefono` int(13) DEFAULT NULL,
  `tipoUsuario` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsuario`,`nombreUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 22:49:32
