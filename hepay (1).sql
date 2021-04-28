-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 10:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hepay`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorlogin`
--

CREATE TABLE `doctorlogin` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `fname` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `sname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorlogin`
--

INSERT INTO `doctorlogin` (`id`, `email`, `fname`, `password`, `phone`, `sname`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '078888888888', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalinfos`
--

CREATE TABLE `hospitalinfos` (
  `id` int(11) NOT NULL,
  `hospitalname` text NOT NULL,
  `hospitalphone` text NOT NULL,
  `hospitalid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitalinfos`
--

INSERT INTO `hospitalinfos` (`id`, `hospitalname`, `hospitalphone`, `hospitalid`) VALUES
(1, 'Masaka Hospital', '+250787967482', 'MSK'),
(2, 'Kanombe Hospital', '+250787967482', 'KNB');

-- --------------------------------------------------------

--
-- Table structure for table `servicegroup`
--

CREATE TABLE `servicegroup` (
  `grpid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `groupname` text NOT NULL,
  `insurance` text NOT NULL,
  `insuranceammount` text NOT NULL,
  `insurancepaidammount` text NOT NULL,
  `insurancerestammount` text NOT NULL,
  `paidammount` text NOT NULL,
  `patientammount` text NOT NULL,
  `patientid` text NOT NULL,
  `restammount` text NOT NULL,
  `totalammount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicegroup`
--

INSERT INTO `servicegroup` (`grpid`, `comment`, `groupname`, `insurance`, `insuranceammount`, `insurancepaidammount`, `insurancerestammount`, `paidammount`, `patientammount`, `patientid`, `restammount`, `totalammount`) VALUES
(21, '0', 'Covid', 'RSSB', '9000.0', '0', '9000.0', '0', '1000.0', 'MSK-001', '0', '10000.0'),
(22, 'transactionId: TRS012024348M1 , Phone:0787082328', 'grupe', 'RSSB', '10800.0', '0', '10800.0', '0', '1200.0', 'MSK-001', '0', '12000.0'),
(23, '0', 'umutwe', 'RSSB', '9000.0', '0', '9000.0', '0', '1000.0', 'MSK-001', '0', '10000.0'),
(24, 'transactionId: TRS012024348M1 , Phone:0787082328', 'pop', 'RSSB', '1080.0', '0', '1080.0', '0', '120.0', 'MSK-001', '0', '1200.0'),
(25, '0', 'Vaccine', 'RSSB', '9000.0', '0', '9000.0', '0', '1000.0', 'MSK-001', '0', '10000.0'),
(26, 'transactionId: MTN-0111291 , Phone:0787967482', 'coroonaa', 'RSSB', '15300.0', '0', '15300.0', '0', '1700.0', 'MSK-001', '0', '17000.0'),
(27, '0', 'abcd', 'none', '0.0', '0', '0.0', '0', '1000.0', 'MSK-001', '0', '1000.0'),
(28, '0', 'grupe', 'RSSB', '6300.0', '0', '6300.0', '0', '700.0', 'MSK-001', '0', '7000.0'),
(29, '0', 'korona', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(30, '0', 'ibucurane', 'RSSB', '9000.0', '0', '9000.0', '0', '1000.0', 'MSK-001', '0', '10000.0'),
(31, '0', 'korona', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(32, '0', 'korna', 'RSSB', '15840.0', '0', '15840.0', '0', '1760.0', 'MSK-001', '0', '17600.0'),
(33, '0', 'kovid', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(34, '0', 'kovid', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(35, '0', 'grupe', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(36, '0', 'inzoka', 'RSSB', '900.0', '0', '900.0', '0', '100.0', 'MSK-001', '0', '1000.0'),
(37, '0', 'ise', 'RSSB', '360.0', '0', '360.0', '0', '40.0', 'MSK-001', '0', '400.0'),
(38, '0', 'abbortion', 'RSSB', '2250.0', '0', '2250.0', '250.0', '250.0', 'MSK-001', '0', '2500.0');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ids` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `servicename` text NOT NULL,
  `pt` double NOT NULL,
  `pu` double NOT NULL,
  `qty` double NOT NULL,
  `paid` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ids`, `groupid`, `servicename`, `pt`, `pu`, `qty`, `paid`, `timestamp`) VALUES
(1, 2, 'consulitation', 1000, 1000, 1, 'true', '2021-01-21 22:26:24'),
(2, 2, 'imiti', 4000, 2000, 2, 'true', '2021-01-21 22:26:24'),
(3, 3, 'Imiti', 1000, 1000, 1, 'true', '2021-01-21 22:26:24'),
(4, 3, 'Quartem', 1000, 100, 10, 'true', '2021-01-21 22:26:24'),
(5, 4, 'cons', 14400, 1200, 12, 'true', '2021-01-21 22:26:24'),
(6, 5, 'Bandana', 200, 200, 1, 'true', '2021-01-21 22:26:24'),
(7, 5, 'pomade', 5000, 1000, 5, 'true', '2021-01-21 22:26:24'),
(8, 6, 'imiti', 1000, 100, 10, 'true', '2021-01-21 22:26:24'),
(9, 8, 'imiti', 1000, 100, 10, 'true', '2021-01-21 22:35:11'),
(10, 9, 'gusuzuma', 5000, 5000, 1, 'true', '2021-01-21 22:41:05'),
(11, 10, 'ibinini', 2000, 100, 20, 'true', '2021-01-21 22:44:45'),
(12, 11, 'ibipimo', 5000, 500, 10, 'true', '2021-01-21 22:52:30'),
(13, 12, 'leg', 12000, 12000, 1, 'true', '2021-01-21 22:52:30'),
(14, 13, 'imiti', 12000, 12000, 1, 'true', '2021-01-21 23:00:22'),
(15, 14, 'imiti', 10000, 1000, 10, 'true', '2021-01-21 23:02:48'),
(16, 15, 'gusuzuma', 1000, 1000, 1, 'true', '2021-01-27 14:21:25'),
(17, 15, 'imiti', 12000, 1000, 12, 'true', '2021-01-27 14:21:25'),
(18, 16, 'imiti', 1200, 100, 12, 'true', '2021-01-27 14:31:09'),
(19, 17, 'imti', 15000, 1000, 15, 'true', '2021-01-27 14:31:09'),
(20, 17, 'ibinini', 1000, 100, 10, 'true', '2021-01-27 14:31:09'),
(21, 18, 'imitiiiii', 10000, 1000, 10, 'true', '2021-01-27 14:44:26'),
(26, 20, 'imiti', 10000, 1000, 10, 'true', '2021-02-02 10:24:45'),
(27, 21, 'imituii', 10000, 1000, 10, 'true', '2021-02-02 10:34:19'),
(28, 22, 'cons', 12000, 1000, 12, 'true', '2021-02-02 10:41:34'),
(29, 23, 'ibinini', 10000, 1000, 10, 'true', '2021-02-02 10:43:43'),
(30, 24, 'jnjinio', 1200, 100, 12, 'true', '2021-02-02 11:00:22'),
(31, 25, 'imiti', 10000, 1000, 10, 'true', '2021-03-16 15:19:57'),
(32, 26, 'vaccine', 5000, 500, 10, 'true', '2021-03-16 15:52:59'),
(33, 26, 'wvacine', 12000, 1000, 12, 'true', '2021-03-16 20:09:03'),
(34, 27, 'abcdd', 1000, 1000, 1, 'true', '2021-04-01 20:51:26'),
(35, 28, 'imiti', 7000, 7000, 1, 'true', '2021-04-01 20:51:26'),
(36, 29, 'imiti', 1000, 100, 10, 'true', '2021-04-01 21:03:53'),
(37, 30, 'imiti', 10000, 100, 100, 'true', '2021-04-03 07:08:36'),
(38, 31, 'covid', 1000, 100, 10, 'true', '2021-04-13 12:48:29'),
(39, 32, 'imiti', 1000, 10, 100, 'true', '2021-04-13 13:04:51'),
(40, 32, 'imiti', 1200, 10, 120, 'true', '2021-04-13 13:05:57'),
(41, 32, 'imiti', 13000, 100, 130, 'true', '2021-04-13 13:17:16'),
(42, 32, 'imiti', 1200, 10, 120, 'true', '2021-04-13 13:19:25'),
(43, 32, 'imiti', 1200, 100, 12, 'true', '2021-04-13 13:23:08'),
(44, 33, 'ideni', 1000, 10, 100, 'true', '2021-04-13 13:26:35'),
(45, 34, 'cashier', 1000, 10, 100, 'true', '2021-04-13 13:31:49'),
(46, 35, 'imiti', 1000, 10, 100, 'true', '2021-04-13 13:51:05'),
(47, 36, 'imiti', 1000, 10, 100, 'true', '2021-04-13 14:02:02'),
(48, 37, 'imiti', 400, 20, 20, 'true', '2021-04-13 14:12:49'),
(49, 38, 'imiti', 2500, 100, 25, 'true', '2021-04-13 14:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `userinfos`
--

CREATE TABLE `userinfos` (
  `idv` int(11) NOT NULL,
  `districtv` text NOT NULL,
  `dobv` text NOT NULL,
  `emailv` text NOT NULL,
  `fnamev` text NOT NULL,
  `insurancepricev` text NOT NULL,
  `insurancev` text NOT NULL,
  `lnamev` text NOT NULL,
  `patientidv` text NOT NULL,
  `phonev` text NOT NULL,
  `provincev` text NOT NULL,
  `sectorv` text NOT NULL,
  `quotion` double NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `atopay` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfos`
--

INSERT INTO `userinfos` (`idv`, `districtv`, `dobv`, `emailv`, `fnamev`, `insurancepricev`, `insurancev`, `lnamev`, `patientidv`, `phonev`, `provincev`, `sectorv`, `quotion`, `comment`, `atopay`) VALUES
(1, 'Gasabo', '30.09.1995', 'yamubbenjamin@gmail.com', 'IYAMUREMYE', '90', 'RSSB', 'Benjamin', 'MSK-001', '+250787082328', 'Kigali', 'Rusororo', 250, 'undefinedtransactionId: MTN-0111291 , Phone:0787967482', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalinfos`
--
ALTER TABLE `hospitalinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicegroup`
--
ALTER TABLE `servicegroup`
  ADD PRIMARY KEY (`grpid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `userinfos`
--
ALTER TABLE `userinfos`
  ADD PRIMARY KEY (`idv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitalinfos`
--
ALTER TABLE `hospitalinfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servicegroup`
--
ALTER TABLE `servicegroup`
  MODIFY `grpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `userinfos`
--
ALTER TABLE `userinfos`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
