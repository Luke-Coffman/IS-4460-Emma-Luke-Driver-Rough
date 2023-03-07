-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 07, 2023 at 03:56 PM
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
-- Table structure for table `Returns`
--

CREATE TABLE `Returns` (
  `ReturnID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Returns`
--

INSERT INTO `Returns` (`ReturnID`, `Date`, `OrderID`) VALUES
(1, '2023-02-01', 1),
(2, '2023-02-01', 2),
(3, '2023-01-11', 3),
(4, '2023-01-06', 4),
(5, '2023-01-23', 5),
(6, '2023-02-24', 6),
(7, '2023-01-31', 7),
(8, '2022-12-23', 8),
(9, '2023-01-09', 9),
(10, '2023-02-20', 10),
(11, '2023-02-13', 11),
(12, '2023-01-25', 12),
(13, '2023-02-12', 13),
(14, '2023-02-04', 14),
(15, '2023-01-02', 15),
(16, '2023-01-29', 16),
(17, '2023-02-26', 17),
(18, '2023-01-23', 18),
(19, '2023-01-01', 19),
(20, '2023-02-23', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Returns`
--
ALTER TABLE `Returns`
  ADD PRIMARY KEY (`ReturnID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Returns`
--
ALTER TABLE `Returns`
  MODIFY `ReturnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
