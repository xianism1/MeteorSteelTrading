-- phpMyAdmin SQL Dump
-- version 4.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2016 at 02:16 PM
-- Server version: 5.1.73
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_csezshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cs_accounts`
--

CREATE TABLE `cs_accounts` (
  `account_id` int(11) NOT NULL,
  `account_fname` varchar(60) NOT NULL,
  `account_lname` varchar(60) NOT NULL,
  `account_email` varchar(120) NOT NULL,
  `account_password` varchar(120) NOT NULL,
  `account_level` varchar(120) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `account_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_accounts`
--

INSERT INTO `cs_accounts` (`account_id`, `account_fname`, `account_lname`, `account_email`, `account_password`, `account_level`, `date_created`, `date_modified`, `account_status`) VALUES
(1, 'Carlo', 'Flores', 'carlo@ezshop.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'adm', '2016-02-21 00:00:00', '2016-02-21 00:00:00', 1),
(2, 'Carlo', 'Flores', 'test@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'chr', '2016-02-21 00:00:00', '2016-02-21 00:00:00', 1),
(3, 'Rob', 'Bernardino', 'rob@ezshop.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'adm', '2016-02-21 00:00:00', '2016-02-21 00:00:00', 1),
(4, 'Churchill', 'Villanueva', 'chill@ezshop.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'adm', '2016-02-21 00:00:00', '2016-02-21 00:00:00', 1),
(5, 'Roberto', 'Gaviola', 'bherts@ezshop.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'adm', '2016-02-21 00:00:00', '2016-02-21 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_blogs`
--

CREATE TABLE `cs_blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(300) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_tags` varchar(300) NOT NULL,
  `blog_category` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `blog_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cs_blog_category`
--

CREATE TABLE `cs_blog_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cs_blog_meta`
--

