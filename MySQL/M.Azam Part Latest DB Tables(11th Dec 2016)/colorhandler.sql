-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2016 at 03:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javabreakers`
--

-- --------------------------------------------------------

--
-- Table structure for table `colorhandler`
--

CREATE TABLE IF NOT EXISTS `colorhandler` (
  `color_id` int(11) DEFAULT NULL,
  `main_color_id` int(11) DEFAULT NULL,
  `colour_status` enum('0','1') DEFAULT NULL,
  `colour_createdon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colorhandler`
--

INSERT INTO `colorhandler` (`color_id`, `main_color_id`, `colour_status`, `colour_createdon`) VALUES
(1, 2, '1', NULL),
(1, 3, '1', NULL),
(1, 4, '1', NULL),
(2, 3, '1', NULL),
(2, 5, '1', NULL),
(2, 7, '1', NULL),
(2, 8, '1', NULL),
(3, 3, '1', NULL),
(3, 4, '1', NULL),
(3, 8, '1', NULL),
(4, 2, '1', NULL),
(4, 5, '1', NULL),
(4, 7, '1', NULL),
(5, 3, '1', NULL),
(5, 4, '1', NULL),
(5, 8, '1', NULL),
(6, 1, '1', NULL),
(6, 2, '1', NULL),
(6, 6, '1', NULL),
(7, 3, '1', NULL),
(7, 4, '1', NULL),
(7, 8, '1', NULL),
(8, 1, '1', NULL),
(8, 2, '1', NULL),
(8, 6, '1', NULL),
(9, 3, '1', NULL),
(9, 4, '1', NULL),
(9, 8, '1', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
