-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 02:17:49
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaContratacion` date DEFAULT (curdate()),
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `puesto`, `salario`, `email`) VALUES
(1, 'Carlos Méndez', '1985-04-12', '2020-06-01', 'Gerente', 3500.00, 'carlos.mendez@tienda.com'),
(2, 'Laura Pérez', '1992-11-05', '2021-01-15', 'Vendedora', 1800.00, 'laura.perez@tienda.com'),
(3, 'José Rodríguez', '1988-07-23', '2019-03-20', 'Supervisor de Almacén', 2500.00, 'jose.rodriguez@tienda.com'),
(4, 'Ana Gómez', '1995-09-11', '2022-04-10', 'Cajera', 1600.00, 'ana.gomez@tienda.com'),
(5, 'Miguel Sánchez', '1982-02-27', '2018-08-30', 'Encargado de Marketing', 3000.00, 'miguel.sanchez@tienda.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
