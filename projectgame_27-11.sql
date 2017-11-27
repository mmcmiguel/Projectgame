-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2017 a las 17:13:05
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projectgame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aportaciones`
--

CREATE TABLE `aportaciones` (
  `id` int(11) NOT NULL,
  `Patrocinador` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Cantidad_Euros` int(20) DEFAULT NULL,
  `Nombre_Proyecto` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Nombre_Equipo` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `aportaciones`
--

INSERT INTO `aportaciones` (`id`, `Patrocinador`, `Cantidad_Euros`, `Nombre_Proyecto`, `Nombre_Equipo`) VALUES
(1, 'jUANCHO', 1000, 'proyecto1', 'ARMA'),
(2, 'pe2s', 500, 'juan_melon', 'ARMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `NOMBRE_EQUIPO` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `idProyecto` int(11) DEFAULT NULL,
  `NOMBRE_PROYECTO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `NOMBRE_EQUIPO`, `idProyecto`, `NOMBRE_PROYECTO`) VALUES
(2, 'GOTO', 2, 'juan_melon'),
(3, 'relic', 3, 'dawnofwar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinadores`
--

CREATE TABLE `patrocinadores` (
  `idUSUARIO` int(11) NOT NULL,
  `NOMBRE_USUARIO` varchar(30) COLLATE utf8_bin NOT NULL,
  `EMAIL` varchar(30) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `patrocinadores`
--

INSERT INTO `patrocinadores` (`idUSUARIO`, `NOMBRE_USUARIO`, `EMAIL`, `PASSWORD`) VALUES
(1, 'jUANCHO', 'sdds2@OZU.com', 'x2xx'),
(2, 'pe2s', 'sdds.com', 'xxx'),
(3, 'pes', 'sdd22s.com', 'xxx'),
(4, 'jun', 'sacho@web.com', 'xxx'),
(5, 'sdsdsd', 'sdsd@sds.com', 'asd1Sa'),
(6, 'irene', 'irene@irene.com', 'ireNe12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `NOMBRE_PROYECTO` varchar(100) COLLATE utf8_bin NOT NULL,
  `FECHA_INICIO` date NOT NULL,
  `FECHA_FIN` date NOT NULL,
  `RECAUDACION` int(11) DEFAULT NULL,
  `VALORACION` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `NOMBRE_PROYECTO`, `FECHA_INICIO`, `FECHA_FIN`, `RECAUDACION`, `VALORACION`) VALUES
(1, 'juan_melon', '1991-02-15', '2000-05-23', 2000, '7.0'),
(2, 'proyecto2', '2010-05-06', '2017-10-21', 150, '6.5'),
(3, 'dawnofwar', '2010-05-06', '2017-10-21', 769, '8.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `tipo` varchar(13) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`tipo`) VALUES
('administrador'),
('desarrollador'),
('patrocinador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Usuario` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Nombre_Equipo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Password` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Rol` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Activo` varchar(6) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Usuario`, `Nombre_Equipo`, `Password`, `Email`, `Rol`, `Activo`) VALUES
(1, 'MIGUEL', 'relic', 'PELOTI', 'MIGUEL@MIGUEL.COM', 'desarrollador', 'true'),
(2, 'JUANIANO', NULL, 'LOVEME', 'PEPE@PEPE.ES', 'patrocinador', 'TRUE'),
(3, 'sdsdsd', '', 'asd1Sa', 'sdsd@sds.com', 'patrocinador', 'True'),
(4, 'irene', '', 'ireNe12', 'irene@irene.com', 'patrocinador', 'True'),
(5, 'mike', '', 'Mike123', 'mike@mike.com', 'desarrollador', 'True');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aportaciones`
--
ALTER TABLE `aportaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_EQUIPO` (`NOMBRE_EQUIPO`),
  ADD UNIQUE KEY `UC1_EQUIPO` (`idProyecto`),
  ADD UNIQUE KEY `UC2_EQUIPO` (`NOMBRE_PROYECTO`);

--
-- Indices de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD PRIMARY KEY (`idUSUARIO`),
  ADD UNIQUE KEY `UC1_PATROCINADOR` (`NOMBRE_USUARIO`),
  ADD UNIQUE KEY `UC2_Patrocinador` (`EMAIL`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC1_PROYECTO` (`NOMBRE_PROYECTO`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ1_USUARIOS` (`Usuario`),
  ADD UNIQUE KEY `UQ2_USUARIOS` (`Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aportaciones`
--
ALTER TABLE `aportaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  MODIFY `idUSUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`idProyecto`) REFERENCES `proyectos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`NOMBRE_PROYECTO`) REFERENCES `proyectos` (`NOMBRE_PROYECTO`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
