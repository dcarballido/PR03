-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 30, 2020 at 03:04 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mycontactsdb`
--
CREATE DATABASE IF NOT EXISTS `mycontactsdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mycontactsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--
-- Creation: Jan 30, 2020 at 02:29 PM
-- Last update: Jan 30, 2020 at 03:02 PM
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_contact` varchar(255) NOT NULL,
  `lastname_contact` varchar(255) NOT NULL,
  `phone1_contact` varchar(255) NOT NULL,
  `phone2_contact` varchar(255) DEFAULT NULL,
  `phone3_contact` varchar(255) DEFAULT NULL,
  `email1_contact` varchar(255) DEFAULT NULL,
  `email2_contact` varchar(255) DEFAULT NULL,
  `location1_contact` varchar(255) DEFAULT NULL,
  `location2_contact` varchar(255) DEFAULT NULL,
  `id_user_contact` int(11) NOT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `fk_user_contact` (`id_user_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
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
-- Table structure for table `user`
--
-- Creation: Jan 30, 2020 at 08:23 AM
-- Last update: Jan 30, 2020 at 02:40 PM
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_user` varchar(255) NOT NULL,
  `lastname_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `phone_user` varchar(255) NOT NULL,
  `location_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `firstname_user`, `lastname_user`, `password_user`, `email_user`, `phone_user`, `location_user`) VALUES
(1, 'Diego', 'Carballido Valle', '81dc9bdb52d04dc20036dbd8313ed055', 'diego.carballido@icloud.com', '619500622', NULL),
(2, 'Alex', 'Salas Molina', '81dc9bdb52d04dc20036dbd8313ed055', 'alex.salas@gmail.com', '653472408', NULL),
(3, 'Sergio', 'Rueda Jiménez', '81dc9bdb52d04dc20036dbd8313ed055', 'sergio.rueda@gmail.com', '654789321', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_user_contact` FOREIGN KEY (`id_user_contact`) REFERENCES `user` (`id_user`);
