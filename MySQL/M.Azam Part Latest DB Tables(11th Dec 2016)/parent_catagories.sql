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
-- Table structure for table `parent_catagories`
--

CREATE TABLE IF NOT EXISTS `parent_catagories` (
  `p_cat_id` int(11) NOT NULL,
  `p_cat_name` tinytext,
  `p_cat_createdon` datetime DEFAULT NULL,
  `p_cat_updatedon` datetime DEFAULT NULL,
  `p_cat_status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_catagories`
--

INSERT INTO `parent_catagories` (`p_cat_id`, `p_cat_name`, `p_cat_createdon`, `p_cat_updatedon`, `p_cat_status`) VALUES
(1, 'Womens Dressing', NULL, '0000-00-00 00:00:00', '1'),
(2, 'Mens Dressing', NULL, NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parent_catagories`
--
ALTER TABLE `parent_catagories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parent_catagories`
--
ALTER TABLE `parent_catagories`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
