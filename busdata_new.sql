-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 03:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busdata_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `bus_id` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_id`, `location`, `status`, `price`, `date`) VALUES
(8, '1', 'Kuranji', 'Available', 2, '2023-12-26'),
(9, '2', 'Lubuk Begalung', 'Available', 3, '2023-12-25'),
(10, '3', 'Lubuk Kilangan', 'Available', 5, '2023-12-28'),
(11, '4', 'Padang Barat', 'Available', 4, '2023-12-25'),
(12, '5', 'Padang Utara', 'Available', 2, '2023-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(100) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `bus_id` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `seatNum` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `firstName`, `lastName`, `gender`, `phoneNumber`, `bus_id`, `location`, `type`, `seatNum`, `total`, `date`) VALUES
(15, 1, 'Abdul', 'Hafiz', 'Pria', '081387244212', 1, 'Kuranji', 'First Class', 1, 102, '2023-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `customer_receipt`
--

CREATE TABLE `customer_receipt` (
  `id` int(100) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_receipt`
--

INSERT INTO `customer_receipt` (`id`, `customer_id`, `total`, `date`) VALUES
(14, 1, 102, '2023-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `question`, `answer`, `date`) VALUES
(6, 'abdulhafiz', '12345678', 'Apa warna kesukaanmu?', 'Merah', '2023-12-17'),
(7, 'abdul', '12345678', 'Apa warna kesukaanmu?', 'Biru', '2023-12-17'),
(8, 'pengguna', '12345678', 'Apa makanan favoritmu?', 'Ayam Geprek', '2023-12-17'),
(9, 'hafiz', '13022004', 'Apa warna kesukaanmu?', 'Merah', '2023-12-24'),
(10, 'abdulha', '12345678', 'Apa warna kesukaanmu?', 'Biru', '2023-12-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_receipt`
--
ALTER TABLE `customer_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_receipt`
--
ALTER TABLE `customer_receipt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
