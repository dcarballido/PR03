-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2020 a las 17:00:11
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `20200130_bbdd_mycontacts_con_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `firstname_contact` varchar(255) NOT NULL,
  `lastname_contact` varchar(255) NOT NULL,
  `phone1_contact` varchar(255) NOT NULL,
  `phone2_contact` varchar(255) DEFAULT NULL,
  `phone3_contact` varchar(255) DEFAULT NULL,
  `email1_contact` varchar(255) DEFAULT NULL,
  `email2_contact` varchar(255) DEFAULT NULL,
  `location1_contact` varchar(255) DEFAULT NULL,
  `location2_contact` varchar(255) DEFAULT NULL,
  `id_user_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id_contact`, `firstname_contact`, `lastname_contact`, `phone1_contact`, `phone2_contact`, `phone3_contact`, `email1_contact`, `email2_contact`, `location1_contact`, `location2_contact`, `id_user_contact`) VALUES
(1, 'Marc', 'Camós Garcia', '987654321', '123456789', NULL, 'mcamos@gmail.com', NULL, NULL, NULL, 1),
(2, 'Gerard', 'Pazos Garcia', '987654321', NULL, '123456789', 'gpazos@gmail.com', NULL, NULL, NULL, 1),
(3, 'Aarón', 'Otero Tarrazón', '987654321', '123456789', '987654321', NULL, 'aotero@gmail.com', NULL, NULL, 1),
(4, 'Edgar', 'Godoy Morote', '123456789', NULL, '987654321', 'godoy@gmail.com', 'morote@gmail.com', NULL, NULL, 2),
(5, 'Fernando', 'Navarro Garcia', '987654321', '987654345', '123456765', 'fer@gmail.com', 'nava@gmail.com', NULL, NULL, 2),
(6, 'Marc', 'Paradell Gato', '876543234', '987654321', '123456765', 'gato@gmail.com', 'parad@gmail.com', NULL, NULL, 2),
(7, 'Joel', 'Fandos Sánchez', '987654321', '983454322', NULL, 'fandos@gmail.com', 'joel@gmail.com', NULL, NULL, 3),
(8, 'Raul', 'Vazquez Pedrera', '987654321', '123456543', NULL, 'raul@gmail.com', NULL, NULL, NULL, 3),
(9, 'Dainel', 'Sanchez Garcia', '987654321', NULL, NULL, 'dshchez@gmail.com', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_mycontacts` varchar(255) NOT NULL,
  `firstname_user` varchar(255) NOT NULL,
  `lastname_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `phone_user` varchar(255) NOT NULL,
  `location_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `id_mycontacts`, `firstname_user`, `lastname_user`, `password_user`, `email_user`, `phone_user`, `location_user`) VALUES
(1, 'dcarballido', 'Diego', 'Carballido', '81dc9bdb52d04dc20036dbd8313ed055', 'd.carballido@gmail.com', '3453453451', NULL),
(2, 'asalas', 'Alex', 'Salas', '81dc9bdb52d04dc20036dbd8313ed055', 'a.salas@gmail.com', '3453453452', NULL),
(3, 'srueda', 'Sergio', 'Rueda', '81dc9bdb52d04dc20036dbd8313ed055', 's.rueda@gmail.com', '3453453453', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `fk_user_contact` (`id_user_contact`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_user_contact` FOREIGN KEY (`id_user_contact`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
