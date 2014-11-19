-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2014 a las 20:33:33
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `idusuario` bigint(10) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` bigint(1) NOT NULL,
  PRIMARY KEY (`idusuario`,`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idusuario`, `idproducto`, `fecha_hora`, `estado`) VALUES
(3, 1, '2014-10-09 03:38:58', 0),
(3, 2, '2014-10-09 03:38:58', 0),
(3, 5, '2014-10-09 03:38:58', 0),
(3, 6, '2014-10-09 03:38:58', 0),
(3, 7, '2014-10-09 03:38:58', 0),
(3, 8, '2014-10-09 03:38:58', 0),
(4, 1, '2014-10-09 03:48:01', 0),
(4, 4, '2014-10-09 03:48:01', 0),
(4, 5, '2014-10-09 03:48:01', 0),
(4, 6, '2014-10-09 03:48:01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `idusuario` bigint(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `valor` int(11) NOT NULL,
  `abono` int(11) NOT NULL,
  `pago` bit(1) NOT NULL,
  `estado` bit(1) NOT NULL,
  PRIMARY KEY (`idusuario`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idusuario`, `fecha_hora`, `valor`, `abono`, `pago`, `estado`) VALUES
(3, '2014-10-09 03:38:58', 151000, 0, b'0', b'0'),
(4, '2014-10-09 03:48:01', 88000, 0, b'0', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `cantidad_volumen` int(11) NOT NULL,
  `cantidad_dosis` int(11) NOT NULL,
  `valor_volumen` int(11) NOT NULL,
  `valor_dosis` int(11) NOT NULL,
  `tipo_producto` int(11) NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `descripcion`, `cantidad_volumen`, `cantidad_dosis`, `valor_volumen`, `valor_dosis`, `tipo_producto`) VALUES
(1, 'Penicilina 50gr', 10, 2, 50000, 6000, 1),
(2, 'Metronidazol 100gr', 12, 1, 10000, 1000, 2),
(3, 'Ibuprofeno 400gr', 30, 1, 20000, 800, 1),
(4, 'Aspirina 100gr', 10, 1, 300, 400, 2),
(5, 'Vitamina C tab', 24, 2, 20000, 1000, 3),
(6, 'Vitamina B cap', 6, 1, 15000, 3000, 3),
(7, 'Vitamina D cap', 12, 1, 26000, 2500, 3),
(8, 'Suero Pedialyte 700ml', 6, 1, 30000, 6500, 3),
(9, 'Dolex', 12, 1, 9800, 1000, 2),
(10, 'Metocarbamol 500gr', 30, 2, 5000, 500, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` bigint(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`, `rol`) VALUES
(1, 'Leonardo', '12345', 'vendedor'),
(2, 'Alfonso', '12345', 'vendedor'),
(3, 'Maria Villanueva', 'null', 'cliente'),
(4, 'Jesus Gutierrez', 'null', 'cliente'),
(5, 'Marco Valdez', 'null', 'cliente');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





 


