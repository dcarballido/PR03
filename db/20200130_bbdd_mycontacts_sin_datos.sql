-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 30, 2020 at 03:07 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `firstname_user` varchar(255) NOT NULL,
  `lastname_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `phone_user` varchar(255) NOT NULL,
  `location_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_user_contact` FOREIGN KEY (`id_user_contact`) REFERENCES `user` (`id_user`);
