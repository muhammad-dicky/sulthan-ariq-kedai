-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kedai_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(2, 'Breakfast', 1),
(3, 'Appetizers', 1),
(4, 'Lunch', 1),
(5, 'Dessert', 1),
(6, 'Drinks', 1),
(7, 'Wraps', 1),
(8, 'Sandwiches', 1),
(9, 'Flatbreads', 1),
(10, 'Combos', 1),
(11, 'Sides', 1),
(12, 'Burgers', 1),
(13, 'Pizza', 1),
(14, 'Pasta', 1),
(15, 'Starters', 1),
(16, 'BBQ Platters', 1),
(17, 'Tacos', 1),
(18, 'Coffee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Kedai Ayem', '3', '11', '5CC6+HW3, Jl. Wiyoro Kidul, Wiyoro, Baturetno, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55197', '3012458800', 'Indonesia', 'test pesan', 'IDR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:9:{i:0;s:9:\"viewStore\";i:1;s:11:\"deleteStore\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:12:\"viewCategory\";i:5;s:11:\"viewProduct\";i:6;s:11:\"createOrder\";i:7;s:11:\"updateOrder\";i:8;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}'),
(6, 'Manager', 'a:19:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"updateGroup\";i:3;s:9:\"viewGroup\";i:4;s:11:\"deleteGroup\";i:5;s:11:\"createTable\";i:6;s:11:\"updateTable\";i:7;s:9:\"viewTable\";i:8;s:11:\"deleteTable\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:13:\"createProduct\";i:12;s:13:\"updateProduct\";i:13;s:11:\"viewProduct\";i:14;s:13:\"deleteProduct\";i:15;s:9:\"viewOrder\";i:16;s:11:\"deleteOrder\";i:17;s:10:\"viewReport\";i:18;s:11:\"viewProfile\";}'),
(7, 'Cashier', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:10:\"viewReport\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(86, 27, 35, '1', '18000', '18000.00'),
(87, 27, 24, '1', '20000', '20000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(4, '[\"11\"]', '[\"16\"]', 'French Fries', '12000', '<p>\r\n\r\nFrench fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack\r\n\r\n<br></p>', 'assets/images/product_image/63c853224c9ea.jpg', 1),
(19, '[\"3\"]', '[\"16\"]', 'Popcorn Chicken', '16000', '<p>Consisting of small, bite-sized pieces of chicken that have been breaded and fried.\r\n\r\n<br></p>', 'assets/images/product_image/63c85114e3829.jpg', 1),
(24, '[\"2\",\"6\"]', '[\"16\"]', 'Kopi Soklat', '20000', '<p>kopi coklat</p>', 'assets/images/product_image/642a70f0e5092.jpg', 1),
(25, '[\"17\",\"18\"]', '[\"16\"]', 'Single Origin', '18000', '<p>Arabika Coffe&nbsp;</p>', 'assets/images/product_image/642a707f93fe5.jpg', 1),
(26, '[\"18\"]', '[\"16\"]', 'Caffe Latte', '25000', '<p>Caffe Latte</p>', 'assets/images/product_image/63f36d8ee590e.jpg', 1),
(27, '[\"18\"]', '[\"16\"]', 'Americano', '15000', '<p>Americano</p>', 'assets/images/product_image/63f36dffab527.jpg', 1),
(28, '[\"18\"]', '[\"16\"]', 'Kopi Gula Aren', '25000', '<p>Brown Sugar Coffee</p>', 'assets/images/product_image/63f36e8209744.jpg', 1),
(31, '[\"6\"]', '[\"16\"]', 'Red Velvet', '20000', '<p>Red velvet</p>', 'assets/images/product_image/642a7344b0c0d.jpg', 1),
(32, '[\"6\"]', '[\"16\"]', 'Matcha cih', '20000', '<p>&nbsp;wmathc a</p>', 'assets/images/product_image/642a73ad6d736.jpg', 1),
(33, '[\"4\"]', '[\"16\"]', 'Nasi telur', '15000', '<p>nasi telur pontianak</p>', 'assets/images/product_image/642a74114e540.jpg', 1),
(34, '[\"4\"]', '[\"16\"]', 'Nasi Goreng Hongkong', '18000', '', 'assets/images/product_image/642a74a55ced2.jpg', 1),
(35, '[\"4\"]', '[\"16\"]', 'Nasi Goreng Oriental', '18000', '', 'assets/images/product_image/642a74d455132.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(16, 'Kedai Ayem', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(31, '9', '8', 1, 1, 16),
(32, '8', '2', 1, 1, 16),
(33, '7', '2', 1, 1, 16),
(34, '6', '4', 1, 1, 16),
(35, '4', '6', 1, 1, 16),
(36, '3', '4', 1, 1, 16),
(37, '2', '6', 1, 1, 16),
(39, '1', '4', 1, 1, 16),
(40, '10', '4', 1, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2y$10$3UMLjCvXVuXP.8fb2yunuO6nCBIkAyRiqPR0dMuiyJj9Qw1lp0YQ2', 'admin@gmail.com', 'test', 'admin', '80789998', 1, 0),
(2, 'kenny', '$2y$10$QQESnj3B3Q3nb9IBuZwZE..rmAJPUzz0DWlNM8zCydju432BlyjuO', 'kennyw@gmail.com', 'Kenny', 'Waldrom', '7545554540', 1, 1),
(3, 'member', '$2y$10$IqK7HPpYWI7jf7PlGZ1yreqp3MP6C.xMWInC/dRt3DfCwDsN3MIFO', 'member@gmail.com', 'member', 'member', '7400002140', 1, NULL),
(4, 'manager', '$2y$10$J4/hvDs/.rW8nrd8N9kfuuh0Msh4djj6LyhQvG3l8/9clc7ge7At.', 'manager@gmail.com', 'manager', 'manager', '7850002680', 2, NULL),
(5, 'kasir', '$2y$10$nB55RmTEEa1PHFRvJ95ld.VZkkGMbyDb0HoR7cDKlH7DKm/Yqtf.S', 'kasir@gmail.com', 'kasir', 'kasir', '7025556960', 2, NULL),
(6, 'test_1', '$2y$10$EAeOsuIwO4vyfkOKj.dDBuCZBcieTPz1J3jAwiPpee2sx1f759alu', 'test1@gmail.com', 'test1', 'test1', '123456', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 4),
(4, 4, 6),
(5, 5, 7),
(6, 6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