CREATE TABLE `cs_blog_meta` (
  `blog_meta_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `keyword` varchar(300) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cs_cart`
--

CREATE TABLE `cs_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_group` varchar(150) NOT NULL,
  `customer_ip` varchar(50) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `cart_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_cart`
--

INSERT INTO `cs_cart` (`cart_id`, `cart_group`, `customer_ip`, `product_variant_id`, `cart_quantity`, `date_created`, `cart_status`) VALUES
(1, '30afcc12b27517f9e08f22411a184152', '182.18.238.138', 2, 4, '2016-02-25 03:01:33', 1),
(2, '997ad30d960fd674de80fd766e99d721', '112.204.209.10', 6, 4, '2016-02-25 10:05:53', 1),
(3, '058c2e6eccd9868691153748ac6289a3', '112.204.209.10', 10, 1, '2016-02-25 11:27:02', 1),
(4, '792bebc79344959ed50a4b7d76466e5e', '49.148.2.230', 18, 5, '2016-02-25 14:04:15', 1),
(5, '792bebc79344959ed50a4b7d76466e5e', '49.148.2.230', 13, 5, '2016-02-25 14:04:27', 1),
(6, '792bebc79344959ed50a4b7d76466e5e', '49.148.2.230', 20, 5, '2016-02-25 14:04:35', 1),
(7, 'b9e593d2e39fb5cfe3e0f43c99c682b3', '124.107.192.185', 3, 1, '2016-02-25 14:07:53', 1),
(8, 'b9e593d2e39fb5cfe3e0f43c99c682b3', '124.107.192.185', 17, 1, '2016-02-25 14:07:58', 1),
(9, 'b9e593d2e39fb5cfe3e0f43c99c682b3', '124.107.192.185', 20, 1, '2016-02-25 14:08:04', 1),
(10, 'fbd1bff6d2b5e1587b58753a79a14ea4', '180.191.142.70', 2, 12, '2016-02-25 14:08:08', 1),
(11, '6546b9591b0f9af62ffb8403f16cd3d2', '112.204.209.10', 16, 2, '2016-02-25 14:08:14', 1),
(12, '61309e2007ba928a07cb2e2e564bfd55', '124.107.192.185', 8, 2, '2016-02-25 14:16:22', 1),
(13, '6bfa7f52af40eadcb593ce9364b20b35', '124.107.192.185', 3, 1, '2016-02-25 14:24:30', 1),
(14, '6bfa7f52af40eadcb593ce9364b20b35', '124.107.192.185', 17, 1, '2016-02-25 14:24:50', 1),
(15, '6bfa7f52af40eadcb593ce9364b20b35', '124.107.192.185', 20, 1, '2016-02-25 14:25:00', 1),
(20, '3f757ed29e18a05f4412a3ba0e9fe4e0', '112.204.209.10', 17, 2, '2016-02-25 19:33:30', 1),
(22, 'cef37d5e61f10340e78dd28e6acc5700', '182.18.238.138', 1, 1, '2016-02-26 00:04:38', 1),
(23, 'cef37d5e61f10340e78dd28e6acc5700', '182.18.238.138', 33, 1, '2016-02-26 00:25:31', 1),
(27, '3758d8974b344c81c41b9e129eadfab1', '124.107.192.185', 29, 2, '2016-02-26 12:21:48', 1),
(28, '3758d8974b344c81c41b9e129eadfab1', '124.107.192.185', 35, 4, '2016-02-26 12:21:57', 1),
(29, 'cef37d5e61f10340e78dd28e6acc5700', '182.18.238.138', 19, 1, '2016-02-26 12:27:48', 1),
(30, '32384929ca8a1525f6a85a8abcdbb9a1', '124.107.192.185', 42, 1, '2016-02-26 12:30:44', 1),
(31, '827092db777b84a945bd72bd4ed8dfe4', '124.107.192.185', 13, 1, '2016-02-26 12:38:35', 1),
(32, '0b70d1306f9eca0567613b624e99cd73', '122.53.17.135', 46, 1, '2016-02-26 17:15:20', 0),
(37, '9c9d3d0d74f9dd009d0ab65f56431bd2', '180.191.138.61', 18, 1, '2016-02-26 18:13:52', 0),
(43, '7e01e04769653ac458e3cb40df57ec2a', '112.209.33.138', 26, 1, '2016-02-26 23:58:47', 0),
(44, '9ff3ff28895868ae05e1f80266028c40', '112.198.78.240', 49, 1, '2016-02-27 00:06:14', 0),
(45, '84ad347ae28da67991c7fcc991bbff3f', '182.18.238.138', 7, 1, '2016-02-27 03:17:57', 1),
(46, 'ebff4136512df2c817471377645c69b1', '182.18.238.138', 2, 1, '2016-02-27 10:02:32', 1),
(47, '7c11caa49906bf263cee24d811cccde1', '121.54.54.38', 3, 1, '2016-02-27 11:35:19', 1),
(48, 'fbc0499c52431c6c8c64495c57d85dce', '121.54.54.61', 2, 1, '2016-02-27 12:16:38', 1),
(49, '9a40c4deb54e8ce34b1ededf49596fb0', '121.54.54.61', 3, 1, '2016-02-27 12:25:05', 1),
(50, 'bb64f3bd51cd35e7a8b0b7c4e3d24814', '121.54.54.44', 3, 2, '2016-02-27 13:05:47', 1),
(51, 'd645d6d2b426de88523e7dde4e9122b9', '121.54.54.44', 9, 1, '2016-02-27 13:08:03', 1),
(52, 'b4417510e8d7e852b431da144231611d', '121.54.54.45', 3, 1, '2016-02-27 13:23:31', 1),
(53, 'b4417510e8d7e852b431da144231611d', '121.54.54.45', 46, 1, '2016-02-27 13:24:48', 1),
(54, 'b4417510e8d7e852b431da144231611d', '121.54.54.58', 33, 1, '2016-02-27 14:06:20', 1),
(56, 'b4417510e8d7e852b431da144231611d', '121.54.54.132', 3, 3, '2016-02-27 16:06:42', 1),
(57, '99509c286c197e205b4f02a07259db94', '121.54.54.132', 34, 1, '2016-02-27 16:28:26', 1),
(58, '904cbe6cf1e8c1a83e2c2d64d3be7057', '182.18.238.126', 4, 1, '2016-02-27 23:09:56', 0),
(59, '7d8ead8144b365171d0383427f86a2b5', '::1', 4, 2, '2016-03-06 03:24:36', 1),
(61, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.141', 29, 2, '2016-03-07 11:28:20', 1),
(62, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.131', 3, 1, '2016-03-07 12:12:31', 1),
(63, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.32', 2, 1, '2016-03-07 12:12:44', 1),
(64, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.32', 3, 1, '2016-03-07 12:13:11', 1),
(65, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.59', 3, 5, '2016-03-07 12:13:49', 1),
(66, 'b96f698c6221e6cb9fad97a897b02806', '121.54.54.59', 2, 2, '2016-03-07 12:13:57', 1),
(67, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.57', 43, 1, '2016-03-07 12:25:11', 0),
(68, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.53', 3, 1, '2016-03-07 12:26:26', 0),
(69, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.53', 10, 1, '2016-03-07 12:26:32', 0),
(70, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.149', 46, 1, '2016-03-07 12:29:44', 0),
(71, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.52', 3, 1, '2016-03-07 12:31:26', 0),
(72, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.138', 10, 1, '2016-03-07 12:35:40', 0),
(73, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.152', 3, 1, '2016-03-07 12:36:46', 0),
(74, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.152', 10, 1, '2016-03-07 12:37:07', 0),
(75, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.140', 3, 1, '2016-03-07 12:38:36', 0),
(76, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.140', 10, 1, '2016-03-07 12:39:00', 0),
(77, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.43', 3, 1, '2016-03-07 12:40:27', 0),
(78, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.43', 10, 1, '2016-03-07 12:40:44', 0),
(79, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.47', 1, 1, '2016-03-07 12:54:16', 0),
(80, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.132', 8, 1, '2016-03-07 12:55:11', 0),
(84, 'ff629f39c8f9a999730e02be23e984ac', '121.54.54.141', 3, 4, '2016-03-07 12:57:10', 1),
(85, 'ff629f39c8f9a999730e02be23e984ac', '121.54.54.141', 10, 2, '2016-03-07 12:57:33', 1),
(86, '2f94cc7d9e142279953f852087b7410f', '121.54.54.56', 8, 5, '2016-03-07 14:33:15', 0),
(87, '2f94cc7d9e142279953f852087b7410f', '121.54.54.48', 10, 1, '2016-03-07 15:47:40', 0),
(88, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.151', 2, 3, '2016-03-07 16:20:51', 0),
(89, '6b0aeca41e54ec1b993e9be4322a2840', '121.54.54.49', 30, 10, '2016-03-07 16:56:02', 0),
(90, '2f94cc7d9e142279953f852087b7410f', '121.54.54.155', 5, 1, '2016-03-07 17:50:28', 0),
(91, '4b734c634e0840ac193f3cf2b7c68009', '49.148.64.81', 8, 1, '2016-03-10 17:04:34', 1),
(92, 'cba8710124e53208cd5c724c3ab731bb', '124.107.192.185', 2, 10, '2016-03-10 22:25:53', 1),
(93, '6b7a297cf76b1ccf54e33e74aea1dc38', '49.148.64.81', 4, 1, '2016-03-11 00:34:08', 1),
(94, '6b7a297cf76b1ccf54e33e74aea1dc38', '49.148.64.81', 9, 1, '2016-03-11 00:34:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_customers`
--

CREATE TABLE `cs_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_lname` varchar(50) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) DEFAULT NULL,
  `customer_img` text,
  `customer_company` varchar(120) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_address` text,
  `customer_city` varchar(120) DEFAULT NULL,
  `customer_state` varchar(120) DEFAULT NULL,
  `customer_country` varchar(50) DEFAULT NULL,
  `customer_zipcode` varchar(10) DEFAULT NULL,
  `customer_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_customers`
--

INSERT INTO `cs_customers` (`customer_id`, `customer_fname`, `customer_lname`, `customer_email`, `customer_password`, `customer_img`, `customer_company`, `customer_phone`, `customer_address`, `customer_city`, `customer_state`, `customer_country`, `customer_zipcode`, `customer_status`) VALUES
(1, 'Carlo', 'Flores', 'carlo29092@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', 1),
(2, 'Robert', 'Bautista', 'rob.berns03@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Alicia ', 'David', 'spidey_rj@hotmail.com', '4ecf9bef98bc499eeea5ec0624a1ced7', NULL, '', '09274179764', '306 P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', 1),
(4, 'Xian', 'Villanueva', 'x14n1sm@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Chill', 'Villanueva', 'chill@ezshop.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', 1),
(6, 'Kaye', 'Locsin', 'xirtiepo@icloud.com', '177922d27ec4565f2ce1e9fe01f2c037', NULL, '', '09359170333', '328 C Majestic', 'Cainta', 'Rizal', 'Philippines', '1900', 1),
(7, 'Eleiza Eirynne', 'Bautista', 'eleixab0805@gmail.com', '2131db26395f246b3fc1aa6c944d6738', NULL, '09274179764', '09274179764', '306 P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', 1),
(8, 'Roberto', 'Gaviola', 'bhertz_o3@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '', '6464946', 'Parola', 'Cainta', 'Rizal', 'Philippines', '1900', 1),
(9, 'Clarenz', 'Flores', 'carlo@ezshop.com', '565fb88bce1b1ae6a5eb6a8e225c4b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'Quentin', 'Coldwater', 'spidey_rj@yahoo.com', '4ecf9bef98bc499eeea5ec0624a1ced7', NULL, '', '09274179764', 'MitsuTech Street', 'Angono', 'Rizal', 'Philippines', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_discounts`
--

CREATE TABLE `cs_discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(120) NOT NULL,
  `discount_code` varchar(120) NOT NULL,
  `discount_used` int(11) NOT NULL DEFAULT '0',
  `discount_value` double(11,2) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_limit` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_expires` datetime NOT NULL,
  `discount_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cs_discounts`
--

INSERT INTO `cs_discounts` (`discount_id`, `discount_name`, `discount_code`, `discount_used`, `discount_value`, `discount_type`, `discount_limit`, `date_created`, `date_expires`, `discount_status`) VALUES
(1, 'Thesis Sale', 'ThesisMandness', 0, 20.00, 2, 99999999, '2016-02-01 01:00:00', '2016-03-01 02:00:00', 1),
(2, 'Graduation Sale', 'GRAD', 2, 150.00, 1, 50, '2016-01-01 01:00:00', '2016-03-01 01:00:00', 1),
(3, 'Paul Matthew Sponsor', 'PMS', 1, 20.00, 2, 1, '2016-01-01 01:00:00', '2016-02-28 01:00:00', 1),
(4, 'test', 'test', 0, 150.00, 1, 1, '2016-03-06 01:00:00', '2016-01-01 01:00:00', 1),
(5, 'test', 'test2', 1, 150.00, 1, 1, '2016-03-06 01:00:00', '2016-03-07 01:00:00', 1),
(6, 'test3', 'test3', 0, 123.00, 1, 0, '2016-03-06 01:00:00', '2016-03-07 01:00:00', 1),
(7, 'test4', 'test4', 0, 10.00, 2, 1, '2016-03-06 01:00:00', '2016-03-07 01:00:00', 1),
(8, 'Paul Matthew Sponsor', 'PMSP2', 0, 20.00, 2, 1, '2016-03-07 01:00:00', '2016-03-08 01:00:00', 1),
(9, 'Sample Discount', 'SMPL', 0, 150.00, 1, 1, '2016-03-07 01:00:00', '2016-03-08 01:00:00', 0),
(10, 'Colorful Summer', 'COLORFULSUM', 0, 10.00, 2, 50, '2016-03-24 00:00:00', '2016-03-30 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_feedbacks`
--

CREATE TABLE `cs_feedbacks` (
  `feedback_id` int(11) NOT NULL,
  `feedback_fullname` varchar(200) NOT NULL,
  `feedback_description` text NOT NULL,
  `feedback_profile` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_feedbacks`
--

INSERT INTO `cs_feedbacks` (`feedback_id`, `feedback_fullname`, `feedback_description`, `feedback_profile`, `date_created`) VALUES
(1, 'Berts Gaviola', 'Web Developer<br/>\r\n<a href="www.carloflores.com">www.carloflores.com</a><br/>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '2016-02-17 01:03:00'),
(2, 'Carlo Gaviola', 'Web Developer<br/>\r\n<a href="www.carloflores.com">www.carloflores.com</a><br/>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '2016-02-17 00:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `cs_inquiries`
--

CREATE TABLE `cs_inquiries` (
  `inquiry_id` int(11) NOT NULL,
  `inquiry_email` varchar(300) NOT NULL,
  `inquiry_fullname` varchar(300) NOT NULL,
  `inquiry_category` varchar(150) NOT NULL,
  `inquiry_message` text NOT NULL,
  `date_created` datetime NOT NULL,
  `inquiry_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_inquiries`
--

INSERT INTO `cs_inquiries` (`inquiry_id`, `inquiry_email`, `inquiry_fullname`, `inquiry_category`, `inquiry_message`, `date_created`, `inquiry_status`) VALUES
(1, 'eleixab0805@gmail.com', 'Eleiza Bautista', 'Product', 'I love your products!!! <3', '2016-02-25 22:36:33', 1),
(3, 'carlo29092@gmail.com', 'Carlo Flores', 'Sale', 'May I inquire?', '2016-02-27 13:19:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_inquiry_replies`
--

CREATE TABLE `cs_inquiry_replies` (
  `inquiry_reply_id` int(11) NOT NULL,
  `inquiry_id` int(11) NOT NULL,
  `inquiry_reply_message` text NOT NULL,
  `date_created` datetime NOT NULL,
  `inquiry_reply_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_inquiry_replies`
--

INSERT INTO `cs_inquiry_replies` (`inquiry_reply_id`, `inquiry_id`, `inquiry_reply_message`, `date_created`, `inquiry_reply_status`) VALUES
(1, 1, '<p>Thanks :) Hope to transact with you again.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This is a test by the way Hahahaha!</p>\r\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>', '2016-02-25 08:08:06', 0),
(2, 2, '<p>erteryeetyrerty</p>', '2016-02-25 20:46:20', 0),
(3, 3, '<p>Yes you can inquire.</p>', '2016-02-26 21:19:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_inventory`
--

CREATE TABLE `cs_inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_sku` varchar(120) NOT NULL,
  `inventory_stocks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_inventory`
--

INSERT INTO `cs_inventory` (`inventory_id`, `product_id`, `inventory_sku`, `inventory_stocks`) VALUES
(1, 1, 'TTASG0', 61),
(2, 1, 'TTASP1', 49),
(3, 3, 'SL50', 7),
(4, 3, 'SL71', 18),
(5, 7, 'PT10', 49),
(6, 9, 'PT50', 60),
(7, 9, 'PT11', 60),
(8, 10, 'HVCCFHCAM0', 20),
(9, 10, 'HVCCFHCAT1', 27),
(10, 10, 'HVCCFHCBB2', 27),
(11, 10, 'HVCCFHCBM3', 28),
(12, 10, 'HVCCFHCBS4', 30),
(13, 10, 'HVCCFHCCR5', 23),
(14, 10, 'HVCCFHCCC6', 30),
(15, 11, 'AHCAV0', 24),
(16, 11, 'AHCA1', 18),
(17, 11, 'AHCBB2', 21),
(18, 11, 'AHCBB3', 10),
(19, 11, 'AHCEL4', 10),
(20, 11, 'AHCE5', 11),
(21, 11, 'AHCIB6', 10),
(22, 11, 'AHCL7', 18),
(23, 11, 'AHCNP8', 20),
(24, 11, 'AHCPB9', 7),
(25, 11, 'AHCP10', 10),
(26, 11, 'AHCPR11', 9),
(27, 11, 'AHCRE12', 9),
(28, 11, 'AHCRN13', 10),
(29, 11, 'AHCVG14', 10),
(30, 11, 'AHCWC15', 10),
(31, 12, 'CHCsn0', 10),
(32, 12, 'CHCba1', 10),
(33, 12, 'CHCvv2', 10),
(34, 12, 'CHCfd3', 10),
(35, 12, 'CHCd4', 10),
(36, 13, 'JAHCp0', 10),
(37, 13, 'JAHCv1', 10),
(38, 13, 'JAHCo2', 10),
(39, 13, 'JAHCt3', 10),
(40, 14, 'ASBam0', 9),
(41, 14, 'ASBat1', 10),
(42, 14, 'ASBbb2', 10),
(43, 14, 'ASBbm3', 10),
(44, 14, 'ASBbs4', 10),
(45, 14, 'ASBcc5', 10),
(46, 14, 'ASBdp6', 10),
(47, 14, 'ASBel7', 10),
(48, 15, 'FLBK30', 10),
(49, 15, 'FLBK41', 10),
(50, 16, 'DHTHCSGeb0', 19),
(51, 16, 'DHTHCSGef1', 10),
(52, 16, 'DHTHCSGel2', 10),
(53, 16, 'DHTHCSGes3', 9),
(54, 16, 'DHTHCSGgg4', 10),
(55, 16, 'DHTHCSGph5', 10),
(56, 16, 'DHTHCSGr6', 10),
(57, 17, 'ae0', 0),
(58, 18, 'SOD0', 10),
(59, 18, 'SMA1', 10),
(60, 19, 'TPR0', 20),
(61, 19, 'TPB1', 15),
(62, 19, 'TPG2', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cs_inventory_transfer`
--

CREATE TABLE `cs_inventory_transfer` (
  `inventory_transfer_id` int(11) NOT NULL,
  `inventory_sku` varchar(120) NOT NULL,
  `inventory_transfer_stocks` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `inventory_transfer_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_inventory_transfer`
--

INSERT INTO `cs_inventory_transfer` (`inventory_transfer_id`, `inventory_sku`, `inventory_transfer_stocks`, `supplier_id`, `date_created`, `date_modified`, `inventory_transfer_status`) VALUES
(1, 'AHCAV0', 3, 1, '2016-02-27 03:26:12', '2016-02-27 03:26:12', 1),
(2, 'AHCA1', 5, 1, '2016-02-27 03:26:22', '2016-02-27 03:26:22', 1),
(3, 'TPR0', 10, 1, '2016-02-27 15:55:41', '2016-02-27 15:55:41', 1),
(4, 'TPB1', 5, 1, '2016-02-27 15:55:41', '2016-02-27 15:55:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_newsletter`
--

CREATE TABLE `cs_newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `newsletter_email` varchar(300) NOT NULL,
  `newsletter_fullname` varchar(120) NOT NULL,
  `date_created` datetime NOT NULL,
  `newsletter_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_newsletter`
--

INSERT INTO `cs_newsletter` (`newsletter_id`, `newsletter_email`, `newsletter_fullname`, `date_created`, `newsletter_status`) VALUES
(1, 'carlo29092@gmail.com', 'carlo flores', '0000-00-00 00:00:00', 1),
(2, 'whereyouatkath@gmail.com', 'Kathleen Hinlog', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_options`
--

CREATE TABLE `cs_options` (
  `option_id` int(11) NOT NULL,
  `option_keyword` varchar(120) NOT NULL,
  `option_value` text NOT NULL,
  `option_load` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_options`
--

INSERT INTO `cs_options` (`option_id`, `option_keyword`, `option_value`, `option_load`) VALUES
(1, 'base_url', 'http://ez.hairgeek.ph', 1),
(2, 'store_name', 'Hair Geek', 1),
(3, 'store_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta erat ex. Praesent at lorem eu risus tempor bibendum sit amet non erat. Duis sapien tellus, vestibulum eget finibus sed, imperdiet ac purus. Sed sit amet lectus sed ante volutpat cursus. Duis consectetur auctor imperdiet. Vestibulum laoreet, leo volutpat posuere vestibulum, urna arcu lobortis leo, sit amet tempus justo nulla et risus. Maecenas sit amet odio a mi pharetra consequat.\r\n\r\nMorbi fermentum felis diam, at dictum lorem porttitor id. Proin imperdiet egestas eros et gravida. Morbi ut feugiat nunc, quis porttitor turpis. Ut at posuere odio. Proin eget libero augue. Duis placerat metus vel tincidunt tempus. Donec consectetur ex in massa varius, eu cursus enim auctor. Nam fermentum ac sem non euismod. Vivamus ultrices tristique vestibulum. Donec et vehicula neque. Mauris ut sem eget lorem volutpat malesuada. Mauris accumsan nulla id tincidunt efficitur. Aenean interdum consectetur ipsum, id fermentum odio vestibulum sed. Praesent facilisis blandit leo, ultrices suscipit elit pretium nec. Nunc hendrerit nec purus vitae faucibus.', 1),
(4, 'footer_address', '#143 Sample St. Sample City 1610', 0),
(5, 'footer_cellphone', '(+63) 912-123-4568', 0),
(6, 'footer_telephone', '(02) 6464-946', 0),
(7, 'footer_email', 'support@hairgeek.ph', 0),
(8, 'facebook', 'https://www.facebook.com/hairgeekph/', 0),
(9, 'instagram', 'https://www.instagram.com/hairgeekph/', 0),
(10, 'emailer', 'carlo29092@gmail.com', 0),
(11, 'emailer_password', 'Carlo123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_orders`
--

CREATE TABLE `cs_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_total` double(11,2) NOT NULL,
  `order_subtotal` double(11,2) NOT NULL,
  `order_shipping` double(11,2) NOT NULL,
  `order_additional_payment` double(11,2) NOT NULL DEFAULT '0.00',
  `order_note` text,
  `order_company` varchar(120) NOT NULL,
  `order_phone` varchar(20) NOT NULL,
  `order_address` text NOT NULL,
  `order_city` varchar(50) NOT NULL,
  `order_state` varchar(150) NOT NULL,
  `order_country` varchar(100) NOT NULL,
  `order_zipcode` varchar(20) NOT NULL,
  `order_link` varchar(200) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_payment_status` int(11) NOT NULL DEFAULT '0',
  `order_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_orders`
--

INSERT INTO `cs_orders` (`order_id`, `customer_id`, `order_total`, `order_subtotal`, `order_shipping`, `order_additional_payment`, `order_note`, `order_company`, `order_phone`, `order_address`, `order_city`, `order_state`, `order_country`, `order_zipcode`, `order_link`, `date_created`, `date_modified`, `order_payment_status`, `order_status`) VALUES
(1, 1, 2460.00, 2400.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', '30afcc12b27517f9e08f22411a184152', '2016-02-24 09:01:40', '2016-02-24 09:10:22', 2, 0),
(2, 2, 2500.00, 2400.00, 100.00, 0.00, 'Test ko lang', 'Witchikels', '+639274179764', '303-B P. Paterno Street', 'Binangonan', 'RIZAL', 'Philippines', '1940', '997ad30d960fd674de80fd766e99d721', '2016-02-24 16:07:31', '2016-02-24 16:18:43', 2, 1),
(3, 3, 620.00, 520.00, 100.00, 0.00, 'Please send it after lunch', '', '09752454612', '303-A P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '058c2e6eccd9868691153748ac6289a3', '2016-02-24 17:31:51', '2016-02-24 18:39:18', 2, 1),
(4, 3, 620.00, 520.00, 100.00, 0.00, 'Please send it after lunch', '', '09752454612', '303-A P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '058c2e6eccd9868691153748ac6289a3', '2016-02-24 17:31:54', '2016-02-24 17:31:54', 0, 0),
(5, 4, 7900.00, 7800.00, 0.00, 100.00, '', 'N/A', '09269452171', '015 D. Lacanienta ', 'Cainta', 'Rizal', 'Philippines', '1900', '792bebc79344959ed50a4b7d76466e5e', '2016-02-24 20:07:26', '2016-02-26 15:32:15', 3, 0),
(6, 5, 1720.00, 1640.00, 80.00, 0.00, '', 'STI', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', 'b9e593d2e39fb5cfe3e0f43c99c682b3', '2016-02-24 20:10:36', '2016-02-24 20:14:20', 2, 1),
(7, 6, 7300.00, 7200.00, 0.00, 100.00, '', '', '09359170333', '328 C Majestic', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbd1bff6d2b5e1587b58753a79a14ea4', '2016-02-24 20:14:23', '2016-02-24 20:37:31', 2, 1),
(8, 5, 1100.00, 1040.00, 60.00, 0.00, '', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', '61309e2007ba928a07cb2e2e564bfd55', '2016-02-24 20:17:40', '2016-02-24 20:23:18', 2, 0),
(9, 5, 1720.00, 1640.00, 80.00, 0.00, '', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', '6bfa7f52af40eadcb593ce9364b20b35', '2016-02-24 20:25:16', '2016-02-25 18:40:09', 2, 0),
(10, 7, 1140.00, 1040.00, 100.00, 0.00, '', '', '09274179764', '306 P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '6546b9591b0f9af62ffb8403f16cd3d2', '2016-02-24 20:53:46', '2016-02-24 21:04:01', 2, 1),
(11, 7, 1140.00, 1040.00, 100.00, 0.00, '', '', '09274179764', '306 P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '3f757ed29e18a05f4412a3ba0e9fe4e0', '2016-02-25 01:34:28', '2016-02-25 01:38:32', 2, 1),
(12, 5, 5140.00, 5140.00, 0.00, 0.00, '', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', '3758d8974b344c81c41b9e129eadfab1', '2016-02-25 18:22:31', '2016-02-25 18:29:33', 2, 0),
(13, 1, 2009.00, 1929.00, 80.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', 'cef37d5e61f10340e78dd28e6acc5700', '2016-02-25 18:28:24', '2016-02-26 09:22:14', 2, 1),
(14, 5, 731.00, 671.00, 60.00, 0.00, '', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', '32384929ca8a1525f6a85a8abcdbb9a1', '2016-02-25 18:31:00', '2016-02-25 18:39:41', 2, 0),
(15, 5, 580.00, 520.00, 60.00, 0.00, '', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', '827092db777b84a945bd72bd4ed8dfe4', '2016-02-25 18:38:47', '2016-02-25 18:39:22', 2, 0),
(16, 1, 660.00, 600.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', '84ad347ae28da67991c7fcc991bbff3f', '2016-02-26 09:18:19', '2016-02-26 09:18:19', 0, -1),
(17, 1, 560.00, 500.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', 'ebff4136512df2c817471377645c69b1', '2016-02-26 16:05:01', '2016-03-07 02:55:22', 3, 0),
(18, 8, 100.00, 0.00, 100.00, 0.00, '', '', '09105555836', '13 Pabton Ville I', 'Cainta', 'Rizal', 'Philippines', '1900', '7c11caa49906bf263cee24d811cccde1', '2016-02-26 17:43:30', '2016-02-26 17:46:48', 2, 0),
(19, 8, 600.00, 500.00, 100.00, 0.00, '', '', '4567890', '13 Pabton Ville I', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbc0499c52431c6c8c64495c57d85dce', '2016-02-26 18:18:51', '2016-03-07 02:56:51', 2, 0),
(20, 8, 100.00, 0.00, 100.00, 0.00, '', '', '4567890', '13 Pabton Ville I', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbc0499c52431c6c8c64495c57d85dce', '2016-02-26 18:20:21', '2016-02-26 18:20:21', 0, 0),
(21, 8, 100.00, 0.00, 100.00, 0.00, '', '', '4567890', '13 Pabton Ville I', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbc0499c52431c6c8c64495c57d85dce', '2016-02-26 18:20:42', '2016-02-26 18:20:42', 0, 0),
(22, 8, 100.00, 0.00, 100.00, 0.00, '', '', '4567890', '13 Pabton Ville I', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbc0499c52431c6c8c64495c57d85dce', '2016-02-26 18:21:09', '2016-02-26 18:21:09', 0, 0),
(23, 8, 0.00, 0.00, 0.00, 0.00, '', '', '6464946', 'Parola', 'Cainta', 'Rizal', 'Philippines', '1900', 'fbc0499c52431c6c8c64495c57d85dce', '2016-02-26 18:22:40', '2016-02-26 18:22:40', 0, 0),
(24, 2, 700.00, 600.00, 100.00, 0.00, '', '', '09065124335', 'P. Paterno Street Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '9a40c4deb54e8ce34b1ededf49596fb0', '2016-02-26 18:27:04', '2016-02-26 18:28:31', 2, 1),
(28, 1, 430.00, 370.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', 'd645d6d2b426de88523e7dde4e9122b9', '2016-02-26 19:08:22', '2016-02-26 19:11:03', 2, 1),
(29, 1, 1088.00, 1028.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', 'b4417510e8d7e852b431da144231611d', '2016-02-26 19:37:53', '2016-02-26 22:21:45', 2, 1),
(30, 1, 1500.00, 1440.00, 60.00, 0.00, '', '', '09124610087', '#134 Santolan', 'Pasig City', 'Manila', 'Philippines', '1610', 'b4417510e8d7e852b431da144231611d', '2016-02-26 22:14:32', '2016-03-07 09:18:03', 2, 0),
(31, 9, 909.00, 809.00, 100.00, 0.00, '', '', '12323', 'ajsdjklasdklj', 'klj', 'lkjlkj', 'Philippines', 'kljjkl', '99509c286c197e205b4f02a07259db94', '2016-02-26 22:36:25', '2016-02-26 22:36:25', 0, 0),
(32, -1, 1800.00, 1800.00, 0.00, 0.00, 'POS SALE', 'POS SALE', 'POS SALE', 'POS SALE', 'POS SALE', '', '', 'POS SALE', NULL, '2016-02-28 03:44:22', '2016-02-28 03:44:22', 2, 1),
(33, 1, 1110.00, 1050.00, 60.00, 0.00, '', '', '+639124610087', '#134 Rd 5. M De Leon, Santolan', 'Pasig City', 'Metro Manila', 'Philippines', '1610', '7d8ead8144b365171d0383427f86a2b5', '2016-03-05 10:25:08', '2016-03-07 04:08:47', 2, 1),
(34, 8, 0.00, 0.00, 0.00, 0.00, '', '', '09105555836', '123 goodboy st.', 'Cainta', 'Rizal', 'Philippines', '1900', 'b96f698c6221e6cb9fad97a897b02806', '2016-03-07 03:18:41', '2016-03-07 03:18:41', 0, 0),
(35, 8, 4720.00, 3200.00, 1520.00, 0.00, '', '', '09105555836', '123 porpaybsix', 'Cainta', 'Rizal', 'Philippines', '1900', 'ff629f39c8f9a999730e02be23e984ac', '2016-03-07 04:01:01', '2016-03-07 04:03:41', 2, 0),
(36, 3, 620.00, 520.00, 100.00, 0.00, '', '', '09274179764', '306 P. Paterno St. Libis', 'Binangonan', 'Rizal', 'Philippines', '1940', '4b734c634e0840ac193f3cf2b7c68009', '2016-03-10 08:05:32', '2016-03-10 08:22:15', 2, 1),
(37, 5, 7200.00, 6000.00, 1200.00, 0.00, 'Thanks', '', '09356586200', '#13 brgy. Matahimik Bugbugan Street', 'Manila', 'Manila', 'Philippines', '1920', 'cba8710124e53208cd5c724c3ab731bb', '2016-03-10 13:35:09', '2016-03-10 13:38:04', 1, 0),
(38, 10, 1100.00, 1100.00, 0.00, 0.00, '', '', '09274179764', 'MitsuTech Street', 'Angono', 'Rizal', 'Philippines', '', '6b7a297cf76b1ccf54e33e74aea1dc38', '2016-03-10 15:42:56', '2016-03-10 16:02:21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_content`
--

CREATE TABLE `cs_order_content` (
  `order_content_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `order_content_qty` int(11) NOT NULL,
  `order_content_discount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_content`
--

INSERT INTO `cs_order_content` (`order_content_id`, `order_id`, `product_variant_id`, `order_content_qty`, `order_content_discount`) VALUES
(1, 1, 2, 4, NULL),
(2, 2, 6, 4, NULL),
(3, 3, 10, 1, NULL),
(4, 5, 18, 5, NULL),
(5, 5, 13, 5, NULL),
(6, 5, 20, 5, NULL),
(7, 6, 3, 1, NULL),
(8, 6, 17, 1, NULL),
(9, 6, 20, 1, NULL),
(10, 7, 2, 12, NULL),
(11, 8, 8, 2, NULL),
(12, 9, 3, 1, NULL),
(13, 9, 17, 1, NULL),
(14, 9, 20, 1, NULL),
(15, 10, 16, 2, NULL),
(16, 11, 17, 2, NULL),
(17, 12, 29, 2, NULL),
(18, 12, 35, 4, NULL),
(19, 13, 1, 1, NULL),
(20, 13, 33, 1, NULL),
(21, 13, 19, 1, NULL),
(22, 14, 42, 1, NULL),
(23, 15, 13, 1, NULL),
(24, 16, 7, 1, NULL),
(25, 17, 2, 1, NULL),
(26, 19, 2, 1, NULL),
(27, 24, 3, 1, NULL),
(28, 25, 1, 3, '0'),
(29, 26, 1, 2, '0'),
(30, 27, 3, 2, NULL),
(31, 28, 9, 1, NULL),
(32, 29, 3, 1, NULL),
(33, 29, 46, 1, NULL),
(34, 30, 3, 3, NULL),
(35, 31, 34, 1, NULL),
(36, 32, 6, 3, '0'),
(37, 33, 4, 2, NULL),
(38, 36, 8, 1, NULL),
(39, 37, 2, 10, NULL),
(40, 38, 4, 1, NULL),
(41, 38, 9, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_discount`
--

CREATE TABLE `cs_order_discount` (
  `order_discount_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_discount_to` varchar(20) NOT NULL,
  `order_discount_value` double(11,2) NOT NULL,
  `product_variant_id` int(11) NOT NULL DEFAULT '0',
  `order_discount_type` int(11) NOT NULL DEFAULT '0',
  `order_discount_reason` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_discount`
--

INSERT INTO `cs_order_discount` (`order_discount_id`, `order_id`, `order_discount_to`, `order_discount_value`, `product_variant_id`, `order_discount_type`, `order_discount_reason`) VALUES
(1, 27, 'all', 150.00, 0, 1, 'Graduation Sale'),
(2, 28, 'all', 150.00, 0, 1, 'Graduation Sale'),
(3, 30, 'all', 20.00, 0, 2, 'Paul Matthew Sponsor'),
(4, 33, 'all', 150.00, 0, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_fulfillment`
--

CREATE TABLE `cs_order_fulfillment` (
  `order_fulfillment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_fulfillment_tracking` varchar(120) NOT NULL,
  `order_fulfillment_courier` varchar(120) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_fulfillment`
--

INSERT INTO `cs_order_fulfillment` (`order_fulfillment_id`, `order_id`, `order_fulfillment_tracking`, `order_fulfillment_courier`, `date_created`) VALUES
(1, 2, '326598123', '2go', '2016-02-24 16:19:35'),
(2, 3, '698564265', 'XEND', '2016-02-24 18:45:56'),
(3, 6, '456346543', '3655', '2016-02-24 20:15:39'),
(4, 7, '6529865325', 'Xend', '2016-02-24 20:38:49'),
(5, 10, '6598653269', '2GO', '2016-02-24 21:09:29'),
(6, 11, '6391245683', '2go', '2016-02-25 01:39:14'),
(7, 13, '2345678', 'Xend', '2016-02-26 09:23:50'),
(8, 24, '123214f21314', 'Xend', '2016-02-26 18:29:30'),
(9, 28, '9382475', '2GO', '2016-02-26 19:11:51'),
(10, 29, '12334235', 'Xend', '2016-02-26 22:23:39'),
(11, 33, '12345', 'Xend', '2016-03-07 04:09:20'),
(12, 36, '123456789', 'Xend', '2016-03-10 08:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_history`
--

CREATE TABLE `cs_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_history_message` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_history`
--

INSERT INTO `cs_order_history` (`order_history_id`, `order_id`, `order_history_message`, `date_created`) VALUES
(1, 1, 'Order has been Placed', '2016-02-24 09:01:40'),
(2, 1, 'Customer sent a Payment Confirmation.', '2016-02-24 09:03:36'),
(3, 1, 'Hair Geek Confirms Payment.', '2016-02-24 09:10:22'),
(4, 2, 'Order has been Placed', '2016-02-24 16:07:31'),
(5, 2, 'Customer sent a Payment Confirmation.', '2016-02-24 16:10:09'),
(6, 2, 'Hair Geek Confirms Payment.', '2016-02-24 16:18:43'),
(7, 2, 'The Order has been fulfilled by Hair Geek', '2016-02-24 16:19:35'),
(8, 3, 'Order has been Placed', '2016-02-24 17:31:51'),
(9, 4, 'Order has been Placed', '2016-02-24 17:31:54'),
(10, 3, 'Customer sent a Payment Confirmation.', '2016-02-24 18:37:55'),
(11, 3, 'Hair Geek Confirms Payment.', '2016-02-24 18:39:18'),
(12, 3, 'The Order has been fulfilled by Hair Geek', '2016-02-24 18:45:56'),
(13, 5, 'Order has been Placed', '2016-02-24 20:07:26'),
(14, 6, 'Order has been Placed', '2016-02-24 20:10:36'),
(15, 6, 'Customer sent a Payment Confirmation.', '2016-02-24 20:13:32'),
(16, 6, 'Hair Geek Confirms Payment.', '2016-02-24 20:14:20'),
(17, 7, 'Order has been Placed', '2016-02-24 20:14:23'),
(18, 6, 'The Order has been fulfilled by Hair Geek', '2016-02-24 20:15:39'),
(19, 8, 'Order has been Placed', '2016-02-24 20:17:40'),
(20, 5, 'Customer sent a Payment Confirmation.', '2016-02-24 20:18:42'),
(21, 8, 'Customer sent a Payment Confirmation.', '2016-02-24 20:18:43'),
(22, 8, 'Customer sent a Payment Confirmation.', '2016-02-24 20:19:40'),
(23, 8, 'Hair Geek Confirms Payment.', '2016-02-24 20:23:18'),
(24, 9, 'Order has been Placed', '2016-02-24 20:25:16'),
(25, 9, 'Customer sent a Payment Confirmation.', '2016-02-24 20:26:45'),
(26, 7, 'Customer sent a Payment Confirmation.', '2016-02-24 20:34:10'),
(27, 7, 'Hair Geek Confirms Payment.', '2016-02-24 20:37:31'),
(28, 7, 'The Order has been fulfilled by Hair Geek', '2016-02-24 20:38:49'),
(29, 10, 'Order has been Placed', '2016-02-24 20:53:46'),
(30, 10, 'Customer sent a Payment Confirmation.', '2016-02-24 21:03:16'),
(31, 10, 'Hair Geek Confirms Payment.', '2016-02-24 21:04:01'),
(32, 10, 'The Order has been fulfilled by Hair Geek', '2016-02-24 21:09:29'),
(33, 5, 'Customer sent a Payment Confirmation.', '2016-02-24 21:59:34'),
(34, 11, 'Order has been Placed', '2016-02-25 01:34:28'),
(35, 11, 'Customer sent a Payment Confirmation.', '2016-02-25 01:36:21'),
(36, 11, 'Hair Geek Confirms Payment.', '2016-02-25 01:38:32'),
(37, 11, 'The Order has been fulfilled by Hair Geek', '2016-02-25 01:39:14'),
(38, 12, 'Order has been Placed', '2016-02-25 18:22:31'),
(39, 12, 'Customer sent a Payment Confirmation.', '2016-02-25 18:24:01'),
(40, 12, 'Customer sent a Payment Confirmation.', '2016-02-25 18:25:24'),
(41, 13, 'Order has been Placed', '2016-02-25 18:28:24'),
(42, 12, 'Hair Geek Confirms Payment.', '2016-02-25 18:29:33'),
(43, 14, 'Order has been Placed', '2016-02-25 18:31:00'),
(44, 14, 'Customer sent a Payment Confirmation.', '2016-02-25 18:31:57'),
(45, 13, 'Customer sent a Payment Confirmation.', '2016-02-25 18:33:12'),
(46, 13, 'Customer sent a Payment Confirmation.', '2016-02-25 18:36:43'),
(47, 15, 'Order has been Placed', '2016-02-25 18:38:47'),
(48, 15, 'Customer sent a Payment Confirmation.', '2016-02-25 18:39:05'),
(49, 15, 'Hair Geek Confirms Payment.', '2016-02-25 18:39:22'),
(50, 14, 'Hair Geek Confirms Payment.', '2016-02-25 18:39:41'),
(51, 9, 'Hair Geek Confirms Payment.', '2016-02-25 18:40:09'),
(52, 16, 'Order has been Placed', '2016-02-26 09:18:19'),
(53, 16, 'Customer Cancelled the Order.', '2016-02-26 10:18:29'),
(54, 13, 'Hair Geek Confirms Payment by ', '2016-02-26 09:22:14'),
(55, 13, 'The Order has been fulfilled by Carlo Flores', '2016-02-26 09:23:50'),
(56, 5, 'Hair Geek Request Another Proof Payment by Carlo Flores', '2016-02-26 15:32:15'),
(57, 17, 'Order has been Placed', '2016-02-26 16:05:01'),
(58, 17, 'Customer sent a Payment Confirmation.', '2016-02-26 16:06:09'),
(59, 17, 'Hair Geek Request Another Proof Payment by Carlo Flores', '2016-02-26 16:06:19'),
(60, 17, 'Customer sent a Payment Confirmation.', '2016-02-26 16:07:57'),
(61, 18, 'Order has been Placed', '2016-02-26 17:43:30'),
(62, 18, 'Customer sent a Payment Confirmation.', '2016-02-26 17:45:40'),
(63, 18, 'Hair Geek Confirms Payment by Carlo Flores', '2016-02-26 17:46:48'),
(64, 19, 'Order has been Placed', '2016-02-26 18:18:51'),
(65, 20, 'Order has been Placed', '2016-02-26 18:20:21'),
(66, 21, 'Order has been Placed', '2016-02-26 18:20:42'),
(67, 22, 'Order has been Placed', '2016-02-26 18:21:09'),
(68, 23, 'Order has been Placed', '2016-02-26 18:22:40'),
(69, 24, 'Order has been Placed', '2016-02-26 18:27:04'),
(70, 24, 'Customer sent a Payment Confirmation.', '2016-02-26 18:27:43'),
(71, 24, 'Hair Geek Confirms Payment by Carlo Flores', '2016-02-26 18:28:31'),
(72, 24, 'The Order has been fulfilled by Carlo Flores', '2016-02-26 18:29:30'),
(73, 17, 'Hair Geek Request Another Proof Payment by Carlo Flores', '2016-02-26 18:40:50'),
(74, 17, 'Customer sent a Payment Confirmation.', '2016-02-26 18:44:15'),
(75, 27, 'Order has been Placed', '2016-02-26 19:06:38'),
(76, 28, 'Order has been Placed', '2016-02-26 19:08:22'),
(77, 17, 'Hair Geek Request Another Proof Payment by Churchill Villanueva', '2016-02-26 19:09:11'),
(78, 28, 'Customer sent a Payment Confirmation.', '2016-02-26 19:10:09'),
(79, 28, 'Hair Geek Request Another Proof Payment by Churchill Villanueva', '2016-02-26 19:10:21'),
(80, 28, 'Customer sent a Payment Confirmation.', '2016-02-26 19:10:53'),
(81, 28, 'Hair Geek Confirms Payment by Churchill Villanueva', '2016-02-26 19:11:03'),
(82, 28, 'The Order has been fulfilled by Churchill Villanueva', '2016-02-26 19:11:51'),
(83, 19, 'Customer sent a Payment Confirmation.', '2016-02-26 19:15:00'),
(84, 19, 'Customer sent a Payment Confirmation.', '2016-02-26 19:15:31'),
(85, 29, 'Order has been Placed', '2016-02-26 19:37:53'),
(86, 30, 'Order has been Placed', '2016-02-26 22:14:32'),
(87, 29, 'Customer sent a Payment Confirmation.', '2016-02-26 22:18:20'),
(88, 29, 'Hair Geek Request Another Proof Payment by Carlo Flores', '2016-02-26 22:18:50'),
(89, 29, 'Customer sent a Payment Confirmation.', '2016-02-26 22:20:36'),
(90, 29, 'Hair Geek Confirms Payment by Carlo Flores', '2016-02-26 22:21:45'),
(91, 29, 'The Order has been fulfilled by Carlo Flores', '2016-02-26 22:23:39'),
(92, 31, 'Order has been Placed', '2016-02-26 22:36:25'),
(93, 17, 'Customer sent a Payment Confirmation.', '2016-02-29 08:02:41'),
(94, 33, 'Order has been Placed', '2016-03-05 10:25:08'),
(95, 17, 'Hair Geek Request Another Proof Payment by Rob Bernardino', '2016-03-07 02:55:22'),
(96, 19, 'Hair Geek Confirms Payment by Rob Bernardino', '2016-03-07 02:56:51'),
(97, 34, 'Order has been Placed', '2016-03-07 03:18:41'),
(98, 35, 'Order has been Placed', '2016-03-07 04:01:01'),
(99, 35, 'Customer sent a Payment Confirmation.', '2016-03-07 04:02:15'),
(100, 35, 'Hair Geek Confirms Payment by Churchill Villanueva', '2016-03-07 04:03:41'),
(101, 33, 'Hair Geek Confirms Payment by Churchill Villanueva', '2016-03-07 04:08:47'),
(102, 33, 'The Order has been fulfilled by Churchill Villanueva', '2016-03-07 04:09:20'),
(103, 30, 'Hair Geek Confirms Payment by Rob Bernardino', '2016-03-07 09:18:03'),
(104, 36, 'Order has been Placed', '2016-03-10 08:05:32'),
(105, 36, 'Customer sent a Payment Confirmation.', '2016-03-10 08:06:53'),
(106, 36, 'Hair Geek Confirms Payment by Rob Bernardino', '2016-03-10 08:22:15'),
(107, 36, 'The Order has been fulfilled by Rob Bernardino', '2016-03-10 08:40:38'),
(108, 37, 'Order has been Placed', '2016-03-10 13:35:09'),
(109, 37, 'Customer sent a Payment Confirmation.', '2016-03-10 13:38:04'),
(110, 38, 'Order has been Placed', '2016-03-10 15:42:56'),
(111, 38, 'Customer sent a Payment Confirmation.', '2016-03-10 16:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_meta`
--

CREATE TABLE `cs_order_meta` (
  `order_meta_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_meta`
--

INSERT INTO `cs_order_meta` (`order_meta_id`, `order_id`, `keyword`, `value`) VALUES
(1, 1, 'payment_method', 'BDO'),
(2, 2, 'payment_method', 'BPI'),
(3, 3, 'payment_method', 'BDO'),
(4, 4, 'payment_method', 'BDO'),
(5, 5, 'payment_method', 'GCash'),
(6, 6, 'payment_method', 'BPI'),
(7, 7, 'payment_method', 'LBC'),
(8, 8, 'payment_method', 'BDO'),
(9, 9, 'payment_method', 'BDO'),
(10, 10, 'payment_method', 'BPI'),
(11, 11, 'payment_method', 'BDO'),
(12, 12, 'payment_method', 'BDO'),
(13, 13, 'payment_method', 'BDO'),
(14, 14, 'payment_method', 'BDO'),
(15, 15, 'payment_method', 'BDO'),
(16, 16, 'payment_method', 'BDO'),
(17, 17, 'payment_method', 'BDO'),
(18, 18, 'payment_method', 'BDO'),
(19, 19, 'payment_method', 'BDO'),
(20, 20, 'payment_method', 'BDO'),
(21, 21, 'payment_method', 'BDO'),
(22, 22, 'payment_method', 'BDO'),
(23, 23, 'payment_method', 'BDO'),
(24, 24, 'payment_method', 'BDO'),
(25, 27, 'payment_method', 'BDO'),
(26, 28, 'payment_method', 'BDO'),
(27, 29, 'payment_method', 'BDO'),
(28, 30, 'payment_method', 'BDO'),
(29, 31, 'payment_method', 'BDO'),
(30, 33, 'payment_method', 'BDO'),
(31, 34, 'payment_method', 'BDO'),
(32, 35, 'payment_method', 'BDO'),
(33, 36, 'payment_method', 'BDO'),
(34, 37, 'payment_method', 'BDO'),
(35, 38, 'payment_method', 'BDO');

-- --------------------------------------------------------

--
-- Table structure for table `cs_order_proof`
--

CREATE TABLE `cs_order_proof` (
  `order_proof_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_proof_file` text NOT NULL,
  `order_proof_note` text NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_order_proof`
--

INSERT INTO `cs_order_proof` (`order_proof_id`, `order_id`, `order_proof_file`, `order_proof_note`, `date_created`) VALUES
(1, 1, '56cdfe7fc4493BPIslip.jpg', 'this is my test proof of payment', '2016-02-24 09:03:36'),
(2, 2, '56ce6260c56c5IMG_20160217_101258.jpg', 'I made my payment sample', '2016-02-24 16:10:09'),
(3, 3, '56ce850dea90eIMG_20160225_123528.jpg', 'I made my payment', '2016-02-24 18:37:55'),
(4, 6, '56ce9b8bbde27$RO6AQQN.jpg', '', '2016-02-24 20:13:32'),
(5, 5, '56ce9cacaf348hahaha.jpg', '', '2016-02-24 20:18:42'),
(6, 8, '56ce9cc204750$RI5T6CT.png', '', '2016-02-24 20:18:43'),
(7, 8, '56ce9cf8736e8$RI5T6CT.png', '', '2016-02-24 20:19:40'),
(8, 9, '56ce9ea24cf0d10956889_882122178514540_166784672_n.png', '', '2016-02-24 20:26:45'),
(9, 7, '56cea047123d1image.jpeg', 'Ok na po bayad ko. When will i receive the products? Tnx', '2016-02-24 20:34:10'),
(10, 10, '56cea729e7617SampleReceipt.gif', 'Here is my payment', '2016-02-24 21:03:16'),
(11, 5, '56ceb464d7dfc12665766_962726980448155_1268857125_n.jpg', '', '2016-02-24 21:59:34'),
(12, 11, '56cee71d5c177IMG_20150706_155643.jpg', '', '2016-02-25 01:36:21'),
(13, 12, '56cfd35f8fc6bHairGeekLogo.png', '', '2016-02-25 18:24:01'),
(14, 12, '56cfd3b25b22210956889_882122178514540_166784672_n.png.jpg', '', '2016-02-25 18:25:24'),
(15, 14, '56cfd53c90052Capture.PNG', '', '2016-02-25 18:31:57'),
(16, 13, '56cfd583e61f267884.PNG', '', '2016-02-25 18:33:12'),
(17, 13, '56cfd65759f4767822.PNG', 'test', '2016-02-25 18:36:43'),
(18, 15, '56cfd6e68531a10956889_882122178514540_166784672_n.png.jpg', '', '2016-02-25 18:39:05'),
(19, 17, '56d10489e71ef824e79ed69b4aead701bc19c4859ed915497c9d191990e8e7f7b68e0659f6c9c.jpg', 'This is my proof', '2016-02-26 16:06:09'),
(20, 17, '56d104f5a6b3379d2fd443e2add5a10049ef016b1b48b5db34d0c99806f2d31346a59fd1ffda6.jpg', 'My another proof', '2016-02-26 16:07:57'),
(21, 18, '56d11bd89352512736149_10153454476501172_1168258997_n.jpg', 'Note', '2016-02-26 17:45:40'),
(22, 24, '56d125b579cb012324932_10204142077192434_1225610186_n.jpg', '', '2016-02-26 18:27:43'),
(23, 17, '56d129965c30812736149_10153454476501172_1168258997_n.jpg', 'My another payment', '2016-02-26 18:44:15'),
(24, 28, '56d12fa99327d12166462_10153229522746172_1427458413_n.jpg', 'This is my proof of payment', '2016-02-26 19:10:09'),
(25, 28, '56d12fd1c3de212736149_10153454476501172_1168258997_n.jpg', 'My another proof of payment', '2016-02-26 19:10:53'),
(26, 19, '56d130cf644f611155169_364832273721088_77566791698375790_o (1).jpg', '', '2016-02-26 19:15:00'),
(27, 19, '56d130ed2cd3711155169_364832273721088_77566791698375790_o (1).jpg', '', '2016-02-26 19:15:31'),
(28, 29, '56d15bbda6386Clairol Shimmer.jpg', 'This is my moment in time.', '2016-02-26 22:18:20'),
(29, 29, '56d15c32e4ce7contact.jpg', 'totoo na talaga to, with palong palong this sem', '2016-02-26 22:20:36'),
(30, 17, '56d487ba5cee2received_914825481958719.jpeg', '', '2016-02-29 08:02:41'),
(31, 35, '56dd0b465797110956889_882122178514540_166784672_n.ico', '', '2016-03-07 04:02:15'),
(32, 36, '56e1392b2370dSampleReceipt.gif', '', '2016-03-10 08:06:53'),
(33, 37, '56e186776dacb10956889_882122178514540_166784672_n.png', '', '2016-03-10 13:38:04'),
(34, 38, '56e1a89bc05aeSampleReceipt.gif', '', '2016-03-10 16:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `cs_payment_method`
--

CREATE TABLE `cs_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(120) NOT NULL,
  `payment_method_instruction` text NOT NULL,
  `payment_method_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_payment_method`
--

INSERT INTO `cs_payment_method` (`payment_method_id`, `payment_method_name`, `payment_method_instruction`, `payment_method_status`) VALUES
(1, 'BDO', 'Account Name : Janelle Beatrice Bueno <br/>Account # : 007920022530', 1),
(2, 'GCash', 'Name :  Eliza Marie Alvaran<br/>Contact # : 09178031721<br/>Address :  	East Ave, Q.C', 1),
(3, 'LBC', 'Name : Eliza Marie Alvaran<br/>\nContact # : 09178031721<br/>\nAddress : East Ave, Q.C ', 1),
(4, 'BDO', 'Account Name :  Janelle Beatrice Bueno<br/>Account # : 4229079587', 1),
(5, 'PayPal', 'Follow the instructions from paypal website.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_pos_order`
--

CREATE TABLE `cs_pos_order` (
  `pos_order_id` int(11) NOT NULL,
  `pos_order_group` text NOT NULL,
  `pos_order_total` double(11,2) NOT NULL,
  `pos_order_content` text NOT NULL,
  `pos_order_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cs_products`
--

CREATE TABLE `cs_products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(150) NOT NULL,
  `product_price` double(11,2) NOT NULL,
  `product_compare_price` double(11,2) DEFAULT NULL,
  `product_description` text NOT NULL,
  `product_tags` text NOT NULL,
  `product_img` text NOT NULL,
  `product_sku_id` varchar(50) NOT NULL,
  `product_barcode` varchar(50) DEFAULT NULL,
  `product_type_id` int(11) NOT NULL,
  `product_brand_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_products`
--

INSERT INTO `cs_products` (`product_id`, `product_title`, `product_price`, `product_compare_price`, `product_description`, `product_tags`, `product_img`, `product_sku_id`, `product_barcode`, `product_type_id`, `product_brand_id`, `date_created`, `date_modified`) VALUES
(10, 'High Voltage Classic Cream Formula Hair Color', 600.00, NULL, '<p><em><strong>GUILT-FREE GLAMOUR!</strong></em>®</p>\r\n<p> </p>\r\n<p>Cream Formula Semi-Permanent Hair Color. Vegan Formula colors and conditions hair.<br /><br />Cruelty-free cosmetics. Tested on celebrities not animals™<br />Manic Panic® Hair Color is made from vegan ingredients and has the added benefit of conditioning the hair. <br />Manic Panic® Hair Color is PPD free! Ammonia-free and Peroxide-free!<br />All orders packed with Eco-friendly Biodegradable peanuts!<br />MANIC PANIC® GLAMNATION® TESTED ON CELEBRITIES, NOT ANIMALS™ Guilt-Free Glamour™<br />Colors that Rock!® Color without Commitment® Wear It Loud!®<br /><br />™ & ® Exclusive Trademarks of Tish & Snooky’s N.Y.C. Inc. Products are proudly made in the U.S.A</p>\r\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" [removed]> </div>', 'ManicPanic,Cream', '56cdf65641a51base_img.jpg', 'HVCCFHC', NULL, 1, 1, '2016-02-24 08:35:59', '2016-02-25 07:19:37'),
(11, 'Adore Hair Color', 520.00, NULL, '<p>Adore Hair Color is semi-permanent that deposits color while giving your hair a healthy resilient shine. It is formulated with a blend of natural ingredients to provide rich color, enhance shine, and leave hair soft and silky. It\'s safe, because it contains <strong><u>no ammonia, no peroxide, no alcohol, and no PPD</u>.</strong> </p>', 'haircolor,hairdye,adore,manicpanic,hairgeek', '56ce808711d43African Violet.jpg,56ce808711effAquamarine.jpg,56ce8087120dfBaby Blue.jpg,56ce8087122c4Blue Black.jpg,56ce808712481Electric Lime.jpg,56ce80871264aEmerald.jpg,56ce808712816Indigo Blue.jpg,56ce808712993Lavender.jpg,56ce808712b31Neon Pink.jpg,56ce808712cf4Pink Blush.jpg,56ce808712eb0Platinum.jpg,56ce80871306aPurple Rage.jpg,56ce8087131e9Rich Eggplant.jpg,56ce80871818bRoyal Navy.jpg,56ce80871835eUntitled.jpg,56ce80871858dViolet Gem.jpg,56ce80871870cWild Cherry.jpg', 'AHC', NULL, 2, 2, '2016-02-24 17:06:30', '2016-02-25 04:02:18'),
(12, 'Creamtone Hair Color', 600.00, NULL, '<p>A pale pink that evokes the soft petals of a flower.</p>\r\n<p> </p>\r\n<p>CREAMTONES™ PERFECT PASTELS</p>\r\n<p> </p>\r\n<p>The Creamtones™ Collection was named after the 3-piece acapella act "The Creamtones" that included Tish, Snooky, and their good friend Diana Mae Munch. For best results, apply to hair lightened to a level 10. All dyes are vegan and PPD-free, paraben-free, and ammonia-free. Tested on Celebrities, Not Animals™!</p>', 'hair,haircolor', '56cf184b8dca91.PNG', 'CHC', NULL, 1, 1, '2016-02-25 05:06:53', '2016-02-25 05:06:53'),
(13, 'Jem Amplified Hair Color', 952.00, NULL, '<p>To celebrate Universal Pictures\' live-action, motion-picture adaptation of iconic JEM AND THE HOLOGRAMS Manic Panic® presents a collection of exclusive, special-edition themed hair colors. An action film starring rocker girls with colored hair, what could be more perfect than JEM AND THE HOLOGRAMS teaming up with Manic Panic®?</p>\r\n<p>JEM AND THE HOLOGRAMS and all related characters are trademarks of Hasbro and are used with permission. © 2015 Hasbro. All Rights Reserved. Licensed by Hasbro.</p>', 'hair,haircolor', '56cf1d3f3def32.PNG', 'JAHC', NULL, 1, 1, '2016-02-25 05:28:10', '2016-02-25 05:28:10'),
(14, 'Amplified Squeeze Bottle', 809.00, NULL, '<p>The Amplified™ formula is a semi-permanent hair color that last 30% longer than our High Voltage® Classic color! <br />This stronger and longer-lasting formula is available in many of our best selling shades.</p>\r\n<p> </p>\r\n<p><br />Cream Formula Semi-Permanent Hair Color. Vegan Formula colors and conditions hair.<br />Manic Panic® Hair Color is ready to use, do not mix with peroxide. Vegan ingredients. PPD and ammonia-free.<br /><strong>Tested on celebrities, not animals™</strong>.</p>', 'hair,hairdye', '56cf1e3c9e3503.PNG', 'ASB', NULL, 2, 1, '2016-02-25 05:33:51', '2016-02-25 05:33:51'),
(15, 'Flash Lightning Bleach Kit', 571.00, NULL, '<p>Before using any Manic Panic® Semi-Permanent Hair Color, pre-lighten your hair with Flash Lightning® Bleach to get the most intense color.<br />This kit comes complete with: <br />1 dust-free bleach powder <br />1 30-volume cream developer <br />1 mixing tub <br />1 tint brush <br />1 plastic cap <br />1 set of plastic gloves <br />and instructions for use.</p>\r\n<p> </p>\r\n<p>INSTRUCTIONS: <br />The MANIC PANIC® FLASH LIGHTNING® bleach kit was designed for pre-lightening hair before using MANIC PANIC® vegan semi-permanent hair colors. Everything you need to lighten your hair is in this kit. Please follow the instructions carefully. We strongly recommend doing a strand test prior to application. (Take one strand of hair and follow instructions.) <br />PREPARATIONS: <br />1. Wearing the enclosed gloves, open the bleach plastic bag. Avoid inhaling powder. <br />2. <strong>Empty the full contents of the bleach powder</strong> into the plastic tub provided . <br />3. <strong>Add the full contents of the developer to the bleach powder</strong> in the plastic tub. Using the provided brush, blend until <strong>all</strong> the powder is completely dissolved with no lumps. Mix and blend until the mixture is smooth and creamy. Let stand one minute. The mixture will thicken. <br />4. Apply the mixture to the hair avoiding direct contact with the scalp. <br />* <strong>It is important to use all the developer and mix using only the brush provided. Do not use any metal instruments.</strong><br />APPLICATION:<br />Hair should be dry and unwashed. Using the provided brush, apply the bleach mixture evenly to hair you wish bleached. All strands should be saturated using the brush or gloved fingers to spread the mixture evenly. You may mask hair you don’t wish to bleach by using a highlight cap or foil.<br />DEVELOPING: <br />Use of enclosed plastic cap is recommended through the developing process. The length of the timing depends on the color and condition of the hair. Check hair at regular intervals during the development process as timing varies according to the degree of desired lightening. Check strand every 10 minutes to evaluate lift. To do so, remove plastic cap and wipe away mixture with a damp tissue. If hair has not reached desired level, reapply mixture as before and continue processing. Do not over-bleach. <br />REMOVAL: <br />When desired shade is reached, take off the cap and throw away. Shampoo hair thoroughly several times. Rinse thoroughly and towel dry hair. <br /><br />STRAND TEST: <br />Highlighting and bleaching results depend on the color and condition of the hair. A strand test is recommended to give you a better idea about the end results and to avoid any complications with the actual process. Put on the plastic gloves and prepare the strand test mixture in the plastic bowl provided: <br />1. Open the Flash Lightning® bleach powder bag and mix one part powder to three parts developer. Mix well using the tint brush provided in the kit. <br />2. Your hair should be clean and dry. Comb to remove any tangles. Pull one strand of hair from behind your ear to perform the strand test. <br />3. Apply the mixture to the hair test strand avoiding direct contact with the scalp, making sure the test strand does not touch the rest of your hair. <br />4. Check hair at regular intervals during the development process as timing varies according to the degree of desired lightening. <br />5. Check strand every 10 minutes to evaluate lift. To do so, remove plastic cap and wipe away mixture with a damp tissue. <br />6. If hair has not reached desired level, reapply mixture as before and continue processing. Do not over-bleach. <br />7. When desired shade is reached, shampoo hair thoroughly several times. Rinse thoroughly and towel dry hair. <br />8. Discard any leftover mixture. Thoroughly rinse and dry the mixing bowl prior to actual application.</p>', 'hairdye,hair', '56cf1fff76fb54.PNG', 'FLBK', NULL, 2, 1, '2016-02-25 05:39:48', '2016-02-25 05:39:48'),
(16, 'Dye Hard Temporary Hair Coloring Style Gel', 428.00, NULL, '<p><em><strong>COLOR WITHOUT COMMITMENT®</strong></em><br />This temporary hair color styling gel is perfect for those who want Color Without Commitment®. Apply in thick layers for spikes or a mohawk, or let it dry and then comb out gently for an effect similar to hair chalk. Our Dye Hard® hair gel will come right out as soon as you wash your hair. Neon colors <strong>glow under black light!<em><br /></em></strong>Available in an easy to use squeeze 1.66 oz. tube.</p>', 'hairdye,hair', '56cf214412b3f5.PNG', 'DHTHCSG', NULL, 2, 1, '2016-02-25 05:45:34', '2016-02-25 05:45:34'),
(18, 'Skala', 550.00, NULL, '<p>This is a test</p>', 'shampoo', '56d13bc022d7eSkala Argan.jpg,56d13bc022eeaSkala Oleo.jpg', 'SKALA-KERA', NULL, 4, 1, '2016-02-26 20:02:49', '2016-02-26 20:02:49'),
(19, 'Test Products', 5000.00, NULL, '<h1 [removed]><em><strong>tes</strong></em></h1>\r\n<p> </p>\r\n<p [removed]> </p>', 'test', '56d15361ac241Clairol Shimmer.jpg', 'TP', NULL, 2, 1, '2016-02-26 21:47:27', '2016-02-26 21:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_brand`
--

CREATE TABLE `cs_product_brand` (
  `product_brand_id` int(11) NOT NULL,
  `product_brand_name` varchar(120) NOT NULL,
  `date_created` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_brand`
--

INSERT INTO `cs_product_brand` (`product_brand_id`, `product_brand_name`, `date_created`, `date_modified`) VALUES
(1, 'Manic Panic', '2016-02-24 08:35:59', '2016-02-24 08:35:59'),
(2, 'Adore', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(3, 'asdasd', '2016-02-26 05:19:35', '2016-02-26 05:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_meta`
--

CREATE TABLE `cs_product_meta` (
  `product_meta_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_meta_keyword` varchar(250) NOT NULL,
  `product_meta_value` varchar(250) NOT NULL,
  `product_meta_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_meta`
--

INSERT INTO `cs_product_meta` (`product_meta_id`, `product_id`, `product_meta_keyword`, `product_meta_value`, `product_meta_type`) VALUES
(1, 10, 'Color', 'After Midnight,Atomic Turquoise,Bad Boy Blue,Blue Moon,Blue Steel,Cleo Rose,Cotton Candy Pink', 0),
(2, 11, 'Color', 'African Violet,Aquamarine,Baby Blue,Blue Black,Electric Lime,Emerald,Indigo Blue,Lavender,Neon Pink,Pink Blush,Platinum,Purple Rage,Rich Eggplant,Royal Navy,Violet Gem,Wild Cherry', 0),
(3, 12, 'Color', 'sea nymph,blue angel,velvet violet,fleurs du mal,dreamsicle', 0),
(4, 13, 'Color', 'pink,violet,orange/red,turquiose', 0),
(5, 14, 'Color', 'after midnight,atomic turquoise,bad boy blue,blue moon,blue steel,cotton candy,deep purple dream,electric lizard', 0),
(6, 15, 'volume', '30,40', 0),
(7, 16, 'Color', 'electric banana,electric flamingo,electric lava,electric sky,glam gold,purple haze,raven', 0),
(8, 17, 'Size', 'eeeee', 0),
(9, 18, 'Variant', 'Oleo De Coco,Moroccan Argan Oil', 0),
(10, 19, 'Color', 'Red,Blue,Green', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_sale`
--

CREATE TABLE `cs_product_sale` (
  `product_sale_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `product_sale_start` datetime NOT NULL,
  `product_sale_expires` datetime NOT NULL,
  `date_created` datetime NOT NULL,
  `product_sale_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_sale`
--

INSERT INTO `cs_product_sale` (`product_sale_id`, `product_variant_id`, `product_sale_start`, `product_sale_expires`, `date_created`, `product_sale_status`) VALUES
(1, 2, '2016-02-26 01:00:00', '2016-02-26 01:00:00', '2016-02-27 02:57:12', 0),
(2, 2, '2016-02-01 01:00:00', '2016-02-01 01:00:00', '2016-02-27 02:58:06', 0),
(3, 2, '2016-01-01 01:00:00', '2016-01-01 01:00:00', '2016-02-27 02:59:10', 0),
(4, 2, '2016-01-01 01:00:00', '2016-01-01 01:00:00', '2016-02-27 03:00:25', 0),
(5, 2, '2016-01-01 01:00:00', '2016-01-01 01:00:00', '2016-02-27 03:01:56', 0),
(6, 2, '2016-01-01 02:00:00', '2016-01-01 02:00:00', '2016-02-27 03:03:21', 0),
(7, 55, '2016-02-27 01:01:00', '2016-02-27 01:01:00', '2016-02-27 16:03:49', 0),
(8, 54, '2016-02-04 01:00:00', '2016-02-04 01:00:00', '2016-02-27 16:05:08', 0),
(9, 1, '2016-03-07 01:00:00', '2016-03-07 01:00:00', '2016-03-07 02:43:36', 0),
(10, 2, '2016-03-07 01:00:00', '2016-03-07 01:00:00', '2016-03-07 02:54:26', 0),
(11, 3, '2016-03-07 01:00:00', '2016-03-07 01:00:00', '2016-03-07 02:55:04', 1),
(12, 9, '2016-03-10 00:00:00', '2016-03-10 00:00:00', '2016-03-10 15:49:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_supplier`
--

CREATE TABLE `cs_product_supplier` (
  `product_supplier_id` int(11) NOT NULL,
  `product_supplier_name` varchar(120) NOT NULL,
  `product_supplier_email` varchar(120) DEFAULT NULL,
  `product_supplier_contact` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_supplier`
--

INSERT INTO `cs_product_supplier` (`product_supplier_id`, `product_supplier_name`, `product_supplier_email`, `product_supplier_contact`, `date_created`, `date_modified`) VALUES
(1, 'Manic Panic', NULL, '', '2016-02-26 07:27:59', '2016-02-26 07:27:59'),
(2, 'Adore', NULL, '', '2016-03-07 02:41:18', '2016-03-07 02:41:18'),
(3, 'Palmolive', 'palmolive@company.com', '56127374', '2016-03-07 05:00:23', '2016-03-07 05:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_tag`
--

CREATE TABLE `cs_product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_tag_name` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_tag`
--

INSERT INTO `cs_product_tag` (`product_tag_id`, `product_tag_name`, `date_created`, `date_modified`) VALUES
(1, 'ManicPanic', '2016-02-24 08:35:59', '2016-02-24 08:35:59'),
(2, 'Cream', '2016-02-24 08:35:59', '2016-02-24 08:35:59'),
(3, 'Dye', '2016-02-24 08:35:59', '2016-02-24 08:35:59'),
(4, 'haircolor', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(5, 'hairdye', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(6, 'adore', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(7, 'hairgeek', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(8, 'hair', '2016-02-25 05:06:53', '2016-02-25 05:06:53'),
(9, 'asd', '2016-02-26 05:19:35', '2016-02-26 05:19:35'),
(10, 'shampoo', '2016-02-26 20:02:49', '2016-02-26 20:02:49'),
(11, 'test', '2016-02-26 21:47:27', '2016-02-26 21:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_type`
--

CREATE TABLE `cs_product_type` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_type`
--

INSERT INTO `cs_product_type` (`product_type_id`, `product_type_name`, `date_created`, `date_modified`) VALUES
(1, 'Hair', '2016-02-24 08:35:59', '2016-02-24 08:35:59'),
(2, 'Hair Dye', '2016-02-24 17:06:30', '2016-02-24 17:06:30'),
(3, 'asdasd', '2016-02-26 05:19:35', '2016-02-26 05:19:35'),
(4, 'Shampoo', '2016-02-26 20:02:49', '2016-02-26 20:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `cs_product_variants`
--

CREATE TABLE `cs_product_variants` (
  `product_variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_name` text NOT NULL,
  `product_variant_price` double(11,2) NOT NULL,
  `product_variant_capital` double(11,2) NOT NULL,
  `product_variant_compare_price` double(11,2) NOT NULL,
  `product_variant_critical_value` int(11) NOT NULL DEFAULT '0',
  `product_variant_img` text NOT NULL,
  `product_variant_weight` varchar(25) NOT NULL,
  `product_variant_sku` varchar(120) NOT NULL,
  `product_variant_barcode` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_product_variants`
--

INSERT INTO `cs_product_variants` (`product_variant_id`, `product_id`, `product_variant_name`, `product_variant_price`, `product_variant_capital`, `product_variant_compare_price`, `product_variant_critical_value`, `product_variant_img`, `product_variant_weight`, `product_variant_sku`, `product_variant_barcode`) VALUES
(1, 10, 'After Midnight', 600.00, 100.00, 0.00, 10, '56d07598499bfAfter Midnight.jpg', '30', 'HVCCFHCAM0', NULL),
(2, 10, 'Atomic Turquoise', 600.00, 450.00, 0.00, 10, '56d075a9a6b42Atomic Turquoise.jpg', '30', 'HVCCFHCAT1', NULL),
(3, 10, 'Bad Boy Blue', 540.00, 100.00, 600.00, 10, '56d071a148ce5high voltage badboy blue.jpg', '30', 'HVCCFHCBB2', NULL),
(4, 10, 'Blue Moon', 600.00, 100.00, 0.00, 10, '56d077768fe28Blue Moon.jpg', '30', 'HVCCFHCBM3', NULL),
(5, 10, 'Blue Steel', 600.00, 100.00, 0.00, 10, '56d0778bdb242Blue Steel.jpg', '30', 'HVCCFHCBS4', NULL),
(6, 10, 'Cleo Rose', 600.00, 100.00, 0.00, 10, '56d071c8a08fbhigh voltage cleo rose.jpg', '30', 'HVCCFHCCR5', NULL),
(7, 10, 'Cotton Candy Pink', 600.00, 100.00, 0.00, 10, '56d077aaa1127Cotton Candy Pink.jpg', '30', 'HVCCFHCCC6', NULL),
(8, 11, 'African Violet', 520.00, 100.00, 0.00, 10, '56ce6ff837922African Violet.jpg', '50', 'AHCAV0', NULL),
(9, 11, 'Aquamarine', 500.00, 100.00, 520.00, 10, '56ce6fd6a6ca6Aquamarine.jpg', '50', 'AHCA1', NULL),
(10, 11, 'Baby Blue', 520.00, 100.00, 0.00, 10, '56ce6fe36e41aBaby Blue.jpg', '50', 'AHCBB2', NULL),
(11, 11, 'Blue Black', 520.00, 0.00, 0.00, 0, '56ce6fed4f39aBlue Black.jpg', '50', 'AHCBB3', NULL),
(12, 11, 'Electric Lime', 520.00, 100.00, 0.00, 10, '56ce7007a42f1Electric Lime.jpg', '50', 'AHCEL4', NULL),
(13, 11, 'Emerald', 520.00, 100.00, 0.00, 10, '56ce7017b36d7Emerald.jpg', '50', 'AHCE5', NULL),
(14, 11, 'Indigo Blue', 520.00, 100.00, 0.00, 10, '56ce703d9d0ebIndigo Blue.jpg', '50', 'AHCIB6', NULL),
(15, 11, 'Lavender', 520.00, 100.00, 0.00, 10, '56ce7046f1821Lavender.jpg', '50', 'AHCL7', NULL),
(16, 11, 'Neon Pink', 520.00, 100.00, 0.00, 10, '56ce705089a56Neon Pink.jpg', '50', 'AHCNP8', NULL),
(17, 11, 'Pink Blush', 520.00, 100.00, 0.00, 10, '56ce70933ddc3Pink Blush.jpg', '50', 'AHCPB9', NULL),
(18, 11, 'Platinum', 520.00, 100.00, 0.00, 10, '56ce70a223ef7Platinum.jpg', '50', 'AHCP10', NULL),
(19, 11, 'Purple Rage', 520.00, 100.00, 0.00, 10, '56ce70af57c12Purple Rage.jpg', '50', 'AHCPR11', NULL),
(20, 11, 'Rich Eggplant', 520.00, 100.00, 0.00, 10, '56ce70c1952d1Rich Eggplant.jpg', '50', 'AHCRE12', NULL),
(21, 11, 'Royal Navy', 520.00, 100.00, 0.00, 10, '56ce70ce7183dRoyal Navy.jpg', '50', 'AHCRN13', NULL),
(22, 11, 'Violet Gem', 520.00, 100.00, 0.00, 10, '56ce70d8757c0Violet Gem.jpg', '50', 'AHCVG14', NULL),
(23, 11, 'Wild Cherry', 520.00, 100.00, 0.00, 10, '56ce70e123c3bWild Cherry.jpg', '50', 'AHCWC15', NULL),
(24, 12, 'sea nymph', 600.00, 100.00, 0.00, 10, '56d06da50dca0creamtone sea nymph.jpg', '10', 'CHCsn0', NULL),
(25, 12, 'blue angel', 600.00, 100.00, 0.00, 10, '56d06db0c13facreamtone blue angel.jpg', '10', 'CHCba1', NULL),
(26, 12, 'velvet violet', 600.00, 100.00, 0.00, 10, '56d06dbf3cbdbcreamtone velvet violet.jpg', '10', 'CHCvv2', NULL),
(27, 12, 'fleurs du mal', 600.00, 100.00, 0.00, 10, '56d06dc9c02d8creamtone fleurs du mal.jpg', '10', 'CHCfd3', NULL),
(28, 12, 'dreamsicle', 600.00, 100.00, 0.00, 10, '56d06dd5dbd0bcreamtone dreamsicle.jpg', '10', 'CHCd4', NULL),
(29, 13, 'pink', 952.00, 100.00, 0.00, 10, '56d06f43ab871jem amplified pink.jpg', '10', 'JAHCp0', NULL),
(30, 13, 'violet', 952.00, 100.00, 0.00, 10, '56d06f3a5b72ejem amplified violet.jpg', '10', 'JAHCv1', NULL),
(31, 13, 'orange/red', 952.00, 100.00, 0.00, 10, '56d06f239a3acjem amplified orangered.jpg', '10', 'JAHCo2', NULL),
(32, 13, 'turquiose', 952.00, 100.00, 0.00, 10, '56d06f2eea0b7jem amplified turquoise.jpg', '10', 'JAHCt3', NULL),
(33, 14, 'after midnight', 809.00, 100.00, 0.00, 10, '56d0799754bc0amplified squeeze bottle after midnight.jpg', '50', 'ASBam0', NULL),
(34, 14, 'atomic turquoise', 809.00, 100.00, 0.00, 10, '56d079a839312amplified squeeze bottle atomic tuquoise.jpg', '50', 'ASBat1', NULL),
(35, 14, 'bad boy blue', 809.00, 100.00, 0.00, 10, '56d0722ed4f14amplified squeeze bottle bad boy blue.jpg', '50', 'ASBbb2', NULL),
(36, 14, 'blue moon', 809.00, 100.00, 0.00, 10, '56d0723b4580eamplified squeeze bottle blue moon.jpg', '50', 'ASBbm3', NULL),
(37, 14, 'blue steel', 809.00, 100.00, 0.00, 10, '56d07245c9fdaamplified squeeze bottle blue steel.jpg', '50', 'ASBbs4', NULL),
(38, 14, 'cotton candy', 809.00, 100.00, 0.00, 10, '56d0725222504amplified squeeze bottle cotton candy.jpg', '50', 'ASBcc5', NULL),
(39, 14, 'deep purple dream', 809.00, 100.00, 0.00, 10, '56d0725b301e2amplified squeeze bottle deep purple dream.jpg', '50', 'ASBdp6', NULL),
(40, 14, 'electric lizard', 809.00, 100.00, 0.00, 10, '56d0727328accamplified squeeze bottle electric lizard.jpg', '50', 'ASBel7', NULL),
(41, 15, '30', 571.00, 100.00, 0.00, 10, '56d06f7346d0fflash lightning 30.jpg', '50', 'FLBK30', NULL),
(42, 15, '40', 671.00, 100.00, 0.00, 10, '56d06f7f67fcfflash lightning 40.jpg', '50', 'FLBK41', NULL),
(43, 16, 'electric banana', 428.00, 100.00, 0.00, 10, '56d070554eebddye hard electric banana.jpg', '50', 'DHTHCSGeb0', NULL),
(44, 16, 'electric flamingo', 428.00, 100.00, 0.00, 10, '56d070b5b65aedye hard electric flamingo.jpg', '50', 'DHTHCSGef1', NULL),
(45, 16, 'electric lava', 428.00, 100.00, 0.00, 10, '56d070c016c39dye hard electric lava.jpg', '50', 'DHTHCSGel2', NULL),
(46, 16, 'electric sky', 428.00, 100.00, 0.00, 10, '56d070cab7dd0dye hard electric sky.jpg', '50', 'DHTHCSGes3', NULL),
(47, 16, 'glam gold', 428.00, 100.00, 0.00, 10, '56d070d51d8b2dye hard glam gold.jpg', '50', 'DHTHCSGgg4', NULL),
(48, 16, 'purple haze', 428.00, 100.00, 0.00, 10, '56d070e1ec0e4dye hard purple haze.jpg', '50', 'DHTHCSGph5', NULL),
(49, 16, 'raven', 428.00, 100.00, 0.00, 10, '56d070ee3ad3cdye hard raven.jpg', '50', 'DHTHCSGr6', NULL),
(51, 18, 'Oleo De Coco', 550.00, 100.00, 0.00, 10, '56d13bc022d7eSkala Argan.jpg,56d13bc022eeaSkala Oleo.jpg', '50', 'SOD0', NULL),
(52, 18, 'Moroccan Argan Oil', 550.00, 100.00, 0.00, 10, '56d13bc022d7eSkala Argan.jpg,56d13bc022eeaSkala Oleo.jpg', '50', 'SMA1', NULL),
(53, 19, 'Red', 5600.00, 100.00, 0.00, 5, '56d15602529faWella T18.jpg', '20', 'TPR0', NULL),
(54, 19, 'Blue', 5000.00, 0.00, 0.00, 0, '56d15361ac241Clairol Shimmer.jpg', '20', 'TPB1', NULL),
(55, 19, 'Green', 5000.00, 0.00, 0.00, 0, '56d15361ac241Clairol Shimmer.jpg', '20', 'TPG2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cs_purchase_order`
--

CREATE TABLE `cs_purchase_order` (
  `purchase_order_id` int(11) NOT NULL,
  `product_supplier_id` int(11) NOT NULL,
  `purchase_order_note` text NOT NULL,
  `purchase_order_status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cs_purchase_order`
--

INSERT INTO `cs_purchase_order` (`purchase_order_id`, `product_supplier_id`, `purchase_order_note`, `purchase_order_status`, `date_created`) VALUES
(1, 1, 'My Test Note', 0, '2016-02-27 02:00:49'),
(2, 1, '', 2, '2016-03-06 03:46:40'),
(3, 2, 'test PO', 0, '2016-03-07 11:41:18'),
(4, 1, 'test again', 0, '2016-03-07 12:08:44'),
(5, 3, 'this is a note', 2, '2016-03-07 14:10:24'),
(6, 1, 'test', 0, '2016-03-07 16:49:37'),
(7, 1, 'this is a note', 0, '2016-03-07 17:40:43'),
(8, 1, 'this is a note', 0, '2016-03-07 17:46:42'),
(9, 1, '', 1, '2016-03-10 16:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `cs_purchase_order_content`
--

CREATE TABLE `cs_purchase_order_content` (
  `purchase_order_content_id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `purchase_order_content_qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cs_purchase_order_content`
--

INSERT INTO `cs_purchase_order_content` (`purchase_order_content_id`, `purchase_order_id`, `product_variant_id`, `purchase_order_content_qty`) VALUES
(1, 1, 43, 3),
(2, 1, 2, 2),
(3, 2, 1, 3),
(4, 3, 8, 6),
(5, 3, 10, 12),
(6, 3, 15, 8),
(7, 3, 16, 12),
(8, 3, 13, 1),
(9, 4, 2, 2),
(10, 4, 9, 4),
(11, 4, 8, 6),
(12, 5, 43, 1),
(13, 6, 1, 1),
(14, 7, 1, 10),
(15, 7, 2, 1),
(16, 8, 1, 4),
(17, 9, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cs_search_statistics`
--

CREATE TABLE `cs_search_statistics` (
  `search_statistic_id` int(11) NOT NULL,
  `search_statistic_keyword` varchar(120) NOT NULL,
  `search_statistic_count` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cs_search_statistics`
--

INSERT INTO `cs_search_statistics` (`search_statistic_id`, `search_statistic_keyword`, `search_statistic_count`, `date_created`, `date_modified`) VALUES
(1, 'hair%20dye', 1, '2016-02-25 12:22:47', '2016-02-25 12:22:47'),
(2, 'haircolor', 1, '2016-02-25 12:22:59', '2016-02-25 12:22:59'),
(3, 'manic%20panic', 3, '2016-02-25 12:28:19', '2016-03-07 04:31:45'),
(4, 'manicpanic', 2, '2016-02-25 12:28:45', '2016-03-07 04:32:16'),
(5, 'hairdye', 1, '2016-02-25 12:29:00', '2016-02-25 12:29:00'),
(6, 'color', 1, '2016-02-25 12:29:18', '2016-02-25 12:29:18'),
(7, 'dye', 3, '2016-02-25 12:29:35', '2016-02-26 01:19:41'),
(8, 'panic', 1, '2016-02-25 12:29:44', '2016-02-25 12:29:44'),
(9, 'hair%20color', 1, '2016-02-25 12:29:58', '2016-02-25 12:29:58'),
(10, 'Adore', 5, '2016-02-25 19:32:45', '2016-03-11 00:15:31'),
(11, 'shimme', 1, '2016-02-26 12:38:04', '2016-02-26 12:38:04'),
(12, 'tangle', 1, '2016-02-26 12:38:12', '2016-02-26 12:38:12'),
(13, 'high%20voltage', 2, '2016-02-26 13:57:11', '2016-02-26 13:58:11'),
(14, 'Manic Panic', 2, '2016-03-07 04:33:09', '2016-03-07 04:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `cs_shipping`
--

CREATE TABLE `cs_shipping` (
  `shipping_id` int(11) NOT NULL,
  `shipping_name` varchar(120) NOT NULL,
  `shipping_amount` double(11,2) NOT NULL,
  `shipping_max` int(11) NOT NULL,
  `shipping_min` int(11) NOT NULL,
  `shipping_type` int(11) NOT NULL,
  `shipping_courier` varchar(120) NOT NULL,
  `date_created` datetime NOT NULL,
  `shipping_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_shipping`
--

INSERT INTO `cs_shipping` (`shipping_id`, `shipping_name`, `shipping_amount`, `shipping_max`, `shipping_min`, `shipping_type`, `shipping_courier`, `date_created`, `shipping_status`) VALUES
(1, 'MM - 9"x14"', 60.00, 126, 0, 1, 'Xend', '2016-02-01 00:00:00', 1),
(2, 'MM - 12” x 18”', 80.00, 216, 126, 1, 'Xend', '2016-02-01 00:00:00', 1),
(3, 'PR - 9"x14"', 100.00, 126, 0, 2, 'Xend/2Go', '2016-02-01 00:00:00', 1),
(4, 'PR - 12” x 18”', 150.00, 216, 126, 2, 'Xend/2Go', '2016-02-01 00:00:00', 1),
(7, 'MM - Bulk', 1200.00, 1000, 216, 1, 'Xend/2Go', '2016-03-07 00:59:06', 1),
(8, 'PR - Bulk', 1520.00, 1000, 216, 2, 'Xend/2Go', '2016-03-07 00:59:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cs_shipping_courier`
--

CREATE TABLE `cs_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_name` varchar(120) NOT NULL,
  `shipping_courier_status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_shipping_courier`
--

INSERT INTO `cs_shipping_courier` (`shipping_courier_id`, `shipping_courier_name`, `shipping_courier_status`, `date_created`) VALUES
(1, 'Xend', 1, '2016-03-07 02:27:57'),
(2, '2Go', 1, '2016-03-07 02:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `cs_visitors`
--

CREATE TABLE `cs_visitors` (
  `visitor_id` int(11) NOT NULL,
  `visitor_ip` varchar(30) NOT NULL,
  `visitor_city` varchar(150) NOT NULL,
  `visitor_region` varchar(150) NOT NULL,
  `visitor_country_code` varchar(150) NOT NULL,
  `visitor_referer` varchar(150) NOT NULL,
  `visitor_agent` text NOT NULL,
  `visitor_device` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_visitors`
--

INSERT INTO `cs_visitors` (`visitor_id`, `visitor_ip`, `visitor_city`, `visitor_region`, `visitor_country_code`, `visitor_referer`, `visitor_agent`, `visitor_device`, `date_created`) VALUES
(1, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-25 10:04:22'),
(2, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 10:41:47'),
(3, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 1, '2016-02-25 11:18:51'),
(4, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 0, '2016-02-25 11:23:50'),
(5, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2016-02-25 12:36:10'),
(6, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'facebookexternalhit/1.1', 0, '2016-02-25 12:36:15'),
(7, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'facebookexternalhit/1.1', 0, '2016-02-25 12:36:16'),
(8, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'facebookexternalhit/1.1', 0, '2016-02-25 12:36:16'),
(9, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'facebookexternalhit/1.1', 0, '2016-02-25 12:36:18'),
(10, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-25 13:16:08'),
(11, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'https://www.facebook.com', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-25 13:56:57'),
(12, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'https://www.facebook.com/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 0, '2016-02-25 14:06:05'),
(13, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://m.facebook.com/', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-ph; GT-N7105 Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30', 1, '2016-02-25 14:07:23'),
(14, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-25 14:11:33'),
(15, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 1, '2016-02-25 14:30:32'),
(16, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 5.0; SAMSUNG SM-N9005 Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/2.1 Chrome/34.0.1847.76 Mobile Safari/537.36', 1, '2016-02-25 14:53:25'),
(17, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 15:46:24'),
(18, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-25 17:36:08'),
(19, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/cart/confirm/3/058c2e6eccd9868691153748ac6289a3/', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-25 17:38:48'),
(20, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 20:28:32'),
(21, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 21:09:14'),
(22, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 21:57:42'),
(23, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 1, '2016-02-25 22:25:17'),
(24, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 5.0; SAMSUNG SM-N9005 Build/LRX21V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/2.1 Chrome/34.0.1847.76 Mobile Safari/537.36', 1, '2016-02-25 22:56:33'),
(25, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 23:21:37'),
(26, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://s.codepen.io/boomerang/e3c30a623be3d3aed67916fd05d750031456414038853/index.html?editors=1010', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 23:27:17'),
(27, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-25 23:31:47'),
(28, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://m.facebook.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 [FBAN/MessengerForiOS;FBAV/58.0.0.32.81;FBBV/22628760;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iPhone OS;FBSV/8.1.2;FBSS/2; FBCR/Globe;FBID/phone;FBLC/en_US;FBOP/5]', 1, '2016-02-25 23:32:01'),
(29, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://s.codepen.io/csdev/fullpage/reBYgb?', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 00:29:59'),
(30, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 02:11:00'),
(31, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 02:12:55'),
(32, '112.204.209.10', 'Antipolo', 'H5', 'PH', 'https://m.facebook.com/', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-26 06:44:24'),
(33, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/product/desc/2/high-voltage-classic-cream-formula-hair-color-atomic-turquoise/', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-26 11:59:16'),
(34, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-26 12:05:41'),
(35, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 12:12:32'),
(36, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 12:21:02'),
(37, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 12:23:16'),
(38, '122.52.171.166', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 12:36:14'),
(39, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 13:49:41'),
(40, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 13:53:42'),
(41, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 13:54:00'),
(42, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 14:55:21'),
(43, '124.107.192.185', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 14:55:24'),
(44, '103.17.21.194', 'Alabang', 'Rizal', 'PH', 'https://www.facebook.com/', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 15:27:17'),
(45, '112.204.241.36', 'Pasig', 'Pampanga', 'PH', 'http://m.facebook.com', 'Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13D15 [FBAN/MessengerForiOS;FBAV/59.0.0.25.82;FBBV/23201134;FBDV/iPad4,4;FBMD/iPad;FBSN/iPhone OS;FBSV/9.2.1;FBSS/2; FBCR/;FBID/tablet;FBLC/en_US;FBOP/1]', 1, '2016-02-26 15:29:02'),
(46, '122.55.48.158', 'Makati City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 17:11:30'),
(47, '180.191.138.61', 'Quezon City', 'Quezon', 'PH', '', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 18:06:51'),
(48, '124.107.192.185', '', '-', 'PH', 'http://ez.hairgeek.ph/shop/contact/', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-26 18:31:44'),
(49, '112.204.209.10', 'Antipolo', 'H5', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 21:47:31'),
(50, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/feedback/', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-26 21:48:01'),
(51, '122.52.171.166', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-26 22:31:58'),
(52, '112.198.78.240', 'San Juan', 'Manila', 'PH', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/600.6.3 (KHTML, like Gecko) Version/8.0.6 Safari/600.6.3', 0, '2016-02-26 23:54:02'),
(53, '112.209.33.138', '', '-', 'PH', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12D508 Safari/600.1.4', 1, '2016-02-26 23:56:30'),
(54, '112.198.78.240', 'San Juan', 'Manila', 'PH', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B440 Safari/600.1.4', 1, '2016-02-27 00:04:52'),
(55, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-27 02:57:22'),
(56, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-02-27 03:47:18'),
(57, '182.18.238.138', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-27 09:24:37'),
(58, '121.54.54.38', 'Manila', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-27 11:32:48'),
(59, '121.54.54.44', 'Manila', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-02-27 13:07:11'),
(60, '49.144.194.121', 'Quezon City', 'Quezon', 'PH', 'http://ez.hairgeek.ph/feedback/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12D508 Safari/600.1.4', 1, '2016-02-27 14:23:00'),
(61, '182.18.238.126', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-27 22:37:00'),
(62, '182.18.238.126', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-02-28 15:27:28'),
(63, '112.204.209.10', 'Antipolo', 'H5', 'PH', 'http://ez.hairgeek.ph/cart/fulfill/058c2e6eccd9868691153748ac6289a3', 'Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 0, '2016-02-29 13:42:44'),
(64, '182.18.238.47', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-03-01 01:59:15'),
(65, '182.18.238.233', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/cart/confirm/17/ebff4136512df2c817471377645c69b1/', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-03-01 10:59:55'),
(66, '49.148.33.79', 'Marikina', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-03 00:21:15'),
(67, '182.18.238.118', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-03 17:57:30'),
(68, '182.18.238.118', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-03 21:24:50'),
(69, '49.148.33.79', 'Marikina', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36', 1, '2016-03-03 21:26:20'),
(70, '122.52.171.166', '', '-', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-03 21:27:22'),
(71, '182.18.238.118', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; R1011 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-03-04 14:42:18'),
(72, '49.148.46.107', 'San Pedro', 'Laguna', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36', 1, '2016-03-05 16:29:00'),
(73, '182.18.238.61', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-05 23:12:29'),
(74, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-07 02:31:38'),
(75, '182.18.238.33', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-07 05:24:09'),
(76, '182.18.238.33', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', 0, '2016-03-07 06:31:04'),
(77, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-07 07:05:23'),
(78, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.4.2; H860 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36', 1, '2016-03-07 08:13:28'),
(79, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/feedback/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 1, '2016-03-07 09:12:59'),
(80, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-07 11:03:12'),
(81, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-I8262 Build/JZO54K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36', 1, '2016-03-07 11:17:44'),
(82, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-03-07 12:51:06'),
(83, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-07 13:53:05'),
(84, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', 'http://ez.hairgeek.ph/feedback/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1', 1, '2016-03-07 16:18:00'),
(85, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-09 05:31:59'),
(86, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', 0, '2016-03-09 15:24:35'),
(87, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-10 10:19:08'),
(88, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-03-10 13:30:39'),
(89, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-10 21:20:57'),
(90, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0', 0, '2016-03-10 22:05:32'),
(91, '182.18.238.219', 'Mandaluyong City', 'Manila', 'PH', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', 0, '2016-03-13 13:01:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs_accounts`
--
ALTER TABLE `cs_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_email` (`account_email`);

--
-- Indexes for table `cs_blogs`
--
ALTER TABLE `cs_blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `cs_blog_category`
--
ALTER TABLE `cs_blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cs_blog_meta`
--
ALTER TABLE `cs_blog_meta`
  ADD PRIMARY KEY (`blog_meta_id`);

--
-- Indexes for table `cs_cart`
--
ALTER TABLE `cs_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cs_customers`
--
ALTER TABLE `cs_customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `cs_discounts`
--
ALTER TABLE `cs_discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `cs_feedbacks`
--
ALTER TABLE `cs_feedbacks`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `cs_inquiries`
--
ALTER TABLE `cs_inquiries`
  ADD PRIMARY KEY (`inquiry_id`);

--
-- Indexes for table `cs_inquiry_replies`
--
ALTER TABLE `cs_inquiry_replies`
  ADD PRIMARY KEY (`inquiry_reply_id`);

--
-- Indexes for table `cs_inventory`
--
ALTER TABLE `cs_inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `cs_inventory_transfer`
--
ALTER TABLE `cs_inventory_transfer`
  ADD PRIMARY KEY (`inventory_transfer_id`);

--
-- Indexes for table `cs_newsletter`
--
ALTER TABLE `cs_newsletter`
  ADD PRIMARY KEY (`newsletter_id`),
  ADD UNIQUE KEY `newsletter_email` (`newsletter_email`);

--
-- Indexes for table `cs_options`
--
ALTER TABLE `cs_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `cs_orders`
--
ALTER TABLE `cs_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cs_order_content`
--
ALTER TABLE `cs_order_content`
  ADD PRIMARY KEY (`order_content_id`);

--
-- Indexes for table `cs_order_discount`
--
ALTER TABLE `cs_order_discount`
  ADD PRIMARY KEY (`order_discount_id`);

--
-- Indexes for table `cs_order_fulfillment`
--
ALTER TABLE `cs_order_fulfillment`
  ADD PRIMARY KEY (`order_fulfillment_id`);

--
-- Indexes for table `cs_order_history`
--
ALTER TABLE `cs_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `cs_order_meta`
--
ALTER TABLE `cs_order_meta`
  ADD PRIMARY KEY (`order_meta_id`);

--
-- Indexes for table `cs_order_proof`
--
ALTER TABLE `cs_order_proof`
  ADD PRIMARY KEY (`order_proof_id`);

--
-- Indexes for table `cs_payment_method`
--
ALTER TABLE `cs_payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `cs_pos_order`
--
ALTER TABLE `cs_pos_order`
  ADD PRIMARY KEY (`pos_order_id`);

--
-- Indexes for table `cs_products`
--
ALTER TABLE `cs_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `cs_product_brand`
--
ALTER TABLE `cs_product_brand`
  ADD PRIMARY KEY (`product_brand_id`);

--
-- Indexes for table `cs_product_meta`
--
ALTER TABLE `cs_product_meta`
  ADD PRIMARY KEY (`product_meta_id`);

--
-- Indexes for table `cs_product_sale`
--
ALTER TABLE `cs_product_sale`
  ADD PRIMARY KEY (`product_sale_id`);

--
-- Indexes for table `cs_product_supplier`
--
ALTER TABLE `cs_product_supplier`
  ADD PRIMARY KEY (`product_supplier_id`);

--
-- Indexes for table `cs_product_tag`
--
ALTER TABLE `cs_product_tag`
  ADD PRIMARY KEY (`product_tag_id`);

--
-- Indexes for table `cs_product_type`
--
ALTER TABLE `cs_product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `cs_product_variants`
--
ALTER TABLE `cs_product_variants`
  ADD PRIMARY KEY (`product_variant_id`);

--
-- Indexes for table `cs_purchase_order`
--
ALTER TABLE `cs_purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `cs_purchase_order_content`
--
ALTER TABLE `cs_purchase_order_content`
  ADD PRIMARY KEY (`purchase_order_content_id`);

--
-- Indexes for table `cs_search_statistics`
--
ALTER TABLE `cs_search_statistics`
  ADD PRIMARY KEY (`search_statistic_id`);

--
-- Indexes for table `cs_shipping`
--
ALTER TABLE `cs_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `cs_shipping_courier`
--
ALTER TABLE `cs_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `cs_visitors`
--
ALTER TABLE `cs_visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cs_accounts`
--
ALTER TABLE `cs_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cs_blogs`
--
ALTER TABLE `cs_blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cs_blog_category`
--
ALTER TABLE `cs_blog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cs_blog_meta`
--
ALTER TABLE `cs_blog_meta`
  MODIFY `blog_meta_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cs_cart`
--
ALTER TABLE `cs_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `cs_customers`
--
ALTER TABLE `cs_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cs_discounts`
--
ALTER TABLE `cs_discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cs_feedbacks`
--
ALTER TABLE `cs_feedbacks`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cs_inquiries`
--
ALTER TABLE `cs_inquiries`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cs_inquiry_replies`
--
ALTER TABLE `cs_inquiry_replies`
  MODIFY `inquiry_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cs_inventory`
--
ALTER TABLE `cs_inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `cs_inventory_transfer`
--
ALTER TABLE `cs_inventory_transfer`
  MODIFY `inventory_transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cs_newsletter`
--
ALTER TABLE `cs_newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cs_options`
--
ALTER TABLE `cs_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cs_orders`
--
ALTER TABLE `cs_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `cs_order_content`
--
ALTER TABLE `cs_order_content`
  MODIFY `order_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cs_order_discount`
--
ALTER TABLE `cs_order_discount`
  MODIFY `order_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cs_order_fulfillment`
--
ALTER TABLE `cs_order_fulfillment`
  MODIFY `order_fulfillment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cs_order_history`
--
ALTER TABLE `cs_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `cs_order_meta`
--
ALTER TABLE `cs_order_meta`
  MODIFY `order_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `cs_order_proof`
--
ALTER TABLE `cs_order_proof`
  MODIFY `order_proof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `cs_payment_method`
--
ALTER TABLE `cs_payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cs_pos_order`
--
ALTER TABLE `cs_pos_order`
  MODIFY `pos_order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cs_products`
--
ALTER TABLE `cs_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cs_product_brand`
--
ALTER TABLE `cs_product_brand`
  MODIFY `product_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cs_product_meta`
--
ALTER TABLE `cs_product_meta`
  MODIFY `product_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cs_product_sale`
--
ALTER TABLE `cs_product_sale`
  MODIFY `product_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cs_product_supplier`
--
ALTER TABLE `cs_product_supplier`
  MODIFY `product_supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cs_product_tag`
--
ALTER TABLE `cs_product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cs_product_type`
--
ALTER TABLE `cs_product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cs_product_variants`
--
ALTER TABLE `cs_product_variants`
  MODIFY `product_variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `cs_purchase_order`
--
ALTER TABLE `cs_purchase_order`
  MODIFY `purchase_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cs_purchase_order_content`
--
ALTER TABLE `cs_purchase_order_content`
  MODIFY `purchase_order_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cs_search_statistics`
--
ALTER TABLE `cs_search_statistics`
  MODIFY `search_statistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cs_shipping`
--
ALTER TABLE `cs_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cs_shipping_courier`
--
ALTER TABLE `cs_shipping_courier`
  MODIFY `shipping_courier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cs_visitors`
--
ALTER TABLE `cs_visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
