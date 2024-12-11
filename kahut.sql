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
(1, '¿Qué selección ganó la Copa Mundial de la FIFA 2018?', '', 'Alemania', 'Brasil', 'Francia', 'Argentina', 'C'),
(2, '¿Quién es el máximo goleador en la historia de la Champions League?', '', 'Cristiano Ronaldo', 'Lionel Messi', 'Robert Lewandowski', 'Karim Benzema', 'A'),
(3, '¿En qué año se jugó el primer Mundial de fútbol?', '', '1928', '1930', '1934', '1938', 'B'),
(4, '¿Qué país ha ganado más Copas del Mundo?', '', 'Brasil', 'Italia', 'Alemania', 'Argentina', 'A'),
(5, '¿Quién marcó el famoso gol conocido como "La Mano de Dios"?', '', 'Pelé', 'Diego Maradona', 'Zinedine Zidane', 'Johan Cruyff', 'B'),
(6, '¿Cuál es el estadio más grande del mundo en capacidad?', '', 'Maracaná', 'Camp Nou', 'Estadio Azteca', 'Rungrado May Day', 'D'),
(7, '¿Qué equipo tiene más títulos de la Premier League?', '', 'Manchester United', 'Liverpool', 'Chelsea', 'Arsenal', 'A'),
(8, '¿Qué selección es conocida como "La Naranja Mecánica"?', '', 'España', 'Países Bajos', 'Bélgica', 'Francia', 'B'),
(9, '¿Quién fue el primer ganador del Balón de Oro?', '', 'Alfredo Di Stéfano', 'Stanley Matthews', 'George Best', 'Lev Yashin', 'B'),
(10, '¿Cuántos jugadores hay en un equipo de fútbol en el campo?', '', '9', '10', '11', '12', 'C');


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
(1, 'juande', '2024-12-05 11:50:40', '2024-12-05 12:01:02');

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
