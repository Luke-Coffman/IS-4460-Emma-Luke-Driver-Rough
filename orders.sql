-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 08, 2023 at 04:14 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Kitten Factory Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `EMP_ID` int(11) NOT NULL,
  `CUST_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL,
  `PMT_ID` int(11) NOT NULL,
  `Description` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `EMP_ID`, `CUST_ID`, `DATE`, `Total_Price`, `PMT_ID`, `Description`) VALUES
(1, 1, 1, '2023-03-05', '535.99', 1, 'Order contains 1 or more of: Boots, Skis, Hat'),
(2, 2, 2, '2023-01-17', '3001.23', 2, 'Order contains 1 or more of: Bindings, Skis, Hat'),
(3, 3, 3, '2023-02-23', '1269.73', 3, 'Order contains 1 or more of: Gloves, Skis, Hat'),
(4, 4, 4, '2023-03-01', '2354.92', 4, 'Order contains 1 or more of: Boots, Skis, Gloves'),
(5, 5, 5, '2023-02-07', '1138.79', 5, 'Order contains 1 or more of: Neckwarmer, Skis, Hat'),
(6, 6, 6, '2023-01-31', '4717.62', 6, 'Order contains 1 or more of: Gloves, Skis, Water Bottle'),
(7, 7, 7, '2022-12-28', '129.31', 7, 'Order contains 1 or more of: Lift Day Pass, Skis, Hat'),
(8, 8, 8, '2023-02-15', '3816.29', 8, 'Order contains 1 or more of: Chaptstick, Skis, Hat'),
(9, 9, 9, '2023-01-27', '972.18', 9, 'Order contains 1 or more of: Gloves, Skis, Sunglasses'),
(10, 10, 10, '2023-01-23', '2489.83', 10, 'Order contains 1 or more of: Skis, Trail Mix, Hat'),
(11, 11, 11, '2022-12-25', '2753.28', 11, 'Order contains 1 or more of: Boots, Skis, Hat'),
(12, 12, 12, '2023-01-19', '575.02', 12, 'Order contains 1 or more of: Gloves, Skis, Hat'),
(13, 13, 13, '2023-02-13', '4006.83', 13, 'Order contains 1 or more of: Helmet, Skis, Gloves'),
(14, 14, 14, '2023-01-24', '4471.20', 14, 'Order contains 1 or more of: Backpack, Helmet, Skis'),
(15, 15, 15, '2023-02-04', '418.85', 15, 'Order contains 1 or more of: Transceiver, Skis, Hat'),
(16, 16, 16, '2023-01-18', '3069.20', 16, 'Order contains 1 or more of: Boots, Skis, Hat'),
(17, 17, 17, '2023-02-14', '142.37', 17, 'Order contains 1 or more of: Helmet, Gloves, Skis, '),
(18, 18, 18, '2023-02-16', '4397.84', 18, 'Order contains 1 or more of: Skis, Lift Day Pass, Hat'),
(19, 19, 19, '2023-01-08', '1388.93', 19, 'Order contains 1 or more of: Sunglasses, Skis, Hat'),
(20, 20, 20, '2023-02-22', '3592.00', 20, 'Order contains 1 or more of: Helmet, Skis, Gloves');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
