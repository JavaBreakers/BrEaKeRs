-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2016 at 03:58 PM
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
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_name` tinytext,
  `user_password` tinytext,
  `user_email` tinytext,
  `user_type` enum('admin','vendor','guest') DEFAULT NULL,
  `user_createdon` datetime DEFAULT NULL,
  `user_updatedon` datetime DEFAULT NULL,
  `user_status` enum('0','1') DEFAULT NULL,
  `user_address` tinytext,
  `user_rating` enum('0','1','2','3','4','5') DEFAULT NULL,
  `user_image` tinytext
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`, `user_createdon`, `user_updatedon`, `user_status`, `user_address`, `user_rating`, `user_image`) VALUES
(1, 'Aslam Khan', '9876', 'aslam789@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Jamal Tarar', '9876', 'jamal789@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Nawab Gul', '9876', 'nawab789@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'David Joy', '9876', 'khan789@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
