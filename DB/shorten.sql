-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2018 at 10:23 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shorten`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `code`, `created`) VALUES
(10000000, 'http://google.com', 'google123', '2018-11-12 01:19:02'),
(10000001, 'http://misbah.co', '0', '2018-11-12 01:25:02'),
(10000002, 'http://vaiya.co', '5yc1u', '2018-11-12 01:25:46'),
(10000003, 'http://gmail.com', '5yc1v', '2018-11-12 01:35:48'),
(10000004, 'http://googlee.com', '5yc1w', '2018-11-12 02:19:46'),
(10000005, 'http://twitter.com', '5yc1x', '2018-11-12 02:21:16'),
(10000006, 'http://t.co', '5yc1y', '2018-11-12 02:27:40'),
(10000007, 'http://vaia.co', '5yc1z', '2018-11-12 02:37:09'),
(10000008, 'https://gmail.com', '5yc20', '2018-11-12 03:13:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000009;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
