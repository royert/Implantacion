-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 18:15:51
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin. sistema`
--

CREATE TABLE `admin. sistema` (
  `IdAdmin` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `IdCategorias` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `IdEstadisticas` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `NumeroGoles` int(11) NOT NULL,
  `NumeroAsistencia` int(11) NOT NULL,
  `NumeroPases` int(11) NOT NULL,
  `TarjetasA` int(11) NOT NULL,
  `TarjetasR` int(11) NOT NULL,
  `Habilidad` int(11) NOT NULL,
  `Resistencia` int(11) NOT NULL,
  `Fuerza` int(11) NOT NULL,
  `Velocidad` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estd. socio economico`
--

CREATE TABLE `estd. socio economico` (
  `IdSocioEconomico` int(11) NOT NULL,
  `Salud` int(11) NOT NULL,
  `Alimentacion` int(11) NOT NULL,
  `Vivienda` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `IdJuegos` int(11) NOT NULL,
  `Sanciones` int(11) NOT NULL,
  `TarjetasA` int(11) NOT NULL,
  `Resultado` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `IdCategorias` int(11) NOT NULL,
  `IdLigas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ligas`
--

CREATE TABLE `ligas` (
  `IdLigas` int(11) NOT NULL,
  `NumeroEquipos` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `IdCategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stats`
--

CREATE TABLE `stats` (
  `IdStats` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Cedula` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `statusJ` varchar(255) NOT NULL,
  `statusE` varchar(255) NOT NULL,
  `statusA` varchar(255) NOT NULL,
  `statusP` varchar(255) NOT NULL,
  `IdAdmin` int(11) NOT NULL,
  `IdEstadisticas` int(11) NOT NULL,
  `IdSocioEconomico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin. sistema`
--
ALTER TABLE `admin. sistema`
  ADD PRIMARY KEY (`IdAdmin`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`IdCategorias`),
  ADD KEY `categorias-usuario` (`IdUsuario`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`IdEstadisticas`);

--
-- Indices de la tabla `estd. socio economico`
--
ALTER TABLE `estd. socio economico`
  ADD PRIMARY KEY (`IdSocioEconomico`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`IdJuegos`),
  ADD KEY `juegos-categorias` (`IdCategorias`),
  ADD KEY `juegos-ligas` (`IdLigas`);

--
-- Indices de la tabla `ligas`
--
ALTER TABLE `ligas`
  ADD PRIMARY KEY (`IdLigas`),
  ADD KEY `ligas-categorias` (`IdCategorias`);

--
-- Indices de la tabla `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`IdStats`),
  ADD KEY `stats-usuario` (`IdUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `usuario-admin` (`IdAdmin`),
  ADD KEY `usuario-estadisticas` (`IdEstadisticas`),
  ADD KEY `usuario-socioeconomico` (`IdSocioEconomico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin. sistema`
--
ALTER TABLE `admin. sistema`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `IdCategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `IdEstadisticas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estd. socio economico`
--
ALTER TABLE `estd. socio economico`
  MODIFY `IdSocioEconomico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `IdJuegos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ligas`
--
ALTER TABLE `ligas`
  MODIFY `IdLigas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stats`
--
ALTER TABLE `stats`
  MODIFY `IdStats` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias-usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos-categorias` FOREIGN KEY (`IdCategorias`) REFERENCES `categorias` (`IdCategorias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `juegos-ligas` FOREIGN KEY (`IdLigas`) REFERENCES `ligas` (`IdLigas`);

--
-- Filtros para la tabla `ligas`
--
ALTER TABLE `ligas`
  ADD CONSTRAINT `ligas-categorias` FOREIGN KEY (`IdCategorias`) REFERENCES `categorias` (`IdCategorias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats-usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario-admin` FOREIGN KEY (`IdAdmin`) REFERENCES `admin. sistema` (`IdAdmin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario-estadisticas` FOREIGN KEY (`IdEstadisticas`) REFERENCES `estadisticas` (`IdEstadisticas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario-socioeconomico` FOREIGN KEY (`IdSocioEconomico`) REFERENCES `estd. socio economico` (`IdSocioEconomico`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
