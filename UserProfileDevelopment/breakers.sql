-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2016 at 11:22 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breakers`
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
  `c_cat_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `colorhandler`
--

CREATE TABLE `colorhandler` (
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

-- --------------------------------------------------------

--
-- Table structure for table `colour`
--

CREATE TABLE `colour` (
  `main_color_id` int(11) NOT NULL,
  `main_color_name` tinytext,
  `colour_status` enum('0','1') DEFAULT NULL,
  `colour_createdon` datetime DEFAULT NULL,
  `colour_updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colour`
--

INSERT INTO `colour` (`main_color_id`, `main_color_name`, `colour_status`, `colour_createdon`, `colour_updatedon`) VALUES
(1, 'Sky Blue', NULL, NULL, NULL),
(2, 'Navy Blue', NULL, NULL, NULL),
(3, 'Metallic Grey', NULL, NULL, NULL),
(4, 'Shinning Black', NULL, NULL, NULL),
(5, 'Pink', NULL, NULL, NULL),
(6, 'Light Green', NULL, NULL, NULL),
(7, 'Light Purple', NULL, NULL, NULL),
(8, 'Dark Blue', NULL, NULL, NULL);

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
(22, 'Its absolutely wonderful\r\n', 2, 20, '1', NULL, NULL),
(23, 'hello', 2, 12, NULL, '2016-12-13 18:58:42', NULL),
(24, 'nice product', 2, 1, NULL, '2016-12-15 21:54:23', NULL);

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messages_id`, `messages_text`, `messages_from`, `messages_to`, `messages_status`, `messages_createdon`, `messages_updatedon`) VALUES
(1, 'hello', 1, 2, '1', '2016-12-01 00:00:00', NULL),
(2, 'hey there', 2, 1, '1', NULL, NULL),
(3, 'hi i am 2', 2, 3, '1', '2016-12-03 00:00:00', NULL),
(4, 'Hi i am 3', 3, 2, '1', '2016-12-03 00:00:00', NULL);

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_process`, `orders_bill`, `orders_sender_add`, `orders_user_add`, `orders_status`, `orders_createdon`, `orders_updatedon`) VALUES
(1, 'shipping', '500', '2', '2', '1', '2016-11-02 00:00:00', NULL),
(2, 'delivered', '100', '2', '2', '1', '2016-10-07 00:00:00', NULL);

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
(1, 'Womens Dressing', NULL, '0000-00-00 00:00:00', '1'),
(2, 'Mens Dressing', NULL, NULL, '1');

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
  `product_desc` varchar(500) DEFAULT NULL,
  `pro_images` int(11) DEFAULT NULL,
  `image_link` varchar(60) DEFAULT NULL,
  `user_id` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `products_catagory`, `products_size`, `products_colour`, `products_price`, `products_featured`, `products_discount`, `products_vendor`, `products_status`, `products_createdon`, `products_updatedon`, `products_rating`, `product_desc`, `pro_images`, `image_link`, `user_id`) VALUES
