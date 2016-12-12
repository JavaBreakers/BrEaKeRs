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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `products_catagory`, `products_size`, `products_colour`, `products_price`, `products_featured`, `products_discount`, `products_vendor`, `products_status`, `products_createdon`, `products_updatedon`, `products_rating`, `product_desc`, `pro_images`, `image_link`) VALUES
(1, 'Armani Jeans', 2, 1, 1, '400', '1', 10, NULL, '1', NULL, NULL, '4', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 1, '/images/products/jeans/1.1.jpg'),
(2, 'Metallic Black Jeans', 2, 2, 2, '500', '1', 34, NULL, '1', NULL, NULL, '3', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 2, '/images/products/jeans/2.1.jpg'),
(3, 'Dark Blue Stretch Levis', 2, 3, 3, '340', '1', 22, NULL, '1', NULL, NULL, '5', 'Four-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.', 3, '/images/products/jeans/3.1.jpg'),
(4, 'Light Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '3', NULL, 4, '/images/products/jeans/4.2.jpg'),
(5, 'Black & White art Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 5, '/images/products/jeans/7.1.jpg'),
(6, 'Skinny Joes Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 6, '/images/products/jeans/6.1.jpg'),
(7, 'Skinny Blue Cut Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 7, '/images/products/jeans/5.2.jpg'),
(8, 'Plain Blue jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 8, '/images/products/jeans/4.3.jpg'),
(9, 'Skinny White Blue Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 9, '/images/products/jeans/5.1.jpg'),
(10, 'Plain Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 10, '/images/products/jeans/3.3.jpg'),
(11, 'Plazo Black Jeans', 2, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, 11, '/images/products/jeans/3.2.jpg'),
(12, 'Vince Camuto Satchel', 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Embossed Leather, Imported, synthetic lining, Turn-Lock closure, Large double handle hobo with removable adjustable strap, Tab turn-lock closure and bottom feet and Center zip divider', 12, '/images/products/bags/2.1.jpg\n'),
(13, 'Corinna Frankie Satchel', 1, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, , Imported, Turn-Lock closure, Large double handle hobo with removable adjustable strap, 100 Manmade lining, Zipper closure\n24 inch shoulder drop, 9.5 inch high, 11 inch wide', 13, '/images/products/bags/3.1.jpg'),
(14, 'Tommy Hilfiger Savanna', 1, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, Imported, polyester lining, Zipper closure, Removable adjustable strap, Footed bottom, Interior zip pocket, Two organizer pockets, Zipper closure, 24 inch shoulder drop, 9.5 inch high, 11 inch wide', 14, '/images/products/bags/6.1.jpg\n'),
(15, 'Vince Camuto Blu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, , Imported, Turn-Lock closure, Large double handle hobo with removable adjustable strap, 100 Manmade lining, Zipper closure\n24 inch shoulder drop, 9.5 inch high, 11 inch wide', NULL, '/images/products/bags/8.1.jpg'),
(16, 'Aldo Exrouria', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leather, Imported, polyester lining, Zipper closure, Removable adjustable strap, Footed bottom, Interior zip pocket, Two organizer pockets, Zipper closure, 24 inch shoulder drop, 9.5 inch high, 11 inch wide', NULL, '/images/products/bags/1.1.jpg\n'),
(17, 'Brahmin Priscilla Satchel', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Embossed Leather, Imported, synthetic lining, Turn-Lock closure, Large double handle hobo with removable adjustable strap, Tab turn-lock closure and bottom feet and Center zip divider', NULL, '/images/products/bags/5.1.jpg'),
(18, 'Carhartt Mens Workwear ', 6, 7, 7, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 15, '/images/products/t shirts/1.1.jpg\n'),
(19, 'Lucky Brand Mens Jack ', 6, 8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 16, '/images/products/t shirts/2.1.jpg'),
(20, 'Jerzees Mens shirt', 6, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100% Cotton, Imported, Machine Wash, Tonal stitching, Crew neckline, Short-sleeve T-shirt in solid tone featuring lay-flat crewneck collar and patch pocket at chest, Tagless label, Lay-flat collar and double-stitched sleeves and hem durability', 17, '/images/products/t shirts/3.2.jpg'),
(21, 'Gildan Heavy Cotton ', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/4.1.jpg'),
(22, 'Hanes Mens cotton', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/5.1.jpg'),
(23, 'Lucky Brand Mens shirt', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/images/products/t shirts/6.1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
