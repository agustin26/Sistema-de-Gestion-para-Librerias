-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2021 a las 16:08:56
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `client_email`, `created_at`) VALUES
(1, 'agustinlep2013@gmail.com', '2021-11-02 09:48:01'),
(2, 'agustinlep2013@gmail.com', '2021-11-02 09:51:24'),
(3, 'agustinlep2013@gmail.com', '2021-11-02 18:52:53'),
(4, 'agustinlep2013@gmail.com', '2021-11-02 18:55:09'),
(5, 'agustinlep2013@gmail.com', '2021-11-02 18:56:07'),
(6, 'agustinlep2013@gmail.com', '2021-11-02 18:57:41'),
(7, 'agustinlep2013@gmail.com', '2021-11-02 19:23:40'),
(8, 'agustinlep2013@gmail.com', '2021-11-02 19:23:53'),
(9, 'agustinlep2013@gmail.com', '2021-11-02 19:29:41'),
(10, 'agustinlep2013@gmail.com', '2021-11-02 19:29:56'),
(11, 'agustinlep2013@gmail.com', '2021-11-02 19:32:56'),
(12, 'agustinlep2013@gmail.com', '2021-11-02 19:33:14'),
(13, 'agustinlep2013@gmail.com', '2021-11-02 19:33:33'),
(14, 'agustinlep2013@gmail.com', '2021-11-02 19:33:48'),
(15, 'agustinlep2013@gmail.com', '2021-11-02 19:34:06'),
(16, 'agustinlep2013@gmail.com', '2021-11-02 19:34:26'),
(17, 'agustinlep2013@gmail.com', '2021-11-02 19:36:02'),
(18, 'agustinlep2013@gmail.com', '2021-11-02 21:05:58'),
(19, 'agustinlep2013@gmail.com', '2021-11-02 21:07:50'),
(20, 'agustinlep2013@gmail.com', '2021-11-02 21:09:04'),
(21, 'agustinlep2013@gmail.com', '2021-11-04 09:32:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `q` float DEFAULT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cart_product`
--

INSERT INTO `cart_product` (`id`, `product_id`, `q`, `cart_id`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 1, 1, 3),
(4, 1, 1, 4),
(5, 1, 1, 5),
(6, 1, 1, 6),
(7, 1, 1, 7),
(8, 1, 1, 8),
(9, 1, 1, 9),
(10, 1, 1, 10),
(11, 1, 1, 11),
(12, 2, 1, 12),
(13, 1, 1, 13),
(14, 2, 3, 14),
(15, 2, 2, 15),
(16, 2, 2, 16),
(17, 2, 2, 17),
(18, 3, 5, 18),
(19, 3, 4, 19),
(20, 3, 1, 20),
(21, 3, 4, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `CODIGO_CIUDAD` int(11) NOT NULL,
  `nombre_ciudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`CODIGO_CIUDAD`, `nombre_ciudad`) VALUES
(1, 'Posadas'),
(2, 'candelaria'),
(3, 'Jardin America');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `venta` int(11) DEFAULT NULL,
  `producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subTotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `CODIGO_FACTURA` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `PERSONA_CODIGO_CLIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `CODIGO_CLIENTE` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `empleado` tinyint(4) NOT NULL,
  `CIUDAD_CODIGO_CIUDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`CODIGO_CLIENTE`, `nombre`, `apellido`, `telefono`, `correo`, `empleado`, `CIUDAD_CODIGO_CIUDAD`) VALUES
(1, 'Agustin', 'Lepori', '4623', 'asd@adasd', 1, 2),
(2, 'aaeaeaw', 'earsfd', '4623', 'adasd@asfasf', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CODIGO_PRODUCTO` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` decimal(2,0) NOT NULL,
  `tipo_producto` int(11) NOT NULL,
  `PROVEEDOR_CODIGO_PROVEEDOR` int(11) NOT NULL,
  `STOCK_CODIGO_STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CODIGO_PRODUCTO`, `descripcion`, `precio`, `tipo_producto`, `PROVEEDOR_CODIGO_PROVEEDOR`, `STOCK_CODIGO_STOCK`) VALUES
(1, 'azul punta gruesa', '20', 2, 2, 200),
(2, 'celeste', '20', 2, 1, 100),
(3, 'Amarilla', '30', 1, 1, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `CODIGO_PROVEEDOR` int(11) NOT NULL,
  `nombre_proveedor` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`CODIGO_PROVEEDOR`, `nombre_proveedor`, `telefono`, `direccion`) VALUES
(1, 'silvina', '646465', 'los alamos 748'),
(2, 'marto', '76598465', 'av lavalle 787'),
(3, 'Mirian', '646', 'casa 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `CODIGO_STOCK` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`CODIGO_STOCK`, `fecha_entrada`, `cantidad`) VALUES
(100, '2021-09-01', 100),
(200, '2021-09-01', 136);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `CODIGO_TIPO_PRODUCTO` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `marca` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`CODIGO_TIPO_PRODUCTO`, `nombre`, `marca`) VALUES
(1, 'birome', 'bic'),
(2, 'resaltador', 'bic');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`CODIGO_CIUDAD`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`CODIGO_FACTURA`,`PERSONA_CODIGO_CLIENTE`),
  ADD KEY `fk_FACTURA_PERSONA1_idx` (`PERSONA_CODIGO_CLIENTE`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`CODIGO_CLIENTE`,`CIUDAD_CODIGO_CIUDAD`),
  ADD KEY `fk_PERSONA_CIUDAD1_idx` (`CIUDAD_CODIGO_CIUDAD`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`CODIGO_PRODUCTO`),
  ADD KEY `fk_PRODUCTOS_TIPO_PRODUCTO1_idx` (`tipo_producto`),
  ADD KEY `fk_PRODUCTOS_PROVEEDOR1_idx` (`PROVEEDOR_CODIGO_PROVEEDOR`),
  ADD KEY `fk_PRODUCTOS_STOCK1_idx` (`STOCK_CODIGO_STOCK`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`CODIGO_PROVEEDOR`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`CODIGO_STOCK`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`CODIGO_TIPO_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `CODIGO_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`PERSONA_CODIGO_CLIENTE`) REFERENCES `persona` (`CODIGO_CLIENTE`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`CIUDAD_CODIGO_CIUDAD`) REFERENCES `ciudad` (`CODIGO_CIUDAD`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`tipo_producto`) REFERENCES `tipo_producto` (`CODIGO_TIPO_PRODUCTO`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`PROVEEDOR_CODIGO_PROVEEDOR`) REFERENCES `proveedor` (`CODIGO_PROVEEDOR`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`STOCK_CODIGO_STOCK`) REFERENCES `stock` (`CODIGO_STOCK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
