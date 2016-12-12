/*
Navicat MySQL Data Transfer

Source Server         : mysql_local_host
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : javabreakers

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-11 00:48:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for child_catagories
-- ----------------------------
DROP TABLE IF EXISTS `child_catagories`;
CREATE TABLE `child_catagories` (
  `c_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_cat_name` tinytext,
  `c_cat_parent` int(11) DEFAULT NULL,
  `c_cat_status` enum('0','1') DEFAULT NULL,
  `c_cat_createdon` datetime DEFAULT NULL,
  `c_cat_updatedon` datetime DEFAULT NULL,
  `c_cat_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of child_catagories
-- ----------------------------
INSERT INTO `child_catagories` VALUES ('1', 'Casual Shirts', '1', '1', null, null, 'Women');
INSERT INTO `child_catagories` VALUES ('2', 'Jeans', '1', '1', null, null, 'Women');
INSERT INTO `child_catagories` VALUES ('3', 'Shoes', '1', '1', null, null, 'Women');
INSERT INTO `child_catagories` VALUES ('4', 'Jewellery', '1', '1', null, null, 'Women');
INSERT INTO `child_catagories` VALUES ('5', 'Bags', '1', '1', null, null, 'Women');

-- ----------------------------
-- Table structure for colour
-- ----------------------------
DROP TABLE IF EXISTS `colour`;
CREATE TABLE `colour` (
  `colour_name` tinytext,
  `colour_status` enum('0','1') DEFAULT NULL,
  `colour_createdon` datetime DEFAULT NULL,
  `colour_updatedon` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colour
-- ----------------------------
INSERT INTO `colour` VALUES ('Navy Blue', '1', null, null, '1');
INSERT INTO `colour` VALUES ('Shinning Black', '1', null, null, '1');
INSERT INTO `colour` VALUES ('Sky Blue', '1', null, null, '1');
INSERT INTO `colour` VALUES ('Metal Grey', '1', null, null, '1');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` tinytext,
  `comment_by` int(11) DEFAULT NULL,
  `comment_on` int(11) DEFAULT NULL,
  `comment_status` enum('0','1') DEFAULT NULL,
  `comment_createdon` datetime DEFAULT NULL,
  `comment_updatedon` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'Simply awesome. Its comfort level is much more than i was expecting', '1', '1', '1', '2016-11-22 00:00:00', null);
INSERT INTO `comment` VALUES ('2', 'One of the best Jeans on Planet.', '2', '1', '1', '2016-12-01 00:00:00', null);
INSERT INTO `comment` VALUES ('3', 'Just close your eyes and order it. It is worth it.', '3', '1', '1', '2016-11-27 00:00:00', null);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `messages_id` int(11) NOT NULL AUTO_INCREMENT,
  `messages_text` tinytext,
  `messages_from` int(11) DEFAULT NULL,
  `messages_to` int(11) DEFAULT NULL,
  `messages_status` enum('0','1') DEFAULT NULL,
  `messages_createdon` datetime DEFAULT NULL,
  `messages_updatedon` datetime DEFAULT NULL,
  PRIMARY KEY (`messages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `notifications_id` int(11) NOT NULL AUTO_INCREMENT,
  `notifications_text` tinytext,
  `notifications_from` int(11) DEFAULT NULL,
  `notifications_to` int(11) DEFAULT NULL,
  `notifications_status` enum('0','1') DEFAULT NULL,
  `notifications_createdon` datetime DEFAULT NULL,
  `notifications_updatedon` datetime DEFAULT NULL,
  PRIMARY KEY (`notifications_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_process` enum('review','processing','shipping','delivered') DEFAULT NULL,
  `orders_bill` tinytext,
  `orders_sender_add` tinytext,
  `orders_user_add` tinytext,
  `orders_status` enum('0','1') DEFAULT NULL,
  `orders_createdon` datetime DEFAULT NULL,
  `orders_updatedon` datetime DEFAULT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for parent_catagories
-- ----------------------------
DROP TABLE IF EXISTS `parent_catagories`;
CREATE TABLE `parent_catagories` (
  `p_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_cat_name` tinytext,
  `p_cat_createdon` datetime DEFAULT NULL,
  `p_cat_updatedon` datetime DEFAULT NULL,
  `p_cat_status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parent_catagories
-- ----------------------------
INSERT INTO `parent_catagories` VALUES ('1', 'Womens Dressing', null, '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `image_link` varchar(70) DEFAULT NULL,
  `product_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Armani Jeans', '2', null, null, '12', '1', '10', null, '1', null, null, '4', '/images/products/jeans/1.1.jpg', 'Five-pocket jean in slim silhouette featuring slightly tapered leg and zip fly with button closure. Leg Opening size of 14.5 Inches, Zipper closure and Machine wash. Made up of imported soft cotton material.\nBroken Oyster, Blue Barnacle, Record Skip, Black Dell, Whiteout, and Broken In washes come with distressed finishing that offers a worn-in look.');
INSERT INTO `products` VALUES ('2', 'Metallic Black Jeans', '2', null, null, '14', '1', '34', null, '1', null, null, '3', '/images/products/jeans/2.1.jpg', null);
INSERT INTO `products` VALUES ('3', 'Silver Lining Black Jeans', '2', null, null, '17', '1', '22', null, '1', null, null, '5', '/images/products/jeans/2.2.jpg', null);
INSERT INTO `products` VALUES ('4', 'Light Blue Jeans', '2', null, null, '11', '1', null, null, '1', null, null, '3', '/images/products/jeans/4.2.jpg', null);
INSERT INTO `products` VALUES ('5', 'Black & White art Jeans', '2', null, null, '18', '1', null, null, '1', null, null, null, '/images/products/jeans/7.1.jpg', null);
INSERT INTO `products` VALUES ('6', 'Skinny Joes Black Jeans', '2', null, null, '14', '1', null, null, '1', null, null, null, '/images/products/jeans/6.1.jpg', null);
INSERT INTO `products` VALUES ('7', 'Skinny Blue Cut Jeans', '2', null, null, '16', '1', null, null, '1', null, null, null, '/images/products/jeans/5.2.jpg', null);
INSERT INTO `products` VALUES ('8', 'Plain Blue jeans', '2', null, null, '13', '1', null, null, '1', null, null, null, '/images/products/jeans/4.3.jpg', null);
INSERT INTO `products` VALUES ('9', 'Skinny White Blue Jeans', '2', null, null, '19', '1', null, null, '1', null, null, null, '/images/products/jeans/5.1.jpg', null);
INSERT INTO `products` VALUES ('10', 'Plain Black Jeans', '2', null, null, '17', '1', null, null, '1', null, null, null, '/images/products/jeans/3.3.jpg', null);
INSERT INTO `products` VALUES ('11', 'Plazo Black Jeans', '2', null, null, '12', '1', null, null, '1', null, null, null, '/images/products/jeans/3.2.jpg', null);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `size_name` tinytext,
  `size_status` enum('0','1') DEFAULT NULL,
  `size_createdon` datetime DEFAULT NULL,
  `size_updatedon` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('M', '1', null, null, '1');
INSERT INTO `size` VALUES ('L', '1', null, null, '1');
INSERT INTO `size` VALUES ('XXL', '1', null, null, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Aslam Khan', '9876', 'aslam789@yahoo.com', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', 'Jamal Tarar', '9876', 'jamal789@yahoo.com', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'Nawab Gul', '9876', 'nawab789@yahoo.com', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', 'David Joy', '9876', 'khan789@yahoo.com', null, null, null, null, null, null, null);
