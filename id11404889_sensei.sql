-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-12-2019 a las 20:33:02
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id11404889_sensei`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumno`
--

CREATE TABLE `Alumno` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ap_paterno` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ap_materno` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Alumno`
--

INSERT INTO `Alumno` (`id_alumno`, `nombre`, `ap_paterno`, `ap_materno`, `telefono`, `correo`, `contraseña`) VALUES
(1, 'Enrique', 'Lopez', 'Lopez', '659101111', 'Kike@gmail.com', 'pp123'),
(2, 'Juan', 'vargas', 'torres', '6591033844', 'juan@gmail.com', 'jhony'),
(3, 'Sergio', 'Varela', 'NULL', '6591033844', 'bdjd', '123'),
(33, 'hshd', 'heheh', 'NULL', '656565', 'ndjdjdk', 'gdgdjdhd'),
(34, 'hshd', 'heheh', 'NULL', '656565', 'ndjdjdk', 'gdgdjdhd'),
(35, 'hshd', 'heheh', 'NULL', '656565', 'ndjdjdk', 'gdgdjdhd'),
(36, 'hshd', 'heheh', 'NULL', '656565', 'ndjdjdk', 'gdgdjdhd'),
(37, 'tdo', 'ififi', 'NULL', '535', 'fjfjfjf', 'fjfkfjf'),
(38, 'tdo', 'ififi', 'NULL', '535', 'fjfjfjf', 'fjfkfjf'),
(39, 'hfhfh', 'hdhfvf', 'NULL', '5656568', 'ufuf+', 'fjfufuf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comentarios`
--

CREATE TABLE `Comentarios` (
  `id_comentario` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_tutor` int(11) NOT NULL,
  `mensaje` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `estrellas` int(5) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Comentarios`
--

INSERT INTO `Comentarios` (`id_comentario`, `id_alumno`, `id_tutor`, `mensaje`, `estrellas`, `id_materia`) VALUES
(1, 1, 1, 'buena asesoría', 4, 1),
(2, 2, 1, 'no me gusto', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Match`
--

CREATE TABLE `Match` (
  `id_match` int(11) NOT NULL,
  `id_tutor` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Match`
--

INSERT INTO `Match` (`id_match`, `id_tutor`, `id_alumno`) VALUES
(1, 1, 1),
(3, 1, 2),
(4, 68, 0),
(6, 1, 3),
(7, 68, 3),
(8, 64, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materia`
--

CREATE TABLE `Materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Materia`
--

INSERT INTO `Materia` (`id_materia`, `nombre`) VALUES
(1, 'Quimica'),
(2, 'Calculo'),
(3, 'Física'),
(4, 'Programación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mat_Prof`
--

CREATE TABLE `Mat_Prof` (
  `id` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_tutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Mat_Prof`
--

INSERT INTO `Mat_Prof` (`id`, `id_materia`, `id_tutor`) VALUES
(1, 2, 1),
(23, 1, 64),
(24, 2, 64),
(25, 3, 64),
(26, 4, 64),
(33, 2, 68),
(34, 4, 68),
(35, 2, 69),
(36, 3, 69),
(39, 1, 71),
(40, 2, 71),
(41, 3, 71),
(42, 4, 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tutor`
--

CREATE TABLE `Tutor` (
  `id_tutor` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ap_paterno` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ap_materno` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Tutor`
--

INSERT INTO `Tutor` (`id_tutor`, `nombre`, `ap_paterno`, `ap_materno`, `telefono`, `correo`, `contraseña`, `imagen`) VALUES
(1, 'Juan', 'Lopez', 'Lopez', '6591011111', 'juan@lopez.com', 'juan123', 2131165185),
(64, 'Sergio', 'Varela', 'NULL', '6591033844', 'savb2004@hotmail.com', '123', 2131165185),
(68, 'pedro', 'garcia', 'NULL', '123456789', 'no', '1234', 2131165186),
(71, 'prueba', 'examen', 'NULL', '614000000', 'prueba@examen.com', '1234', 2131165186);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alumno`
--
ALTER TABLE `Alumno`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `Comentarios`
--
ALTER TABLE `Comentarios`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `Match`
--
ALTER TABLE `Match`
  ADD PRIMARY KEY (`id_match`);

--
-- Indices de la tabla `Materia`
--
ALTER TABLE `Materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `Mat_Prof`
--
ALTER TABLE `Mat_Prof`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Tutor`
--
ALTER TABLE `Tutor`
  ADD PRIMARY KEY (`id_tutor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Alumno`
--
ALTER TABLE `Alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `Comentarios`
--
ALTER TABLE `Comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Match`
--
ALTER TABLE `Match`
  MODIFY `id_match` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Materia`
--
ALTER TABLE `Materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Mat_Prof`
--
ALTER TABLE `Mat_Prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `Tutor`
--
ALTER TABLE `Tutor`
  MODIFY `id_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
