-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 09, 2023 at 03:34 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(256) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Inventory` int(11) NOT NULL,
  `Ski_Type` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ProductID`, `ProductName`, `Price`, `Inventory`, `Ski_Type`) VALUES
(1, 'Bindings', '150.00', 63, 'All Types'),
(2, 'Goggles', '100.00', 49, 'All Types'),
(3, 'Transceiver', '60.00', 12, 'All Types'),
(4, 'Helmet', '95.00', 87, 'All Types'),
(5, 'Poles', '150.00', 63, 'All Types'),
(6, 'Skis', '600.00', 42, 'Park Type'),
(7, 'Skis', '800.00', 37, 'Powder Type'),
(8, 'Skis', '1200.00', 18, 'Custom Type'),
(9, 'Boots', '200.00', 26, 'Park Type'),
(10, 'Boots', '300.00', 93, 'Powder Type'),
(11, 'Boots', '400.00', 61, 'Custom Type'),
(12, 'Gloves', '40.00', 47, 'All Types'),
(13, 'Coats', '250.00', 95, 'All Types'),
(14, 'Neckwarmer', '20.00', 41, 'All Types'),
(15, 'Water Bottle', '30.00', 68, 'All Types'),
(16, 'Lift Day Pass', '150.00', 35, 'All Types'),
(17, 'Sunglasses', '30.00', 84, 'All Types'),
(18, 'Backpack', '80.00', 52, 'All Types'),
(19, 'Chapstick', '3.00', 72, 'All Types'),
(20, 'Trail Mix', '5.00', 50, 'All Types');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
