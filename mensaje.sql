-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2018 a las 05:26:01
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mensaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campana`
--

CREATE TABLE IF NOT EXISTS `campana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `plantilla` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IXFK_campana_usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IXFK_contacto_usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `usuario`) VALUES
(1, 'Diana Martinez', 'crangarita@gmail.com', NULL),
(2, 'Claudia Gomez', 'crangarita@gmail.com', NULL),
(3, 'Carlos Rene Angarita Sanguino', 'crangarita@gmail.com', NULL),
(4, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(5, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(6, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(7, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(8, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(9, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(10, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(11, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(12, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(13, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL),
(14, 'Carlos Rene Angarita S', 'crangarita@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE IF NOT EXISTS `mensaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campana` int(11) DEFAULT NULL,
  `contacto` int(11) DEFAULT NULL,
  `fechaenvio` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fechaapertura` date DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `navegador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IXFK_mensaje_campana` (`campana`),
  KEY `IXFK_mensaje_contacto` (`contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariorol`
--

CREATE TABLE IF NOT EXISTS `usuariorol` (
  `rol` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`rol`,`usuario`),
  KEY `IXFK_usuariorol_rol` (`rol`),
  KEY `IXFK_usuariorol_usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campana`
--
ALTER TABLE `campana`
  ADD CONSTRAINT `FK9mm3ri7623rv96uu2q5nv5ldi` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`),
  ADD CONSTRAINT `FK_campana_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `FK1j4rwhny4shw909qb4eecps48` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`),
  ADD CONSTRAINT `FK_contacto_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FKde6m12df2q1rc4qbqnwxffbi4` FOREIGN KEY (`campana`) REFERENCES `campana` (`id`),
  ADD CONSTRAINT `FK_mensaje_campana` FOREIGN KEY (`campana`) REFERENCES `campana` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
