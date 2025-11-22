-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2025 at 08:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `semiColon_db`
--

CREATE DATABASE `semiColon_db`;
USE `semiColon_db`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Id` int(16) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` enum('user','admin') DEFAULT 'user',
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Id`, `Nama`, `Password`, `Role`, `Email`) VALUES
(1, 'Hipni', '4c65d8f388496ba296d385cb5c97660a', 'admin', 'HipniHacker@gmail.com'),
(2, 'Ahmad Tijani', '0a78ecf738999f59ff836bd8f920ca91', 'admin', 'Janiiwak1@gmail.com'),
(3, 'Ahnmad Helmi Ronawan', '01e8fd14d47a2a4223549f8dbe0cb231', 'admin', 'Hellmi@gmail.com'),
(4, 'Muhammad Rizky', '169d7d0ebef4f9fdf0ffb4c5675a046e', 'user', 'iki99@gmail.com'),
(5, 'Muhammad Firdaus', '06b1225c5c06f2d95e70ac0c66a0935f', 'user', 'UUSTOMAT@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
