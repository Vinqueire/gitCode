-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 08:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wynajem`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokoje`
--

CREATE TABLE `pokoje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` tinytext DEFAULT NULL,
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokoje`
--

INSERT INTO `pokoje` (`id`, `nazwa`, `cena`) VALUES
(1, 'jednoosobowy', 115),
(2, 'dwuosobowy', 196),
(3, 'trzyosobowy', 242);

-- --------------------------------------------------------

--
-- Table structure for table `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id_rez` int(10) UNSIGNED NOT NULL,
  `id_pok` int(10) UNSIGNED DEFAULT NULL,
  `liczba_dn` int(10) UNSIGNED DEFAULT NULL,
  `sezon` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezerwacje`
--

INSERT INTO `rezerwacje` (`id_rez`, `id_pok`, `liczba_dn`, `sezon`) VALUES
(1, 1, 10, 'lato'),
(2, 2, 2, 'zima'),
(3, 1, 5, 'lato'),
(4, 2, 6, 'zima'),
(5, 1, 5, 'lato'),
(6, 3, 9, 'zima'),
(7, 1, 8, 'zima'),
(8, 2, 3, 'lato'),
(9, 1, 3, 'lato'),
(10, 3, 4, 'lato');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokoje`
--
ALTER TABLE `pokoje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id_rez`),
  ADD KEY `id_pok` (`id_pok`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`id_pok`) REFERENCES `pokoje` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
