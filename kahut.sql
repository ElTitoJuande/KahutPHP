-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2024 a las 13:33:40
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kahut`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `cod` int(2) NOT NULL,
  `enunciado` varchar(500) NOT NULL,
  `respuesta` varchar(100) NOT NULL,
  `opcion_a` varchar(100) DEFAULT NULL,
  `opcion_b` varchar(100) DEFAULT NULL,
  `opcion_c` varchar(100) DEFAULT NULL,
  `opcion_d` varchar(100) DEFAULT NULL,
  `respuesta_correcta` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`cod`, `enunciado`, `respuesta`, `opcion_a`, `opcion_b`, `opcion_c`, `opcion_d`, `respuesta_correcta`) VALUES
(11, '¿Cuál es la capital de Francia?', '', 'Berlín', 'Madrid', 'París', 'Roma', 'C'),
(12, '¿Cuántos planetas hay en el sistema solar?', '', '7', '8', '9', '10', 'B'),
(13, '¿En qué año se descubrió América?', '', '1492', '1500', '1600', '1700', 'A'),
(14, '¿Cuál es el elemento químico con el símbolo \"O\"?', '', 'Oxígeno', 'Hidrógeno', 'Carbono', 'Nitrógeno', 'A'),
(15, '¿Quién escribió \"Cien años de soledad\"?', '', 'Julio Cortázar', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Jorge Luis Borges', 'B'),
(16, '¿Cuál es el océano más grande del mundo?', '', 'Atlántico', 'Índico', 'Pacífico', 'Ártico', 'C'),
(17, '¿Qué es la fotosíntesis?', '', 'Proceso de respiración', 'Proceso de conversión', 'Proceso de crecimiento', 'Proceso de producción de energía en plantas', 'D'),
(18, '¿Cuál es el continente más pequeño?', '', 'Asia', 'Oceanía', 'Europa', 'América', 'B'),
(19, '¿Qué instrumento mide la temperatura?', '', 'Barómetro', 'Termómetro', 'Higrómetro', 'Anemómetro', 'B'),
(20, '¿Cuál es la fórmula química del agua?', '', 'H?O', 'CO?', 'O?', 'H?SO?', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(2) NOT NULL,
  `nombreUsu` varchar(50) NOT NULL,
  `tInicio` timestamp NOT NULL DEFAULT current_timestamp(),
  `tFin` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombreUsu`, `tInicio`, `tFin`) VALUES
(1, 'juande', '2024-12-05 11:50:40', '2024-12-05 12:01:02'),
(2, 'ElTitoJuande', '2024-12-05 12:07:59', '2024-12-05 12:07:59'),
(3, 'ElTitoJuande', '2024-12-05 12:10:50', '2024-12-05 12:11:42'),
(4, 'pablo', '2024-12-05 12:12:23', '2024-12-05 12:12:58'),
(5, 'hgjk', '2024-12-05 12:13:45', '2024-12-05 12:13:53'),
(6, 'ElPollaLarga', '2024-12-05 12:19:21', '2024-12-05 12:20:32'),
(7, 'ShuJuanki', '2024-12-05 12:21:46', '2024-12-05 12:21:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `cod` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
