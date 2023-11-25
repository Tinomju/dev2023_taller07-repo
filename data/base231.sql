-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-11-2023 a las 02:31:48
-- Versión del servidor: 8.0.35-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base231`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cursos`
--

CREATE TABLE `Cursos` (
  `idCurso` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Cursos`
--

INSERT INTO `Cursos` (`idCurso`, `nombre`) VALUES
(2, 'Angular'),
(3, 'JAVA EE'),
(1, 'php 8.0'),
(4, 'REACT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `idEstudiante` int NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `idCurso` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `nombre`, `apellido`, `idCurso`) VALUES
(1, 'Tasha', 'Santos', 3),
(2, 'Gil', 'Martinez', 2),
(3, 'Holly', 'Lima', 3),
(4, 'Sawyer', 'Barbara', 4),
(5, 'Jelani', 'Torres', 1),
(6, 'Penelope', 'Medina', 4),
(7, 'Clayton', 'Pascal', 3),
(8, 'Nola', 'Ferraz', 3),
(9, 'Hannah', 'Castro', 2),
(10, 'Deirdre', 'Rocio', 3),
(11, 'Isabella', 'Montero', 3),
(12, 'Maggy', 'Domingos', 1),
(13, 'Uta', 'Aguilar', 1),
(14, 'Neil', 'Mariano', 4),
(15, 'Porter', 'Suarez', 2),
(16, 'Bell', 'Castillo', 3),
(17, 'Skyler', 'Sebastian', 3),
(18, 'Armand', 'Zuniga', 3),
(19, 'Marah', 'Chichi', 4),
(20, 'Salvador', 'Messias', 4),
(21, 'Azalia', 'de Campos', 4),
(22, 'Edward', 'Fuentes', 3),
(23, 'Lysandra', 'Alexandra', 4),
(24, 'Abraham', 'Garcia', 2),
(25, 'Clare', 'Herrero', 3),
(26, 'Keaton', 'Barros', 4),
(27, 'Tasha', 'Rocha', 3),
(28, 'Shannon', 'Ferraz', 2),
(29, 'Karen', 'Lemos', 3),
(30, 'Timon', 'da Costa', 2),
(31, 'Igor', 'Nonato', 2),
(32, 'Tyrone', 'Teodoro', 3),
(33, 'Xandra', 'Vergara', 4),
(34, 'Katelyn', 'Vega', 2),
(35, 'Walker', 'Maia', 2),
(36, 'Kamal', 'Jimenez', 1),
(37, 'Seth', 'Vega', 3),
(38, 'Virginia', 'Gonzaga', 4),
(39, 'Shelly', 'Garrido', 2),
(40, 'Dana', 'Aguilar', 1),
(41, 'Miriam', 'Vieira', 1),
(42, 'Brittany', 'ﾑez', 3),
(43, 'Ulric', 'Lozano', 3),
(44, 'Brenda', 'Alexandra', 2),
(45, 'Theodore', 'Flores', 4),
(46, 'Rhona', 'Carrasco', 1),
(47, 'Jerry', 'Laura', 1),
(48, 'Jorden', 'Barreto', 3),
(49, 'Murphy', 'Santiago', 3),
(50, 'Pamela', 'da Rocha', 2),
(54, 'Martin', 'Gonzalez', 3),
(55, 'Rachel', 'Green', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `cursoname` (`nombre`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `idCurso` (`idCurso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cursos`
--
ALTER TABLE `Cursos`
  MODIFY `idCurso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `idEstudiante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `Cursos` (`idCurso`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
