-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2023 pada 18.06
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

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
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `category`
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
-- Struktur dari tabel `company`
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
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Kedai Ayem', '3', '11', '5CC6+HW3, Jl. Wiyoro Kidul, Wiyoro, Baturetno, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55197', '3012458800', 'Indonesia', 'test pesan', 'IDR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:9:{i:0;s:9:\"viewStore\";i:1;s:11:\"deleteStore\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:12:\"viewCategory\";i:5;s:11:\"viewProduct\";i:6;s:11:\"createOrder\";i:7;s:11:\"updateOrder\";i:8;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}'),
(6, 'Manager', 'a:19:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"updateGroup\";i:3;s:9:\"viewGroup\";i:4;s:11:\"deleteGroup\";i:5;s:9:\"viewStore\";i:6;s:11:\"createTable\";i:7;s:11:\"updateTable\";i:8;s:9:\"viewTable\";i:9;s:11:\"deleteTable\";i:10;s:14:\"updateCategory\";i:11;s:13:\"createProduct\";i:12;s:13:\"updateProduct\";i:13;s:11:\"viewProduct\";i:14;s:13:\"deleteProduct\";i:15;s:9:\"viewOrder\";i:16;s:11:\"deleteOrder\";i:17;s:10:\"viewReport\";i:18;s:11:\"viewProfile\";}'),
(7, 'Cashier', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:10:\"viewReport\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}'),
(8, 'testgroup1', 'a:4:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
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

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, 'CDSTRO-17AD', '1621937009', '14.00', '', '0', '13', '1.82', '0', '15.82', 1, 3, 1, 0),
(2, 'CDSTRO-E230', '1621941718', '6.00', '', '0', '13', '0.78', '0', '6.78', 1, 6, 1, 0),
(3, 'CDSTRO-32CD', '1621951601', '9.00', '3', '0.27', '13', '1.17', '0', '10.44', 1, 30, 2, 0),
(4, 'CDSTRO-D1E6', '1621954896', '29.79', '3', '0.89', '13', '3.87', '0', '34.55', 1, 23, 2, 0),
(5, 'CDSTRO-8C4D', '1621958450', '36.44', '3', '1.09', '13', '4.74', '1', '41.27', 1, 12, 1, 0),
(6, 'CDSTRO-9507', '1621960539', '18.99', '3', '0.57', '13', '2.47', '0', '22.03', 1, 24, 1, 0),
(7, 'CDSTRO-8B2C', '1621962871', '44.34', '3', '1.33', '13', '5.76', '1', '50.43', 1, 37, 1, 0),
(8, 'CDSTRO-0E73', '1621963107', '9.85', '3', '0.30', '13', '1.28', '0', '11.43', 5, 33, 1, 16),
(9, 'CDSTRO-61C2', '1673990655', '69.40', '3', '2.08', '13', '9.02', '', '80.50', 1, 3, 1, 0),
(10, 'CDSTRO-D699', '1673990756', '510.00', '3', '15.30', '13', '66.30', '50', '541.60', 1, 1, 1, 0),
(11, 'CDSTRO-94B8', '1673991310', '10.75', '3', '0.32', '13', '1.40', '', '12.47', 1, 1, 2, 0),
(12, 'CDSTRO-1238', '1673991787', '15.30', '3', '0.46', '13', '1.99', '', '17.75', 1, 2, 2, 0),
(13, 'CDSTRO-F8A9', '1673992015', '5.10', '3', '0.15', '13', '0.66', '', '5.91', 1, 3, 2, 0),
(14, 'CDSTRO-1B81', '1676864611', '35.00', '3', '1.05', '11', '3.85', '', '39.90', 1, 5, 2, 0),
(15, 'CDSTRO-B13C', '1676864637', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 4, 1, 0),
(16, 'CDSTRO-72CF', '1676866857', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 4, 2, 0),
(17, 'CDSTRO-0110', '1676868333', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 38, 1, 0),
(18, 'CDSTRO-B9D0', '1676868380', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 6, 1, 0),
(19, 'CDSTRO-40D1', '1676875904', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 7, 3, 0),
(20, 'CDSTRO-E937', '1676876518', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 6, 3, 0),
(21, 'CDSTRO-8BC7', '1676876760', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 6, 1, 0),
(22, 'CDSTRO-2438', '1676876773', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 6, 2, 0),
(23, 'CDSTRO-729F', '1676876789', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 8, 3, 0),
(24, 'CDSTRO-8F6D', '1676878091', '15.00', '3', '0.45', '11', '1.65', '', '17.10', 1, 8, 2, 0),
(25, 'CDSTRO-D5B1', '1676888310', '65.00', '3', '1.95', '11', '7.15', '', '74.10', 1, 9, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
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
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 1, 2, '2', '5', '10.00'),
(7, 1, 1, '3', '4', '4.00'),
(8, 2, 3, '2', '3', '6.00'),
(9, 3, 5, '1', '6', '6.00'),
(10, 3, 3, '2', '3', '3.00'),
(11, 4, 19, '2', '7.95', '15.90'),
(12, 4, 16, '2', '1.89', '1.89'),
(13, 4, 9, '1', '12', '12.00'),
(18, 5, 23, '2', '10.30', '20.60'),
(19, 5, 19, '1', '7.95', '7.95'),
(20, 5, 16, '2', '1.89', '1.89'),
(21, 5, 5, '1', '6', '6.00'),
(24, 6, 12, '1', '9', '9.00'),
(25, 6, 15, '1', '9.99', '9.99'),
(33, 7, 24, '2', '9.85', '19.70'),
(34, 7, 25, '1', '5.10', '5.10'),
(35, 7, 18, '1', '8.95', '8.95'),
(36, 7, 16, '3', '1.89', '1.89'),
(37, 7, 8, '2', '1.70', '1.70'),
(38, 7, 2, '1', '5', '5.00'),
(39, 7, 4, '2', '2', '2.00'),
(41, 8, 24, '1', '9.85', '9.85'),
(48, 9, 24, '5', '9.85', '49.25'),
(49, 9, 23, '1', '10.30', '10.30'),
(50, 9, 24, '1', '9.85', '9.85'),
(52, 10, 25, '100', '5.10', '510.00'),
(53, 11, 20, '1', '10.75', '10.75'),
(54, 12, 25, '2', '5.10', '10.20'),
(55, 12, 25, '1', '5.10', '5.10'),
(56, 13, 25, '1', '5.10', '5.10'),
(57, 14, 25, '1', '15.000', '15.00'),
(58, 14, 24, '1', '20.000', '20.00'),
(60, 15, 25, '1', '15.000', '15.00'),
(61, 16, 25, '1', '15.000', '15.00'),
(63, 17, 25, '1', '15.000', '15.00'),
(65, 18, 25, '1', '15.000', '15.00'),
(68, 19, 25, '1', '15.000', '15.00'),
(71, 20, 25, '1', '15.000', '15.00'),
(73, 21, 25, '1', '15.000', '15.00'),
(75, 22, 25, '1', '15.000', '15.00'),
(77, 23, 25, '1', '15.000', '15.00'),
(78, 24, 25, '1', '15.000', '15.00'),
(79, 25, 22, '1', '30.000', '30.00'),
(80, 25, 24, '1', '20.000', '20.00'),
(81, 25, 25, '1', '15.000', '15.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
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
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(4, '[\"11\"]', '[\"16\"]', 'French Fries', '15.000', '<p>\r\n\r\nFrench fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack\r\n\r\n<br></p>', 'assets/images/product_image/63c853224c9ea.jpg', 1),
(9, '[\"13\"]', '[\"16\"]', 'Pepperoni Pizza', '120.000', '<p>An American variety of salami, made from cured pork and beef seasoned with paprika or other chili pepper.\r\n\r\n<br></p>', 'assets/images/product_image/63c852d3cd0de.jpg', 1),
(10, '[\"13\"]', '[\"16\"]', 'Chicken Parmesan Pizza', '150.000', '<p>\r\n\r\nHand-Tossed Pizza, Original Pan Pizza, Thin N Crispy Pizza\r\n\r\n<br></p>', 'assets/images/product_image/63c85296366f8.jpg', 1),
(13, '[\"6\"]', '[\"16\"]', 'cola', '5.000', '<p>\r\n\r\nBottle 20 oz\r\n\r\n<br></p>', 'assets/images/product_image/63c851d332239.jpg', 1),
(14, '[\"6\"]', '[\"16\"]', 'Orange Juice', '10.000', '<p>test</p>', 'assets/images/product_image/63c852090ec0f.jpg', 1),
(17, '[\"6\"]', '[\"16\"]', 'Americano', '20.000', '<p>\r\n\r\n32 Fl Oz\r\n\r\n<br></p>', 'assets/images/product_image/63c8518d05d20.jpg', 1),
(19, '[\"3\"]', '[\"16\"]', 'Popcorn Chicken', '12.000', '<p>Consisting of small, bite-sized pieces of chicken that have been breaded and fried.\r\n\r\n<br></p>', 'assets/images/product_image/63c85114e3829.jpg', 1),
(21, '[\"15\"]', '[\"16\"]', 'BBQ Shrimp and Hot Beef Sausage', '45.000', '<p>\r\n\r\nServed in house made sweet and spicy BBQ sauce drape the sweet shrimp and savoie\'s sausage with baguette\r\n\r\n<br></p>', 'assets/images/product_image/63c850c865ac6.jpg', 1),
(22, '[\"3\"]', '[\"16\"]', 'Shrimp Scampi', '30.000', '<p>\r\n\r\nShrimp <b></b>scampi is a seafood dish with a <b></b>sauce of garlic, lemon, and butter.</p>', 'assets/images/product_image/63c8507ac4846.jpg', 1),
(23, '[\"7\"]', '[\"16\"]', 'Chicken Caesar Wrap', '10.000', '<p>\r\n\r\nThe new <b></b>wraps&nbsp;<b></b>feature your choice of either crispy or grilled seasoned <b></b>chicken<b></b>, bacon, a blend of Monterey Jack and Mozzarella cheeses, and <b></b>Caesar&nbsp;<b></b>sauce, all wrapped in a soft tortilla and grilled.\r\n\r\n<br></p>', 'assets/images/product_image/63c8500d862e8.jpg', 1),
(24, '[\"2\"]', '[\"16\"]', 'Sliced Smoked Turkey Breast', '20.000', '<p>Slow smoked, hand sliced turkey breast served with your choice of two sides</p>', 'assets/images/product_image/63c84fda94a42.jpg', 1),
(25, '[\"17\",\"18\"]', '[\"16\"]', 'Crispy Chicken Tacos', '15.000', '<p>Three crispy fried chicken in a soft flour tortilla tossed with spicy mayo and served street style with onion, salsa, cilantro and pickled red onions.</p>', 'assets/images/product_image/63c8471502b2f.jpg', 1),
(26, '[\"18\"]', '[\"16\"]', 'Caffe Latte', '25.000', '<p>Caffe Latte</p>', 'assets/images/product_image/63f36d8ee590e.jpg', 1),
(27, '[\"18\"]', '[\"16\"]', 'Americano', '15.000', '<p>Americano</p>', 'assets/images/product_image/63f36dffab527.jpg', 1),
(28, '[\"18\"]', '[\"16\"]', 'Brown Sugar Iced Coffee', '25.000', '<p>Brown Sugar Coffee</p>', 'assets/images/product_image/63f36e8209744.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(16, 'Kedai Ayem', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tables`
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
-- Dumping data untuk tabel `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(1, 'T 10', '4', 2, 1, 1),
(2, 'T 11', '6', 2, 1, 1),
(3, 'T 12', '4', 2, 1, 1),
(4, 'P4', '2', 2, 1, 2),
(5, 'P6', '4', 2, 1, 2),
(6, 'P12', '4', 2, 1, 2),
(7, 'C1', '4', 2, 1, 3),
(8, 'C2', '4', 2, 1, 3),
(9, 'C3', '', 2, 1, 3),
(10, 'BG4', '2', 1, 1, 4),
(11, 'BG5', '4', 1, 1, 4),
(12, 'BG8', '6', 1, 1, 4),
(13, 'TK4', '4', 1, 1, 5),
(14, 'TK46', '4', 1, 1, 5),
(15, 'TK10', '6', 1, 1, 5),
(16, 'PT2', '4', 1, 1, 6),
(17, 'PT4', '4', 1, 1, 6),
(18, 'SR1', '4', 1, 1, 7),
(19, 'SR4', '6', 1, 1, 7),
(20, 'TCC5', '4', 1, 1, 8),
(21, 'TCC9', '', 1, 1, 8),
(22, 'M15', '6', 1, 1, 9),
(23, 'M20', '8', 2, 1, 9),
(24, 'CCR5', '4', 1, 1, 10),
(25, 'CCR6', '8', 1, 1, 10),
(26, 'FG5', '6', 1, 1, 11),
(27, 'FG8', '8', 1, 1, 11),
(28, 'DP2', '4', 1, 1, 12),
(29, 'DP3', '8', 1, 1, 12),
(30, 'FR15', '4', 2, 1, 13),
(31, 'FR19', '8', 1, 1, 13),
(32, 'FR20', '2', 1, 1, 13),
(33, 'ER4', '2', 1, 1, 16),
(34, 'ER6', '4', 1, 1, 16),
(35, 'ER8', '6', 1, 1, 16),
(36, 'HK8', '4', 1, 1, 15),
(37, 'ZE9', '6', 1, 1, 14),
(38, 'testtable', '4', 1, 1, 16),
(39, '1A', '4', 1, 1, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2y$10$3UMLjCvXVuXP.8fb2yunuO6nCBIkAyRiqPR0dMuiyJj9Qw1lp0YQ2', 'admin@gmail.com', 'test', 'admin', '80789998', 1, 0),
(2, 'kenny', '$2y$10$QQESnj3B3Q3nb9IBuZwZE..rmAJPUzz0DWlNM8zCydju432BlyjuO', 'kennyw@gmail.com', 'Kenny', 'Waldrom', '7545554540', 1, 1),
(3, 'liamoore', '$2y$10$ug9KuKmpgY1ck0tuzjxjU.rROEkaFCloTTZGjMhRzugMZA14bZSdC', 'liam@gmail.com', 'Liam', 'Moore', '7400002140', 1, 1),
(4, 'veronica', '$2y$10$J4/hvDs/.rW8nrd8N9kfuuh0Msh4djj6LyhQvG3l8/9clc7ge7At.', 'veronica@gmail.com', 'Veronica', 'Lyle', '7850002680', 2, 2),
(5, 'donna', '$2y$10$uhWPHza2qiKtFKS3IKbIyeblUBXPoJWbwyWCuju7ukCTAcm2oncZO', 'donna@gmail.com', 'Donna', 'Edwards', '7025556960', 2, 16),
(6, 'test_1', '$2y$10$EAeOsuIwO4vyfkOKj.dDBuCZBcieTPz1J3jAwiPpee2sx1f759alu', 'test1@gmail.com', 'test1', 'test1', '123456', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user_group`
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
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
