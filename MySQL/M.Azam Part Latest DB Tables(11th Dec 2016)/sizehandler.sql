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
-- Table structure for table `sizehandler`
--

CREATE TABLE IF NOT EXISTS `sizehandler` (
  `size_id` int(11) DEFAULT NULL,
  `main_size_id` int(11) DEFAULT NULL,
  `size_status` enum('0','1') DEFAULT NULL,
  `size_createdon` datetime DEFAULT NULL,
  `size_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizehandler`
--

INSERT INTO `sizehandler` (`size_id`, `main_size_id`, `size_status`, `size_createdon`, `size_updatedon`) VALUES
(1, 3, '1', NULL, NULL),
(1, 4, '1', NULL, NULL),
(1, 5, '1', NULL, NULL),
(2, 2, '1', NULL, NULL),
(2, 3, '1', NULL, NULL),
(2, 4, '1', NULL, NULL),
(2, 5, '1', NULL, NULL),
(3, 3, '1', NULL, NULL),
(3, 4, '1', NULL, NULL),
(3, 5, '1', NULL, NULL),
(4, 2, '1', NULL, NULL),
(4, 3, '1', NULL, NULL),
(5, 3, '1', NULL, NULL),
(5, 4, '1', NULL, NULL),
(6, 3, '1', NULL, NULL),
(6, 4, '1', NULL, NULL),
(7, 3, '1', NULL, NULL),
(7, 4, '1', NULL, NULL),
(7, 5, '1', NULL, NULL),
(8, 2, '1', NULL, NULL),
(8, 3, '1', NULL, NULL),
(8, 4, '1', NULL, NULL),
(9, 3, '1', NULL, NULL),
(9, 4, '1', NULL, NULL),
(9, 5, '1', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
