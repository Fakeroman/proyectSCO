-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2020 a las 05:13:43
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filiacion`
--

CREATE TABLE `filiacion` (
  `id` tinyint(10) NOT NULL,
  `idFiliation` tinyint(3) NOT NULL,
  `idSons` tinyint(10) NOT NULL,
  `idFathers` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hijos`
--

CREATE TABLE `hijos` (
  `id` int(11) NOT NULL,
  `idSons` tinyint(3) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `login` int(1) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`login`, `user`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `id` int(3) NOT NULL,
  `idFathers` tinyint(3) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(3) NOT NULL,
  `noEmployee` int(3) NOT NULL COMMENT 'numero empleado',
  `name` tinyint(100) NOT NULL COMMENT 'nombre completo',
  `photo` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'foto',
  `state` tinyint(1) NOT NULL COMMENT 'estado',
  `birth` date NOT NULL COMMENT 'nacimiento',
  `age` tinyint(3) NOT NULL COMMENT 'edad',
  `entryDate` date NOT NULL COMMENT 'fecha entrada',
  `leavingDate` date DEFAULT NULL COMMENT 'fecha salida',
  `position` text COLLATE utf8_bin NOT NULL COMMENT 'puesto',
  `deparment` text COLLATE utf8_bin NOT NULL COMMENT 'area',
  `criticCharge` tinyint(1) NOT NULL COMMENT 'cargo critico',
  `address` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'direccion',
  `curp` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'curp',
  `rfc` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'rfc',
  `nss` tinyint(255) NOT NULL COMMENT 'nss',
  `bloodType` tinyint(2) NOT NULL COMMENT 'tipo de sangre',
  `lastDateMedicalExam` date NOT NULL COMMENT 'ultimo examen medico',
  `antidopingExpiration` date NOT NULL COMMENT 'expiracion de antidoping',
  `noBackgroundExpiration` date NOT NULL COMMENT 'expiracion de no antecendentes',
  `expirationPsychophysicalRecord` date NOT NULL COMMENT 'vencimiento de psicofisica',
  `CAAT` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'caat empresa',
  `apiCompany` tinyint(255) NOT NULL COMMENT 'api empresa',
  `apiOperator` tinyint(255) NOT NULL COMMENT 'api operador',
  `allergies` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'alergias',
  `diseases` tinyint(1) NOT NULL COMMENT 'enfermedades o padecimiento',
  `phone` tinyint(10) NOT NULL COMMENT 'telefono',
  `noLicense` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'numero licencia',
  `licenseExpiration` date NOT NULL COMMENT 'vencimiento licencia',
  `emergencyPhone` tinyint(10) NOT NULL COMMENT 'telefono de emergencia',
  `contact` text COLLATE utf8_bin NOT NULL COMMENT 'persona a contactar',
  `psychometricStudy` tinyint(1) NOT NULL COMMENT 'estudio psicomentrico',
  `idFiliation` int(3) NOT NULL COMMENT 'filiacion',
  `idWorkHistory` tinyint(10) NOT NULL COMMENT 'antecedentes laborales',
  `r_control` tinyint(1) NOT NULL COMMENT 'persona con r-control',
  `courses` tinyint(1) NOT NULL COMMENT 'cursos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `filiacion`
--
ALTER TABLE `filiacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hijos`
--
ALTER TABLE `hijos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `filiacion`
--
ALTER TABLE `filiacion`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hijos`
--
ALTER TABLE `hijos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `login` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
