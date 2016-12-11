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
-- Table structure for table `child_catagories`
--

CREATE TABLE IF NOT EXISTS `child_catagories` (
  `c_cat_id` int(11) NOT NULL,
  `c_cat_name` tinytext,
  `c_cat_parent` int(11) DEFAULT NULL,
  `c_cat_status` enum('0','1') DEFAULT NULL,
  `c_cat_createdon` datetime DEFAULT NULL,
  `c_cat_updatedon` datetime DEFAULT NULL,
  `c_cat_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child_catagories`
--

INSERT INTO `child_catagories` (`c_cat_id`, `c_cat_name`, `c_cat_parent`, `c_cat_status`, `c_cat_createdon`, `c_cat_updatedon`, `c_cat_type`) VALUES
(1, 'Bags', 1, '1', NULL, NULL, 'Women'),
(2, 'Jeans', 1, '1', NULL, NULL, 'Women'),
(3, 'Shirts', 1, '1', NULL, NULL, 'Women'),
(4, 'Jewellery', 1, '1', NULL, NULL, 'Women'),
(5, 'Shoes', 1, '1', NULL, NULL, 'Women'),
(6, 'T-Shirts', 2, '1', NULL, NULL, 'Men'),
(7, 'Jeans', 2, '1', NULL, NULL, 'Men'),
(8, 'Shoes', 2, '1', NULL, NULL, 'Men'),
(9, 'Watches', 2, '1', NULL, NULL, 'Men'),
(10, 'Jackets', 2, '1', NULL, NULL, 'Men');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_catagories`
--
ALTER TABLE `child_catagories`
  ADD PRIMARY KEY (`c_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child_catagories`
--
ALTER TABLE `child_catagories`
  MODIFY `c_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
