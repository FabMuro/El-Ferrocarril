-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2020 a las 15:24:03
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ferrocarril`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `username`, `password`) VALUES
(0, 'admin', '1234abcd..');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_menu`
--

INSERT INTO `tbl_menu` (`menuID`, `menuName`) VALUES
(8, 'Entradas'),
(9, 'Almuerzo'),
(10, 'Cena'),
(11, 'Bebidas'),
(12, 'kardex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menuitem`
--

CREATE TABLE `tbl_menuitem` (
  `itemID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuItemName` text NOT NULL,
  `price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_menuitem`
--

INSERT INTO `tbl_menuitem` (`itemID`, `menuID`, `menuItemName`, `price`) VALUES
(17, 8, 'Humitas', '2.00'),
(19, 8, 'Tortilla', '3.00'),
(20, 8, 'Carne en Bistec', '10.00'),
(21, 8, 'Sopa', '3.00'),
(22, 9, 'Arroz con Pato', '15.00'),
(23, 9, 'Causa Lambayecana', '16.00'),
(24, 9, 'Espesado', '14.00'),
(27, 9, 'Seco de cabrito', '13.00'),
(28, 9, 'Pollo Asado', '20.00'),
(37, 11, 'Coca cola (350 ML)', '10.00'),
(38, 11, 'Oro (250ML)', '9.00'),
(39, 11, 'Agua natural', '2.00'),
(40, 9, 'Lomo saltado', '6.00'),
(41, 11, 'Jugos', '2.50'),
(42, 11, 'Vino Tinto', '10.00'),
(43, 10, 'SÃ¡ndwich', '3.00'),
(44, 10, 'Sopa de verduras', '4.00'),
(45, 10, 'Tortilla', '5.00'),
(46, 10, 'CÃ³ctel', '10.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL,
  `status` text NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `status`, `total`, `order_date`) VALUES
(11, 'Completed', '9.00', '2020-10-20'),
(14, 'Completed', '5.00', '2020-10-22'),
(15, 'Completed', '25.00', '2020-10-29'),
(16, 'Completed', '15.00', '2020-11-09'),
(17, 'Completed', '26.00', '2020-11-09'),
(18, 'Completed', '17.00', '2020-11-09'),
(19, 'Completed', '18.00', '2020-11-09'),
(20, 'Completed', '25.00', '2020-11-19'),
(21, 'Completed', '19.00', '2020-11-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `orderID` int(11) NOT NULL,
  `orderDetailID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`orderID`, `orderDetailID`, `itemID`, `quantity`) VALUES
(1, 1, 14, 1),
(2, 2, 13, 1),
(2, 3, 14, 1),
(2, 4, 15, 1),
(2, 5, 16, 1),
(3, 6, 25, 1),
(3, 7, 38, 1),
(3, 8, 32, 1),
(4, 9, 17, 1),
(4, 10, 30, 1),
(5, 11, 17, 2),
(6, 12, 23, 1),
(6, 13, 26, 1),
(6, 14, 36, 1),
(7, 15, 29, 2),
(7, 16, 32, 2),
(8, 17, 21, 2),
(8, 18, 36, 2),
(9, 19, 29, 1),
(9, 20, 36, 1),
(10, 21, 39, 1),
(11, 22, 21, 1),
(12, 23, 29, 1),
(13, 24, 30, 1),
(14, 25, 41, 2),
(15, 26, 22, 1),
(15, 27, 37, 1),
(16, 28, 40, 1),
(16, 29, 38, 1),
(17, 30, 23, 1),
(17, 31, 37, 1),
(18, 32, 17, 1),
(18, 33, 22, 1),
(19, 34, 17, 1),
(19, 35, 23, 1),
(20, 36, 21, 1),
(20, 37, 28, 1),
(20, 38, 39, 1),
(21, 39, 24, 1),
(21, 40, 39, 1),
(21, 41, 19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_role`
--

INSERT INTO `tbl_role` (`role`) VALUES
('chef'),
('Mesero'),
('Cajero'),
('Almacenero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staffID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_staff`
--

INSERT INTO `tbl_staff` (`staffID`, `username`, `password`, `status`, `role`) VALUES
(4, 'Pedro', '1234abcd..', 'Online', 'Mesero'),
(11, 'Ivan', '1234abcd..', 'Offline', 'Mesero'),
(12, 'David', '1234abcd..', 'Online', 'Cajero'),
(13, 'Diego', '1234abcd..', 'Offline', 'Almacenero'),
(14, 'Hasler', '1234abcd..', 'Online', 'chef');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indices de la tabla `tbl_menuitem`
--
ALTER TABLE `tbl_menuitem`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `menuID` (`menuID`);

--
-- Indices de la tabla `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indices de la tabla `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD PRIMARY KEY (`orderDetailID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indices de la tabla `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staffID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_menuitem`
--
ALTER TABLE `tbl_menuitem`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  MODIFY `orderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staffID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
