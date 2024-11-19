-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 02:17:09
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
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `descripcion` text,
  `fechaFabricacion` date DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`idInventario`, `codigoProducto`, `nombreProducto`, `descripcion`, `fechaFabricacion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'Laptop Dell', 'Laptop Dell Inspiron 15', '2024-01-15', '2024-11-19 02:12:21', 10, 500.00, 700.00),
(2, 'PROD002', 'Monitor Samsung 24 pulgadas', 'Monitor LED Samsung de 24 pulgadas', '2024-02-15', '2024-11-19 02:12:21', 25, 120.00, 180.00),
(3, 'PROD003', 'Mouse Logitech', 'Mouse inalámbrico Logitech', '2024-03-01', '2024-11-19 02:12:21', 50, 15.00, 30.00),
(4, 'PROD004', 'Teclado Mecánico', 'Teclado mecánico retroiluminado RGB', '2024-03-10', '2024-11-19 02:12:21', 40, 60.00, 100.00),
(5, 'PROD005', 'Impresora HP', 'Impresora multifuncional HP con wifi', '2024-03-20', '2024-11-19 02:12:21', 30, 200.00, 350.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
