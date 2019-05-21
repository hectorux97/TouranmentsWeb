-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2019 a las 01:31:56
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tournamentsmanager`
--
CREATE DATABASE IF NOT EXISTS `tournamentsmanager` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tournamentsmanager`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `nombreJuego` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`nombreJuego`) VALUES('ClashRoyal');
INSERT INTO `juegos` (`nombreJuego`) VALUES('CSGO');
INSERT INTO `juegos` (`nombreJuego`) VALUES('Fifa');
INSERT INTO `juegos` (`nombreJuego`) VALUES('Fortnite');
INSERT INTO `juegos` (`nombreJuego`) VALUES('LeagueOfLegends');
INSERT INTO `juegos` (`nombreJuego`) VALUES('RainbowSix');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nickjuegos`
--

CREATE TABLE `nickjuegos` (
  `nombreJuego` varchar(25) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `nick` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nickjuegos`
--

INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('ClashRoyal', 4, 'sdsds');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('ClashRoyal', 5, '');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('CSGO', 4, 'SDSDSD');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('CSGO', 5, '');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('Fifa', 4, 'sdsdsds');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('Fifa', 5, '');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('Fortnite', 4, 'dsdsds');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('Fortnite', 5, '');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('LeagueOfLegends', 4, 'xkaxc');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('LeagueOfLegends', 5, '');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('RainbowSix', 4, 'dsdsds');
INSERT INTO `nickjuegos` (`nombreJuego`, `idUsuario`, `nick`) VALUES('RainbowSix', 5, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idNoticias` int(11) NOT NULL,
  `titular` varchar(70) NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `noticiaTexto` longtext NOT NULL,
  `imagenNoticia` varchar(45) DEFAULT NULL,
  `tipoNoticia` varchar(45) DEFAULT NULL,
  `Usuarios_idUsuario` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `fechaNoticia` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(1, 'Bienvenidos a Bambu Gaming', 'Apertura de nuestra nueva web de torneos', 'El tiempo pasa y Erberk \"Gilius\" Demir sigue dando tumbos por el panorama del League of Legends. El alemán alcanzó su pico de forma la temporada pasada al participar en la LCS con Team Vitality, sin embargo acabó siendo reemplazado una vez más.', 'img/fondo2.jpg', 'review', 1, 2, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(2, 'El MSI entra en el podio de los eventos más vistos', 'El torneo tuvo un pico de más de 1.7 millones de espectadores durante el partido entre G2 Esports y SK Telecom T1.', 'Ayer concluyó un Mid-Season Invitational para el recuerdo. G2 Esports trajo de vuelta la gloria a Europa al ganar después de muchos años un evento internacional de primer nivel. El torneo se cerró con una final un tanto descafeinada por la poca oposición que puso Team Liquid, aún así el evento torneo registró unas buenas cifras.', 'img/fondo4.jpg', 'novedades', 1, 2, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(3, 'Noticia1', 'Noticia1', 'Noticia1', 'img/fondo3.jpg', 'review', 1, 2, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(4, 'Gen.G ficha a un nuevo jugador para la calle central', 'El mal rendimiento del equipo en la pasada edición de la LCK está propiciando cambios en la plantilla.', 'Gen.G completó un pobre inicio de temporada al quedar séptimos en la LCK. Tras el estrepitoso fracaso en el pasado mundial, el club decidió renovar el proyecto con varios cambios, sin embargo la nueva fórmula tampoco funcionó.', 'img/juego1.png', 'novedades', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(5, 'Gen.G ficha a un nuevo jugador para la calle central', 'Noticia2', 'Noticia1', 'img/avatar.png', 'novedades', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(6, 'Gen.G ficha a un nuevo jugador para la calle central', 'Noticia3', 'Noticia1', 'img/avatar.png', 'novedades', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(7, 'Gen.G ficha a un nuevo jugador para la calle central', 'Noticia4', 'Noticia1', 'img/avatar.png', 'review', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(8, 'Gen.G ficha a un nuevo jugador para la calle central', 'Noticia5', 'Noticia1', 'img/avatar.png', 'review', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(9, 'Gen.G ficha a un nuevo jugador para la calle central', 'Noticia6', 'Noticia1', 'img/avatar.png', 'esports', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(10, 'Liquid tumba a los campeones del mundo', 'Hoy arrancaban las semifinales del Mid-Season Invitational con el encuentro que enfrentaba a Invictus Gaming y Team Liquid.', 'Hoy arrancaban las semifinales del Mid-Season Invitational con el encuentro que enfrentaba a Invictus Gaming y Team Liquid. Riot Games se desplazó hasta Taipei para disputar la fase definitiva del torneo dentro del Heping Basketball Gymnasium.', 'img/noticii1.jpg', 'esports', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(11, 'G2 despedaza a Liquid en una final descafeinada', 'El Mid-Season Invitational bajó el telón hoy tras varias semanas del mejor League of Legends internacional.', 'El Mid-Season Invitational bajó el telón hoy tras varias semanas del mejor League of Legends internacional. G2 Esports y Team Liquid ponían el broche final al evento con un enfrentamiento entre las dos regiones más antiguas del juego, Europa contra Norteamérica.', 'img/noti.jpg', 'esports', 1, 1, '2020-05-20 20:00:00');
INSERT INTO `noticias` (`idNoticias`, `titular`, `resumen`, `noticiaTexto`, `imagenNoticia`, `tipoNoticia`, `Usuarios_idUsuario`, `status`, `fechaNoticia`) VALUES(12, 'Gen.G ficha a un nuevo jugador para la calle central', 'Gen.G completó un pobre inicio de temporada al quedar séptimos en la LCK.', 'Gen.G completó un pobre inicio de temporada al quedar séptimos en la LCK. Tras el estrepitoso fracaso en el pasado mundial, el club decidió renovar el proyecto con varios cambios, sin embargo la nueva fórmula tampoco funcionó.', 'img/notii.jpg', 'esports', 1, 1, '2020-05-20 20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `idPartido` int(11) NOT NULL,
  `idTorneo` int(11) NOT NULL,
  `idUsuario1` int(11) NOT NULL,
  `idUsuario2` int(11) NOT NULL,
  `usuario1Points` tinyint(3) DEFAULT '0',
  `usuario2Points` tinyint(3) DEFAULT '0',
  `ronda` tinyint(2) DEFAULT '0',
  `fechaJuego` datetime DEFAULT '2000-01-01 01:01:01',
  `img` varchar(300) DEFAULT '',
  `estado` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`idPartido`, `idTorneo`, `idUsuario1`, `idUsuario2`, `usuario1Points`, `usuario2Points`, `ronda`, `fechaJuego`, `img`, `estado`) VALUES(1, 1, 1, 2, 1, 1, 1, '2012-05-11 20:00:00', '', 0);
INSERT INTO `partido` (`idPartido`, `idTorneo`, `idUsuario1`, `idUsuario2`, `usuario1Points`, `usuario2Points`, `ronda`, `fechaJuego`, `img`, `estado`) VALUES(2, 2, 4, 5, 1, 1, 1, '2012-05-11 20:00:00', '', 0);
INSERT INTO `partido` (`idPartido`, `idTorneo`, `idUsuario1`, `idUsuario2`, `usuario1Points`, `usuario2Points`, `ronda`, `fechaJuego`, `img`, `estado`) VALUES(3, 3, 3, 4, 1, 1, 1, '2012-05-11 20:00:00', '', 0);
INSERT INTO `partido` (`idPartido`, `idTorneo`, `idUsuario1`, `idUsuario2`, `usuario1Points`, `usuario2Points`, `ronda`, `fechaJuego`, `img`, `estado`) VALUES(4, 1, 2, 3, 2, 2, 1, '2012-05-11 20:00:00', 'img/fondo2.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneoforusuario`
--

CREATE TABLE `torneoforusuario` (
  `idUsuario` int(11) NOT NULL,
  `idTorneo` int(11) NOT NULL,
  `posicionEmparejamiento` tinyint(3) DEFAULT NULL,
  `ronda` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `idTorneos` int(11) NOT NULL,
  `nombreTorneo` varchar(45) NOT NULL,
  `fechaPublcicacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaInicio` date DEFAULT NULL,
  `juego` varchar(20) NOT NULL,
  `reglas` text NOT NULL,
  `premio` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `maximoJugadores` tinyint(3) NOT NULL DEFAULT '16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`idTorneos`, `nombreTorneo`, `fechaPublcicacion`, `fechaInicio`, `juego`, `reglas`, `premio`, `estado`, `maximoJugadores`) VALUES(1, 'Torneo Inagural League of Legends', '2019-01-06 00:00:00', '2019-03-06', 'LeagueOfLegends', '', '100 euros', 0, 16);
INSERT INTO `torneos` (`idTorneos`, `nombreTorneo`, `fechaPublcicacion`, `fechaInicio`, `juego`, `reglas`, `premio`, `estado`, `maximoJugadores`) VALUES(2, 'Torneo Inagural CSGO', '2019-01-06 00:00:00', '2019-03-06', 'CSGO', '', '', 0, 16);
INSERT INTO `torneos` (`idTorneos`, `nombreTorneo`, `fechaPublcicacion`, `fechaInicio`, `juego`, `reglas`, `premio`, `estado`, `maximoJugadores`) VALUES(3, 'Torneo Inagural Fifa', '2019-01-06 00:00:00', '2019-03-06', 'Fifa', '', '', 0, 16);
INSERT INTO `torneos` (`idTorneos`, `nombreTorneo`, `fechaPublcicacion`, `fechaInicio`, `juego`, `reglas`, `premio`, `estado`, `maximoJugadores`) VALUES(4, 'Torneo 1vs1 CSGO', '2019-05-17 12:34:33', '2019-05-20', 'CSGO', 'SDSDS', '100 EUROS', 0, 64);
INSERT INTO `torneos` (`idTorneos`, `nombreTorneo`, `fechaPublcicacion`, `fechaInicio`, `juego`, `reglas`, `premio`, `estado`, `maximoJugadores`) VALUES(5, 'Torneo 1vs1 League of Legends', '2019-05-17 16:03:32', '2019-05-25', 'LeagueOfLegends', '3.7.1. Normas de pausa\r\nLos partidos que se jueguen en el modo torneo estÃ¡ prohibido usar la pausa a menos de que se trate de una razÃ³n obvia como podrÃ­a ser la desconexiÃ³n de un jugador o un problema de hardware. En el caso de que se produzca una pausa, los equipos deben tener en cuenta que:\r\nCada equipo tiene un total de 10 minutos de pausa\r\nSi un equipo pausa la partida y sobrepasa su tiempo lÃ­mite, el equipo rival le puede ceder parte de su tiempo de pausa. Si esto no sucede, la partida debe continuar\r\nLa administraciÃ³n, en caso excepcionales, puede considerar dejar unos minutos mÃ¡s de pausa en caso de que sea necesario\r\nPara reanudar la partida, es necesario que ambos equipos estÃ©n de acuerdo y lo avisen mediante el chat de juego. Si la pausa dura mÃ¡s de 10 minutos y no hay ningÃºn acuerdo entre ambos equipos, la partida deberÃ¡ reanudarse igualmente\r\nEl abuso de pausas de una partida conlleva la descalificaciÃ³n inmediata de la competiciÃ³n. El equipo afectado deberÃ¡ abrir una protesta donde incluya todas las capturas de pantalla que lo verifiquen\r\n3.7.2. Repetir partido\r\nLos equipos podrÃ¡n repetir la partida solicitÃ¡ndolo mediante una protesta y mientras se cumplan los siguientes requisitos:\r\nAmbos equipos estÃ¡n de acuerdo en repetir el encuentro\r\nNo se ha producido la primera sangre\r\nNo ha transcurrido los primeros 2 minutos de partida\r\nUn jugador le es imposible unirse a la partida\r\nSolo se podrÃ¡ repetir la partida 1 vez por encuentro\r\nLa administraciÃ³n debe estar de acuerdo en que se repita\r\nEn el caso de que se tenga que repetir la partida, los equipos tienen que tener en cuenta que:\r\nSe deberÃ¡ jugar con los mismos â??picks & bansâ??\r\nSe deberÃ¡ jugar con los mismos hechizos de invocador\r\nSe deberÃ¡ jugar con los mismas runas\r\nSe podrÃ¡ hacer remake solamente en caso de que algÃºn bug impida empezar correctamente la partida como por ejemplo las runas. Si el cÃ³digo ha dejado de funcionar tras el remake, se deberÃ¡ contactar con los Ã¡rbitros de competiciÃ³n mediante una protesta para que rehagan el cÃ³digo del partido.\r\n\r\n3.8. Acciones ilegales\r\nCualquier acciÃ³n que conlleve algÃºn tipo de ventaja injusta sobre el rival se considera ilegal, esto incluye tambiÃ©n el abuso de cualquier tipo de bug en cualquier situaciÃ³n. AdemÃ¡s de esto, tambiÃ©n se considerarÃ¡ acciÃ³n ilegal a cualquier situaciÃ³n o acciÃ³n que vulnere cualquiera de las normas de la competiciÃ³n.\r\n\r\nESL se reserva el derecho para castigar al jugador/equipo con la mayor severidad posible. Infringir cualquier regla por un jugador/equipo puede ocasionar la suspensiÃ³n en su totalidad de una cierta competiciÃ³n o directamente de todas las competiciones de la ESL.', '20 euros', 0, 64);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(305) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `fechaCreacionUsuario` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombreReal` varchar(20) DEFAULT NULL,
  `apellidosReal` varchar(50) DEFAULT NULL,
  `edad` date DEFAULT '2000-01-01',
  `pais` varchar(30) DEFAULT NULL,
  `telefono` int(13) DEFAULT NULL,
  `tipoUsuario` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(1, 'JuanXX', 'd', 'jhddf@sdf.com', 'http://localhost:8080/img/perfil/imagen2.png', '2009-01-01 00:00:00', 'Fer', 'Gr', '1998-07-23', 'Spain', 23233323, 0);
INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(2, 'Marisa12', 'd', 'jhddf@sdf.com', 'http://localhost:8080/img/perfil/imagen2.png', '2009-01-01 00:00:00', 'Fere', 'Grrt', '1998-07-23', 'Spain', 23237773, 0);
INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(3, 'pedro23', 'd', 'jhddf@sdf.com', 'http://localhost:8080/img/perfil/imagen3.png', '2009-01-01 00:00:00', 'Pedro', 'Lopez', '1998-07-23', 'Spain', 23237773, 0);
INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(4, 'jaime9', 'd', 'jhddf@sdf.com', 'http://localhost:8080/img/perfil/imagen4.png', '2009-01-01 00:00:00', 'Jaime', 'Motos', '1998-07-23', 'Spain', 23237773, 0);
INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(5, 'angel2', '123456', 'angel@gmail.com', 'http://localhost:8080/img/perfil/imagen2.png', '2019-05-16 11:23:22', 'Angel', 'Angulo', '2000-01-01', 'Spain', 601260732, 1);
INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `password`, `email`, `imagen`, `fechaCreacionUsuario`, `nombreReal`, `apellidosReal`, `edad`, `pais`, `telefono`, `tipoUsuario`) VALUES(6, 'miguel20', '123456', 'asa444sa@gmail.com', NULL, '2019-05-17 16:56:02', 'Miguel', NULL, '2000-01-01', NULL, 234434343, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`nombreJuego`);

--
-- Indices de la tabla `nickjuegos`
--
ALTER TABLE `nickjuegos`
  ADD PRIMARY KEY (`nombreJuego`,`idUsuario`),
  ADD KEY `usuarioFK` (`idUsuario`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticias`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`idPartido`,`idTorneo`,`idUsuario1`,`idUsuario2`),
  ADD KEY `FK_idTorneo` (`idTorneo`),
  ADD KEY `FK_jugador1` (`idUsuario1`),
  ADD KEY `FK_jugador2` (`idUsuario2`);

--
-- Indices de la tabla `torneoforusuario`
--
ALTER TABLE `torneoforusuario`
  ADD PRIMARY KEY (`idUsuario`,`idTorneo`),
  ADD KEY `Foreign_torneoID_idx` (`idTorneo`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`idTorneos`,`juego`),
  ADD KEY `fk_juegoTorneo` (`juego`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`,`nombreUsuario`),
  ADD UNIQUE KEY `nombreUsuario_UNIQUE` (`nombreUsuario`),
  ADD UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `idPartido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `idTorneos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nickjuegos`
--
ALTER TABLE `nickjuegos`
  ADD CONSTRAINT `juegoFK` FOREIGN KEY (`nombreJuego`) REFERENCES `juegos` (`nombreJuego`),
  ADD CONSTRAINT `usuarioFK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `FK_idTorneo` FOREIGN KEY (`idTorneo`) REFERENCES `torneos` (`idTorneos`),
  ADD CONSTRAINT `FK_jugador1` FOREIGN KEY (`idUsuario1`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `FK_jugador2` FOREIGN KEY (`idUsuario2`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `torneoforusuario`
--
ALTER TABLE `torneoforusuario`
  ADD CONSTRAINT `F_torneoID` FOREIGN KEY (`idTorneo`) REFERENCES `torneos` (`idTorneos`),
  ADD CONSTRAINT `Foreign_usuarioID` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD CONSTRAINT `fk_juegoTorneo` FOREIGN KEY (`juego`) REFERENCES `juegos` (`nombreJuego`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
