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
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_text` tinytext,
  `comment_by` int(11) DEFAULT NULL,
  `comment_on` int(11) DEFAULT NULL,
  `comment_status` enum('0','1') DEFAULT NULL,
  `comment_createdon` datetime DEFAULT NULL,
  `comment_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_by`, `comment_on`, `comment_status`, `comment_createdon`, `comment_updatedon`) VALUES
(1, 'Simply awesome. Its comfort level is much more than i was expecting', 1, 1, '1', '2016-11-22 00:00:00', NULL),
(2, 'One of the best Jeans on Planet.', 2, 1, '1', '2016-12-01 00:00:00', NULL),
(3, 'Just close your eyes and order it. It is worth it.', 3, 1, '1', '2016-11-27 00:00:00', NULL),
(4, 'I like its comfort level', 1, 2, '1', '2016-12-01 00:00:00', NULL),
(5, 'One of the best Jeans i have ever bought', 2, 2, '1', '2016-12-04 00:00:00', NULL),
(6, 'Its absolutely wonderful..', 3, 2, NULL, '2016-12-09 19:30:11', NULL),
(7, 'Simply amazing and comfortable', 1, 3, '1', NULL, NULL),
(8, 'I will recommend this Jeans to everybody', 2, 3, '1', NULL, NULL),
(9, 'Deserves a try', 3, 3, '1', NULL, NULL),
(10, 'This bag is rich-looking perfection. The color combination and everything about it is spectacular', 1, 12, '1', NULL, NULL),
(11, 'What more can I say about a this bag. This is AWESOME!', 2, 12, NULL, NULL, NULL),
(12, 'I love this Bag', 1, 13, '1', NULL, NULL),
(13, 'What more can I say about this bag. This is simply AWESOME!', 2, 13, '1', NULL, NULL),
(15, 'Beautiful color, big like I need it. I''m very impressed', 1, 14, '1', NULL, NULL),
(16, 'Excellent quality very soft leather nice and roomy', 2, 14, '1', NULL, NULL),
(17, 'Simply awesome.. Its comfort level is much more than i expected', 1, 18, '1', NULL, NULL),
(18, 'Simply amazing and comfortable\r\n', 2, 18, '1', NULL, NULL),
(19, 'Excellent quality and very soft cotton', 2, 19, '1', NULL, NULL),
(20, 'Simply amazing and comfortable\r\n', 3, 19, '1', NULL, NULL),
(21, 'Excellent quality and very soft cotton', 1, 20, '1', NULL, NULL),
(22, 'Its absolutely wonderful\r\n', 2, 20, '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
