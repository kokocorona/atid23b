-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 03:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phones`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuel_store`
--

CREATE TABLE `fuel_store` (
  `id` int(15) NOT NULL,
  `hour` varchar(200) NOT NULL,
  `date` varchar(250) NOT NULL,
  `letters` int(15) NOT NULL,
  `buy_snack` int(15) NOT NULL,
  `buy_tire` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuel_store`
--

INSERT INTO `fuel_store` (`id`, `hour`, `date`, `letters`, `buy_snack`, `buy_tire`) VALUES
(6, '15:53', '2020-02-29', 0, 1, 0),
(10, '03:00', '2020-03-02', 100, 0, 0),
(14, '02:15', '2020-03-15', 100, 0, 0),
(15, '05:25', '2020-03-15', 115, 1, 0),
(16, '08:45', '2020-03-15', 120, 1, 0),
(17, '11:40', '2020-03-15', 120, 0, 0),
(18, '12:30', '2020-03-15', 0, 1, 0),
(19, '14:30', '2020-03-15', 120, 1, 0),
(20, '14:30', '2020-03-15', 120, 1, 0),
(21, '19:30', '2020-03-15', 110, 0, 0),
(22, '22:20', '2020-03-15', 120, 1, 0),
(23, '04:50', '2020-03-16', 120, 1, 1),
(24, '10:00', '2020-03-16', 120, 0, 0),
(25, '13:30', '2020-03-16', 90, 1, 0),
(26, '18:30', '2020-03-16', 120, 1, 0),
(27, '22:00', '2020-03-16', 105, 1, 0),
(28, '05:00', '2020-03-17', 60, 0, 0),
(29, '08:00', '2020-03-17', 100, 1, 0),
(30, '10:45', '2020-03-17', 90, 0, 0),
(31, '14:15', '2020-03-17', 120, 1, 0),
(32, '19:45', '2020-03-17', 115, 0, 0),
(33, '23:30', '2020-03-17', 120, 1, 0),
(34, '07:30', '2020-03-18', 110, 1, 0),
(35, '10:30', '2020-03-18', 120, 1, 0),
(36, '14:00', '2020-03-18', 100, 1, 1),
(37, '16:45', '2020-03-18', 100, 1, 0),
(38, '19:35', '2020-03-18', 115, 0, 0),
(39, '22:45', '2020-03-18', 120, 1, 0),
(40, '04:30', '2020-03-19', 100, 0, 0),
(41, '07:30', '2020-03-19', 115, 0, 0),
(42, '10:30', '2020-03-19', 100, 1, 0),
(43, '14:00', '2020-03-19', 90, 1, 0),
(44, '17:30', '2020-03-19', 110, 0, 0),
(45, '20:30', '2020-03-19', 105, 1, 0),
(46, '22:15', '2020-03-19', 70, 0, 0),
(47, '04:30', '2020-03-20', 115, 0, 0),
(48, '07:30', '2020-03-20', 70, 1, 0),
(49, '10:05', '2020-03-20', 60, 0, 0),
(50, '12:00', '2020-03-20', 90, 1, 0),
(51, '15:30', '2020-03-20', 120, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fuel_store`
--
ALTER TABLE `fuel_store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fuel_store`
--
ALTER TABLE `fuel_store`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