(1, 'Armani Jeans', 2, 1, 1, '400', '1', 10, NULL, '1', NULL, NULL, '4', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 1, '/images/products/jeans/1.1.jpg', 0),
(2, 'Metallic Black Jeans', 2, 2, 2, '500', '1', 34, NULL, '1', NULL, NULL, '3', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 2, '/images/products/jeans/2.1.jpg', 0),
(3, 'Dark Blue Stretch Levis', 2, 3, 3, '340', '1', 22, NULL, '1', NULL, NULL, '5', 'Four-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 3, '/images/products/jeans/3.1.jpg', 0),
(4, 'Light Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '3', NULL, 4, '/images/products/jeans/4.2.jpg', 0),
(5, 'Black & White art Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 5, '/images/products/jeans/7.1.jpg', 0),
(6, 'Skinny Joes Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 6, '/images/products/jeans/6.1.jpg', 0),
(7, 'Skinny Blue Cut Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 7, '/images/products/jeans/5.2.jpg', 0),
(8, 'Plain Blue jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 8, '/images/products/jeans/4.3.jpg', 0),
(9, 'Skinny White Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 9, '/images/products/jeans/5.1.jpg', 0),
(10, 'Plain Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 10, '/images/products/jeans/3.3.jpg', 0),
(11, 'Plazo Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 11, '/images/products/jeans/3.2.jpg', 0),
(12, 'Vince Camuto Satchel', 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Embossed Leather, Imported, synthetic lining, Turn-Lock closure, Large double handle hobo with removable adjustable strap, Tab turn-lock closure and bottom feet and Center zip divider', 12, '/images/products/bags/2.1.jpg\n', 0),
(13, 'Corinna Frankie Satchel', 1, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, , Imported, Turn-Lock closure, Large double handle hobo with removable adjustable strap, 100 Manmade lining, Zipper closure\n24 inch shoulder drop, 9.5 inch high, 11 inch wide', 13, '/images/products/bags/3.1.jpg', 0),
(14, 'Tommy Hilfiger Savanna', 1, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, Imported, polyester lining, Zipper closure, Removable adjustable strap, Footed bottom, Interior zip pocket, Two organizer pockets, Zipper closure, 24 inch shoulder drop, 9.5 inch high, 11 inch wide', 14, '/images/products/bags/6.1.jpg\n', 0),
(15, 'Vince Camuto Blu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, , Imported, Turn-Lock closure, Large double handle hobo with removable adjustable strap, 100 Manmade lining, Zipper closure\n24 inch shoulder drop, 9.5 inch high, 11 inch wide', NULL, '/images/products/bags/8.1.jpg', 0),
(16, 'Aldo Exrouria', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, Imported, polyester lining, Zipper closure, Removable adjustable strap, Footed bottom, Interior zip pocket, Two organizer pockets, Zipper closure, 24 inch shoulder drop, 9.5 inch high, 11 inch wide', NULL, '/images/products/bags/1.1.jpg\n', 0),
(17, 'Brahmin Priscilla Satchel', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Embossed Leather, Imported, synthetic lining, Turn-Lock closure, Large double handle hobo with removable adjustable strap, Tab turn-lock closure and bottom feet and Center zip divider', NULL, '/images/products/bags/5.1.jpg', 0),
(18, 'Carhartt Mens Workwear ', 6, 7, 7, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 15, '/images/products/t shirts/1.1.jpg\n', 0),
(19, 'Lucky Brand Mens Jack ', 6, 8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 16, '/images/products/t shirts/2.1.jpg', 0),
(20, 'Jerzees Mens shirt', 6, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 17, '/images/products/t shirts/3.2.jpg', 0),
(21, 'Gildan Heavy Cotton ', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/4.1.jpg', 0),
(22, 'Hanes Mens cotton', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/5.1.jpg', 0),
(23, 'Lucky Brand Mens shirt', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/6.1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `image_id` int(11) DEFAULT NULL,
  `image_link` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `image_link`) VALUES
(1, '/images/products/jeans/1.1.jpg'),
(2, '/images/products/jeans/2.1.jpg'),
(4, '/images/products/jeans/4.2.jpg'),
(5, '/images/products/jeans/7.1.jpg'),
(6, '/images/products/jeans/6.1.jpg'),
(7, '/images/products/jeans/5.2.jpg'),
(8, '/images/products/jeans/4.3.jpg'),
(9, '/images/products/jeans/5.1.jpg'),
(10, '/images/products/jeans/3.3.jpg'),
(11, '/images/products/jeans/3.2.jpg'),
(1, '/images/products/jeans/1.2.jpg'),
(2, '/images/products/jeans/2.2.jpg'),
(3, '/images/products/jeans/3.1.jpg\r\n'),
(3, '/images/products/jeans/3.2.jpg\r\n'),
(12, '/images/products/bags/2.1.jpg'),
(12, '/images/products/bags/2.2.jpg'),
(13, '/images/products/bags/3.1.jpg\r\n'),
(13, '/images/products/bags/3.2.jpg\r\n'),
(14, '/images/products/bags/6.1.jpg'),
(14, '/images/products/bags/6.2.jpg'),
(15, '/images/products/t shirts/1.1.jpg'),
(15, '/images/products/t shirts/1.3.jpg\r\n'),
(16, '/images/products/t shirts/2.1.jpg'),
(16, '/images/products/t shirts/2.2.jpg'),
(17, '/images/products/t shirts/3.2.jpg\r\n'),
(17, '/images/products/t shirts/3.3.jpg'),
(0, 'shopping.jpg'),
(0, 'shopping.jpg'),
(0, 'shopping.jpg'),
(24, 'shopping.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
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

CREATE TABLE `sizehandler` (
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
  `user_image` tinytext,
  `user_phone` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`, `user_createdon`, `user_updatedon`, `user_status`, `user_address`, `user_rating`, `user_image`, `user_phone`) VALUES
(1, 'admin', '123456', 'admin@breakers.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(2, 'faiqa', '123456', 'faiqasagi@gmail.com', 'admin', '2016-11-28 13:06:51', NULL, NULL, 'Steenbekerweg 22 2244', NULL, NULL, '1234567'),
(3, 'testuser', 'test', 'test@test.com', NULL, NULL, NULL, '1', NULL, NULL, NULL, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colour`
--
ALTER TABLE `colour`
  ADD PRIMARY KEY (`main_color_id`);

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
-- AUTO_INCREMENT for table `colour`
--
ALTER TABLE `colour`
  MODIFY `main_color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parent_catagories`
--
ALTER TABLE `parent_catagories`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
