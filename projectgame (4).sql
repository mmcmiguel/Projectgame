-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2017 a las 12:42:19
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
  `Nombre_Equipo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Valoracion` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `aportaciones`
--

INSERT INTO `aportaciones` (`id`, `Patrocinador`, `Cantidad_Euros`, `Nombre_Proyecto`, `Nombre_Equipo`, `Valoracion`) VALUES
(1, 'Noelia', 1000, 'proyecto1', 'ARMA', '7.2'),
(2, 'Noelia', 20, 'proyecto1', 'ARMA', '6.0'),
(3, 'Noelia', 150, 'we run', 'Betis', NULL),
(4, 'Noelia', 150, 'we run', 'Betis', NULL),
(5, 'Noelia', 20, 'Nuevo proyecto', 'Truenos', NULL),
(6, 'Noelia', 1500, 'sadfgffg', NULL, NULL),
(7, 'Noelia', 500, 'we run', 'Betis', NULL),
(8, 'Noelia', 524, 'sadfgffg', NULL, '5.0'),
(9, 'Noelia', 23, 'we run', 'Betis', '4.5'),
(10, 'Noelia', 2, 'we run', 'Betis', '5.3'),
(11, 'Noelia', 654, 'we run', 'Betis', '9.0'),
(12, 'Noelia', 45, 'we run', 'Betis', '8.0'),
(13, 'Noelia', 456, 'Nuevo proyecto', 'Truenos', '2.0'),
(14, 'Noelia', 789, 'we run', 'Betis', '6.0'),
(15, 'Noelia', 456, 'we run', 'Betis', '8.0'),
(16, 'Noelia', 456, 'we run', 'Betis', '4.0'),
(17, 'Noelia', 445, 'we run', 'Betis', '9.0'),
(18, 'Noelia', 800, 'we run', 'Betis', '4.0'),
(19, 'Noelia', 456, 'we run', 'Betis', '8.0'),
(20, 'Noelia', 5000, 'Nuevo proyecto', 'Truenos', '9.0'),
(21, 'Noelia', 456, 'Proyecto Topo Team', 'Topo team', '6.5'),
(22, 'Noelia', 2, 'La champion', 'Atletico de Madrid', '1.0'),
(23, 'Noelia', 45, 'tetetetetete', 'Arroz con leche', '6.0'),
(24, 'Noelia', 3000, 'we run', 'EQUIPO1', '9.9'),
(25, 'Noee', 300, 'WWII fps', 'Truenos', '9.5'),
(26, 'Noee', 123658, 'Star citizen', 'Truenos', '9.0'),
(27, 'patrocinador', 450, 'Proyecto prueba1', 'equipo prueba1', '6.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `NOMBRE_EQUIPO` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `NOMBRE_EQUIPO`) VALUES
(18, 'equipo prueba1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `NOMBRE_PROYECTO` varchar(100) COLLATE utf8_bin NOT NULL,
  `FECHA_INICIO` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `FECHA_FIN` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `RECAUDACION` int(11) DEFAULT NULL,
  `VALORACION` decimal(2,1) DEFAULT NULL,
  `IMGURL` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPCION_CORTA` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPCION_LARGA` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `FINALIZADO` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `EQUIPO` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(18, 'admin', NULL, 'adminpr', 'admin@projectgame.co', 'administrador', 'true'),
(22, 'Mike', 'equipo prueba1', 'Mike123', 'mike@mike.com', 'desarrollador', 'True'),
(50, 'patrocinador', NULL, 'Pat1234', 'pat@pat.com', 'patrocinador', 'True');

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
  ADD UNIQUE KEY `UC_EQUIPO` (`NOMBRE_EQUIPO`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
