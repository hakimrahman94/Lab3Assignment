-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2017 at 01:05 PM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myk`
--

-- --------------------------------------------------------

--
-- Table structure for table `listofgames`
--

CREATE TABLE `listofcaps` (
  `id` int(10) NOT NULL DEFAULT '0',
  `picture` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='List of Games';

--
-- Dumping data for table `listofgames`
--

INSERT INTO `listofcaps` (`id`, `picture`, `title`, `price`, `discount`) VALUES
(1, 'images/blackcap.png', 'Black Cap', 100, 30),
(4, 'images/stripcap.png', 'Black & Green Strip Cap', 250, 10),
(3, 'images/whitecap.png', 'White & Blue Strip Cap', 300, 15),
(2, 'images/yellowcap.png', 'Yellow Cap', 190, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
