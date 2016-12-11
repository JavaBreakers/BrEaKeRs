-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 11:38 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `main_color_id` int(11) NOT NULL,
  `main_color_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`main_color_id`, `main_color_name`) VALUES
(1, 'Sky Blue'),
(2, 'Navy Blue'),
(3, 'Metallic Grey'),
(4, 'Shinning Black');

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
(1, 4, '1', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_by`, `comment_on`, `comment_status`, `comment_createdon`, `comment_updatedon`) VALUES
(1, 'Simply awesome. Its comfort level is much more than i was expecting', 1, 1, '1', '2016-11-22 00:00:00', NULL),
(2, 'One of the best Jeans on Planet.', 2, 1, '1', '2016-12-01 00:00:00', NULL),
(3, 'Just close your eyes and order it. It is worth it.', 3, 1, '1', '2016-11-27 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
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

CREATE TABLE IF NOT EXISTS `notifications` (
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

CREATE TABLE IF NOT EXISTS `orders` (
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

CREATE TABLE IF NOT EXISTS `parent_catagories` (
  `p_cat_id` int(11) NOT NULL,
  `p_cat_name` tinytext,
  `p_cat_createdon` datetime DEFAULT NULL,
  `p_cat_updatedon` datetime DEFAULT NULL,
  `p_cat_status` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_catagories`
--

INSERT INTO `parent_catagories` (`p_cat_id`, `p_cat_name`, `p_cat_createdon`, `p_cat_updatedon`, `p_cat_status`) VALUES
(1, 'Womens Dressing', NULL, '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
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
  `product_desc` varchar(500) DEFAULT NULL,
  `pro_images` int(11) DEFAULT NULL,
  `image_link` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `products_catagory`, `products_size`, `products_colour`, `products_price`, `products_featured`, `products_discount`, `products_vendor`, `products_status`, `products_createdon`, `products_updatedon`, `products_rating`, `product_desc`, `pro_images`, `image_link`) VALUES
(1, 'Armani Jeans', 2, 1, 1, '400', '1', 10, NULL, '1', NULL, NULL, '4', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 1, '/images/products/jeans/1.1.jpg'),
(2, 'Metallic Black Jeans', 2, NULL, NULL, '500', '1', 34, NULL, '1', NULL, NULL, '3', NULL, 2, '/images/products/jeans/2.1.jpg'),
(3, 'Silver Lining Black Jeans', 2, NULL, NULL, '340', '1', 22, NULL, '1', NULL, NULL, '5', NULL, 3, '/images/products/jeans/2.2.jpg'),
(4, 'Light Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '3', NULL, 4, '/images/products/jeans/4.2.jpg'),
(5, 'Black & White art Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 5, '/images/products/jeans/7.1.jpg'),
(6, 'Skinny Joes Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 6, '/images/products/jeans/6.1.jpg'),
(7, 'Skinny Blue Cut Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 7, '/images/products/jeans/5.2.jpg'),
(8, 'Plain Blue jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 8, '/images/products/jeans/4.3.jpg'),
(9, 'Skinny White Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 9, '/images/products/jeans/5.1.jpg'),
(10, 'Plain Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 10, '/images/products/jeans/3.3.jpg'),
(11, 'Plazo Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 11, '/images/products/jeans/3.2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `image_id` int(11) DEFAULT NULL,
  `image_link` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `image_link`) VALUES
(1, '/images/products/jeans/1.1.jpg'),
(2, '/images/products/jeans/2.1.jpg'),
(3, '/images/products/jeans/2.2.jpg'),
(4, '/images/products/jeans/4.2.jpg'),
(5, '/images/products/jeans/7.1.jpg'),
(6, '/images/products/jeans/6.1.jpg'),
(7, '/images/products/jeans/5.2.jpg'),
(8, '/images/products/jeans/4.3.jpg'),
(9, '/images/products/jeans/5.1.jpg'),
(10, '/images/products/jeans/3.3.jpg'),
(11, '/images/products/jeans/3.2.jpg'),
(1, '/images/products/jeans/1.2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `main_size_id` int(11) DEFAULT NULL,
  `main_size_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`main_size_id`, `main_size_name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL');

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
(1, 5, '1', NULL, NULL);

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
-- Indexes for table `child_catagories`
--
ALTER TABLE `child_catagories`
  ADD PRIMARY KEY (`c_cat_id`);

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
  MODIFY `c_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
