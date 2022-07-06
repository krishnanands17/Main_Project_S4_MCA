-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 12:30 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `customer_house` varchar(50) NOT NULL,
  `customer_street` varchar(50) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_ph` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `c_password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_2` (`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `customer_house`, `customer_street`, `customer_city`, `customer_ph`, `email`, `password`, `c_password`) VALUES
(6, 'vishnu', 'swargam', 'qwerttt', 'kakkanad', '8799007766', 'vichu@gmail.com', '123', '123'),
(7, 'shahul', 'kochi', 'palarivttam', 'erankulam', '9188098620', 'jobin9750@gmail.com', 'jobin123', 'jobin123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_desc`) VALUES
(6, 'choker', 'differnt types of chokers'),
(7, 'necklace', 'differnt types of necklaces'),
(8, 'bangle', 'gold plated bangles'),
(9, 'earring', 'differnt types of earrings'),
(10, 'bangle', 'differnt types of bangles'),
(11, 'CLOTHES', 'REFLECTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_rate` int(11) NOT NULL,
  `item_pic` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`id`, `category_name`, `subcategory_name`, `item_name`, `item_desc`, `item_qty`, `item_rate`, `item_pic`) VALUES
(1, 'choker', 'silver ', 'silver oxidised choker', 'silver oxidized choker suitable to any occation', 1, 500, 'uploads/g1.jpg'),
(2, 'necklace', 'gold plated', 'gold plated necklace set', ' with earring suitable for traditional wear', 1, 990, 'uploads/g2.jpg'),
(3, 'bangle', 'gold plated', 'antique metal traditional bangle set ', 'suitable with traditional wear especially with sar', 1, 490, 'uploads/g3.jpg'),
(4, 'earring', 'gold plated', 'gold plated jhumka', ' suitable for traditional wear', 1, 250, 'uploads/p1.jpg'),
(5, 'choker', 'gold plated', 'antique gold plated choker', 'suitable with traditional wear especially with sar', 1, 990, 'uploads/p2.jpg'),
(6, 'earring', 'gold plated', 'Antique gold earrings', 'gold plated earrings', 1, 450, 'uploads/p3.jpg'),
(7, 'earring', 'gold plated', 'Antique Gold Plated Earrings', ' suitable for traditional wear', 1, 499, 'uploads/p4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `customer_id`, `email`, `password`, `type`) VALUES
(1, 6, 'vichu@gmail.com', '123', 'customer'),
(2, 0, 'admin@gmail.com', 'admin123', 'admin'),
(3, 7, 'jobin9750@gmail.com', 'jobin123', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE IF NOT EXISTS `tbl_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `item_id`, `user_id`, `message`, `status`) VALUES
(1, 5, 6, '\r\nqc', 'negative'),
(6, 2, 6, '\r\ntest', 'negative'),
(7, 2, 6, '\r\nits good one', 'negative');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE IF NOT EXISTS `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `subcategory_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`subcategory_id`),
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `category_name`, `subcategory_name`, `subcategory_desc`) VALUES
(15, 'choker', 'silver ', 'silver oxidised choker'),
(16, 'necklace', 'gold plated', 'gold plated necklace'),
(17, 'bangle', 'gold', 'gold plated beautiful bangles'),
(18, 'earring', 'gold plated', 'gold plated earrings'),
(19, 'choker', 'gold plated', 'gold plated choker'),
(20, 'earring', 'gold plated', 'gold plated earrings'),
(21, 'earring', 'gold plated', 'gold plated earrings');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
