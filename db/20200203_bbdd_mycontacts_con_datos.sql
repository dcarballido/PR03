-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 03, 2020 at 04:28 PM
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
-- Creation: Feb 03, 2020 at 04:10 PM
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `img_contact` varchar(255) DEFAULT NULL,
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
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `img_contact`, `firstname_contact`, `lastname_contact`, `phone1_contact`, `phone2_contact`, `phone3_contact`, `email1_contact`, `email2_contact`, `location1_contact`, `location2_contact`, `id_user_contact`) VALUES
(1, NULL, 'Marc', 'Camós Garcia', '987654321', '123456789', NULL, 'mcamos@gmail.com', NULL, NULL, NULL, 1),
(2, NULL, 'Gerard', 'Pazos Garcia', '987654321', NULL, '123456789', 'gpazos@gmail.com', NULL, NULL, NULL, 1),
(3, NULL, 'Aarón', 'Otero Tarrazón', '987654321', '123456789', '987654321', NULL, 'aotero@gmail.com', NULL, NULL, 1),
(4, NULL, 'Edgar', 'Godoy Morote', '123456789', NULL, '987654321', 'godoy@gmail.com', 'morote@gmail.com', NULL, NULL, 2),
(5, NULL, 'Fernando', 'Navarro Garcia', '987654321', '987654345', '123456765', 'fer@gmail.com', 'nava@gmail.com', NULL, NULL, 2),
(6, NULL, 'Marc', 'Paradell Gato', '876543234', '987654321', '123456765', 'gato@gmail.com', 'parad@gmail.com', NULL, NULL, 2),
(7, NULL, 'Joel', 'Fandos Sánchez', '987654321', '983454322', NULL, 'fandos@gmail.com', 'joel@gmail.com', NULL, NULL, 3),
(8, NULL, 'Raul', 'Vazquez Pedrera', '987654321', '123456543', NULL, 'raul@gmail.com', NULL, NULL, NULL, 3),
(9, NULL, 'Dainel', 'Sanchez Garcia', '987654321', NULL, NULL, 'dshchez@gmail.com', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prefixes`
--
-- Creation: Feb 03, 2020 at 04:22 PM
-- Last update: Feb 03, 2020 at 04:27 PM
--

CREATE TABLE `prefixes` (
  `prefix` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prefixes`
--

INSERT INTO `prefixes` (`prefix`, `country`) VALUES
('34', 'España'),
('33', 'Francia'),
('376', 'Andorra'),
('351', 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Feb 03, 2020 at 04:07 PM
-- Last update: Feb 03, 2020 at 04:07 PM
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_mycontacts`, `firstname_user`, `lastname_user`, `password_user`, `email_user`, `phone_user`, `location_user`) VALUES
(1, 'dcarballido', 'Diego', 'Carballido', '81dc9bdb52d04dc20036dbd8313ed055', 'd.carballido@gmail.com', '3453453451', NULL),
(2, 'asalas', 'Alex', 'Salas', '81dc9bdb52d04dc20036dbd8313ed055', 'a.salas@gmail.com', '3453453452', NULL),
(3, 'srueda', 'Sergio', 'Rueda', '81dc9bdb52d04dc20036dbd8313ed055', 's.rueda@gmail.com', '3453453453', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `fk_user_contact` (`id_user_contact`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_user_contact` FOREIGN KEY (`id_user_contact`) REFERENCES `user` (`id_user`);
