-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2016 at 04:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

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

CREATE TABLE `child_catagories` (
  `c_cat_id` int(11) NOT NULL,
  `c_cat_name` tinytext,
  `c_cat_parent` int(11) DEFAULT NULL,
  `c_cat_status` enum('0','1') DEFAULT NULL,
  `c_cat_createdon` datetime DEFAULT NULL,
  `c_cat_updatedon` datetime DEFAULT NULL,
  `c_cat_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child_catagories`
--

INSERT INTO `child_catagories` (`c_cat_id`, `c_cat_name`, `c_cat_parent`, `c_cat_status`, `c_cat_createdon`, `c_cat_updatedon`, `c_cat_type`) VALUES
(1, 'Casual Shirts', 1, '1', NULL, NULL, 'Women'),
(2, 'Jeans', 1, '1', NULL, NULL, 'Women'),
(3, 'Shoes', 1, '1', NULL, NULL, 'Women'),
(4, 'Jewellery', 1, '1', NULL, NULL, 'Women'),
(5, 'Bags', 1, '1', NULL, NULL, 'Women');

-- --------------------------------------------------------

--
-- Table structure for table `colour`
--

CREATE TABLE `colour` (
  `colour_id` int(11) NOT NULL,
  `colour_name` tinytext,
  `colour_status` enum('0','1') DEFAULT NULL,
  `colour_createdon` datetime DEFAULT NULL,
  `colour_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colour`
--

INSERT INTO `colour` (`colour_id`, `colour_name`, `colour_status`, `colour_createdon`, `colour_updatedon`) VALUES
(1, 'Blue', '1', NULL, NULL),
(3, 'Orange', '1', NULL, NULL),
(5, 'Pink', '1', NULL, NULL),
(7, 'Maroon', '1', NULL, NULL),
(8, 'Purple', '1', NULL, NULL),
(9, 'Black', '1', NULL, NULL),
(10, 'White', '1', NULL, NULL),
(11, 'Red', '1', NULL, NULL),
(12, 'Yellow', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `colour_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `colour_name` varchar(12) NOT NULL,
  `colour_addedon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`colour_id`, `product_id`, `colour_name`, `colour_addedon`) VALUES
(1, 1, 'red', '2016-12-06 00:00:00'),
(2, 1, 'black', '2016-12-06 00:00:00'),
(3, 1, 'grey', '2016-12-06 00:00:00'),
(4, 1, 'blue', '2016-12-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_text` tinytext,
  `comment_by` int(11) DEFAULT NULL,
  `comment_on` int(11) DEFAULT NULL,
  `comment_status` enum('0','1') DEFAULT NULL,
  `comment_createdon` datetime DEFAULT NULL,
  `comment_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messages_id` int(11) NOT NULL,
  `messages_text` tinytext,
  `messages_from` int(11) DEFAULT NULL,
  `messages_to` int(11) DEFAULT NULL,
  `messages_status` enum('0','1') DEFAULT NULL,
  `messages_createdon` datetime DEFAULT NULL,
  `messages_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notifications_id` int(11) NOT NULL,
  `notifications_text` tinytext,
  `notifications_from` int(11) DEFAULT NULL,
  `notifications_to` int(11) DEFAULT NULL,
  `notifications_status` enum('0','1') DEFAULT NULL,
  `notifications_createdon` datetime DEFAULT NULL,
  `notifications_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_process` enum('review','processing','shipping','delivered') DEFAULT NULL,
  `orders_bill` tinytext,
  `orders_sender_add` tinytext,
  `orders_user_add` tinytext,
  `orders_status` enum('0','1') DEFAULT NULL,
  `orders_createdon` datetime DEFAULT NULL,
  `orders_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent_catagories`
--

CREATE TABLE `parent_catagories` (
  `p_cat_id` int(11) NOT NULL,
  `p_cat_name` tinytext,
  `p_cat_createdon` datetime DEFAULT NULL,
  `p_cat_updatedon` datetime DEFAULT NULL,
  `p_cat_status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_catagories`
--

INSERT INTO `parent_catagories` (`p_cat_id`, `p_cat_name`, `p_cat_createdon`, `p_cat_updatedon`, `p_cat_status`) VALUES
(2, 'Tops', NULL, NULL, '1'),
(3, 'Bottoms', NULL, NULL, '1'),
(4, 'Dresses', NULL, NULL, '1'),
(5, 'Jackets', NULL, NULL, '1'),
(6, 'Accessories', NULL, NULL, '1'),
(7, 'Shoes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_name` tinytext,
  `products_catagory` int(11) DEFAULT NULL,
  `products_size` int(11) DEFAULT NULL,
  `products_colour` int(11) DEFAULT NULL,
  `products_price` tinytext,
  `products_featured` enum('0','1') DEFAULT NULL,
  `products_discount` int(11) DEFAULT NULL,
  `products_vendor` int(11) DEFAULT NULL,
  `products_status` enum('0','1') DEFAULT NULL,
  `products_createdon` datetime DEFAULT NULL,
  `products_updatedon` datetime DEFAULT NULL,
  `products_rating` enum('0','1','2','3','4','5') DEFAULT NULL,
  `gender` enum('0','1','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `products_catagory`, `products_size`, `products_colour`, `products_price`, `products_featured`, `products_discount`, `products_vendor`, `products_status`, `products_createdon`, `products_updatedon`, `products_rating`, `gender`) VALUES
(1, 'Black casual top', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, '0'),
(3, 'Pink polo shirt', NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, '1'),
(4, 'Blue Blouse', NULL, NULL, NULL, NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, '0'),
(7, 'Orange T-shirt', 0, NULL, NULL, NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, '0'),
(8, 'productname', 0, 1, 0, 'price', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1'),
(42, '', 0, 1, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1'),
(45, '', 0, 1, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1'),
(46, 'updatehellp', 0, 1, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1'),
(49, '', 0, 1, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1'),
(51, '', 0, 1, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `prod_img_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `prod_img_name` varchar(100) NOT NULL,
  `record_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`prod_img_id`, `product_id`, `prod_img_name`, `record_date`) VALUES
(1, 1, '123', 0),
(2, 1, '123', 0),
(3, 1, '123', 0),
(4, 1, '123', 0),
(5, 1, '123', 0),
(6, 1, '123', 0),
(7, 1, '123', 0),
(8, 1, '123', 0),
(9, 1, '123', 0),
(10, 1, '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` tinytext,
  `size_status` enum('0','1') DEFAULT NULL,
  `size_createdon` datetime DEFAULT NULL,
  `size_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `name`, `cell`, `adress`) VALUES
(1, 'tets', 'tets', 'near gulshan-e-maymar'),
(2, 'tets', 'tets', 'near gulshan-e-maymar'),
(3, 'tets', 'tets', 'near gulshan-e-maymar'),
(4, 'tets', 'tets', 'near gulshan-e-maymar'),
(5, 'tets', 'tets', 'near gulshan-e-maymar'),
(6, 'tets', 'tets', 'near gulshan-e-maymar'),
(7, 'tets', 'tets', 'near gulshan-e-maymar'),
(8, 'tets', 'tets', 'near gulshan-e-maymar'),
(9, 'tets', 'tets', 'near gulshan-e-maymar'),
(10, 'tets', 'tets', 'near gulshan-e-maymar'),
(11, 'tets', 'tets', 'near gulshan-e-maymar'),
(12, 'tets', 'tets', 'near gulshan-e-maymar'),
(13, 'tets', 'tets', 'near gulshan-e-maymar'),
(14, 'tets', 'tets', 'near gulshan-e-maymar'),
(15, 'tets', 'tets', 'near gulshan-e-maymar'),
(16, 'tets', 'tets', 'near gulshan-e-maymar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`, `user_createdon`, `user_updatedon`, `user_status`, `user_address`, `user_rating`, `user_image`) VALUES
(1, 'rabia hasan', 'tah', 'rahgjhg@hotmail.com', NULL, '2016-11-30 23:34:58', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(2, 'asdnask lksd,mn', 'sdfsadf', 'sdlkas@sad.asd', NULL, '2016-12-07 22:30:36', NULL, NULL, NULL, NULL, NULL),
(3, 'rabiya hasan', '1234', 'rabiya.hasan@gmail.com', NULL, '2016-12-07 22:31:02', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_catagories`
--
ALTER TABLE `child_catagories`
  ADD PRIMARY KEY (`c_cat_id`);

--
-- Indexes for table `colour`
--
ALTER TABLE `colour`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messages_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notifications_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `parent_catagories`
--
ALTER TABLE `parent_catagories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`prod_img_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child_catagories`
--
ALTER TABLE `child_catagories`
  MODIFY `c_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `colour`
--
ALTER TABLE `colour`
  MODIFY `colour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent_catagories`
--
ALTER TABLE `parent_catagories`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `prod_img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
