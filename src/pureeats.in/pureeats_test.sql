-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 09:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pureeats_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_deliveries`
--

CREATE TABLE `accept_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accept_deliveries`
--

INSERT INTO `accept_deliveries` (`id`, `order_id`, `user_id`, `customer_id`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 111, 3, 4, 0, '2021-03-27 09:22:07', '2021-03-27 09:22:07'),
(2, 123, 3, 48, 0, '2021-05-05 16:34:39', '2021-05-08 17:51:08'),
(3, 122, 3, 48, 0, '2021-05-08 09:02:42', '2021-05-08 17:52:09'),
(4, 124, 3, 48, 0, '2021-05-09 13:46:00', '2021-05-09 13:54:04'),
(5, 127, 3, 48, 0, '2021-05-11 19:24:21', '2021-05-11 19:24:21'),
(10, 128, 3, 48, 0, '2021-05-11 19:33:00', '2021-05-11 19:41:46'),
(11, 129, 3, 48, 0, '2021-05-11 20:50:26', '2021-05-11 20:51:09'),
(12, 130, 49, 48, 1, '2021-05-11 20:56:37', '2021-05-11 21:29:24'),
(13, 133, 49, 48, 0, '2021-05-11 21:39:40', '2021-05-11 21:40:18'),
(14, 137, 3, 48, 0, '2021-05-11 21:41:20', '2021-05-11 21:41:20'),
(15, 136, 3, 48, 0, '2021-05-11 21:41:42', '2021-05-11 21:41:42'),
(16, 135, 49, 48, 0, '2021-05-11 21:42:10', '2021-05-11 21:42:10'),
(17, 134, 3, 48, 0, '2021-05-11 21:42:47', '2021-05-11 21:42:47'),
(18, 138, 3, 48, 0, '2021-05-11 21:43:36', '2021-05-11 21:43:36'),
(20, 139, 3, 48, 0, '2021-05-11 21:49:38', '2021-05-11 21:49:38'),
(21, 140, 3, 48, 0, '2021-05-11 21:50:52', '2021-05-11 21:59:03'),
(22, 141, 49, 48, 0, '2021-05-11 21:58:17', '2021-05-11 22:11:25'),
(23, 142, 49, 48, 1, '2021-05-11 21:59:51', '2021-05-11 22:08:12'),
(25, 143, 3, 48, 1, '2021-05-11 22:10:20', '2021-05-11 22:14:39'),
(26, 145, 3, 48, 1, '2021-05-12 07:02:49', '2021-05-12 18:14:00'),
(27, 146, 3, 48, 1, '2021-05-12 18:17:43', '2021-05-12 18:26:03'),
(28, 147, 3, 48, 1, '2021-05-12 18:59:52', '2021-05-12 19:09:49'),
(29, 148, 3, 48, 1, '2021-05-12 19:35:59', '2021-05-17 18:28:50'),
(30, 150, 3, 48, 0, '2021-05-15 14:58:27', '2021-05-15 14:58:27'),
(31, 154, 3, 48, 1, '2021-05-17 17:53:43', '2021-05-17 18:44:34'),
(32, 155, 3, 48, 0, '2021-05-17 19:48:54', '2021-05-17 19:48:54'),
(33, 156, 3, 48, 0, '2021-05-17 19:51:36', '2021-05-17 20:51:05'),
(34, 157, 3, 48, 0, '2021-05-17 21:02:57', '2021-05-17 21:05:06'),
(35, 158, 49, 48, 0, '2021-05-17 21:08:34', '2021-05-17 21:08:34'),
(36, 159, 50, 48, 0, '2021-05-17 21:13:52', '2021-05-17 21:13:52'),
(37, 160, 49, 48, 0, '2021-05-17 21:17:17', '2021-05-17 21:17:49'),
(38, 161, 49, 48, 0, '2021-05-18 15:09:26', '2021-05-18 15:15:04'),
(39, 162, 3, 48, 0, '2021-05-18 15:27:19', '2021-05-18 15:27:19'),
(40, 163, 3, 48, 0, '2021-05-18 15:29:07', '2021-05-18 15:29:07'),
(41, 164, 3, 48, 0, '2021-05-18 15:34:36', '2021-05-18 15:34:36'),
(42, 165, 3, 48, 0, '2021-05-18 15:38:06', '2021-05-18 15:38:06'),
(43, 166, 3, 48, 0, '2021-05-18 15:39:46', '2021-05-18 15:39:46'),
(44, 167, 3, 48, 0, '2021-05-18 15:42:55', '2021-05-18 15:42:55'),
(45, 169, 3, 48, 0, '2021-05-20 19:05:27', '2021-05-20 19:05:27'),
(46, 174, 3, 48, 1, '2021-05-20 19:11:07', '2021-05-20 19:20:07'),
(47, 175, 3, 48, 1, '2021-05-21 20:31:03', '2021-05-22 17:07:54'),
(48, 177, 3, 48, 0, '2021-05-22 17:18:44', '2021-05-22 17:18:44'),
(50, 178, 49, 48, 0, '2021-05-22 17:25:08', '2021-05-22 17:28:09'),
(51, 179, 50, 48, 0, '2021-05-22 17:49:47', '2021-05-22 18:01:43'),
(52, 180, 3, 48, 0, '2021-05-22 18:03:53', '2021-05-22 18:03:53'),
(53, 181, 3, 48, 1, '2021-05-22 18:13:59', '2021-05-22 18:17:33'),
(54, 184, 3, 48, 1, '2021-05-22 19:39:31', '2021-05-22 20:09:34'),
(55, 186, 3, 48, 0, '2021-05-22 20:23:23', '2021-05-22 20:23:23'),
(56, 187, 3, 48, 0, '2021-05-22 20:23:48', '2021-05-22 20:23:48'),
(57, 188, 3, 48, 0, '2021-05-22 20:24:11', '2021-05-22 21:41:12'),
(58, 185, 3, 48, 0, '2021-05-22 22:03:13', '2021-05-22 22:03:13'),
(59, 189, 3, 48, 0, '2021-05-22 22:16:18', '2021-05-22 22:48:38'),
(60, 193, 3, 48, 0, '2021-06-03 15:18:45', '2021-06-03 15:18:45'),
(61, 198, 3, 48, 0, '2021-06-05 15:44:44', '2021-06-05 15:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `addon_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `price`, `addon_category_id`, `user_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Sprite', '40.00', 1, 1, '2021-08-21 02:10:19', '2021-08-21 02:10:19', 1),
(2, 'Large', '120.00', 1, 1, '2021-08-30 19:01:33', '2021-08-30 19:01:33', 1),
(3, 'Extra large', '180.00', 1, 1, '2021-08-30 19:01:52', '2021-08-30 19:01:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_categories`
--

CREATE TABLE `addon_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_categories`
--

INSERT INTO `addon_categories` (`id`, `name`, `type`, `user_id`, `created_at`, `updated_at`, `description`) VALUES
(1, 'ColdDrinks', 'SINGLE', 1, '2021-08-21 02:09:39', '2021-08-21 02:09:39', 'cold drinks addon');

-- --------------------------------------------------------

--
-- Table structure for table `addon_category_item`
--

