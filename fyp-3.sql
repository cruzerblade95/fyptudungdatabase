-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2019 at 05:58 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `adm_username` varchar(55) NOT NULL,
  `adm_password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_username`, `adm_password`) VALUES
(1, 'admin', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_image` varchar(200) NOT NULL,
  `cart_material` varchar(55) NOT NULL,
  `cart_price` varchar(55) NOT NULL,
  `cart_name` varchar(200) NOT NULL,
  `cart_category` varchar(11) NOT NULL,
  `product_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(50) NOT NULL,
  `cust_fname` varchar(150) NOT NULL,
  `cust_lname` varchar(150) NOT NULL,
  `cust_username` varchar(150) NOT NULL,
  `cust_phone` varchar(11) NOT NULL,
  `cust_address` varchar(150) NOT NULL,
  `cust_email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_fname`, `cust_lname`, `cust_username`, `cust_phone`, `cust_address`, `cust_email`) VALUES
(1, 'haha', 'haha', 'haha', '0123', '213123asdasd', 'haha@gmail.com'),
(2, 'nab', 'nab', 'nab', '21312', 'asdasdasd', 'sadasd@s.s'),
(3, 'a', 'a', 'a', '213', 'a', 'a@a.a'),
(4, 'a', 'a', 'a', '213', 'a', 'a@a.a'),
(5, 'a', 'a', 'a', '213', 'a', 'a@a.a'),
(6, 'nabil', 'nabil', 'nabil', '0123', 'sadasdasd', 'nabil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `keyword` varchar(4) NOT NULL,
  `movement` varchar(100) NOT NULL,
  `input` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `keyword`, `movement`, `input`) VALUES
(1, 'test', 'test', 'test', 'up', 'bcde'),
(13, 'nabil', '1234', '1234', 'down', 'adxk');

-- --------------------------------------------------------

--
-- Table structure for table `orderform`
--

CREATE TABLE `orderform` (
  `order_id` int(11) NOT NULL,
  `cust_fname` varchar(15) NOT NULL,
  `cust_lname` varchar(30) NOT NULL,
  `cust_username` varchar(55) NOT NULL,
  `cust_phone` varchar(15) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_address` varchar(200) NOT NULL,
  `cart_image` varchar(200) NOT NULL,
  `cart_material` varchar(55) NOT NULL,
  `cart_price` varchar(11) NOT NULL,
  `cart_name` varchar(200) NOT NULL,
  `cart_size` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderform`
--

INSERT INTO `orderform` (`order_id`, `cust_fname`, `cust_lname`, `cust_username`, `cust_phone`, `cust_email`, `cust_address`, `cart_image`, `cart_material`, `cart_price`, `cart_name`, `cart_size`) VALUES
(4, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'SC_AScabiosa.jpg', 'CottonLycra', '30', 'Safaa Cross A Scabiosa', 'Medium'),
(5, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'SC_ESandcastle.jpg', 'CottonLycra', '30', 'Safaa Cross E Sandcastle', 'Medium'),
(6, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'HL_BKoala.jpg', 'Lycra', '30', 'Hudaa Lite B Koala', 'Extra Large'),
(7, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'HL_ALuna.jpg', 'Lycra', '30', 'Hudaa Lite A Luna', 'Medium'),
(8, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'HL_ALuna.jpg', 'Lycra', '30', 'Hudaa Lite A Luna', 'Medium'),
(9, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'SC_AScabiosa.jpg', 'CottonLycra', '30', 'Safaa Cross A Scabiosa', 'Medium'),
(10, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'SC_AScabiosa.jpg', 'CottonLycra', '30', 'Safaa Cross A Scabiosa', 'Medium'),
(11, 'Test', 'Dulu', 'test123', '013', 'Zimbabwe', 'test1@gmail.com', 'SC_AScabiosa.jpg', 'CottonLycra', '30', 'Safaa Cross A Scabiosa', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pd_id` int(11) NOT NULL,
  `pd_image` varchar(200) NOT NULL,
  `pd_material` varchar(55) NOT NULL,
  `pd_price` varchar(11) NOT NULL,
  `pd_name` varchar(100) NOT NULL,
  `pd_quantity` int(11) NOT NULL,
  `pd_category` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pd_id`, `pd_image`, `pd_material`, `pd_price`, `pd_name`, `pd_quantity`, `pd_category`) VALUES
(1, 'HL_ALuna.jpg', 'Lycra', '30', 'Hudaa Lite A Luna', 28, 'Instant'),
(2, 'HL_BKoala.jpg', 'Lycra', '30', 'Hudaa Lite B Koala', 29, 'Instant'),
(3, 'HL_CMilo.jpg', 'Lycra', '30', 'Hudaa Lite C Milo', 30, 'Instant'),
(4, 'HL_ESienna.jpg', 'Lycra', '30', 'Hudaa Lite E Sienna', 30, 'Instant'),
(5, 'HL_FHaysack.jpg', 'Lycra', '30', 'Hudaa Lite F Haysack', 30, 'Instant'),
(6, 'SC_AScabiosa.jpg', 'CottonLycra', '30', 'Safaa Cross A Scabiosa', 25, 'Shawl'),
(7, 'SC_BGainsboro.jpg', 'CottonLycra', '30', 'Safaa Cross B Gainsboro', 30, 'Shawl'),
(8, 'SC_CDimgray.jpg', 'CottonLycra', '30', 'Safaa Cross C Dimgray', 29, 'Shawl'),
(9, 'SC_DDustymint.jpg', 'CottonLycra', '30', 'Safaa Cross D DustyMint', 30, 'Shawl'),
(10, 'SC_ESandcastle.jpg', 'CottonLycra', '30', 'Safaa Cross E Sandcastle', 29, 'Shawl'),
(11, 'NK_BTarte.jpg', 'Chiffon', '30', 'Naura Kids B Tarte', 29, 'Kids'),
(12, 'NK_CCarrotCake.jpg', 'Chiffon', '30', 'Naura Kids C Carrot Cake', 30, 'Kids'),
(13, 'NK_DSephia.jpg', 'Chiffon', '30', 'Naura Kids D Sephia', 30, 'Kids'),
(14, 'NK_ECattail.jpg', 'Chiffon', '30', 'Naura Kids E Cattail', 30, 'Kids'),
(15, 'NK_GClassic.jpg', 'Chiffon', '30', 'Naura Kids G Classic', 30, 'Kids');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderform`
--
ALTER TABLE `orderform`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderform`
--
ALTER TABLE `orderform`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
