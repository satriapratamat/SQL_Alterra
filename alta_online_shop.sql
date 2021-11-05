-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 03:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alta_online_shop`
--
CREATE DATABASE IF NOT EXISTS `alta_online_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alta_online_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Samsung', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Google', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Sony', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Microsoft', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VISA', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PayPal', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Credit Card', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'MasterCard', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'e-Wallet', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_type_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `stock`, `thumbnail_url`, `price`, `product_type_id`, `operator_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'product dummy', 100, 'https://google.com/Pixel-6-Pro/Images', 899, 1, 3, 1, '2021-11-04 08:09:02', '2021-11-04 08:09:02'),
(2, 'Pixel 6', 100, 'https://google.com/Pixel-6/Images', 699, 1, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Macbook Pro 2022', 100, 'https://apple.com/Macbook-Pro-2022/Images', 2099, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Macbook 2022', 100, 'https://apple.com/Macbook-2022/Images', 2099, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Macbook Air 2018', 100, 'https://apple.com/Macbook-Air-2018/Images', 899, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Xperia Z Tablet', 5, 'https://sony.com/Xperia-Z-Tablet/Images', 299, 3, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Xperia 1 Tablet', 50, 'https://sony.com/Xperia-1-Tablet/Images', 799, 3, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Xperia X Tablet', 20, 'https://sony.com/Xperia-X-Tablet/Images', 499, 3, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`id`, `product_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'ini Google Pixel 6 Pro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'ini Google Pixel 6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'ini Apple Macbook Pro 2022', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 'ini Apple Macbook 2022', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 'ini Apple Macbook Air 2018', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 'ini Sony Xperia Z Tablet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 'ini Sony Xperia 1 Tablet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 'ini Sony Xperia X Tablet', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smartphone', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Laptop', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tablet', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Headphone', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Smartwatch', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `total`, `payment_method_id`, `created_at`, `updated_at`) VALUES
(2, 1, 19499, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 30499, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 499, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 549, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 449, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 189, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3, 1899, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 3, 599, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 3, 349, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 4, 449, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 4, 149, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 4, 649, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 5, 249, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 5, 299, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 5, 199, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

DROP TABLE IF EXISTS `transaction_detail`;
CREATE TABLE `transaction_detail` (
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 1899, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(2, 2, 1, 699, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 3, 1, 2099, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 3, 1799, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(3, 2, 1, 699, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 1, 699, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 3, 1299, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(4, 2, 1, 599, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 1, 799, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 7, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 8, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(6, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 5, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 8, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(9, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(9, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 5, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(10, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 4, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(12, 3, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(13, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 5, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(14, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 4, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 3, 499, '2021-11-04 08:11:39', '2021-11-04 08:11:39'),
(15, 3, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 4, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 6, 1, 499, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `marital` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `dob`, `marital`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'San Francisco', '2000-01-01 00:00:00', 'Single', 'Men', '2021-02-12 00:00:00', '2021-11-04 07:55:53'),
(2, 'Jakarta', '2003-12-04 00:00:00', 'Married', 'Women', '2021-05-04 00:00:00', '2021-11-04 07:56:18'),
(3, 'Bandung', '1999-07-08 00:00:00', 'Married', 'Men', '2021-05-05 18:00:00', '2021-11-04 07:57:40'),
(4, 'Yogyakarta', '1999-07-08 00:00:00', 'Single', 'Women', '2021-11-01 11:00:00', '2021-11-04 07:57:20'),
(5, 'London', '1999-09-01 00:00:00', 'Single', 'Men', '2021-11-04 00:00:00', '2021-11-04 07:57:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_type_id` (`product_type_id`),
  ADD KEY `operator_id` (`operator_id`);

--
-- Indexes for table `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_description`
--
ALTER TABLE `product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`);

--
-- Constraints for table `product_description`
--
ALTER TABLE `product_description`
  ADD CONSTRAINT `product_description_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`);

--
-- Constraints for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD CONSTRAINT `transaction_detail_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`),
  ADD CONSTRAINT `transaction_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