CREATE TABLE `addon_category_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `addon_category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_category_item`
--

INSERT INTO `addon_category_item` (`id`, `addon_category_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 141, NULL, NULL),
(2, 1, 16, NULL, NULL),
(3, 1, 142, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `house`, `landmark`, `tag`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 34, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:22:39', '2021-04-21 17:22:39', '22.5807973', '88.3740187'),
(2, 39, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:30:29', '2021-04-21 17:30:29', '22.5807973', '88.3740187'),
(3, 41, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:34:01', '2021-04-21 17:34:01', '22.5807973', '88.3740187'),
(4, 43, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:48:35', '2021-04-21 17:48:35', '22.5807973', '88.3740187'),
(5, 44, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:49:33', '2021-04-21 17:49:33', '22.5807973', '88.3740187'),
(6, 45, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:51:19', '2021-04-21 17:51:19', '22.5807973', '88.3740187'),
(7, 46, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:52:11', '2021-04-21 17:52:11', '22.5807973', '88.3740187'),
(8, 47, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:54:20', '2021-04-21 17:54:20', '22.5807973', '88.3740187'),
(9, 48, '99a, Acharya Prafulla Chandra Rd, Garpar, Raja Bazar, Kolkata, West Bengal 700009, India', '', NULL, '', '2021-04-21 17:58:08', '2021-04-21 17:58:08', '22.5807973', '88.3740187');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `data`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, '{\"title\":\"Hello Worl\",\"message\":\"HDemo Description from WEB\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":null,\"unique_order_id\":null,\"custom_notification\":true,\"custom_image\":null}', 1, 0, '2021-02-03 23:29:22', '2021-02-03 23:29:22'),
(2, '{\"title\":\"Hello Worl\",\"message\":\"HDemo Description from WEB\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":null,\"unique_order_id\":null,\"custom_notification\":true,\"custom_image\":null}', 2, 0, '2021-02-03 23:29:22', '2021-02-03 23:29:22'),
(3, '{\"title\":\"Hello Worl\",\"message\":\"HDemo Description from WEB\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":null,\"unique_order_id\":null,\"custom_notification\":true,\"custom_image\":null}', 3, 0, '2021-02-03 23:29:22', '2021-02-03 23:29:22'),
(4, '{\"title\":\"Hello Worl\",\"message\":\"HDemo Description from WEB\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":null,\"unique_order_id\":null,\"custom_notification\":true,\"custom_image\":null}', 4, 0, '2021-02-03 23:29:22', '2021-02-03 23:29:22'),
(5, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000020\"}', 4, 0, '2021-02-04 17:03:13', '2021-02-04 17:03:13'),
(6, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000021\"}', 4, 0, '2021-02-04 17:30:45', '2021-02-04 17:30:45'),
(7, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000016\"}', 4, 0, '2021-02-04 18:54:09', '2021-02-04 18:54:09'),
(8, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000016\"}', 4, 0, '2021-02-04 19:19:04', '2021-02-04 19:19:04'),
(9, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000017\",\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 19:51:58', '2021-02-04 19:51:58'),
(10, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 21:31:00', '2021-02-04 21:31:00'),
(11, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 23:20:59', '2021-02-04 23:20:59'),
(12, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 23:24:29', '2021-02-04 23:24:29'),
(13, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 23:26:26', '2021-02-04 23:26:26'),
(14, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 23:27:37', '2021-02-04 23:27:37'),
(15, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":null,\"order_status_id\":\"6\"}', 4, 0, '2021-02-04 23:28:42', '2021-02-04 23:28:42'),
(16, '{\"title\":\"Wallet\",\"message\":\"\\u20b95000 test\",\"is_wallet_alert\":true,\"transaction_type\":\"deposit\"}', 4, 0, '2021-02-06 20:09:34', '2021-02-06 20:09:34'),
(17, '{\"title\":\"Wallet\",\"message\":\"\\u20b94550 test\",\"is_wallet_alert\":true,\"transaction_type\":\"withdraw\"}', 4, 0, '2021-02-06 22:59:51', '2021-02-06 22:59:51'),
(18, '{\"title\":\"Wallet\",\"message\":\"\\u20b9400 test\",\"is_wallet_alert\":true,\"transaction_type\":\"withdraw\"}', 4, 0, '2021-02-06 23:00:35', '2021-02-06 23:00:35'),
(19, '{\"title\":\"Wallet\",\"message\":\"\\u20b960 test\",\"is_wallet_alert\":true,\"transaction_type\":\"deposit\"}', 4, 0, '2021-02-08 22:43:41', '2021-02-08 22:43:41'),
(20, '{\"title\":\"Wallet\",\"message\":\"\\u20b920 test\",\"is_wallet_alert\":true,\"transaction_type\":\"deposit\"}', 4, 0, '2021-03-30 17:24:03', '2021-03-30 17:24:03'),
(21, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000123\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-08 18:29:54', '2021-05-08 18:29:54'),
(22, '{\"title\":\"Chef at work!!\",\"message\":\"Restaurant is preparing your order\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000124\",\"unique_order_id\":\"PUR0000000124\",\"order_status_id\":\"2\"}', 48, 0, '2021-05-09 11:48:36', '2021-05-09 11:48:36'),
(23, '{\"title\":\"A New Order is Waiting !!!\",\"message\":\"New Order Notification\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/delivery\\/orders\\/PUR0000000124\",\"unique_order_id\":\"PUR0000000124\",\"order_status_id\":\"TO_DELIVERY\"}', 3, 0, '2021-05-09 11:48:37', '2021-05-09 11:48:37'),
(24, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000124\",\"unique_order_id\":\"PUR0000000124\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-09 13:46:00', '2021-05-09 13:46:00'),
(25, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000126\",\"unique_order_id\":\"PUR0000000126\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 17:10:01', '2021-05-11 17:10:01'),
(26, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000127\",\"unique_order_id\":\"PUR0000000127\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 19:13:24', '2021-05-11 19:13:24'),
(27, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000128\",\"unique_order_id\":\"PUR0000000128\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 19:32:36', '2021-05-11 19:32:36'),
(28, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000129\",\"unique_order_id\":\"PUR0000000129\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 20:51:20', '2021-05-11 20:51:20'),
(29, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000130\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 20:57:49', '2021-05-11 20:57:49'),
(30, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000130\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:00:34', '2021-05-11 21:00:34'),
(31, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000130\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 21:03:29', '2021-05-11 21:03:29'),
(32, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 21:29:24', '2021-05-11 21:29:24'),
(33, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 21:31:09', '2021-05-11 21:31:09'),
(34, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000130\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 21:33:03', '2021-05-11 21:33:03'),
(35, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000131\",\"unique_order_id\":\"PUR0000000131\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:34:03', '2021-05-11 21:34:03'),
(36, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000131\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-11 21:37:09', '2021-05-11 21:37:09'),
(37, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000132\",\"unique_order_id\":\"PUR0000000132\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:37:45', '2021-05-11 21:37:45'),
(38, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000132\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-11 21:38:58', '2021-05-11 21:38:58'),
(39, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000133\",\"unique_order_id\":\"PUR0000000133\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:39:32', '2021-05-11 21:39:32'),
(40, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000133\",\"unique_order_id\":\"PUR0000000133\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 21:40:08', '2021-05-11 21:40:08'),
(41, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000137\",\"unique_order_id\":\"PUR0000000137\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:41:12', '2021-05-11 21:41:12'),
(42, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000136\",\"unique_order_id\":\"PUR0000000136\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:41:47', '2021-05-11 21:41:47'),
(43, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000135\",\"unique_order_id\":\"PUR0000000135\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:42:19', '2021-05-11 21:42:19'),
(44, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000138\",\"unique_order_id\":\"PUR0000000138\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:43:27', '2021-05-11 21:43:27'),
(45, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000138\",\"unique_order_id\":\"PUR0000000138\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 21:43:45', '2021-05-11 21:43:45'),
(46, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000139\",\"unique_order_id\":\"PUR0000000139\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:49:47', '2021-05-11 21:49:47'),
(47, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000141\",\"unique_order_id\":\"PUR0000000141\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:58:24', '2021-05-11 21:58:24'),
(48, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000141\",\"unique_order_id\":\"PUR0000000141\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 21:58:35', '2021-05-11 21:58:35'),
(49, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000142\",\"unique_order_id\":\"PUR0000000142\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 21:59:28', '2021-05-11 21:59:28'),
(50, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000142\",\"unique_order_id\":\"PUR0000000142\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 22:00:15', '2021-05-11 22:00:15'),
(51, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000140\",\"unique_order_id\":\"PUR0000000140\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 22:00:32', '2021-05-11 22:00:32'),
(52, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000142\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 22:08:12', '2021-05-11 22:08:12'),
(53, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000140\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-11 22:08:37', '2021-05-11 22:08:37'),
(54, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000139\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-11 22:09:12', '2021-05-11 22:09:12'),
(55, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000143\",\"unique_order_id\":\"PUR0000000143\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-11 22:10:11', '2021-05-11 22:10:11'),
(56, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000143\",\"unique_order_id\":\"PUR0000000143\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-11 22:10:39', '2021-05-11 22:10:39'),
(57, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000143\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 22:14:39', '2021-05-11 22:14:39'),
(58, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000143\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-11 22:17:00', '2021-05-11 22:17:00'),
(59, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000145\",\"unique_order_id\":\"PUR0000000145\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-12 07:02:49', '2021-05-12 07:02:49'),
(60, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000145\",\"unique_order_id\":\"PUR0000000145\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-12 14:16:27', '2021-05-12 14:16:27'),
(61, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000145\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-12 18:14:00', '2021-05-12 18:14:00'),
(62, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000146\",\"unique_order_id\":\"PUR0000000146\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-12 18:17:43', '2021-05-12 18:17:43'),
(63, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000146\",\"unique_order_id\":\"PUR0000000146\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-12 18:23:06', '2021-05-12 18:23:06'),
(64, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000146\",\"unique_order_id\":\"PUR0000000146\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-12 18:23:44', '2021-05-12 18:23:44'),
(65, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000146\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-12 18:26:04', '2021-05-12 18:26:04'),
(66, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000147\",\"unique_order_id\":\"PUR0000000147\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-12 18:59:53', '2021-05-12 18:59:53'),
(67, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000147\",\"unique_order_id\":\"PUR0000000147\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-12 19:00:38', '2021-05-12 19:00:38'),
(68, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000147\",\"unique_order_id\":\"PUR0000000147\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-12 19:01:38', '2021-05-12 19:01:38'),
(69, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000147\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-12 19:09:50', '2021-05-12 19:09:50'),
(70, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-12 19:56:05', '2021-05-12 19:56:05'),
(71, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-14 15:08:23', '2021-05-14 15:08:23'),
(72, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-14 15:11:46', '2021-05-14 15:11:46'),
(73, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-14 16:39:21', '2021-05-14 16:39:21'),
(74, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-14 16:39:41', '2021-05-14 16:39:41'),
(75, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000150\",\"unique_order_id\":\"PUR0000000150\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-15 14:58:27', '2021-05-15 14:58:27'),
(76, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-16 14:54:55', '2021-05-16 14:54:55'),
(77, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-16 14:57:44', '2021-05-16 14:57:44'),
(78, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-16 15:07:02', '2021-05-16 15:07:02'),
(79, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-16 15:41:12', '2021-05-16 15:41:12'),
(80, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-16 15:51:44', '2021-05-16 15:51:44'),
(81, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000154\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-17 17:53:44', '2021-05-17 17:53:44'),
(82, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000154\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-17 18:14:40', '2021-05-17 18:14:40'),
(83, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000154\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-17 18:14:52', '2021-05-17 18:14:52'),
(84, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000154\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-17 18:18:53', '2021-05-17 18:18:53'),
(85, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-17 18:20:42', '2021-05-17 18:20:42'),
(86, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000148\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-17 18:25:01', '2021-05-17 18:25:01'),
(87, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000148\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-17 18:28:50', '2021-05-17 18:28:50'),
(88, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-17 18:38:22', '2021-05-17 18:38:22'),
(89, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000154\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-17 18:44:34', '2021-05-17 18:44:34'),
(90, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000156\",\"unique_order_id\":\"PUR0000000156\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-17 19:51:36', '2021-05-17 19:51:36'),
(91, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"is_order_transferred_notification\":true}', 3, 0, '2021-05-17 20:00:04', '2021-05-17 20:00:04'),
(92, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"is_order_transferred_notification\":true}', 49, 0, '2021-05-17 20:00:26', '2021-05-17 20:00:26'),
(93, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"is_order_transferred_notification\":true}', 3, 0, '2021-05-17 20:10:54', '2021-05-17 20:10:54'),
(94, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"is_order_transferred_notification\":true}', 3, 0, '2021-05-17 20:16:58', '2021-05-17 20:16:58'),
(95, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-17 20:20:24', '2021-05-17 20:20:24'),
(96, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-17 20:48:57', '2021-05-17 20:48:57'),
(97, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000156 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000156\",\"type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-17 20:51:05', '2021-05-17 20:51:05'),
(98, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000157 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000157\",\"type\":\"ORDER_TRANSFERRED\"}', 49, 0, '2021-05-17 21:02:58', '2021-05-17 21:02:58'),
(99, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000157 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000157\",\"type\":\"ORDER_TRANSFERRED\"}', 49, 0, '2021-05-17 21:05:06', '2021-05-17 21:05:06'),
(100, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000158 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000158\",\"type\":\"ORDER_TRANSFERRED\"}', 49, 0, '2021-05-17 21:08:34', '2021-05-17 21:08:34'),
(101, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000159 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000159\",\"type\":\"ORDER_TRANSFERRED\"}', 50, 0, '2021-05-17 21:13:53', '2021-05-17 21:13:53'),
(102, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000160 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000160\",\"type\":\"ORDER_TRANSFERRED\"}', 50, 0, '2021-05-17 21:17:17', '2021-05-17 21:17:17'),
(103, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000160 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000160\",\"type\":\"ORDER_TRANSFERRED\"}', 50, 0, '2021-05-17 21:17:38', '2021-05-17 21:17:38'),
(104, '{\"title\":\"Order transferred\",\"message\":\"PUR0000000160 is transferred to some other delivery guy\",\"unique_order_id\":\"PUR0000000160\",\"type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-17 21:17:49', '2021-05-17 21:17:49'),
(105, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-18 14:25:13', '2021-05-18 14:25:13'),
(106, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-18 14:27:07', '2021-05-18 14:27:07'),
(107, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000161\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 3, 0, '2021-05-18 15:10:32', '2021-05-18 15:10:32'),
(108, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000161 Transferred to other Delivery Guy\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\"}', 49, 0, '2021-05-18 15:10:35', '2021-05-18 15:10:35'),
(109, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000161\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 3, 0, '2021-05-18 15:12:36', '2021-05-18 15:12:36'),
(110, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000161 Transferred to other Delivery Guy\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-18 15:12:37', '2021-05-18 15:12:37'),
(111, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000161\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 3, 0, '2021-05-18 15:14:16', '2021-05-18 15:14:16'),
(112, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000161\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 3, 0, '2021-05-18 15:14:25', '2021-05-18 15:14:25'),
(113, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000161\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 49, 0, '2021-05-18 15:15:05', '2021-05-18 15:15:05'),
(114, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000161 Transferred to other Delivery Guy\",\"order_id\":161,\"unique_order_id\":\"PUR0000000161\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-18 15:15:05', '2021-05-18 15:15:05'),
(115, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000162\",\"unique_order_id\":\"PUR0000000162\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:27:20', '2021-05-18 15:27:20'),
(116, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000163\",\"unique_order_id\":\"PUR0000000163\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:29:08', '2021-05-18 15:29:08'),
(117, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000164\",\"unique_order_id\":\"PUR0000000164\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:34:37', '2021-05-18 15:34:37'),
(118, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000165\",\"unique_order_id\":\"PUR0000000165\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:38:06', '2021-05-18 15:38:06'),
(119, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000166\",\"unique_order_id\":\"PUR0000000166\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:39:47', '2021-05-18 15:39:47'),
(120, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000167\",\"unique_order_id\":\"PUR0000000167\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-18 15:42:57', '2021-05-18 15:42:57'),
(121, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000167\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-18 15:43:21', '2021-05-18 15:43:21'),
(122, '{\"title\":\"Order Cancelled\",\"message\":\"PUR0000000167 Cancelled by the user\",\"order_id\":167,\"unique_order_id\":\"PUR0000000167\",\"order_status_id\":6,\"notification_type\":\"ORDER_CANCELLED\"}', 3, 0, '2021-05-18 15:43:21', '2021-05-18 15:43:21'),
(123, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000169\",\"unique_order_id\":\"PUR0000000169\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-20 19:05:28', '2021-05-20 19:05:28'),
(124, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000174\",\"unique_order_id\":\"PUR0000000174\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-20 19:11:10', '2021-05-20 19:11:10'),
(125, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000174\",\"unique_order_id\":\"PUR0000000174\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-20 19:16:57', '2021-05-20 19:16:57'),
(126, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000174\",\"unique_order_id\":\"PUR0000000174\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-20 19:17:12', '2021-05-20 19:17:12'),
(127, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000174\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-20 19:20:07', '2021-05-20 19:20:07'),
(128, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000174\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-20 19:23:30', '2021-05-20 19:23:30'),
(129, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 3, 0, '2021-05-21 20:36:22', '2021-05-21 20:36:22'),
(130, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\"}', 49, 0, '2021-05-21 20:36:23', '2021-05-21 20:36:23'),
(131, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\"}', 49, 0, '2021-05-21 20:37:23', '2021-05-21 20:37:23'),
(132, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\"}', 3, 0, '2021-05-21 20:37:23', '2021-05-21 20:37:23'),
(133, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:09:04', '2021-05-21 21:09:04'),
(134, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:09:04', '2021-05-21 21:09:04'),
(135, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:15:45', '2021-05-21 21:15:45'),
(136, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:15:47', '2021-05-21 21:15:47'),
(137, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:20:26', '2021-05-21 21:20:26'),
(138, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:20:26', '2021-05-21 21:20:26'),
(139, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:24:17', '2021-05-21 21:24:17'),
(140, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:24:17', '2021-05-21 21:24:17'),
(141, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:27:07', '2021-05-21 21:27:07'),
(142, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:27:08', '2021-05-21 21:27:08'),
(143, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:28:04', '2021-05-21 21:28:04'),
(144, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:28:04', '2021-05-21 21:28:04'),
(145, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:29:47', '2021-05-21 21:29:47'),
(146, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:29:47', '2021-05-21 21:29:47'),
(147, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:30:45', '2021-05-21 21:30:45');
INSERT INTO `alerts` (`id`, `data`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(148, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:30:45', '2021-05-21 21:30:45'),
(149, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:31:19', '2021-05-21 21:31:19'),
(150, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:31:19', '2021-05-21 21:31:19'),
(151, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:34:33', '2021-05-21 21:34:33'),
(152, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:34:33', '2021-05-21 21:34:33'),
(153, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:41:29', '2021-05-21 21:41:29'),
(154, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:41:30', '2021-05-21 21:41:30'),
(155, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:42:22', '2021-05-21 21:42:22'),
(156, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:42:22', '2021-05-21 21:42:22'),
(157, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:46:55', '2021-05-21 21:46:55'),
(158, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:46:56', '2021-05-21 21:46:56'),
(159, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:47:58', '2021-05-21 21:47:58'),
(160, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:47:58', '2021-05-21 21:47:58'),
(161, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3}', 3, 0, '2021-05-21 21:50:39', '2021-05-21 21:50:39'),
(162, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49}', 49, 0, '2021-05-21 21:50:40', '2021-05-21 21:50:40'),
(163, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49}', 49, 0, '2021-05-21 21:51:07', '2021-05-21 21:51:07'),
(164, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3}', 3, 0, '2021-05-21 21:51:07', '2021-05-21 21:51:07'),
(165, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 21:57:42', '2021-05-21 21:57:42'),
(166, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 21:57:43', '2021-05-21 21:57:43'),
(167, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 21:58:07', '2021-05-21 21:58:07'),
(168, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 21:58:08', '2021-05-21 21:58:08'),
(169, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:00:27', '2021-05-21 22:00:27'),
(170, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:00:27', '2021-05-21 22:00:27'),
(171, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:01:26', '2021-05-21 22:01:26'),
(172, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:01:27', '2021-05-21 22:01:27'),
(173, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:12:23', '2021-05-21 22:12:23'),
(174, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:12:24', '2021-05-21 22:12:24'),
(175, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:12:44', '2021-05-21 22:12:44'),
(176, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:12:44', '2021-05-21 22:12:44'),
(177, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:19:03', '2021-05-21 22:19:03'),
(178, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:19:03', '2021-05-21 22:19:03'),
(179, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:19:20', '2021-05-21 22:19:20'),
(180, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:19:21', '2021-05-21 22:19:21'),
(181, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:20:35', '2021-05-21 22:20:35'),
(182, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:20:35', '2021-05-21 22:20:35'),
(183, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:29:25', '2021-05-21 22:29:25'),
(184, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:29:25', '2021-05-21 22:29:25'),
(185, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:29:51', '2021-05-21 22:29:51'),
(186, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:29:52', '2021-05-21 22:29:52'),
(187, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:35:01', '2021-05-21 22:35:01'),
(188, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:35:01', '2021-05-21 22:35:01'),
(189, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:35:12', '2021-05-21 22:35:12'),
(190, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:35:12', '2021-05-21 22:35:12'),
(191, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:37:34', '2021-05-21 22:37:34'),
(192, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:37:34', '2021-05-21 22:37:34'),
(193, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:38:06', '2021-05-21 22:38:06'),
(194, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:38:07', '2021-05-21 22:38:07'),
(195, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:47:17', '2021-05-21 22:47:17'),
(196, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:47:17', '2021-05-21 22:47:17'),
(197, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:48:32', '2021-05-21 22:48:32'),
(198, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:48:32', '2021-05-21 22:48:32'),
(199, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:50:58', '2021-05-21 22:50:58'),
(200, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:50:59', '2021-05-21 22:50:59'),
(201, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:51:48', '2021-05-21 22:51:48'),
(202, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:51:48', '2021-05-21 22:51:48'),
(203, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:52:55', '2021-05-21 22:52:55'),
(204, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:52:56', '2021-05-21 22:52:56'),
(205, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:56:17', '2021-05-21 22:56:17'),
(206, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:56:18', '2021-05-21 22:56:18'),
(207, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 22:57:13', '2021-05-21 22:57:13'),
(208, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 22:57:14', '2021-05-21 22:57:14'),
(209, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:03:20', '2021-05-21 23:03:20'),
(210, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:03:21', '2021-05-21 23:03:21'),
(211, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:04:10', '2021-05-21 23:04:10'),
(212, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:04:11', '2021-05-21 23:04:11'),
(213, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:06:04', '2021-05-21 23:06:04'),
(214, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:06:05', '2021-05-21 23:06:05'),
(215, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:09:04', '2021-05-21 23:09:04'),
(216, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:09:04', '2021-05-21 23:09:04'),
(217, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:09:16', '2021-05-21 23:09:16'),
(218, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:09:17', '2021-05-21 23:09:17'),
(219, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:09:42', '2021-05-21 23:09:42'),
(220, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:09:43', '2021-05-21 23:09:43'),
(221, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:10:18', '2021-05-21 23:10:18'),
(222, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:10:18', '2021-05-21 23:10:18'),
(223, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:10:57', '2021-05-21 23:10:57'),
(224, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:10:58', '2021-05-21 23:10:58'),
(225, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:11:29', '2021-05-21 23:11:29'),
(226, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:11:29', '2021-05-21 23:11:29'),
(227, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:14:52', '2021-05-21 23:14:52'),
(228, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:14:52', '2021-05-21 23:14:52'),
(229, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:37:32', '2021-05-21 23:37:32'),
(230, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:37:33', '2021-05-21 23:37:33'),
(231, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:38:02', '2021-05-21 23:38:02'),
(232, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:38:02', '2021-05-21 23:38:02'),
(233, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:44:53', '2021-05-21 23:44:53'),
(234, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:44:53', '2021-05-21 23:44:53'),
(235, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-21 23:45:48', '2021-05-21 23:45:48'),
(236, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-21 23:45:49', '2021-05-21 23:45:49'),
(237, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000175\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 07:06:16', '2021-05-22 07:06:16'),
(238, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000175 Transferred to other Delivery Guy\",\"order_id\":175,\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 07:06:17', '2021-05-22 07:06:17'),
(239, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000175\",\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-22 16:50:50', '2021-05-22 16:50:50'),
(240, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000175\",\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-22 16:51:06', '2021-05-22 16:51:06'),
(241, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000175\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-22 17:07:54', '2021-05-22 17:07:54'),
(242, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000177\",\"unique_order_id\":\"PUR0000000177\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 17:18:45', '2021-05-22 17:18:45'),
(243, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000177\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-22 17:23:06', '2021-05-22 17:23:06'),
(244, '{\"title\":\"Order Cancelled\",\"message\":\"PUR0000000177 Cancelled by the user\",\"order_id\":177,\"unique_order_id\":\"PUR0000000177\",\"order_status_id\":6,\"notification_type\":\"ORDER_CANCELLED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 17:23:07', '2021-05-22 17:23:07'),
(245, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000178\",\"unique_order_id\":\"PUR0000000178\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 17:25:10', '2021-05-22 17:25:10'),
(246, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000178\",\"order_id\":178,\"unique_order_id\":\"PUR0000000178\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 17:28:10', '2021-05-22 17:28:10'),
(247, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000178 Transferred to other Delivery Guy\",\"order_id\":178,\"unique_order_id\":\"PUR0000000178\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 17:28:10', '2021-05-22 17:28:10'),
(248, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000179\",\"unique_order_id\":\"PUR0000000179\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 17:49:47', '2021-05-22 17:49:47'),
(249, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000179\",\"unique_order_id\":\"PUR0000000179\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-22 18:00:33', '2021-05-22 18:00:33'),
(250, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000179\",\"unique_order_id\":\"PUR0000000179\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-22 18:01:23', '2021-05-22 18:01:23'),
(251, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000179\",\"order_id\":179,\"unique_order_id\":\"PUR0000000179\",\"order_status_id\":4,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":50,\"channel\":\"WEB\"}', 50, 0, '2021-05-22 18:01:43', '2021-05-22 18:01:43'),
(252, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000179 Transferred to other Delivery Guy\",\"order_id\":179,\"unique_order_id\":\"PUR0000000179\",\"order_status_id\":4,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 18:01:44', '2021-05-22 18:01:44'),
(253, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000180\",\"unique_order_id\":\"PUR0000000180\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 18:03:54', '2021-05-22 18:03:54'),
(254, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000180\",\"unique_order_id\":\"PUR0000000180\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-22 18:04:35', '2021-05-22 18:04:35'),
(255, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000180\",\"unique_order_id\":\"PUR0000000180\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-22 18:05:24', '2021-05-22 18:05:24'),
(256, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000181\",\"unique_order_id\":\"PUR0000000181\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 18:14:00', '2021-05-22 18:14:00'),
(257, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000181\",\"unique_order_id\":\"PUR0000000181\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-22 18:15:50', '2021-05-22 18:15:50'),
(258, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000181\",\"unique_order_id\":\"PUR0000000181\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-22 18:16:28', '2021-05-22 18:16:28'),
(259, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000181\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-22 18:17:33', '2021-05-22 18:17:33'),
(260, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000180\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-22 19:30:53', '2021-05-22 19:30:53'),
(261, '{\"title\":\"Order Cancelled\",\"message\":\"PUR0000000180 Cancelled by the user\",\"order_id\":180,\"unique_order_id\":\"PUR0000000180\",\"order_status_id\":6,\"notification_type\":\"ORDER_CANCELLED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:30:54', '2021-05-22 19:30:54'),
(262, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000182\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-22 19:36:08', '2021-05-22 19:36:08'),
(263, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000183\",\"order_status_id\":\"6\"}', 48, 0, '2021-05-22 19:38:08', '2021-05-22 19:38:08'),
(264, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:39:59', '2021-05-22 19:39:59'),
(265, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 19:39:59', '2021-05-22 19:39:59'),
(266, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 19:45:14', '2021-05-22 19:45:14'),
(267, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:45:15', '2021-05-22 19:45:15'),
(268, '{\"title\":\"Food is Ready\",\"message\":\"Your order is ready for self pickup.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000184\",\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":\"7\"}', 48, 0, '2021-05-22 19:45:48', '2021-05-22 19:45:48'),
(269, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":73,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:46:19', '2021-05-22 19:46:19'),
(270, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":73,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 19:46:19', '2021-05-22 19:46:19'),
(271, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 19:50:15', '2021-05-22 19:50:15'),
(272, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:50:16', '2021-05-22 19:50:16'),
(273, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:53:44', '2021-05-22 19:53:44'),
(274, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 19:53:44', '2021-05-22 19:53:44'),
(275, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":50,\"channel\":\"WEB\"}', 50, 0, '2021-05-22 19:54:09', '2021-05-22 19:54:09'),
(276, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:54:09', '2021-05-22 19:54:09'),
(277, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000184\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 19:54:24', '2021-05-22 19:54:24'),
(278, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000184 Transferred to other Delivery Guy\",\"order_id\":184,\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":710,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":50,\"channel\":\"WEB\"}', 50, 0, '2021-05-22 19:54:24', '2021-05-22 19:54:24'),
(279, '{\"title\":\"Vroom Vroom!!\",\"message\":\"Order has been picked up and is on its way\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000184\",\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":\"4\"}', 48, 0, '2021-05-22 19:57:18', '2021-05-22 19:57:18'),
(280, '{\"title\":\"Order Delivered\",\"message\":\"Order Delivered\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000184\",\"order_status_id\":\"5\"}', 48, 0, '2021-05-22 20:09:34', '2021-05-22 20:09:34'),
(281, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000186\",\"unique_order_id\":\"PUR0000000186\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 20:23:24', '2021-05-22 20:23:24'),
(282, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000187\",\"unique_order_id\":\"PUR0000000187\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 20:23:49', '2021-05-22 20:23:49'),
(283, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000188\",\"unique_order_id\":\"PUR0000000188\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 20:24:13', '2021-05-22 20:24:13'),
(284, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000188\",\"order_id\":188,\"unique_order_id\":\"PUR0000000188\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":50,\"channel\":\"WEB\"}', 50, 0, '2021-05-22 20:26:36', '2021-05-22 20:26:36'),
(285, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000188 Transferred to other Delivery Guy\",\"order_id\":188,\"unique_order_id\":\"PUR0000000188\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 20:26:37', '2021-05-22 20:26:37'),
(286, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000188\",\"order_id\":188,\"unique_order_id\":\"PUR0000000188\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 21:41:13', '2021-05-22 21:41:13'),
(287, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000188 Transferred to other Delivery Guy\",\"order_id\":188,\"unique_order_id\":\"PUR0000000188\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":50,\"channel\":\"WEB\"}', 50, 0, '2021-05-22 21:41:13', '2021-05-22 21:41:13'),
(288, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000185\",\"unique_order_id\":\"PUR0000000185\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 22:03:14', '2021-05-22 22:03:14'),
(289, '{\"title\":\"Delivery Guy Assigned\",\"message\":\"On the way to pick up your order.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/running-order\\/PUR0000000189\",\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":\"3\"}', 48, 0, '2021-05-22 22:16:19', '2021-05-22 22:16:19'),
(290, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000189\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 22:44:16', '2021-05-22 22:44:16'),
(291, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000189\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 22:44:44', '2021-05-22 22:44:44'),
(292, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000189 Transferred to other Delivery Guy\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 22:44:45', '2021-05-22 22:44:45'),
(293, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000189\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 22:45:17', '2021-05-22 22:45:17'),
(294, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000189 Transferred to other Delivery Guy\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 22:45:18', '2021-05-22 22:45:18'),
(295, '{\"title\":\"Delivery ReAssigned\",\"message\":\"Delivery re-assigned for the order PUR0000000189\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"DELIVERY_RE_ASSIGNED\",\"user_id\":3,\"channel\":\"WEB\"}', 3, 0, '2021-05-22 22:48:38', '2021-05-22 22:48:38'),
(296, '{\"title\":\"Order Transferred\",\"message\":\"PUR0000000189 Transferred to other Delivery Guy\",\"order_id\":189,\"unique_order_id\":\"PUR0000000189\",\"order_status_id\":3,\"notification_type\":\"ORDER_TRANSFERRED\",\"user_id\":49,\"channel\":\"WEB\"}', 49, 0, '2021-05-22 22:48:39', '2021-05-22 22:48:39'),
(297, '{\"title\":\"Order Canceled\",\"message\":\"Sorry. Your order has been canceled.\",\"badge\":\"\\/assets\\/img\\/favicons\\/favicon-96x96.png\",\"icon\":\"\\/assets\\/img\\/favicons\\/favicon-512x512.png\",\"click_action\":\"\\/my-orders\\/\",\"unique_order_id\":\"PUR0000000199\",\"order_status_id\":\"6\"}', 48, 0, '2021-08-16 14:14:40', '2021-08-16 14:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `max_count` int(11) NOT NULL DEFAULT 1,
  `min_subtotal` decimal(20,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(20,2) DEFAULT NULL,
  `subtotal_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'ALL',
  `max_count_per_user` int(11) DEFAULT NULL,
  `is_exclusive` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `description`, `code`, `discount_type`, `discount`, `expiry_date`, `is_active`, `created_at`, `updated_at`, `restaurant_id`, `count`, `max_count`, `min_subtotal`, `max_discount`, `subtotal_message`, `user_type`, `max_count_per_user`, `is_exclusive`) VALUES
(1, '16% OFF', 'Get order value Rs.149, get minimum discount Rs.140', 'WELCOMENEW', 'PERCENTAGE', '16', '2021-10-21 00:00:00', 1, '2021-01-10 15:02:53', '2021-07-31 00:16:15', NULL, 46, 1234, '149.00', '140.00', 'Minimum order should be 149', 'ONCE', 1, 1),
(2, '40% OFF', 'Get Discounts up to 200 Now Place you order for a minimum orders  Rs 199, Get a discount,Avail offer via Pure Eats app or website.', 'HAPPY2021', 'PERCENTAGE', '40', '2021-10-21 00:00:00', 1, '2021-03-29 06:12:27', '2021-03-29 06:12:27', NULL, 0, 100, '199.00', NULL, 'Minimum order should be 199', 'ONCENEW', NULL, 0),
(3, '60% OFF', 'Order above 199, discount above upto 99 applicable for maximum 2 time', 'WELCOME30', 'PERCENTAGE', '60', '2021-10-21 00:00:00', 1, '2021-03-29 18:41:17', '2021-08-17 20:55:29', NULL, 0, 100, '199.00', '99.00', 'Minimum order should be 199', 'ALL', 2, 1),
(4, 'Coupon1', '50% OFF', 'TEST50', 'AMOUNT', '50', '2021-10-21 00:00:00', 1, '2021-08-17 20:43:53', '2021-08-17 20:45:05', NULL, 0, 100, '100.00', NULL, 'Minimum order should be 100', 'ALL', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_restaurant`
--

CREATE TABLE `coupon_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_restaurant`
--

INSERT INTO `coupon_restaurant` (`id`, `coupon_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 3, 1, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 4, 1, NULL, NULL),
(10, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_areas`
--

CREATE TABLE `delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areas` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geojson` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_areas`
--

INSERT INTO `delivery_areas` (`id`, `name`, `description`, `areas`, `geojson`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Dantan Area', 'Dantan-West Medinipur', NULL, '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[87.25368194800457,21.943849757176473],[87.22861938696941,21.904356576677678],[87.27908783179363,21.840316154290736],[87.31204681616863,21.85943570632246],[87.30895691138348,21.890340234876987],[87.3323028586491,21.911364230665516],[87.29591064673504,21.933977489348205],[87.25368194800457,21.943849757176473]]]},\"properties\":{}}]}', 1, '2021-01-10 15:00:41', '2021-01-10 15:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_area_restaurant`
--

CREATE TABLE `delivery_area_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_area_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_collections`
--

CREATE TABLE `delivery_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_collections`
--

INSERT INTO `delivery_collections` (`id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 49, '8373.00', '2021-05-11 21:29:25', '2021-05-11 22:08:14'),
(2, 3, '10466.25', '2021-05-11 22:14:40', '2021-05-22 20:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_collection_logs`
--

CREATE TABLE `delivery_collection_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_collection_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_collection_logs`
--

INSERT INTO `delivery_collection_logs` (`id`, `delivery_collection_id`, `amount`, `type`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, '18839.25', 'FULL', 'Payout by arpan', '2021-05-20 18:51:31', '2021-05-20 18:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy_details`
--

CREATE TABLE `delivery_guy_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_rate` decimal(8,2) NOT NULL DEFAULT 5.00,
  `is_notifiable` tinyint(1) DEFAULT 0,
  `max_accept_delivery_limit` int(11) NOT NULL DEFAULT 100,
  `delivery_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip_commission_rate` decimal(8,2) NOT NULL DEFAULT 100.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_guy_details`
--

INSERT INTO `delivery_guy_details` (`id`, `name`, `age`, `gender`, `photo`, `description`, `vehicle_number`, `created_at`, `updated_at`, `commission_rate`, `is_notifiable`, `max_accept_delivery_limit`, `delivery_lat`, `delivery_long`, `heading`, `tip_commission_rate`) VALUES
(1, 'ARPAN Deliovery', '30', NULL, '1610294825FxuhQt7Ysu.png', 'bgchghc', 'hgghgf', '2021-01-10 16:07:05', '2021-06-03 19:14:16', '10.00', 0, 100, '28.43635', '77.11289000000001', NULL, '100.00'),
(2, 'DEMO123', '30', NULL, '161988896581q4JcrWPx.png', NULL, 'WB123456', '2021-05-01 16:35:42', '2021-05-20 21:08:13', '0.00', 0, 100, '22.23', '23.24', NULL, '100.00'),
(3, 'Mohan Babu', '40', NULL, '1620771603OK6Os9WInj.jpg', 'good guy', 'WB12345', '2021-05-11 22:20:03', '2021-05-11 22:20:56', '5.00', 0, 5, NULL, NULL, NULL, '100.00'),
(48, 'Arpan', '40', NULL, '1620771603OK6Os9WInj.jpg', 'good guy', 'WB12345', '2021-05-11 22:20:03', '2021-05-11 22:20:56', '5.00', 0, 5, NULL, NULL, NULL, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `email_otps`
--

CREATE TABLE `email_otps` (
  `id` int(11) NOT NULL,
  `otp` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_otps`
--

INSERT INTO `email_otps` (`id`, `otp`, `email`, `created_at`, `updated_at`) VALUES
(1, '53228', 'arpangroup1@gmail.com', '2021-11-19 19:22:45', '2021-11-19 19:37:09'),
(2, '61715', 'customer@gmail.com', '2021-11-19 20:46:50', '2021-11-20 14:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `gender`, `created_at`, `updated_at`) VALUES
(2, 'Billu Sau', 'billu@gmail.com', '12345', 'Kolkata1', 'MALE', '2021-02-27 12:46:27', '2021-02-27 12:46:27'),
(3, 'Billu Sau', 'billu@gmail.com', '12345', 'Kolkata1', 'MALE', '2021-02-27 12:46:39', '2021-02-27 12:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `old_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recommended` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_veg` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `restaurant_id`, `item_category_id`, `name`, `price`, `old_price`, `image`, `is_recommended`, `is_popular`, `is_new`, `created_at`, `updated_at`, `desc`, `placeholder_image`, `is_active`, `is_veg`) VALUES
(1, 1, 1, 'Fish Fry [ 1 Piece ]', '75.00', '0.00', '/assets/img/items/1630351391OpfNcpTqu4.jpg', 1, 1, 0, '2021-01-16 13:31:37', '2021-08-30 19:23:37', NULL, NULL, 1, 0),
(2, 1, 1, 'Veg noodels', '200.00', '0.00', NULL, 0, 0, 0, '2021-01-16 13:31:37', '2021-01-18 09:01:29', NULL, NULL, 1, 1),
(3, 1, 1, 'Chicken Pakora [ 6 Piece ]', '120.00', '0.00', '/assets/img/items/1630350802ykJltDmTu9.jpg', 0, 0, 0, '2021-01-16 13:31:37', '2021-08-30 19:13:22', NULL, NULL, 1, 0),
(4, 1, 1, 'Fry Chicken [ 6 Piece ]', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-16 13:31:37', '2021-01-16 13:31:37', '', NULL, 1, 0),
(5, 1, 1, 'Thai Fry Chicken [ 6 Piece ]', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-16 13:31:37', '2021-01-16 13:31:37', '', NULL, 1, 0),
(6, 2, 1, 'Fish Fry [ 1 Piece ]', '75.00', '0.00', NULL, 0, 0, 0, '2021-01-16 14:31:15', '2021-01-16 14:31:15', '', NULL, 1, 0),
(7, 2, 1, 'Fish Finger [ 6 Piece ]', '200.00', '0.00', NULL, 0, 0, 0, '2021-01-16 14:31:15', '2021-01-16 14:31:15', '', NULL, 1, 0),
(8, 2, 1, 'Chicken Pakora [ 6 Piece ]', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-16 14:31:15', '2021-01-16 14:31:15', '', NULL, 1, 0),
(9, 2, 1, 'Fry Chicken [ 6 Piece ]', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-16 14:31:15', '2021-01-16 14:31:15', '', NULL, 1, 0),
(10, 2, 1, 'Thai Fry Chicken [ 6 Piece ]', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-16 14:31:15', '2021-01-16 14:31:15', '', NULL, 1, 0),
(11, 3, 1, 'Fish Fry [ 1 Piece ]', '75.00', '0.00', '/assets/img/items/1630255493pgOKT5CVOv.jpg', 0, 0, 0, '2021-01-16 19:31:27', '2021-08-29 17:36:16', NULL, NULL, 1, 0),
(12, 3, 1, 'Fish Finger [ 6 Piece ]', '200.00', '0.00', '/assets/img/items/16302587233bwDyule3D.jpg', 0, 0, 0, '2021-01-16 19:31:27', '2021-08-29 17:38:44', NULL, NULL, 1, 0),
(13, 3, 1, 'Chicken Pakora [ 6 Piece ]', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-16 19:31:27', '2021-01-16 19:31:27', '', NULL, 1, 0),
(14, 3, 1, 'Fry Chicken [ 6 Piece ]', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-16 19:31:27', '2021-01-16 19:31:27', '', NULL, 1, 0),
(15, 3, 1, 'Thai Fry Chicken [ 6 Piece ]', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-16 19:31:27', '2021-01-16 19:31:27', '', NULL, 1, 0),
(16, 1, 2, 'CHICKEN DUM BIRYANI', '130.00', '0.00', NULL, 1, 0, 0, '2021-01-26 18:31:10', '2021-08-21 02:13:28', NULL, NULL, 1, 0),
(17, 1, 2, 'MUTTON DUM BIRYANI', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(18, 1, 2, 'SPECIAL CHICKEN BIRYANI (2PC CHICKEN, 1 EGG, 1 ALOO)', '160.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(19, 1, 2, 'SPECIAL MUTTON BIRYANI (2PC MUTTON, 1 EGG, 1 ALOO)', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(20, 1, 2, 'VEG HANDI BIRYANI (SMALL) 500 ML', '149.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(21, 1, 2, 'VEG HANDI BIRYANI (REGULAR) 750 ML', '199.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(22, 1, 2, 'VEG HANDI BIRYANI (MEDIUM) 1 LTR', '239.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(23, 1, 2, 'VEG HANDI BIRYANI (LARGE) 2.5 LTR', '449.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(24, 1, 2, 'CHICKEN HANDI BIRYANI (SMALL) 500 ML', '189.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(25, 1, 2, 'CHICKEN HANDI BIRYANI (REGULAR) 750 ML', '249.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(26, 1, 2, 'CHICKEN HANDI BIRYANI (MEDIUM) 1 LTR', '309.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(27, 1, 2, 'CHICKEN HANDI BIRYANI (LARGE) 2.5 LTR', '579.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(28, 1, 2, 'BONELESS CHICKEN HANDI BIRYANI (SMALL) 500 ML', '209.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(29, 1, 2, 'BONELESS CHICKEN HANDI BIRYANI (REGULAR) 750 ML', '269.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(30, 1, 2, 'BONELESS CHICKEN HANDI BIRYANI (MEDIUM) 1 LTR', '319.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(31, 1, 2, 'BONELESS CHICKEN HANDI BIRYANI (LARGE) 2.5 LTR', '599.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(32, 1, 2, 'MUTTON HANDI BIRYANI (SMALL) 500 ML', '239.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(33, 1, 2, 'MUTTON HANDI BIRYANI (REGULAR) 750 ML', '299.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(34, 1, 2, 'MUTTON HANDI BIRYANI (MEDIUM) 1 LTR', '359.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(35, 1, 2, 'MUTTON  HANDI BIRYANI (LARGE) 2.5 LTR', '679.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(36, 1, 2, 'PRAWN HANDI BIRYANI (SMALL) 500 ML', '249.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(37, 1, 2, 'PRAWN HANDI BIRYANI (REGULAR) 750 ML', '319.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(38, 1, 2, 'PRAWN HANDI BIRYANI (MEDIUM) 1 LTR', '379.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(39, 1, 2, 'PRAWN HANDI BIRYANI (LARGE) 2.5 LTR', '699.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(40, 1, 2, 'PANEER MAKHNI RICE MEAL ', '149.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(41, 1, 2, 'MIX VEG RICE MEAL', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(42, 1, 2, 'CHILLI PANEER RICE MEAL', '129.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(43, 1, 2, 'DAL MAKHNI RICE MEAL', '139.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(44, 1, 2, 'CHANA MASALA RICE MEAL', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(45, 1, 2, 'PALAK PANEER RICE MEAL', '149.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(46, 1, 2, 'CHICKEN MAKHNI RICE MEAL', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(47, 1, 2, 'BHUNA CHICKEN RICE MEAL', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(48, 1, 2, 'BHUNA MUUTON RICE MEAL', '160.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(49, 1, 2, 'LAAL MAAS RICE MEAL', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(50, 1, 2, 'CHILLI CHICKEN RICE MEAL', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(51, 1, 2, 'PERI PERI CHICKEN RICE MEAL', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(52, 1, 2, 'VEG HAKKA NOODLES', '80.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(53, 1, 2, 'EGG HAKKA NOODLES', '90.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(54, 1, 2, 'CHICKEN HAKKA NOODLES', '100.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(55, 1, 2, 'PRAWN HAKKA NOODLES', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(56, 1, 2, 'MIX HAKKA NOODLES', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(57, 1, 2, 'VEG SCHEWAN NOODLES', '90.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(58, 1, 2, 'EGG SCHEWAN NOODLES', '100.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(59, 1, 2, 'CHICKEN SCHEWAN NOODLES', '110.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(60, 1, 2, 'PRAWN SCHEWAN NOODLES', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(61, 1, 2, 'MIX SCHEWAN NOODLES', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(62, 1, 2, 'VEG CHILLI GARLIC NOODLES', '95.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(63, 1, 2, 'EGG CHILLI GARLIC NOODLES', '105.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(64, 1, 2, 'CHICKEN CHILLI GARLIC NOODLES', '115.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(65, 1, 2, 'PRAWN CHILLI GARLIC NOODLES', '145.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(66, 1, 2, 'MIX CHILLI GARLIC NOODLES', '155.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(67, 1, 2, 'VEG FRIED RICE', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(68, 1, 2, 'EGG FRIED RICE', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(69, 1, 2, 'CHICKEN FRIED RICE', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(70, 1, 2, 'PRAWN FRIED RICE', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(71, 1, 2, 'MIX FRIED RICE', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(72, 1, 2, 'VEG SCHEWAN FRIED RICE', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(73, 1, 2, 'EGG SCHEWAN FRIED RICE', '145.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(74, 1, 2, 'CHICKEN SCHEWAN FRIED RICE', '160.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(75, 1, 2, 'PRAWN SCHEWAN FRIED RICE', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(76, 1, 2, 'MIX SCHEWAN FRIED RICE', '199.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(77, 1, 2, 'AMRITSARI BUTTER CHICKEN', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(78, 1, 2, 'CHICKEN TIKKA BUTTER MASALA', '185.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(79, 1, 2, 'CHICKEN BHARTA', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(80, 1, 2, 'KADHAI CHICKEN', '185.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(81, 1, 2, 'RARRA CHICKEN', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(82, 1, 2, 'CHICKEN ACHARI MASALA', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(83, 1, 2, 'CHICKEN PATIALA', '185.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(84, 1, 2, 'CHICKEN CHAAP( 2 PC)', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(85, 1, 2, 'CHICKEN CURRY', '169.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(86, 1, 2, 'RARRA GOSHT', '230.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(87, 1, 2, 'BHUNA GOSHT', '220.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(88, 1, 2, 'LAAL MAAS', '240.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(89, 1, 2, 'MUTTON KOSHA', '200.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(90, 1, 2, 'MUTTON CHAAP (2PC)', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(91, 1, 2, 'CHINGRI MALAI CURRY', '269.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(92, 1, 2, 'ALOO DUM', '110.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(93, 1, 2, 'PANEER MAKHNI', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(94, 1, 2, 'KADHAI PANEER', '160.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(95, 1, 2, 'MATAR PANEER', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(96, 1, 2, 'MIX VEG', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(97, 1, 2, 'CHANA MASALA', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(98, 1, 2, 'PALAK PANEER', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(99, 1, 2, 'MURG TIKKA KEBAB (6 PC)', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(100, 1, 2, 'MURG PAHADI KEBAB (6 PC)', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(101, 1, 2, 'MURG BANJARA KEBAB (6 PC)', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(102, 1, 2, 'MURG ACHARI KEBAB (6 PC)', '200.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(103, 1, 2, 'MURG MALAI TIKKA KEBAB (6 PC)', '210.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(104, 1, 2, 'TANDOORI CHICKEN (FULL 4 PC)', '400.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(105, 1, 2, 'TANDOORI CHICKEN (HALF 2 PC)', '220.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(106, 1, 2, 'LAMB CHOPS (4 PC)', '260.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(107, 1, 2, 'TANDOORI JHINGA (6 PC)', '300.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(108, 1, 2, 'TANDOORI ALOO (6 PC)', '140.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(109, 1, 2, 'PANEER TIKKA (6 PC)', '180.00', '0.00', NULL, 0, 1, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(110, 1, 2, 'TANDOORI MIX GRILL PLATTER (2 PC EACH) {PANEER TIKKA, MURG BANJARA, MURG TIKKA, LAMB CHOPS, TANDOORI JHINGA }  ', '499.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(111, 1, 2, 'DAL MAKHNI ', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(112, 1, 2, 'LET\'S DAL TARKA (VEG)', '80.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(113, 1, 2, 'LET\'S DAL TARKA (EGG)', '90.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(114, 1, 2, 'LET\'S DAL TARKA (CHICKEN)', '100.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(115, 1, 2, 'STEAMED RICE', '75.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(116, 1, 2, 'JEERA RICE', '100.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(117, 1, 2, 'VEG PULAO', '110.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(118, 1, 2, 'MATAR PULAO', '120.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(119, 1, 2, 'NASI GORENG', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(120, 1, 2, 'TANDOORI ROTI', '12.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(121, 1, 2, 'BUTTER TANDOORI ROTI', '15.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(122, 1, 2, 'PLAIN NAAN', '20.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(123, 1, 2, 'BUTTER NAAN', '25.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(124, 1, 2, 'GARLIC NAAN', '30.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(125, 1, 2, 'CHEESE NAAN', '40.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(126, 1, 2, 'KULCHA', '35.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(127, 1, 2, 'CHILLI PANEER', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(128, 1, 2, 'CHILLI BABY CORN', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(129, 1, 2, 'CHILLI CHICKEN (8 PC)', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(130, 1, 2, 'SCHEWAN CHICKEN (8 PC)', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(131, 1, 2, 'GARLIC CHICKEN (8 PC)', '190.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(132, 1, 2, 'SWEET & SOUR CHICKEN (8 PC)', '180.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(133, 1, 2, 'PLAIN CURD', '35.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(134, 1, 2, 'RAITA', '40.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(135, 1, 2, 'SALAD', '35.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(136, 1, 2, 'SPICY ARRABBIATA RED SAUCE (VEG)', '130.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(137, 1, 2, 'SPICY ARRABBIATA RED SAUCE (CHICKEN)', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(138, 1, 2, 'CREAMY ALFREDO WHITE SAUCE (VEG)', '125.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(139, 1, 2, 'CREAMY ALFREDO WHITE SAUCE (CHICKEN)', '145.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 0),
(140, 1, 2, 'ITALIANO MIXED SAUCE (VEG)', '150.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-01-26 18:31:10', '', NULL, 1, 1),
(141, 1, 2, 'ITALIANO MIXED SAUCE (CHICKEN)', '170.00', '0.00', NULL, 0, 0, 0, '2021-01-26 18:31:10', '2021-08-21 02:12:11', NULL, NULL, 1, 0),
(142, 1, 2, 'ColdDrinks-Mintu', '60.00', '0.00', '/assets/img/items/1630350059brPY3wjpBw.jpg', 1, 0, 1, '2021-08-30 19:00:59', '2021-08-30 19:20:28', '<p>adssfs nm vjhbvasm&nbsp; asjhbashm</p>', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `is_enabled`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Demo Category', 1, '2021-01-16 14:24:18', '2021-01-16 14:24:18', 1),
(2, 'Biryani', 1, '2021-01-26 18:21:47', '2021-01-26 18:21:47', 2),
(3, 'Salad', 1, '2021-01-26 18:21:54', '2021-01-26 18:21:54', 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_sessions`
--

CREATE TABLE `login_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location`)),
  `login_at` timestamp NULL DEFAULT NULL,
  `last_checkout_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `model` varchar(100) NOT NULL,
  `sdk` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `count` int(10) NOT NULL DEFAULT 0,
  `device_info` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `user_id`, `location`, `login_at`, `last_checkout_at`, `logout_at`, `created_at`, `updated_at`, `mac_address`, `ip_address`, `manufacturer`, `model`, `sdk`, `brand`, `count`, `device_info`) VALUES
(69, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-09 11:48:47', NULL, '2021-05-09 11:47:17', '2021-05-09 11:48:47', NULL, NULL, NULL, '', '', '', 0, NULL),
(70, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-09 11:53:04', NULL, '2021-05-09 11:52:22', '2021-05-09 11:53:04', NULL, NULL, NULL, '', '', '', 0, NULL),
(71, 3, '{\"lat\":21.9726488,\"lng\":87.3725506,\"bearing\":\"\"}', NULL, '2021-05-09 11:56:01', NULL, '2021-05-09 11:56:01', '2021-05-09 11:56:01', NULL, NULL, NULL, '', '', '', 0, NULL),
(72, 3, '{\"lat\":21.972468,\"lng\":87.3725323,\"bearing\":\"\"}', NULL, '2021-05-09 11:59:52', NULL, '2021-05-09 11:58:52', '2021-05-09 11:59:52', NULL, NULL, NULL, '', '', '', 0, NULL),
(73, 3, '{\"lat\":21.9726362,\"lng\":87.3725355,\"bearing\":\"\"}', NULL, '2021-05-09 14:28:05', NULL, '2021-05-09 13:44:31', '2021-05-09 14:28:05', NULL, NULL, NULL, '', '', '', 0, NULL),
(74, 3, '{\"lat\":21.9726526,\"lng\":87.3725549,\"bearing\":\"\"}', NULL, '2021-05-09 15:08:58', NULL, '2021-05-09 14:43:37', '2021-05-09 15:08:58', NULL, NULL, NULL, '', '', '', 0, NULL),
(75, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-09 15:13:13', NULL, '2021-05-09 15:11:06', '2021-05-09 15:13:13', NULL, NULL, NULL, '', '', '', 0, NULL),
(76, 3, '{\"lat\":21.9726506,\"lng\":87.3725539,\"bearing\":\"\"}', NULL, '2021-05-09 15:17:54', NULL, '2021-05-09 15:17:50', '2021-05-09 15:17:54', NULL, NULL, NULL, '', '', '', 0, NULL),
(77, 3, '{\"lat\":21.9725429,\"lng\":87.3724749,\"bearing\":\"\"}', NULL, '2021-05-09 16:39:57', NULL, '2021-05-09 15:21:54', '2021-05-09 16:39:57', NULL, NULL, NULL, '', '', '', 0, NULL),
(78, 3, '{\"lat\":21.9724508,\"lng\":87.3725628,\"bearing\":\"\"}', NULL, '2021-05-09 17:43:02', NULL, '2021-05-09 17:31:27', '2021-05-09 17:43:02', NULL, NULL, NULL, '', '', '', 0, NULL),
(79, 3, '{\"lat\":21.9725389,\"lng\":87.372487,\"bearing\":\"\"}', NULL, '2021-05-09 17:57:55', NULL, '2021-05-09 17:51:15', '2021-05-09 17:57:55', NULL, NULL, NULL, '', '', '', 0, NULL),
(80, 3, '{\"lat\":21.972532,\"lng\":87.3725142,\"bearing\":\"\"}', NULL, '2021-05-11 04:04:57', NULL, '2021-05-11 04:00:57', '2021-05-11 04:04:57', NULL, NULL, NULL, '', '', '', 0, NULL),
(81, 3, '{\"lat\":21.9725436,\"lng\":87.3725793,\"bearing\":\"\"}', NULL, '2021-05-11 04:21:15', NULL, '2021-05-11 04:18:25', '2021-05-11 04:21:15', NULL, NULL, NULL, '', '', '', 0, NULL),
(82, 3, '{\"lat\":21.976212,\"lng\":87.3716129,\"bearing\":\"\"}', NULL, '2021-05-11 08:20:59', NULL, '2021-05-11 08:20:50', '2021-05-11 08:20:59', NULL, NULL, NULL, '', '', '', 0, NULL),
(83, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-12 06:56:09', NULL, '2021-05-12 06:56:10', '2021-05-12 06:56:10', NULL, NULL, NULL, '', '', '', 0, NULL),
(84, 3, '{\"lat\":21.9724858,\"lng\":87.3724703,\"bearing\":\"\"}', NULL, '2021-05-12 08:06:09', NULL, '2021-05-12 06:58:30', '2021-05-12 08:06:09', NULL, NULL, NULL, '', '', '', 0, NULL),
(85, 3, '{\"lat\":21.972599,\"lng\":87.3724539,\"bearing\":\"\"}', NULL, '2021-05-12 08:11:05', NULL, '2021-05-12 08:08:55', '2021-05-12 08:11:05', NULL, NULL, NULL, '', '', '', 0, NULL),
(86, 3, '{\"lat\":21.9727636,\"lng\":87.3724196,\"bearing\":\"\"}', NULL, '2021-05-12 09:23:48', NULL, '2021-05-12 08:17:40', '2021-05-12 09:23:48', NULL, NULL, NULL, '', '', '', 0, NULL),
(87, 3, '{\"lat\":21.9725821,\"lng\":87.3725498,\"bearing\":\"\"}', NULL, '2021-05-12 12:05:57', NULL, '2021-05-12 10:35:11', '2021-05-12 12:05:57', NULL, NULL, NULL, '', '', '', 0, NULL),
(88, 3, '{\"lat\":21.9725512,\"lng\":87.3725571,\"bearing\":\"\"}', NULL, '2021-05-12 12:16:50', NULL, '2021-05-12 12:11:15', '2021-05-12 12:16:50', NULL, NULL, NULL, '', '', '', 0, NULL),
(89, 3, '{\"lat\":21.9725687,\"lng\":87.3725131,\"bearing\":\"\"}', NULL, '2021-05-12 12:25:32', NULL, '2021-05-12 12:19:36', '2021-05-12 12:25:32', NULL, NULL, NULL, '', '', '', 0, NULL),
(90, 3, '{\"lat\":21.9727849,\"lng\":87.3722519,\"bearing\":\"\"}', NULL, '2021-05-12 16:56:39', NULL, '2021-05-12 14:08:20', '2021-05-12 16:56:39', NULL, NULL, NULL, '', '', '', 0, NULL),
(91, 3, '{\"lat\":21.9725479,\"lng\":87.3725239,\"bearing\":\"\"}', NULL, '2021-05-12 17:33:39', NULL, '2021-05-12 17:08:33', '2021-05-12 17:33:39', NULL, NULL, NULL, '', '', '', 0, NULL),
(92, 3, '{\"lat\":21.9724902,\"lng\":87.3725868,\"bearing\":\"\"}', NULL, '2021-05-12 17:50:35', NULL, '2021-05-12 17:36:25', '2021-05-12 17:50:35', NULL, NULL, NULL, '', '', '', 0, NULL),
(93, 3, '{\"lat\":21.972544,\"lng\":87.3725728,\"bearing\":\"\"}', NULL, '2021-05-12 17:55:36', NULL, '2021-05-12 17:52:48', '2021-05-12 17:55:36', NULL, NULL, NULL, '', '', '', 0, NULL),
(94, 3, '{\"lat\":21.9725747,\"lng\":87.37258,\"bearing\":\"\"}', NULL, '2021-05-12 18:05:28', NULL, '2021-05-12 17:57:37', '2021-05-12 18:05:28', NULL, NULL, NULL, '', '', '', 0, NULL),
(95, 3, '{\"lat\":21.9724917,\"lng\":87.3725398,\"bearing\":\"\"}', NULL, '2021-05-12 19:21:27', NULL, '2021-05-12 18:08:29', '2021-05-12 19:21:27', NULL, NULL, NULL, '', '', '', 0, NULL),
(96, 3, '{\"lat\":21.9724597,\"lng\":87.3725764,\"bearing\":\"\"}', NULL, '2021-05-12 20:30:40', NULL, '2021-05-12 19:34:40', '2021-05-12 20:30:40', NULL, NULL, NULL, '', '', '', 0, NULL),
(97, 3, '{\"lat\":21.9725114,\"lng\":87.3725648,\"bearing\":\"\"}', NULL, '2021-05-12 21:20:10', NULL, '2021-05-12 21:19:13', '2021-05-12 21:20:10', NULL, NULL, NULL, '', '', '', 0, NULL),
(98, 3, '{\"lat\":21.9726255,\"lng\":87.3725311,\"bearing\":\"\"}', NULL, '2021-05-14 04:51:08', NULL, '2021-05-14 04:41:03', '2021-05-14 04:51:08', NULL, NULL, NULL, '', '', '', 0, NULL),
(99, 3, '{\"lat\":21.9726537,\"lng\":87.3725545,\"bearing\":\"\"}', NULL, '2021-05-14 05:08:27', NULL, '2021-05-14 05:08:27', '2021-05-14 05:08:27', NULL, NULL, NULL, '', '', '', 0, NULL),
(100, 3, '{\"lat\":21.9726382,\"lng\":87.3725436,\"bearing\":\"\"}', NULL, '2021-05-14 05:21:06', NULL, '2021-05-14 05:16:12', '2021-05-14 05:21:06', NULL, NULL, NULL, '', '', '', 0, NULL),
(101, 3, '{\"lat\":21.9724671,\"lng\":87.3725368,\"bearing\":\"\"}', NULL, '2021-05-14 06:38:07', NULL, '2021-05-14 06:33:55', '2021-05-14 06:38:07', NULL, NULL, NULL, '', '', '', 0, NULL),
(102, 3, '{\"lat\":21.9725372,\"lng\":87.3725075,\"bearing\":\"\"}', NULL, '2021-05-14 17:21:11', NULL, '2021-05-14 14:48:57', '2021-05-14 17:21:11', NULL, NULL, NULL, '', '', '', 0, NULL),
(103, 3, '{\"lat\":21.9725372,\"lng\":87.3725075,\"bearing\":\"\"}', NULL, '2021-05-14 17:30:26', NULL, '2021-05-14 17:24:28', '2021-05-14 17:30:26', NULL, NULL, NULL, '', '', '', 0, NULL),
(104, 3, '{\"lat\":21.9725372,\"lng\":87.3725075,\"bearing\":\"\"}', NULL, '2021-05-14 17:49:11', NULL, '2021-05-14 17:34:13', '2021-05-14 17:49:11', NULL, NULL, NULL, '', '', '', 0, NULL),
(105, 3, '{\"lat\":21.9725372,\"lng\":87.3725075,\"bearing\":\"\"}', NULL, '2021-05-15 08:14:57', NULL, '2021-05-15 04:18:20', '2021-05-15 08:14:57', NULL, NULL, NULL, '', '', '', 0, NULL),
(106, 3, '{\"lat\":21.9725232,\"lng\":87.3725137,\"bearing\":\"\"}', NULL, '2021-05-15 15:08:58', NULL, '2021-05-15 14:53:19', '2021-05-15 15:08:58', NULL, NULL, NULL, '', '', '', 0, NULL),
(107, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-16 03:41:11', NULL, '2021-05-16 03:41:11', '2021-05-16 03:41:11', NULL, NULL, NULL, '', '', '', 0, NULL),
(108, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-16 04:18:56', NULL, '2021-05-16 04:07:24', '2021-05-16 04:18:56', NULL, NULL, NULL, '', '', '', 0, NULL),
(109, 3, '{\"lat\":21.9758545,\"lng\":87.3725435,\"bearing\":\"\"}', NULL, '2021-05-16 06:33:55', NULL, '2021-05-16 04:48:06', '2021-05-16 06:33:55', NULL, NULL, NULL, '', '', '', 0, NULL),
(110, 3, '{\"lat\":21.972434,\"lng\":87.3725121,\"bearing\":\"\"}', NULL, '2021-05-16 07:08:30', NULL, '2021-05-16 06:50:41', '2021-05-16 07:08:30', NULL, NULL, NULL, '', '', '', 0, NULL),
(111, 3, '{\"lat\":21.9751117,\"lng\":87.3722361,\"bearing\":\"\"}', NULL, '2021-05-16 08:14:42', NULL, '2021-05-16 07:34:27', '2021-05-16 08:14:42', NULL, NULL, NULL, '', '', '', 0, NULL),
(112, 3, '{\"lat\":21.977017,\"lng\":87.373039,\"bearing\":\"\"}', NULL, '2021-05-16 12:37:55', NULL, '2021-05-16 10:32:07', '2021-05-16 12:37:55', NULL, NULL, NULL, '', '', '', 0, NULL),
(113, 3, '{\"lat\":21.9724459,\"lng\":87.3726616,\"bearing\":\"\"}', NULL, '2021-05-16 14:04:53', NULL, '2021-05-16 12:56:23', '2021-05-16 14:04:53', NULL, NULL, NULL, '', '', '', 0, NULL),
(114, 3, '{\"lat\":21.972521,\"lng\":87.3724497,\"bearing\":\"\"}', NULL, '2021-05-16 15:09:36', NULL, '2021-05-16 14:22:40', '2021-05-16 15:09:36', NULL, NULL, NULL, '', '', '', 0, NULL),
(115, 3, '{\"lat\":21.9725609,\"lng\":87.372516,\"bearing\":\"\"}', NULL, '2021-05-16 15:58:51', NULL, '2021-05-16 15:29:25', '2021-05-16 15:58:51', NULL, NULL, NULL, '', '', '', 0, NULL),
(116, 3, '{\"lat\":21.972537,\"lng\":87.3725342,\"bearing\":\"\"}', NULL, '2021-05-17 15:57:06', NULL, '2021-05-17 15:24:06', '2021-05-17 15:57:06', NULL, NULL, NULL, '', '', '', 0, NULL),
(117, 3, '{\"lat\":21.9725077,\"lng\":87.3725667,\"bearing\":\"\"}', NULL, '2021-05-17 20:05:14', NULL, '2021-05-17 17:18:05', '2021-05-17 20:05:14', NULL, NULL, NULL, '', '', '', 0, NULL),
(118, 3, '{\"lat\":21.9725109,\"lng\":87.3725184,\"bearing\":\"\"}', NULL, '2021-05-17 21:18:00', NULL, '2021-05-17 20:51:30', '2021-05-17 21:18:00', NULL, NULL, NULL, '', '', '', 0, NULL),
(119, 3, '{\"lat\":21.9725577,\"lng\":87.3725264,\"bearing\":\"\"}', NULL, '2021-05-18 05:24:35', NULL, '2021-05-18 05:23:44', '2021-05-18 05:24:35', NULL, NULL, NULL, '', '', '', 0, NULL),
(120, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-18 06:48:24', NULL, '2021-05-18 06:48:24', '2021-05-18 06:48:24', NULL, NULL, NULL, '', '', '', 0, NULL),
(121, 3, '{\"lat\":\"21.9751049\",\"lng\":\"87.3722333\",\"bearing\":\"\"}', NULL, '2021-05-18 17:09:20', NULL, '2021-05-18 15:52:17', '2021-05-18 17:09:20', NULL, NULL, NULL, '', '', '', 0, NULL),
(122, 3, '{\"lat\":\"21.9725896\",\"lng\":\"87.3726341\",\"bearing\":\"\"}', NULL, '2021-05-18 18:43:11', NULL, '2021-05-18 17:37:25', '2021-05-18 18:43:11', NULL, NULL, NULL, '', '', '', 4, NULL),
(123, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-18 20:00:42', NULL, '2021-05-18 20:00:42', '2021-05-18 20:00:42', NULL, NULL, NULL, '', '', '', 5, NULL),
(124, 49, '{\"lat\":\"21.9766288\",\"lng\":\"87.3744045\",\"bearing\":\"\"}', NULL, '2021-05-20 16:08:15', NULL, '2021-05-20 15:38:46', '2021-05-20 16:08:15', NULL, NULL, NULL, '', '', '', 6, NULL),
(125, 49, '{\"lat\":\"21.9728473\",\"lng\":\"87.3726686\",\"bearing\":\"\"}', NULL, '2021-05-20 16:44:59', NULL, '2021-05-20 16:44:09', '2021-05-20 16:44:59', NULL, NULL, NULL, '', '', '', 7, NULL),
(126, 49, '{\"lat\":\"21.9726147\",\"lng\":\"87.3726987\",\"bearing\":\"\"}', NULL, '2021-05-20 16:49:17', NULL, '2021-05-20 16:49:03', '2021-05-20 16:49:17', NULL, NULL, NULL, '', '', '', 7, NULL),
(127, 49, '{\"lat\":\"21.9726829\",\"lng\":\"87.372538\",\"bearing\":\"\"}', NULL, '2021-05-20 16:52:21', NULL, '2021-05-20 16:52:06', '2021-05-20 16:52:21', NULL, NULL, NULL, '', '', '', 7, NULL),
(128, 49, '{\"lat\":\"21.9725815\",\"lng\":\"87.3725952\",\"bearing\":\"\"}', NULL, '2021-05-20 17:20:44', NULL, '2021-05-20 17:15:40', '2021-05-20 17:20:44', NULL, NULL, NULL, '', '', '', 49, NULL),
(129, 3, '{\"lat\":\"21.9788628\",\"lng\":\"87.3744045\",\"bearing\":\"\"}', NULL, '2021-05-20 19:05:33', NULL, '2021-05-20 18:54:55', '2021-05-20 19:05:33', NULL, NULL, NULL, '', '', '', 11, NULL),
(130, 3, '{\"lat\":\"21.9788628\",\"lng\":\"87.3744045\",\"bearing\":\"\"}', NULL, '2021-05-20 19:24:45', NULL, '2021-05-20 19:10:29', '2021-05-20 19:24:45', NULL, NULL, NULL, '', '', '', 107, NULL),
(131, 3, '{\"lat\":\"21.9768727\",\"lng\":\"87.3742868\",\"bearing\":\"\"}', NULL, '2021-05-20 20:01:26', NULL, '2021-05-20 19:29:34', '2021-05-20 20:01:26', NULL, NULL, NULL, '', '', '', 104, NULL),
(132, 3, '{\"lat\":\"21.9768727\",\"lng\":\"87.3742868\",\"bearing\":\"\"}', NULL, '2021-05-20 21:21:10', NULL, '2021-05-20 20:57:43', '2021-05-20 21:21:10', NULL, NULL, NULL, '', '', '', 6, NULL),
(133, 49, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-20 21:08:13', NULL, '2021-05-20 21:08:13', '2021-05-20 21:08:13', NULL, NULL, NULL, '', '', '', 5, NULL),
(134, 3, '{\"lat\":\"21.9768727\",\"lng\":\"87.3742868\",\"bearing\":\"\"}', NULL, '2021-05-20 21:39:18', NULL, '2021-05-20 21:24:15', '2021-05-20 21:39:18', NULL, NULL, NULL, '', '', '', 4, NULL),
(135, 3, '{\"lat\":\"21.9768727\",\"lng\":\"87.3742868\",\"bearing\":\"\"}', NULL, '2021-05-20 21:50:14', NULL, '2021-05-20 21:44:19', '2021-05-20 21:50:14', NULL, NULL, NULL, '', '', '', 30, NULL),
(136, 49, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-20 21:48:15', NULL, '2021-05-20 21:48:15', '2021-05-20 21:48:15', NULL, NULL, NULL, '', '', '', 5, NULL),
(137, 49, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-20 22:07:38', NULL, '2021-05-20 22:07:38', '2021-05-20 22:07:38', NULL, NULL, NULL, '', '', '', 5, NULL),
(138, 3, '{\"lat\":\"21.9768727\",\"lng\":\"87.3742868\",\"bearing\":\"\"}', NULL, '2021-05-20 22:12:12', NULL, '2021-05-20 22:10:19', '2021-05-20 22:12:12', NULL, NULL, NULL, '', '', '', 9, NULL),
(139, 49, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-20 22:11:40', NULL, '2021-05-20 22:10:49', '2021-05-20 22:11:40', NULL, NULL, NULL, '', '', '', 5, NULL),
(140, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 20:15:41', NULL, '2021-05-21 20:09:23', '2021-05-21 20:15:41', NULL, NULL, NULL, '', '', '', 77, NULL),
(141, 3, '{\"lat\":null,\"lng\":null,\"bearing\":\"\"}', NULL, '2021-05-21 20:20:52', NULL, '2021-05-21 20:20:14', '2021-05-21 20:20:52', NULL, NULL, NULL, '', '', '', 9, NULL),
(142, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 20:39:14', NULL, '2021-05-21 20:28:36', '2021-05-21 20:39:14', NULL, NULL, NULL, '', '', '', 32, NULL),
(143, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 21:31:09', NULL, '2021-05-21 21:06:38', '2021-05-21 21:31:09', NULL, NULL, NULL, '', '', '', 14, NULL),
(144, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 21:37:21', NULL, '2021-05-21 21:34:14', '2021-05-21 21:37:21', NULL, NULL, NULL, '', '', '', 39, NULL),
(145, 3, '{\"lat\":22.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-05-21 22:02:40', NULL, '2021-05-21 21:41:52', '2021-05-21 22:02:40', NULL, NULL, NULL, '', '', '', 5, NULL),
(146, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 22:58:38', NULL, '2021-05-21 22:11:55', '2021-05-21 22:58:38', NULL, NULL, NULL, '', '', '', 26, NULL),
(147, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 23:11:31', NULL, '2021-05-21 23:03:16', '2021-05-21 23:11:31', NULL, NULL, NULL, '', '', '', 33, NULL),
(148, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-21 23:47:30', NULL, '2021-05-21 23:13:51', '2021-05-21 23:47:30', NULL, NULL, NULL, '', '', '', 26, NULL),
(149, 3, '{\"lat\":\"21.9735374\",\"lng\":\"87.3725091\",\"bearing\":\"\"}', NULL, '2021-05-22 08:00:23', NULL, '2021-05-22 07:03:13', '2021-05-22 08:00:23', NULL, NULL, NULL, '', '', '', 547, NULL),
(150, 3, '{\"lat\":\"21.9735374\",\"lng\":\"87.3725091\",\"bearing\":\"\"}', NULL, '2021-05-22 08:02:43', NULL, '2021-05-22 08:02:43', '2021-05-22 08:02:43', NULL, NULL, NULL, '', '', '', 548, NULL),
(151, 3, '{\"lat\":\"21.9735374\",\"lng\":\"87.3725091\",\"bearing\":\"\"}', NULL, '2021-05-22 08:16:53', NULL, '2021-05-22 08:05:09', '2021-05-22 08:16:53', NULL, NULL, NULL, '', '', '', 597, NULL),
(152, 3, '{\"lat\":\"21.9735374\",\"lng\":\"87.3725091\",\"bearing\":\"\"}', NULL, '2021-05-22 08:18:54', NULL, '2021-05-22 08:18:54', '2021-05-22 08:18:54', NULL, NULL, NULL, '', '', '', 598, NULL),
(153, 3, '{\"lat\":null,\"lng\":null,\"bearing\":\"\"}', NULL, '2021-05-22 08:23:52', NULL, '2021-05-22 08:20:55', '2021-05-22 08:23:52', NULL, NULL, NULL, '', '', '', 4, NULL),
(154, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-22 08:29:34', NULL, '2021-05-22 08:26:49', '2021-05-22 08:29:34', NULL, NULL, NULL, '', '', '', 3, NULL),
(155, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-22 08:46:02', NULL, '2021-05-22 08:45:54', '2021-05-22 08:46:02', NULL, NULL, NULL, '', '', '', 4, NULL),
(156, 3, '{\"lat\":\"21.9751592\",\"lng\":\"87.3756452\",\"bearing\":\"\"}', NULL, '2021-05-22 09:06:10', NULL, '2021-05-22 08:48:08', '2021-05-22 09:06:10', NULL, NULL, NULL, '', '', '', 219, NULL),
(157, 3, '{\"lat\":\"21.9784954\",\"lng\":\"87.3747147\",\"bearing\":\"\"}', NULL, '2021-05-22 09:13:54', NULL, '2021-05-22 09:09:09', '2021-05-22 09:13:54', NULL, NULL, NULL, '', '', '', 5, NULL),
(158, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-22 09:55:54', NULL, '2021-05-22 09:37:54', '2021-05-22 09:55:54', NULL, NULL, NULL, '', '', '', 219, NULL),
(159, 3, '{\"lat\":\"21.9770297\",\"lng\":\"87.3729962\",\"bearing\":\"\"}', NULL, '2021-05-22 10:36:03', NULL, '2021-05-22 09:59:00', '2021-05-22 10:36:03', NULL, NULL, NULL, '', '', '', 140, NULL),
(160, 3, '{\"lat\":null,\"lng\":null,\"bearing\":\"\"}', NULL, '2021-05-22 13:30:30', NULL, '2021-05-22 13:30:24', '2021-05-22 13:30:30', NULL, NULL, NULL, '', '', '', 3, NULL),
(161, 3, '{\"lat\":\"21.9784954\",\"lng\":\"87.3747147\",\"bearing\":\"\"}', NULL, '2021-05-22 13:33:28', NULL, '2021-05-22 13:33:07', '2021-05-22 13:33:28', NULL, NULL, NULL, '', '', '', 6, NULL),
(162, 3, '{\"lat\":\"21.9728093\",\"lng\":\"87.3722077\",\"bearing\":\"\"}', NULL, '2021-05-22 14:23:07', NULL, '2021-05-22 13:40:25', '2021-05-22 14:23:07', NULL, NULL, NULL, '', '', '', 7, NULL),
(163, 3, '{\"lat\":null,\"lng\":null,\"bearing\":\"\"}', NULL, '2021-05-22 17:13:15', NULL, '2021-05-22 15:13:51', '2021-05-22 17:13:15', NULL, NULL, NULL, '', '', '', 2, NULL),
(164, 3, '{\"lat\":\"21.9779479\",\"lng\":\"87.3699701\",\"bearing\":\"\"}', NULL, '2021-05-22 20:17:49', NULL, '2021-05-22 17:15:54', '2021-05-22 20:17:49', NULL, NULL, NULL, '', '', '', 4, NULL),
(165, 3, '{\"lat\":\"21.9779479\",\"lng\":\"87.3699701\",\"bearing\":\"\"}', NULL, '2021-05-22 20:31:44', NULL, '2021-05-22 20:22:34', '2021-05-22 20:31:44', NULL, NULL, NULL, '', '', '', 42, NULL),
(167, 3, '{\"lat\":21.9779479,\"lng\":87.3699701,\"bearing\":\"\"}', NULL, '2021-05-22 23:47:50', NULL, '2021-05-22 21:55:31', '2021-05-22 23:47:50', NULL, NULL, NULL, '', '', '', 47, NULL),
(168, 3, '{\"lat\":23.23,\"lng\":23.24,\"bearing\":\"\"}', NULL, '2021-06-03 19:04:45', NULL, '2021-06-03 19:04:24', '2021-06-03 19:04:45', NULL, NULL, NULL, '', '', '', 5, NULL),
(169, 3, '{\"lat\":28.43635,\"lng\":77.11289000000001,\"bearing\":\"\"}', NULL, '2021-06-03 19:14:16', NULL, '2021-06-03 19:13:46', '2021-06-03 19:14:16', NULL, NULL, NULL, '', '', '', 5, NULL),
(170, 48, NULL, '2021-08-29 16:28:15', NULL, NULL, '2021-08-29 16:28:15', '2021-08-29 16:28:15', '08:25:25:A3:A9:0C', '192.168.0.101', 'Xiaomi', 'Redmi Note 7 Pro', '29', 'xiaomi', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_07_202152_update_transfers_table', 1),
(6, '2018_11_15_124230_create_wallets_table', 1),
(7, '2018_11_19_164609_update_transactions_table', 1),
(8, '2018_11_20_133759_add_fee_transfers_table', 1),
(9, '2018_11_22_131953_add_status_transfers_table', 1),
(10, '2018_11_22_133438_drop_refund_transfers_table', 1),
(11, '2019_01_19_062844_create_settings_table', 1),
(12, '2019_01_19_132750_create_locations_table', 1),
(13, '2019_01_21_055516_create_promo_sliders_table', 1),
(14, '2019_01_21_073753_create_restaurants_table', 1),
(15, '2019_01_22_045205_add_slug_to_restaurants_table', 1),
(16, '2019_01_26_103144_create_items_table', 1),
(17, '2019_01_26_103412_create_item_categories_table', 1),
(18, '2019_02_01_095905_add_extras_to_items_table', 1),
(19, '2019_02_01_103027_add_placeholder_image_to_restaurants_table', 1),
(20, '2019_02_02_032957_add_lat_long_to_restaurants_table', 1),
(21, '2019_02_02_033139_add_certificate_to_restaurants_table', 1),
(22, '2019_02_08_061116_add_restaurant_charges_to_restaurants_table', 1),
(23, '2019_02_08_101537_create_coupons_table', 1),
(24, '2019_02_16_042718_add_auth_token_to_users_table', 1),
(25, '2019_02_17_031843_add_phobe_number_to_users_table', 1),
(26, '2019_02_18_054807_create_pages_table', 1),
(27, '2019_02_19_084731_create_orders_table', 1),
(28, '2019_02_19_084930_create_orderstatuses_table', 1),
(29, '2019_02_19_085232_create_orderitems_table', 1),
(30, '2019_02_20_044738_create_addresses_table', 1),
(31, '2019_02_20_104553_add_default_address_id_to_users_table', 1),
(32, '2019_02_25_051228_add_payment_mode_to_orders_table', 1),
(33, '2019_02_28_053038_add_order_comment_to_orders_table', 1),
(34, '2019_05_13_111553_update_status_transfers_table', 1),
(35, '2019_05_21_074923_create_permission_tables', 1),
(36, '2019_06_25_103755_add_exchange_status_transfers_table', 1),
(37, '2019_07_09_054236_create_payment_gateways_table', 1),
(38, '2019_07_11_054103_create_user_restaurant_table', 1),
(39, '2019_07_11_135603_add_restaurant_id_to_orders_table', 1),
(40, '2019_07_13_054323_add_delivery_pin_to_users_table', 1),
(41, '2019_07_13_135125_create_gps_tables_table', 1),
(42, '2019_07_15_053733_create_accept_deliveries_table', 1),
(43, '2019_07_16_062435_add_address_pincode_landmark_to_restaurants_table', 1),
(44, '2019_07_23_030953_create_slides_table', 1),
(45, '2019_07_24_031824_add_sku_to_restaurants_table', 1),
(46, '2019_07_29_184926_decimal_places_wallets_table', 1),
(47, '2019_07_31_032042_add_is_active_to_restaurants_table', 1),
(48, '2019_08_11_172547_add_transaction_id_to_orders_table', 1),
(49, '2019_08_13_130103_add_is_accepted_to_restaurants_table', 1),
(50, '2019_08_13_140046_add_is_active_to_items_table', 1),
(51, '2019_08_14_093404_add_restaurant_id_to_coupons_table', 1),
(52, '2019_08_14_112249_add_count_to_coupons_table', 1),
(53, '2019_08_16_105252_create_push_tokens_table', 1),
(54, '2019_08_18_102353_add_is_featured_to_restaurants_table', 1),
(55, '2019_08_20_084106_add_user_id_to_itemcategories_table', 1),
(56, '2019_08_24_182445_add_location_id_to_promo_sliders_table', 1),
(57, '2019_09_15_044915_create_addons_table', 1),
(58, '2019_09_18_234250_create_addon_categories_table', 1),
(59, '2019_09_19_000319_create_addon_category_item_table', 1),
(60, '2019_09_20_054300_create_order_item_addons_table', 1),
(61, '2019_09_23_225754_create_restaurant_earnings_table', 1),
(62, '2019_09_25_005540_add_commission_rate_to_restaurants_table', 1),
(63, '2019_09_25_014138_create_restaurant_payouts_table', 1),
(64, '2019_09_25_025705_add_restaurant_payout_id_to_restaurant_earnings_table', 1),
(65, '2019_10_02_193759_add_discount_transfers_table', 1),
(66, '2019_11_06_232008_add_delivery_type_to_restaurants_table', 1),
(67, '2019_11_07_050958_add_delivery_type_to_orders_table', 1),
(68, '2019_11_08_022754_create_delivery_guy_details_table', 1),
(69, '2019_11_08_023100_add_delivery_guy_detail_id_to_users_table', 1),
(70, '2019_11_17_223225_add_nullable_constraint_to_pincode_landmark_in_restaurants_table', 1),
(71, '2019_11_20_042206_add_payable_to_orders_table', 1),
(72, '2019_11_28_052028_add_delivery_radius_to_restaurants_table', 1),
(73, '2019_12_02_015709_add_lat_lng_to_addresses_table', 1),
(74, '2019_12_05_223129_add_gps_delivery_charges_fields_to_restaurants_table', 1),
(75, '2019_12_09_000038_create_popular_geo_places_table', 1),
(76, '2019_12_13_043245_add_postion_id_and_size_to_promo_sliders_table', 1),
(77, '2019_12_15_223236_add_long_text_constrait_for_body_to_pages_table', 1),
(78, '2019_12_18_002035_create_translations_table', 1),
(79, '2019_12_18_011559_add_default_language_and_is_active_to_translations_table', 1),
(80, '2019_12_19_221313_change_desc_contraints_to_items_table', 1),
(81, '2019_12_20_061211_add_commission_rate_to_delivery_guy_details_table', 1),
(82, '2019_12_29_063818_create_modules_table', 1),
(83, '2019_12_29_233803_create_ratings_table', 1),
(84, '2019_12_30_235034_change_price_constraints_on_every_table_increase_limit', 1),
(85, '2020_01_05_223346_create_delivery_collections_table', 1),
(86, '2020_01_05_223712_create_delivery_collection_logs_table', 1),
(87, '2020_01_06_005737_create_restaurant_categories_table', 1),
(88, '2020_01_06_012659_create_restaurant_category_restaurant_table', 1),
(89, '2020_01_06_024126_create_restaurant_category_sliders_table', 1),
(90, '2020_01_12_225036_create_password_reset_otps_table', 1),
(91, '2020_01_26_055400_change_constraints_of_location_in_orders_table', 1),
(92, '2020_01_28_075230_add_short_name_and_code_to_modules_table', 1),
(93, '2020_02_03_223654_add_old_price_to_items_table', 1),
(94, '2020_02_07_003016_add_is_veg_to_items_table', 1),
(95, '2020_02_14_014122_add_heading_column_to_gps_tables', 1),
(96, '2020_03_13_234146_change_address_constraints_on_addresses_table', 1),
(97, '2020_03_31_001623_add_min_order_price_to_restaurants_table', 1),
(98, '2020_04_01_011619_create_alerts_table', 1),
(99, '2020_04_09_125640_create_sms_otps_table', 1),
(100, '2020_04_09_125652_create_sms_gateways_table', 1),
(101, '2020_04_15_120225_change_restaurant_owner_role_to_store_owner', 1),
(102, '2020_04_15_184850_change_order_id_constraints_in_accept_deliveries_table', 1),
(103, '2020_04_17_140857_add_is_sms_notifiable_to_restaurants_table', 1),
(104, '2020_04_17_141115_add_is_sms_notifiable_to_delivery_guy_details_table', 1),
(105, '2020_04_19_113902_add_auto_acceptable_to_restaurants_table', 1),
(106, '2020_04_21_132439_add_max_accept_delivery_limit_to_delivery_guy_details_table', 1),
(107, '2020_04_25_161840_add_is_active_to_addons_table', 1),
(108, '2020_05_06_123402_change_columns_datatypes_for_many_tables', 1),
(109, '2020_05_06_125302_add_schedule_data_to_restaurants_table', 1),
(110, '2020_05_06_125339_add_is_schedulable_to_restaurants_table', 1),
(111, '2020_06_10_231926_add_sort_position_to_slides_table', 1),
(112, '2020_06_11_100217_add_order_column_to_restaurant_category_sliders_table', 1),
(113, '2020_06_11_170707_add_order_column_to_restaurants_table', 1),
(114, '2020_06_20_102953_add_avatar_to_users_table', 1),
(115, '2020_06_29_120302_add_min_max_to_coupons_table', 1),
(116, '2020_07_12_104136_make_slug_unique_in_restaurants_table', 1),
(117, '2020_07_20_092301_add_is_active_to_users_table', 1),
(118, '2020_08_25_144443_add_custom_message_block_to_restaurants_table', 1),
(119, '2020_09_03_124043_add_description_to_addon_categories_table', 1),
(120, '2020_09_25_154535_add_wallet_amount_to_orders_table', 1),
(121, '2020_10_08_115632_create_coupon_restaurant_table', 1),
(122, '2020_10_08_125459_add_user_type_to_coupons_table', 1),
(123, '2020_10_08_210058_add_max_count_per_user_to_coupons_table', 1),
(124, '2020_10_27_134053_create_payment_gateway_restaurant_table', 1),
(125, '2020_10_30_190509_create_activity_log_table', 1),
(126, '2020_11_09_135056_add_lat_lng_heading_to_delivery_guy_details_table', 1),
(127, '2020_11_09_142747_drop_gps_tables', 1),
(128, '2020_11_25_101915_create_store_payout_details_table', 1),
(129, '2020_12_15_112726_add_tip_amount_to_orders_table', 1),
(130, '2020_12_15_112906_add_tip_commission_rate_to_delivery_guy_details_table', 1),
(131, '2020_12_17_140134_add_tax_amount_and_coupon_amount_to_orders_table', 1),
(132, '2020_12_17_141422_add_sub_total_to_orders_table', 1),
(133, '2020_07_31_051522_create_delivery_areas_table', 2),
(134, '2020_08_01_050551_delivery_area_restaurant', 2),
(135, '2020_11_09_203155_create_rating_delivery_guys_table', 3),
(136, '2020_11_09_212331_create_rating_stores_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 3),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(3, 'App\\User', 2),
(4, 'App\\User', 4),
(4, 'App\\User', 11),
(4, 'App\\User', 48);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_installed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_path` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `item_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Fish Finger [ 6 Piece ]', 4, '200.00', '2021-01-17 06:53:40', '2021-01-17 06:53:40'),
(2, 2, 1, 'Fish Fry [ 1 Piece ]', 8, '75.00', '2021-01-18 20:01:26', '2021-01-18 20:01:26'),
(3, 2, 2, 'Veg noodels', 3, '200.00', '2021-01-18 20:01:26', '2021-01-18 20:01:26'),
(4, 2, 4, 'Fry Chicken [ 6 Piece ]', 1, '180.00', '2021-01-18 20:01:26', '2021-01-18 20:01:26'),
(5, 3, 1, 'Fish Fry [ 1 Piece ]', 8, '75.00', '2021-01-18 20:30:47', '2021-01-18 20:30:47'),
(6, 3, 2, 'Veg noodels', 3, '200.00', '2021-01-18 20:30:47', '2021-01-18 20:30:47'),
(7, 3, 4, 'Fry Chicken [ 6 Piece ]', 1, '180.00', '2021-01-18 20:30:47', '2021-01-18 20:30:47'),
(8, 4, 2, 'Veg noodels', 1, '200.00', '2021-01-20 20:25:45', '2021-01-20 20:25:45'),
(9, 4, 3, 'Chicken Pakora [ 6 Piece ]', 1, '120.00', '2021-01-20 20:25:45', '2021-01-20 20:25:45'),
(10, 5, 11, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-20 20:59:14', '2021-01-20 20:59:14'),
(11, 5, 13, 'Chicken Pakora [ 6 Piece ]', 2, '120.00', '2021-01-20 20:59:14', '2021-01-20 20:59:14'),
(12, 6, 11, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-20 20:59:55', '2021-01-20 20:59:55'),
(13, 6, 13, 'Chicken Pakora [ 6 Piece ]', 2, '120.00', '2021-01-20 20:59:55', '2021-01-20 20:59:55'),
(14, 7, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-01-30 14:59:32', '2021-01-30 14:59:32'),
(15, 7, 2, 'Veg noodels', 1, '200.00', '2021-01-30 14:59:32', '2021-01-30 14:59:32'),
(16, 8, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 15:10:59', '2021-01-30 15:10:59'),
(17, 8, 2, 'Veg noodels', 1, '200.00', '2021-01-30 15:10:59', '2021-01-30 15:10:59'),
(18, 9, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-01-30 17:34:12', '2021-01-30 17:34:12'),
(19, 9, 2, 'Veg noodels', 2, '200.00', '2021-01-30 17:34:12', '2021-01-30 17:34:12'),
(20, 10, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 17:44:26', '2021-01-30 17:44:26'),
(21, 10, 2, 'Veg noodels', 1, '200.00', '2021-01-30 17:44:26', '2021-01-30 17:44:26'),
(22, 11, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 19:37:48', '2021-01-30 19:37:48'),
(23, 11, 2, 'Veg noodels', 1, '200.00', '2021-01-30 19:37:48', '2021-01-30 19:37:48'),
(24, 12, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 19:51:19', '2021-01-30 19:51:19'),
(25, 12, 2, 'Veg noodels', 1, '200.00', '2021-01-30 19:51:19', '2021-01-30 19:51:19'),
(26, 13, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 19:59:26', '2021-01-30 19:59:26'),
(27, 13, 2, 'Veg noodels', 1, '200.00', '2021-01-30 19:59:26', '2021-01-30 19:59:26'),
(28, 14, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-01-30 20:42:50', '2021-01-30 20:42:50'),
(29, 14, 2, 'Veg noodels', 2, '200.00', '2021-01-30 20:42:50', '2021-01-30 20:42:50'),
(30, 15, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-01-30 20:54:06', '2021-01-30 20:54:06'),
(31, 16, 1, 'Fish Fry [ 1 Piece ]', 5, '75.00', '2021-02-04 16:40:30', '2021-02-04 16:40:30'),
(32, 16, 2, 'Veg noodels', 4, '200.00', '2021-02-04 16:40:30', '2021-02-04 16:40:30'),
(33, 17, 2, 'Veg noodels', 2, '200.00', '2021-02-04 16:49:04', '2021-02-04 16:49:04'),
(34, 17, 3, 'Chicken Pakora [ 6 Piece ]', 5, '120.00', '2021-02-04 16:49:04', '2021-02-04 16:49:04'),
(35, 18, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-04 16:52:40', '2021-02-04 16:52:40'),
(36, 18, 2, 'Veg noodels', 5, '200.00', '2021-02-04 16:52:40', '2021-02-04 16:52:40'),
(37, 19, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-04 16:53:25', '2021-02-04 16:53:25'),
(38, 19, 2, 'Veg noodels', 5, '200.00', '2021-02-04 16:53:25', '2021-02-04 16:53:25'),
(39, 20, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-04 16:53:51', '2021-02-04 16:53:51'),
(40, 20, 2, 'Veg noodels', 5, '200.00', '2021-02-04 16:53:51', '2021-02-04 16:53:51'),
(41, 21, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-04 17:22:56', '2021-02-04 17:22:56'),
(42, 21, 2, 'Veg noodels', 5, '200.00', '2021-02-04 17:22:56', '2021-02-04 17:22:56'),
(43, 22, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-07 10:42:25', '2021-02-07 10:42:25'),
(44, 22, 2, 'Veg noodels', 1, '200.00', '2021-02-07 10:42:25', '2021-02-07 10:42:25'),
(45, 23, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-07 10:45:18', '2021-02-07 10:45:18'),
(46, 23, 2, 'Veg noodels', 1, '200.00', '2021-02-07 10:45:18', '2021-02-07 10:45:18'),
(47, 24, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-07 11:12:05', '2021-02-07 11:12:05'),
(48, 24, 2, 'Veg noodels', 1, '200.00', '2021-02-07 11:12:05', '2021-02-07 11:12:05'),
(49, 25, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-07 13:12:34', '2021-02-07 13:12:34'),
(50, 25, 2, 'Veg noodels', 1, '200.00', '2021-02-07 13:12:34', '2021-02-07 13:12:34'),
(51, 26, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-07 20:11:20', '2021-02-07 20:11:20'),
(52, 26, 2, 'Veg noodels', 1, '200.00', '2021-02-07 20:11:20', '2021-02-07 20:11:20'),
(53, 27, 1, 'Fish Fry [ 1 Piece ]', 9, '75.00', '2021-02-07 20:18:53', '2021-02-07 20:18:53'),
(54, 27, 2, 'Veg noodels', 2, '200.00', '2021-02-07 20:18:54', '2021-02-07 20:18:54'),
(55, 28, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 20:23:18', '2021-02-07 20:23:18'),
(56, 28, 2, 'Veg noodels', 5, '200.00', '2021-02-07 20:23:18', '2021-02-07 20:23:18'),
(57, 29, 2, 'Veg noodels', 5, '200.00', '2021-02-07 20:36:35', '2021-02-07 20:36:35'),
(58, 29, 3, 'Chicken Pakora [ 6 Piece ]', 1, '120.00', '2021-02-07 20:36:35', '2021-02-07 20:36:35'),
(59, 30, 2, 'Veg noodels', 5, '200.00', '2021-02-07 20:40:19', '2021-02-07 20:40:19'),
(60, 30, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-07 20:40:19', '2021-02-07 20:40:19'),
(61, 31, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 20:53:33', '2021-02-07 20:53:33'),
(62, 31, 2, 'Veg noodels', 5, '200.00', '2021-02-07 20:53:33', '2021-02-07 20:53:33'),
(63, 32, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:01:25', '2021-02-07 21:01:25'),
(64, 32, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:01:25', '2021-02-07 21:01:25'),
(65, 33, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:03:44', '2021-02-07 21:03:44'),
(66, 33, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:03:44', '2021-02-07 21:03:44'),
(67, 34, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:18:49', '2021-02-07 21:18:49'),
(68, 34, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:18:49', '2021-02-07 21:18:49'),
(69, 35, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:19:37', '2021-02-07 21:19:37'),
(70, 35, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:19:38', '2021-02-07 21:19:38'),
(71, 36, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:22:28', '2021-02-07 21:22:28'),
(72, 36, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:22:28', '2021-02-07 21:22:28'),
(73, 37, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:44:43', '2021-02-07 21:44:43'),
(74, 37, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:44:43', '2021-02-07 21:44:43'),
(75, 38, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 21:59:19', '2021-02-07 21:59:19'),
(76, 38, 2, 'Veg noodels', 5, '200.00', '2021-02-07 21:59:19', '2021-02-07 21:59:19'),
(77, 39, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-07 22:04:57', '2021-02-07 22:04:57'),
(78, 39, 2, 'Veg noodels', 5, '200.00', '2021-02-07 22:04:57', '2021-02-07 22:04:57'),
(79, 40, 1, 'Fish Fry [ 1 Piece ]', 2, '75.00', '2021-02-08 05:52:43', '2021-02-08 05:52:43'),
(80, 40, 2, 'Veg noodels', 1, '200.00', '2021-02-08 05:52:43', '2021-02-08 05:52:43'),
(81, 41, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 06:46:48', '2021-02-08 06:46:48'),
(82, 41, 2, 'Veg noodels', 5, '200.00', '2021-02-08 06:46:48', '2021-02-08 06:46:48'),
(83, 42, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 07:02:12', '2021-02-08 07:02:12'),
(84, 42, 2, 'Veg noodels', 5, '200.00', '2021-02-08 07:02:12', '2021-02-08 07:02:12'),
(85, 43, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 07:08:47', '2021-02-08 07:08:47'),
(86, 43, 2, 'Veg noodels', 5, '200.00', '2021-02-08 07:08:47', '2021-02-08 07:08:47'),
(87, 44, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 07:10:50', '2021-02-08 07:10:50'),
(88, 44, 2, 'Veg noodels', 5, '200.00', '2021-02-08 07:10:50', '2021-02-08 07:10:50'),
(89, 45, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 07:13:40', '2021-02-08 07:13:40'),
(90, 45, 2, 'Veg noodels', 5, '200.00', '2021-02-08 07:13:40', '2021-02-08 07:13:40'),
(91, 46, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 07:18:35', '2021-02-08 07:18:35'),
(92, 46, 2, 'Veg noodels', 5, '200.00', '2021-02-08 07:18:35', '2021-02-08 07:18:35'),
(93, 47, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 10:40:19', '2021-02-08 10:40:19'),
(94, 47, 2, 'Veg noodels', 5, '200.00', '2021-02-08 10:40:19', '2021-02-08 10:40:19'),
(95, 48, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 10:41:49', '2021-02-08 10:41:49'),
(96, 48, 2, 'Veg noodels', 5, '200.00', '2021-02-08 10:41:49', '2021-02-08 10:41:49'),
(97, 49, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 11:54:57', '2021-02-08 11:54:57'),
(98, 49, 2, 'Veg noodels', 5, '200.00', '2021-02-08 11:54:57', '2021-02-08 11:54:57'),
(99, 50, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 17:45:49', '2021-02-08 17:45:49'),
(100, 50, 2, 'Veg noodels', 5, '200.00', '2021-02-08 17:45:50', '2021-02-08 17:45:50'),
(101, 51, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-08 17:58:40', '2021-02-08 17:58:40'),
(102, 51, 2, 'Veg noodels', 5, '200.00', '2021-02-08 17:58:40', '2021-02-08 17:58:40'),
(103, 52, 2, 'Veg noodels', 6, '200.00', '2021-02-08 20:26:12', '2021-02-08 20:26:12'),
(104, 53, 2, 'Veg noodels', 5, '200.00', '2021-02-08 20:37:11', '2021-02-08 20:37:11'),
(105, 54, 2, 'Veg noodels', 5, '200.00', '2021-02-08 21:22:59', '2021-02-08 21:22:59'),
(106, 55, 2, 'Veg noodels', 5, '200.00', '2021-02-08 21:40:27', '2021-02-08 21:40:27'),
(107, 56, 2, 'Veg noodels', 5, '200.00', '2021-02-08 21:55:04', '2021-02-08 21:55:04'),
(108, 57, 2, 'Veg noodels', 5, '200.00', '2021-02-08 21:55:46', '2021-02-08 21:55:46'),
(109, 58, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:00:27', '2021-02-08 22:00:27'),
(110, 59, 4, 'Fry Chicken [ 6 Piece ]', 3, '180.00', '2021-02-08 22:08:35', '2021-02-08 22:08:35'),
(111, 59, 5, 'Thai Fry Chicken [ 6 Piece ]', 3, '190.00', '2021-02-08 22:08:35', '2021-02-08 22:08:35'),
(112, 60, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:24:50', '2021-02-08 22:24:50'),
(113, 60, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:24:50', '2021-02-08 22:24:50'),
(114, 61, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:25:24', '2021-02-08 22:25:24'),
(115, 61, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:25:24', '2021-02-08 22:25:24'),
(116, 62, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:27:02', '2021-02-08 22:27:02'),
(117, 62, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:27:02', '2021-02-08 22:27:02'),
(118, 63, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:27:59', '2021-02-08 22:27:59'),
(119, 63, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:27:59', '2021-02-08 22:27:59'),
(120, 64, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:29:51', '2021-02-08 22:29:51'),
(121, 64, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:29:51', '2021-02-08 22:29:51'),
(122, 65, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:35:00', '2021-02-08 22:35:00'),
(123, 65, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:35:00', '2021-02-08 22:35:00'),
(124, 66, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:36:24', '2021-02-08 22:36:24'),
(125, 66, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:36:24', '2021-02-08 22:36:24'),
(126, 67, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:38:02', '2021-02-08 22:38:02'),
(127, 67, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:38:02', '2021-02-08 22:38:02'),
(128, 68, 2, 'Veg noodels', 5, '200.00', '2021-02-08 22:44:44', '2021-02-08 22:44:44'),
(129, 68, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-02-08 22:44:44', '2021-02-08 22:44:44'),
(130, 69, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-13 16:27:52', '2021-02-13 16:27:52'),
(131, 69, 2, 'Veg noodels', 5, '200.00', '2021-02-13 16:27:52', '2021-02-13 16:27:52'),
(132, 70, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:28:42', '2021-02-13 18:28:42'),
(133, 71, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:35:59', '2021-02-13 18:35:59'),
(134, 72, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:36:53', '2021-02-13 18:36:53'),
(135, 73, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:37:41', '2021-02-13 18:37:41'),
(136, 74, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:38:29', '2021-02-13 18:38:29'),
(137, 75, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:40:33', '2021-02-13 18:40:33'),
(138, 76, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:41:26', '2021-02-13 18:41:26'),
(139, 77, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:49:33', '2021-02-13 18:49:33'),
(140, 78, 2, 'Veg noodels', 5, '200.00', '2021-02-13 18:57:18', '2021-02-13 18:57:18'),
(141, 79, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:00:32', '2021-02-13 19:00:32'),
(142, 80, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:01:57', '2021-02-13 19:01:57'),
(143, 81, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:04:06', '2021-02-13 19:04:06'),
(144, 82, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:04:59', '2021-02-13 19:04:59'),
(145, 83, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:06:16', '2021-02-13 19:06:16'),
(146, 84, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:14:33', '2021-02-13 19:14:33'),
(147, 85, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:15:59', '2021-02-13 19:15:59'),
(148, 86, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:16:32', '2021-02-13 19:16:32'),
(149, 87, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:16:53', '2021-02-13 19:16:53'),
(150, 88, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:18:49', '2021-02-13 19:18:49'),
(151, 89, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:23:40', '2021-02-13 19:23:40'),
(152, 90, 2, 'Veg noodels', 5, '200.00', '2021-02-13 19:24:11', '2021-02-13 19:24:11'),
(153, 91, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:50:41', '2021-02-13 20:50:41'),
(154, 92, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:51:07', '2021-02-13 20:51:07'),
(155, 93, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:51:29', '2021-02-13 20:51:29'),
(156, 94, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:51:51', '2021-02-13 20:51:51'),
(157, 95, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:52:32', '2021-02-13 20:52:32'),
(158, 96, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:53:15', '2021-02-13 20:53:15'),
(159, 97, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:54:49', '2021-02-13 20:54:49'),
(160, 98, 2, 'Veg noodels', 5, '200.00', '2021-02-13 20:55:45', '2021-02-13 20:55:45'),
(161, 99, 2, 'Veg noodels', 5, '200.00', '2021-02-13 21:00:02', '2021-02-13 21:00:02'),
(162, 100, 2, 'Veg noodels', 5, '200.00', '2021-02-13 21:04:25', '2021-02-13 21:04:25'),
(163, 101, 2, 'Veg noodels', 5, '200.00', '2021-02-13 21:59:04', '2021-02-13 21:59:04'),
(164, 102, 2, 'Veg noodels', 5, '200.00', '2021-02-13 22:08:47', '2021-02-13 22:08:47'),
(165, 103, 2, 'Veg noodels', 5, '200.00', '2021-02-14 12:01:13', '2021-02-14 12:01:13'),
(166, 104, 2, 'Veg noodels', 5, '200.00', '2021-02-14 12:05:45', '2021-02-14 12:05:45'),
(167, 105, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-14 13:07:11', '2021-02-14 13:07:11'),
(168, 105, 2, 'Veg noodels', 5, '200.00', '2021-02-14 13:07:11', '2021-02-14 13:07:11'),
(169, 106, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-14 13:10:22', '2021-02-14 13:10:22'),
(170, 106, 2, 'Veg noodels', 5, '200.00', '2021-02-14 13:10:22', '2021-02-14 13:10:22'),
(171, 107, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-14 13:11:21', '2021-02-14 13:11:21'),
(172, 107, 2, 'Veg noodels', 5, '200.00', '2021-02-14 13:11:21', '2021-02-14 13:11:21'),
(173, 108, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-14 13:11:48', '2021-02-14 13:11:48'),
(174, 108, 2, 'Veg noodels', 5, '200.00', '2021-02-14 13:11:48', '2021-02-14 13:11:48'),
(175, 109, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-02-14 13:17:40', '2021-02-14 13:17:40'),
(176, 109, 2, 'Veg noodels', 5, '200.00', '2021-02-14 13:17:40', '2021-02-14 13:17:40'),
(177, 111, 10, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-13 23:30:26', '2021-03-13 23:30:26'),
(178, 112, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:22:49', '2021-03-29 16:22:49'),
(179, 113, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:27:12', '2021-03-29 16:27:12'),
(180, 114, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:27:40', '2021-03-29 16:27:40'),
(181, 115, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:30:41', '2021-03-29 16:30:41'),
(182, 116, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:31:03', '2021-03-29 16:31:03'),
(183, 117, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 16:35:56', '2021-03-29 16:35:56'),
(184, 118, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-29 18:16:05', '2021-03-29 18:16:05'),
(185, 119, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-30 17:12:02', '2021-03-30 17:12:02'),
(186, 120, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-30 17:13:36', '2021-03-30 17:13:36'),
(187, 121, 5, 'Thai Fry Chicken [ 6 Piece ]', 1, '190.00', '2021-03-30 18:22:09', '2021-03-30 18:22:09'),
(188, 122, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-05 15:40:38', '2021-05-05 15:40:38'),
(189, 122, 2, 'Veg noodels', 1, '200.00', '2021-05-05 15:40:38', '2021-05-05 15:40:38'),
(190, 123, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-05 15:44:11', '2021-05-05 15:44:11'),
(191, 123, 2, 'Veg noodels', 1, '200.00', '2021-05-05 15:44:11', '2021-05-05 15:44:11'),
(192, 124, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-09 11:46:55', '2021-05-09 11:46:55'),
(193, 124, 2, 'Veg noodels', 1, '200.00', '2021-05-09 11:46:55', '2021-05-09 11:46:55'),
(194, 125, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-09 15:12:08', '2021-05-09 15:12:08'),
(195, 125, 2, 'Veg noodels', 1, '200.00', '2021-05-09 15:12:08', '2021-05-09 15:12:08'),
(196, 126, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 14:20:15', '2021-05-11 14:20:15'),
(197, 126, 2, 'Veg noodels', 1, '200.00', '2021-05-11 14:20:15', '2021-05-11 14:20:15'),
(198, 127, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 18:21:47', '2021-05-11 18:21:47'),
(199, 127, 2, 'Veg noodels', 1, '200.00', '2021-05-11 18:21:47', '2021-05-11 18:21:47'),
(200, 128, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 19:32:14', '2021-05-11 19:32:14'),
(201, 128, 2, 'Veg noodels', 1, '200.00', '2021-05-11 19:32:14', '2021-05-11 19:32:14'),
(202, 129, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 20:49:50', '2021-05-11 20:49:50'),
(203, 129, 2, 'Veg noodels', 1, '200.00', '2021-05-11 20:49:50', '2021-05-11 20:49:50'),
(204, 130, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 20:56:04', '2021-05-11 20:56:04'),
(205, 130, 2, 'Veg noodels', 1, '200.00', '2021-05-11 20:56:04', '2021-05-11 20:56:04'),
(206, 131, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:29:10', '2021-05-11 21:29:10'),
(207, 131, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:29:11', '2021-05-11 21:29:11'),
(208, 132, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:36:56', '2021-05-11 21:36:56'),
(209, 132, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:36:57', '2021-05-11 21:36:57'),
(210, 133, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:39:09', '2021-05-11 21:39:09'),
(211, 133, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:39:09', '2021-05-11 21:39:09'),
(212, 134, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:40:42', '2021-05-11 21:40:42'),
(213, 134, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:40:42', '2021-05-11 21:40:42'),
(214, 135, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:40:44', '2021-05-11 21:40:44'),
(215, 135, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:40:45', '2021-05-11 21:40:45'),
(216, 136, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:40:47', '2021-05-11 21:40:47'),
(217, 136, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:40:47', '2021-05-11 21:40:47'),
(218, 137, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:40:49', '2021-05-11 21:40:49'),
(219, 137, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:40:49', '2021-05-11 21:40:49'),
(220, 138, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:43:05', '2021-05-11 21:43:05'),
(221, 138, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:43:05', '2021-05-11 21:43:05'),
(222, 139, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:49:07', '2021-05-11 21:49:07'),
(223, 139, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:49:07', '2021-05-11 21:49:07'),
(224, 140, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:49:09', '2021-05-11 21:49:09'),
(225, 140, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:49:09', '2021-05-11 21:49:09'),
(226, 141, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:49:11', '2021-05-11 21:49:11'),
(227, 141, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:49:11', '2021-05-11 21:49:11'),
(228, 142, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 21:49:14', '2021-05-11 21:49:14'),
(229, 142, 2, 'Veg noodels', 1, '200.00', '2021-05-11 21:49:14', '2021-05-11 21:49:14'),
(230, 143, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-11 22:09:22', '2021-05-11 22:09:22'),
(231, 143, 2, 'Veg noodels', 1, '200.00', '2021-05-11 22:09:23', '2021-05-11 22:09:23'),
(232, 144, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-12 06:59:01', '2021-05-12 06:59:01'),
(233, 144, 2, 'Veg noodels', 1, '200.00', '2021-05-12 06:59:01', '2021-05-12 06:59:01'),
(234, 145, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-12 07:00:18', '2021-05-12 07:00:18'),
(235, 145, 2, 'Veg noodels', 1, '200.00', '2021-05-12 07:00:18', '2021-05-12 07:00:18'),
(236, 146, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-12 18:16:34', '2021-05-12 18:16:34'),
(237, 146, 2, 'Veg noodels', 1, '200.00', '2021-05-12 18:16:34', '2021-05-12 18:16:34'),
(238, 147, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-12 18:57:02', '2021-05-12 18:57:02'),
(239, 147, 2, 'Veg noodels', 1, '200.00', '2021-05-12 18:57:02', '2021-05-12 18:57:02'),
(240, 148, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-12 19:34:05', '2021-05-12 19:34:05'),
(241, 148, 2, 'Veg noodels', 1, '200.00', '2021-05-12 19:34:05', '2021-05-12 19:34:05'),
(242, 149, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-15 13:20:26', '2021-05-15 13:20:26'),
(243, 149, 2, 'Veg noodels', 1, '200.00', '2021-05-15 13:20:26', '2021-05-15 13:20:26'),
(244, 150, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-15 14:53:49', '2021-05-15 14:53:49'),
(245, 150, 2, 'Veg noodels', 1, '200.00', '2021-05-15 14:53:49', '2021-05-15 14:53:49'),
(246, 151, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-16 07:02:32', '2021-05-16 07:02:32'),
(247, 151, 2, 'Veg noodels', 1, '200.00', '2021-05-16 07:02:32', '2021-05-16 07:02:32'),
(248, 152, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-16 07:02:40', '2021-05-16 07:02:40'),
(249, 152, 2, 'Veg noodels', 1, '200.00', '2021-05-16 07:02:40', '2021-05-16 07:02:40'),
(250, 153, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-16 13:05:34', '2021-05-16 13:05:34'),
(251, 153, 2, 'Veg noodels', 1, '200.00', '2021-05-16 13:05:34', '2021-05-16 13:05:34'),
(252, 154, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 17:53:13', '2021-05-17 17:53:13'),
(253, 154, 2, 'Veg noodels', 1, '200.00', '2021-05-17 17:53:13', '2021-05-17 17:53:13'),
(254, 155, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 19:47:46', '2021-05-17 19:47:46'),
(255, 155, 2, 'Veg noodels', 1, '200.00', '2021-05-17 19:47:46', '2021-05-17 19:47:46'),
(256, 156, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 19:51:13', '2021-05-17 19:51:13'),
(257, 156, 2, 'Veg noodels', 1, '200.00', '2021-05-17 19:51:13', '2021-05-17 19:51:13'),
(258, 157, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 20:51:41', '2021-05-17 20:51:41'),
(259, 157, 2, 'Veg noodels', 1, '200.00', '2021-05-17 20:51:41', '2021-05-17 20:51:41'),
(260, 158, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 21:08:01', '2021-05-17 21:08:01'),
(261, 158, 2, 'Veg noodels', 1, '200.00', '2021-05-17 21:08:01', '2021-05-17 21:08:01'),
(262, 159, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 21:11:17', '2021-05-17 21:11:17'),
(263, 159, 2, 'Veg noodels', 1, '200.00', '2021-05-17 21:11:17', '2021-05-17 21:11:17'),
(264, 160, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-17 21:12:49', '2021-05-17 21:12:49'),
(265, 160, 2, 'Veg noodels', 1, '200.00', '2021-05-17 21:12:49', '2021-05-17 21:12:49'),
(266, 161, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 14:20:53', '2021-05-18 14:20:53'),
(267, 161, 2, 'Veg noodels', 1, '200.00', '2021-05-18 14:20:53', '2021-05-18 14:20:53'),
(268, 162, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:26:20', '2021-05-18 15:26:20'),
(269, 162, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:26:21', '2021-05-18 15:26:21'),
(270, 163, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:28:29', '2021-05-18 15:28:29'),
(271, 163, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:28:29', '2021-05-18 15:28:29'),
(272, 164, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:33:31', '2021-05-18 15:33:31'),
(273, 164, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:33:31', '2021-05-18 15:33:31'),
(274, 165, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:37:37', '2021-05-18 15:37:37'),
(275, 165, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:37:38', '2021-05-18 15:37:38'),
(276, 166, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:39:13', '2021-05-18 15:39:13'),
(277, 166, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:39:13', '2021-05-18 15:39:13'),
(278, 167, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 15:42:21', '2021-05-18 15:42:21'),
(279, 167, 2, 'Veg noodels', 1, '200.00', '2021-05-18 15:42:21', '2021-05-18 15:42:21'),
(280, 168, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 17:37:10', '2021-05-18 17:37:10'),
(281, 168, 2, 'Veg noodels', 1, '200.00', '2021-05-18 17:37:11', '2021-05-18 17:37:11'),
(282, 169, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 18:07:18', '2021-05-18 18:07:18'),
(283, 169, 2, 'Veg noodels', 1, '200.00', '2021-05-18 18:07:19', '2021-05-18 18:07:19'),
(284, 170, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 18:13:37', '2021-05-18 18:13:37'),
(285, 170, 2, 'Veg noodels', 1, '200.00', '2021-05-18 18:13:37', '2021-05-18 18:13:37'),
(286, 171, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 18:16:42', '2021-05-18 18:16:42'),
(287, 171, 2, 'Veg noodels', 1, '200.00', '2021-05-18 18:16:42', '2021-05-18 18:16:42'),
(288, 172, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-18 18:41:47', '2021-05-18 18:41:47'),
(289, 172, 2, 'Veg noodels', 1, '200.00', '2021-05-18 18:41:47', '2021-05-18 18:41:47'),
(290, 173, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-20 19:01:11', '2021-05-20 19:01:11'),
(291, 173, 2, 'Veg noodels', 1, '200.00', '2021-05-20 19:01:11', '2021-05-20 19:01:11'),
(292, 174, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-20 19:09:26', '2021-05-20 19:09:26'),
(293, 174, 2, 'Veg noodels', 1, '200.00', '2021-05-20 19:09:26', '2021-05-20 19:09:26'),
(294, 175, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-20 22:11:01', '2021-05-20 22:11:01'),
(295, 175, 2, 'Veg noodels', 1, '200.00', '2021-05-20 22:11:01', '2021-05-20 22:11:01'),
(296, 176, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-20 22:11:36', '2021-05-20 22:11:36'),
(297, 176, 2, 'Veg noodels', 1, '200.00', '2021-05-20 22:11:36', '2021-05-20 22:11:36'),
(298, 177, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 17:17:35', '2021-05-22 17:17:35'),
(299, 177, 2, 'Veg noodels', 1, '200.00', '2021-05-22 17:17:35', '2021-05-22 17:17:35'),
(300, 178, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 17:24:00', '2021-05-22 17:24:00'),
(301, 178, 2, 'Veg noodels', 1, '200.00', '2021-05-22 17:24:00', '2021-05-22 17:24:00'),
(302, 179, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 17:48:51', '2021-05-22 17:48:51'),
(303, 179, 2, 'Veg noodels', 1, '200.00', '2021-05-22 17:48:51', '2021-05-22 17:48:51'),
(304, 180, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 18:03:11', '2021-05-22 18:03:11'),
(305, 180, 2, 'Veg noodels', 1, '200.00', '2021-05-22 18:03:11', '2021-05-22 18:03:11'),
(306, 181, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 18:12:43', '2021-05-22 18:12:43'),
(307, 181, 2, 'Veg noodels', 1, '200.00', '2021-05-22 18:12:43', '2021-05-22 18:12:43'),
(308, 182, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 19:32:03', '2021-05-22 19:32:03'),
(309, 182, 2, 'Veg noodels', 1, '200.00', '2021-05-22 19:32:03', '2021-05-22 19:32:03'),
(310, 183, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 19:36:49', '2021-05-22 19:36:49'),
(311, 183, 2, 'Veg noodels', 1, '200.00', '2021-05-22 19:36:49', '2021-05-22 19:36:49'),
(312, 184, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 19:38:40', '2021-05-22 19:38:40'),
(313, 184, 2, 'Veg noodels', 1, '200.00', '2021-05-22 19:38:40', '2021-05-22 19:38:40'),
(314, 185, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 19:44:16', '2021-05-22 19:44:16'),
(315, 185, 2, 'Veg noodels', 1, '200.00', '2021-05-22 19:44:16', '2021-05-22 19:44:16'),
(316, 186, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 20:14:28', '2021-05-22 20:14:28'),
(317, 186, 2, 'Veg noodels', 1, '200.00', '2021-05-22 20:14:28', '2021-05-22 20:14:28'),
(318, 187, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 20:14:34', '2021-05-22 20:14:34'),
(319, 187, 2, 'Veg noodels', 1, '200.00', '2021-05-22 20:14:34', '2021-05-22 20:14:34'),
(320, 188, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 20:14:39', '2021-05-22 20:14:39'),
(321, 188, 2, 'Veg noodels', 1, '200.00', '2021-05-22 20:14:39', '2021-05-22 20:14:39'),
(322, 189, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 22:01:17', '2021-05-22 22:01:17'),
(323, 189, 2, 'Veg noodels', 1, '200.00', '2021-05-22 22:01:18', '2021-05-22 22:01:18'),
(324, 190, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 22:01:23', '2021-05-22 22:01:23'),
(325, 190, 2, 'Veg noodels', 1, '200.00', '2021-05-22 22:01:23', '2021-05-22 22:01:23'),
(326, 191, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 22:01:30', '2021-05-22 22:01:30'),
(327, 191, 2, 'Veg noodels', 1, '200.00', '2021-05-22 22:01:30', '2021-05-22 22:01:30'),
(328, 192, 1, 'Fish Fry [ 1 Piece ]', 1, '75.00', '2021-05-22 22:01:33', '2021-05-22 22:01:33'),
(329, 192, 2, 'Veg noodels', 1, '200.00', '2021-05-22 22:01:33', '2021-05-22 22:01:33'),
(330, 193, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-03 14:26:02', '2021-06-03 14:26:02'),
(331, 194, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-05 13:00:55', '2021-06-05 13:00:55'),
(332, 195, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-05 13:47:00', '2021-06-05 13:47:00'),
(333, 196, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-05 14:01:17', '2021-06-05 14:01:17'),
(334, 197, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-05 14:51:30', '2021-06-05 14:51:30'),
(335, 198, 16, 'CHICKEN DUM BIRYANI', 2, '120.00', '2021-06-05 15:42:28', '2021-06-05 15:42:28'),
(336, 199, 1, 'Fish Fry [ 1 Piece ]', 3, '75.00', '2021-08-16 14:13:21', '2021-08-16 14:13:21'),
(337, 200, 16, 'CHICKEN DUM BIRYANI', 5, '120.00', '2021-08-16 14:22:55', '2021-08-16 14:22:55'),
(338, 201, 16, 'CHICKEN DUM BIRYANI', 5, '120.00', '2021-08-16 14:23:01', '2021-08-16 14:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderstatus_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` decimal(20,2) DEFAULT NULL,
  `restaurant_charge` decimal(20,2) DEFAULT NULL,
  `delivery_charge` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` int(11) NOT NULL DEFAULT 1,
  `partial_wallet` tinyint(4) DEFAULT 0,
  `partial_wallet_amount` decimal(20,2) DEFAULT NULL,
  `payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` decimal(8,2) DEFAULT NULL,
  `tip_amount` decimal(8,2) DEFAULT NULL,
  `tax_amount` decimal(8,2) DEFAULT NULL,
  `coupon_amount` decimal(8,2) DEFAULT NULL,
  `sub_total` decimal(8,2) DEFAULT NULL,
  `delivery_pin` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prepare_time` int(11) NOT NULL DEFAULT 0,
  `cancel_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cancel_reason`)),
  `restaurant_accept_at` timestamp NULL DEFAULT NULL,
  `restaurant_ready_at` timestamp NULL DEFAULT NULL,
  `rider_accept_at` timestamp NULL DEFAULT NULL,
  `rider_reassigned_at` timestamp NULL DEFAULT NULL,
  `rider_reached_pickup_location_at` timestamp NULL DEFAULT NULL,
  `rider_picked_at` timestamp NULL DEFAULT NULL,
  `rider_reached_drop_location_at` timestamp NULL DEFAULT NULL,
  `rider_deliver_at` timestamp NULL DEFAULT NULL,
  `rzp_order_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_order_reached_message_send` int(1) NOT NULL DEFAULT 0,
  `screenshot` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_photos` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `unique_order_id`, `orderstatus_id`, `user_id`, `coupon_name`, `location`, `address`, `tax`, `restaurant_charge`, `delivery_charge`, `total`, `created_at`, `updated_at`, `payment_mode`, `order_comment`, `restaurant_id`, `transaction_id`, `delivery_type`, `partial_wallet`, `partial_wallet_amount`, `payable`, `wallet_amount`, `tip_amount`, `tax_amount`, `coupon_amount`, `sub_total`, `delivery_pin`, `prepare_time`, `cancel_reason`, `restaurant_accept_at`, `restaurant_ready_at`, `rider_accept_at`, `rider_reassigned_at`, `rider_reached_pickup_location_at`, `rider_picked_at`, `rider_reached_drop_location_at`, `rider_deliver_at`, `rzp_order_id`, `is_order_reached_message_send`, `screenshot`, `bill_photos`) VALUES
(122, 'PUR0000000001', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-05 15:40:38', '2021-05-08 09:02:42', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(123, 'PUR0000000123', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-05 15:44:10', '2021-05-08 18:29:54', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(124, 'PUR0000000124', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-09 11:46:55', '2021-05-11 05:24:51', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(125, 'PUR0000000125', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-09 15:12:08', '2021-05-09 15:12:08', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(126, 'PUR0000000126', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 14:20:15', '2021-05-11 17:10:01', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, '2021-05-11 17:10:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(127, 'PUR0000000127', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 18:21:46', '2021-05-11 19:24:21', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '98450', 20, NULL, '2021-05-11 19:10:31', '2021-05-11 19:13:24', '2021-05-11 19:24:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(128, 'PUR0000000128', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 19:32:13', '2021-05-11 20:26:33', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '84151', 20, NULL, '2021-05-11 19:32:27', '2021-05-11 19:32:36', '2021-05-11 19:33:00', NULL, '2021-05-11 20:26:33', NULL, NULL, NULL, NULL, 0, '', NULL),
(129, 'PUR0000000129', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 20:49:50', '2021-05-11 20:51:20', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '27721', 20, NULL, '2021-05-11 20:50:06', '2021-05-11 20:51:20', '2021-05-11 20:50:26', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(130, 'PUR0000000130', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 20:56:04', '2021-05-11 21:33:03', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '94126', 20, NULL, '2021-05-11 20:56:21', '2021-05-11 21:00:34', '2021-05-11 20:56:37', NULL, '2021-05-11 21:01:26', '2021-05-11 21:03:28', '2021-05-11 21:04:11', NULL, NULL, 0, '', NULL),
(131, 'PUR0000000131', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:29:10', '2021-05-11 21:37:09', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '54629', 20, NULL, '2021-05-11 21:33:30', '2021-05-11 21:34:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(132, 'PUR0000000132', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:36:56', '2021-05-11 21:38:58', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '97122', 20, NULL, '2021-05-11 21:37:28', '2021-05-11 21:37:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(133, 'PUR0000000133', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:39:09', '2021-05-11 21:40:22', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '69444', 20, NULL, '2021-05-11 21:39:26', '2021-05-11 21:39:32', '2021-05-11 21:39:40', NULL, '2021-05-11 21:39:47', '2021-05-11 21:40:07', '2021-05-11 21:40:22', NULL, NULL, 0, '', NULL),
(134, 'PUR0000000134', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:40:42', '2021-05-11 21:42:52', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '68595', 20, NULL, '2021-05-11 21:42:40', NULL, '2021-05-11 21:42:48', NULL, '2021-05-11 21:42:52', NULL, NULL, NULL, NULL, 0, '', NULL),
(135, 'PUR0000000135', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:40:44', '2021-05-11 21:42:19', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '24164', 20, NULL, '2021-05-11 21:42:03', '2021-05-11 21:42:19', '2021-05-11 21:42:10', NULL, '2021-05-11 21:42:14', NULL, NULL, NULL, NULL, 0, '', NULL),
(136, 'PUR0000000136', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:40:47', '2021-05-11 21:41:47', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '50433', 20, NULL, '2021-05-11 21:41:33', '2021-05-11 21:41:47', '2021-05-11 21:41:42', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(137, 'PUR0000000137', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:40:49', '2021-05-11 21:41:20', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '10810', 20, NULL, '2021-05-11 21:41:03', '2021-05-11 21:41:12', '2021-05-11 21:41:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(138, 'PUR0000000138', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:43:04', '2021-05-11 21:43:59', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '36231', 20, NULL, '2021-05-11 21:43:19', '2021-05-11 21:43:26', '2021-05-11 21:43:36', NULL, '2021-05-11 21:43:41', '2021-05-11 21:43:45', '2021-05-11 21:43:59', NULL, NULL, 0, '', NULL),
(139, 'PUR0000000139', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:49:07', '2021-05-11 22:09:12', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '49848', 20, NULL, '2021-05-11 21:49:29', '2021-05-11 21:49:47', '2021-05-11 21:49:38', NULL, '2021-05-11 21:49:42', NULL, NULL, NULL, NULL, 0, '', NULL),
(140, 'PUR0000000140', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:49:09', '2021-05-11 22:08:37', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '67835', 20, NULL, '2021-05-11 21:50:41', '2021-05-11 22:00:32', '2021-05-11 21:50:52', NULL, '2021-05-11 21:59:07', NULL, NULL, NULL, NULL, 0, '', NULL),
(141, 'PUR0000000141', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:49:11', '2021-05-11 22:11:29', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '59422', 20, NULL, '2021-05-11 21:58:05', '2021-05-11 21:58:23', '2021-05-11 21:58:18', NULL, '2021-05-11 21:58:29', '2021-05-11 21:58:35', '2021-05-11 22:11:29', NULL, NULL, 0, '', NULL),
(142, 'PUR0000000142', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 21:49:14', '2021-05-11 22:08:12', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '20620', 20, NULL, '2021-05-11 21:59:21', '2021-05-11 21:59:28', '2021-05-11 21:59:51', NULL, '2021-05-11 21:59:57', '2021-05-11 22:00:15', '2021-05-11 22:08:07', NULL, NULL, 0, '', NULL),
(143, 'PUR0000000143', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-11 22:09:22', '2021-05-11 22:16:59', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '44932', 20, NULL, '2021-05-11 22:09:54', '2021-05-11 22:10:11', '2021-05-11 22:10:20', NULL, '2021-05-11 22:10:26', '2021-05-11 22:10:39', '2021-05-11 22:10:45', '2021-05-11 22:16:59', NULL, 0, '', NULL),
(144, 'PUR0000000144', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-12 06:59:01', '2021-05-12 06:59:01', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(145, 'PUR0000000145', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-12 07:00:18', '2021-05-12 18:14:00', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '13029', 20, NULL, '2021-05-12 12:10:00', NULL, NULL, NULL, '2021-05-12 08:53:22', NULL, '2021-05-12 14:18:35', NULL, NULL, 1, '', NULL),
(146, 'PUR0000000146', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-12 18:16:34', '2021-05-12 18:26:03', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '13603', 20, NULL, '2021-05-12 18:17:15', '2021-05-12 18:23:06', NULL, NULL, '2021-05-12 18:20:53', NULL, '2021-05-12 18:24:26', NULL, NULL, 1, '', NULL),
(147, 'PUR0000000147', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-12 18:57:02', '2021-05-12 19:09:49', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '14500', 20, NULL, '2021-05-12 18:57:38', '2021-05-12 19:00:38', NULL, NULL, '2021-05-12 19:00:13', NULL, '2021-05-12 19:02:59', NULL, NULL, 0, '', NULL),
(148, 'PUR0000000148', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-12 19:34:05', '2021-05-17 18:28:50', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '24097', 20, NULL, '2021-05-12 19:35:04', '2021-05-12 19:56:05', '2021-05-12 19:36:00', NULL, '2021-05-12 19:54:53', '2021-05-17 18:25:00', '2021-05-17 18:25:46', NULL, NULL, 0, '', '[\"PUR0000000148_1621275900_IMz9kJzVkK.jpg\",\"PUR0000000148_1621275900_HEyfKnqPDz.jpg\",\"PUR0000000148_1621275900_2DWrFXcZKV.jpg\"]'),
(149, 'PUR0000000149', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-15 13:20:26', '2021-05-15 13:20:26', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(150, 'PUR0000000150', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-15 14:53:49', '2021-05-15 14:58:27', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '55726', 20, NULL, '2021-05-15 14:54:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(151, 'PUR0000000151', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-16 07:02:32', '2021-05-16 07:03:06', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '84738', 20, NULL, '2021-05-16 07:03:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(152, 'PUR0000000152', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-16 07:02:40', '2021-05-16 07:03:29', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '80757', 20, NULL, '2021-05-16 07:03:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(153, 'PUR0000000153', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-16 13:05:33', '2021-05-16 13:05:33', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(154, 'PUR0000000154', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 17:53:13', '2021-05-17 18:44:34', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '79182', 0, NULL, '2021-05-17 17:53:31', '2021-05-17 18:14:40', '2021-05-17 17:53:43', NULL, '2021-05-17 18:12:44', '2021-05-17 18:18:53', '2021-05-17 18:19:41', '2021-05-17 18:19:41', NULL, 0, '', '[\"PUR0000000154_1621275533_i7dTMsswkW.jpg\",\"PUR0000000154_1621275533_FXOPBEV0RB.jpg\",\"PUR0000000154_1621275533_GZ3HY5w7Re.jpg\"]'),
(155, 'PUR0000000155', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 19:47:46', '2021-05-17 19:48:54', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '64158', 0, NULL, '2021-05-17 19:48:13', NULL, '2021-05-17 19:48:54', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(156, 'PUR0000000156', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 19:51:13', '2021-05-17 19:51:35', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '87343', 0, NULL, '2021-05-17 19:51:25', NULL, '2021-05-17 19:51:35', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(157, 'PUR0000000157', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 20:51:41', '2021-05-17 21:02:57', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '22860', 0, NULL, '2021-05-17 21:02:28', NULL, '2021-05-17 21:02:57', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(158, 'PUR0000000158', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 21:08:01', '2021-05-17 21:08:34', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '28025', 0, NULL, '2021-05-17 21:08:16', NULL, '2021-05-17 21:08:34', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(159, 'PUR0000000159', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 21:11:17', '2021-05-17 21:13:53', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '20698', 0, NULL, '2021-05-17 21:12:34', NULL, '2021-05-17 21:13:53', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(160, 'PUR0000000160', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-17 21:12:48', '2021-05-17 21:17:17', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '89380', 0, NULL, '2021-05-17 21:16:21', NULL, '2021-05-17 21:17:17', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(161, 'PUR0000000161', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 14:20:53', '2021-05-18 15:09:26', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '12998', 0, NULL, '2021-05-18 15:08:24', NULL, '2021-05-18 15:09:26', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(162, 'PUR0000000162', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:26:20', '2021-05-18 15:27:19', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '32351', 0, NULL, '2021-05-18 15:26:53', NULL, '2021-05-18 15:27:19', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(163, 'PUR0000000163', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:28:29', '2021-05-18 15:29:07', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '26756', 0, NULL, '2021-05-18 15:28:43', NULL, '2021-05-18 15:29:07', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(164, 'PUR0000000164', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:33:30', '2021-05-18 15:34:36', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '35240', 0, NULL, '2021-05-18 15:34:25', NULL, '2021-05-18 15:34:36', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(165, 'PUR0000000165', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:37:37', '2021-05-18 15:38:05', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '80794', 0, NULL, '2021-05-18 15:37:47', NULL, '2021-05-18 15:38:05', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(166, 'PUR0000000166', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:39:13', '2021-05-18 15:39:46', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '87335', 0, NULL, '2021-05-18 15:39:33', NULL, '2021-05-18 15:39:46', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(167, 'PUR0000000167', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 15:42:21', '2021-05-18 15:43:21', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '98332', 0, NULL, '2021-05-18 15:42:39', NULL, '2021-05-18 15:42:55', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(168, 'PUR0000000168', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 17:37:10', '2021-05-18 17:37:10', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(169, 'PUR0000000169', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 18:07:18', '2021-05-20 19:05:27', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '76249', 0, NULL, '2021-05-18 18:07:33', NULL, '2021-05-20 19:05:27', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(170, 'PUR0000000170', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 18:13:37', '2021-05-18 18:17:07', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '91234', 0, NULL, '2021-05-18 18:17:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(171, 'PUR0000000171', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 18:16:42', '2021-05-18 18:42:21', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '57773', 0, NULL, '2021-05-18 18:42:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(172, 'PUR0000000172', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-18 18:41:46', '2021-05-18 18:41:46', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(173, 'PUR0000000173', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-20 19:01:11', '2021-05-20 19:03:10', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '98810', 0, NULL, '2021-05-20 19:03:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(174, 'PUR0000000174', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-20 19:09:26', '2021-05-20 19:23:30', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '14662', 0, NULL, '2021-05-20 19:09:43', '2021-05-20 19:16:57', '2021-05-20 19:11:07', NULL, '2021-05-20 19:14:29', '2021-05-20 19:17:12', '2021-05-20 19:17:56', '2021-05-20 19:23:30', NULL, 0, '', '[\"PUR0000000174_1621538232_VE4ytDHh6k.jpg\"]'),
(175, 'PUR0000000175', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-20 22:11:01', '2021-05-22 17:07:54', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '36333', 0, NULL, '2021-05-20 22:11:14', '2021-05-22 16:50:50', '2021-05-21 20:31:04', '2021-05-21 23:09:30', '2021-05-22 13:41:49', '2021-05-22 16:51:06', '2021-05-22 17:07:19', '2021-05-22 17:07:54', NULL, 0, '', '[\"PUR0000000175_1621702266_5i0T2Chh8k.jpg\"]'),
(176, 'PUR0000000176', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-20 22:11:36', '2021-05-20 22:11:36', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(177, 'PUR0000000177', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 17:17:35', '2021-05-22 17:23:05', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '92339', 0, NULL, '2021-05-22 17:18:01', NULL, '2021-05-22 17:18:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(178, 'PUR0000000178', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 17:24:00', '2021-05-22 17:25:08', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '36373', 0, NULL, '2021-05-22 17:24:48', NULL, '2021-05-22 17:25:08', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(179, 'PUR0000000179', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 17:48:51', '2021-05-22 18:01:23', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '88662', 0, NULL, '2021-05-22 17:49:27', '2021-05-22 18:00:33', '2021-05-22 17:49:46', NULL, '2021-05-22 17:50:46', '2021-05-22 18:01:23', NULL, NULL, NULL, 0, '', '[\"PUR0000000179_1621706483_PP9xRTkXXj.jpg\"]'),
(180, 'PUR0000000180', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 18:03:11', '2021-05-22 19:30:53', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '34288', 0, NULL, '2021-05-22 18:03:33', '2021-05-22 18:04:35', '2021-05-22 18:03:53', NULL, '2021-05-22 18:04:10', '2021-05-22 18:05:24', '2021-05-22 18:05:51', NULL, NULL, 0, '', '[\"PUR0000000180_1621706724_LpaSIO8tFq.jpg\"]'),
(181, 'PUR0000000181', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 18:12:43', '2021-05-22 18:17:33', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '78379', 0, NULL, '2021-05-22 18:13:20', '2021-05-22 18:15:50', '2021-05-22 18:13:59', NULL, '2021-05-22 18:15:30', '2021-05-22 18:16:28', '2021-05-22 18:16:55', '2021-05-22 18:17:33', NULL, 0, '', '[\"PUR0000000181_1621707388_bLwlndes08.jpg\"]'),
(182, 'PUR0000000182', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 19:32:03', '2021-05-22 19:36:08', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '69043', 0, NULL, '2021-05-22 19:35:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(183, 'PUR0000000183', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 19:36:49', '2021-05-22 19:38:08', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '11853', 0, NULL, '2021-05-22 19:37:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(184, 'PUR0000000184', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 19:38:40', '2021-05-22 20:09:34', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '75612', 0, NULL, '2021-05-22 19:39:07', '2021-05-22 19:45:48', '2021-05-22 19:39:32', '2021-05-22 19:54:00', '2021-05-22 19:49:23', '2021-05-22 19:57:18', '2021-05-22 19:58:32', '2021-05-22 20:09:34', NULL, 0, '', '[\"PUR0000000184_1621713438_pZHn8g2nT8.jpg\"]'),
(185, 'PUR0000000185', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 19:44:16', '2021-05-22 22:03:13', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '36473', 0, NULL, '2021-05-22 22:02:27', NULL, '2021-05-22 22:03:13', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(186, 'PUR0000000186', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 20:14:28', '2021-05-22 20:25:25', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '77254', 0, NULL, '2021-05-22 20:21:55', NULL, '2021-05-22 20:23:22', NULL, '2021-05-22 20:25:25', NULL, NULL, NULL, NULL, 0, '', NULL),
(187, 'PUR0000000187', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 20:14:34', '2021-05-22 20:23:48', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '63192', 0, NULL, '2021-05-22 20:21:32', NULL, '2021-05-22 20:23:48', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(188, 'PUR0000000188', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 20:14:39', '2021-05-22 20:24:11', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '44065', 0, NULL, '2021-05-22 20:20:55', NULL, '2021-05-22 20:24:11', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(189, 'PUR0000000189', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 22:01:17', '2021-05-22 22:48:53', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '22308', 0, NULL, '2021-05-22 22:15:14', NULL, '2021-05-22 22:16:18', '2021-05-22 22:48:53', NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(190, 'PUR0000000190', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 22:01:23', '2021-05-22 22:01:23', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(191, 'PUR0000000191', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 22:01:30', '2021-05-22 22:01:30', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(192, 'PUR0000000192', 6, 48, NULL, '{\"latitude\":21.9726519,\"longitude\":87.3725474}', 'Nandakurya, West Bengal 721451, India', '5.00', '27.50', '1777.00', '2093.25', '2021-05-22 22:01:33', '2021-05-23 13:34:12', 'COD', NULL, 1, NULL, 1, 0, NULL, '2093.25', NULL, NULL, '13.75', NULL, '275.00', '15650', 0, NULL, '2021-05-23 13:34:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(193, 'PUR0000000193', 6, 48, NULL, '{\"latitude\":21.9779479,\"longitude\":87.3699701}', 'Nandakurya, West Bengal 721451, India', '5.00', '24.00', '1770.00', '2046.00', '2021-06-02 19:38:00', '2021-06-03 15:18:45', 'COD', NULL, 1, NULL, 1, 0, NULL, '2046.00', NULL, NULL, '12.00', NULL, '240.00', '98921', 0, NULL, '2021-06-03 14:53:19', NULL, '2021-06-03 15:18:45', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(194, 'PUR0000000194', 6, 48, NULL, '{\"latitude\":22.6328583,\"longitude\":88.3562991}', 'Ramakrishna Math Office.', '5.00', '24.00', '71.00', '347.00', '2021-06-05 13:00:55', '2021-06-05 13:00:55', 'COD', NULL, 1, NULL, 1, 0, NULL, '347.00', NULL, NULL, '12.00', NULL, '240.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(195, 'PUR0000000195', 6, 48, NULL, '{\"latitude\":22.6328583,\"longitude\":88.3562991}', 'Ramakrishna Math Office.', '5.00', '24.00', '71.00', '347.00', '2021-06-05 13:46:59', '2021-06-05 13:46:59', 'COD', NULL, 1, NULL, 1, 0, NULL, '347.00', NULL, NULL, '12.00', NULL, '240.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000195_1622900819_prLr03hxKo.jpg', NULL),
(196, 'PUR0000000196', 6, 48, NULL, '{\"latitude\":22.6328583,\"longitude\":88.3562991}', 'Ramakrishna Math Office.', '5.00', '24.00', '71.00', '347.00', '2021-06-05 14:01:17', '2021-06-05 14:01:17', 'COD', NULL, 1, NULL, 1, 0, NULL, '347.00', NULL, NULL, '12.00', NULL, '240.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000196_1622901677_b7HBFU7Syu.jpg', NULL),
(197, 'PUR0000000197', 6, 48, NULL, '{\"latitude\":22.6328583,\"longitude\":88.3562991}', 'Ramakrishna Math Office.', '5.00', '24.00', '71.00', '347.00', '2021-06-05 14:51:29', '2021-06-05 14:51:29', 'COD', NULL, 1, NULL, 1, 0, NULL, '347.00', NULL, NULL, '12.00', NULL, '240.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000197_1622904689_l4AY32L5nu.jpg', NULL),
(198, 'PUR0000000198', 6, 48, NULL, '{\"latitude\":22.6328583,\"longitude\":88.3562991}', 'Ramakrishna Math Office.', '5.00', '24.00', '71.00', '347.00', '2021-06-05 15:42:28', '2021-06-05 15:44:44', 'COD', NULL, 1, NULL, 1, 0, NULL, '347.00', NULL, NULL, '12.00', NULL, '240.00', '47178', 0, NULL, '2021-06-05 15:44:28', NULL, '2021-06-05 15:44:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000198_1622907748_bsFzMEWdGZ.jpg', NULL),
(199, 'PUR0000000199', 6, 48, NULL, '{\"latitude\":21.9769666,\"longitude\":87.3722333}', 'X9GC+XR4, Nandakurya, West Bengal 721451, India', '5.00', '22.50', '1770.00', '2028.75', '2021-08-16 14:13:21', '2021-08-16 14:14:40', 'WALLET', NULL, 1, NULL, 1, 0, NULL, '2028.75', NULL, NULL, '11.25', NULL, '225.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000199_1629123201_WZ1R8A2J7W.jpg', NULL),
(200, 'PUR0000000200', 6, 48, NULL, '{\"latitude\":21.9769666,\"longitude\":87.3722333}', 'X9GC+XR4, Nandakurya, West Bengal 721451, India', '5.00', '60.00', '1770.00', '2460.00', '2021-08-16 14:22:55', '2021-08-16 14:22:55', 'RAZORPAY', NULL, 1, NULL, 1, 1, '64.50', '366.75', NULL, NULL, '30.00', NULL, '600.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000200_1629123775_eoSjpcpYEf.jpg', NULL),
(201, 'PUR0000000201', 6, 48, NULL, '{\"latitude\":21.9769666,\"longitude\":87.3722333}', 'X9GC+XR4, Nandakurya, West Bengal 721451, India', '5.00', '60.00', '1770.00', '2460.00', '2021-08-16 14:23:01', '2021-08-16 14:23:01', 'RAZORPAY', NULL, 1, NULL, 1, 1, '64.50', '366.75', NULL, NULL, '30.00', NULL, '600.00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'PUR0000000201_1629123781_wEdvaKP2AI.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `name`) VALUES
(1, 'Order Placed'),
(2, 'Preparing Order'),
(3, 'Delivery Guy Assigned'),
(4, 'Order Picked Up'),
(5, 'Delivered'),
(6, 'Canceled'),
(7, 'Ready For Pick Up'),
(8, 'Awaiting Payment'),
(9, 'Payment Failed'),
(10, 'Reached Pickup Location'),
(11, 'Reached Drop Location'),
(73, 'ORDER_READY_AND_DELIVERY_ASSIGNED'),
(710, 'ORDER_READY_AND_DELIVERY_REACHED_TO_PICKUP');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_addons`
--

CREATE TABLE `order_item_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `orderitem_id` int(11) NOT NULL,
  `addon_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_otps`
--

CREATE TABLE `password_reset_otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order_amount` int(10) NOT NULL DEFAULT 1,
  `max_order_amount` int(10) NOT NULL DEFAULT 99999,
  `allow_self_pickup` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `description`, `min_order_amount`, `max_order_amount`, `allow_self_pickup`, `is_default`, `logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'COD', 'Cash On Delivery Payment', 1, 99999, 1, 0, NULL, 1, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(2, 'Stripe', 'Online Payment with Stripe', 1, 99999, 1, 0, NULL, 0, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(3, 'Paypal', 'Paypal Express Checkout', 1, 99999, 1, 0, NULL, 0, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(4, 'PayStack', 'PayStack Payment Gateway', 1, 99999, 1, 0, NULL, 0, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(5, 'Razorpay', 'PayStack Payment Gateway', 1, 99999, 1, 0, NULL, 1, '2021-01-10 02:58:37', '2021-01-10 15:15:46'),
(6, 'PayMongo', 'PayMongo Payment Gateway', 1, 99999, 1, 0, NULL, 0, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(7, 'MercadoPago', 'MercadoPago Payment Gateway', 1, 99999, 1, 0, NULL, 0, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(8, 'Paytm', 'Paytm Payment Gateway', 1, 99999, 1, 0, NULL, 1, '2021-01-10 02:58:37', '2021-01-10 15:15:57'),
(9, 'GOOGLE_PAY', 'GooglePay UPI Payment Gateway', 1, 99999, 1, 0, NULL, 1, '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(10, 'PHONEPAY', 'PhonePay UPI Payment Gateway', 1, 99999, 1, 0, NULL, 1, '2021-03-28 19:55:39', '2021-03-28 19:55:39'),
(11, 'UPI', 'UPI Payment Gateway', 1, 99999, 1, 0, NULL, 1, '2021-03-28 19:55:39', '2021-03-28 19:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_restaurant`
--

CREATE TABLE `payment_gateway_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_restaurant`
--

INSERT INTO `payment_gateway_restaurant` (`id`, `payment_gateway_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_geo_places`
--

CREATE TABLE `popular_geo_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_sliders`
--

CREATE TABLE `promo_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `position_id` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 5,
  `slider_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_sliders`
--

INSERT INTO `promo_sliders` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `location_id`, `position_id`, `size`, `slider_type`) VALUES
(1, 'Banner Slider', 1, '2021-02-09 20:04:02', '2021-02-12 13:44:28', 0, 0, 5, 'BANNER'),
(3, 'TopPickSlider', 1, '2021-02-12 14:30:06', '2021-02-12 14:30:23', 0, 0, 4, 'TOP_PICK'),
(4, 'Popular cusine around you', 1, '2021-02-12 14:37:36', '2021-02-12 14:37:52', 0, 0, 5, 'CUSINE'),
(5, 'Eat what makes you happy', 1, '2021-02-12 14:39:48', '2021-02-12 14:40:03', 0, 0, 4, 'DISH_CATEGORY');

-- --------------------------------------------------------

--
-- Table structure for table `push_tokens`
--

CREATE TABLE `push_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_sent` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_tokens`
--

INSERT INTO `push_tokens` (`id`, `token`, `status`, `is_sent`, `is_active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'e0D8MnupSomGd_YRmfRbe7:APA91bHFLkj5TeSw3QBHOdr4x4b5YNoAaVp0nY2ObZxyBUCwln0suQmjRk8DO2hGuGEY95XTXXZz544FSRwRRUlHS1ck7Z5O_TZanPwpDb12Lau92K36SYZ6mHOYdEvG7pOWEw2kv4Px', 0, 0, 1, 4, '2021-02-03 23:25:25', '2021-04-13 22:01:43'),
(2, 'echB6RCUSDCZFmrl6jAscu:APA91bENB3MP2CBqroRDVnJNGmIvggm2H1SM6W2Y915fAUaX7yWU14VWCCh-A7sbnBPF1JBmFF-FHnRruCz8HCd7Q3BTDqokFjnuo-X1atVhpXNirR_ams20-f38iRkTa1LW-KCRLSZ2', 0, 0, 1, 11, '2021-02-22 17:23:23', '2021-02-22 17:23:23'),
(3, 'e77NXlpLSEeiwGirlnoL7g:APA91bGGsnonXeC09t-2D5jzCe1ZLEV3Re8gu9DTfMZtTDoxkJgQqc78e-PXhXTz4aPWAVkB_aY9gXFjB7ZxhcBu_F5LC3yTVm5JfS4Bk7p0ilnWYoYkeuG2Q8uJBbFmPRA1xZXcU1EC', 0, 0, 1, 3, '2021-05-01 11:55:23', '2021-05-21 17:42:04'),
(4, 'flFFD09QSeS4M_P_nno7mp:APA91bGYv-7Is_cwNC9P7Y8o0uKFC4Qi19tI94nYdn41T21axMoPP8wGGSa9S2MIuWmibMhpAW0Or3hW3ZMhZXsFUt3i_PN3SfcR43XOt8e4hofVb5D1xC40p4xsv0ACjUMuaph8MpOL', 0, 0, 1, 49, '2021-05-01 15:44:06', '2021-05-20 15:23:08'),
(5, '', 0, 0, 1, 48, '2021-05-05 15:37:25', '2021-11-20 14:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_delivery_guys`
--

CREATE TABLE `rating_delivery_guys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_guy_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_delivery_guy_user`
--

CREATE TABLE `rating_delivery_guy_user` (
  `rating_delivery_guy_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_delivery_guy_user`
--

INSERT INTO `rating_delivery_guy_user` (`rating_delivery_guy_id`, `user_id`) VALUES
(1, 3),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rating_stores`
--

CREATE TABLE `rating_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_store_restaurant`
--

CREATE TABLE `rating_store_restaurant` (
  `rating_store_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_store_restaurant`
--

INSERT INTO `rating_store_restaurant` (`rating_store_id`, `restaurant_id`) VALUES
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` int(10) DEFAULT 0,
  `price_range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pureveg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_charges` decimal(20,2) DEFAULT NULL,
  `delivery_charges` decimal(20,2) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `commission_rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_type` int(11) NOT NULL DEFAULT 1,
  `delivery_radius` decimal(8,2) NOT NULL DEFAULT 10.00,
  `delivery_charge_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FIXED',
  `base_delivery_charge` decimal(20,2) DEFAULT NULL,
  `base_delivery_distance` int(11) DEFAULT NULL,
  `extra_delivery_charge` decimal(20,2) DEFAULT NULL,
  `extra_delivery_distance` int(11) DEFAULT NULL,
  `min_order_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_notifiable` tinyint(1) DEFAULT 0,
  `auto_acceptable` tinyint(1) NOT NULL DEFAULT 0,
  `schedule_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_schedulable` tinyint(1) NOT NULL DEFAULT 0,
  `order_column` int(11) DEFAULT NULL,
  `custom_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `location_id`, `image`, `contact_number`, `rating`, `delivery_time`, `price_range`, `is_pureveg`, `created_at`, `updated_at`, `slug`, `placeholder_image`, `latitude`, `longitude`, `certificate`, `restaurant_charges`, `delivery_charges`, `address`, `pincode`, `landmark`, `sku`, `is_active`, `is_accepted`, `is_featured`, `commission_rate`, `delivery_type`, `delivery_radius`, `delivery_charge_type`, `base_delivery_charge`, `base_delivery_distance`, `extra_delivery_charge`, `extra_delivery_distance`, `min_order_price`, `is_notifiable`, `auto_acceptable`, `schedule_data`, `is_schedulable`, `order_column`, `custom_message`) VALUES
(1, 'PureEats Restaurant1', 'Pure Eats Store - A nice awesome Restaurant', NULL, '/assets/img/restaurants/1610289406K13DhuW1dH.jpg', '8016626642', '1', 20, '200', 0, '2021-01-10 14:36:46', '2021-08-19 19:31:16', 'pureeats-restaurant-k62gqi7ar8tw4zq', NULL, '22.685935047338873', '88.34287695586681', '123344', '10.00', NULL, '400 RR Plot, Anandapur, BholanathSahoo\'s grocery shoap(Near Play Ground)', '700107', NULL, '1610289406it6Pn704jm', 1, 1, 0, '4.00', 1, '200.00', 'FIXED', '10.00', 2, '10.00', 1, '200.00', 0, 0, '{\"monday\":[{\"open\" :\"20:32\",\"close\" :\"23:55\"}],\"sunday\":[{\"open\" :\"16:39\",\"close\" :\"20:30\"}]}', 0, 1, NULL),
(2, 'Demo Restaurant123', 'Demo Restaurant - A nice awesome Restaurant', NULL, '/assets/img/restaurants/1610807662YfejHu0Ncl.jpg', '123344', '5', 25, '100', 1, '2021-01-16 14:34:22', '2021-08-19 13:51:44', 'demo-restaurant1-eytoc80e2hqiaej', NULL, '22.685935047338873', '88.34287695586681', '123344', '10.00', '10.00', '400 RR Plot, Anandapur', '700107', 'hello', '1610807662Folwz5sKuV', 1, 1, 0, '2.00', 3, '200.00', 'DYNAMIC', '20.00', 1, '5.00', 1, '0.00', 0, 0, NULL, 0, 2, NULL),
(3, 'Arpan Jana', 'Chinese special menu', NULL, '/assets/img/restaurants/161082751803vXQ6STst.jpg', '8016626642', '2', 20, '300', 1, '2021-01-16 20:05:18', '2021-08-16 15:22:11', 'ram-restaurant-qztxdgerks0yubf', NULL, '22.63650093', '88.35147411', '12432444', '1.00', NULL, 'Lalbaba College, BT Road', '12345', NULL, '1610827518buQNHLSvX0', 1, 1, 0, '20.00', 3, '200.00', 'DYNAMIC', '15.00', 1, '10.00', 1, '300.00', 0, 0, NULL, 0, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_categories`
--

CREATE TABLE `restaurant_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_categories`
--

INSERT INTO `restaurant_categories` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Biryani', 1, '2021-04-15 17:22:17', '2021-04-15 17:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_category_restaurant`
--

CREATE TABLE `restaurant_category_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_category_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_category_sliders`
--

CREATE TABLE `restaurant_category_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_earnings`
--

CREATE TABLE `restaurant_earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_requested` tinyint(1) NOT NULL DEFAULT 0,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_payout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_earnings`
--

INSERT INTO `restaurant_earnings` (`id`, `restaurant_id`, `user_id`, `amount`, `is_requested`, `is_processed`, `created_at`, `updated_at`, `restaurant_payout_id`) VALUES
(1, 1, NULL, '5692.50', 0, 0, '2021-05-11 21:29:25', '2021-05-22 20:09:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_payouts`
--

CREATE TABLE `restaurant_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `restaurant_earning_id` int(11) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_user`
--

CREATE TABLE `restaurant_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_user`
--

INSERT INTO `restaurant_user` (`id`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 49, 1, NULL, NULL),
(4, 49, 2, NULL, NULL),
(5, 49, 3, NULL, NULL),
(6, 3, 2, NULL, NULL),
(7, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-01-10 02:58:36', '2021-01-10 02:58:36'),
(2, 'Delivery Guy', 'web', '2021-01-10 02:58:36', '2021-01-10 02:58:36'),
(3, 'Store Owner', 'web', '2021-01-10 02:58:36', '2021-01-10 02:58:36'),
(4, 'Customer', 'web', '2021-01-10 02:58:36', '2021-01-10 02:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(10) NOT NULL,
  `origin_address` longtext DEFAULT NULL,
  `destination_address` longtext DEFAULT NULL,
  `origin_location` varchar(250) DEFAULT NULL,
  `destination_location` varchar(250) DEFAULT NULL,
  `duration` varchar(250) DEFAULT NULL,
  `distance` varchar(250) DEFAULT NULL,
  `path_data` text DEFAULT NULL,
  `order_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'storeColor', '#fc8019'),
(2, 'splashLogo', 'splash.jpg'),
(3, 'firstScreenHeading', 'Order from top & favourite restaurants'),
(4, 'firstScreenSubHeading', 'Ready to see top restaurant to order?'),
(5, 'firstScreenSetupLocation', 'setup your location'),
(6, 'firstScreenLoginText', 'Have an account?'),
(7, 'footerNearme', 'Near Me'),
(8, 'footerExplore', 'Explore'),
(9, 'footerCart', 'Cart'),
(10, 'footerAccount', 'Account'),
(11, 'restaurantCountText', 'Restaurants Near You'),
(12, 'searchAreaPlaceholder', 'Search your area...'),
(13, 'searchPopularPlaces', 'Popular Places'),
(14, 'recommendedBadgeText', 'Recommended'),
(15, 'recommendedBadgeColor', '#d53d4c'),
(16, 'popularBadgeText', 'Popular'),
(17, 'popularBadgeColor', '#ff5722'),
(18, 'newBadgeText', 'New'),
(19, 'newBadgeColor', '#2196F3'),
(20, 'currencyFormat', '₹'),
(21, 'currencyId', 'USD'),
(22, 'cartColorBg', '#60b246'),
(23, 'cartColorText', '#ffffff'),
(24, 'cartEmptyText', 'Your Cart is Empty'),
(25, 'firstScreenHeroImage', 'assets/img/various/156662819939lzR3gB2i.png'),
(26, 'restaurantSearchPlaceholder', 'Search for restaurants and items...'),
(27, 'accountManageAddress', 'Manage Address'),
(28, 'accountMyOrders', 'My Orders'),
(29, 'accountHelpFaq', 'Help & FAQs'),
(30, 'accountLogout', 'Logout'),
(31, 'cartMakePayment', 'Make Payment'),
(32, 'cartLoginHeader', 'Almost There'),
(33, 'cartLoginSubHeader', 'Login or Signup to place your order'),
(34, 'cartLoginButtonText', 'Continue'),
(35, 'cartDeliverTo', 'Deliver To'),
(36, 'cartChangeLocation', 'Change'),
(37, 'buttonNewAddress', 'New Address'),
(38, 'buttonSaveAddress', 'Save Address'),
(39, 'editAddressAddress', 'Flat/Apartment Number'),
(40, 'editAddressHouse', 'House / Flat No.'),
(41, 'editAddressLandmark', 'Landmark'),
(42, 'editAddressTag', 'Tag'),
(43, 'addressTagPlaceholder', 'Eg. Home, Work'),
(44, 'cartApplyCoupon', 'Apply Coupon'),
(45, 'cartInvalidCoupon', 'Invalid Coupon'),
(46, 'cartSuggestionPlaceholder', 'Suggestion for the restaurant...'),
(47, 'editAddressText', 'Edit'),
(48, 'deleteAddressText', 'Delete'),
(49, 'noAddressText', 'You don\'t have any saved addresses.'),
(50, 'cartSetAddressText', 'Set Your Address'),
(51, 'cartPageTitle', 'Cart'),
(52, 'checkoutPageTitle', 'Checkout'),
(53, 'checkoutPlaceOrder', 'Place Order'),
(54, 'runningOrderPlacedTitle', 'Order Placed Successfully'),
(55, 'runningOrderPlacedSub', 'Waiting for the restaurant to confirm your order'),
(56, 'runningOrderPreparingTitle', 'Chef at work!!'),
(57, 'runningOrderPreparingSub', 'Restaurant is preparing your order'),
(58, 'runningOrderOnwayTitle', 'Vroom Vroom!!'),
(59, 'runningOrderOnwaySub', 'Order has been picked up and is on its way'),
(60, 'runningOrderRefreshButton', 'Refresh Order Status'),
(61, 'noOrdersText', 'You have not placed any order yet.'),
(62, 'orderTextTotal', 'Total:'),
(63, 'checkoutPaymentListTitle', 'Select your prefered payment method'),
(64, 'checkoutSelectPayment', 'Select Payment Method'),
(65, 'mapApiKey', NULL),
(66, 'storeName', 'ArpanStore'),
(67, 'storeLogo', 'logo.png'),
(68, 'runningOrderDeliveryAssignedTitle', 'Delivery Guy Assigned'),
(69, 'runningOrderDeliveryAssignedSub', 'On the way to pick up your order.'),
(70, 'runningOrderCanceledTitle', 'Order Canceled'),
(71, 'runningOrderCanceledSub', 'Sorry. Your order has been canceled.'),
(72, 'stripePublicKey', NULL),
(73, 'stripeSecretKey', NULL),
(74, 'firstScreenWelcomeMessage', 'Welcome,'),
(75, 'firstScreenLoginBtn', 'Login'),
(76, 'loginErrorMessage', 'Woopss!! Something went wrong. Please try again.'),
(77, 'pleaseWaitText', 'Please Wait...'),
(78, 'loginLoginTitle', 'LOGIN'),
(79, 'loginLoginSubTitle', 'Enter your email and password'),
(80, 'loginLoginEmailLabel', 'Email'),
(81, 'loginLoginPasswordLabel', 'Password'),
(82, 'homePageMinsText', 'MINS'),
(83, 'homePageForTwoText', 'FOR TWO'),
(84, 'itemsPageRecommendedText', 'RECOMMENDED'),
(85, 'floatCartItemsText', 'Items'),
(86, 'floatCartViewCartText', 'View Cart'),
(87, 'cartItemsInCartText', 'Items in Cart'),
(88, 'cartBillDetailsText', 'Bill Details'),
(89, 'cartItemTotalText', 'Item Total'),
(90, 'cartRestaurantCharges', 'Restaurant Charges'),
(91, 'cartDeliveryCharges', 'Delivery Charges'),
(92, 'cartCouponText', 'Coupon'),
(93, 'cartToPayText', 'To Pay'),
(94, 'cartSetYourAddress', 'Set Your Address'),
(95, 'checkoutPaymentInProcess', 'Payment in process. Do not hit refresh or go back.'),
(96, 'checkoutStripeText', 'Stripe'),
(97, 'checkoutStripeSubText', 'Online Payment'),
(98, 'checkoutCodText', 'COD'),
(99, 'checkoutCodSubText', 'Cash On Delivery'),
(100, 'showPromoSlider', 'false'),
(101, 'loginLoginPhoneLabel', 'Phone'),
(102, 'loginLoginNameLabel', 'Name'),
(103, 'registerErrorMessage', 'Woppss!! Something went wrong. Please try again.'),
(104, 'registerRegisterTitle', 'Register'),
(105, 'registerRegisterSubTitle', 'Regsiter now for free'),
(106, 'firstScreenRegisterBtn', 'Register'),
(107, 'loginDontHaveAccount', 'Don\'t have an account yet? '),
(108, 'regsiterAlreadyHaveAccount', 'Already have an account? '),
(109, 'favicon-16x16', 'favicon-16x16.png'),
(110, 'favicon-32x32', 'favicon-32x32.png'),
(111, 'favicon-96x96', 'favicon-96x96.png'),
(112, 'favicon-128x128', 'favicon-128x128.png'),
(113, 'storeEmail', 'arpangroup1@gmail.com'),
(114, 'seoMetaTitle', 'ArpanStore'),
(115, 'seoMetaDescription', NULL),
(116, 'storeUrl', NULL),
(117, 'twitterUsername', 'twitter-username'),
(118, 'seoOgTitle', NULL),
(119, 'seoOgDescription', NULL),
(120, 'seoTwitterTitle', NULL),
(121, 'seoTwitterDescription', NULL),
(122, 'seoOgImage', NULL),
(123, 'seoTwitterImage', NULL),
(124, 'accountMyAccount', 'My Account'),
(125, 'desktopHeading', 'Order from restaurants near you'),
(126, 'desktopSubHeading', 'Easy way to get the food you love delivered.\r\nWe bring food from the best restaurants and desserts to your doorstep. We have <b style=\"\">hundreds</b> of restaurants to choose from.'),
(127, 'desktopUseAppButton', 'Use App'),
(128, 'desktopAchievementOneTitle', 'Restaurants'),
(129, 'desktopAchievementOneSub', '2300+'),
(130, 'desktopAchievementTwoTitle', 'Items'),
(131, 'desktopAchievementTwoSub', '65000+'),
(132, 'desktopAchievementThreeTitle', 'Customers'),
(133, 'desktopAchievementThreeSub', '1M+'),
(134, 'desktopAchievementFourTitle', 'Deliveries'),
(135, 'desktopAchievementFourSub', '5M+'),
(136, 'desktopSocialFacebookLink', 'https://www.facebook.com'),
(137, 'desktopSocialGoogleLink', 'https://www.google.com'),
(138, 'desktopSocialYoutubeLink', NULL),
(139, 'desktopSocialInstagramLink', 'https://www.instagram.com'),
(140, 'desktopFooterSocialHeader', 'We Are Social'),
(141, 'desktopFooterAddress', '#1201, Someplace, Near Somewhere'),
(142, 'runningOrderDeliveryPin', 'Delivery Pin: '),
(143, 'deliveryNoOrdersAccepted', 'No Orders Accepted Yet'),
(144, 'deliveryNoNewOrders', 'No New Orders Yet'),
(145, 'firstScreenHeroImageSm', 'assets/img/various/156662819939lzR3gB2i-sm.png'),
(146, 'showMap', 'true'),
(147, 'paypalEnv', 'sandbox'),
(148, 'paypalSandboxKey', 'rrrrrr'),
(149, 'paypalProductionKey', NULL),
(150, 'enablePushNotification', 'true'),
(151, 'enablePushNotificationOrders', 'true'),
(152, 'firebaseSenderId', '97657025376'),
(153, 'firebaseSecret', 'AAAAvYN1qCo:APA91bHHeYtK8JcUfnSxiAo-qJrg-JM117CzM-G8I1del71HVZ9q5zbrxYN1OGA3voP0SO7lf5qdhHqWl_S2NzHM-l3ufTFrjobsWwgX2GAYdakAUYbcvSi1rfvWZP_QdiNNxYoB3kyA'),
(154, 'runningOrderDelivered', 'Order Delivered'),
(155, 'runningOrderDeliveredSub', 'The order has been delivered to you. Enjoy.'),
(156, 'showGdpr', 'false'),
(157, 'gdprMessage', 'We use Cookies to give you the best possible service. By continuing to browse our site you are agreeing to our use of Cookies'),
(158, 'gdprConfirmButton', 'Okay'),
(159, 'restaurantFeaturedText', 'Featured'),
(160, 'deliveryNewOrdersTitle', 'New Orders'),
(161, 'deliveryAcceptedOrdersTitle', 'Accepted Orders'),
(162, 'deliveryWelcomeMessage', 'Welcome'),
(163, 'deliveryOrderItems', 'Order Items'),
(164, 'deliveryRestaurantAddress', 'Restaurant Address'),
(165, 'deliveryGetDirectionButton', 'Get Direction'),
(166, 'deliveryDeliveryAddress', 'Delivery Address'),
(167, 'deliveryOnlinePayment', 'Online Payment'),
(168, 'deliveryDeliveryPinPlaceholder', 'ENTER DELIVERY PIN'),
(169, 'deliveryAcceptOrderButton', 'Accept'),
(170, 'deliveryPickedUpButton', 'Picked Up'),
(171, 'deliveryDeliveredButton', 'Delivered'),
(172, 'deliveryOrderCompletedButton', 'Order Completed'),
(173, 'deliveryInvalidDeliveryPin', 'Incorrect delivery pin. Please try again.'),
(174, 'deliveryAlreadyAccepted', 'This delivery has been accepted by someone else.'),
(175, 'deliveryLogoutDelivery', 'Logout Delivery'),
(176, 'enableGoogleAnalytics', 'false'),
(177, 'googleAnalyticsId', NULL),
(178, 'taxApplicable', 'true'),
(179, 'taxPercentage', '5'),
(180, 'firebasePublic', 'BNkmzY19y3R2Qnu6FU1TnoqgO7tm3E1Yk6Trmo_lBAqx0KWQaExj_9xD9c-UF4NRmw5C6veOzS-OWIOrX5d_wQw'),
(181, 'deliveryLogoutConfirmation', 'Are you sure?'),
(182, 'customizationHeading', 'Customizations'),
(183, 'customizableItemText', 'Customizable'),
(184, 'customizationDoneBtnText', 'Continue'),
(185, 'paystackPublicKey', 'pk_test_ecf3496bdf36bced2112a502f5f5bb96e1340124'),
(186, 'paystackPrivateKey', NULL),
(187, 'paystackPayText', 'PAY WITH PAYSLACK'),
(188, 'minPayout', '150'),
(189, 'enableFacebookLogin', 'false'),
(190, 'facebookAppId', NULL),
(191, 'facebookLoginButtonText', 'Login with Facebook'),
(192, 'enableGoogleLogin', 'false'),
(193, 'googleAppId', NULL),
(194, 'googleLoginButtonText', 'Login with Google'),
(195, 'customCSS', NULL),
(196, 'enSOV', 'false'),
(197, 'twilioSid', NULL),
(198, 'twilioAccessToken', NULL),
(199, 'twilioServiceId', NULL),
(200, 'fieldValidationMsg', 'This is a required field.'),
(201, 'nameValidationMsg', 'Please enter your full name.'),
(202, 'emailValidationMsg', 'Please enter a valid email.'),
(203, 'phoneValidationMsg', 'Please enter a phone number in this format: +1123456789'),
(204, 'minimumLengthValidationMessage', 'This field must be at least 8 characters long.'),
(205, 'emailPhoneAlreadyRegistered', 'Email or Phone has already been registered.'),
(206, 'enterPhoneToVerify', 'Please enter your phone number to verify'),
(207, 'invalidOtpMsg', 'Invalid OTP. Please check and try again.'),
(208, 'otpSentMsg', 'An OTP has been sent to '),
(209, 'resendOtpMsg', 'Resend OTP to '),
(210, 'resendOtpCountdownMsg', 'Resend OTP in '),
(211, 'verifyOtpBtnText', 'Verify OTP'),
(212, 'socialWelcomeText', 'Hi '),
(213, 'emailPassDonotMatch', 'Email & Password do not match.'),
(214, 'enSPU', 'true'),
(215, 'runningOrderReadyForPickup', 'Food is Ready'),
(216, 'runningOrderReadyForPickupSub', 'Your order is ready for self pickup.'),
(217, 'deliveryTypeDelivery', 'Delivery'),
(218, 'deliveryTypeSelfPickup', 'Self Pickup'),
(219, 'noRestaurantMessage', 'No restaurants are available.'),
(220, 'selectedSelfPickupMessage', 'You have selected Self Pickup.'),
(221, 'vehicleText', 'Vehicle:'),
(222, 'deliveryGuyAfterName', 'is your delivery valet today.'),
(223, 'callNowButton', 'Call Now'),
(224, 'enableGoogleAPI', 'false'),
(225, 'checkoutRazorpayText', 'Razorpay'),
(226, 'checkoutRazorpaySubText', 'Pay with cards, wallet or UPI'),
(227, 'razorpayKeyId', 'rzp_test_jRxt0w6q2yYp8t'),
(228, 'razorpayKeySecret', 'Y5ejkajy4G8ezW2qEH7TPXcr'),
(229, 'allowLocationAccessMessage', 'Kindly allow location access for live tracking.'),
(230, 'enableDeliveryPin', 'true'),
(231, 'deliveryOrdersRefreshBtn', 'Refresh'),
(232, 'restaurantAcceptTimeThreshold', '10'),
(233, 'deliveryAcceptTimeThreshold', '45'),
(234, 'taxText', 'Tax'),
(235, 'itemsRemovedMsg', 'Items added from the previous restaurant have been removed.'),
(236, 'ongoingOrderMsg', 'You have some on-going orders. VIEW'),
(237, 'trackOrderText', 'Track Order'),
(238, 'orderPlacedStatusText', 'Order Placed'),
(239, 'preparingOrderStatusText', 'Preparing Order'),
(240, 'deliveryGuyAssignedStatusText', 'Delivery Guy Assigned'),
(241, 'orderPickedUpStatusText', 'Order Picked Up'),
(242, 'deliveredStatusText', 'Delivered'),
(243, 'canceledStatusText', 'Canceled'),
(244, 'readyForPickupStatusText', 'Ready For Pickup'),
(245, 'pureVegText', 'Pure Veg'),
(246, 'certificateCodeText', 'Certificate Code: '),
(247, 'showMoreButtonText', 'Show More'),
(248, 'showLessButtonText', 'Show Less'),
(249, 'walletName', 'Wallet'),
(250, 'accountMyWallet', 'My Wallet'),
(251, 'noWalletTransactionsText', 'No Wallet Transactions Yet!!!'),
(252, 'walletDepositText', 'Deposit'),
(253, 'walletWithdrawText', 'Withdraw'),
(254, 'payPartialWithWalletText', 'Pay partial amount with wallet'),
(255, 'willbeDeductedText', 'will be deducted from your balance of'),
(256, 'payFullWithWalletText', 'Pay full amount with Wallet.'),
(257, 'orderPaymentWalletComment', 'Payment for order:'),
(258, 'orderPartialPaymentWalletComment', 'Partial payment for order:'),
(259, 'orderRefundWalletComment', 'Refund for order cancellation.'),
(260, 'orderPartialRefundWalletComment', 'Partial Refund for order cancellation.'),
(261, 'enDevMode', 'true'),
(262, 'walletRedeemBtnText', 'Redeem'),
(263, 'restaurantNewOrderNotificationMsg', 'A New Order has Arrived !!!'),
(264, 'restaurantNewOrderNotificationMsgSub', 'New Order Notification'),
(265, 'deliveryGuyNewOrderNotificationMsg', 'A New Order is Waiting !!!'),
(266, 'deliveryGuyNewOrderNotificationMsgSub', 'New Order Notification'),
(267, 'firebaseSDKSnippet', ''),
(268, 'cartCouponOffText', 'OFF'),
(269, 'willBeRefundedText', 'will be refunded back to your wallet.'),
(270, 'willNotBeRefundedText', 'No Refund will be made to your wallet as the restaurant has already prepared the order.'),
(271, 'cartRestaurantNotOperational', 'Restaurant is not operational on your selected location.'),
(272, 'addressDoesnotDeliverToText', 'Does not deliver to'),
(273, 'googleApiKey', 'AIzaSyCt_14My2CYghVw6eZFSYFlFPBOK29lkww'),
(274, 'useCurrentLocationText', 'Use Current Location'),
(275, 'gpsAccessNotGrantedMsg', 'GPS access is not granted or was denied.'),
(276, 'yourLocationText', 'YOUR LOCATION'),
(277, 'notAcceptingOrdersMsg', 'Currently Not Accepting Any Orders'),
(278, 'exploreRestautantsText', 'RESTAURANTS'),
(279, 'exploreItemsText', 'ITEMS'),
(280, 'hidePriceWhenZero', 'true'),
(281, 'phoneCountryCode', '+1'),
(282, 'orderCancellationConfirmationText', 'Do you want to cancel this order?'),
(283, 'yesCancelOrderBtn', 'Yes, Cancel Order'),
(284, 'cancelGoBackBtn', 'Go back'),
(285, 'cancelOrderMainButton', 'Cancel Order'),
(286, 'deliveryOrderPlacedText', 'Order Placed'),
(287, 'deliveryCashOnDelivery', 'Cash On Delivery'),
(288, 'socialLoginOrText', 'OR'),
(289, 'orderCancelledText', 'Order Cancelled'),
(290, 'searchAtleastThreeCharsMsg', 'Enter at least 3 characters to search.'),
(291, 'multiLanguageSelection', 'true'),
(292, 'changeLanguageText', 'Change Language'),
(293, 'deliveryFooterNewTitle', 'New Orders'),
(294, 'deliveryFooterAcceptedTitle', 'Accepted'),
(295, 'deliveryFooterAccount', 'Account'),
(296, 'enableDeliveryGuyEarning', 'true'),
(297, 'deliveryGuyCommissionFrom', 'DELIVERYCHARGE'),
(298, 'deliveryEarningsText', 'Earnings'),
(299, 'deliveryOnGoingText', 'On-Going'),
(300, 'deliveryCompletedText', 'Completed'),
(301, 'deliveryCommissionMessage', 'Commission for order: '),
(302, 'itemSearchText', 'Search results for: '),
(303, 'itemSearchNoResultText', 'No results found for: '),
(304, 'itemSearchPlaceholder', 'Search for items...'),
(305, 'googleApiKeyIP', 'AIzaSyCt_14My2CYghVw6eZFSYFlFPBOK29lkww'),
(306, 'itemsMenuButtonText', 'MENU'),
(307, 'enPassResetEmail', 'false'),
(308, 'mail_host', NULL),
(309, 'mail_port', NULL),
(310, 'mail_username', NULL),
(311, 'mail_password', NULL),
(312, 'mail_encryption', NULL),
(313, 'enRestaurantCategorySlider', 'true'),
(314, 'restaurantCategorySliderPosition', '2'),
(315, 'restaurantCategorySliderSize', '3'),
(316, 'showRestaurantCategorySliderLabel', 'true'),
(317, 'restaurantCategorySliderStyle', '0.4'),
(318, 'enRAR', 'true'),
(319, 'rarModEnHomeBanner', 'true'),
(320, 'rarModShowBannerRestaurantName', 'true'),
(321, 'rarModHomeBannerPosition', '2'),
(322, 'rarModHomeBannerBgColor', 'rgb(255, 235, 59)'),
(323, 'rarModHomeBannerTextColor', 'rgb(0, 0, 0)'),
(324, 'rarModHomeBannerStarsColor', 'rgb(255, 162, 0)'),
(325, 'rarModHomeBannerText', 'Rate and Review'),
(326, 'rarModRatingPageTitle', 'Rate Your Order'),
(327, 'rarModDeliveryRatingTitle', 'Rate the Delivery'),
(328, 'rarModRestaurantRatingTitle', 'Rate the Restaurant'),
(329, 'rarReviewBoxTitle', 'Your Feedback'),
(330, 'rarReviewBoxTextPlaceHolderText', 'Write your feedback here (optional)'),
(331, 'rarSubmitButtonText', 'Submit'),
(332, 'showPercentageDiscount', 'true'),
(333, 'itemPercentageDiscountText', '% OFF'),
(334, 'showVegNonVegBadge', 'true'),
(335, 'exploreNoResults', 'No Items or Restaurants Found'),
(336, 'updatingMessage', 'Updating System'),
(337, 'userNotFoundErrorMessage', 'No user found with this email.'),
(338, 'invalidOtpErrorMessage', 'Invalid OTP Entered'),
(339, 'resetPasswordPageTitle', 'Reset Password'),
(340, 'resetPasswordPageSubTitle', 'Enter your email address to continue'),
(341, 'sendOtpOnEmailButtonText', 'Send OTP on Email'),
(342, 'alreadyHaveResetOtpButtonText', 'I already have an OTP'),
(343, 'enterResetOtpMessageText', 'Enter the OTP sent to you email'),
(344, 'verifyResetOtpButtonText', 'Verify OTP'),
(345, 'dontHaveResetOtpButtonText', 'I dont have an OTP'),
(346, 'enterNewPasswordText', 'Please enter a new password below'),
(347, 'newPasswordLabelText', 'New Password'),
(348, 'setNewPasswordButtonText', 'Set New Password'),
(349, 'exlporeByRestaurantText', 'By'),
(350, 'forgotPasswordLinkText', 'Forgot Password?'),
(351, 'categoriesNoRestaurantsFoundText', 'No Restaurants Found'),
(352, 'categoriesFiltersText', 'Filters'),
(353, 'sendEmailFromEmailAddress', 'arpangroup1@gmail.com'),
(354, 'sendEmailFromEmailName', 'arpangroup1@gmail.com'),
(355, 'passwordResetEmailSubject', 'arpangroup1@gmail.com'),
(356, 'registrationPolicyMessage', NULL),
(357, 'locationSavedAddresses', 'Saved Addresses'),
(358, 'restaurantMinOrderMessage', 'Min cart value should be atleast '),
(359, 'footerAlerts', 'Alerts'),
(360, 'showFromNowDate', 'true'),
(361, 'markAllAlertReadText', 'Mark all read'),
(362, 'noNewAlertsText', 'No new alerts'),
(363, 'currencySymbolAlign', 'left'),
(364, 'restaurantNotificationAudioTrack', 'Alert-5'),
(365, 'restaurantNewOrderRefreshRate', '15'),
(366, 'enDelChrRnd', 'true'),
(367, 'expandAllItemMenu', 'true'),
(368, 'msg91AuthKey', NULL),
(369, 'msg91SenderId', NULL),
(370, 'defaultSmsGateway', '1'),
(371, 'otpMessage', 'Your OTP verification code is:'),
(372, 'twilioFromPhone', NULL),
(373, 'smsRestaurantNotify', 'false'),
(374, 'smsDeliveryNotify', 'false'),
(375, 'defaultSmsRestaurantMsg', 'You have received a new order.'),
(376, 'smsRestOrderValue', 'false'),
(377, 'smsOrderNotify', 'false'),
(378, 'defaultSmsDeliveryMsg', 'A new order has arrived.'),
(379, 'showOrderAddonsDelivery', 'true'),
(380, 'showDeliveryFullAddressOnList', 'false'),
(381, 'sendgrid_api_key', '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'),
(382, 'showUserInfoBeforePickup', 'true'),
(383, 'recommendedLayoutV2', 'true'),
(384, 'cartItemNotAvailable', 'Item Not Available'),
(385, 'cartRemoveItemButton', 'Remove Item'),
(386, 'deliveryTotalEarningsText', 'Total Earnings'),
(387, 'flatApartmentAddressRequired', 'false'),
(388, 'deliveryUsePhoneToAccessMsg', 'Use your mobile phone to login to the Delivery Application.'),
(389, 'restaurantNotActiveMsg', 'Not Accepting Orders'),
(390, 'uploadImageQuality', '75'),
(391, 'deliveryMaxOrderReachedMsg', 'Max Order Limit Reached'),
(392, 'showInActiveItemsToo', 'false'),
(393, 'enGDMA', 'true'),
(394, 'showPriceAndOrderCommentsDelivery', 'false'),
(395, 'useSimpleSpinner', 'true'),
(396, 'randomizeStores', 'false'),
(397, 'showCouponDescriptionOnSuccess', 'false'),
(398, 'stripeAcceptAliPay', 'false'),
(399, 'stripeAcceptBitCoin', 'false'),
(400, 'enIOSPWAPopup', 'false'),
(401, 'mockSearchOnHomepage', 'false'),
(402, 'stripeInlineCardCheckout', 'false'),
(403, 'stripeAcceptIdealPayment', 'false'),
(404, 'stripeAcceptFpxPayment', 'false'),
(405, 'stripeCheckoutPostalCode', 'false'),
(406, 'googleFullAddress', 'false'),
(407, 'showDeliveryCollection', 'false'),
(408, 'allowPaymentGatewaySelection', 'false'),
(409, 'sortSelfpickupStoresByDistance', 'false'),
(410, 'countQuantityAsTotalItemsOnCart', 'false'),
(411, 'allowPaymentGatewaySelection', 'false'),
(412, 'showTipsPercentage', 'false'),
(413, 'showTipsAmount', 'false'),
(414, 'googleApiKeyNoRestriction', 'AIzaSyCt_14My2CYghVw6eZFSYFlFPBOK29lkww'),
(415, 'enDistanceMatrixDeliveryTime', 'false'),
(416, 'approxDeliveryTimePerKm', '4'),
(417, 'orderAutoCancelTime', '5'),
(418, 'paytm_environment', 'local'),
(419, 'paytm_merchant_id', 'ltZJMS50213657676973'),
(420, 'paytm_merchant_key', '4a!LNUWv5Xa4hyXy'),
(421, 'paytm_merchant_website', 'WEBSTAGING'),
(422, 'paytm_industry_type', 'Retail'),
(423, 'paytm_channel', 'WAP'),
(424, 'chooseAvatarText', 'Choose your avatar'),
(425, 'stripeLocale', 'auto'),
(426, 'customCartMessage', '<p><br></p>'),
(427, 'customHomeMessage', '<p><br></p>'),
(428, 'inAppCloseButton', 'Close'),
(429, 'inAppOpenLinkButton', 'Open'),
(430, 'iOSPWAPopupTitle', 'Add to Home Screen'),
(431, 'iOSPWAPopupBody', 'This website has app functionality. Add it to your home screen to use it in fullscreen and while offline.'),
(432, 'iOSPWAPopupShareButtonLabel', '1) Press the \'Share\' button'),
(433, 'iOSPWAPopupAddButtonLabel', '2) Press \'Add to Home Screen\''),
(434, 'iOSPWAPopupCloseButtonLabel', 'Cancel'),
(435, 'defaultEmailGateway', 'sendgrid'),
(436, 'offlineTitleMessage', 'You Are Offline'),
(437, 'offlineSubTitleMessage', 'Please check your internet connection.'),
(438, 'userInActiveMessage', 'You are banned from placing orders'),
(439, 'footerStyleType', 'FLOAT'),
(440, 'mockSearchPlaceholder', 'Search for stores or items...'),
(441, 'tooManyApiCallMessage', 'Please try again in a minute...'),
(442, 'paymongoPK', NULL),
(443, 'paymongoSK', NULL),
(444, 'awaitingPaymentStatusText', 'Awaiting Payment'),
(445, 'paymentFailedStatusText', 'Payment Failed'),
(446, 'awaitingPaymentTitle', 'Awaiting Payment'),
(447, 'awaitingPaymentSubTitle', 'Awaiting payment from your bank. Order will be canceled if not processed in time.'),
(448, 'checkoutStripeIdealText', 'Stripe Ideal'),
(449, 'checkoutStripeIdealSubText', 'Pay with Ideal Netherlands'),
(450, 'checkoutStripeFpxText', 'Stripe FPX'),
(451, 'checkoutStripeFpxSubText', 'Pay with FPX Malaysia'),
(452, 'checkoutMercadoPagoText', 'MercadoPago'),
(453, 'checkoutMercadoPagoSubText', 'Pay with MerecadoPago for Brazil'),
(454, 'checkoutPayMongoText', 'Pay with PayMongo'),
(455, 'checkoutPayMongoSubText', 'Pay with PayMongo for Philippines'),
(456, 'checkoutPayText', 'Pay'),
(457, 'checkoutCardNumber', 'Card Number'),
(458, 'checkoutCardExpiration', 'Expiration'),
(459, 'checkoutCardCvv', 'CVV'),
(460, 'checkoutCardPostalCode', 'Postal Code'),
(461, 'checkoutCardFullname', 'Full Name'),
(462, 'checkoutIdealSelectBankText', 'Select Bank'),
(463, 'checkoutFpxSelectBankText', 'Select Bank'),
(464, 'mercadopagoAccessToken', NULL),
(465, 'couponNotLoggedin', 'Login to apply coupon'),
(466, 'checkoutPaytmText', 'Paytm'),
(467, 'checkoutPaytmSubText', 'Pay with Paytm Wallet | Credit/Debit Card'),
(468, 'deliveryCollectionText', 'COD In-Hand'),
(469, 'orderDetailsPaymentMode', 'Payment Mode: '),
(470, 'oneSignalAppId', NULL),
(471, 'oneSignalRestApiKey', NULL),
(472, 'deliveryEarningCommissionText', 'Commission: '),
(473, 'applyCouponButtonText', 'Apply'),
(474, 'deliveryPickedupOrdersTitle', 'Picked-up Orders'),
(475, 'deliveryNoPickedupOrdersMsg', 'No Picked-up orders in queue.'),
(476, 'deliveryFooterPickedup', 'Picked-Up'),
(477, 'tips', '5,10,15,20'),
(478, 'tips_percentage', '2,5,10'),
(479, 'tipText', 'Delivery Tip'),
(480, 'tipsForDeliveryText', 'Tip your delivery partner'),
(481, 'tipsThanksText', 'Thank your delivery partner for helping you stay safe indoors. Support them through these tough times with a tip.'),
(482, 'tipsOtherText', 'Other'),
(483, 'deliveryTipTransactionMessage', 'Delivery Tip: '),
(484, 'deliveryEarningTipText', 'Delivery Tip: '),
(485, 'deliveryEarningTotalEarningText', 'Total Earnings'),
(486, 'deliveryLastSevenDaysEarningTitle', 'Last 7 Days Earning'),
(487, 'cartRemoveTipText', 'Remove Tip'),
(488, 'cartTipAmountPlaceholderText', 'Tip Amount'),
(489, 'cartTipPercentagePlaceholderText', 'Tip percentage'),
(490, 'upi_merchant_id', '8777630556@okbizaxis'),
(491, 'upi_merchant_name', 'Pure Eats'),
(492, 'upi_merchant_code', NULL),
(493, 'upi_transaction_note', 'Payment for PureEats'),
(494, 'cod_max_order_amount', '300'),
(495, 'googlepay_merchant_id', 'pureeats@googlepay12345'),
(496, 'googlepay_merchant_name', 'Pure Eats'),
(497, 'googlepay_merchant_code', NULL),
(498, 'googlepay_transaction_note', 'Payment for PureEats'),
(499, 'googlepay_package_name', 'com.googlepay.gggg'),
(500, 'phonepay_merchant_id', 'pureeats@phonepay1234'),
(501, 'phonepay_merchant_name', 'Pure Eats'),
(502, 'phonepay_merchant_code', NULL),
(503, 'phonepay_transaction_note', 'Payment for PureEats'),
(504, 'phonepay_package_name', 'com.phonepay'),
(505, 'default_payment_gateway', 'Razorpay'),
(506, 'cod_enable_for_self_pickup', 'true'),
(507, 'logoutThresholdTime', '2');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_slider_id` int(11) NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `promo_slider_id`, `unique_id`, `name`, `image`, `image_placeholder`, `url`, `is_active`, `created_at`, `updated_at`, `order_column`) VALUES
(1, 1, NULL, 'banner_1', '/assets/img/slider/1613137364PYEnQ7UjFF.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 13:30:44', '2021-02-12 13:42:44', 1),
(2, 1, NULL, 'banner_2', '/assets/img/slider/1613137442OhJ7dOpLvx.PNG', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 13:44:02', '2021-02-12 13:44:02', 2),
(3, 1, NULL, 'banner_3', '/assets/img/slider/1613137508sYqxVxfPGx.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 13:45:09', '2021-02-12 13:45:09', 3),
(4, 3, NULL, 'top_pick1', '/assets/img/slider/1613140420tu6Y62V77X.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:33:41', '2021-02-12 14:33:41', 4),
(5, 3, NULL, 'top_pick2', '/assets/img/slider/1613140464DACRX1eroo.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:34:24', '2021-02-12 14:34:24', 5),
(6, 4, NULL, 'Chinese', '/assets/img/slider/16131417096dojTCkZoJ.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:49:41', '2021-02-12 14:55:09', 6),
(7, 4, NULL, 'South Indian', '/assets/img/slider/1613141802hetETm07wi.png', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:52:03', '2021-02-12 14:56:43', 7),
(8, 4, NULL, 'Bengali', '/assets/img/slider/1613141592joeSsKGhbb.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:53:12', '2021-02-12 14:53:12', 8),
(9, 4, NULL, 'North Indian', '/assets/img/slider/1613141908UbzRf7ykQD.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 14:58:28', '2021-02-12 17:26:33', 9),
(10, 4, NULL, 'Fast Food', '/assets/img/slider/1613142028Tyv5rryem1.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:00:29', '2021-02-12 15:00:29', 10),
(11, 4, NULL, 'Biryani', '/assets/img/slider/1613142123VkzUuKkuxL.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:02:04', '2021-02-12 15:02:04', 11),
(12, 4, NULL, 'Roll & Sandwitch', '/assets/img/slider/16131422491FdkoetplD.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:04:09', '2021-02-12 15:04:09', 12),
(13, 4, NULL, 'Burgers', '/assets/img/slider/1613142328JiHGAknDEa.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:05:28', '2021-02-12 15:05:28', 13),
(14, 5, NULL, 'Soup', '/assets/img/slider/1613142667lAZj6Pqo33.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:11:07', '2021-02-12 15:11:07', 14),
(15, 5, NULL, 'Momos', '/assets/img/slider/1613142733D9v5yqpxwi.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:12:14', '2021-02-12 15:12:14', 15),
(16, 5, NULL, 'Shukto', '/assets/img/slider/1613142872e0duYBF9WO.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:14:32', '2021-02-12 15:14:32', 16),
(17, 5, NULL, 'Chicken', '/assets/img/slider/1613142910ebxCgoRPVY.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:15:11', '2021-02-12 15:15:11', 17),
(18, 5, NULL, 'Pizza', '/assets/img/slider/1613142939dpEN8qmvC3.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:15:39', '2021-02-12 15:15:39', 18),
(19, 5, NULL, 'Biryani', '/assets/img/slider/1613142971PVIJbhlRWa.jpg', NULL, 'stores/pureeats-restaurant-k62gqi7ar8tw4zq', 1, '2021-02-12 15:16:11', '2021-02-12 15:16:11', 19);

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `gateway_name`, `created_at`, `updated_at`) VALUES
(1, 'MSG91', '2021-01-10 02:58:37', '2021-01-10 02:58:37'),
(2, 'TWILIO', '2021-01-10 02:58:37', '2021-01-10 02:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `sms_otps`
--

CREATE TABLE `sms_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_otps`
--

INSERT INTO `sms_otps` (`id`, `otp`, `phone`, `created_at`, `updated_at`) VALUES
(1, '23667', '8016626642', '2021-01-16 14:38:44', '2021-02-14 13:04:52'),
(2, '26470', '9812345678', '2021-02-22 11:05:56', '2021-05-20 18:35:51'),
(3, '41158', '1234567892', '2021-02-22 15:38:23', '2021-02-22 15:38:23'),
(4, '43679', '9612345678', '2021-04-21 17:58:08', '2021-11-19 15:48:16'),
(5, '23506', '9812345670', '2021-05-05 16:00:35', '2021-11-15 20:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `store_payout_details`
--

CREATE TABLE `store_payout_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_warnings`
--

CREATE TABLE `store_warnings` (
  `id` int(11) NOT NULL,
  `alert_type` varchar(100) NOT NULL DEFAULT 'STORE_OPERATIONAL',
  `message` varchar(250) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `target_stores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_warnings`
--

INSERT INTO `store_warnings` (`id`, `alert_type`, `message`, `is_active`, `target_stores`) VALUES
(1, 'STORE_OPERATIONAL', 'hello', 0, '1,2'),
(2, 'GENERAL', 'general warnings', 0, NULL),
(3, 'STORE_OPERATIONAL', 'hello', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `payable_type`, `payable_id`, `wallet_id`, `type`, `amount`, `confirmed`, `meta`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 4, 4, 'deposit', 500000, 1, '{\"description\":\"test\"}', 'bc3a591f-e781-464f-bc4b-552927b941b7', '2021-02-06 20:09:34', '2021-02-06 20:09:34'),
(2, 'App\\User', 4, 4, 'withdraw', -455000, 1, '{\"description\":\"test\"}', '9040995c-823b-4690-ad09-7c787b6f1c31', '2021-02-06 22:59:51', '2021-02-06 22:59:51'),
(3, 'App\\User', 4, 4, 'withdraw', -40000, 1, '{\"description\":\"test\"}', 'dae11605-8926-400d-964d-22b2085d8672', '2021-02-06 23:00:35', '2021-02-06 23:00:35'),
(4, 'App\\User', 4, 4, 'withdraw', -5000, 1, '{\"description\":\"Partial payment for order:PUR0000000067\"}', 'ebd0fe6b-4cf7-44a4-82c8-2c96097c92ea', '2021-02-08 22:42:13', '2021-02-08 22:42:13'),
(5, 'App\\User', 4, 4, 'deposit', 6000, 1, '{\"description\":\"test\"}', '25df312e-4508-4b4f-b0eb-e23bb5e8659b', '2021-02-08 22:43:41', '2021-02-08 22:43:41'),
(6, 'App\\User', 4, 4, 'withdraw', -6000, 1, '{\"description\":\"Partial payment for order:PUR0000000068\"}', 'b3fedf94-3fe7-4d23-88e2-214f4f2bebb7', '2021-02-08 22:45:47', '2021-02-08 22:45:47'),
(7, 'App\\User', 4, 4, 'deposit', 2000, 1, '{\"description\":\"test\"}', 'baf84d46-097a-4163-834b-85978a4fdaf2', '2021-03-30 17:24:03', '2021-03-30 17:24:03'),
(8, 'App\\User', 4, 4, 'withdraw', -2000, 1, '{\"description\":\"Partial payment for order:PUR0000000121\"}', 'edf8f763-df9f-4eee-953b-077c544d7049', '2021-03-30 18:22:09', '2021-03-30 18:22:09'),
(9, 'App\\User', 48, 7, 'deposit', 209325, 1, '{\"description\":\"Refund for order cancellation.PUR0000000140\"}', '6cca1749-cfb4-468b-b3df-965b32b1cb5b', '2021-05-11 22:08:37', '2021-05-11 22:08:37'),
(10, 'App\\User', 3, 3, 'deposit', 20932, 1, '{\"description\":\"Commission for order:PUR0000000174\"}', '10cff634-fef1-49f3-a9a4-a54aee2eca7a', '2021-05-20 19:20:09', '2021-05-20 19:20:09'),
(11, 'App\\User', 3, 3, 'deposit', 17770, 1, '{\"description\":\"Commission for order:PUR0000000174\"}', '1ddd8d97-2fd0-47cf-9344-235280749004', '2021-05-19 19:23:31', '2021-05-20 19:23:31'),
(12, 'App\\User', 3, 3, 'deposit', 17770, 1, '{\"description\":\"Commission for order:PUR0000000175\"}', '60313b71-5dc7-4765-866f-d471a306823b', '2021-05-22 17:07:57', '2021-05-22 17:07:57'),
(13, 'App\\User', 3, 3, 'deposit', 17770, 1, '{\"description\":\"Commission for order:PUR0000000181\"}', 'd32b49fd-6f6c-4eaa-9e44-79dbc5b75557', '2021-05-22 18:17:34', '2021-05-22 18:17:34'),
(14, 'App\\User', 3, 3, 'deposit', 17770, 1, '{\"description\":\"Commission for order:PUR0000000184\"}', 'fc605d35-68d5-4d7f-8f9c-3e746cbe0b79', '2021-05-22 20:09:35', '2021-05-22 20:09:35'),
(15, 'App\\User', 48, 7, 'withdraw', -202875, 1, '{\"description\":\"Payment for order:PUR0000000199\"}', 'fa969918-2c17-4bf7-8fb0-8c3e5c9cd715', '2021-08-16 14:13:22', '2021-08-16 14:13:22'),
(16, 'App\\User', 48, 7, 'deposit', 202875, 1, '{\"description\":\"Refund for order cancellation.PUR0000000199\"}', '6f37c0ed-174f-48ba-96f7-5334e07805e9', '2021-08-16 14:14:40', '2021-08-16 14:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` int(10) UNSIGNED NOT NULL,
  `withdraw_id` int(10) UNSIGNED NOT NULL,
  `discount` bigint(20) NOT NULL DEFAULT 0,
  `fee` bigint(20) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `language_name`, `data`, `created_at`, `updated_at`, `is_default`, `is_active`) VALUES
(1, 'English', '{\"desktopHeading\":\"Order from restaurants near you\",\"desktopSubHeading\":\"Foodomaa is the easy way to get the food you love delivered.\\r\\nWe bring food from the best restaurants and desserts to your doorstep. We have <b style=\\\"\\\">hundreds<\\/b> of restaurants to choose from.\",\"desktopUseAppButton\":\"Use App Now\",\"desktopAchievementOneTitle\":\"Restaurants\",\"desktopAchievementOneSub\":\"2300+\",\"desktopAchievementTwoTitle\":\"Items\",\"desktopAchievementTwoSub\":\"65000+\",\"desktopAchievementThreeTitle\":\"Customers\",\"desktopAchievementThreeSub\":\"1M+\",\"desktopAchievementFourTitle\":\"Deliveries\",\"desktopAchievementFourSub\":\"5M+\",\"desktopFooterAddress\":\"<p>#1201, Someplace, Near Somewhere<\\/p><p><a href=\\\"\\/pages\\/hello-world\\\" target=\\\"_blank\\\">Cookie Policy<\\/a><br><\\/p>\",\"desktopFooterSocialHeader\":\"We Are Social\",\"desktopSocialFacebookLink\":\"https:\\/\\/www.facebook.com\",\"desktopSocialGoogleLink\":\"https:\\/\\/www.google.com\",\"desktopSocialYoutubeLink\":null,\"desktopSocialInstagramLink\":\"https:\\/\\/www.instagram.com\",\"gdprMessage\":\"<p>We use Cookies to give you the best possible service. By continuing to browse our site you are agreeing to our use of <b>Cookies.&nbsp;&nbsp;<\\/b><a href=\\\"https:\\/\\/en.wikipedia.org\\/wiki\\/HTTP_cookie\\\" target=\\\"_blank\\\" style=\\\"background-color: rgb(255, 255, 255); font-size: 0.9rem;\\\">Read About Cookies<\\/a><\\/p>\",\"gdprConfirmButton\":\"Okay\",\"changeLanguageText\":\"Change Language\",\"firstScreenHeading\":\"Order from top & favourite restaurants\",\"firstScreenSubHeading\":\"Ready to see top restaurant to order?\",\"firstScreenSetupLocation\":\"setup your location\",\"firstScreenWelcomeMessage\":\"Welcome,\",\"firstScreenLoginText\":\"Have an account?\",\"firstScreenLoginBtn\":\"Login\",\"loginErrorMessage\":\"Woopss!! Something went wrong. Please try again.\",\"pleaseWaitText\":\"Please Wait...\",\"loginLoginTitle\":\"LOGIN\",\"loginLoginSubTitle\":\"Enter your email and password\",\"loginLoginEmailLabel\":\"Email\",\"loginLoginPasswordLabel\":\"Password\",\"loginDontHaveAccount\":\"Don\'t have an account yet?\",\"firstScreenRegisterBtn\":\"Register\",\"registerRegisterTitle\":\"Register\",\"registerRegisterSubTitle\":\"Regsiter now for free\",\"loginLoginNameLabel\":\"Name\",\"loginLoginPhoneLabel\":\"Phone\",\"regsiterAlreadyHaveAccount\":\"Already have an account?\",\"fieldValidationMsg\":\"This is a required field.\",\"nameValidationMsg\":\"Please enter your full name.\",\"emailValidationMsg\":\"Please enter a valid email.\",\"phoneValidationMsg\":\"Please enter a phone number in this format: +1123456789\",\"minimumLengthValidationMessage\":\"This field must be at least 8 characters long.\",\"emailPhoneAlreadyRegistered\":\"Email or Phone has already been registered.\",\"emailPassDonotMatch\":\"Email & Password do not match.\",\"enterPhoneToVerify\":\"Please enter your phone number to verify\",\"invalidOtpMsg\":\"Invalid OTP. Please check and try again.\",\"otpSentMsg\":\"An OTP has been sent to\",\"resendOtpMsg\":\"Resend OTP to\",\"resendOtpCountdownMsg\":\"Resend OTP in\",\"verifyOtpBtnText\":\"Verify OTP\",\"socialWelcomeText\":\"Hi\",\"socialLoginOrText\":\"OR\",\"forgotPasswordLinkText\":\"Forgot Password?\",\"resetPasswordPageTitle\":\"Reset Password\",\"resetPasswordPageSubTitle\":\"Enter your email address to continue\",\"userNotFoundErrorMessage\":\"No user found with this email.\",\"invalidOtpErrorMessage\":\"Invalid OTP Entered\",\"sendOtpOnEmailButtonText\":\"Send OTP on Email\",\"alreadyHaveResetOtpButtonText\":\"I already have an OTP\",\"dontHaveResetOtpButtonText\":\"I dont have an OTP\",\"enterResetOtpMessageText\":\"Enter the OTP sent to you email\",\"verifyResetOtpButtonText\":\"Verify OTP\",\"enterNewPasswordText\":\"Please enter a new password below\",\"newPasswordLabelText\":\"New Password\",\"setNewPasswordButtonText\":\"Set New Password\",\"registrationPolicyMessage\":null,\"customHomeMessage\":\"<p><br><\\/p>\",\"deliveryTypeDelivery\":\"Delivery\",\"deliveryTypeSelfPickup\":\"Self Pickup\",\"noRestaurantMessage\":\"No restaurants are available.\",\"restaurantCountText\":\"Restaurants Near You\",\"restaurantFeaturedText\":\"Featured\",\"homePageMinsText\":\"MINS\",\"homePageForTwoText\":\"FOR TWO\",\"footerNearme\":\"Near Me\",\"footerExplore\":\"Explore\",\"footerCart\":\"Cart\",\"footerAccount\":\"Account\",\"footerAlerts\":\"Alerts\",\"exploreNoResults\":\"No Items or Restaurants Found\",\"restaurantNotActiveMsg\":\"Not Accepting Orders\",\"mockSearchPlaceholder\":\"Search for stores or items...\",\"markAllAlertReadText\":\"Mark all read\",\"noNewAlertsText\":\"No new alerts\",\"restaurantSearchPlaceholder\":\"Search for restaurants\",\"exploreRestautantsText\":\"RESTAURANTS\",\"exploreItemsText\":\"ITEMS\",\"searchAtleastThreeCharsMsg\":\"Enter at least 3 characters to search.\",\"exlporeByRestaurantText\":\"By\",\"recommendedBadgeText\":\"Recommended\",\"popularBadgeText\":\"Popular\",\"newBadgeText\":\"New\",\"itemsPageRecommendedText\":\"RECOMMENDED\",\"floatCartViewCartText\":\"View Cart\",\"floatCartItemsText\":\"Items\",\"customizableItemText\":\"Customizable\",\"customizationHeading\":\"Customizations\",\"customizationDoneBtnText\":\"Continue\",\"pureVegText\":\"Pure Veg\",\"certificateCodeText\":\"Certificate Code:\",\"showMoreButtonText\":\"Show More\",\"showLessButtonText\":\"Show Less\",\"notAcceptingOrdersMsg\":\"Currently Not Accepting Any Orders\",\"itemSearchPlaceholder\":\"Search for items...\",\"itemSearchText\":\"Search results for:\",\"itemSearchNoResultText\":\"No results found for:\",\"itemsMenuButtonText\":\"MENU\",\"itemPercentageDiscountText\":\"% OFF\",\"customCartMessage\":\"<p><br><\\/p>\",\"cartPageTitle\":\"Cart\",\"cartItemsInCartText\":\"Items in Cart\",\"cartEmptyText\":\"Your Cart is Empty\",\"cartSuggestionPlaceholder\":\"Write your comment\\/suggestion for the restaurant...\",\"cartCouponText\":\"Coupon\",\"cartApplyCoupon\":\"Coupon Applied\",\"cartInvalidCoupon\":\"Invalid Coupon\",\"cartCouponOffText\":\"OFF\",\"couponNotLoggedin\":\"Login to apply coupon\",\"applyCouponButtonText\":\"Apply\",\"cartBillDetailsText\":\"Bill Details\",\"cartItemTotalText\":\"Item Total\",\"cartToPayText\":\"To Pay\",\"cartDeliveryCharges\":\"Delivery Charges\",\"cartRestaurantCharges\":\"Restaurant Charges\",\"cartSetYourAddress\":\"Set Your Address\",\"buttonNewAddress\":\"New Address\",\"cartChangeLocation\":\"Change\",\"cartDeliverTo\":\"Deliver To\",\"checkoutSelectPayment\":\"Proceed to Checkout\",\"cartLoginHeader\":\"Almost There\",\"cartLoginSubHeader\":\"Login or Signup to place your order\",\"cartLoginButtonText\":\"Continue\",\"selectedSelfPickupMessage\":\"You have selected Self Pickup.\",\"taxText\":\"Tax\",\"itemsRemovedMsg\":\"Items added from the previous restaurant have been removed.\",\"ongoingOrderMsg\":\"You have some on-going orders. VIEW\",\"cartRestaurantNotOperational\":\"Restaurant is not operational on your selected location.\",\"restaurantMinOrderMessage\":\"Min cart value should be atleast\",\"cartRemoveItemButton\":\"Remove Item\",\"cartItemNotAvailable\":\"Item Not Available\",\"orderTextTotal\":\"Total\",\"tipText\":\"Delivery Tip\",\"tipsForDeliveryText\":\"Tip your delivery partner\",\"tipsThanksText\":\"Thank your delivery partner for helping you stay safe indoors. Support them through these tough times with a tip.\",\"tipsOtherText\":\"Other\",\"deliveryTipTransactionMessage\":\"Delivery Tip:\",\"cartRemoveTipText\":\"Remove Tip\",\"cartTipAmountPlaceholderText\":\"Tip Amount\",\"cartTipPercentagePlaceholderText\":\"Tip percentage\",\"checkoutPageTitle\":\"Checkout\",\"checkoutPaymentListTitle\":\"Select your prefered payment method\",\"checkoutPaymentInProcess\":\"Payment in process. Do not hit refresh or go back.\",\"checkoutStripeText\":\"Stripe\",\"checkoutStripeSubText\":\"Online Payment\",\"checkoutCodText\":\"COD\",\"checkoutCodSubText\":\"Cash On Delivery\",\"paystackPayText\":\"Pay with PayStack\",\"checkoutPaytmText\":\"Paytm\",\"checkoutPaytmSubText\":\"Pay with Paytm Wallet | Credit\\/Debit Card\",\"checkoutRazorpayText\":\"Razorpay\",\"checkoutRazorpaySubText\":\"Pay with cards, wallet or UPI\",\"userInActiveMessage\":\"You are banned from placing orders\",\"tooManyApiCallMessage\":\"Please try again in a minute...\",\"checkoutStripeIdealText\":\"Stripe Ideal\",\"checkoutStripeIdealSubText\":\"Pay with Ideal Netherlands\",\"checkoutStripeFpxText\":\"Stripe FPX\",\"checkoutStripeFpxSubText\":\"Pay with FPX Malaysia\",\"checkoutMercadoPagoText\":\"MercadoPago\",\"checkoutMercadoPagoSubText\":\"Pay with MerecadoPago for Brazil\",\"checkoutPayMongoText\":\"Pay with PayMongo\",\"checkoutPayMongoSubText\":\"Pay with PayMongo for Philippines\",\"checkoutPayText\":\"Pay\",\"checkoutCardNumber\":\"Card Number\",\"checkoutCardExpiration\":\"Expiration\",\"checkoutCardCvv\":\"CVV\",\"checkoutCardPostalCode\":\"Postal Code\",\"checkoutCardFullname\":\"Full Name\",\"checkoutIdealSelectBankText\":\"Select Bank\",\"checkoutFpxSelectBankText\":\"Select Bank\",\"runningOrderPlacedTitle\":\"Order Placed Successfully\",\"runningOrderPlacedSub\":\"Waiting for the restaurant to confirm your order\",\"runningOrderPreparingTitle\":\"Chef at work!!\",\"runningOrderPreparingSub\":\"Restaurant is preparing your order\",\"runningOrderOnwayTitle\":\"Vroom Vroom!!\",\"runningOrderOnwaySub\":\"Order has been picked up and is on its way\",\"runningOrderDeliveryAssignedTitle\":\"Delivery Guy Assigned\",\"runningOrderDeliveryAssignedSub\":\"On the way to pick up your order.\",\"runningOrderCanceledTitle\":\"Order Canceled\",\"runningOrderCanceledSub\":\"Sorry. Your order has been canceled.\",\"runningOrderReadyForPickup\":\"Food is Ready\",\"runningOrderReadyForPickupSub\":\"Your order is ready for self pickup.\",\"awaitingPaymentStatusText\":\"Awaiting Payment\",\"paymentFailedStatusText\":\"Payment Failed\",\"runningOrderDelivered\":\"Order Delivered\",\"runningOrderDeliveredSub\":\"The order has been delivered to you. Enjoy.\",\"runningOrderRefreshButton\":\"Refresh Order Status\",\"deliveryGuyAfterName\":\"is your delivery valet today.\",\"vehicleText\":\"Vehicle:\",\"callNowButton\":\"Call Now\",\"allowLocationAccessMessage\":\"Kindly allow location access for live tracking.\",\"trackOrderText\":\"Track Order\",\"orderPlacedStatusText\":\"Order Placed\",\"preparingOrderStatusText\":\"Preparing Order\",\"deliveryGuyAssignedStatusText\":\"Delivery Guy Assigned\",\"orderPickedUpStatusText\":\"Order Picked Up\",\"deliveredStatusText\":\"Delivered\",\"canceledStatusText\":\"Canceled\",\"readyForPickupStatusText\":\"Ready For Pickup\",\"deliveryGuyNewOrderNotificationMsg\":\"A New Order is Waiting !!!\",\"deliveryGuyNewOrderNotificationMsgSub\":\"New Order Notification\",\"runningOrderDeliveryPin\":\"Delivery Pin:\",\"awaitingPaymentTitle\":\"Awaiting Payment\",\"awaitingPaymentSubTitle\":\"Awaiting payment from your bank. Order will be canceled if not processed in time.\",\"orderDetailsPaymentMode\":\"Payment Mode:\",\"accountMyAccount\":\"My Account\",\"accountManageAddress\":\"Manage Address\",\"addressDoesnotDeliverToText\":\"Does not deliver to\",\"accountMyOrders\":\"My Orders\",\"accountHelpFaq\":\"Help & FAQs\",\"accountLogout\":\"Logout\",\"accountMyWallet\":\"My Wallet\",\"noOrdersText\":\"You have not placed any order yet.\",\"orderCancelledText\":\"Order Cancelled\",\"chooseAvatarText\":\"Choose your avatar\",\"searchAreaPlaceholder\":\"Search your area...\",\"searchPopularPlaces\":\"Popular Places\",\"useCurrentLocationText\":\"Use Current Location\",\"gpsAccessNotGrantedMsg\":\"GPS access is not granted or was denied.\",\"yourLocationText\":\"YOUR LOCATION\",\"editAddressAddress\":\"Address\",\"editAddressTag\":\"Tag\",\"addressTagPlaceholder\":\"Eg. Home, Work\",\"buttonSaveAddress\":\"Save Address\",\"locationSavedAddresses\":\"Saved Addresses\",\"deleteAddressText\":\"Delete\",\"noAddressText\":\"You don\'t have any saved addresses.\",\"noWalletTransactionsText\":\"No Wallet Transactions Yet!!!\",\"walletDepositText\":\"Deposit\",\"walletWithdrawText\":\"Withdraw\",\"payPartialWithWalletText\":\"Pay partial amount with wallet\",\"willbeDeductedText\":\"will be deducted from your balance of\",\"payFullWithWalletText\":\"Pay full amount with Wallet.\",\"orderPaymentWalletComment\":\"Payment for order:\",\"orderPartialPaymentWalletComment\":\"Partial payment for order:\",\"orderRefundWalletComment\":\"Refund for order cancellation.\",\"orderPartialRefundWalletComment\":\"Partial Refund for order cancellation.\",\"walletRedeemBtnText\":\"Redeem\",\"cancelOrderMainButton\":\"Cancel Order\",\"willBeRefundedText\":\"will be refunded back to your wallet.\",\"willNotBeRefundedText\":\"No Refund will be made to your wallet as the restaurant has already prepared the order.\",\"orderCancellationConfirmationText\":\"Do you want to cancel this order?\",\"yesCancelOrderBtn\":\"Yes, Cancel Order\",\"cancelGoBackBtn\":\"Go back\",\"deliveryWelcomeMessage\":\"Welcome\",\"deliveryAcceptedOrdersTitle\":\"Accepted Orders\",\"deliveryNoOrdersAccepted\":\"No Orders Accepted Yet\",\"deliveryNewOrdersTitle\":\"New Orders\",\"deliveryNoNewOrders\":\"No New Orders Yet\",\"deliveryPickedupOrdersTitle\":\"Picked-up Orders\",\"deliveryNoPickedupOrdersMsg\":\"No Picked-up orders in queue.\",\"deliveryOrderItems\":\"Order Items\",\"deliveryRestaurantAddress\":\"Restaurant Address\",\"deliveryDeliveryAddress\":\"Delivery Address\",\"deliveryGetDirectionButton\":\"Get Direction\",\"deliveryOnlinePayment\":\"Online Payment\",\"deliveryCashOnDelivery\":\"Cash On Delivery\",\"deliveryDeliveryPinPlaceholder\":\"ENTER DELIVERY PIN\",\"deliveryAcceptOrderButton\":\"Accept\",\"deliveryPickedUpButton\":\"Picked Up\",\"deliveryDeliveredButton\":\"Delivered\",\"deliveryOrderCompletedButton\":\"Order Completed\",\"deliveryAlreadyAccepted\":\"This delivery has been accepted by someone else.\",\"deliveryInvalidDeliveryPin\":\"Incorrect delivery pin. Please try again.\",\"deliveryLogoutDelivery\":\"Logout\",\"deliveryLogoutConfirmation\":\"Are you sure?\",\"deliveryOrdersRefreshBtn\":\"Refresh\",\"deliveryOrderPlacedText\":\"Order Placed\",\"deliveryFooterNewTitle\":\"New Orders\",\"deliveryFooterAcceptedTitle\":\"Accepted\",\"deliveryFooterPickedup\":\"Picked-Up\",\"deliveryFooterAccount\":\"Account\",\"deliveryEarningsText\":\"Earnings\",\"deliveryCollectionText\":\"COD In-Hand\",\"deliveryOnGoingText\":\"On-Going\",\"deliveryCompletedText\":\"Completed\",\"deliveryCommissionMessage\":\"Commission for order:\",\"updatingMessage\":\"Updating Foodomaa\",\"categoriesFiltersText\":\"Filters\",\"categoriesNoRestaurantsFoundText\":\"No Restaurants Found\",\"deliveryTotalEarningsText\":\"Total Earnings\",\"deliveryUsePhoneToAccessMsg\":\"Use your mobile phone to login into the Delivery Application.\",\"deliveryMaxOrderReachedMsg\":\"Max Order Reached\",\"deliveryEarningCommissionText\":\"Commission:\",\"deliveryEarningTipText\":\"Delivery Tip:\",\"deliveryEarningTotalEarningText\":\"Total Earnings\",\"deliveryLastSevenDaysEarningTitle\":\"Last 7 Days Earning\",\"inAppCloseButton\":\"Close\",\"inAppOpenLinkButton\":\"Open\",\"iOSPWAPopupTitle\":\"Add to Home Screen\",\"iOSPWAPopupBody\":\"This website has app functionality. Add it to your home screen to use it in fullscreen and while offline.\",\"iOSPWAPopupShareButtonLabel\":\"1) Press the \'Share\' button\",\"iOSPWAPopupAddButtonLabel\":\"2) Press \'Add to Home Screen\'\",\"iOSPWAPopupCloseButtonLabel\":\"Cancel\",\"offlineTitleMessage\":\"You Are Offline\",\"offlineSubTitleMessage\":\"Please check your internet connection.\",\"RestaurantRating\":\"Restaurant Rating\",\"LeaveQualification\":\"Leave a qualification for the restaurant below\",\"LeaveQualificationDeliveryGuy\":\"Leave a qualification for the Delivery  Guy below\",\"DeliveryGuyRating\":\"Delivery Guy Rating\",\"SAVE\":\"SAVE\"}', '2021-01-10 02:58:37', '2021-02-20 00:16:34', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT 0,
  `delivery_pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_guy_detail_id` int(11) DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_email_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `auth_token`, `phone`, `default_address_id`, `delivery_pin`, `delivery_guy_detail_id`, `avatar`, `referral_code`, `is_active`, `meta`) VALUES
(1, 'Arpan Jana', 'arpangroup1@gmail.com', 0, NULL, '$2y$10$PhCWYKTikA9JMPp45XgdF.r6jALDjswFhBuZn30jOBKkzbp2r/W2G', 'Tee5CCuOlQQvMR3hDkeih2O14oSikUejNfebGvZpv0Mo7dt0R6mNE4WIgx3l', '2021-01-10 02:58:37', '2021-01-10 02:58:37', NULL, 2147483647, 0, 'EQJFU', NULL, NULL, NULL, 1, NULL),
(2, 'Mintu Jha', 'mintu@gmail.com', 0, NULL, '$2y$10$qgeMHUi3mFLYPqWySfbl..iW8Yvm81jIlfqAZ4Je8RO46d1Lf1eJK', '4yMTaoVvA1zd4fNvhNYymzYbbWGiR2f5apKOaYTBsv68G8jQzUxdHOelnOvN', '2021-01-10 15:11:53', '2021-01-10 15:11:53', NULL, 1234567890, 0, 'OYJJ8', NULL, NULL, NULL, 1, NULL),
(3, 'Arpan Delivery', 'delvery@gmail.com', 0, NULL, '$2y$10$oKZAvGuEMdt/eSScvmfonenj3Zk2Lcrl94Xok4cXNbfEoQdVbt.Sa', NULL, '2021-01-10 16:07:05', '2021-05-21 17:42:03', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4wLjEwMDo4MDAwL2FwaS9kZWxpdmVyeS9sb2dpbiIsImlhdCI6MTYyMTYxODkyMywibmJmIjoxNjIxNjE4OTIzLCJqdGkiOiJFaFFtMDNtRW5aNUlVRWZ4Iiwic3ViIjozLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.g_IDMjt_f5JX17rNKnzU8hXYGD_DMCdoOXtEhJhLaa4', 2147483647, 0, 'IXRGI', 1, NULL, NULL, 1, NULL),
(48, 'Customer1', 'customer@gmail.com', 0, NULL, '$2y$10$pw1ObCW19HsSTS6.K5A9W.fQbPXaqBXJURzeUaLVq/WnnFzvW9VEa', NULL, '2021-04-21 17:58:07', '2021-11-20 14:32:33', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2xvY2FsaG9zdC9QdXJlRWF0cy92Mi40LjEvcHVibGljL2FwaS9yZWdpc3RlciIsImlhdCI6MTYxOTAyNzg4NywibmJmIjoxNjE5MDI3ODg3LCJqdGkiOiJDblBIQWVMeVg0NkdQTzBtIiwic3ViIjo0OCwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.mh1Vk9JWqPfoC-6ZSjAQ_EetrFtatCw9Mh_Xlsxa4ZQ', 2147483647, 9, 'PXR3U', NULL, NULL, NULL, 1, '{\"incrementalVersionCode\":\"V12.0.5.0.QFHINXM\",\"type\":\"user\",\"MAC\":\"08:25:25:A3:A9:0C\",\"manufacturer\":\"Xiaomi\",\"wifiIP\":\"192.168.1.103\",\"serial\":\"unknown\",\"fingerprint\":\"xiaomi\\/violet\\/violet:10\\/QKQ1.190915.002\\/V12.0.5.0.QFHINXM:user\\/release-keys\",\"releaseVersionCode\":\"10\",\"host\":\"c4-miui-ota-bd187.bj\",\"model\":\"Redmi Note 7 Pro\",\"baseVersionCode\":\"1\",\"location\":null,\"id\":\"QKQ1.190915.002\",\"sdk\":\"29\",\"UUID\":\"417b9c903acbaa7a\",\"brand\":\"xiaomi\",\"user\":\"builder\",\"board\":\"violet\"}'),
(49, 'Testing DeliveryGuy1', 'delivery1@gmail.com', 0, NULL, '$2y$10$9NECTx70.NNg9urb2pDEWO2IE57xMLhqu8l2NmkR4E5FAV0A/mb.q', 'APaLTUoGzPkyZ5bO5gkem8L3Vx6NtlRV8vZlCSxM5AZmc3n0oz4K3xOIL8uX', '2021-05-01 15:29:09', '2021-05-20 18:36:20', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4wLjEwMDo4MDAwL2FwaS9kZWxpdmVyeS9sb2dpbiIsImlhdCI6MTYyMTUzNTc4MCwibmJmIjoxNjIxNTM1NzgwLCJqdGkiOiI3d1hIZEFaOGE1V1I1dnV5Iiwic3ViIjo0OSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.7fFdeMNLa95m-M3SBwDAtZJH2LTDeT0T5STzOUVEAqw', 2147483647, 0, 'OEMLE', 2, NULL, NULL, 1, NULL),
(50, 'Mohan', 'mohan@gmail.com', 0, NULL, '$2y$10$tj7s5Xm0v14rs9J5gMkMxO3CjFshaSAGl.fZpKa.o7YpbxlQFm7kq', NULL, '2021-05-11 22:20:03', '2021-05-11 22:20:03', NULL, 2147483647, 0, 'X7MUJ', 3, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT 0,
  `default_address_id` int(10) NOT NULL,
  `referral_code` varchar(50) NOT NULL,
  `meta` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'Default Wallet', 'default', NULL, 0, 2, '2021-01-10 15:11:05', '2021-01-10 15:11:05'),
(2, 'App\\User', 2, 'Default Wallet', 'default', NULL, 0, 2, '2021-01-10 15:11:56', '2021-01-10 15:11:56'),
(3, 'App\\User', 3, 'Default Wallet', 'default', NULL, 92012, 2, '2021-01-10 16:07:08', '2021-05-22 20:09:35'),
(4, 'App\\User', 4, 'Default Wallet', 'default', NULL, 0, 2, '2021-01-16 14:38:48', '2021-03-30 18:22:09'),
(5, 'App\\User', 11, 'Default Wallet', 'default', NULL, 0, 2, '2021-02-22 15:38:25', '2021-02-22 15:38:25'),
(6, 'App\\User', 12, 'Default Wallet', 'default', NULL, 0, 2, '2021-03-30 17:10:26', '2021-03-30 17:10:26'),
(7, 'App\\User', 48, 'Default Wallet', 'default', NULL, 209325, 2, '2021-04-21 17:58:11', '2021-08-16 14:14:40'),
(8, 'App\\User', 49, 'Default Wallet', 'default', NULL, 0, 2, '2021-05-01 15:44:06', '2021-05-01 15:44:06'),
(9, 'App\\User', 50, 'Default Wallet', 'default', NULL, 0, 2, '2021-05-11 22:20:06', '2021-05-11 22:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept_deliveries`
--
ALTER TABLE `accept_deliveries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accept_deliveries_order_id_unique` (`order_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_categories`
--
ALTER TABLE `addon_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_category_item`
--
ALTER TABLE `addon_category_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_restaurant`
--
ALTER TABLE `coupon_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_area_restaurant`
--
ALTER TABLE `delivery_area_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_collections`
--
ALTER TABLE `delivery_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_collection_logs`
--
ALTER TABLE `delivery_collection_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_guy_details`
--
ALTER TABLE `delivery_guy_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_otps`
--
ALTER TABLE `email_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_name_unique` (`name`);

--
-- Indexes for table `login_sessions`
--
ALTER TABLE `login_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item_addons`
--
ALTER TABLE `order_item_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway_restaurant`
--
ALTER TABLE `payment_gateway_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_geo_places`
--
ALTER TABLE `popular_geo_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_sliders`
--
ALTER TABLE `promo_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_tokens`
--
ALTER TABLE `push_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `rating_delivery_guys`
--
ALTER TABLE `rating_delivery_guys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_delivery_guys_user_id_foreign` (`user_id`),
  ADD KEY `rating_delivery_guys_order_id_foreign` (`order_id`);

--
-- Indexes for table `rating_stores`
--
ALTER TABLE `rating_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_stores_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `rating_stores_user_id_foreign` (`user_id`),
  ADD KEY `rating_stores_order_id_foreign` (`order_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_sku_unique` (`sku`),
  ADD UNIQUE KEY `restaurants_slug_unique` (`slug`);

--
-- Indexes for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_category_restaurant`
--
ALTER TABLE `restaurant_category_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_category_sliders`
--
ALTER TABLE `restaurant_category_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_earnings`
--
ALTER TABLE `restaurant_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_payouts`
--
ALTER TABLE `restaurant_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_otps`
--
ALTER TABLE `sms_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_payout_details`
--
ALTER TABLE `store_payout_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_warnings`
--
ALTER TABLE `store_warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_deliveries`
--
ALTER TABLE `accept_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `addon_categories`
--
ALTER TABLE `addon_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addon_category_item`
--
ALTER TABLE `addon_category_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_restaurant`
--
ALTER TABLE `coupon_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_area_restaurant`
--
ALTER TABLE `delivery_area_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_collections`
--
ALTER TABLE `delivery_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_collection_logs`
--
ALTER TABLE `delivery_collection_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_guy_details`
--
ALTER TABLE `delivery_guy_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `email_otps`
--
ALTER TABLE `email_otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT for table `order_item_addons`
--
ALTER TABLE `order_item_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_gateway_restaurant`
--
ALTER TABLE `payment_gateway_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_geo_places`
--
ALTER TABLE `popular_geo_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_sliders`
--
ALTER TABLE `promo_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `push_tokens`
--
ALTER TABLE `push_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rating_delivery_guys`
--
ALTER TABLE `rating_delivery_guys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating_stores`
--
ALTER TABLE `rating_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restaurant_categories`
--
ALTER TABLE `restaurant_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_category_restaurant`
--
ALTER TABLE `restaurant_category_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_category_sliders`
--
ALTER TABLE `restaurant_category_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_earnings`
--
ALTER TABLE `restaurant_earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_payouts`
--
ALTER TABLE `restaurant_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_user`
--
ALTER TABLE `restaurant_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `route_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_otps`
--
ALTER TABLE `sms_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_payout_details`
--
ALTER TABLE `store_payout_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_warnings`
--
ALTER TABLE `store_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rating_delivery_guys`
--
ALTER TABLE `rating_delivery_guys`
  ADD CONSTRAINT `rating_delivery_guys_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_delivery_guys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_stores`
--
ALTER TABLE `rating_stores`
  ADD CONSTRAINT `rating_stores_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_stores_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
