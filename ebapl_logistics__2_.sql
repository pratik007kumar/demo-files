-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: ebapllogistics.einfachbi.com
-- Generation Time: May 13, 2019 at 04:13 AM
-- Server version: 5.7.25-log
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebapl_logistics`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phcalling_code` tinyint(4) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilecalling_code` tinyint(4) DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `customer_id`, `address`, `landmark`, `country_id`, `state_id`, `city_id`, `pincode`, `phcalling_code`, `phone`, `mobilecalling_code`, `mobile`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 1, 'dankuni', 'water tank, naiti', 1, 30, 1134, '711312', 91, '(936) 745-4356', 91, '(823) 645-7534', 1, '2019-05-07 15:19:04', '2019-05-07 15:19:04', NULL),
(27, 1, 'gurugram', 'durga mandir', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-07 15:19:04', '2019-05-07 15:19:04', NULL),
(28, 1, 'dankuni', 'petrol pump', 1, 30, 1134, '711211', 91, NULL, 91, NULL, 1, '2019-05-07 15:34:10', '2019-05-07 15:34:10', NULL),
(29, 1, 'borivali-west', 'ganesh mandir', 1, 1, 811, '400003', 91, NULL, 91, NULL, 1, '2019-05-07 15:34:10', '2019-05-07 15:34:10', NULL),
(30, 1, 'kolkata', 'dhgfuksdfh', 1, 30, 1134, '700017', 91, NULL, 91, NULL, 1, '2019-05-07 15:48:27', '2019-05-07 15:48:27', NULL),
(31, 1, 'new delhi', 'dhguyfg', 1, 10, 322, '400003', 91, NULL, 91, NULL, 1, '2019-05-07 15:48:27', '2019-05-07 15:48:27', NULL),
(33, 1, 'dankuni, naiti, Bodhan', 'water tank', 1, 30, 1134, '711211', 91, NULL, 91, NULL, 1, '2019-05-07 17:37:42', '2019-05-07 17:37:42', NULL),
(34, 1, 'gurugram, durga mandir', 'Near Temple', 1, 13, 441, '100123', 91, NULL, 91, NULL, 1, '2019-05-07 17:37:42', '2019-05-07 17:37:42', NULL),
(35, 1, 'Durgapur', 'Adarshapally', 1, 30, 1134, '700049', 91, NULL, 91, NULL, 1, '2019-05-08 13:16:48', '2019-05-08 13:16:48', NULL),
(36, 1, 'kandivali-east', 'thakur co.', 1, 1, 779, '400002', 91, NULL, 91, NULL, 1, '2019-05-08 13:16:48', '2019-05-08 13:16:48', NULL),
(37, 1, 'panagarh', 'college', 1, 30, 1430, '712201', 91, NULL, 91, NULL, 1, '2019-05-08 13:39:39', '2019-05-08 13:39:39', NULL),
(38, 1, 'goregaon', 'mall', 1, 1, 831, '400003', 91, NULL, 91, NULL, 1, '2019-05-08 13:39:39', '2019-05-08 13:39:39', NULL),
(39, 1, 'panagarh', 'petrol pump', 1, 30, 1134, '711312', 91, NULL, 91, NULL, 1, '2019-05-08 13:42:10', '2019-05-08 13:42:10', NULL),
(40, 1, 'mahada', 'colony', 1, 1, 794, '400002', 91, NULL, 91, NULL, 1, '2019-05-08 13:42:10', '2019-05-08 13:42:10', NULL),
(41, 1, 'boribali', 'petrol pump', 1, 1, 794, '400004', 91, NULL, 91, NULL, 1, '2019-05-08 14:12:43', '2019-05-08 14:12:43', NULL),
(42, 1, 'new delhi', 'rohini', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-08 14:12:43', '2019-05-08 14:12:43', NULL),
(43, 1, 'panagarh', 'petrol pump', 1, 30, 1430, '700017', 91, NULL, 91, NULL, 1, '2019-05-08 14:14:37', '2019-05-08 14:14:37', NULL),
(44, 1, 'gurugram', 'rohini', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-08 14:14:37', '2019-05-08 14:14:37', NULL),
(45, 1, 'panagarh', 'petrol pump', 1, 30, 1430, '700049', 91, NULL, 91, NULL, 1, '2019-05-08 14:17:00', '2019-05-08 14:17:00', NULL),
(46, 1, 'borivali-west', 'ganesh mandir', 1, 1, 1, '400002', 91, NULL, 91, NULL, 1, '2019-05-08 14:17:00', '2019-05-08 14:17:00', NULL),
(47, 1, 'boribali', 'club', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-08 14:47:16', '2019-05-08 14:47:16', NULL),
(48, 1, 'gurugram', 'watertank', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-08 14:47:16', '2019-05-08 14:47:16', NULL),
(49, 1, 'panagarh', 'petrol pump', 1, 30, 1430, '700049', 91, NULL, 91, NULL, 1, '2019-05-08 14:49:39', '2019-05-08 14:49:39', NULL),
(50, 1, 'new delhi', 'rohini', 1, 10, 322, '110003', 91, NULL, 91, NULL, 1, '2019-05-08 14:49:39', '2019-05-08 14:49:39', NULL),
(51, 1, 'boribali', 'ioc', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-08 14:51:47', '2019-05-08 14:51:47', NULL),
(52, 1, 'gurugram', 'rohini', 1, 10, 322, '110003', 91, NULL, 91, NULL, 1, '2019-05-08 14:51:47', '2019-05-08 14:51:47', NULL),
(53, 1, 'dankuni', 'water tank, naiti', 1, 30, 1134, '700017', 91, NULL, 91, NULL, 1, '2019-05-08 14:55:22', '2019-05-08 14:55:22', NULL),
(54, 1, 'kandivali-east', 'ganesh mandir', 1, 1, 794, '400002', 91, NULL, 91, NULL, 1, '2019-05-08 14:55:22', '2019-05-08 14:55:22', NULL),
(55, 1, 'boribali', 'ioc', 1, 1, 795, '400004', 91, NULL, 91, NULL, 1, '2019-05-08 16:53:06', '2019-05-08 16:53:06', NULL),
(56, 1, 'new delhi', 'colony', 1, 10, 321, '110001', 91, NULL, 91, NULL, 1, '2019-05-08 16:53:06', '2019-05-08 16:53:06', NULL),
(57, 1, 'lonavala', 'ioc', 1, 1, 794, '400004', 91, NULL, 91, NULL, 1, '2019-05-08 16:59:17', '2019-05-08 16:59:17', NULL),
(58, 1, 'dankuni', 'colony', 1, 30, 1134, '711201', 91, NULL, 91, NULL, 1, '2019-05-08 16:59:17', '2019-05-08 16:59:17', NULL),
(60, 1, 'panagarh', 'co-operative bank', 1, 30, 1134, '711211', 91, NULL, 91, NULL, 1, '2019-05-08 17:04:50', '2019-05-08 17:04:50', NULL),
(61, 1, 'kandivali-east', 'ganesh mandir', 1, 1, 1, '400003', 91, NULL, 91, NULL, 1, '2019-05-08 17:04:50', '2019-05-08 17:04:50', NULL),
(62, 1, 'panagarh', 'petrol pump', 1, 30, 1430, '700049', 91, NULL, 91, NULL, 1, '2019-05-08 17:10:48', '2019-05-08 17:10:48', NULL),
(63, 1, 'gurugram', 'rohini', 1, 10, 322, '110003', 91, NULL, 91, NULL, 1, '2019-05-08 17:10:48', '2019-05-08 17:10:48', NULL),
(64, 1, 'Dankuni', 'Cooperative bank', 1, 30, 1134, '712111', 91, NULL, 91, NULL, 1, '2019-05-08 18:47:21', '2019-05-08 18:47:21', NULL),
(65, 1, 'Mahada', 'Water tank', 1, 1, 794, '400003', 91, NULL, 91, NULL, 1, '2019-05-08 18:47:21', '2019-05-08 18:47:21', NULL),
(66, 1, 'panagarh', 'petrol pump', 1, 30, 1430, '700017', 91, NULL, 91, NULL, 1, '2019-05-09 13:15:03', '2019-05-09 13:15:03', NULL),
(67, 1, 'gurugram', 'rohini', 1, 10, 321, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 13:15:03', '2019-05-09 13:15:03', NULL),
(68, 1, 'panagarh', 'petrol pump', 1, 30, 1134, '700017', 91, NULL, 91, NULL, 1, '2019-05-09 13:16:25', '2019-05-09 13:16:25', NULL),
(69, 1, 'gurugram', 'rohini', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 13:16:25', '2019-05-09 13:16:25', NULL),
(70, 1, 'panagarh', 'petrol pump', 1, 30, 1134, '700017', 91, NULL, 91, NULL, 1, '2019-05-09 13:18:12', '2019-05-09 13:18:12', NULL),
(71, 1, 'kandivali-east', 'colony', 1, 1, 794, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 13:18:12', '2019-05-09 13:18:12', NULL),
(72, 1, 'gurugram', 'petrol pump', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 13:20:13', '2019-05-09 13:20:13', NULL),
(73, 1, 'kandivali-east', 'colony', 1, 1, 795, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 13:20:13', '2019-05-09 13:20:13', NULL),
(74, 1, 'gurugram', 'petrol pump', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 13:21:34', '2019-05-09 13:21:34', NULL),
(75, 1, 'kandivali-east', 'colony', 1, 1, 811, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 13:21:34', '2019-05-09 13:21:34', NULL),
(76, 1, 'gurugram', 'petrol pump', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 14:01:50', '2019-05-09 14:01:50', NULL),
(77, 1, 'kandivali-east', 'colony', 1, 1, 786, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 14:01:50', '2019-05-09 14:01:50', NULL),
(78, 2, 'kailash', 'hindu colony', 1, 10, 322, '110048', 91, NULL, 91, NULL, 1, '2019-05-09 14:36:49', '2019-05-09 14:36:49', NULL),
(79, 2, 'goregaon', 'Rasta peth', 1, 1, 794, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 14:36:50', '2019-05-09 14:36:50', NULL),
(80, 2, 'kailash', 'hindu colony', 1, 10, 322, '110048', 91, NULL, 91, NULL, 1, '2019-05-09 14:48:26', '2019-05-09 14:48:26', NULL),
(81, 2, 'goregaon', 'Rasta peth', 1, 1, 794, '400002', 91, NULL, 91, NULL, 1, '2019-05-09 14:48:26', '2019-05-09 14:48:26', NULL),
(82, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 14:57:05', '2019-05-09 14:57:05', NULL),
(83, 2, 'goregaon', 'Rasta peth', 1, 1, 811, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 14:57:06', '2019-05-09 14:57:06', NULL),
(84, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 15:33:13', '2019-05-09 15:33:13', NULL),
(85, 2, 'dadar-east', 'ioc', 1, 1, 795, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 15:33:13', '2019-05-09 15:33:13', NULL),
(86, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 15:37:06', '2019-05-09 15:37:06', NULL),
(87, 2, 'J-93, Sarita Vihar', 'Near Sarita Vihar Metro Station', 1, 1, 811, '110076', 91, NULL, 91, NULL, 1, '2019-05-09 15:37:07', '2019-05-09 15:37:07', NULL),
(88, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 15:39:17', '2019-05-09 15:39:17', NULL),
(89, 2, 'J-93, Sarita Vihar', 'Near Sarita Vihar Metro Station', 1, 1, 794, '110076', 91, NULL, 91, NULL, 1, '2019-05-09 15:39:17', '2019-05-09 15:39:17', NULL),
(90, 2, 'kailash', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 16:47:10', '2019-05-09 16:47:10', NULL),
(91, 2, 'J-93, Sarita Vihar', 'Near Sarita Vihar Metro Station', 1, 1, 811, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 16:47:11', '2019-05-09 16:47:11', NULL),
(92, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 16:53:49', '2019-05-09 16:53:49', NULL),
(93, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 16:54:32', '2019-05-09 16:54:32', NULL),
(94, 2, 'J-93, Sarita Vihar', 'Near Sarita Vihar Metro Station', 1, 1, 794, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 16:54:32', '2019-05-09 16:54:32', NULL),
(95, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 16:59:06', '2019-05-09 16:59:06', NULL),
(96, 2, 'Mudaliar Road,', 'Rasta Peth,', 1, 1, 811, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 16:59:06', '2019-05-09 16:59:06', NULL),
(97, 2, 'Raja Subodh Mullick Square', 'post office', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 17:04:09', '2019-05-09 17:04:09', NULL),
(98, 2, 'Mudaliar Road,', 'Rasta Peth,', 1, 1, 1, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 17:04:09', '2019-05-09 17:04:09', NULL),
(99, 2, 'kailash', 'hindu colony', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 17:06:48', '2019-05-09 17:06:48', NULL),
(100, 2, 'Mudaliar Road,', 'Rasta Peth,', 1, 1, 1, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 17:06:48', '2019-05-09 17:06:48', NULL),
(101, 2, 'kailash', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 17:09:58', '2019-05-09 17:09:58', NULL),
(102, 2, 'Mudaliar Road,', 'Rasta Peth,', 1, 1, 807, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 17:09:59', '2019-05-09 17:09:59', NULL),
(103, 2, 'kailash', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 17:40:52', '2019-05-09 17:40:52', NULL),
(104, 2, 'Mudaliar Road,', 'Rasta Peth,', 1, 1, 795, '400005', 91, NULL, 91, NULL, 1, '2019-05-09 17:40:52', '2019-05-09 17:40:52', NULL),
(105, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane, Hindu Colony, Dadar East,', 'hindu colony', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 17:44:35', '2019-05-09 17:44:35', NULL),
(106, 2, 'C-14, Qutab Institutional Area, Block C', 'Adchini, New Delhi', 1, 10, 322, '110016', 91, NULL, 91, NULL, 1, '2019-05-09 17:44:35', '2019-05-09 17:44:35', NULL),
(107, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane, Hindu Colony, Dadar East,', 'hindu colony', 1, 1, 1, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 17:45:35', '2019-05-09 17:45:35', NULL),
(108, 2, 'C-14, Qutab Institutional Area, Block C', 'Adchini, New Delhi', 1, 10, 322, '110016', 91, NULL, 91, NULL, 1, '2019-05-09 17:45:35', '2019-05-09 17:45:35', NULL),
(109, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane, Hindu Colony, Dadar East,', 'hindu colony', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 17:47:09', '2019-05-09 17:47:09', NULL),
(110, 2, 'C-14, Qutab Institutional Area, Block C', 'Adchini, New Delhi', 1, 10, 322, '110016', 91, NULL, 91, NULL, 1, '2019-05-09 17:47:09', '2019-05-09 17:47:09', NULL),
(111, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony,', 1, 1, 794, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 18:20:43', '2019-05-09 18:20:43', NULL),
(112, 2, 'gurugram', 'ioc', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 18:20:43', '2019-05-09 18:20:43', NULL),
(113, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony,', 1, 1, 1, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 18:23:25', '2019-05-09 18:23:25', NULL),
(114, 2, 'gurugram', 'ioc', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 18:23:25', '2019-05-09 18:23:25', NULL),
(115, 14, 'sarat bose road ,kolkata', 'bosusree cinema', 1, 30, 1436, '700049', 91, NULL, 91, NULL, 1, '2019-05-09 18:42:35', '2019-05-09 18:42:35', NULL),
(116, 14, 'netaji subhas chandra bose road ,', 'marine drive', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 18:42:35', '2019-05-09 18:42:35', NULL),
(117, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony,', 1, 30, 1134, '700013', 91, NULL, 91, NULL, 1, '2019-05-09 18:44:35', '2019-05-09 18:44:35', NULL),
(118, 2, 'gurugram', 'ioc', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 18:44:35', '2019-05-09 18:44:35', NULL),
(119, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane, Hindu Colony, Dadar East,', 'Maharashtra', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-09 18:48:21', '2019-05-09 18:48:21', NULL),
(120, 2, 'gurugram', 'ioc', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 18:48:21', '2019-05-09 18:48:21', NULL),
(121, 14, 'richie road ,kolkata', 'madox square', 1, 30, 1436, '700029', 91, NULL, 91, NULL, 1, '2019-05-09 18:52:00', '2019-05-09 18:52:00', NULL),
(122, 14, 'sarojini nagar delhi', 'hindu mandir', 1, 10, 322, '110023', 91, NULL, 91, NULL, 1, '2019-05-09 18:52:00', '2019-05-09 18:52:00', NULL),
(123, 14, 'connout place', 'cp headquarters', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-09 18:57:04', '2019-05-09 18:57:04', NULL),
(124, 14, 'topsia road', 'maruti showroom', 1, 30, 1436, '700019', 91, NULL, 91, NULL, 1, '2019-05-09 18:57:04', '2019-05-09 18:57:04', NULL),
(125, 14, 'vasant kunj', 'ss farm', 1, 10, 322, '110070', 91, NULL, 91, NULL, 1, '2019-05-09 19:03:15', '2019-05-09 19:03:15', NULL),
(126, 14, 'boriwali west', 'post office', 1, 1, 811, '400092', 91, NULL, 91, NULL, 1, '2019-05-09 19:03:15', '2019-05-09 19:03:15', NULL),
(127, 14, 'hazra road', 'jatin das park metro station', 1, 30, 1436, '700029', 91, NULL, 91, NULL, 1, '2019-05-09 19:08:51', '2019-05-09 19:08:51', NULL),
(128, 14, 'bandra east', 'kurla complex', 1, 1, 811, '400051', 91, NULL, 91, NULL, 1, '2019-05-09 19:08:51', '2019-05-09 19:08:51', NULL),
(129, 14, 'bandra west', 'spencers mall', 1, 1, 811, '400050', 91, NULL, 91, NULL, 1, '2019-05-09 19:15:19', '2019-05-09 19:15:19', NULL),
(130, 14, 'parathe wali galli', 'public library', 1, 10, 322, '110006', 91, NULL, 91, NULL, 1, '2019-05-09 19:15:19', '2019-05-09 19:15:19', NULL),
(131, 14, 'chandni chawk', 'SBI Atm', 1, 10, 322, '110005', 91, NULL, 91, NULL, 1, '2019-05-09 19:23:49', '2019-05-09 19:23:49', NULL),
(132, 14, 'nesco complex , goregaon', 'IT park', 1, 1, 811, '400060', 91, NULL, 91, NULL, 1, '2019-05-09 19:23:49', '2019-05-09 19:23:49', NULL),
(133, 14, 'M.G road', 'children park', 1, 10, 322, '110030', 91, NULL, 91, NULL, 1, '2019-05-09 19:28:35', '2019-05-09 19:28:35', NULL),
(134, 14, 'palm avenue', 'ashoka hall school', 1, 30, 1436, '700017', 91, NULL, 91, NULL, 1, '2019-05-09 19:28:35', '2019-05-09 19:28:35', NULL),
(135, 14, 'Alipore road', 'goenka house', 1, 30, 1436, '700027', 91, NULL, 91, NULL, 1, '2019-05-09 19:37:07', '2019-05-09 19:37:07', NULL),
(136, 14, 'church gate', 'kindergarden school', 1, 1, 811, '400020', 91, NULL, 91, NULL, 1, '2019-05-09 19:37:07', '2019-05-09 19:37:07', NULL),
(137, 14, 'goregaon east', 'dominos pizza shop', 1, 1, 811, '400063', 91, NULL, 91, NULL, 1, '2019-05-09 19:43:03', '2019-05-09 19:43:03', NULL),
(138, 14, 'sector 15- faridabad', 'audi showroom', 1, 10, 322, '101213', 91, NULL, 91, NULL, 1, '2019-05-09 19:43:03', '2019-05-09 19:43:03', NULL),
(139, 14, 'thane', 'Fortis hospital', 1, 1, 811, '400602', 91, NULL, 91, NULL, 1, '2019-05-09 19:49:48', '2019-05-09 19:49:48', NULL),
(140, 14, 'bhowanipore', 'exide more', 1, 30, 1436, '700030', 91, NULL, 91, NULL, 1, '2019-05-09 19:49:48', '2019-05-09 19:49:48', NULL),
(141, 14, 'dargah road', 'shiv mandir', 1, 30, 1436, '700017', 91, NULL, 91, NULL, 1, '2019-05-10 12:37:56', '2019-05-10 12:37:56', NULL),
(142, 14, 'carter road', 'chinese cuisine', 1, 1, 811, '400050', 91, NULL, 91, NULL, 1, '2019-05-10 12:37:56', '2019-05-10 12:37:56', NULL),
(143, 14, 'shivaji park', 'govt housing', 1, 1, 811, '400028', 91, NULL, 91, NULL, 1, '2019-05-10 13:02:54', '2019-05-10 13:02:54', NULL),
(144, 14, 'lodhi garden', 'hanuman mandir', 1, 10, 322, '110003', 91, NULL, 91, NULL, 1, '2019-05-10 13:02:54', '2019-05-10 13:02:54', NULL),
(145, 14, 'hauj khas south delhi', 'old masjid', 1, 10, 322, '110016', 91, NULL, 91, NULL, 1, '2019-05-10 13:08:45', '2019-05-10 13:08:45', NULL),
(146, 14, 'girguam chowpatty', 's.o post office', 1, 1, 811, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:08:45', '2019-05-10 13:08:45', NULL),
(147, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony, Dadar East,', 1, 1, 794, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:15:32', '2019-05-10 13:15:32', NULL),
(148, 2, 'gurugram', 'car showroom', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:15:32', '2019-05-10 13:15:32', NULL),
(149, 14, 'karol bagh', 'near mcdonalds', 1, 10, 322, '110055', 91, NULL, 91, NULL, 1, '2019-05-10 13:16:14', '2019-05-10 13:16:14', NULL),
(150, 14, 'pali hill bandra', 'honda showroom', 1, 1, 811, '400050', 91, NULL, 91, NULL, 1, '2019-05-10 13:16:14', '2019-05-10 13:16:14', NULL),
(151, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony, Dadar East,', 1, 1, 1, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:16:22', '2019-05-10 13:16:22', NULL),
(152, 2, 'gurugram', 'car showroom', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:16:22', '2019-05-10 13:16:22', NULL),
(153, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony, Dadar East,', 1, 1, 795, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:17:24', '2019-05-10 13:17:24', NULL),
(154, 2, 'gurugram', 'car showroom', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:17:24', '2019-05-10 13:17:24', NULL),
(155, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony, Dadar East,', 1, 1, 808, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:19:33', '2019-05-10 13:19:33', NULL),
(156, 2, 'dankuni', 'ioc', 1, 30, 1134, '700047', 91, NULL, 91, NULL, 1, '2019-05-10 13:19:33', '2019-05-10 13:19:33', NULL),
(157, 2, 'Plot #55, Neelam, 3rd Floor, 1st lane', 'Hindu Colony, Dadar East,', 1, 1, 795, '400004', 91, NULL, 91, NULL, 1, '2019-05-10 13:20:35', '2019-05-10 13:20:35', NULL),
(158, 2, 'dankuni', 'ioc', 1, 30, 1432, '700047', 91, NULL, 91, NULL, 1, '2019-05-10 13:20:35', '2019-05-10 13:20:35', NULL),
(159, 14, 'worli sea face', 'IT tech park', 1, 1, 811, '400018', 91, NULL, 91, NULL, 1, '2019-05-10 13:21:19', '2019-05-10 13:21:19', NULL),
(160, 14, 'AJC bose road', 'near fish market', 1, 30, 1436, '700020', 91, NULL, 91, NULL, 1, '2019-05-10 13:21:19', '2019-05-10 13:21:19', NULL),
(161, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:21:32', '2019-05-10 13:21:32', NULL),
(162, 2, 'dankuni', 'ioc', 1, 30, 1134, '700047', 91, NULL, 91, NULL, 1, '2019-05-10 13:21:32', '2019-05-10 13:21:32', NULL),
(163, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:22:34', '2019-05-10 13:22:34', NULL),
(164, 2, 'dankuni', 'ioc', 1, 30, 1134, '700047', 91, NULL, 91, NULL, 1, '2019-05-10 13:22:34', '2019-05-10 13:22:34', NULL),
(165, 2, 'gurugram', 'hindu colony', 1, 10, 321, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:23:31', '2019-05-10 13:23:31', NULL),
(166, 2, 'dankuni', 'ioc', 1, 30, 1134, '700047', 91, NULL, 91, NULL, 1, '2019-05-10 13:23:31', '2019-05-10 13:23:31', NULL),
(167, 14, 's.n banerjee road', 'central bank atm', 1, 30, 1436, '700013', 91, NULL, 91, NULL, 1, '2019-05-10 13:29:00', '2019-05-10 13:29:00', NULL),
(168, 14, 'malabar hill', 'tvs service center', 1, 1, 811, '400006', 91, NULL, 91, NULL, 1, '2019-05-10 13:29:00', '2019-05-10 13:29:00', NULL),
(169, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:29:04', '2019-05-10 13:29:04', NULL),
(170, 2, 'kandivali-east', 'ioc', 1, 1, 811, '400034', 91, NULL, 91, NULL, 1, '2019-05-10 13:29:04', '2019-05-10 13:29:04', NULL),
(171, 13, 'altamount road', 'near big bazar', 1, 1, 811, '400026', 91, NULL, 91, NULL, 1, '2019-05-10 13:39:12', '2019-05-10 13:39:12', NULL),
(172, 13, 'ballygunge phari', 'birla mandir', 1, 30, 1436, '700019', 91, NULL, 91, NULL, 1, '2019-05-10 13:39:12', '2019-05-10 13:39:12', NULL),
(173, 13, 'rafi ahmed kidwai road', 'aslam meat shop', 1, 30, 1436, '700016', 91, NULL, 91, NULL, 1, '2019-05-10 13:45:23', '2019-05-10 13:45:23', NULL),
(174, 13, 'boriwali east', 'sabji market', 1, 1, 811, '400066', 91, NULL, 91, NULL, 1, '2019-05-10 13:45:23', '2019-05-10 13:45:23', NULL),
(175, 13, 'boriwali west', 'children park', 1, 1, 811, '400092', 91, NULL, 91, NULL, 1, '2019-05-10 13:48:19', '2019-05-10 13:48:19', NULL),
(176, 13, 'vip nagar', 'shimla biriyani', 1, 30, 1436, '700100', 91, NULL, 91, NULL, 1, '2019-05-10 13:48:19', '2019-05-10 13:48:19', NULL),
(177, 13, 'versova road', 'gold gym', 1, 1, 811, '400061', 91, NULL, 91, NULL, 1, '2019-05-10 13:52:18', '2019-05-10 13:52:18', NULL),
(178, 13, 'cannout place', 'kali temple', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 13:52:18', '2019-05-10 13:52:18', NULL),
(179, 13, 'red fort road', 'red fort', 1, 10, 322, '110006', 91, NULL, 91, NULL, 1, '2019-05-10 13:59:53', '2019-05-10 13:59:53', NULL),
(180, 13, 'kasba bosepukur', 'dolna school', 1, 30, 1436, '700042', 91, NULL, 91, NULL, 1, '2019-05-10 13:59:53', '2019-05-10 13:59:53', NULL),
(181, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 14:01:01', '2019-05-10 14:01:01', NULL),
(182, 2, 'kandivali-east', 'ioc', 1, 1, 809, '400034', 91, NULL, 91, NULL, 1, '2019-05-10 14:01:01', '2019-05-10 14:01:01', NULL),
(183, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 14:02:06', '2019-05-10 14:02:06', NULL),
(184, 2, 'kandivali-east', 'ioc', 1, 1, 811, '400034', 91, NULL, 91, NULL, 1, '2019-05-10 14:02:06', '2019-05-10 14:02:06', NULL),
(185, 13, 'hauj khas south delhi', 'axis atm', 1, 10, 322, '110006', 91, NULL, 91, NULL, 1, '2019-05-10 14:02:32', '2019-05-10 14:02:32', NULL),
(186, 13, 'bandra west', 'suzuki showroom', 1, 1, 811, '400050', 91, NULL, 91, NULL, 1, '2019-05-10 14:02:32', '2019-05-10 14:02:32', NULL),
(187, 2, 'gurugram', 'hindu colony', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-10 14:03:16', '2019-05-10 14:03:16', NULL),
(188, 2, 'kandivali-east', 'ioc', 1, 1, 811, '400034', 91, NULL, 91, NULL, 1, '2019-05-10 14:03:16', '2019-05-10 14:03:16', NULL),
(189, 13, 'shivaji park', 'bengali resturant', 1, 1, 811, '400028', 91, NULL, 91, NULL, 1, '2019-05-10 14:10:00', '2019-05-10 14:10:00', NULL),
(190, 13, 'jantar mantar', 'play ground', 1, 10, 322, '110002', 91, NULL, 91, NULL, 1, '2019-05-10 14:10:00', '2019-05-10 14:10:00', NULL),
(191, 13, 'boriwali west', 'tgs school', 1, 1, 811, '400092', 91, NULL, 91, NULL, 1, '2019-05-10 14:55:41', '2019-05-10 14:55:41', NULL),
(192, 13, 'karol bagh', 'art academy', 1, 10, 322, '110055', 91, NULL, 91, NULL, 1, '2019-05-10 14:55:41', '2019-05-10 14:55:41', NULL),
(193, 13, 'southern aveneu', 'lake club', 1, 30, 1436, '700029', 91, NULL, 91, NULL, 1, '2019-05-10 14:59:28', '2019-05-10 14:59:28', NULL),
(194, 13, 'sarojini nagar', 'dps high school', 1, 10, 322, '110023', 91, NULL, 91, NULL, 1, '2019-05-10 14:59:28', '2019-05-10 14:59:28', NULL),
(195, 13, 'bandra east', 'bmtc bus terminal', 1, 1, 811, '400051', 91, NULL, 91, NULL, 1, '2019-05-10 15:03:09', '2019-05-10 15:03:09', NULL),
(196, 13, 'mayur vihar', 'shiv mandir', 1, 10, 322, '110091', 91, NULL, 91, NULL, 1, '2019-05-10 15:03:09', '2019-05-10 15:03:09', NULL),
(197, 13, 'anand vihar', 'post office', 1, 10, 322, '110092', 91, NULL, 91, NULL, 1, '2019-05-10 15:07:12', '2019-05-10 15:07:12', NULL),
(198, 13, 'topsia road', 'purani masjid', 1, 30, 1436, '700042', 91, NULL, 91, NULL, 1, '2019-05-10 15:07:12', '2019-05-10 15:07:12', NULL),
(199, 13, 'bangur avenue', 'children park', 1, 30, 1436, '700055', 91, NULL, 91, NULL, 1, '2019-05-10 15:10:02', '2019-05-10 15:10:02', NULL),
(200, 13, 'marine drive road', 'sea side hotel', 1, 1, 811, '400002', 91, NULL, 91, NULL, 1, '2019-05-10 15:10:02', '2019-05-10 15:10:02', NULL),
(201, 13, 'beliaghata building more', 'traffic guard office', 1, 30, 1436, '700010', 91, NULL, 91, NULL, 1, '2019-05-10 16:06:21', '2019-05-10 16:06:21', NULL),
(202, 13, 'hiranandani powai', 'country club', 1, 1, 811, '400076', 91, NULL, 91, NULL, 1, '2019-05-10 16:06:21', '2019-05-10 16:06:21', NULL),
(203, 13, 'varsova', 'public park', 1, 1, 811, '400060', 91, NULL, 91, NULL, 1, '2019-05-10 16:10:53', '2019-05-10 16:10:53', NULL),
(204, 13, 'udyog vihar', 'govt bus terminal', 1, 10, 322, '1100433', 91, NULL, 91, NULL, 1, '2019-05-10 16:10:54', '2019-05-10 16:10:54', NULL),
(205, 13, 'jama masjid road', 'jama masjid', 1, 10, 322, '110007', 91, NULL, 91, NULL, 1, '2019-05-10 16:18:19', '2019-05-10 16:18:19', NULL),
(206, 13, 'ambedkar nagar', 'income tax bhavan', 1, 1, 811, '400065', 91, NULL, 91, NULL, 1, '2019-05-10 16:18:20', '2019-05-10 16:18:20', NULL),
(207, 13, 'church gate', 'Jain temple', 1, 1, 811, '400020', 91, NULL, 91, NULL, 1, '2019-05-10 16:23:46', '2019-05-10 16:23:46', NULL),
(208, 13, 'maidan road', 'fort william', 1, 30, 1436, '700021', 91, NULL, 91, NULL, 1, '2019-05-10 16:23:46', '2019-05-10 16:23:46', NULL),
(209, 13, 'dhapa road mathpukur', 'spring club hotel', 1, 30, 1436, '700105', 91, NULL, 91, NULL, 1, '2019-05-10 16:30:51', '2019-05-10 16:30:51', NULL),
(210, 13, 'VT staion road', 'police station', 1, 1, 811, '400001', 91, NULL, 91, NULL, 1, '2019-05-10 16:30:52', '2019-05-10 16:30:52', NULL),
(211, 13, 'malhad east', 'cricket academy', 1, 1, 811, '400097', 91, NULL, 91, NULL, 1, '2019-05-10 17:08:28', '2019-05-10 17:08:28', NULL),
(212, 13, 'nehru place', 'musium', 1, 10, 322, '110019', 91, NULL, 91, NULL, 1, '2019-05-10 17:08:28', '2019-05-10 17:08:28', NULL),
(213, 13, '26 park street', 'near subway', 1, 30, 1436, '700016', 91, NULL, 91, NULL, 1, '2019-05-10 17:11:33', '2019-05-10 17:11:33', NULL),
(214, 13, 'saket place', 'honda service center', 1, 10, 322, '110017', 91, NULL, 91, NULL, 1, '2019-05-10 17:11:33', '2019-05-10 17:11:33', NULL),
(215, 13, 'karol bagh', 'kali temple', 1, 10, 322, '110005', 91, NULL, 91, NULL, 1, '2019-05-10 17:15:47', '2019-05-10 17:15:47', NULL),
(216, 13, 'JVPD scheme road', 'eye hospital', 1, 1, 811, '400048', 91, NULL, 91, NULL, 1, '2019-05-10 17:15:47', '2019-05-10 17:15:47', NULL),
(217, 12, 'Juhu beach park', 'beach hotel', 1, 1, 811, '400049', 91, NULL, 91, NULL, 1, '2019-05-10 17:39:15', '2019-05-10 17:39:15', NULL),
(218, 12, 'rajeev chawk', 'dento care clinic', 1, 10, 322, '110004', 91, NULL, 91, NULL, 1, '2019-05-10 17:39:15', '2019-05-10 17:39:15', NULL),
(219, 12, 'bandra east', 'chemical factory', 1, 1, 811, '400051', 91, NULL, 91, NULL, 1, '2019-05-10 17:43:39', '2019-05-10 17:43:39', NULL),
(220, 12, 'sector 21', 'furniture shop', 1, 10, 322, '110086', 91, NULL, 91, NULL, 1, '2019-05-10 17:43:39', '2019-05-10 17:43:39', NULL),
(221, 12, 'sector 45', 'tcs office', 1, 10, 322, '110089', 91, NULL, 91, NULL, 1, '2019-05-10 17:49:28', '2019-05-10 17:49:28', NULL),
(222, 12, 'pali hill bandra', 'amusement park', 1, 1, 811, '400053', 91, NULL, 91, NULL, 1, '2019-05-10 17:49:28', '2019-05-10 17:49:28', NULL),
(223, 12, 'bhulabhai desai road', 'lincon house', 1, 1, 811, '400027', 91, NULL, 91, NULL, 1, '2019-05-10 18:10:21', '2019-05-10 18:10:21', NULL),
(224, 12, 'nonapukur road', 'tram depot', 1, 30, 1436, '700014', 91, NULL, 91, NULL, 1, '2019-05-10 18:10:21', '2019-05-10 18:10:21', NULL),
(225, 12, 'dunlop main road', 'shani mandir', 1, 30, 1436, '700108', 91, NULL, 91, NULL, 1, '2019-05-10 18:13:46', '2019-05-10 18:13:46', NULL),
(226, 12, 'new marine lines', 'American center', 1, 1, 811, '400021', 91, NULL, 91, NULL, 1, '2019-05-10 18:13:46', '2019-05-10 18:13:46', NULL),
(227, 12, 'B.T road', 'jute mill', 1, 30, 1436, '700036', 91, NULL, 91, NULL, 1, '2019-05-10 18:19:40', '2019-05-10 18:19:40', NULL),
(228, 12, 'deshmukh marg', 'yummy bekary', 1, 1, 811, '400028', 91, NULL, 91, NULL, 1, '2019-05-10 18:19:40', '2019-05-10 18:19:40', NULL),
(229, 12, 'jamnalal bajaj road', 'med plus medicine shop', 1, 1, 811, '400022', 91, NULL, 91, NULL, 1, '2019-05-10 18:23:48', '2019-05-10 18:23:48', NULL),
(230, 12, 'dwarka road', 'ice cream parlour', 1, 10, 322, '110075', 91, NULL, 91, NULL, 1, '2019-05-10 18:23:48', '2019-05-10 18:23:48', NULL),
(231, 12, 'vasant kunj', 'sherawali temple', 1, 10, 322, '110070', 91, NULL, 91, NULL, 1, '2019-05-10 18:29:39', '2019-05-10 18:29:39', NULL),
(232, 12, 'aaruli road', 'big bazar', 1, 1, 811, '400022', 91, NULL, 91, NULL, 1, '2019-05-10 18:29:39', '2019-05-10 18:29:39', NULL),
(233, 12, 'church gate', 'football coaching center', 1, 1, 811, '400020', 91, NULL, 91, NULL, 1, '2019-05-10 18:33:24', '2019-05-10 18:33:24', NULL),
(234, 12, 'nehru place', 'handcraft shop', 1, 10, 322, '110019', 91, NULL, 91, NULL, 1, '2019-05-10 18:33:25', '2019-05-10 18:33:25', NULL),
(235, 12, 'rajinder nagar', 'flower market', 1, 10, 322, '110060', 91, NULL, 91, NULL, 1, '2019-05-10 18:42:12', '2019-05-10 18:42:12', NULL),
(236, 12, 'boriwali west', 'swimmig club', 1, 1, 811, '400092', 91, NULL, 91, NULL, 1, '2019-05-10 18:42:12', '2019-05-10 18:42:12', NULL),
(237, 12, 'gautam nagar', 'kids school', 1, 10, 322, '110049', 91, NULL, 91, NULL, 1, '2019-05-10 18:45:29', '2019-05-10 18:45:29', NULL),
(238, 12, 'deshapriya nagar belgharia', 'supermarket', 1, 30, 1436, '700056', 91, NULL, 91, NULL, 1, '2019-05-10 18:45:29', '2019-05-10 18:45:29', NULL),
(239, 12, 'new garia road', 'near metro staion', 1, 30, 1436, '700094', 91, NULL, 91, NULL, 1, '2019-05-10 18:49:34', '2019-05-10 18:49:34', NULL),
(240, 12, 'panvel chowk', 'supermarket', 1, 1, 811, '410106', 91, NULL, 91, NULL, 1, '2019-05-10 18:49:34', '2019-05-10 18:49:34', NULL),
(241, 12, 'udyog vihar', 'fruit market', 1, 10, 322, '110043', 91, NULL, 91, NULL, 1, '2019-05-10 18:53:55', '2019-05-10 18:53:55', NULL),
(242, 12, 'lower parel', 'Cafe coffee day', 1, 1, 811, '400013', 91, NULL, 91, NULL, 1, '2019-05-10 18:53:55', '2019-05-10 18:53:55', NULL),
(243, 12, 'chembur road', 'bus stand', 1, 1, 811, '400071', 91, NULL, 91, NULL, 1, '2019-05-10 19:01:14', '2019-05-10 19:01:14', NULL),
(244, 12, 'bidhannagar road', 'ultadanga station', 1, 30, 1436, '700064', 91, NULL, 91, NULL, 1, '2019-05-10 19:01:14', '2019-05-10 19:01:14', NULL),
(245, 12, 'sector 5 saltlake', 'godrej building', 1, 30, 1436, '700091', 91, NULL, 91, NULL, 1, '2019-05-10 19:04:47', '2019-05-10 19:04:47', NULL),
(246, 12, 'powai road', 'furniture store', 1, 1, 811, '400076', 91, NULL, 91, NULL, 1, '2019-05-10 19:04:47', '2019-05-10 19:04:47', NULL),
(247, 12, 'powai road', 'south indian resturant', 1, 1, 811, '400076', 91, NULL, 91, NULL, 1, '2019-05-10 19:07:12', '2019-05-10 19:07:12', NULL),
(248, 12, 'dhakuria road', 'dakshinapan mall', 1, 30, 1436, '700031', 91, NULL, 91, NULL, 1, '2019-05-10 19:07:13', '2019-05-10 19:07:13', NULL),
(250, 12, 'shakespeare sarani', 'axis bank', 1, 30, 1436, '700017', 91, NULL, 91, NULL, 1, '2019-05-10 19:13:26', '2019-05-10 19:13:26', NULL),
(251, 12, 'jama masjid road', 'purani masjid', 1, 10, 322, '110006', 91, NULL, 91, NULL, 1, '2019-05-10 19:13:26', '2019-05-10 19:13:26', NULL),
(252, 12, 'andheri east', 'dell showroom', 1, 1, 811, '400053', 91, NULL, 91, NULL, 1, '2019-05-10 19:16:58', '2019-05-10 19:16:58', NULL),
(253, 12, 'm g road', 'metro station', 1, 10, 322, '110030', 91, NULL, 91, NULL, 1, '2019-05-10 19:16:58', '2019-05-10 19:16:58', NULL),
(254, 12, 'baguihati chawal putti', 'baguihati bus stand', 1, 30, 1436, '700159', 91, NULL, 91, NULL, 1, '2019-05-10 19:19:42', '2019-05-10 19:19:42', NULL),
(255, 12, 'andheri west', 'liquer shop', 1, 1, 811, '400069', 91, NULL, 91, NULL, 1, '2019-05-10 19:19:42', '2019-05-10 19:19:42', NULL),
(256, 11, 'salt lake city', 'momo shop', 1, 30, 1436, '700156', 91, NULL, 91, NULL, 1, '2019-05-13 13:30:27', '2019-05-13 13:30:27', NULL),
(257, 11, 'vasant kunj', 'durga mandir', 1, 10, 322, '110070', 91, NULL, 91, NULL, 1, '2019-05-13 13:30:27', '2019-05-13 13:30:27', NULL),
(258, 11, 'dwarka road', 'pizza hut', 1, 10, 322, '110037', 91, NULL, 91, NULL, 1, '2019-05-13 13:46:52', '2019-05-13 13:46:52', NULL),
(259, 11, 'pali hill bandra', 'golf club', 1, 1, 811, '400050', 91, NULL, 91, NULL, 1, '2019-05-13 13:46:52', '2019-05-13 13:46:52', NULL),
(260, 11, 'cannought  place', 'child health care', 1, 10, 322, '110001', 91, NULL, 91, NULL, 1, '2019-05-13 13:52:17', '2019-05-13 13:52:17', NULL),
(261, 11, 'boriwali west', 'star hotel', 1, 1, 811, '400092', 91, NULL, 91, NULL, 1, '2019-05-13 13:52:17', '2019-05-13 13:52:17', NULL),
(262, 11, 'bagbajar sarani', 'women\'s college', 1, 30, 1436, '700003', 91, NULL, 91, NULL, 1, '2019-05-13 14:01:19', '2019-05-13 14:01:19', NULL),
(263, 11, 'boriwali east', 'fish market', 1, 1, 811, '400066', 91, NULL, 91, NULL, 1, '2019-05-13 14:01:19', '2019-05-13 14:01:19', NULL),
(264, 11, 'salt lake sector 3', 'ice cream parlour', 1, 30, 1436, '700098', 91, NULL, 91, NULL, 1, '2019-05-13 14:07:34', '2019-05-13 14:07:34', NULL),
(265, 11, 'altamount road', 'kindergarden school', 1, 1, 811, '400026', 91, NULL, 91, NULL, 1, '2019-05-13 14:07:34', '2019-05-13 14:07:34', NULL),
(266, 11, 'shivaji park', 'cricket ground', 1, 1, 811, '400028', 91, NULL, 91, NULL, 1, '2019-05-13 14:16:19', '2019-05-13 14:16:19', NULL),
(267, 11, 'rajiv chawk', 'purani haveli', 1, 1, 811, '110006', 91, NULL, 91, NULL, 1, '2019-05-13 14:16:19', '2019-05-13 14:16:19', NULL),
(268, 11, 'nehru place', 'museum', 1, 10, 322, '110019', 91, NULL, 91, NULL, 1, '2019-05-13 14:20:15', '2019-05-13 14:20:15', NULL),
(269, 11, 'worli east', 'brigade shopphing mall', 1, 1, 811, '400018', 91, NULL, 91, NULL, 1, '2019-05-13 14:20:15', '2019-05-13 14:20:15', NULL),
(270, 11, 'nehru place', 'jwellery shop', 1, 10, 322, '110019', 91, NULL, 91, NULL, 1, '2019-05-13 14:28:16', '2019-05-13 14:28:16', NULL),
(271, 11, 'shyambajar more', 'netaji statue', 1, 30, 1436, '700004', 91, NULL, 91, NULL, 1, '2019-05-13 14:28:16', '2019-05-13 14:28:16', NULL),
(272, 11, 'ganesh chandra avenue', 'icic bank atm', 1, 30, 1436, '700072', 91, NULL, 91, NULL, 1, '2019-05-13 14:32:36', '2019-05-13 14:32:36', NULL),
(273, 11, 'lodhi garden', 'craft shop', 1, 10, 322, '110003', 91, NULL, 91, NULL, 1, '2019-05-13 14:32:36', '2019-05-13 14:32:36', NULL),
(274, 11, 'topsia road', 'porshe showroom', 1, 30, 1436, '700046', 91, NULL, 91, NULL, 1, '2019-05-13 14:36:40', '2019-05-13 14:36:40', NULL),
(275, 11, 'hauz khas road', 'south indian resturant', 1, 10, 322, '110016', 91, NULL, 91, NULL, 1, '2019-05-13 14:36:40', '2019-05-13 14:36:40', NULL),
(276, 11, 'chandni chawk kolkata', 'near metro staion', 1, 30, 1436, '700073', 91, NULL, 91, NULL, 1, '2019-05-13 17:13:42', '2019-05-13 17:13:42', NULL),
(277, 11, 'mayur vihar', 'BOI bank', 1, 10, 322, '110091', 91, NULL, 91, NULL, 1, '2019-05-13 17:13:42', '2019-05-13 17:13:42', NULL),
(278, 11, 'versova main', 'inox multiplex', 1, 1, 811, '400061', 91, NULL, 91, NULL, 1, '2019-05-13 17:18:07', '2019-05-13 17:18:07', NULL),
(279, 11, 'sarojini nagar', 'nikon service center', 1, 10, 322, '110023', 91, NULL, 91, NULL, 1, '2019-05-13 17:18:07', '2019-05-13 17:18:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `state_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Kolhapur', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL),
(2, 1, 2, 'Port Blair', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL),
(3, 1, 3, 'Adilabad', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(4, 1, 3, 'Adoni', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(5, 1, 3, 'Amadalavalasa', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(6, 1, 3, 'Amalapuram', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(7, 1, 3, 'Anakapalle', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(8, 1, 3, 'Anantapur', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(9, 1, 3, 'Badepalle', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(10, 1, 3, 'Banganapalle', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(11, 1, 3, 'Bapatla', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(12, 1, 3, 'Bellampalle', 1, '2019-05-06 01:26:09', '2019-05-06 01:26:09', NULL),
(13, 1, 3, 'Bethamcherla', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(14, 1, 3, 'Bhadrachalam', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(15, 1, 3, 'Bhainsa', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(16, 1, 3, 'Bheemunipatnam', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(17, 1, 3, 'Bhimavaram', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(18, 1, 3, 'Bhongir', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(19, 1, 3, 'Bobbili', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(20, 1, 3, 'Bodhan', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(21, 1, 3, 'Chilakaluripet', 1, '2019-05-06 01:26:10', '2019-05-06 01:26:10', NULL),
(22, 1, 3, 'Chirala', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(23, 1, 3, 'Chittoor', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(24, 1, 3, 'Cuddapah', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(25, 1, 3, 'Devarakonda', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(26, 1, 3, 'Dharmavaram', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(27, 1, 3, 'Eluru', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(28, 1, 3, 'Farooqnagar', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(29, 1, 3, 'Gadwal', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(30, 1, 3, 'Gooty', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(31, 1, 3, 'Gudivada', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(32, 1, 3, 'Gudur', 1, '2019-05-06 01:26:11', '2019-05-06 01:26:11', NULL),
(33, 1, 3, 'Guntakal', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(34, 1, 3, 'Guntur', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(35, 1, 3, 'Hanuman Junction', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(36, 1, 3, 'Hindupur', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(37, 1, 3, 'Hyderabad', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(38, 1, 3, 'Ichchapuram', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(39, 1, 3, 'Jaggaiahpet', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(40, 1, 3, 'Jagtial', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(41, 1, 3, 'Jammalamadugu', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(42, 1, 3, 'Jangaon', 1, '2019-05-06 01:26:12', '2019-05-06 01:26:12', NULL),
(43, 1, 3, 'Kadapa', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(44, 1, 3, 'Kadiri', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(45, 1, 3, 'Kagaznagar', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(46, 1, 3, 'Kakinada', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(47, 1, 3, 'Kalyandurg', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(48, 1, 3, 'Kamareddy', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(49, 1, 3, 'Kandukur', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(50, 1, 3, 'Karimnagar', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(51, 1, 3, 'Kavali', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(52, 1, 3, 'Khammam', 1, '2019-05-06 01:26:13', '2019-05-06 01:26:13', NULL),
(53, 1, 3, 'Koratla', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(54, 1, 3, 'Kothagudem', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(55, 1, 3, 'Kothapeta', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(56, 1, 3, 'Kovvur', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(57, 1, 3, 'Kurnool', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(58, 1, 3, 'Kyathampalle', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(59, 1, 3, 'Macherla', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(60, 1, 3, 'Machilipatnam', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(61, 1, 3, 'Madanapalle', 1, '2019-05-06 01:26:14', '2019-05-06 01:26:14', NULL),
(62, 1, 3, 'Mahbubnagar', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(63, 1, 3, 'Mancherial', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(64, 1, 3, 'Mandamarri', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(65, 1, 3, 'Mandapeta', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(66, 1, 3, 'Manuguru', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(67, 1, 3, 'Markapur', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(68, 1, 3, 'Medak', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(69, 1, 3, 'Miryalaguda', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(70, 1, 3, 'Mogalthur', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(71, 1, 3, 'Nagari', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(72, 1, 3, 'Nagarkurnool', 1, '2019-05-06 01:26:15', '2019-05-06 01:26:15', NULL),
(73, 1, 3, 'Nandyal', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(74, 1, 3, 'Narasapur', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(75, 1, 3, 'Narasaraopet', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(76, 1, 3, 'Narayanpet', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(77, 1, 3, 'Narsipatnam', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(78, 1, 3, 'Nellore', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(79, 1, 3, 'Nidadavole', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(80, 1, 3, 'Nirmal', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(81, 1, 3, 'Nizamabad', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(82, 1, 3, 'Nuzvid', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(83, 1, 3, 'Ongole', 1, '2019-05-06 01:26:16', '2019-05-06 01:26:16', NULL),
(84, 1, 3, 'Palacole', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(85, 1, 3, 'Palasa Kasibugga', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(86, 1, 3, 'Palwancha', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(87, 1, 3, 'Parvathipuram', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(88, 1, 3, 'Pedana', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(89, 1, 3, 'Peddapuram', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(90, 1, 3, 'Pithapuram', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(91, 1, 3, 'Pondur', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(92, 1, 3, 'Ponnur', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(93, 1, 3, 'Proddatur', 1, '2019-05-06 01:26:17', '2019-05-06 01:26:17', NULL),
(94, 1, 3, 'Punganur', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(95, 1, 3, 'Puttur', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(96, 1, 3, 'Rajahmundry', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(97, 1, 3, 'Rajam', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(98, 1, 3, 'Ramachandrapuram', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(99, 1, 3, 'Ramagundam', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(100, 1, 3, 'Rayachoti', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(101, 1, 3, 'Rayadurg', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(102, 1, 3, 'Renigunta', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(103, 1, 3, 'Repalle', 1, '2019-05-06 01:26:18', '2019-05-06 01:26:18', NULL),
(104, 1, 3, 'Sadasivpet', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(105, 1, 3, 'Salur', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(106, 1, 3, 'Samalkot', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(107, 1, 3, 'Sangareddy', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(108, 1, 3, 'Sattenapalle', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(109, 1, 3, 'Siddipet', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(110, 1, 3, 'Singapur', 1, '2019-05-06 01:26:19', '2019-05-06 01:26:19', NULL),
(111, 1, 3, 'Sircilla', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(112, 1, 3, 'Srikakulam', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(113, 1, 3, 'Srikalahasti', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(114, 1, 3, 'Suryapet', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(115, 1, 3, 'Tadepalligudem', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(116, 1, 3, 'Tadpatri', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(117, 1, 3, 'Tandur', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(118, 1, 3, 'Tanuku', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(119, 1, 3, 'Tenali', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(120, 1, 3, 'Tirupati', 1, '2019-05-06 01:26:20', '2019-05-06 01:26:20', NULL),
(121, 1, 3, 'Tuni', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(122, 1, 3, 'Uravakonda', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(123, 1, 3, 'Venkatagiri', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(124, 1, 3, 'Vicarabad', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(125, 1, 3, 'Vijayawada', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(126, 1, 3, 'Vinukonda', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(127, 1, 3, 'Visakhapatnam', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(128, 1, 3, 'Vizianagaram', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(129, 1, 3, 'Wanaparthy', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(130, 1, 3, 'Warangal', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(131, 1, 3, 'Yellandu', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(132, 1, 3, 'Yemmiganur', 1, '2019-05-06 01:26:21', '2019-05-06 01:26:21', NULL),
(133, 1, 3, 'Yerraguntla', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(134, 1, 3, 'Zahirabad', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(135, 1, 3, 'Rajampet', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(136, 1, 4, 'Along', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(137, 1, 4, 'Bomdila', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(138, 1, 4, 'Itanagar', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(139, 1, 4, 'Naharlagun', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(140, 1, 4, 'Pasighat', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(141, 1, 5, 'Abhayapuri', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(142, 1, 5, 'Amguri', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(143, 1, 5, 'Anandnagaar', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(144, 1, 5, 'Barpeta', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(145, 1, 5, 'Barpeta Road', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(146, 1, 5, 'Bilasipara', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(147, 1, 5, 'Bongaigaon', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(148, 1, 5, 'Dhekiajuli', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(149, 1, 5, 'Dhubri', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(150, 1, 5, 'Dibrugarh', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(151, 1, 5, 'Digboi', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(152, 1, 5, 'Diphu', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(153, 1, 5, 'Dispur', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(154, 1, 5, 'Gauripur', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(155, 1, 5, 'Goalpara', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(156, 1, 5, 'Golaghat', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(157, 1, 5, 'Guwahati', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(158, 1, 5, 'Haflong', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(159, 1, 5, 'Hailakandi', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(160, 1, 5, 'Hojai', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(161, 1, 5, 'Jorhat', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(162, 1, 5, 'Karimganj', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(163, 1, 5, 'Kokrajhar', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(164, 1, 5, 'Lanka', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(165, 1, 5, 'Lumding', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(166, 1, 5, 'Mangaldoi', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(167, 1, 5, 'Mankachar', 1, '2019-05-06 01:26:24', '2019-05-06 01:26:24', NULL),
(168, 1, 5, 'Margherita', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(169, 1, 5, 'Mariani', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(170, 1, 5, 'Marigaon', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(171, 1, 5, 'Nagaon', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(172, 1, 5, 'Nalbari', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(173, 1, 5, 'North Lakhimpur', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(174, 1, 5, 'Rangia', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(175, 1, 5, 'Sibsagar', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(176, 1, 5, 'Silapathar', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(177, 1, 5, 'Silchar', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(178, 1, 5, 'Tezpur', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(179, 1, 5, 'Tinsukia', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(180, 1, 6, 'Amarpur', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(181, 1, 6, 'Araria', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(182, 1, 6, 'Areraj', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(183, 1, 6, 'Arrah', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(184, 1, 6, 'Asarganj', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(185, 1, 6, 'Aurangabad', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(186, 1, 6, 'Bagaha', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(187, 1, 6, 'Bahadurganj', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(188, 1, 6, 'Bairgania', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(189, 1, 6, 'Bakhtiarpur', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(190, 1, 6, 'Banka', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(191, 1, 6, 'Banmankhi Bazar', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(192, 1, 6, 'Barahiya', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(193, 1, 6, 'Barauli', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(194, 1, 6, 'Barbigha', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(195, 1, 6, 'Barh', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(196, 1, 6, 'Begusarai', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(197, 1, 6, 'Behea', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(198, 1, 6, 'Bettiah', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(199, 1, 6, 'Bhabua', 1, '2019-05-06 01:26:26', '2019-05-06 01:26:26', NULL),
(200, 1, 6, 'Bhagalpur', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(201, 1, 6, 'Bihar Sharif', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(202, 1, 6, 'Bikramganj', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(203, 1, 6, 'Bodh Gaya', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(204, 1, 6, 'Buxar', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(205, 1, 6, 'Chandan Bara', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(206, 1, 6, 'Chanpatia', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(207, 1, 6, 'Chhapra', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(208, 1, 6, 'Colgong', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(209, 1, 6, 'Dalsinghsarai', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(210, 1, 6, 'Darbhanga', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(211, 1, 6, 'Daudnagar', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(212, 1, 6, 'Dehri-on-Sone', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(213, 1, 6, 'Dhaka', 1, '2019-05-06 01:26:27', '2019-05-06 01:26:27', NULL),
(214, 1, 6, 'Dighwara', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(215, 1, 6, 'Dumraon', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(216, 1, 6, 'Fatwah', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(217, 1, 6, 'Forbesganj', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(218, 1, 6, 'Gaya', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(219, 1, 6, 'Gogri Jamalpur', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(220, 1, 6, 'Gopalganj', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(221, 1, 6, 'Hajipur', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(222, 1, 6, 'Hilsa', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(223, 1, 6, 'Hisua', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(224, 1, 6, 'Islampur', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(225, 1, 6, 'Jagdispur', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(226, 1, 6, 'Jamalpur', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(227, 1, 6, 'Jamui', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(228, 1, 6, 'Jehanabad', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(229, 1, 6, 'Jhajha', 1, '2019-05-06 01:26:28', '2019-05-06 01:26:28', NULL),
(230, 1, 6, 'Jhanjharpur', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(231, 1, 6, 'Jogabani', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(232, 1, 6, 'Kanti', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(233, 1, 6, 'Katihar', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(234, 1, 6, 'Khagaria', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(235, 1, 6, 'Kharagpur', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(236, 1, 6, 'Kishanganj', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(237, 1, 6, 'Lakhisarai', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(238, 1, 6, 'Lalganj', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(239, 1, 6, 'Madhepura', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(240, 1, 6, 'Madhubani', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(241, 1, 6, 'Maharajganj', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(242, 1, 6, 'Mahnar Bazar', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(243, 1, 6, 'Makhdumpur', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(244, 1, 6, 'Maner', 1, '2019-05-06 01:26:29', '2019-05-06 01:26:29', NULL),
(245, 1, 6, 'Manihari', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(246, 1, 6, 'Marhaura', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(247, 1, 6, 'Masaurhi', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(248, 1, 6, 'Mirganj', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(249, 1, 6, 'Mokameh', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(250, 1, 6, 'Motihari', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(251, 1, 6, 'Motipur', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(252, 1, 6, 'Munger', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(253, 1, 6, 'Murliganj', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(254, 1, 6, 'Muzaffarpur', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(255, 1, 6, 'Narkatiaganj', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(256, 1, 6, 'Naugachhia', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(257, 1, 6, 'Nawada', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(258, 1, 6, 'Nokha', 1, '2019-05-06 01:26:30', '2019-05-06 01:26:30', NULL),
(259, 1, 6, 'Patna', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(260, 1, 6, 'Piro', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(261, 1, 6, 'Purnia', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(262, 1, 6, 'Rafiganj', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(263, 1, 6, 'Rajgir', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(264, 1, 6, 'Ramnagar', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(265, 1, 6, 'Raxaul Bazar', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(266, 1, 6, 'Revelganj', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(267, 1, 6, 'Rosera', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(268, 1, 6, 'Saharsa', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(269, 1, 6, 'Samastipur', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(270, 1, 6, 'Sasaram', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(271, 1, 6, 'Sheikhpura', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(272, 1, 6, 'Sheohar', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(273, 1, 6, 'Sherghati', 1, '2019-05-06 01:26:31', '2019-05-06 01:26:31', NULL),
(274, 1, 6, 'Silao', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(275, 1, 6, 'Sitamarhi', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(276, 1, 6, 'Siwan', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(277, 1, 6, 'Sonepur', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(278, 1, 6, 'Sugauli', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(279, 1, 6, 'Sultanganj', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(280, 1, 6, 'Supaul', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(281, 1, 6, 'Warisaliganj', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(282, 1, 7, 'Ahiwara', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(283, 1, 7, 'Akaltara', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(284, 1, 7, 'Ambagarh Chowki', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(285, 1, 7, 'Ambikapur', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(286, 1, 7, 'Arang', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(287, 1, 7, 'Bade Bacheli', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(288, 1, 7, 'Balod', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(289, 1, 7, 'Baloda Bazar', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(290, 1, 7, 'Bemetra', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(291, 1, 7, 'Bhatapara', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(292, 1, 7, 'Bilaspur', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(293, 1, 7, 'Birgaon', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(294, 1, 7, 'Champa', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(295, 1, 7, 'Chirmiri', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(296, 1, 7, 'Dalli-Rajhara', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(297, 1, 7, 'Dhamtari', 1, '2019-05-06 01:26:33', '2019-05-06 01:26:33', NULL),
(298, 1, 7, 'Dipka', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(299, 1, 7, 'Dongargarh', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(300, 1, 7, 'Durg-Bhilai Nagar', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(301, 1, 7, 'Gobranawapara', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(302, 1, 7, 'Jagdalpur', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(303, 1, 7, 'Janjgir', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(304, 1, 7, 'Jashpurnagar', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(305, 1, 7, 'Kanker', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(306, 1, 7, 'Kawardha', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(307, 1, 7, 'Kondagaon', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(308, 1, 7, 'Korba', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(309, 1, 7, 'Mahasamund', 1, '2019-05-06 01:26:34', '2019-05-06 01:26:34', NULL),
(310, 1, 7, 'Mahendragarh', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(311, 1, 7, 'Mungeli', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(312, 1, 7, 'Naila Janjgir', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(313, 1, 7, 'Raigarh', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(314, 1, 7, 'Raipur', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(315, 1, 7, 'Rajnandgaon', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(316, 1, 7, 'Sakti', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(317, 1, 7, 'Tilda Newra', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(318, 1, 8, 'Amli', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(319, 1, 8, 'Silvassa', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(320, 1, 9, 'Daman and Diu', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(321, 1, 10, 'Asola', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(322, 1, 10, 'Delhi', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(323, 1, 11, 'Aldona', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(324, 1, 11, 'Curchorem Cacora', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(325, 1, 11, 'Madgaon', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(326, 1, 11, 'Mapusa', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(327, 1, 11, 'Margao', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(328, 1, 11, 'Marmagao', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(329, 1, 11, 'Panaji', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(330, 1, 12, 'Ahmedabad', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(331, 1, 12, 'Amreli', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(332, 1, 12, 'Anand', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(333, 1, 12, 'Ankleshwar', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(334, 1, 12, 'Bharuch', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(335, 1, 12, 'Bhavnagar', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(336, 1, 12, 'Bhuj', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(337, 1, 12, 'Cambay', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(338, 1, 12, 'Dahod', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(339, 1, 12, 'Deesa', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(340, 1, 12, 'Dharampur', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(341, 1, 12, 'Dholka', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(342, 1, 12, 'Gandhinagar', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(343, 1, 12, 'Godhra', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(344, 1, 12, 'Himatnagar', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(345, 1, 12, 'Idar', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(346, 1, 12, 'Jamnagar', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(347, 1, 12, 'Junagadh', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(348, 1, 12, 'Kadi', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(349, 1, 12, 'Kalavad', 1, '2019-05-06 01:26:38', '2019-05-06 01:26:38', NULL),
(350, 1, 12, 'Kalol', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(351, 1, 12, 'Kapadvanj', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(352, 1, 12, 'Karjan', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(353, 1, 12, 'Keshod', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(354, 1, 12, 'Khambhalia', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(355, 1, 12, 'Khambhat', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(356, 1, 12, 'Kheda', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(357, 1, 12, 'Khedbrahma', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(358, 1, 12, 'Kheralu', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(359, 1, 12, 'Kodinar', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(360, 1, 12, 'Lathi', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(361, 1, 12, 'Limbdi', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(362, 1, 12, 'Lunawada', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(363, 1, 12, 'Mahesana', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(364, 1, 12, 'Mahuva', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(365, 1, 12, 'Manavadar', 1, '2019-05-06 01:26:39', '2019-05-06 01:26:39', NULL),
(366, 1, 12, 'Mandvi', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(367, 1, 12, 'Mangrol', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(368, 1, 12, 'Mansa', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(369, 1, 12, 'Mehmedabad', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(370, 1, 12, 'Modasa', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(371, 1, 12, 'Morvi', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(372, 1, 12, 'Nadiad', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(373, 1, 12, 'Navsari', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(374, 1, 12, 'Padra', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(375, 1, 12, 'Palanpur', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(376, 1, 12, 'Palitana', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(377, 1, 12, 'Pardi', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(378, 1, 12, 'Patan', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(379, 1, 12, 'Petlad', 1, '2019-05-06 01:26:40', '2019-05-06 01:26:40', NULL),
(380, 1, 12, 'Porbandar', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(381, 1, 12, 'Radhanpur', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(382, 1, 12, 'Rajkot', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(383, 1, 12, 'Rajpipla', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(384, 1, 12, 'Rajula', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(385, 1, 12, 'Ranavav', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(386, 1, 12, 'Rapar', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(387, 1, 12, 'Salaya', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(388, 1, 12, 'Sanand', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(389, 1, 12, 'Savarkundla', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(390, 1, 12, 'Sidhpur', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(391, 1, 12, 'Sihor', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(392, 1, 12, 'Songadh', 1, '2019-05-06 01:26:41', '2019-05-06 01:26:41', NULL),
(393, 1, 12, 'Surat', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(394, 1, 12, 'Talaja', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(395, 1, 12, 'Thangadh', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(396, 1, 12, 'Tharad', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(397, 1, 12, 'Umbergaon', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(398, 1, 12, 'Umreth', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(399, 1, 12, 'Una', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(400, 1, 12, 'Unjha', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(401, 1, 12, 'Upleta', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(402, 1, 12, 'Vadnagar', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(403, 1, 12, 'Vadodara', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(404, 1, 12, 'Valsad', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(405, 1, 12, 'Vapi', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(406, 1, 12, 'Veraval', 1, '2019-05-06 01:26:42', '2019-05-06 01:26:42', NULL),
(407, 1, 12, 'Vijapur', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(408, 1, 12, 'Viramgam', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(409, 1, 12, 'Visnagar', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(410, 1, 12, 'Vyara', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(411, 1, 12, 'Wadhwan', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(412, 1, 12, 'Wankaner', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(413, 1, 12, 'Adalaj', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(414, 1, 12, 'Adityana', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(415, 1, 12, 'Alang', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(416, 1, 12, 'Ambaji', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(417, 1, 12, 'Ambaliyasan', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(418, 1, 12, 'Andada', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(419, 1, 12, 'Anjar', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(420, 1, 12, 'Anklav', 1, '2019-05-06 01:26:43', '2019-05-06 01:26:43', NULL),
(421, 1, 12, 'Antaliya', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(422, 1, 12, 'Arambhada', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(423, 1, 12, 'Atul', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(424, 1, 13, 'Ballabhgarh', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(425, 1, 13, 'Ambala', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(426, 1, 13, 'Asankhurd', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(427, 1, 13, 'Assandh', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(428, 1, 13, 'Ateli', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(429, 1, 13, 'Babiyal', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(430, 1, 13, 'Bahadurgarh', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(431, 1, 13, 'Barwala', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(432, 1, 13, 'Bhiwani', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(433, 1, 13, 'Charkhi Dadri', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(434, 1, 13, 'Cheeka', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(435, 1, 13, 'Ellenabad 2', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(436, 1, 13, 'Faridabad', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(437, 1, 13, 'Fatehabad', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(438, 1, 13, 'Ganaur', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(439, 1, 13, 'Gharaunda', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(440, 1, 13, 'Gohana', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(441, 1, 13, 'Gurgaon', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(442, 1, 13, 'Haibat(Yamuna Nagar)', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(443, 1, 13, 'Hansi', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(444, 1, 13, 'Hisar', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(445, 1, 13, 'Hodal', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(446, 1, 13, 'Jhajjar', 1, '2019-05-06 01:26:45', '2019-05-06 01:26:45', NULL),
(447, 1, 13, 'Jind', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(448, 1, 13, 'Kaithal', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(449, 1, 13, 'Kalan Wali', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(450, 1, 13, 'Kalka', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(451, 1, 13, 'Karnal', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(452, 1, 13, 'Ladwa', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(453, 1, 13, 'Mahendragarh', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(454, 1, 13, 'Mandi Dabwali', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(455, 1, 13, 'Narnaul', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(456, 1, 13, 'Narwana', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(457, 1, 13, 'Palwal', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(458, 1, 13, 'Panchkula', 1, '2019-05-06 01:26:46', '2019-05-06 01:26:46', NULL),
(459, 1, 13, 'Panipat', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(460, 1, 13, 'Pehowa', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(461, 1, 13, 'Pinjore', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(462, 1, 13, 'Rania', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(463, 1, 13, 'Ratia', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(464, 1, 13, 'Rewari', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(465, 1, 13, 'Rohtak', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(466, 1, 13, 'Safidon', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(467, 1, 13, 'Samalkha', 1, '2019-05-06 01:26:47', '2019-05-06 01:26:47', NULL),
(468, 1, 13, 'Shahbad', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(469, 1, 13, 'Sirsa', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(470, 1, 13, 'Sohna', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(471, 1, 13, 'Sonipat', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(472, 1, 13, 'Taraori', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(473, 1, 13, 'Thanesar', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(474, 1, 13, 'Tohana', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(475, 1, 13, 'Yamunanagar', 1, '2019-05-06 01:26:48', '2019-05-06 01:26:48', NULL),
(476, 1, 14, 'Arki', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(477, 1, 14, 'Baddi', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(478, 1, 14, 'Bilaspur', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(479, 1, 14, 'Chamba', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(480, 1, 14, 'Dalhousie', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(481, 1, 14, 'Dharamsala', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(482, 1, 14, 'Hamirpur', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(483, 1, 14, 'Mandi', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(484, 1, 14, 'Nahan', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(485, 1, 14, 'Shimla', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(486, 1, 14, 'Solan', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(487, 1, 14, 'Sundarnagar', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(488, 1, 15, 'Jammu', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(489, 1, 15, 'Achabbal', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(490, 1, 15, 'Akhnoor', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(491, 1, 15, 'Anantnag', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(492, 1, 15, 'Arnia', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(493, 1, 15, 'Awantipora', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(494, 1, 15, 'Bandipore', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(495, 1, 15, 'Baramula', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(496, 1, 15, 'Kathua', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(497, 1, 15, 'Leh', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(498, 1, 15, 'Punch', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(499, 1, 15, 'Rajauri', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(500, 1, 15, 'Sopore', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(501, 1, 15, 'Srinagar', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(502, 1, 15, 'Udhampur', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(503, 1, 16, 'Amlabad', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(504, 1, 16, 'Ara', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(505, 1, 16, 'Barughutu', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(506, 1, 16, 'Bokaro Steel City', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(507, 1, 16, 'Chaibasa', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(508, 1, 16, 'Chakradharpur', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(509, 1, 16, 'Chandrapura', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(510, 1, 16, 'Chatra', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(511, 1, 16, 'Chirkunda', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(512, 1, 16, 'Churi', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(513, 1, 16, 'Daltonganj', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(514, 1, 16, 'Deoghar', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(515, 1, 16, 'Dhanbad', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(516, 1, 16, 'Dumka', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(517, 1, 16, 'Garhwa', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(518, 1, 16, 'Ghatshila', 1, '2019-05-06 01:26:52', '2019-05-06 01:26:52', NULL),
(519, 1, 16, 'Giridih', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(520, 1, 16, 'Godda', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(521, 1, 16, 'Gomoh', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(522, 1, 16, 'Gumia', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(523, 1, 16, 'Gumla', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(524, 1, 16, 'Hazaribag', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(525, 1, 16, 'Hussainabad', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(526, 1, 16, 'Jamshedpur', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(527, 1, 16, 'Jamtara', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(528, 1, 16, 'Jhumri Tilaiya', 1, '2019-05-06 01:26:53', '2019-05-06 01:26:53', NULL),
(529, 1, 16, 'Khunti', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(530, 1, 16, 'Lohardaga', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(531, 1, 16, 'Madhupur', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(532, 1, 16, 'Mihijam', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(533, 1, 16, 'Musabani', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(534, 1, 16, 'Pakaur', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(535, 1, 16, 'Patratu', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(536, 1, 16, 'Phusro', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(537, 1, 16, 'Ramngarh', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(538, 1, 16, 'Ranchi', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(539, 1, 16, 'Sahibganj', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(540, 1, 16, 'Saunda', 1, '2019-05-06 01:26:54', '2019-05-06 01:26:54', NULL),
(541, 1, 16, 'Simdega', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(542, 1, 16, 'Tenu Dam-cum- Kathhara', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(543, 1, 17, 'Arasikere', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(544, 1, 17, 'Bangalore', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(545, 1, 17, 'Belgaum', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(546, 1, 17, 'Bellary', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(547, 1, 17, 'Chamrajnagar', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(548, 1, 17, 'Chikkaballapur', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(549, 1, 17, 'Chintamani', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(550, 1, 17, 'Chitradurga', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(551, 1, 17, 'Gulbarga', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(552, 1, 17, 'Gundlupet', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(553, 1, 17, 'Hassan', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(554, 1, 17, 'Hospet', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(555, 1, 17, 'Hubli', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(556, 1, 17, 'Karkala', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(557, 1, 17, 'Karwar', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(558, 1, 17, 'Kolar', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(559, 1, 17, 'Kota', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(560, 1, 17, 'Lakshmeshwar', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(561, 1, 17, 'Lingsugur', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(562, 1, 17, 'Maddur', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(563, 1, 17, 'Madhugiri', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(564, 1, 17, 'Madikeri', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(565, 1, 17, 'Magadi', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(566, 1, 17, 'Mahalingpur', 1, '2019-05-06 01:26:56', '2019-05-06 01:26:56', NULL),
(567, 1, 17, 'Malavalli', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(568, 1, 17, 'Malur', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(569, 1, 17, 'Mandya', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(570, 1, 17, 'Mangalore', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(571, 1, 17, 'Manvi', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(572, 1, 17, 'Mudalgi', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(573, 1, 17, 'Mudbidri', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(574, 1, 17, 'Muddebihal', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(575, 1, 17, 'Mudhol', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(576, 1, 17, 'Mulbagal', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(577, 1, 17, 'Mundargi', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(578, 1, 17, 'Mysore', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(579, 1, 17, 'Nanjangud', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(580, 1, 17, 'Pavagada', 1, '2019-05-06 01:26:57', '2019-05-06 01:26:57', NULL),
(581, 1, 17, 'Puttur', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(582, 1, 17, 'Rabkavi Banhatti', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(583, 1, 17, 'Raichur', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(584, 1, 17, 'Ramanagaram', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(585, 1, 17, 'Ramdurg', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(586, 1, 17, 'Ranibennur', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(587, 1, 17, 'Robertson Pet', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(588, 1, 17, 'Ron', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(589, 1, 17, 'Sadalgi', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(590, 1, 17, 'Sagar', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(591, 1, 17, 'Sakleshpur', 1, '2019-05-06 01:26:58', '2019-05-06 01:26:58', NULL),
(592, 1, 17, 'Sandur', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(593, 1, 17, 'Sankeshwar', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(594, 1, 17, 'Saundatti-Yellamma', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(595, 1, 17, 'Savanur', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(596, 1, 17, 'Sedam', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(597, 1, 17, 'Shahabad', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(598, 1, 17, 'Shahpur', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(599, 1, 17, 'Shiggaon', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(600, 1, 17, 'Shikapur', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(601, 1, 17, 'Shimoga', 1, '2019-05-06 01:26:59', '2019-05-06 01:26:59', NULL),
(602, 1, 17, 'Shorapur', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(603, 1, 17, 'Shrirangapattana', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(604, 1, 17, 'Sidlaghatta', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(605, 1, 17, 'Sindgi', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(606, 1, 17, 'Sindhnur', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(607, 1, 17, 'Sira', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(608, 1, 17, 'Sirsi', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(609, 1, 17, 'Siruguppa', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(610, 1, 17, 'Srinivaspur', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(611, 1, 17, 'Talikota', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(612, 1, 17, 'Tarikere', 1, '2019-05-06 01:27:00', '2019-05-06 01:27:00', NULL),
(613, 1, 17, 'Tekkalakota', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(614, 1, 17, 'Terdal', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(615, 1, 17, 'Tiptur', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(616, 1, 17, 'Tumkur', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(617, 1, 17, 'Udupi', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(618, 1, 17, 'Vijayapura', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(619, 1, 17, 'Wadi', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(620, 1, 17, 'Yadgir', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(621, 1, 18, 'Adoor', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(622, 1, 18, 'Akathiyoor', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(623, 1, 18, 'Alappuzha', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(624, 1, 18, 'Ancharakandy', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(625, 1, 18, 'Aroor', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(626, 1, 18, 'Ashtamichira', 1, '2019-05-06 01:27:02', '2019-05-06 01:27:02', NULL),
(627, 1, 18, 'Attingal', 1, '2019-05-06 01:27:03', '2019-05-06 01:27:03', NULL),
(628, 1, 18, 'Avinissery', 1, '2019-05-06 01:27:03', '2019-05-06 01:27:03', NULL),
(629, 1, 18, 'Chalakudy', 1, '2019-05-06 01:27:03', '2019-05-06 01:27:03', NULL),
(630, 1, 18, 'Changanassery', 1, '2019-05-06 01:27:03', '2019-05-06 01:27:03', NULL),
(631, 1, 18, 'Chendamangalam', 1, '2019-05-06 01:27:03', '2019-05-06 01:27:03', NULL),
(632, 1, 18, 'Chengannur', 1, '2019-05-06 01:27:04', '2019-05-06 01:27:04', NULL),
(633, 1, 18, 'Cherthala', 1, '2019-05-06 01:27:04', '2019-05-06 01:27:04', NULL),
(634, 1, 18, 'Cheruthazham', 1, '2019-05-06 01:27:04', '2019-05-06 01:27:04', NULL),
(635, 1, 18, 'Chittur-Thathamangalam', 1, '2019-05-06 01:27:05', '2019-05-06 01:27:05', NULL),
(636, 1, 18, 'Chockli', 1, '2019-05-06 01:27:05', '2019-05-06 01:27:05', NULL);
INSERT INTO `cities` (`id`, `country_id`, `state_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(637, 1, 18, 'Erattupetta', 1, '2019-05-06 01:27:05', '2019-05-06 01:27:05', NULL),
(638, 1, 18, 'Guruvayoor', 1, '2019-05-06 01:27:05', '2019-05-06 01:27:05', NULL),
(639, 1, 18, 'Irinjalakuda', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(640, 1, 18, 'Kadirur', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(641, 1, 18, 'Kalliasseri', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(642, 1, 18, 'Kalpetta', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(643, 1, 18, 'Kanhangad', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(644, 1, 18, 'Kanjikkuzhi', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(645, 1, 18, 'Kannur', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(646, 1, 18, 'Kasaragod', 1, '2019-05-06 01:27:06', '2019-05-06 01:27:06', NULL),
(647, 1, 18, 'Kayamkulam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(648, 1, 18, 'Kochi', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(649, 1, 18, 'Kodungallur', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(650, 1, 18, 'Kollam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(651, 1, 18, 'Koothuparamba', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(652, 1, 18, 'Kothamangalam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(653, 1, 18, 'Kottayam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(654, 1, 18, 'Kozhikode', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(655, 1, 18, 'Kunnamkulam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(656, 1, 18, 'Malappuram', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(657, 1, 18, 'Mattannur', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(658, 1, 18, 'Mavelikkara', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(659, 1, 18, 'Mavoor', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(660, 1, 18, 'Muvattupuzha', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(661, 1, 18, 'Nedumangad', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(662, 1, 18, 'Neyyattinkara', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(663, 1, 18, 'Ottappalam', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(664, 1, 18, 'Palai', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(665, 1, 18, 'Palakkad', 1, '2019-05-06 01:27:07', '2019-05-06 01:27:07', NULL),
(666, 1, 18, 'Panniyannur', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(667, 1, 18, 'Pappinisseri', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(668, 1, 18, 'Paravoor', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(669, 1, 18, 'Pathanamthitta', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(670, 1, 18, 'Payyannur', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(671, 1, 18, 'Peringathur', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(672, 1, 18, 'Perinthalmanna', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(673, 1, 18, 'Perumbavoor', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(674, 1, 18, 'Ponnani', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(675, 1, 18, 'Punalur', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(676, 1, 18, 'Quilandy', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(677, 1, 18, 'Shoranur', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(678, 1, 18, 'Taliparamba', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(679, 1, 18, 'Thiruvalla', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(680, 1, 18, 'Thiruvananthapuram', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(681, 1, 18, 'Thodupuzha', 1, '2019-05-06 01:27:08', '2019-05-06 01:27:08', NULL),
(682, 1, 18, 'Thrissur', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(683, 1, 18, 'Tirur', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(684, 1, 18, 'Vadakara', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(685, 1, 18, 'Vaikom', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(686, 1, 18, 'Varkala', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(687, 1, 19, 'Kavaratti', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(688, 1, 20, 'Ashok Nagar', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(689, 1, 20, 'Balaghat', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(690, 1, 20, 'Betul', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(691, 1, 20, 'Bhopal', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(692, 1, 20, 'Burhanpur', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(693, 1, 20, 'Chhatarpur', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(694, 1, 20, 'Dabra', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(695, 1, 20, 'Datia', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(696, 1, 20, 'Dewas', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(697, 1, 20, 'Dhar', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(698, 1, 20, 'Fatehabad', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(699, 1, 20, 'Gwalior', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(700, 1, 20, 'Indore', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(701, 1, 20, 'Itarsi', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(702, 1, 20, 'Jabalpur', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(703, 1, 20, 'Katni', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(704, 1, 20, 'Kotma', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(705, 1, 20, 'Lahar', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(706, 1, 20, 'Lundi', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(707, 1, 20, 'Maharajpur', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(708, 1, 20, 'Mahidpur', 1, '2019-05-06 01:27:10', '2019-05-06 01:27:10', NULL),
(709, 1, 20, 'Maihar', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(710, 1, 20, 'Malajkhand', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(711, 1, 20, 'Manasa', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(712, 1, 20, 'Manawar', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(713, 1, 20, 'Mandideep', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(714, 1, 20, 'Mandla', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(715, 1, 20, 'Mandsaur', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(716, 1, 20, 'Mauganj', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(717, 1, 20, 'Mhow Cantonment', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(718, 1, 20, 'Mhowgaon', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(719, 1, 20, 'Morena', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(720, 1, 20, 'Multai', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(721, 1, 20, 'Murwara', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(722, 1, 20, 'Nagda', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(723, 1, 20, 'Nainpur', 1, '2019-05-06 01:27:11', '2019-05-06 01:27:11', NULL),
(724, 1, 20, 'Narsinghgarh', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(725, 1, 20, 'Neemuch', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(726, 1, 20, 'Nepanagar', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(727, 1, 20, 'Niwari', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(728, 1, 20, 'Nowgong', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(729, 1, 20, 'Nowrozabad', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(730, 1, 20, 'Pachore', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(731, 1, 20, 'Pali', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(732, 1, 20, 'Panagar', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(733, 1, 20, 'Pandhurna', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(734, 1, 20, 'Panna', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(735, 1, 20, 'Pasan', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(736, 1, 20, 'Pipariya', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(737, 1, 20, 'Pithampur', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(738, 1, 20, 'Porsa', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(739, 1, 20, 'Prithvipur', 1, '2019-05-06 01:27:12', '2019-05-06 01:27:12', NULL),
(740, 1, 20, 'Raghogarh-Vijaypur', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(741, 1, 20, 'Rahatgarh', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(742, 1, 20, 'Raisen', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(743, 1, 20, 'Rajgarh', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(744, 1, 20, 'Ratlam', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(745, 1, 20, 'Rau', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(746, 1, 20, 'Rehli', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(747, 1, 20, 'Rewa', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(748, 1, 20, 'Sabalgarh', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(749, 1, 20, 'Sagar', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(750, 1, 20, 'Sanawad', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(751, 1, 20, 'Sarangpur', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(752, 1, 20, 'Sarni', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(753, 1, 20, 'Satna', 1, '2019-05-06 01:27:13', '2019-05-06 01:27:13', NULL),
(754, 1, 20, 'Sausar', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(755, 1, 20, 'Sehore', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(756, 1, 20, 'Sendhwa', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(757, 1, 20, 'Seoni', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(758, 1, 20, 'Seoni-Malwa', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(759, 1, 20, 'Shahdol', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(760, 1, 20, 'Shajapur', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(761, 1, 20, 'Shamgarh', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(762, 1, 20, 'Sheopur', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(763, 1, 20, 'Shivpuri', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(764, 1, 20, 'Shujalpur', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(765, 1, 20, 'Sidhi', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(766, 1, 20, 'Sihora', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(767, 1, 20, 'Singrauli', 1, '2019-05-06 01:27:14', '2019-05-06 01:27:14', NULL),
(768, 1, 20, 'Sironj', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(769, 1, 20, 'Sohagpur', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(770, 1, 20, 'Tarana', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(771, 1, 20, 'Tikamgarh', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(772, 1, 20, 'Ujhani', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(773, 1, 20, 'Ujjain', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(774, 1, 20, 'Umaria', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(775, 1, 20, 'Vidisha', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(776, 1, 20, 'Wara Seoni', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(777, 1, 1, 'Ahmednagar', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(778, 1, 1, 'Akola', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(779, 1, 1, 'Amravati', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(780, 1, 1, 'Aurangabad', 1, '2019-05-06 01:27:15', '2019-05-06 01:27:15', NULL),
(781, 1, 1, 'Baramati', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(782, 1, 1, 'Chalisgaon', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(783, 1, 1, 'Chinchani', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(784, 1, 1, 'Devgarh', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(785, 1, 1, 'Dhule', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(786, 1, 1, 'Dombivli', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(787, 1, 1, 'Durgapur', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(788, 1, 1, 'Ichalkaranji', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(789, 1, 1, 'Jalna', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(790, 1, 1, 'Kalyan', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(791, 1, 1, 'Latur', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(792, 1, 1, 'Loha', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(793, 1, 1, 'Lonar', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(794, 1, 1, 'Lonavla', 1, '2019-05-06 01:27:16', '2019-05-06 01:27:16', NULL),
(795, 1, 1, 'Mahad', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(796, 1, 1, 'Mahuli', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(797, 1, 1, 'Malegaon', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(798, 1, 1, 'Malkapur', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(799, 1, 1, 'Manchar', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(800, 1, 1, 'Mangalvedhe', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(801, 1, 1, 'Mangrulpir', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(802, 1, 1, 'Manjlegaon', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(803, 1, 1, 'Manmad', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(804, 1, 1, 'Manwath', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(805, 1, 1, 'Mehkar', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(806, 1, 1, 'Mhaswad', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(807, 1, 1, 'Miraj', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(808, 1, 1, 'Morshi', 1, '2019-05-06 01:27:17', '2019-05-06 01:27:17', NULL),
(809, 1, 1, 'Mukhed', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(810, 1, 1, 'Mul', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(811, 1, 1, 'Mumbai', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(812, 1, 1, 'Murtijapur', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(813, 1, 1, 'Nagpur', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(814, 1, 1, 'Nalasopara', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(815, 1, 1, 'Nanded-Waghala', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(816, 1, 1, 'Nandgaon', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(817, 1, 1, 'Nandura', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(818, 1, 1, 'Nandurbar', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(819, 1, 1, 'Narkhed', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(820, 1, 1, 'Nashik', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(821, 1, 1, 'Navi Mumbai', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(822, 1, 1, 'Nawapur', 1, '2019-05-06 01:27:18', '2019-05-06 01:27:18', NULL),
(823, 1, 1, 'Nilanga', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(824, 1, 1, 'Osmanabad', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(825, 1, 1, 'Ozar', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(826, 1, 1, 'Pachora', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(827, 1, 1, 'Paithan', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(828, 1, 1, 'Palghar', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(829, 1, 1, 'Pandharkaoda', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(830, 1, 1, 'Pandharpur', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(831, 1, 1, 'Panvel', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(832, 1, 1, 'Parbhani', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(833, 1, 1, 'Parli', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(834, 1, 1, 'Parola', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(835, 1, 1, 'Partur', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(836, 1, 1, 'Pathardi', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(837, 1, 1, 'Pathri', 1, '2019-05-06 01:27:19', '2019-05-06 01:27:19', NULL),
(838, 1, 1, 'Patur', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(839, 1, 1, 'Pauni', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(840, 1, 1, 'Pen', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(841, 1, 1, 'Phaltan', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(842, 1, 1, 'Pulgaon', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(843, 1, 1, 'Pune', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(844, 1, 1, 'Purna', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(845, 1, 1, 'Pusad', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(846, 1, 1, 'Rahuri', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(847, 1, 1, 'Rajura', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(848, 1, 1, 'Ramtek', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(849, 1, 1, 'Ratnagiri', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(850, 1, 1, 'Raver', 1, '2019-05-06 01:27:20', '2019-05-06 01:27:20', NULL),
(851, 1, 1, 'Risod', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(852, 1, 1, 'Sailu', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(853, 1, 1, 'Sangamner', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(854, 1, 1, 'Sangli', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(855, 1, 1, 'Sangole', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(856, 1, 1, 'Sasvad', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(857, 1, 1, 'Satana', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(858, 1, 1, 'Satara', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(859, 1, 1, 'Savner', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(860, 1, 1, 'Sawantwadi', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(861, 1, 1, 'Shahade', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(862, 1, 1, 'Shegaon', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(863, 1, 1, 'Shendurjana', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(864, 1, 1, 'Shirdi', 1, '2019-05-06 01:27:21', '2019-05-06 01:27:21', NULL),
(865, 1, 1, 'Shirpur-Warwade', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(866, 1, 1, 'Shirur', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(867, 1, 1, 'Shrigonda', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(868, 1, 1, 'Shrirampur', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(869, 1, 1, 'Sillod', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(870, 1, 1, 'Sinnar', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(871, 1, 1, 'Solapur', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(872, 1, 1, 'Soyagaon', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(873, 1, 1, 'Talegaon Dabhade', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(874, 1, 1, 'Talode', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(875, 1, 1, 'Tasgaon', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(876, 1, 1, 'Tirora', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(877, 1, 1, 'Tuljapur', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(878, 1, 1, 'Tumsar', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(879, 1, 1, 'Uran', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(880, 1, 1, 'Uran Islampur', 1, '2019-05-06 01:27:22', '2019-05-06 01:27:22', NULL),
(881, 1, 1, 'Wadgaon Road', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(882, 1, 1, 'Wai', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(883, 1, 1, 'Wani', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(884, 1, 1, 'Wardha', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(885, 1, 1, 'Warora', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(886, 1, 1, 'Warud', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(887, 1, 1, 'Washim', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(888, 1, 1, 'Yevla', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(889, 1, 1, 'Uchgaon', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(890, 1, 1, 'Udgir', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(891, 1, 1, 'Umarga', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(892, 1, 1, 'Umarkhed', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(893, 1, 1, 'Umred', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(894, 1, 1, 'Vadgaon Kasba', 1, '2019-05-06 01:27:23', '2019-05-06 01:27:23', NULL),
(895, 1, 1, 'Vaijapur', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(896, 1, 1, 'Vasai', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(897, 1, 1, 'Virar', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(898, 1, 1, 'Vita', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(899, 1, 1, 'Yavatmal', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(900, 1, 1, 'Yawal', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(901, 1, 21, 'Imphal', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(902, 1, 21, 'Kakching', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(903, 1, 21, 'Lilong', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(904, 1, 21, 'Mayang Imphal', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(905, 1, 21, 'Thoubal', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(906, 1, 22, 'Jowai', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(907, 1, 22, 'Nongstoin', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(908, 1, 22, 'Shillong', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(909, 1, 22, 'Tura', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(910, 1, 23, 'Aizawl', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(911, 1, 23, 'Champhai', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(912, 1, 23, 'Lunglei', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(913, 1, 23, 'Saiha', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(914, 1, 24, 'Dimapur', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(915, 1, 24, 'Kohima', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(916, 1, 24, 'Mokokchung', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(917, 1, 24, 'Tuensang', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(918, 1, 24, 'Wokha', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(919, 1, 24, 'Zunheboto', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(920, 1, 25, 'Anandapur', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(921, 1, 25, 'Anugul', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(922, 1, 25, 'Asika', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(923, 1, 25, 'Balangir', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(924, 1, 25, 'Balasore', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(925, 1, 25, 'Baleshwar', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(926, 1, 25, 'Bamra', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(927, 1, 25, 'Barbil', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(928, 1, 25, 'Bargarh', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(929, 1, 25, 'Baripada', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(930, 1, 25, 'Basudebpur', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(931, 1, 25, 'Belpahar', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(932, 1, 25, 'Bhadrak', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(933, 1, 25, 'Bhawanipatna', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(934, 1, 25, 'Bhuban', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(935, 1, 25, 'Bhubaneswar', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(936, 1, 25, 'Biramitrapur', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(937, 1, 25, 'Brahmapur', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(938, 1, 25, 'Brajrajnagar', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(939, 1, 25, 'Byasanagar', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(940, 1, 25, 'Cuttack', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(941, 1, 25, 'Debagarh', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(942, 1, 25, 'Dhenkanal', 1, '2019-05-06 01:27:27', '2019-05-06 01:27:27', NULL),
(943, 1, 25, 'Gunupur', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(944, 1, 25, 'Hinjilicut', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(945, 1, 25, 'Jagatsinghapur', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(946, 1, 25, 'Jajapur', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(947, 1, 25, 'Jaleswar', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(948, 1, 25, 'Jatani', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(949, 1, 25, 'Jeypur', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(950, 1, 25, 'Jharsuguda', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(951, 1, 25, 'Joda', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(952, 1, 25, 'Kantabanji', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(953, 1, 25, 'Karanjia', 1, '2019-05-06 01:27:28', '2019-05-06 01:27:28', NULL),
(954, 1, 25, 'Kendrapara', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(955, 1, 25, 'Kendujhar', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(956, 1, 25, 'Khordha', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(957, 1, 25, 'Koraput', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(958, 1, 25, 'Malkangiri', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(959, 1, 25, 'Nabarangapur', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(960, 1, 25, 'Paradip', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(961, 1, 25, 'Parlakhemundi', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(962, 1, 25, 'Pattamundai', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(963, 1, 25, 'Phulabani', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(964, 1, 25, 'Puri', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(965, 1, 25, 'Rairangpur', 1, '2019-05-06 01:27:29', '2019-05-06 01:27:29', NULL),
(966, 1, 25, 'Rajagangapur', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(967, 1, 25, 'Raurkela', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(968, 1, 25, 'Rayagada', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(969, 1, 25, 'Sambalpur', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(970, 1, 25, 'Soro', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(971, 1, 25, 'Sunabeda', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(972, 1, 25, 'Sundargarh', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(973, 1, 25, 'Talcher', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(974, 1, 25, 'Titlagarh', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(975, 1, 25, 'Umarkote', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(976, 1, 26, 'Karaikal', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(977, 1, 26, 'Mahe', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(978, 1, 26, 'Pondicherry', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(979, 1, 26, 'Yanam', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(980, 1, 27, 'Ahmedgarh', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(981, 1, 27, 'Amritsar', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(982, 1, 27, 'Barnala', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(983, 1, 27, 'Batala', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(984, 1, 27, 'Bathinda', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(985, 1, 27, 'Bhagha Purana', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(986, 1, 27, 'Budhlada', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(987, 1, 27, 'Chandigarh', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(988, 1, 27, 'Dasua', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(989, 1, 27, 'Dhuri', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(990, 1, 27, 'Dinanagar', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(991, 1, 27, 'Faridkot', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(992, 1, 27, 'Fazilka', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(993, 1, 27, 'Firozpur', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(994, 1, 27, 'Firozpur Cantt.', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(995, 1, 27, 'Giddarbaha', 1, '2019-05-06 01:27:32', '2019-05-06 01:27:32', NULL),
(996, 1, 27, 'Gobindgarh', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(997, 1, 27, 'Gurdaspur', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(998, 1, 27, 'Hoshiarpur', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(999, 1, 27, 'Jagraon', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1000, 1, 27, 'Jaitu', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1001, 1, 27, 'Jalalabad', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1002, 1, 27, 'Jalandhar', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1003, 1, 27, 'Jalandhar Cantt.', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1004, 1, 27, 'Jandiala', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1005, 1, 27, 'Kapurthala', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1006, 1, 27, 'Karoran', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1007, 1, 27, 'Kartarpur', 1, '2019-05-06 01:27:33', '2019-05-06 01:27:33', NULL),
(1008, 1, 27, 'Khanna', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1009, 1, 27, 'Kharar', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1010, 1, 27, 'Kot Kapura', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1011, 1, 27, 'Kurali', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1012, 1, 27, 'Longowal', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1013, 1, 27, 'Ludhiana', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1014, 1, 27, 'Malerkotla', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1015, 1, 27, 'Malout', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1016, 1, 27, 'Mansa', 1, '2019-05-06 01:27:34', '2019-05-06 01:27:34', NULL),
(1017, 1, 27, 'Maur', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1018, 1, 27, 'Moga', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1019, 1, 27, 'Mohali', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1020, 1, 27, 'Morinda', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1021, 1, 27, 'Mukerian', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1022, 1, 27, 'Muktsar', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1023, 1, 27, 'Nabha', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1024, 1, 27, 'Nakodar', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1025, 1, 27, 'Nangal', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1026, 1, 27, 'Nawanshahr', 1, '2019-05-06 01:27:35', '2019-05-06 01:27:35', NULL),
(1027, 1, 27, 'Pathankot', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1028, 1, 27, 'Patiala', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1029, 1, 27, 'Patran', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1030, 1, 27, 'Patti', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1031, 1, 27, 'Phagwara', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1032, 1, 27, 'Phillaur', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1033, 1, 27, 'Qadian', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1034, 1, 27, 'Raikot', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1035, 1, 27, 'Rajpura', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1036, 1, 27, 'Rampura Phul', 1, '2019-05-06 01:27:36', '2019-05-06 01:27:36', NULL),
(1037, 1, 27, 'Rupnagar', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1038, 1, 27, 'Samana', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1039, 1, 27, 'Sangrur', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1040, 1, 27, 'Sirhind Fatehgarh Sahib', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1041, 1, 27, 'Sujanpur', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1042, 1, 27, 'Sunam', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1043, 1, 27, 'Talwara', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1044, 1, 27, 'Tarn Taran', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1045, 1, 27, 'Urmar Tanda', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1046, 1, 27, 'Zira', 1, '2019-05-06 01:27:37', '2019-05-06 01:27:37', NULL),
(1047, 1, 27, 'Zirakpur', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1048, 1, 28, 'Bali', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1049, 1, 28, 'Banswara', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1050, 1, 28, 'Ajmer', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1051, 1, 28, 'Alwar', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1052, 1, 28, 'Bandikui', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1053, 1, 28, 'Baran', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1054, 1, 28, 'Barmer', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1055, 1, 28, 'Bikaner', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(1056, 1, 28, 'Fatehpur', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1057, 1, 28, 'Jaipur', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1058, 1, 28, 'Jaisalmer', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1059, 1, 28, 'Jodhpur', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1060, 1, 28, 'Kota', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1061, 1, 28, 'Lachhmangarh', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1062, 1, 28, 'Ladnu', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1063, 1, 28, 'Lakheri', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1064, 1, 28, 'Lalsot', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1065, 1, 28, 'Losal', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1066, 1, 28, 'Makrana', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1067, 1, 28, 'Malpura', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1068, 1, 28, 'Mandalgarh', 1, '2019-05-06 01:27:39', '2019-05-06 01:27:39', NULL),
(1069, 1, 28, 'Mandawa', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1070, 1, 28, 'Mangrol', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1071, 1, 28, 'Merta City', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1072, 1, 28, 'Mount Abu', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1073, 1, 28, 'Nadbai', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1074, 1, 28, 'Nagar', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1075, 1, 28, 'Nagaur', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1076, 1, 28, 'Nargund', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1077, 1, 28, 'Nasirabad', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1078, 1, 28, 'Nathdwara', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1079, 1, 28, 'Navalgund', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1080, 1, 28, 'Nawalgarh', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1081, 1, 28, 'Neem-Ka-Thana', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1082, 1, 28, 'Nelamangala', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1083, 1, 28, 'Nimbahera', 1, '2019-05-06 01:27:40', '2019-05-06 01:27:40', NULL),
(1084, 1, 28, 'Nipani', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1085, 1, 28, 'Niwai', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1086, 1, 28, 'Nohar', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1087, 1, 28, 'Nokha', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1088, 1, 28, 'Pali', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1089, 1, 28, 'Phalodi', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1090, 1, 28, 'Phulera', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1091, 1, 28, 'Pilani', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1092, 1, 28, 'Pilibanga', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1093, 1, 28, 'Pindwara', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1094, 1, 28, 'Pipar City', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1095, 1, 28, 'Prantij', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1096, 1, 28, 'Pratapgarh', 1, '2019-05-06 01:27:41', '2019-05-06 01:27:41', NULL),
(1097, 1, 28, 'Raisinghnagar', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1098, 1, 28, 'Rajakhera', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1099, 1, 28, 'Rajaldesar', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1100, 1, 28, 'Rajgarh (Alwar)', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1101, 1, 28, 'Rajgarh (Churu', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1102, 1, 28, 'Rajsamand', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1103, 1, 28, 'Ramganj Mandi', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1104, 1, 28, 'Ramngarh', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1105, 1, 28, 'Ratangarh', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1106, 1, 28, 'Rawatbhata', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1107, 1, 28, 'Rawatsar', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1108, 1, 28, 'Reengus', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1109, 1, 28, 'Sadri', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1110, 1, 28, 'Sadulshahar', 1, '2019-05-06 01:27:42', '2019-05-06 01:27:42', NULL),
(1111, 1, 28, 'Sagwara', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1112, 1, 28, 'Sambhar', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1113, 1, 28, 'Sanchore', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1114, 1, 28, 'Sangaria', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1115, 1, 28, 'Sardarshahar', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1116, 1, 28, 'Sawai Madhopur', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1117, 1, 28, 'Shahpura', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1118, 1, 28, 'Sheoganj', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1119, 1, 28, 'Sikar', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1120, 1, 28, 'Sirohi', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1121, 1, 28, 'Sojat', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1122, 1, 28, 'Sri Madhopur', 1, '2019-05-06 01:27:43', '2019-05-06 01:27:43', NULL),
(1123, 1, 28, 'Sujangarh', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1124, 1, 28, 'Sumerpur', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1125, 1, 28, 'Suratgarh', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1126, 1, 28, 'Taranagar', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1127, 1, 28, 'Todabhim', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1128, 1, 28, 'Todaraisingh', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1129, 1, 28, 'Tonk', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1130, 1, 28, 'Udaipur', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1131, 1, 28, 'Udaipurwati', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1132, 1, 28, 'Vijainagar', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1133, 1, 29, 'Gangtok', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(1134, 1, 30, 'Calcutta', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1135, 1, 31, 'Arakkonam', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1136, 1, 31, 'Arcot', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1137, 1, 31, 'Aruppukkottai', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1138, 1, 31, 'Bhavani', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1139, 1, 31, 'Chengalpattu', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1140, 1, 31, 'Chennai', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1141, 1, 31, 'Chinna salem', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1142, 1, 31, 'Coimbatore', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(1143, 1, 31, 'Coonoor', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1144, 1, 31, 'Cuddalore', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1145, 1, 31, 'Dharmapuri', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1146, 1, 31, 'Dindigul', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1147, 1, 31, 'Erode', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1148, 1, 31, 'Gudalur', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1149, 1, 31, 'Kanchipuram', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1150, 1, 31, 'Karaikudi', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1151, 1, 31, 'Karungal', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1152, 1, 31, 'Karur', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1153, 1, 31, 'Kollankodu', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1154, 1, 31, 'Lalgudi', 1, '2019-05-06 01:27:46', '2019-05-06 01:27:46', NULL),
(1155, 1, 31, 'Madurai', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1156, 1, 31, 'Nagapattinam', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1157, 1, 31, 'Nagercoil', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1158, 1, 31, 'Namagiripettai', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1159, 1, 31, 'Namakkal', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1160, 1, 31, 'Nandivaram-Guduvancheri', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1161, 1, 31, 'Nanjikottai', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1162, 1, 31, 'Natham', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1163, 1, 31, 'Nellikuppam', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1164, 1, 31, 'Neyveli', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1165, 1, 31, 'O\' Valley', 1, '2019-05-06 01:27:47', '2019-05-06 01:27:47', NULL),
(1166, 1, 31, 'Oddanchatram', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1167, 1, 31, 'P.N.Patti', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1168, 1, 31, 'Pacode', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1169, 1, 31, 'Padmanabhapuram', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1170, 1, 31, 'Palani', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1171, 1, 31, 'Palladam', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1172, 1, 31, 'Pallapatti', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1173, 1, 31, 'Pallikonda', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1174, 1, 31, 'Panagudi', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1175, 1, 31, 'Panruti', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1176, 1, 31, 'Paramakudi', 1, '2019-05-06 01:27:48', '2019-05-06 01:27:48', NULL),
(1177, 1, 31, 'Parangipettai', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1178, 1, 31, 'Pattukkottai', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1179, 1, 31, 'Perambalur', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1180, 1, 31, 'Peravurani', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1181, 1, 31, 'Periyakulam', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1182, 1, 31, 'Periyasemur', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1183, 1, 31, 'Pernampattu', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1184, 1, 31, 'Pollachi', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1185, 1, 31, 'Polur', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1186, 1, 31, 'Ponneri', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1187, 1, 31, 'Pudukkottai', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1188, 1, 31, 'Pudupattinam', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1189, 1, 31, 'Puliyankudi', 1, '2019-05-06 01:27:49', '2019-05-06 01:27:49', NULL),
(1190, 1, 31, 'Punjaipugalur', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1191, 1, 31, 'Rajapalayam', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1192, 1, 31, 'Ramanathapuram', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1193, 1, 31, 'Rameshwaram', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1194, 1, 31, 'Rasipuram', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1195, 1, 31, 'Salem', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1196, 1, 31, 'Sankarankoil', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1197, 1, 31, 'Sankari', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1198, 1, 31, 'Sathyamangalam', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1199, 1, 31, 'Sattur', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1200, 1, 31, 'Shenkottai', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1201, 1, 31, 'Sholavandan', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1202, 1, 31, 'Sholingur', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1203, 1, 31, 'Sirkali', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1204, 1, 31, 'Sivaganga', 1, '2019-05-06 01:27:50', '2019-05-06 01:27:50', NULL),
(1205, 1, 31, 'Sivagiri', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1206, 1, 31, 'Sivakasi', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1207, 1, 31, 'Srivilliputhur', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1208, 1, 31, 'Surandai', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1209, 1, 31, 'Suriyampalayam', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1210, 1, 31, 'Tenkasi', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1211, 1, 31, 'Thammampatti', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1212, 1, 31, 'Thanjavur', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1213, 1, 31, 'Tharamangalam', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1214, 1, 31, 'Tharangambadi', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1215, 1, 31, 'Theni Allinagaram', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1216, 1, 31, 'Thirumangalam', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1217, 1, 31, 'Thirunindravur', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1218, 1, 31, 'Thiruparappu', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1219, 1, 31, 'Thirupuvanam', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1220, 1, 31, 'Thiruthuraipoondi', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1221, 1, 31, 'Thiruvallur', 1, '2019-05-06 01:27:51', '2019-05-06 01:27:51', NULL),
(1222, 1, 31, 'Thiruvarur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1223, 1, 31, 'Thoothukudi', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1224, 1, 31, 'Thuraiyur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1225, 1, 31, 'Tindivanam', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1226, 1, 31, 'Tiruchendur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1227, 1, 31, 'Tiruchengode', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1228, 1, 31, 'Tiruchirappalli', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1229, 1, 31, 'Tirukalukundram', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1230, 1, 31, 'Tirukkoyilur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1231, 1, 31, 'Tirunelveli', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1232, 1, 31, 'Tirupathur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1233, 1, 31, 'Tiruppur', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1234, 1, 31, 'Tiruttani', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1235, 1, 31, 'Tiruvannamalai', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1236, 1, 31, 'Tiruvethipuram', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1237, 1, 31, 'Tittakudi', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1238, 1, 31, 'Udhagamandalam', 1, '2019-05-06 01:27:52', '2019-05-06 01:27:52', NULL),
(1239, 1, 31, 'Udumalaipettai', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1240, 1, 31, 'Unnamalaikadai', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1241, 1, 31, 'Usilampatti', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1242, 1, 31, 'Uthamapalayam', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1243, 1, 31, 'Uthiramerur', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1244, 1, 31, 'Vadakkuvalliyur', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1245, 1, 31, 'Vadalur', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1246, 1, 31, 'Vadipatti', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1247, 1, 31, 'Valparai', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1248, 1, 31, 'Vandavasi', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1249, 1, 31, 'Vaniyambadi', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1250, 1, 31, 'Vedaranyam', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1251, 1, 31, 'Vellakoil', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1252, 1, 31, 'Vellore', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1253, 1, 31, 'Vikramasingapuram', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1254, 1, 31, 'Viluppuram', 1, '2019-05-06 01:27:53', '2019-05-06 01:27:53', NULL),
(1255, 1, 31, 'Virudhachalam', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1256, 1, 31, 'Virudhunagar', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1257, 1, 31, 'Viswanatham', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1258, 1, 32, 'Agartala', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1259, 1, 32, 'Badharghat', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1260, 1, 32, 'Dharmanagar', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1261, 1, 32, 'Indranagar', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1262, 1, 32, 'Jogendranagar', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL);
INSERT INTO `cities` (`id`, `country_id`, `state_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1263, 1, 32, 'Kailasahar', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1264, 1, 32, 'Khowai', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1265, 1, 32, 'Pratapgarh', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1266, 1, 32, 'Udaipur', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(1267, 1, 33, 'Achhnera', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1268, 1, 33, 'Adari', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1269, 1, 33, 'Agra', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1270, 1, 33, 'Aligarh', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1271, 1, 33, 'Allahabad', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1272, 1, 33, 'Amroha', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1273, 1, 33, 'Azamgarh', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1274, 1, 33, 'Bahraich', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1275, 1, 33, 'Ballia', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1276, 1, 33, 'Balrampur', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1277, 1, 33, 'Banda', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1278, 1, 33, 'Bareilly', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1279, 1, 33, 'Chandausi', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1280, 1, 33, 'Dadri', 1, '2019-05-06 01:27:55', '2019-05-06 01:27:55', NULL),
(1281, 1, 33, 'Deoria', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1282, 1, 33, 'Etawah', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1283, 1, 33, 'Fatehabad', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1284, 1, 33, 'Fatehpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1285, 1, 33, 'Greater Noida', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1286, 1, 33, 'Hamirpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1287, 1, 33, 'Hardoi', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1288, 1, 33, 'Jajmau', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1289, 1, 33, 'Jaunpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1290, 1, 33, 'Jhansi', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1291, 1, 33, 'Kalpi', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1292, 1, 33, 'Kanpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1293, 1, 33, 'Kota', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1294, 1, 33, 'Laharpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1295, 1, 33, 'Lakhimpur', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1296, 1, 33, 'Lal Gopalganj Nindaura', 1, '2019-05-06 01:27:56', '2019-05-06 01:27:56', NULL),
(1297, 1, 33, 'Lalganj', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1298, 1, 33, 'Lalitpur', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1299, 1, 33, 'Lar', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1300, 1, 33, 'Loni', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1301, 1, 33, 'Lucknow', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1302, 1, 33, 'Mathura', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1303, 1, 33, 'Meerut', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1304, 1, 33, 'Modinagar', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1305, 1, 33, 'Muradnagar', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1306, 1, 33, 'Nagina', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1307, 1, 33, 'Najibabad', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1308, 1, 33, 'Nakur', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1309, 1, 33, 'Nanpara', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1310, 1, 33, 'Naraura', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1311, 1, 33, 'Naugawan Sadat', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1312, 1, 33, 'Nautanwa', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1313, 1, 33, 'Nawabganj', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1314, 1, 33, 'Nehtaur', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1315, 1, 33, 'NOIDA', 1, '2019-05-06 01:27:57', '2019-05-06 01:27:57', NULL),
(1316, 1, 33, 'Noorpur', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1317, 1, 33, 'Obra', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1318, 1, 33, 'Orai', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1319, 1, 33, 'Padrauna', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1320, 1, 33, 'Palia Kalan', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1321, 1, 33, 'Parasi', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1322, 1, 33, 'Phulpur', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1323, 1, 33, 'Pihani', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1324, 1, 33, 'Pilibhit', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1325, 1, 33, 'Pilkhuwa', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1326, 1, 33, 'Powayan', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1327, 1, 33, 'Pukhrayan', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1328, 1, 33, 'Puranpur', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1329, 1, 33, 'Purquazi', 1, '2019-05-06 01:27:58', '2019-05-06 01:27:58', NULL),
(1330, 1, 33, 'Purwa', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1331, 1, 33, 'Rae Bareli', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1332, 1, 33, 'Rampur', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1333, 1, 33, 'Rampur Maniharan', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1334, 1, 33, 'Rasra', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1335, 1, 33, 'Rath', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1336, 1, 33, 'Renukoot', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1337, 1, 33, 'Reoti', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1338, 1, 33, 'Robertsganj', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1339, 1, 33, 'Rudauli', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1340, 1, 33, 'Rudrapur', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1341, 1, 33, 'Sadabad', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1342, 1, 33, 'Safipur', 1, '2019-05-06 01:27:59', '2019-05-06 01:27:59', NULL),
(1343, 1, 33, 'Saharanpur', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1344, 1, 33, 'Sahaspur', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1345, 1, 33, 'Sahaswan', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1346, 1, 33, 'Sahawar', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1347, 1, 33, 'Sahjanwa', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1348, 1, 33, 'Ghazipur', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1349, 1, 33, 'Sambhal', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1350, 1, 33, 'Samdhan', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1351, 1, 33, 'Samthar', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1352, 1, 33, 'Sandi', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1353, 1, 33, 'Sandila', 1, '2019-05-06 01:28:00', '2019-05-06 01:28:00', NULL),
(1354, 1, 33, 'Sardhana', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1355, 1, 33, 'Seohara', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1356, 1, 33, 'Shahganj', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1357, 1, 33, 'Shahjahanpur', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1358, 1, 33, 'Shamli', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1359, 1, 33, 'Shamsabad', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1360, 1, 33, 'Sherkot', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1361, 1, 33, 'Shikarpur', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1362, 1, 33, 'Bulandshahr', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1363, 1, 33, 'Shikohabad', 1, '2019-05-06 01:28:01', '2019-05-06 01:28:01', NULL),
(1364, 1, 33, 'Shishgarh', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1365, 1, 33, 'Siana', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1366, 1, 33, 'Sikanderpur', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1367, 1, 33, 'Sikandra Rao', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1368, 1, 33, 'Sikandrabad', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1369, 1, 33, 'Sirsaganj', 1, '2019-05-06 01:28:02', '2019-05-06 01:28:02', NULL),
(1370, 1, 33, 'Sirsi', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1371, 1, 33, 'Sitapur', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1372, 1, 33, 'Soron', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1373, 1, 33, 'Suar', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1374, 1, 33, 'Sultanpur', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1375, 1, 33, 'Sumerpur', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1376, 1, 33, 'Tanda', 1, '2019-05-06 01:28:03', '2019-05-06 01:28:03', NULL),
(1377, 1, 33, 'Tetri Bazar', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1378, 1, 33, 'Thakurdwara', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1379, 1, 33, 'Thana Bhawan', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1380, 1, 33, 'Tilhar', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1381, 1, 33, 'Tirwaganj', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1382, 1, 33, 'Tulsipur', 1, '2019-05-06 01:28:04', '2019-05-06 01:28:04', NULL),
(1383, 1, 33, 'Tundla', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1384, 1, 33, 'Unnao', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1385, 1, 33, 'Utraula', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1386, 1, 33, 'Varanasi', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1387, 1, 33, 'Vrindavan', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1388, 1, 33, 'Warhapur', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1389, 1, 33, 'Zaidpur', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1390, 1, 33, 'Zamania', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1391, 1, 34, 'Almora', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL),
(1392, 1, 34, 'Bazpur', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1393, 1, 34, 'Chamba', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1394, 1, 34, 'Dehradun', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1395, 1, 34, 'Haldwani', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1396, 1, 34, 'Haridwar', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1397, 1, 34, 'Jaspur', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1398, 1, 34, 'Kashipur', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1399, 1, 34, 'kichha', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1400, 1, 34, 'Kotdwara', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1401, 1, 34, 'Manglaur', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1402, 1, 34, 'Mussoorie', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1403, 1, 34, 'Nagla', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1404, 1, 34, 'Nainital', 1, '2019-05-06 01:28:06', '2019-05-06 01:28:06', NULL),
(1405, 1, 34, 'Pauri', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1406, 1, 34, 'Pithoragarh', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1407, 1, 34, 'Ramnagar', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1408, 1, 34, 'Rishikesh', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1409, 1, 34, 'Roorkee', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1410, 1, 34, 'Rudrapur', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1411, 1, 34, 'Sitarganj', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1412, 1, 34, 'Tehri', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1413, 1, 33, 'Muzaffarnagar', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1414, 1, 30, 'Adra', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1415, 1, 30, 'Alipurduar', 1, '2019-05-06 01:28:07', '2019-05-06 01:28:07', NULL),
(1416, 1, 30, 'Arambagh', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1417, 1, 30, 'Asansol', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1418, 1, 30, 'Baharampur', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1419, 1, 30, 'Bally', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1420, 1, 30, 'Balurghat', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1421, 1, 30, 'Bankura', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1422, 1, 30, 'Barakar', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1423, 1, 30, 'Barasat', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1424, 1, 30, 'Bardhaman', 1, '2019-05-06 01:28:08', '2019-05-06 01:28:08', NULL),
(1425, 1, 30, 'Bidhan Nagar', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1426, 1, 30, 'Chinsura', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1427, 1, 30, 'Contai', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1428, 1, 30, 'Cooch Behar', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1429, 1, 30, 'Darjeeling', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1430, 1, 30, 'Durgapur', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1431, 1, 30, 'Haldia', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1432, 1, 30, 'Howrah', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1433, 1, 30, 'Islampur', 1, '2019-05-06 01:28:09', '2019-05-06 01:28:09', NULL),
(1434, 1, 30, 'Jhargram', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1435, 1, 30, 'Kharagpur', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1436, 1, 30, 'Kolkata', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1437, 1, 30, 'Mainaguri', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1438, 1, 30, 'Mal', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1439, 1, 30, 'Mathabhanga', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1440, 1, 30, 'Medinipur', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1441, 1, 30, 'Memari', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1442, 1, 30, 'Monoharpur', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1443, 1, 30, 'Murshidabad', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1444, 1, 30, 'Nabadwip', 1, '2019-05-06 01:28:10', '2019-05-06 01:28:10', NULL),
(1445, 1, 30, 'Naihati', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1446, 1, 30, 'Panchla', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1447, 1, 30, 'Pandua', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1448, 1, 30, 'Paschim Punropara', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1449, 1, 30, 'Purulia', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1450, 1, 30, 'Raghunathpur', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1451, 1, 30, 'Raiganj', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1452, 1, 30, 'Rampurhat', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1453, 1, 30, 'Ranaghat', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1454, 1, 30, 'Sainthia', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1455, 1, 30, 'Santipur', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1456, 1, 30, 'Siliguri', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1457, 1, 30, 'Sonamukhi', 1, '2019-05-06 01:28:11', '2019-05-06 01:28:11', NULL),
(1458, 1, 30, 'Srirampore', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1459, 1, 30, 'Suri', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1460, 1, 30, 'Taki', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1461, 1, 30, 'Tamluk', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1462, 1, 30, 'Tarakeswar', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1463, 1, 17, 'Chikmagalur', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1464, 1, 17, 'Davanagere', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1465, 1, 17, 'Dharwad', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(1466, 1, 17, 'Gadag', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INDIA', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8mb4_unicode_ci,
  `phcalling_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+91',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilecalling_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+91',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `company`, `phcalling_code`, `phone`, `mobilecalling_code`, `mobile`, `email`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 42, 'ABP Group', 'ABP Group', '91', '9700812500', '91', '9700812500', 'info@abpgroup.com', 1, '2019-05-06 01:28:31', '2019-05-06 01:28:31', NULL),
(2, 43, 'Baidyanath Group', 'Baidyanath Group', '91', '9700812501', '91', '9700812501', 'info@Baidyanath.com', 1, '2019-05-06 01:28:32', '2019-05-06 01:28:32', NULL),
(3, 44, 'Coal India', 'Coal India', '91', '9700812502', '91', '9700812502', 'info@Coal.com', 1, '2019-05-06 01:28:32', '2019-05-06 01:28:32', NULL),
(4, 45, 'Damodar Valley Corporation', 'Damodar Valley Corporation', '91', '9700812503', '91', '9700812503', 'info@Damodar.com', 1, '2019-05-06 01:28:32', '2019-05-06 01:28:32', NULL),
(5, 46, 'Emami', 'Emami', '91', '9700812504', '91', '9700812504', 'info@Emami.com', 1, '2019-05-06 01:28:32', '2019-05-06 01:28:32', NULL),
(6, 47, 'FusionCharts', 'FusionCharts', '91', '9700812505', '91', '9700812505', 'info@FusionCharts.com', 1, '2019-05-06 01:28:33', '2019-05-06 01:28:33', NULL),
(7, 48, 'Greenply', 'Greenply', '91', '9700812506', '91', '9700812506', 'info@Greenply.com', 1, '2019-05-06 01:28:33', '2019-05-06 01:28:33', NULL),
(8, 49, 'Hooghly Dock & Port Engineers Limited', 'Hooghly Dock & Port Engineers Limited', '91', '9700812507', '91', '9700812507', 'info@Hooghly.com', 1, '2019-05-06 01:28:33', '2019-05-06 01:28:33', NULL),
(9, 50, 'Indian Public Health Association', 'Indian Public Health Association', '91', '9700812508', '91', '9700812508', 'info@Indian.com', 1, '2019-05-06 01:28:34', '2019-05-06 01:28:34', NULL),
(10, 51, 'Jai Balaji group', 'Jai Balaji group', '91', '9700812509', '91', '9700812509', 'info@Balaji.com', 1, '2019-05-06 01:28:34', '2019-05-06 01:28:34', NULL),
(11, 52, 'K.C. Das Grandsons', 'K.C. Das Grandsons', '91', '97008125010', '91', '97008125010', 'info@Grandsons.com', 1, '2019-05-06 01:28:34', '2019-05-06 01:28:34', NULL),
(12, 53, 'Lux Industries', 'Lux Industries', '91', '97008125011', '91', '97008125011', 'info@Lux.com', 1, '2019-05-06 01:28:35', '2019-05-06 01:28:35', NULL),
(13, 54, 'National Insurance Company', 'National Insurance Company', '91', '97008125012', '91', '97008125012', 'info@National.com', 1, '2019-05-06 01:28:35', '2019-05-06 01:28:35', NULL),
(14, 55, 'Oxford Bookstore', 'Oxford Bookstore', '91', '97008125013', '91', '97008125013', 'info@Oxford.com', 1, '2019-05-06 01:28:35', '2019-05-06 01:28:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_document_types`
--

CREATE TABLE `master_document_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_document_types`
--

INSERT INTO `master_document_types` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'default', '', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_location_types`
--

CREATE TABLE `master_location_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_location_types`
--

INSERT INTO `master_location_types` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Office', '', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL),
(2, 'Home', '', 1, '2019-05-06 01:28:12', '2019-05-06 01:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_message_types`
--

CREATE TABLE `master_message_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_shipment_status`
--

CREATE TABLE `master_shipment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'if 1 show to customer',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_shipment_status`
--

INSERT INTO `master_shipment_status` (`id`, `name`, `description`, `visible_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Info Received', 'Carrier has received request from shipper and is about to pick up the shipment.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(2, 'Picked Up', 'Carrier has accepted or picked up shipment from shipper.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(3, 'Reached to Warehouse', 'Shipment has reached to Warehouse.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(4, 'In Transit', 'The shipment is on the way.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(5, 'Out for Delivery', 'Carrier is about to deliver the shipment , or it is ready to pickup.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(6, 'Failed Attempt', 'Carrier attempted to deliver but failed, and usually leaves a notice and will try to delivery again.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(7, 'Delivered', 'The shipment was delivered successfully.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(8, 'Exception', 'Custom hold, undelivered, returned shipment to sender or any shipping exceptions.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(9, 'Expired', 'Shipment has no tracking information for 30 days since added.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL),
(10, 'Pending', 'New shipments added that are pending to track, or new shipments without tracking information available yet.', 1, 1, '2019-05-06 01:28:13', '2019-05-06 01:28:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_transport_types`
--

CREATE TABLE `master_transport_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_04_03_110056_create_state_city_table', 1),
(4, '2019_04_03_111056_create_addresses_table', 1),
(5, '2019_04_03_112745_create_service_pricing_table', 1),
(6, '2019_04_03_120245_create_masters_table', 1),
(7, '2019_04_03_132102_create_locations_table', 1),
(8, '2019_04_04_131956_create_shipments_table', 1),
(9, '2019_04_05_080334_create_transport_route_table', 1),
(10, '2019_04_05_081008_create_transit_locations_table', 1),
(11, '2019_04_25_063530_create_permission_tables', 1),
(12, '2019_04_29_092628_create_warehouse_table', 1);

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
(1, 'Logistics\\Models\\User', 1),
(2, 'Logistics\\Models\\User', 2),
(2, 'Logistics\\Models\\User', 3),
(2, 'Logistics\\Models\\User', 4),
(2, 'Logistics\\Models\\User', 5),
(2, 'Logistics\\Models\\User', 6),
(2, 'Logistics\\Models\\User', 7),
(2, 'Logistics\\Models\\User', 8),
(2, 'Logistics\\Models\\User', 9),
(2, 'Logistics\\Models\\User', 10),
(2, 'Logistics\\Models\\User', 11),
(2, 'Logistics\\Models\\User', 12),
(2, 'Logistics\\Models\\User', 13),
(2, 'Logistics\\Models\\User', 14),
(2, 'Logistics\\Models\\User', 15),
(2, 'Logistics\\Models\\User', 16),
(2, 'Logistics\\Models\\User', 17),
(2, 'Logistics\\Models\\User', 18),
(2, 'Logistics\\Models\\User', 19),
(2, 'Logistics\\Models\\User', 20),
(2, 'Logistics\\Models\\User', 21),
(2, 'Logistics\\Models\\User', 22),
(2, 'Logistics\\Models\\User', 23),
(2, 'Logistics\\Models\\User', 24),
(2, 'Logistics\\Models\\User', 25),
(2, 'Logistics\\Models\\User', 26),
(2, 'Logistics\\Models\\User', 27),
(2, 'Logistics\\Models\\User', 28),
(2, 'Logistics\\Models\\User', 29),
(2, 'Logistics\\Models\\User', 30),
(2, 'Logistics\\Models\\User', 31),
(2, 'Logistics\\Models\\User', 32),
(2, 'Logistics\\Models\\User', 33),
(2, 'Logistics\\Models\\User', 34),
(2, 'Logistics\\Models\\User', 35),
(2, 'Logistics\\Models\\User', 36),
(2, 'Logistics\\Models\\User', 37),
(2, 'Logistics\\Models\\User', 38),
(2, 'Logistics\\Models\\User', 39),
(2, 'Logistics\\Models\\User', 40),
(2, 'Logistics\\Models\\User', 41),
(4, 'Logistics\\Models\\User', 42),
(4, 'Logistics\\Models\\User', 43),
(4, 'Logistics\\Models\\User', 44),
(4, 'Logistics\\Models\\User', 45),
(4, 'Logistics\\Models\\User', 46),
(4, 'Logistics\\Models\\User', 47),
(4, 'Logistics\\Models\\User', 48),
(4, 'Logistics\\Models\\User', 49),
(4, 'Logistics\\Models\\User', 50),
(4, 'Logistics\\Models\\User', 51),
(4, 'Logistics\\Models\\User', 52),
(4, 'Logistics\\Models\\User', 53),
(4, 'Logistics\\Models\\User', 54),
(4, 'Logistics\\Models\\User', 55);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'shipment', 'web', '2019-05-06 01:28:14', '2019-05-06 01:28:14'),
(2, 'user', 'web', '2019-05-06 01:28:14', '2019-05-06 01:28:14'),
(3, 'agent.report', 'web', '2019-05-06 01:28:14', '2019-05-06 01:28:14'),
(4, 'customer', 'web', '2019-05-06 01:28:14', '2019-05-06 01:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `weight_min` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight_max` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', 'web', '2019-05-06 01:28:14', '2019-05-06 01:28:14'),
(2, 'agent', 'web', '2019-05-06 01:28:15', '2019-05-06 01:28:15'),
(3, 'warehouse_agent', 'web', '2019-05-06 01:28:15', '2019-05-06 01:28:15'),
(4, 'customer', 'web', '2019-05-06 01:28:15', '2019-05-06 01:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 2),
(3, 2),
(1, 3),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `pickup_address_id` int(10) UNSIGNED NOT NULL,
  `delivery_address_id` int(10) UNSIGNED NOT NULL,
  `document_type_id` int(10) UNSIGNED NOT NULL,
  `start_date_expected` timestamp NULL DEFAULT NULL,
  `start_date_actual` timestamp NULL DEFAULT NULL,
  `end_date_expected` timestamp NULL DEFAULT NULL,
  `end_date_actual` timestamp NULL DEFAULT NULL,
  `RFD_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docket_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(18,6) NOT NULL,
  `weight` decimal(10,6) NOT NULL,
  `expense` decimal(18,6) NOT NULL,
  `boxes` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `user_id`, `customer_id`, `pickup_address_id`, `delivery_address_id`, `document_type_id`, `start_date_expected`, `start_date_actual`, `end_date_expected`, `end_date_actual`, `RFD_tag`, `docket_no`, `reference_no`, `payment_status`, `price`, `weight`, `expense`, `boxes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 1, 26, 27, 1, '2019-02-03 18:00:00', '2019-02-03 18:00:00', '2019-02-08 14:00:00', '2019-02-08 14:00:00', NULL, '5536260', NULL, 1, '20000.000000', '4000.000000', '14000.000000', 1, 7, '2019-05-07 15:19:04', '2019-05-13 05:24:34', NULL),
(6, 1, 1, 28, 29, 1, '2019-02-06 10:00:00', '2019-02-06 10:00:00', '2019-02-10 15:00:00', '2019-02-10 15:00:00', NULL, '5623899', NULL, 1, '17500.000000', '3500.000000', '13000.000000', 1, 7, '2019-05-07 15:34:10', '2019-05-13 05:24:35', NULL),
(7, 1, 1, 30, 31, 1, '2019-02-04 20:00:00', '2019-02-04 20:00:00', '2019-02-09 20:00:00', '2019-02-09 20:00:00', NULL, '5292312', NULL, 1, '7500.000000', '1500.000000', '5000.000000', 1, 7, '2019-05-07 15:48:27', '2019-05-13 05:24:35', NULL),
(8, 1, 1, 33, 34, 1, '2019-02-06 20:00:00', '2019-02-06 20:00:00', '2019-02-11 20:00:00', '2019-02-11 20:00:00', NULL, '4049360', NULL, 1, '250.000000', '50.000000', '200.000000', 1, 7, '2019-05-07 17:37:42', '2019-05-13 05:24:35', NULL),
(9, 1, 1, 35, 36, 1, '2019-02-18 20:00:00', '2019-02-18 20:00:00', '2019-02-23 20:00:00', '2019-02-23 20:00:00', NULL, '3346394', NULL, 1, '6000.000000', '1200.000000', '4800.000000', 1, 7, '2019-05-08 13:16:48', '2019-05-13 05:24:35', NULL),
(10, 1, 1, 37, 38, 1, '2019-02-20 20:00:00', '2019-02-20 20:00:00', '2019-02-25 20:00:00', '2019-02-25 20:00:00', NULL, '3190849', NULL, 1, '3000.000000', '600.000000', '2300.000000', 1, 7, '2019-05-08 13:39:39', '2019-05-13 05:24:35', NULL),
(11, 1, 1, 39, 40, 1, '2019-02-25 20:00:00', '2019-02-25 20:00:00', '2019-02-27 18:30:00', '2019-02-27 18:30:00', NULL, '7712947', NULL, 1, '3500.000000', '700.000000', '3100.000000', 1, 7, '2019-05-08 13:42:10', '2019-05-13 05:39:14', NULL),
(12, 1, 1, 41, 42, 1, '2019-02-25 20:00:00', '2019-02-25 20:00:00', '2019-03-01 20:00:00', '2019-03-01 20:00:00', NULL, '6007978', NULL, 1, '4000.000000', '800.000000', '3300.000000', 1, 7, '2019-05-08 14:12:43', '2019-05-13 05:39:14', NULL),
(13, 1, 1, 43, 44, 1, '2019-03-06 20:00:00', '2019-03-06 20:00:00', '2019-03-11 19:00:00', '2019-03-11 19:00:00', NULL, '8768577', NULL, 1, '5500.000000', '1100.000000', '5100.000000', 1, 7, '2019-05-08 14:14:37', '2019-05-13 05:39:14', NULL),
(14, 1, 1, 45, 46, 1, '2019-03-11 19:00:00', '2019-03-11 19:00:00', '2019-03-15 19:00:00', '2019-03-15 19:00:00', NULL, '4608705', NULL, 1, '8500.000000', '1700.000000', '7700.000000', 1, 7, '2019-05-08 14:17:00', '2019-05-13 05:39:14', NULL),
(15, 1, 1, 47, 48, 1, '2019-03-21 19:00:00', '2019-03-21 19:00:00', '2019-03-26 19:00:00', '2019-03-26 19:00:00', NULL, '9207056', NULL, 1, '2500.000000', '500.000000', '2100.000000', 1, 7, '2019-05-08 14:47:16', '2019-05-13 05:39:15', NULL),
(16, 1, 1, 49, 50, 1, '2019-03-18 19:00:00', '2019-03-18 19:00:00', '2019-03-22 19:00:00', '2019-03-22 19:00:00', NULL, '7323822', NULL, 1, '3000.000000', '600.000000', '2350.000000', 1, 7, '2019-05-08 14:49:39', '2019-05-13 05:39:15', NULL),
(17, 1, 1, 51, 52, 1, '2019-03-11 19:00:00', '2019-03-11 19:00:00', '2019-03-15 19:00:00', '2019-03-15 19:00:00', NULL, '9826878', NULL, 1, '3250.000000', '650.000000', '2950.000000', 1, 7, '2019-05-08 14:51:47', '2019-05-13 05:39:15', NULL),
(18, 1, 1, 53, 54, 1, '2019-03-07 20:00:00', '2019-03-07 20:00:00', '2019-03-12 19:00:00', '2019-03-12 19:00:00', NULL, '2518586', NULL, 1, '2750.000000', '550.000000', '2300.000000', 1, 7, '2019-05-08 14:55:22', '2019-05-13 05:39:15', NULL),
(19, 1, 1, 55, 56, 1, '2019-03-25 19:00:00', '2019-03-25 19:00:00', '2019-03-29 19:00:00', '2019-03-29 19:00:00', NULL, '8821901', NULL, 1, '3500.000000', '700.000000', '3100.000000', 1, 7, '2019-05-08 16:53:06', '2019-05-13 05:39:15', NULL),
(20, 1, 1, 57, 58, 1, '2019-04-01 19:00:00', '2019-04-01 19:00:00', '2019-04-05 19:00:00', '2019-04-05 19:00:00', NULL, '5101726', NULL, 1, '4250.000000', '850.000000', '4100.000000', 1, 7, '2019-05-08 16:59:17', '2019-05-13 05:39:15', NULL),
(21, 1, 1, 60, 61, 1, '2019-04-03 19:00:00', '2019-04-03 19:00:00', '2019-04-08 19:00:00', '2019-04-08 19:00:00', NULL, '5220374', NULL, 1, '3250.000000', '650.000000', '3000.000000', 1, 7, '2019-05-08 17:04:50', '2019-05-13 05:39:15', NULL),
(22, 1, 1, 62, 63, 1, '2019-04-08 19:00:00', '2019-04-08 19:00:00', '2019-04-12 19:00:00', '2019-04-12 19:00:00', NULL, '110000001', NULL, 1, '2700.000000', '540.000000', '2300.000000', 1, 7, '2019-05-08 17:10:48', '2019-05-13 05:39:15', NULL),
(23, 1, 1, 64, 65, 1, '2019-04-18 19:00:00', '2019-04-18 19:00:00', '2019-04-23 19:00:00', '2019-04-23 19:00:00', NULL, '3958942', NULL, 1, '2000.000000', '400.000000', '1750.000000', 1, 7, '2019-05-08 18:47:21', '2019-05-13 05:39:15', NULL),
(24, 1, 1, 66, 67, 1, '2019-04-15 19:00:00', '2019-04-15 19:00:00', '2019-04-19 19:00:00', '2019-04-19 19:00:00', NULL, '7625710', NULL, 1, '2800.000000', '560.000000', '2650.000000', 1, 7, '2019-05-09 13:15:03', '2019-05-13 05:39:16', NULL),
(25, 1, 1, 68, 69, 1, '2019-04-17 19:00:00', '2019-04-17 19:00:00', '2019-04-22 19:00:00', '2019-04-22 19:00:00', NULL, '3544463', NULL, 1, '3900.000000', '780.000000', '3500.000000', 1, 7, '2019-05-09 13:16:25', '2019-05-13 05:39:16', NULL),
(26, 1, 1, 70, 71, 1, '2019-04-24 19:00:00', '2019-04-24 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '8318932', NULL, 1, '3650.000000', '730.000000', '3500.000000', 1, 7, '2019-05-09 13:18:12', '2019-05-13 05:39:16', NULL),
(27, 1, 1, 72, 73, 1, '2019-04-24 19:00:00', '2019-04-24 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '9172283', NULL, 1, '3550.000000', '710.000000', '3400.000000', 1, 7, '2019-05-09 13:20:13', '2019-05-13 05:39:16', NULL),
(28, 1, 1, 74, 75, 1, '2019-04-11 19:00:00', '2019-04-11 19:00:00', '2019-04-15 19:00:00', '2019-04-15 19:00:00', NULL, '7180222', NULL, 1, '4000.000000', '800.000000', '3400.000000', 1, 7, '2019-05-09 13:21:34', '2019-05-13 05:39:16', NULL),
(29, 1, 1, 76, 77, 1, '2019-05-06 19:00:00', '2019-05-06 19:00:00', '2019-05-10 19:00:00', '2019-05-10 19:00:00', NULL, '7229935', NULL, 1, '4000.000000', '800.000000', '3400.000000', 1, 7, '2019-05-09 14:01:50', '2019-05-13 05:39:16', NULL),
(30, 1, 2, 78, 79, 1, '2019-02-05 20:00:00', '2019-02-05 20:00:00', '2019-02-09 20:00:00', '2019-02-09 20:00:00', NULL, '8231098', NULL, 1, '2850.000000', '570.000000', '2450.000000', 1, 7, '2019-05-09 14:36:50', '2019-05-13 05:39:16', NULL),
(31, 1, 2, 80, 81, 1, '2019-02-07 20:00:00', '2019-02-07 20:00:00', '2019-02-12 20:00:00', '2019-02-12 20:00:00', NULL, '5349000', NULL, 1, '3850.000000', '770.000000', '3300.000000', 1, 7, '2019-05-09 14:48:26', '2019-05-13 05:39:16', NULL),
(32, 1, 2, 82, 83, 1, '2019-02-05 20:00:00', '2019-02-05 20:00:00', '2019-02-09 20:00:00', '2019-02-09 20:00:00', NULL, '7266407', NULL, 1, '1500.000000', '300.000000', '1300.000000', 1, 7, '2019-05-09 14:57:06', '2019-05-13 05:39:16', NULL),
(33, 1, 2, 84, 85, 1, '2019-02-05 20:00:00', '2019-02-05 20:00:00', '2019-02-09 20:00:00', '2019-02-09 20:00:00', NULL, '3031563', NULL, 1, '4000.000000', '800.000000', '3450.000000', 1, 7, '2019-05-09 15:33:13', '2019-05-13 05:39:17', NULL),
(34, 1, 2, 86, 87, 1, '2019-02-07 20:00:00', '2019-02-07 20:00:00', '2019-02-11 20:00:00', '2019-02-11 20:00:00', NULL, '9289485', NULL, 1, '1850.000000', '370.000000', '1450.000000', 1, 7, '2019-05-09 15:37:07', '2019-05-13 05:39:17', NULL),
(35, 1, 2, 88, 89, 1, '2019-02-12 20:00:00', '2019-02-12 20:00:00', '2019-02-16 20:00:00', '2019-02-16 20:00:00', NULL, '6464659', NULL, 1, '2350.000000', '470.000000', '2100.000000', 1, 7, '2019-05-09 15:39:17', '2019-05-13 05:39:17', NULL),
(36, 1, 2, 90, 91, 1, '2019-02-14 20:00:00', '2019-02-14 20:00:00', '2019-02-19 20:00:00', '2019-02-19 20:00:00', NULL, '9951477', NULL, 1, '2850.000000', '570.000000', '2500.000000', 1, 7, '2019-05-09 16:47:11', '2019-05-13 05:39:17', NULL),
(37, 1, 2, 93, 94, 1, '2019-02-14 20:00:00', '2019-02-14 20:00:00', '2019-02-19 20:00:00', '2019-02-19 20:00:00', NULL, '4944323', NULL, 1, '2000.000000', '400.000000', '1700.000000', 1, 7, '2019-05-09 16:54:32', '2019-05-13 05:39:17', NULL),
(38, 1, 2, 95, 96, 1, '2019-02-19 20:00:00', '2019-02-19 20:00:00', '2019-02-25 20:00:00', '2019-02-25 20:00:00', NULL, '3707188', NULL, 1, '3000.000000', '600.000000', '2800.000000', 1, 7, '2019-05-09 16:59:06', '2019-05-13 05:39:17', NULL),
(39, 1, 2, 97, 98, 1, '2019-02-21 20:00:00', '2019-02-21 20:00:00', '2019-02-26 20:00:00', '2019-02-26 20:00:00', NULL, '2954049', NULL, 1, '3100.000000', '620.000000', '2800.000000', 1, 7, '2019-05-09 17:04:09', '2019-05-13 05:39:17', NULL),
(40, 1, 2, 99, 100, 1, '2019-02-26 20:00:00', '2019-02-26 20:00:00', '2019-03-03 20:00:00', '2019-03-03 20:00:00', NULL, '4485104', NULL, 1, '3600.000000', '720.000000', '3400.000000', 1, 7, '2019-05-09 17:06:48', '2019-05-13 05:39:17', NULL),
(41, 1, 2, 101, 102, 1, '2019-02-28 20:00:00', '2019-02-28 20:00:00', '2019-03-04 20:00:00', '2019-03-04 20:00:00', NULL, '6131870', NULL, 1, '1800.000000', '360.000000', '1400.000000', 1, 7, '2019-05-09 17:09:59', '2019-05-13 05:39:17', NULL),
(42, 1, 2, 103, 104, 1, '2019-03-05 20:00:00', '2019-03-05 20:00:00', '2019-03-09 20:00:00', '2019-03-09 20:00:00', NULL, '6460195', NULL, 1, '2800.000000', '560.000000', '2400.000000', 1, 7, '2019-05-09 17:40:52', '2019-05-13 05:39:18', NULL),
(43, 1, 2, 105, 106, 1, '2019-03-05 20:00:00', '2019-03-05 20:00:00', '2019-03-09 20:00:00', '2019-03-09 20:00:00', NULL, '5868196', NULL, 1, '4500.000000', '900.000000', '4200.000000', 1, 7, '2019-05-09 17:44:35', '2019-05-13 05:39:18', NULL),
(44, 1, 2, 107, 108, 1, '2019-03-07 20:00:00', '2019-03-07 20:00:00', '2019-03-12 19:00:00', '2019-03-12 19:00:00', NULL, '5458611', NULL, 1, '2500.000000', '500.000000', '2200.000000', 1, 7, '2019-05-09 17:45:35', '2019-05-13 05:39:18', NULL),
(45, 1, 2, 109, 110, 1, '2019-03-12 19:00:00', '2019-03-12 19:00:00', '2019-03-16 19:00:00', '2019-03-16 19:00:00', NULL, '9477694', NULL, 1, '3500.000000', '700.000000', '3200.000000', 1, 7, '2019-05-09 17:47:09', '2019-05-13 05:39:18', NULL),
(46, 1, 2, 111, 112, 1, '2019-03-18 19:00:00', '2019-03-18 19:00:00', '2019-03-22 19:00:00', '2019-03-22 19:00:00', NULL, '6771521', NULL, 1, '1850.000000', '370.000000', '1500.000000', 1, 7, '2019-05-09 18:20:43', '2019-05-13 05:39:18', NULL),
(47, 1, 2, 113, 114, 1, '2019-03-21 19:00:00', '2019-03-21 19:00:00', '2019-03-26 19:00:00', '2019-03-26 19:00:00', NULL, '8288350', NULL, 1, '1750.000000', '350.000000', '1500.000000', 1, 7, '2019-05-09 18:23:25', '2019-05-13 05:39:18', NULL),
(48, 1, 14, 115, 116, 1, '2019-02-11 20:00:00', '2019-02-11 20:00:00', '2019-02-15 20:00:00', '2019-02-15 20:00:00', NULL, '5002648', NULL, 1, '2000.000000', '400.000000', '1750.000000', 1, 7, '2019-05-09 18:42:35', '2019-05-13 05:39:18', NULL),
(49, 1, 2, 117, 118, 1, '2019-03-26 19:00:00', '2019-03-26 19:00:00', '2019-03-30 19:00:00', '2019-03-30 19:00:00', NULL, '9150978', NULL, 1, '2250.000000', '450.000000', '2200.000000', 1, 7, '2019-05-09 18:44:35', '2019-05-13 05:39:18', NULL),
(50, 1, 2, 119, 120, 1, '2019-03-28 19:00:00', '2019-03-28 19:00:00', '2019-04-01 19:00:00', '2019-04-01 19:00:00', NULL, '2122003', NULL, 1, '2750.000000', '550.000000', '2400.000000', 1, 7, '2019-05-09 18:48:21', '2019-05-13 05:39:19', NULL),
(51, 1, 14, 121, 122, 1, '2019-02-13 20:00:00', '2019-02-13 20:00:00', '2019-02-16 20:00:00', '2019-02-16 20:00:00', NULL, '2862951', NULL, 1, '1900.000000', '380.000000', '1650.000000', 1, 7, '2019-05-09 18:52:00', '2019-05-13 05:39:19', NULL),
(52, 1, 14, 123, 124, 1, '2019-02-18 20:00:00', '2019-02-18 20:00:00', '2019-02-21 20:00:00', '2019-02-21 20:00:00', NULL, '7006792', NULL, 1, '2250.000000', '450.000000', '2000.000000', 1, 7, '2019-05-09 18:57:04', '2019-05-13 05:39:19', NULL),
(53, 1, 14, 125, 126, 1, '2019-02-20 20:00:00', '2019-02-20 20:00:00', '2019-02-25 20:00:00', '2019-02-25 20:00:00', NULL, '8001569', NULL, 1, '4000.000000', '800.000000', '3600.000000', 1, 7, '2019-05-09 19:03:15', '2019-05-13 05:39:19', NULL),
(54, 1, 14, 127, 128, 1, '2019-02-24 20:00:00', '2019-02-24 20:00:00', '2019-02-28 20:00:00', '2019-02-28 20:00:00', NULL, '5580253', NULL, 1, '3750.000000', '750.000000', '3400.000000', 1, 7, '2019-05-09 19:08:51', '2019-05-13 05:39:19', NULL),
(55, 1, 14, 129, 130, 1, '2019-03-02 20:00:00', '2019-03-02 20:00:00', '2019-03-06 20:00:00', '2019-03-06 20:00:00', NULL, '5627701', NULL, 1, '3000.000000', '600.000000', '2700.000000', 1, 7, '2019-05-09 19:15:19', '2019-05-13 05:39:19', NULL),
(56, 1, 14, 131, 132, 1, '2019-03-05 20:00:00', '2019-03-05 20:00:00', '2019-03-09 20:00:00', '2019-03-09 20:00:00', NULL, '6188187', NULL, 1, '3250.000000', '650.000000', '2950.000000', 1, 7, '2019-05-09 19:23:49', '2019-05-13 05:39:19', NULL),
(57, 1, 14, 133, 134, 1, '2019-03-10 19:00:00', '2019-03-10 19:00:00', '2019-03-14 19:00:00', '2019-03-14 19:00:00', NULL, '5883093', NULL, 1, '3500.000000', '700.000000', '3200.000000', 1, 7, '2019-05-09 19:28:35', '2019-05-13 05:39:19', NULL),
(58, 1, 14, 135, 136, 1, '2019-03-15 19:00:00', '2019-03-15 19:00:00', '2019-03-20 19:00:00', '2019-03-20 19:00:00', NULL, '6856619', NULL, 1, '5000.000000', '1000.000000', '4400.000000', 1, 7, '2019-05-09 19:37:07', '2019-05-13 05:39:19', NULL),
(59, 1, 14, 137, 138, 1, '2019-03-22 19:00:00', '2019-03-22 19:00:00', '2019-03-26 19:00:00', '2019-03-26 19:00:00', NULL, '9115820', NULL, 1, '2500.000000', '500.000000', '2200.000000', 1, 7, '2019-05-09 19:43:03', '2019-05-13 05:39:20', NULL),
(60, 1, 14, 139, 140, 1, '2019-03-27 19:00:00', '2019-03-27 19:00:00', '2019-03-31 19:00:00', '2019-03-31 19:00:00', NULL, '6513662', NULL, 1, '1500.000000', '300.000000', '1300.000000', 1, 7, '2019-05-09 19:49:48', '2019-05-13 05:39:20', NULL),
(61, 1, 14, 141, 142, 1, '2019-04-02 19:00:00', '2019-04-02 19:00:00', '2019-04-05 19:00:00', '2019-04-05 19:00:00', NULL, '6856957', NULL, 1, '1000.000000', '200.000000', '850.000000', 1, 7, '2019-05-10 12:37:56', '2019-05-13 05:39:20', NULL),
(62, 1, 14, 143, 144, 1, '2019-04-04 19:00:00', '2019-04-04 19:00:00', '2019-04-08 19:00:00', '2019-04-08 19:00:00', NULL, '9755986', NULL, 1, '1750.000000', '350.000000', '1500.000000', 1, 7, '2019-05-10 13:02:54', '2019-05-13 05:39:20', NULL),
(63, 1, 14, 145, 146, 1, '2019-04-09 19:00:00', '2019-04-09 19:00:00', '2019-04-13 19:00:00', '2019-04-13 19:00:00', NULL, '7153172', NULL, 1, '2000.000000', '400.000000', '1750.000000', 1, 7, '2019-05-10 13:08:45', '2019-05-13 05:39:20', NULL),
(64, 1, 2, 147, 148, 1, '2019-04-02 19:00:00', '2019-04-02 19:00:00', '2019-04-06 19:00:00', '2019-04-06 19:00:00', NULL, '8201469', NULL, 1, '3000.000000', '600.000000', '2700.000000', 1, 7, '2019-05-10 13:15:32', '2019-05-13 05:39:20', NULL),
(65, 1, 14, 149, 150, 1, '2019-04-14 19:00:00', '2019-04-14 19:00:00', '2019-04-18 19:00:00', '2019-04-18 19:00:00', NULL, '2317503', NULL, 1, '2500.000000', '500.000000', '2200.000000', 1, 7, '2019-05-10 13:16:14', '2019-05-13 05:39:20', NULL),
(66, 1, 2, 151, 152, 1, '2019-04-04 19:00:00', '2019-04-04 19:00:00', '2019-04-08 19:00:00', '2019-04-08 19:00:00', NULL, '6619617', NULL, 1, '3100.000000', '620.000000', '2700.000000', 1, 7, '2019-05-10 13:16:22', '2019-05-13 05:39:20', NULL),
(67, 1, 2, 153, 154, 1, '2019-04-09 19:00:00', '2019-04-09 19:00:00', '2019-04-13 19:00:00', '2019-04-13 19:00:00', NULL, '5174057', NULL, 1, '3600.000000', '720.000000', '3200.000000', 1, 7, '2019-05-10 13:17:24', '2019-05-13 05:39:20', NULL),
(68, 1, 2, 155, 156, 1, '2019-04-11 19:00:00', '2019-04-11 19:00:00', '2019-04-15 19:00:00', '2019-04-15 19:00:00', NULL, '5415546', NULL, 1, '3750.000000', '750.000000', '3200.000000', 1, 7, '2019-05-10 13:19:33', '2019-05-13 05:39:20', NULL),
(69, 1, 2, 157, 158, 1, '2019-04-16 19:00:00', '2019-04-16 19:00:00', '2019-04-20 19:00:00', '2019-04-20 19:00:00', NULL, '7410307', NULL, 1, '2250.000000', '450.000000', '2200.000000', 1, 7, '2019-05-10 13:20:35', '2019-05-13 05:39:21', NULL),
(70, 1, 14, 159, 160, 1, '2019-04-19 19:00:00', '2019-04-19 19:00:00', '2019-04-24 19:00:00', '2019-04-24 19:00:00', NULL, '9079248', NULL, 1, '2250.000000', '450.000000', '2000.000000', 1, 7, '2019-05-10 13:21:19', '2019-05-13 05:39:21', NULL),
(71, 1, 2, 161, 162, 1, '2019-04-18 19:00:00', '2019-04-18 19:00:00', '2019-04-22 19:00:00', '2019-04-22 19:00:00', NULL, '7446480', NULL, 1, '2250.000000', '450.000000', '2200.000000', 1, 7, '2019-05-10 13:21:32', '2019-05-13 05:39:21', NULL),
(72, 1, 2, 163, 164, 1, '2019-04-23 19:00:00', '2019-04-23 19:00:00', '2019-04-27 19:00:00', '2019-04-27 19:00:00', NULL, '4323230', NULL, 1, '2750.000000', '550.000000', '2200.000000', 1, 7, '2019-05-10 13:22:34', '2019-05-13 05:39:21', NULL),
(73, 1, 2, 165, 166, 1, '2019-04-25 19:00:00', '2019-04-25 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '5949886', NULL, 1, '3250.000000', '650.000000', '3200.000000', 1, 7, '2019-05-10 13:23:31', '2019-05-13 05:39:21', NULL),
(74, 1, 14, 167, 168, 1, '2019-04-27 19:00:00', '2019-04-27 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '4926087', NULL, 1, '2250.000000', '450.000000', '2000.000000', 1, 7, '2019-05-10 13:29:00', '2019-05-13 05:39:21', NULL),
(75, 1, 2, 169, 170, 1, '2019-04-25 19:00:00', '2019-04-25 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '9268085', NULL, 1, '3750.000000', '750.000000', '3200.000000', 1, 7, '2019-05-10 13:29:04', '2019-05-13 05:39:21', NULL),
(76, 1, 13, 171, 172, 1, '2019-02-08 20:00:00', '2019-02-08 20:00:00', '2019-02-12 20:00:00', '2019-02-12 20:00:00', NULL, '3956116', NULL, 1, '1500.000000', '300.000000', '1300.000000', 1, 7, '2019-05-10 13:39:12', '2019-05-13 05:39:21', NULL),
(77, 1, 13, 173, 174, 1, '2019-02-13 20:00:00', '2019-02-13 20:00:00', '2019-02-17 20:00:00', '2019-02-17 20:00:00', NULL, '6745195', NULL, 1, '2000.000000', '400.000000', '1750.000000', 1, 7, '2019-05-10 13:45:23', '2019-05-13 05:39:21', NULL),
(78, 1, 13, 175, 176, 1, '2019-02-15 20:00:00', '2019-02-15 20:00:00', '2019-02-19 20:00:00', '2019-02-19 20:00:00', NULL, '5825458', NULL, 1, '1750.000000', '350.000000', '1500.000000', 1, 7, '2019-05-10 13:48:19', '2019-05-13 05:39:22', NULL),
(79, 1, 13, 177, 178, 1, '2019-02-19 20:00:00', '2019-02-19 20:00:00', '2019-02-22 20:00:00', '2019-02-22 20:00:00', NULL, '3359133', NULL, 1, '3500.000000', '700.000000', '3100.000000', 1, 7, '2019-05-10 13:52:18', '2019-05-13 05:39:22', NULL),
(80, 1, 13, 179, 180, 1, '2019-02-24 20:00:00', '2019-02-24 20:00:00', '2019-02-28 20:00:00', '2019-02-28 20:00:00', NULL, '7673201', NULL, 1, '4000.000000', '800.000000', '3400.000000', 1, 7, '2019-05-10 13:59:53', '2019-05-13 05:39:22', NULL),
(81, 1, 2, 181, 182, 1, '2019-04-30 19:00:00', '2019-04-30 19:00:00', '2019-05-04 19:00:00', '2019-05-04 19:00:00', NULL, '6315358', NULL, 1, '3500.000000', '700.000000', '3200.000000', 1, 7, '2019-05-10 14:01:01', '2019-05-13 05:39:22', NULL),
(82, 1, 2, 183, 184, 1, '2019-05-02 19:00:00', '2019-05-02 19:00:00', '2019-05-06 19:00:00', '2019-05-06 19:00:00', NULL, '5764664', NULL, 1, '2000.000000', '400.000000', '1600.000000', 1, 7, '2019-05-10 14:02:06', '2019-05-13 05:39:22', NULL),
(83, 1, 13, 185, 186, 1, '2019-03-01 20:00:00', '2019-03-01 20:00:00', '2019-03-05 20:00:00', '2019-03-05 20:00:00', NULL, '5700862', NULL, 1, '3000.000000', '600.000000', '2700.000000', 1, 7, '2019-05-10 14:02:32', '2019-05-13 05:39:22', NULL),
(84, 1, 2, 187, 188, 1, '2019-05-07 19:00:00', '2019-05-07 19:00:00', '2019-05-11 19:00:00', '2019-05-11 19:00:00', NULL, '4061884', NULL, 1, '2250.000000', '450.000000', '1900.000000', 1, 7, '2019-05-10 14:03:16', '2019-05-13 05:39:22', NULL),
(85, 1, 13, 189, 190, 1, '2019-03-05 20:00:00', '2019-03-05 20:00:00', '2019-03-09 20:00:00', '2019-03-09 20:00:00', NULL, '4748265', NULL, 1, '5000.000000', '1000.000000', '4400.000000', 1, 7, '2019-05-10 14:10:00', '2019-05-13 05:39:22', NULL),
(86, 1, 13, 191, 192, 1, '2019-03-08 20:00:00', '2019-03-08 20:00:00', '2019-03-13 19:00:00', '2019-03-13 19:00:00', NULL, '8714501', NULL, 1, '4250.000000', '850.000000', '3700.000000', 1, 7, '2019-05-10 14:55:41', '2019-05-13 05:39:22', NULL),
(87, 1, 13, 193, 194, 1, '2019-03-12 19:00:00', '2019-03-12 19:00:00', '2019-03-16 19:00:00', '2019-03-16 19:00:00', NULL, '4588271', NULL, 1, '3750.000000', '750.000000', '3350.000000', 1, 7, '2019-05-10 14:59:28', '2019-05-13 05:39:23', NULL),
(88, 1, 13, 195, 196, 1, '2019-03-18 19:00:00', '2019-03-18 19:00:00', '2019-03-22 19:00:00', '2019-03-22 19:00:00', NULL, '8659104', NULL, 1, '3500.000000', '700.000000', '3100.000000', 1, 7, '2019-05-10 15:03:09', '2019-05-13 05:39:23', NULL),
(89, 1, 13, 197, 198, 1, '2019-03-23 19:00:00', '2019-03-23 19:00:00', '2019-03-27 19:00:00', '2019-03-27 19:00:00', NULL, '3357347', NULL, 1, '3000.000000', '600.000000', '2600.000000', 1, 7, '2019-05-10 15:07:12', '2019-05-13 05:39:23', NULL),
(90, 1, 13, 199, 200, 1, '2019-03-27 19:00:00', '2019-03-27 19:00:00', '2019-03-31 19:00:00', '2019-03-31 19:00:00', NULL, '4368618', NULL, 1, '3750.000000', '750.000000', '3350.000000', 1, 7, '2019-05-10 15:10:02', '2019-05-13 05:39:23', NULL),
(91, 1, 13, 201, 202, 1, '2019-04-01 19:00:00', '2019-04-01 19:00:00', '2019-04-05 19:00:00', '2019-04-05 19:00:00', NULL, '5665403', NULL, 1, '2750.000000', '550.000000', '2400.000000', 1, 7, '2019-05-10 16:06:21', '2019-05-13 05:39:23', NULL),
(92, 1, 13, 203, 204, 1, '2019-04-04 19:00:00', '2019-04-04 19:00:00', '2019-04-08 19:00:00', '2019-04-08 19:00:00', NULL, '6457694', NULL, 1, '3000.000000', '600.000000', '2600.000000', 1, 7, '2019-05-10 16:10:54', '2019-05-13 05:39:23', NULL),
(93, 1, 13, 205, 206, 1, '2019-04-09 19:00:00', '2019-04-09 19:00:00', '2019-04-13 19:00:00', '2019-04-13 19:00:00', NULL, '7006212', NULL, 1, '4000.000000', '800.000000', '3600.000000', 1, 7, '2019-05-10 16:18:20', '2019-05-13 05:39:23', NULL),
(94, 1, 13, 207, 208, 1, '2019-04-12 19:00:00', '2019-04-12 19:00:00', '2019-04-16 19:00:00', '2019-04-16 19:00:00', NULL, '2456589', NULL, 1, '4500.000000', '900.000000', '4000.000000', 1, 7, '2019-05-10 16:23:46', '2019-05-13 05:39:24', NULL),
(95, 1, 13, 209, 210, 1, '2019-04-16 19:00:00', '2019-04-16 19:00:00', '2019-04-20 19:00:00', '2019-04-20 19:00:00', NULL, '4794269', NULL, 1, '2750.000000', '550.000000', '2400.000000', 1, 7, '2019-05-10 16:30:52', '2019-05-13 05:39:24', NULL),
(96, 1, 13, 211, 212, 1, '2019-04-22 19:00:00', '2019-04-22 19:00:00', '2019-04-26 19:00:00', '2019-04-26 19:00:00', NULL, '3542691', NULL, 1, '4250.000000', '850.000000', '3800.000000', 1, 7, '2019-05-10 17:08:28', '2019-05-13 05:39:24', NULL),
(97, 1, 13, 213, 214, 1, '2019-04-27 19:00:00', '2019-04-27 19:00:00', '2019-04-30 19:00:00', '2019-04-30 19:00:00', NULL, '8376293', NULL, 1, '2250.000000', '450.000000', '1900.000000', 1, 7, '2019-05-10 17:11:33', '2019-05-13 05:39:24', NULL),
(98, 1, 13, 215, 216, 1, '2019-05-02 19:00:00', '2019-05-02 19:00:00', '2019-05-07 19:00:00', '2019-05-07 19:00:00', NULL, '2589485', NULL, 1, '5000.000000', '1000.000000', '4300.000000', 1, 7, '2019-05-10 17:15:47', '2019-05-13 05:39:24', NULL),
(99, 1, 12, 217, 218, 1, '2019-02-03 20:00:00', '2019-02-03 20:00:00', '2019-02-07 20:00:00', '2019-02-07 20:00:00', NULL, '4239909', NULL, 1, '1000.000000', '200.000000', '850.000000', 1, 7, '2019-05-10 17:39:15', '2019-05-13 05:39:24', NULL),
(100, 1, 12, 219, 220, 1, '2019-02-07 20:00:00', '2019-02-07 20:00:00', '2019-02-11 20:00:00', '2019-02-11 20:00:00', NULL, '9808701', NULL, 1, '1250.000000', '250.000000', '1000.000000', 1, 7, '2019-05-10 17:43:39', '2019-05-13 05:39:24', NULL),
(101, 1, 12, 221, 222, 1, '2019-02-10 20:00:00', '2019-02-10 20:00:00', '2019-02-14 20:00:00', '2019-02-14 20:00:00', NULL, '9564319', NULL, 1, '1000.000000', '200.000000', '800.000000', 1, 7, '2019-05-10 17:49:28', '2019-05-13 05:39:24', NULL),
(102, 1, 12, 223, 224, 1, '2019-02-12 20:00:00', '2019-02-12 20:00:00', '2019-02-17 20:00:00', '2019-02-17 20:00:00', NULL, '2720582', NULL, 1, '2000.000000', '400.000000', '1700.000000', 1, 7, '2019-05-10 18:10:21', '2019-05-13 05:39:24', NULL),
(103, 1, 12, 225, 226, 1, '2019-02-14 20:00:00', '2019-02-14 20:00:00', '2019-02-19 20:00:00', '2019-02-19 20:00:00', NULL, '7226330', NULL, 1, '1750.000000', '350.000000', '1500.000000', 1, 7, '2019-05-10 18:13:46', '2019-05-13 05:39:24', NULL),
(104, 1, 12, 227, 228, 1, '2019-02-18 20:00:00', '2019-02-18 20:00:00', '2019-02-23 20:00:00', '2019-02-23 20:00:00', NULL, '5117344', NULL, 1, '1000.000000', '200.000000', '800.000000', 1, 7, '2019-05-10 18:19:40', '2019-05-13 05:39:24', NULL),
(105, 1, 12, 229, 230, 1, '2019-02-24 20:00:00', '2019-02-24 20:00:00', '2019-02-28 20:00:00', '2019-02-28 20:00:00', NULL, '5409688', NULL, 1, '3000.000000', '600.000000', '2650.000000', 1, 7, '2019-05-10 18:23:48', '2019-05-13 05:39:25', NULL),
(106, 1, 12, 231, 232, 1, '2019-03-02 20:00:00', '2019-03-02 20:00:00', '2019-03-06 20:00:00', '2019-03-06 20:00:00', NULL, '7084388', NULL, 1, '1500.000000', '300.000000', '1250.000000', 1, 7, '2019-05-10 18:29:39', '2019-05-13 05:39:25', NULL),
(107, 1, 12, 233, 234, 1, '2019-03-05 20:00:00', '2019-03-05 20:00:00', '2019-03-09 20:00:00', '2019-03-09 20:00:00', NULL, '8644852', NULL, 1, '2500.000000', '500.000000', '2200.000000', 1, 7, '2019-05-10 18:33:25', '2019-05-13 05:39:25', NULL),
(108, 1, 12, 235, 236, 1, '2019-03-08 20:00:00', '2019-03-08 20:00:00', '2019-03-13 19:00:00', '2019-03-13 19:00:00', NULL, '6648532', NULL, 1, '1250.000000', '250.000000', '1000.000000', 1, 7, '2019-05-10 18:42:12', '2019-05-13 05:39:25', NULL),
(109, 1, 12, 237, 238, 1, '2019-03-16 19:00:00', '2019-03-16 19:00:00', '2019-03-20 19:00:00', '2019-03-20 19:00:00', NULL, '9505732', NULL, 1, '1800.000000', '360.000000', '1600.000000', 1, 7, '2019-05-10 18:45:29', '2019-05-13 05:39:25', NULL),
(110, 1, 12, 239, 240, 1, '2019-03-21 19:00:00', '2019-03-21 19:00:00', '2019-03-27 19:00:00', '2019-03-27 19:00:00', NULL, '6163681', NULL, 1, '1400.000000', '280.000000', '1150.000000', 1, 7, '2019-05-10 18:49:34', '2019-05-13 05:39:25', NULL),
(111, 1, 12, 241, 242, 1, '2019-03-27 19:00:00', '2019-03-27 19:00:00', '2019-03-30 19:00:00', '2019-03-30 19:00:00', NULL, '7790538', NULL, 1, '1900.000000', '380.000000', '1700.000000', 1, 7, '2019-05-10 18:53:55', '2019-05-13 05:39:25', NULL),
(112, 1, 12, 243, 244, 1, '2019-04-02 19:00:00', '2019-04-02 19:00:00', '2019-04-06 19:00:00', '2019-04-06 19:00:00', NULL, '2987241', NULL, 1, '2600.000000', '520.000000', '2300.000000', 1, 7, '2019-05-10 19:01:14', '2019-05-13 05:39:25', NULL),
(113, 1, 12, 245, 246, 1, '2019-04-05 19:00:00', '2019-04-05 19:00:00', '2019-04-10 19:00:00', '2019-04-10 19:00:00', NULL, '8218520', NULL, 1, '1750.000000', '350.000000', '1450.000000', 1, 7, '2019-05-10 19:04:47', '2019-05-13 05:39:25', NULL),
(114, 1, 12, 247, 248, 1, '2019-04-11 19:00:00', '2019-04-11 19:00:00', '2019-04-16 19:00:00', '2019-04-16 19:00:00', NULL, '5489118', NULL, 1, '5000.000000', '1000.000000', '4300.000000', 1, 7, '2019-05-10 19:07:13', '2019-05-13 05:39:26', NULL),
(115, 1, 12, 250, 251, 1, '2019-04-25 19:00:00', '2019-04-25 19:00:00', '2019-04-29 19:00:00', '2019-04-29 19:00:00', NULL, '8307989', NULL, 1, '2000.000000', '400.000000', '1700.000000', 1, 7, '2019-05-10 19:13:26', '2019-05-13 05:39:26', NULL),
(116, 1, 12, 252, 253, 1, '2019-05-03 19:00:00', '2019-05-03 19:00:00', '2019-05-07 19:00:00', '2019-05-07 19:00:00', NULL, '5313914', NULL, 1, '3100.000000', '620.000000', '2700.000000', 1, 7, '2019-05-10 19:16:58', '2019-05-13 05:39:26', NULL),
(117, 1, 12, 254, 255, 1, '2019-05-05 19:00:00', '2019-05-05 19:00:00', '2019-05-08 19:00:00', '2019-05-08 19:00:00', NULL, '3918483', NULL, 1, '2750.000000', '550.000000', '2400.000000', 1, 7, '2019-05-10 19:19:42', '2019-05-13 05:39:26', NULL),
(118, 1, 11, 256, 257, 1, '2019-02-02 20:00:00', '2019-02-02 20:00:00', '2019-02-06 20:00:00', '2019-02-06 20:00:00', NULL, '4101261', NULL, 1, '500.000000', '100.000000', '370.000000', 1, 7, '2019-05-13 13:30:27', '2019-05-13 05:39:26', NULL),
(119, 1, 11, 258, 259, 1, '2019-02-05 20:00:00', '2019-02-05 20:00:00', '2019-02-10 20:00:00', '2019-02-10 20:00:00', NULL, '2241421', NULL, 1, '750.000000', '150.000000', '550.000000', 1, 7, '2019-05-13 13:46:52', '2019-05-13 05:39:26', NULL),
(120, 1, 11, 260, 261, 1, '2019-02-11 20:00:00', '2019-02-11 20:00:00', '2019-02-16 20:00:00', '2019-02-16 20:00:00', NULL, '6353897', NULL, 1, '1500.000000', '300.000000', '1200.000000', 1, 7, '2019-05-13 13:52:17', '2019-05-13 05:39:26', NULL),
(121, 1, 11, 262, 263, 1, '2019-02-17 20:00:00', '2019-02-17 20:00:00', '2019-02-22 20:00:00', '2019-02-22 20:00:00', NULL, '5952507', NULL, 1, '1500.000000', '300.000000', '1250.000000', 1, 7, '2019-05-13 14:01:19', '2019-05-13 05:39:26', NULL),
(122, 1, 11, 264, 265, 1, '2019-02-23 20:00:00', '2019-02-23 20:00:00', '2019-02-28 20:00:00', '2019-02-28 20:00:00', NULL, '2293234', NULL, 1, '1350.000000', '270.000000', '1100.000000', 1, 7, '2019-05-13 14:07:34', '2019-05-13 05:39:26', NULL),
(123, 1, 11, 266, 267, 1, '2019-03-02 20:00:00', '2019-03-02 20:00:00', '2019-03-06 20:00:00', '2019-03-06 20:00:00', NULL, '2887867', NULL, 1, '1750.000000', '350.000000', '1500.000000', 1, 7, '2019-05-13 14:16:19', '2019-05-13 05:39:27', NULL),
(124, 1, 11, 268, 269, 1, '2019-03-07 20:00:00', '2019-03-07 20:00:00', '2019-03-12 19:00:00', '2019-03-12 19:00:00', NULL, '4016213', NULL, 1, '2000.000000', '400.000000', '1700.000000', 1, 7, '2019-05-13 14:20:15', '2019-05-13 05:39:27', NULL),
(125, 1, 11, 270, 271, 1, '2019-03-13 19:00:00', '2019-03-13 19:00:00', '2019-03-18 19:00:00', '2019-03-18 19:00:00', NULL, '7654196', NULL, 1, '1000.000000', '200.000000', '800.000000', 1, 7, '2019-05-13 14:28:16', '2019-05-13 05:39:27', NULL),
(126, 1, 11, 272, 273, 1, '2019-03-19 19:00:00', '2019-03-19 19:00:00', '2019-03-23 19:00:00', '2019-03-23 19:00:00', NULL, '8369528', NULL, 1, '1250.000000', '250.000000', '1000.000000', 1, 7, '2019-05-13 14:32:36', '2019-05-13 05:39:27', NULL),
(127, 1, 11, 274, 275, 1, '2019-03-25 19:00:00', '2019-03-25 19:00:00', '2019-03-29 19:00:00', '2019-03-29 19:00:00', NULL, '3089099', NULL, 1, '1500.000000', '300.000000', '1200.000000', 1, 7, '2019-05-13 14:36:40', '2019-05-13 05:39:27', NULL),
(128, 1, 11, 276, 277, 1, '2019-04-01 19:00:00', '2019-04-01 19:00:00', '2019-04-05 19:00:00', '2019-04-05 19:00:00', NULL, '2526652', NULL, 1, '2000.000000', '400.000000', '1700.000000', 1, 7, '2019-05-13 17:13:42', '2019-05-13 05:39:27', NULL),
(129, 1, 11, 278, 279, 1, '2019-04-05 19:00:00', '2019-04-05 19:00:00', '2019-05-13 19:00:00', '2019-05-13 19:00:00', NULL, '5619607', NULL, 1, '1000.000000', '200.000000', '800.000000', 1, 7, '2019-05-13 17:18:07', '2019-05-13 05:39:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_details`
--

CREATE TABLE `shipment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_legs`
--

CREATE TABLE `shipment_legs` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `wirehouse_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipment_legs`
--

INSERT INTO `shipment_legs` (`id`, `shipment_id`, `wirehouse_comment`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-07 15:48:27', '2019-05-07 15:48:27', NULL),
(2, 8, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-07 17:37:42', '2019-05-07 17:37:42', NULL),
(3, 9, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 13:16:48', '2019-05-08 13:16:48', NULL),
(4, 10, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 13:39:39', '2019-05-08 13:39:39', NULL),
(5, 11, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 13:42:10', '2019-05-08 13:42:10', NULL),
(6, 12, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:12:43', '2019-05-08 14:12:43', NULL),
(7, 13, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:14:37', '2019-05-08 14:14:37', NULL),
(8, 14, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:17:00', '2019-05-08 14:17:00', NULL),
(9, 15, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:47:16', '2019-05-08 14:47:16', NULL),
(10, 16, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:49:39', '2019-05-08 14:49:39', NULL),
(11, 17, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:51:47', '2019-05-08 14:51:47', NULL),
(12, 18, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 14:55:22', '2019-05-08 14:55:22', NULL),
(13, 19, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 16:53:06', '2019-05-08 16:53:06', NULL),
(14, 20, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 16:59:17', '2019-05-08 16:59:17', NULL),
(15, 21, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 17:04:50', '2019-05-08 17:04:50', NULL),
(16, 22, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-08 17:10:48', '2019-05-08 17:10:48', NULL),
(17, 23, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-18 19:00:00', '2019-05-08 18:47:21', NULL),
(18, 24, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-15 19:00:00', '2019-05-09 13:15:03', NULL),
(19, 25, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-17 19:00:00', '2019-05-09 13:16:25', NULL),
(20, 26, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-24 19:00:00', '2019-05-09 13:18:12', NULL),
(21, 27, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-24 19:00:00', '2019-05-09 13:20:13', NULL),
(22, 28, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-11 19:00:00', '2019-05-09 13:21:34', NULL),
(23, 29, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-06 19:00:00', '2019-05-09 14:01:50', NULL),
(24, 30, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-05 20:00:00', '2019-05-09 14:36:50', NULL),
(25, 31, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-07 20:00:00', '2019-05-09 14:48:26', NULL),
(26, 32, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-05 20:00:00', '2019-05-09 14:57:06', NULL),
(27, 33, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-05 20:00:00', '2019-05-09 15:33:13', NULL),
(28, 34, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-07 20:00:00', '2019-05-09 15:37:07', NULL),
(29, 35, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-12 20:00:00', '2019-05-09 15:39:17', NULL),
(30, 36, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-14 20:00:00', '2019-05-09 16:47:11', NULL),
(31, 37, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-14 20:00:00', '2019-05-09 16:54:32', NULL),
(32, 38, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-19 20:00:00', '2019-05-09 16:59:07', NULL),
(33, 39, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-21 20:00:00', '2019-05-09 17:04:09', NULL),
(34, 40, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-26 20:00:00', '2019-05-09 17:06:48', NULL),
(35, 41, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-28 20:00:00', '2019-05-09 17:09:59', NULL),
(36, 42, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-05 20:00:00', '2019-05-09 17:40:52', NULL),
(37, 43, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-05 20:00:00', '2019-05-09 17:44:35', NULL),
(38, 44, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-07 20:00:00', '2019-05-09 17:45:35', NULL),
(39, 45, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-12 19:00:00', '2019-05-09 17:47:09', NULL),
(40, 46, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-18 19:00:00', '2019-05-09 18:20:43', NULL),
(41, 47, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-21 19:00:00', '2019-05-09 18:23:25', NULL),
(42, 48, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-11 20:00:00', '2019-05-09 18:42:35', NULL),
(43, 49, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-26 19:00:00', '2019-05-09 18:44:35', NULL),
(44, 50, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-28 19:00:00', '2019-05-09 18:48:21', NULL),
(45, 51, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-13 20:00:00', '2019-05-09 18:52:00', NULL),
(46, 52, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-18 20:00:00', '2019-05-09 18:57:04', NULL),
(47, 53, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-20 20:00:00', '2019-05-09 19:03:15', NULL),
(48, 54, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-24 20:00:00', '2019-05-09 19:08:51', NULL),
(49, 55, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-02 20:00:00', '2019-05-09 19:15:19', NULL),
(50, 56, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-05 20:00:00', '2019-05-09 19:23:49', NULL),
(51, 57, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-10 19:00:00', '2019-05-09 19:28:35', NULL),
(52, 58, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-15 19:00:00', '2019-05-09 19:37:07', NULL),
(53, 59, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-22 19:00:00', '2019-05-09 19:43:03', NULL),
(54, 60, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-27 19:00:00', '2019-05-09 19:49:48', NULL),
(55, 61, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-02 19:00:00', '2019-05-10 12:37:56', NULL),
(56, 62, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-04 19:00:00', '2019-05-10 13:02:54', NULL),
(57, 63, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-09 19:00:00', '2019-05-10 13:08:45', NULL),
(58, 64, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-02 19:00:00', '2019-05-10 13:15:32', NULL),
(59, 65, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-14 19:00:00', '2019-05-10 13:16:14', NULL),
(60, 66, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-04 19:00:00', '2019-05-10 13:16:22', NULL),
(61, 67, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-09 19:00:00', '2019-05-10 13:17:24', NULL),
(62, 68, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-11 19:00:00', '2019-05-10 13:19:34', NULL),
(63, 69, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-16 19:00:00', '2019-05-10 13:20:35', NULL),
(64, 70, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-19 19:00:00', '2019-05-10 13:21:19', NULL),
(65, 71, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-18 19:00:00', '2019-05-10 13:21:32', NULL),
(66, 72, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-23 19:00:00', '2019-05-10 13:22:34', NULL),
(67, 73, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-25 19:00:00', '2019-05-10 13:23:31', NULL),
(68, 74, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-27 19:00:00', '2019-05-10 13:29:00', NULL),
(69, 75, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-25 19:00:00', '2019-05-10 13:29:04', NULL),
(70, 76, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-08 20:00:00', '2019-05-10 13:39:12', NULL),
(71, 77, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-13 20:00:00', '2019-05-10 13:45:23', NULL),
(72, 78, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-15 20:00:00', '2019-05-10 13:48:19', NULL),
(73, 79, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-19 20:00:00', '2019-05-10 13:52:18', NULL),
(74, 80, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-24 20:00:00', '2019-05-10 13:59:53', NULL),
(75, 81, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-30 19:00:00', '2019-05-10 14:01:01', NULL),
(76, 82, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-02 19:00:00', '2019-05-10 14:02:06', NULL),
(77, 83, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-01 20:00:00', '2019-05-10 14:02:32', NULL),
(78, 84, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-07 19:00:00', '2019-05-10 14:03:16', NULL),
(79, 85, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-05 20:00:00', '2019-05-10 14:10:00', NULL),
(80, 86, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-08 20:00:00', '2019-05-10 14:55:41', NULL),
(81, 87, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-12 19:00:00', '2019-05-10 14:59:28', NULL),
(82, 88, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-18 19:00:00', '2019-05-10 15:03:09', NULL),
(83, 89, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-23 19:00:00', '2019-05-10 15:07:12', NULL),
(84, 90, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-27 19:00:00', '2019-05-10 15:10:02', NULL),
(85, 91, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-01 19:00:00', '2019-05-10 16:06:21', NULL),
(86, 92, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-04 19:00:00', '2019-05-10 16:10:54', NULL),
(87, 93, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-09 19:00:00', '2019-05-10 16:18:20', NULL),
(88, 94, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-12 19:00:00', '2019-05-10 16:23:46', NULL),
(89, 95, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-16 19:00:00', '2019-05-10 16:30:52', NULL),
(90, 96, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-22 19:00:00', '2019-05-10 17:08:28', NULL),
(91, 97, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-27 19:00:00', '2019-05-10 17:11:33', NULL),
(92, 98, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-02 19:00:00', '2019-05-10 17:15:47', NULL),
(93, 99, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-03 20:00:00', '2019-05-10 17:39:15', NULL),
(94, 100, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-07 20:00:00', '2019-05-10 17:43:39', NULL),
(95, 101, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-10 20:00:00', '2019-05-10 17:49:28', NULL),
(96, 102, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-12 20:00:00', '2019-05-10 18:10:21', NULL),
(97, 103, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-14 20:00:00', '2019-05-10 18:13:46', NULL),
(98, 104, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-18 20:00:00', '2019-05-10 18:19:40', NULL),
(99, 105, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-24 20:00:00', '2019-05-10 18:23:48', NULL),
(100, 106, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-02 20:00:00', '2019-05-10 18:29:39', NULL),
(101, 107, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-05 20:00:00', '2019-05-10 18:33:25', NULL),
(102, 108, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-08 20:00:00', '2019-05-10 18:42:12', NULL),
(103, 109, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-16 19:00:00', '2019-05-10 18:45:29', NULL),
(104, 110, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-21 19:00:00', '2019-05-10 18:49:34', NULL),
(105, 111, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-27 19:00:00', '2019-05-10 18:53:55', NULL),
(106, 112, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-02 19:00:00', '2019-05-10 19:01:14', NULL),
(107, 113, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-05 19:00:00', '2019-05-10 19:04:47', NULL),
(108, 114, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-11 19:00:00', '2019-05-10 19:07:13', NULL),
(109, 115, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-25 19:00:00', '2019-05-10 19:13:27', NULL),
(110, 116, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-03 19:00:00', '2019-05-10 19:16:58', NULL),
(111, 117, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-05-05 19:00:00', '2019-05-10 19:19:42', NULL),
(112, 118, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-02 20:00:00', '2019-05-13 13:30:27', NULL),
(113, 119, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-05 20:00:00', '2019-05-13 13:46:52', NULL),
(114, 120, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-11 20:00:00', '2019-05-13 13:52:18', NULL),
(115, 121, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-17 20:00:00', '2019-05-13 14:01:19', NULL),
(116, 122, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-02-23 20:00:00', '2019-05-13 14:07:34', NULL),
(117, 123, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-02 20:00:00', '2019-05-13 14:16:19', NULL),
(118, 124, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-07 20:00:00', '2019-05-13 14:20:15', NULL),
(119, 125, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-13 19:00:00', '2019-05-13 14:28:16', NULL),
(120, 126, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-19 19:00:00', '2019-05-13 14:32:36', NULL),
(121, 127, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-03-25 19:00:00', '2019-05-13 14:36:40', NULL),
(122, 128, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-01 19:00:00', '2019-05-13 17:13:42', NULL),
(123, 129, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, '2019-04-05 19:00:00', '2019-05-13 17:18:07', NULL),
(124, 5, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, NULL, '2019-05-13 05:23:12', NULL),
(125, 5, 'The shipment was delivered successfully.', 7, '2019-02-09 14:00:00', '2019-05-13 05:24:34', NULL),
(126, 6, 'Carrier has received request from shipper and is about to pick up the shipment.', 1, NULL, '2019-05-13 05:24:34', NULL),
(127, 6, 'The shipment was delivered successfully.', 7, '2019-02-10 15:00:00', '2019-05-13 05:24:34', NULL),
(128, 7, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:24:35', NULL),
(129, 8, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:24:35', NULL),
(130, 9, 'The shipment was delivered successfully.', 7, '2019-02-23 20:00:00', '2019-05-13 05:24:35', NULL),
(131, 10, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:24:35', NULL),
(132, 5, 'The shipment was delivered successfully.', 7, '2019-02-10 02:00:00', '2019-05-13 05:26:07', NULL),
(133, 6, 'The shipment was delivered successfully.', 7, '2019-02-10 15:00:00', '2019-05-13 05:26:07', NULL),
(134, 7, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:26:07', NULL),
(135, 8, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:26:07', NULL),
(136, 9, 'The shipment was delivered successfully.', 7, '2019-02-23 20:00:00', '2019-05-13 05:26:07', NULL),
(137, 10, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:26:07', NULL),
(138, 5, 'The shipment was delivered successfully.', 7, '2019-02-12 02:00:00', '2019-05-13 05:28:46', NULL),
(139, 6, 'The shipment was delivered successfully.', 7, '2019-02-10 15:00:00', '2019-05-13 05:28:46', NULL),
(140, 7, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:28:46', NULL),
(141, 8, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:28:46', NULL),
(142, 9, 'The shipment was delivered successfully.', 7, '2019-02-23 20:00:00', '2019-05-13 05:28:46', NULL),
(143, 10, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:28:46', NULL),
(144, 5, 'The shipment was delivered successfully.', 7, '2019-02-12 02:00:00', '2019-05-13 05:39:14', NULL),
(145, 6, 'The shipment was delivered successfully.', 7, '2019-02-10 15:00:00', '2019-05-13 05:39:14', NULL),
(146, 7, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:39:14', NULL),
(147, 8, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:39:14', NULL),
(148, 9, 'The shipment was delivered successfully.', 7, '2019-02-23 20:00:00', '2019-05-13 05:39:14', NULL),
(149, 10, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:39:14', NULL),
(150, 11, 'The shipment was delivered successfully.', 7, '2019-02-27 18:30:00', '2019-05-13 05:39:14', NULL),
(151, 12, 'The shipment was delivered successfully.', 7, '2019-03-01 20:00:00', '2019-05-13 05:39:14', NULL),
(152, 13, 'The shipment was delivered successfully.', 7, '2019-03-11 19:00:00', '2019-05-13 05:39:14', NULL),
(153, 14, 'The shipment was delivered successfully.', 7, '2019-03-15 19:00:00', '2019-05-13 05:39:14', NULL),
(154, 15, 'The shipment was delivered successfully.', 7, '2019-03-26 19:00:00', '2019-05-13 05:39:15', NULL),
(155, 16, 'The shipment was delivered successfully.', 7, '2019-03-22 19:00:00', '2019-05-13 05:39:15', NULL),
(156, 17, 'The shipment was delivered successfully.', 7, '2019-03-15 19:00:00', '2019-05-13 05:39:15', NULL),
(157, 18, 'The shipment was delivered successfully.', 7, '2019-03-15 07:00:00', '2019-05-13 05:39:15', NULL),
(158, 19, 'The shipment was delivered successfully.', 7, '2019-03-29 19:00:00', '2019-05-13 05:39:15', NULL),
(159, 20, 'The shipment was delivered successfully.', 7, '2019-04-05 19:00:00', '2019-05-13 05:39:15', NULL),
(160, 21, 'The shipment was delivered successfully.', 7, '2019-04-08 19:00:00', '2019-05-13 05:39:15', NULL),
(161, 22, 'The shipment was delivered successfully.', 7, '2019-04-12 19:00:00', '2019-05-13 05:39:15', NULL),
(162, 23, 'The shipment was delivered successfully.', 7, '2019-04-23 19:00:00', '2019-05-13 05:39:15', NULL),
(163, 24, 'The shipment was delivered successfully.', 7, '2019-04-19 19:00:00', '2019-05-13 05:39:16', NULL),
(164, 25, 'The shipment was delivered successfully.', 7, '2019-04-22 19:00:00', '2019-05-13 05:39:16', NULL),
(165, 26, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:16', NULL),
(166, 27, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:16', NULL),
(167, 28, 'The shipment was delivered successfully.', 7, '2019-04-15 19:00:00', '2019-05-13 05:39:16', NULL),
(168, 29, 'The shipment was delivered successfully.', 7, '2019-05-10 19:00:00', '2019-05-13 05:39:16', NULL),
(169, 30, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:39:16', NULL),
(170, 31, 'The shipment was delivered successfully.', 7, '2019-02-14 20:00:00', '2019-05-13 05:39:16', NULL),
(171, 32, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:39:16', NULL),
(172, 33, 'The shipment was delivered successfully.', 7, '2019-02-09 20:00:00', '2019-05-13 05:39:17', NULL),
(173, 34, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:39:17', NULL),
(174, 35, 'The shipment was delivered successfully.', 7, '2019-02-16 20:00:00', '2019-05-13 05:39:17', NULL),
(175, 36, 'The shipment was delivered successfully.', 7, '2019-02-19 20:00:00', '2019-05-13 05:39:17', NULL),
(176, 37, 'The shipment was delivered successfully.', 7, '2019-02-19 20:00:00', '2019-05-13 05:39:17', NULL),
(177, 38, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:39:17', NULL),
(178, 39, 'The shipment was delivered successfully.', 7, '2019-02-26 20:00:00', '2019-05-13 05:39:17', NULL),
(179, 40, 'The shipment was delivered successfully.', 7, '2019-03-03 20:00:00', '2019-05-13 05:39:17', NULL),
(180, 41, 'The shipment was delivered successfully.', 7, '2019-03-04 20:00:00', '2019-05-13 05:39:17', NULL),
(181, 42, 'The shipment was delivered successfully.', 7, '2019-03-09 20:00:00', '2019-05-13 05:39:18', NULL),
(182, 43, 'The shipment was delivered successfully.', 7, '2019-03-09 20:00:00', '2019-05-13 05:39:18', NULL),
(183, 44, 'The shipment was delivered successfully.', 7, '2019-03-17 07:00:00', '2019-05-13 05:39:18', NULL),
(184, 45, 'The shipment was delivered successfully.', 7, '2019-03-16 19:00:00', '2019-05-13 05:39:18', NULL),
(185, 46, 'The shipment was delivered successfully.', 7, '2019-03-22 19:00:00', '2019-05-13 05:39:18', NULL),
(186, 47, 'The shipment was delivered successfully.', 7, '2019-03-26 19:00:00', '2019-05-13 05:39:18', NULL),
(187, 48, 'The shipment was delivered successfully.', 7, '2019-02-15 20:00:00', '2019-05-13 05:39:18', NULL),
(188, 49, 'The shipment was delivered successfully.', 7, '2019-03-30 19:00:00', '2019-05-13 05:39:18', NULL),
(189, 50, 'The shipment was delivered successfully.', 7, '2019-04-01 19:00:00', '2019-05-13 05:39:18', NULL),
(190, 51, 'The shipment was delivered successfully.', 7, '2019-02-16 20:00:00', '2019-05-13 05:39:19', NULL),
(191, 52, 'The shipment was delivered successfully.', 7, '2019-02-21 20:00:00', '2019-05-13 05:39:19', NULL),
(192, 53, 'The shipment was delivered successfully.', 7, '2019-02-25 20:00:00', '2019-05-13 05:39:19', NULL),
(193, 54, 'The shipment was delivered successfully.', 7, '2019-02-28 20:00:00', '2019-05-13 05:39:19', NULL),
(194, 55, 'The shipment was delivered successfully.', 7, '2019-03-06 20:00:00', '2019-05-13 05:39:19', NULL),
(195, 56, 'The shipment was delivered successfully.', 7, '2019-03-09 20:00:00', '2019-05-13 05:39:19', NULL),
(196, 57, 'The shipment was delivered successfully.', 7, '2019-03-16 07:00:00', '2019-05-13 05:39:19', NULL),
(197, 58, 'The shipment was delivered successfully.', 7, '2019-03-20 19:00:00', '2019-05-13 05:39:19', NULL),
(198, 59, 'The shipment was delivered successfully.', 7, '2019-03-26 19:00:00', '2019-05-13 05:39:19', NULL),
(199, 60, 'The shipment was delivered successfully.', 7, '2019-03-31 19:00:00', '2019-05-13 05:39:20', NULL),
(200, 61, 'The shipment was delivered successfully.', 7, '2019-04-05 19:00:00', '2019-05-13 05:39:20', NULL),
(201, 62, 'The shipment was delivered successfully.', 7, '2019-04-08 19:00:00', '2019-05-13 05:39:20', NULL),
(202, 63, 'The shipment was delivered successfully.', 7, '2019-04-13 19:00:00', '2019-05-13 05:39:20', NULL),
(203, 64, 'The shipment was delivered successfully.', 7, '2019-04-06 19:00:00', '2019-05-13 05:39:20', NULL),
(204, 65, 'The shipment was delivered successfully.', 7, '2019-04-18 19:00:00', '2019-05-13 05:39:20', NULL),
(205, 66, 'The shipment was delivered successfully.', 7, '2019-04-08 19:00:00', '2019-05-13 05:39:20', NULL),
(206, 67, 'The shipment was delivered successfully.', 7, '2019-04-13 19:00:00', '2019-05-13 05:39:20', NULL),
(207, 68, 'The shipment was delivered successfully.', 7, '2019-04-15 19:00:00', '2019-05-13 05:39:20', NULL),
(208, 69, 'The shipment was delivered successfully.', 7, '2019-04-20 19:00:00', '2019-05-13 05:39:21', NULL),
(209, 70, 'The shipment was delivered successfully.', 7, '2019-04-30 07:00:00', '2019-05-13 05:39:21', NULL),
(210, 71, 'The shipment was delivered successfully.', 7, '2019-04-22 19:00:00', '2019-05-13 05:39:21', NULL),
(211, 72, 'The shipment was delivered successfully.', 7, '2019-04-27 19:00:00', '2019-05-13 05:39:21', NULL),
(212, 73, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:21', NULL),
(213, 74, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:21', NULL),
(214, 75, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:21', NULL),
(215, 76, 'The shipment was delivered successfully.', 7, '2019-02-12 20:00:00', '2019-05-13 05:39:21', NULL),
(216, 77, 'The shipment was delivered successfully.', 7, '2019-02-17 20:00:00', '2019-05-13 05:39:21', NULL),
(217, 78, 'The shipment was delivered successfully.', 7, '2019-02-19 20:00:00', '2019-05-13 05:39:22', NULL),
(218, 79, 'The shipment was delivered successfully.', 7, '2019-02-22 20:00:00', '2019-05-13 05:39:22', NULL),
(219, 80, 'The shipment was delivered successfully.', 7, '2019-02-28 20:00:00', '2019-05-13 05:39:22', NULL),
(220, 81, 'The shipment was delivered successfully.', 7, '2019-05-04 19:00:00', '2019-05-13 05:39:22', NULL),
(221, 82, 'The shipment was delivered successfully.', 7, '2019-05-06 19:00:00', '2019-05-13 05:39:22', NULL),
(222, 83, 'The shipment was delivered successfully.', 7, '2019-03-07 20:00:00', '2019-05-13 05:39:22', NULL),
(223, 84, 'The shipment was delivered successfully.', 7, '2019-05-11 19:00:00', '2019-05-13 05:39:22', NULL),
(224, 85, 'The shipment was delivered successfully.', 7, '2019-03-09 20:00:00', '2019-05-13 05:39:22', NULL),
(225, 86, 'The shipment was delivered successfully.', 7, '2019-03-13 19:00:00', '2019-05-13 05:39:22', NULL),
(226, 87, 'The shipment was delivered successfully.', 7, '2019-03-16 19:00:00', '2019-05-13 05:39:23', NULL),
(227, 88, 'The shipment was delivered successfully.', 7, '2019-03-22 19:00:00', '2019-05-13 05:39:23', NULL),
(228, 89, 'The shipment was delivered successfully.', 7, '2019-03-27 19:00:00', '2019-05-13 05:39:23', NULL),
(229, 90, 'The shipment was delivered successfully.', 7, '2019-03-31 19:00:00', '2019-05-13 05:39:23', NULL),
(230, 91, 'The shipment was delivered successfully.', 7, '2019-04-05 19:00:00', '2019-05-13 05:39:23', NULL),
(231, 92, 'The shipment was delivered successfully.', 7, '2019-04-08 19:00:00', '2019-05-13 05:39:23', NULL),
(232, 93, 'The shipment was delivered successfully.', 7, '2019-04-13 19:00:00', '2019-05-13 05:39:23', NULL),
(233, 94, 'The shipment was delivered successfully.', 7, '2019-04-16 19:00:00', '2019-05-13 05:39:23', NULL),
(234, 95, 'The shipment was delivered successfully.', 7, '2019-04-20 19:00:00', '2019-05-13 05:39:24', NULL),
(235, 96, 'The shipment was delivered successfully.', 7, '2019-05-02 07:00:00', '2019-05-13 05:39:24', NULL),
(236, 97, 'The shipment was delivered successfully.', 7, '2019-04-30 19:00:00', '2019-05-13 05:39:24', NULL),
(237, 98, 'The shipment was delivered successfully.', 7, '2019-05-07 19:00:00', '2019-05-13 05:39:24', NULL),
(238, 99, 'The shipment was delivered successfully.', 7, '2019-02-07 20:00:00', '2019-05-13 05:39:24', NULL),
(239, 100, 'The shipment was delivered successfully.', 7, '2019-02-11 20:00:00', '2019-05-13 05:39:24', NULL),
(240, 101, 'The shipment was delivered successfully.', 7, '2019-02-14 20:00:00', '2019-05-13 05:39:24', NULL),
(241, 102, 'The shipment was delivered successfully.', 7, '2019-02-17 20:00:00', '2019-05-13 05:39:24', NULL),
(242, 103, 'The shipment was delivered successfully.', 7, '2019-02-19 20:00:00', '2019-05-13 05:39:24', NULL),
(243, 104, 'The shipment was delivered successfully.', 7, '2019-02-23 20:00:00', '2019-05-13 05:39:24', NULL),
(244, 105, 'The shipment was delivered successfully.', 7, '2019-02-28 20:00:00', '2019-05-13 05:39:25', NULL),
(245, 106, 'The shipment was delivered successfully.', 7, '2019-03-06 20:00:00', '2019-05-13 05:39:25', NULL),
(246, 107, 'The shipment was delivered successfully.', 7, '2019-03-09 20:00:00', '2019-05-13 05:39:25', NULL),
(247, 108, 'The shipment was delivered successfully.', 7, '2019-03-13 19:00:00', '2019-05-13 05:39:25', NULL),
(248, 109, 'The shipment was delivered successfully.', 7, '2019-03-25 07:00:00', '2019-05-13 05:39:25', NULL),
(249, 110, 'The shipment was delivered successfully.', 7, '2019-03-27 19:00:00', '2019-05-13 05:39:25', NULL),
(250, 111, 'The shipment was delivered successfully.', 7, '2019-03-30 19:00:00', '2019-05-13 05:39:25', NULL),
(251, 112, 'The shipment was delivered successfully.', 7, '2019-04-06 19:00:00', '2019-05-13 05:39:25', NULL),
(252, 113, 'The shipment was delivered successfully.', 7, '2019-04-10 19:00:00', '2019-05-13 05:39:25', NULL),
(253, 114, 'The shipment was delivered successfully.', 7, '2019-04-16 19:00:00', '2019-05-13 05:39:26', NULL),
(254, 115, 'The shipment was delivered successfully.', 7, '2019-04-29 19:00:00', '2019-05-13 05:39:26', NULL),
(255, 116, 'The shipment was delivered successfully.', 7, '2019-05-07 19:00:00', '2019-05-13 05:39:26', NULL),
(256, 117, 'The shipment was delivered successfully.', 7, '2019-05-08 19:00:00', '2019-05-13 05:39:26', NULL),
(257, 118, 'The shipment was delivered successfully.', 7, '2019-02-06 20:00:00', '2019-05-13 05:39:26', NULL),
(258, 119, 'The shipment was delivered successfully.', 7, '2019-02-10 20:00:00', '2019-05-13 05:39:26', NULL),
(259, 120, 'The shipment was delivered successfully.', 7, '2019-02-16 20:00:00', '2019-05-13 05:39:26', NULL),
(260, 121, 'The shipment was delivered successfully.', 7, '2019-02-22 20:00:00', '2019-05-13 05:39:26', NULL),
(261, 122, 'The shipment was delivered successfully.', 7, '2019-03-04 20:00:00', '2019-05-13 05:39:26', NULL),
(262, 123, 'The shipment was delivered successfully.', 7, '2019-03-06 20:00:00', '2019-05-13 05:39:27', NULL),
(263, 124, 'The shipment was delivered successfully.', 7, '2019-03-12 19:00:00', '2019-05-13 05:39:27', NULL),
(264, 125, 'The shipment was delivered successfully.', 7, '2019-03-18 19:00:00', '2019-05-13 05:39:27', NULL),
(265, 126, 'The shipment was delivered successfully.', 7, '2019-03-23 19:00:00', '2019-05-13 05:39:27', NULL),
(266, 127, 'The shipment was delivered successfully.', 7, '2019-03-29 19:00:00', '2019-05-13 05:39:27', NULL),
(267, 128, 'The shipment was delivered successfully.', 7, '2019-04-05 19:00:00', '2019-05-13 05:39:27', NULL),
(268, 129, 'The shipment was delivered successfully.', 7, '2019-05-13 19:00:00', '2019-05-13 05:39:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_transport_route`
--

CREATE TABLE `shipment_transport_route` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `transport_start_date` timestamp NULL DEFAULT NULL,
  `transport_end_date` timestamp NULL DEFAULT NULL,
  `transport_start_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_end_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Maharashtra', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL),
(2, 1, 'Andaman & Nicobar Islands', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL),
(3, 1, 'Andhra Pradesh', 1, '2019-05-06 01:26:08', '2019-05-06 01:26:08', NULL),
(4, 1, 'Arunachal Pradesh', 1, '2019-05-06 01:26:22', '2019-05-06 01:26:22', NULL),
(5, 1, 'Assam', 1, '2019-05-06 01:26:23', '2019-05-06 01:26:23', NULL),
(6, 1, 'Bihar', 1, '2019-05-06 01:26:25', '2019-05-06 01:26:25', NULL),
(7, 1, 'Chhattisgarh', 1, '2019-05-06 01:26:32', '2019-05-06 01:26:32', NULL),
(8, 1, 'Dadra & Nagar Haveli', 1, '2019-05-06 01:26:35', '2019-05-06 01:26:35', NULL),
(9, 1, 'Daman & Diu', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(10, 1, 'Delhi', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(11, 1, 'Goa', 1, '2019-05-06 01:26:36', '2019-05-06 01:26:36', NULL),
(12, 1, 'Gujarat', 1, '2019-05-06 01:26:37', '2019-05-06 01:26:37', NULL),
(13, 1, 'Haryana', 1, '2019-05-06 01:26:44', '2019-05-06 01:26:44', NULL),
(14, 1, 'Himachal Pradesh', 1, '2019-05-06 01:26:49', '2019-05-06 01:26:49', NULL),
(15, 1, 'Jammu & Kashmir', 1, '2019-05-06 01:26:50', '2019-05-06 01:26:50', NULL),
(16, 1, 'Jharkhand', 1, '2019-05-06 01:26:51', '2019-05-06 01:26:51', NULL),
(17, 1, 'Karnataka', 1, '2019-05-06 01:26:55', '2019-05-06 01:26:55', NULL),
(18, 1, 'Kerala', 1, '2019-05-06 01:27:01', '2019-05-06 01:27:01', NULL),
(19, 1, 'Lakshadweep', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(20, 1, 'Madhya Pradesh', 1, '2019-05-06 01:27:09', '2019-05-06 01:27:09', NULL),
(21, 1, 'Manipur', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(22, 1, 'Meghalaya', 1, '2019-05-06 01:27:24', '2019-05-06 01:27:24', NULL),
(23, 1, 'Mizoram', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(24, 1, 'Nagaland', 1, '2019-05-06 01:27:25', '2019-05-06 01:27:25', NULL),
(25, 1, 'Orissa', 1, '2019-05-06 01:27:26', '2019-05-06 01:27:26', NULL),
(26, 1, 'Pondicherry', 1, '2019-05-06 01:27:30', '2019-05-06 01:27:30', NULL),
(27, 1, 'Punjab', 1, '2019-05-06 01:27:31', '2019-05-06 01:27:31', NULL),
(28, 1, 'Rajasthan', 1, '2019-05-06 01:27:38', '2019-05-06 01:27:38', NULL),
(29, 1, 'Sikkim', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(30, 1, 'West Bengal', 1, '2019-05-06 01:27:44', '2019-05-06 01:27:44', NULL),
(31, 1, 'Tamil Nadu', 1, '2019-05-06 01:27:45', '2019-05-06 01:27:45', NULL),
(32, 1, 'Tripura', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(33, 1, 'Uttar Pradesh', 1, '2019-05-06 01:27:54', '2019-05-06 01:27:54', NULL),
(34, 1, 'Uttarakhand', 1, '2019-05-06 01:28:05', '2019-05-06 01:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transit_locations`
--

CREATE TABLE `transit_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `transit_location_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transit_location_location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transit_location_size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `transport_start_date` timestamp NULL DEFAULT NULL,
  `transport_end_date` timestamp NULL DEFAULT NULL,
  `transport_start_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_end_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, '$2y$10$N8B4RU7nmcESuknVMmFZcuTh2sqkF4GmFoN.rJvSQnfiXPVC7YIQW', 'KOQI52fjhFTxO9juYYt1fUIBHG8VsJbNH6mBjATIGvgYJXV5C0ZF4gLRUxiW', '2019-05-06 01:28:16', '2019-05-06 01:28:16'),
(2, 'Pickup Agent 1', 'agent1', NULL, '$2y$10$EptTc2/GeFHQFHZT56n5t.yqvNL9ZB5LUm2qDqLfOL3Ad4u2Y1/7q', NULL, '2019-05-06 01:28:16', '2019-05-06 01:28:16'),
(3, 'Pickup agent 2', 'agent2', NULL, '$2y$10$Tbcj8k6EdKj1CQhwChyyeu0cqQe0qX1A50qR1wS/sUVjmFXX87URy', NULL, '2019-05-06 01:28:16', '2019-05-06 01:28:16'),
(4, 'Pickup agent 3', 'agent3', NULL, '$2y$10$m5ZZsuwRUSzauTFHVNZ/deUdKI9f0ixGgZBMMfRsSQp8SP5HpG29O', NULL, '2019-05-06 01:28:16', '2019-05-06 01:28:16'),
(5, 'Pickup agent 4', 'agent4', NULL, '$2y$10$2udKFypg7tFVw75YuNp.ie3KgZcbsbKptCfpXu1DEv0PEi2yYNwS2', NULL, '2019-05-06 01:28:17', '2019-05-06 01:28:17'),
(6, 'Pickup agent 5', 'agent5', NULL, '$2y$10$Ayo2ZLMs/XCCQSkVFRKlvOmtfMfuEhkwylbu0UxWZ6UU5pVf1jmWO', NULL, '2019-05-06 01:28:17', '2019-05-06 01:28:17'),
(7, 'Warehouse1 agent Agent 1', 'Warehouse1 agent1', NULL, '$2y$10$eX.mpcsf8BJgbNiW5xgjAeqqPuYp/UUtVWx9Kn9g4uyRegtsfERCe', NULL, '2019-05-06 01:28:17', '2019-05-06 01:28:17'),
(8, 'Warehouse1 agent Agent 2', 'Warehouse1 agent2', NULL, '$2y$10$MC3SAeSrzA5CsbZ2LZ3eku7qN4W30CS3dMfukdvL.oJ1qBuLYG7h2', NULL, '2019-05-06 01:28:18', '2019-05-06 01:28:18'),
(9, 'Warehouse1 agent Agent 3', 'Warehouse1 agent3', NULL, '$2y$10$UejMUe6/GBRe4apLaqsZL.ZHX7cxEbYP0GbsOT4xiB0o1JQMdPFr6', NULL, '2019-05-06 01:28:18', '2019-05-06 01:28:18'),
(10, 'Warehouse1 agent Agent 4', 'Warehouse1 agent4', NULL, '$2y$10$l4i8AuM/kMZWeExCfN0U1eN65gzwLEOcD1BhJT8U3mleu9jwawayO', NULL, '2019-05-06 01:28:18', '2019-05-06 01:28:18'),
(11, 'Warehouse1 agent Agent 5', 'Warehouse1 agent5', NULL, '$2y$10$eeDVd77eD29Isu.0yJEyn.6ZfKq0wTxLGSDpNg4CS8kDiVUwVmTLa', NULL, '2019-05-06 01:28:19', '2019-05-06 01:28:19'),
(12, 'Warehouse2 agent Agent 1', 'Warehouse2 agent1', NULL, '$2y$10$fTubegC6RbULt8j5ridsj.av4WPQizirHLchYRLSgqqyeCKqp9hH2', NULL, '2019-05-06 01:28:19', '2019-05-06 01:28:19'),
(13, 'Warehouse2 agent Agent 2', 'Warehouse2 agent2', NULL, '$2y$10$OEm9ZsMaSL1ldfqjpmneqOw4JcvLJn2aA53D2H.USezcwNrVe.dTS', NULL, '2019-05-06 01:28:20', '2019-05-06 01:28:20'),
(14, 'Warehouse2 agent Agent 3', 'Warehouse2 agent3', NULL, '$2y$10$hvWXGvIQGQwqbXN7K.2IQ.R.kp3QHv7VZzq91I/WGmlkPmlmEXE6i', NULL, '2019-05-06 01:28:20', '2019-05-06 01:28:20'),
(15, 'Warehouse2 agent Agent 4', 'Warehouse2 agent4', NULL, '$2y$10$RGss/4kYh7TeXcSlNpnvJuLVgWW3VyEOiRxE5OHmvYxdZQOCGU0m6', NULL, '2019-05-06 01:28:21', '2019-05-06 01:28:21'),
(16, 'Warehouse2 agent Agent 5', 'Warehouse2 agent5', NULL, '$2y$10$WcYe8BOGNiL6Qcr0iFjP9.Z0mkI6Upk3jQEHwndnYcgXDmmCuz5oi', NULL, '2019-05-06 01:28:21', '2019-05-06 01:28:21'),
(17, 'Warehouse3 agent Agent 1', 'Warehouse3 agent1', NULL, '$2y$10$rVgzWvX/yhrAKt/sLORLKO3f.FOjZFJokPboXhhuxVAP1f3yVlD82', NULL, '2019-05-06 01:28:22', '2019-05-06 01:28:22'),
(18, 'Warehouse3 agent Agent 2', 'Warehouse3 agent2', NULL, '$2y$10$zNK5Y/zrG3/3/N/Jn/0hl.8UyZunzVklCgMQs4KsjvNQP16AGdzPS', NULL, '2019-05-06 01:28:22', '2019-05-06 01:28:22'),
(19, 'Warehouse3 agent Agent 3', 'Warehouse3 agent3', NULL, '$2y$10$dIR/XJEPZ6BVAwiOA0dSpu94ahLwLATCI.q24/8C.f4kgqSNKJPJG', NULL, '2019-05-06 01:28:22', '2019-05-06 01:28:22'),
(20, 'Warehouse3 agent Agent 4', 'Warehouse3 agent4', NULL, '$2y$10$eE928ZF0kcN1ONVEnDub3unfIzwwCtoIx0lwbkH6Lza.irSGX31/u', NULL, '2019-05-06 01:28:23', '2019-05-06 01:28:23'),
(21, 'Warehouse3 agent Agent 5', 'Warehouse3 agent5', NULL, '$2y$10$gPJa0ZAatXL54A9xvpZiYucbn/iCVt/brQ60OzIk/eA/zhOI8LAHW', NULL, '2019-05-06 01:28:23', '2019-05-06 01:28:23'),
(22, 'Warehouse4 agent Agent 1', 'Warehouse4 agent1', NULL, '$2y$10$NfETLb.6138cLuugroAnduE/ZoBxNn4j7f0vj1Tjxh7F7iVCMLxhq', NULL, '2019-05-06 01:28:24', '2019-05-06 01:28:24'),
(23, 'Warehouse4 agent Agent 2', 'Warehouse4 agent2', NULL, '$2y$10$So9XTG13Wjv6v9G3KKh2SuN4Xa7Cy/bbQ0X20nu0dCc4FcZeE7Dwm', NULL, '2019-05-06 01:28:24', '2019-05-06 01:28:24'),
(24, 'Warehouse4 agent Agent 3', 'Warehouse4 agent3', NULL, '$2y$10$P4Q3xvPdZEstyR0Kab9VSO2vXirdxxIDB50Qp0Efxq9nO4ofd6/sG', NULL, '2019-05-06 01:28:24', '2019-05-06 01:28:24'),
(25, 'Warehouse4 agent Agent 4', 'Warehouse4 agent4', NULL, '$2y$10$u4a9.bPInakJPDziXq2Cke13PvzacGsbH/c3O87.Nxnf2nTMpeTZq', NULL, '2019-05-06 01:28:25', '2019-05-06 01:28:25'),
(26, 'Warehouse4 agent Agent 5', 'Warehouse4 agent5', NULL, '$2y$10$RiKmQlsMbqDesGca1VkOpONHE6HxGtps6qMN6jxhKLS/DbgMpz66u', NULL, '2019-05-06 01:28:26', '2019-05-06 01:28:26'),
(27, 'Warehouse5 agent Agent 1', 'Warehouse5 agent1', NULL, '$2y$10$vQMI0n7lh0MA.wCi5zBSmOSWWnmfLBKdOuv5ntcU84nhaR/Tonbty', NULL, '2019-05-06 01:28:26', '2019-05-06 01:28:26'),
(28, 'Warehouse5 agent Agent 2', 'Warehouse5 agent2', NULL, '$2y$10$N30EjpYTUotIul/9.MEdwewGMp56Wn5ZACA3ZbAV1fWH7kFQ/2/La', NULL, '2019-05-06 01:28:26', '2019-05-06 01:28:26'),
(29, 'Warehouse5 agent Agent 3', 'Warehouse5 agent3', NULL, '$2y$10$ZyRdWJqskZAKSYLO.KmInOnnoDVUfHHyqFcq9PBxqSCuShLzi.Eg.', NULL, '2019-05-06 01:28:27', '2019-05-06 01:28:27'),
(30, 'Warehouse5 agent Agent 4', 'Warehouse5 agent4', NULL, '$2y$10$FqHDmXg9qSL7uNjpFnCTIOTZ9pAdCwTYEVb/ig8Dx8/v.3NqHPALO', NULL, '2019-05-06 01:28:27', '2019-05-06 01:28:27'),
(31, 'Warehouse5 agent Agent 5', 'Warehouse5 agent5', NULL, '$2y$10$whtTWqpm2dYent2uwsWZ9.BNX0tUu5Uk8LGd3rxP/8widQeVWjINu', NULL, '2019-05-06 01:28:28', '2019-05-06 01:28:28'),
(32, 'Warehouse6 agent Agent 1', 'Warehouse6 agent1', NULL, '$2y$10$/LTlV0Y0r4EZpmwz9J42bOSnPngSpucg2tiloT78QPbryW71ptVNe', NULL, '2019-05-06 01:28:28', '2019-05-06 01:28:28'),
(33, 'Warehouse6 agent Agent 2', 'Warehouse6 agent2', NULL, '$2y$10$Lz4cT/ciyo4ukB/xaOpeGeRmJCmQkn0nNRmyI.ZO7ZTYr7mv.DYqm', NULL, '2019-05-06 01:28:28', '2019-05-06 01:28:28'),
(34, 'Warehouse6 agent Agent 3', 'Warehouse6 agent3', NULL, '$2y$10$n29QpcloWbds2i.jItCBOOl.EBjZPKknCUxsF8EaLomp/aYmUvlju', NULL, '2019-05-06 01:28:29', '2019-05-06 01:28:29'),
(35, 'Warehouse6 agent Agent 4', 'Warehouse6 agent4', NULL, '$2y$10$HAquUvlnooC.ZzPA1fSgHeXsEHFvCn4Il63f4Bf1uVFeKOAB4fEEm', NULL, '2019-05-06 01:28:29', '2019-05-06 01:28:29'),
(36, 'Warehouse6 agent Agent 5', 'Warehouse6 agent5', NULL, '$2y$10$tlTocnKZIgT87EgXr0zcFurQKTo/f0L2I4Kk/GsG2MydSnqFZiZLC', NULL, '2019-05-06 01:28:29', '2019-05-06 01:28:29'),
(37, 'Warehouse7 agent Agent 1', 'Warehouse7 agent1', NULL, '$2y$10$/nX3objfXE878OpLIsvVqOy7DmzHMtlLOoXgTy5LgToFSZG2Wh6RS', NULL, '2019-05-06 01:28:30', '2019-05-06 01:28:30'),
(38, 'Warehouse7 agent Agent 2', 'Warehouse7 agent2', NULL, '$2y$10$faxA/djv0pJsXqluUWD64Ow8Iw/mE2DtPW1REWqDNdX.hzGSmghTq', NULL, '2019-05-06 01:28:30', '2019-05-06 01:28:30'),
(39, 'Warehouse7 agent Agent 3', 'Warehouse7 agent3', NULL, '$2y$10$YMXLkVKnm3LYy3zJgFSOh.ioBWD4lTEsLTNhUtZ2XxH68bJ1gJfVK', NULL, '2019-05-06 01:28:30', '2019-05-06 01:28:30'),
(40, 'Warehouse7 agent Agent 4', 'Warehouse7 agent4', NULL, '$2y$10$yrciuQ0isWam9v42QnZIueWmMeu3678dj15LpWhbDcd89iyb1VkEm', NULL, '2019-05-06 01:28:31', '2019-05-06 01:28:31'),
(41, 'Warehouse7 agent Agent 5', 'Warehouse7 agent5', NULL, '$2y$10$XopMMlvP5CUJMByX9AoCSO2VhifAy7gQFen1ZvNiFvLfh5x7Z5nQS', NULL, '2019-05-06 01:28:31', '2019-05-06 01:28:31'),
(42, 'ABP Group', 'info@abpgroup.com', NULL, '$2y$10$8sNTvvzX9tLwscyh5IPcFuI/KxCoJDypqTu1HbJVaJPPK0g.fLvcu', NULL, '2019-05-06 01:28:31', '2019-05-06 01:28:31'),
(43, 'Baidyanath Group', 'info@Baidyanath.com', NULL, '$2y$10$PhCGyiB77NaUsSrytYf4tuTX0xRZxGJt7B.fZmwpnZcNXUZWK9bUW', NULL, '2019-05-06 01:28:31', '2019-05-06 01:28:31'),
(44, 'Coal India', 'info@Coal.com', NULL, '$2y$10$E8ELPVpc96JVayumobjRoubyvgn4W6nFZcBZiRfqvAk9Wn12ckiti', NULL, '2019-05-06 01:28:32', '2019-05-06 01:28:32'),
(45, 'Damodar Valley Corporation', 'info@Damodar.com', NULL, '$2y$10$YXWWDIhVNDHKhyKKwjWwYuHkr0yQnv0n.CwIMyTQSJNwCFgWFHoia', NULL, '2019-05-06 01:28:32', '2019-05-06 01:28:32'),
(46, 'Emami', 'info@Emami.com', NULL, '$2y$10$75Gy8pZSja5Z813N6Xq5D.tNRNELtIDMwW6KScdatJLxJIlbButmy', NULL, '2019-05-06 01:28:32', '2019-05-06 01:28:32'),
(47, 'FusionCharts', 'info@FusionCharts.com', NULL, '$2y$10$VakVfduhp13WAGYga4A7Xu38TqG877/6VoHOah9WXpF8mo2CA90hm', NULL, '2019-05-06 01:28:33', '2019-05-06 01:28:33'),
(48, 'Greenply', 'info@Greenply.com', NULL, '$2y$10$WBHYuVvnk7F3a/0ah5w5SeC/UIDx/PAOOq2X7h8RCazBjr7pjE2HO', NULL, '2019-05-06 01:28:33', '2019-05-06 01:28:33'),
(49, 'Hooghly Dock & Port Engineers Limited', 'info@Hooghly.com', NULL, '$2y$10$unH26bRvxt9nzITgS.0nZu2aEDbNYnSV7Y2uM5ErMFH.s.9L/36VK', NULL, '2019-05-06 01:28:33', '2019-05-06 01:28:33'),
(50, 'Indian Public Health Association', 'info@Indian.com', NULL, '$2y$10$Uk9UMA8goafXlRytvxHdCuOlY.DgIxSo9JuYJ.L/5MPdMpuZBYAr.', NULL, '2019-05-06 01:28:34', '2019-05-06 01:28:34'),
(51, 'Jai Balaji group', 'info@Balaji.com', NULL, '$2y$10$bxVrPAXILE.0DyPrhU9JIePTEZTKpTpsryFUAF3WlR9uoz2KerN9G', NULL, '2019-05-06 01:28:34', '2019-05-06 01:28:34'),
(52, 'K.C. Das Grandsons', 'info@Grandsons.com', NULL, '$2y$10$fdT6Ieo8Riv15bIPYkDrb.NjdSyEuXCnuPI0UcnUCvsogiPL2RqsO', NULL, '2019-05-06 01:28:34', '2019-05-06 01:28:34'),
(53, 'Lux Industries', 'info@Lux.com', NULL, '$2y$10$vmV7ey8v1zopsMIe0bKgI.5aTnpXVZEk7YR/5Jv6u807dqlejpYK6', NULL, '2019-05-06 01:28:35', '2019-05-06 01:28:35'),
(54, 'National Insurance Company', 'info@National.com', NULL, '$2y$10$5g7MzaKXd/qgnM.zXD6V/eRhzVupGrgMePZvXEVk5MZvall12nZ16', NULL, '2019-05-06 01:28:35', '2019-05-06 01:28:35'),
(55, 'Oxford Bookstore', 'info@Oxford.com', NULL, '$2y$10$vj6NFVL8gDLfk7JndzCwQuIQeO.omtfEP/Oc3uGUe4QjPR406J5By', NULL, '2019-05-06 01:28:35', '2019-05-06 01:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `landmark` text COLLATE utf8mb4_unicode_ci,
  `country_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `pincode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phcalling_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+91',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilecalling_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+91',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `country_id`, `state_id`, `city_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 30, 1438, 'Warehouse Kolkata', 1, '2019-05-06 01:28:17', '2019-05-06 01:28:17', NULL),
(2, 1, 6, 259, 'Warehouse Patna', 1, '2019-05-06 01:28:19', '2019-05-06 01:28:19', NULL),
(3, 1, 6, 203, 'Warehouse Gaya', 1, '2019-05-06 01:28:22', '2019-05-06 01:28:22', NULL),
(4, 1, 33, 1301, 'Warehouse Lucknow', 1, '2019-05-06 01:28:23', '2019-05-06 01:28:23', NULL),
(5, 1, 33, 1292, 'Warehouse Kanpur', 1, '2019-05-06 01:28:26', '2019-05-06 01:28:26', NULL),
(6, 1, 33, 1269, 'Warehouse Agra', 1, '2019-05-06 01:28:28', '2019-05-06 01:28:28', NULL),
(7, 1, 10, 322, 'Warehouse Delhi', 1, '2019-05-06 01:28:29', '2019-05-06 01:28:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_user`
--

CREATE TABLE `warehouse_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_user`
--

INSERT INTO `warehouse_user` (`id`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 1, 1, '2019-05-06 01:28:18', '2019-05-06 01:28:18', NULL),
(2, 8, 1, 1, '2019-05-06 01:28:18', '2019-05-06 01:28:18', NULL),
(3, 9, 1, 1, '2019-05-06 01:28:18', '2019-05-06 01:28:18', NULL),
(4, 10, 1, 1, '2019-05-06 01:28:19', '2019-05-06 01:28:19', NULL),
(5, 11, 1, 1, '2019-05-06 01:28:19', '2019-05-06 01:28:19', NULL),
(6, 12, 2, 1, '2019-05-06 01:28:20', '2019-05-06 01:28:20', NULL),
(7, 13, 2, 1, '2019-05-06 01:28:20', '2019-05-06 01:28:20', NULL),
(8, 14, 2, 1, '2019-05-06 01:28:21', '2019-05-06 01:28:21', NULL),
(9, 15, 2, 1, '2019-05-06 01:28:21', '2019-05-06 01:28:21', NULL),
(10, 16, 2, 1, '2019-05-06 01:28:21', '2019-05-06 01:28:21', NULL),
(11, 17, 3, 1, '2019-05-06 01:28:22', '2019-05-06 01:28:22', NULL),
(12, 18, 3, 1, '2019-05-06 01:28:22', '2019-05-06 01:28:22', NULL),
(13, 19, 3, 1, '2019-05-06 01:28:23', '2019-05-06 01:28:23', NULL),
(14, 20, 3, 1, '2019-05-06 01:28:23', '2019-05-06 01:28:23', NULL),
(15, 21, 3, 1, '2019-05-06 01:28:23', '2019-05-06 01:28:23', NULL),
(16, 22, 4, 1, '2019-05-06 01:28:24', '2019-05-06 01:28:24', NULL),
(17, 23, 4, 1, '2019-05-06 01:28:24', '2019-05-06 01:28:24', NULL),
(18, 24, 4, 1, '2019-05-06 01:28:25', '2019-05-06 01:28:25', NULL),
(19, 25, 4, 1, '2019-05-06 01:28:25', '2019-05-06 01:28:25', NULL),
(20, 26, 4, 1, '2019-05-06 01:28:26', '2019-05-06 01:28:26', NULL),
(21, 27, 5, 1, '2019-05-06 01:28:26', '2019-05-06 01:28:26', NULL),
(22, 28, 5, 1, '2019-05-06 01:28:27', '2019-05-06 01:28:27', NULL),
(23, 29, 5, 1, '2019-05-06 01:28:27', '2019-05-06 01:28:27', NULL),
(24, 30, 5, 1, '2019-05-06 01:28:27', '2019-05-06 01:28:27', NULL),
(25, 31, 5, 1, '2019-05-06 01:28:28', '2019-05-06 01:28:28', NULL),
(26, 32, 6, 1, '2019-05-06 01:28:28', '2019-05-06 01:28:28', NULL),
(27, 33, 6, 1, '2019-05-06 01:28:28', '2019-05-06 01:28:28', NULL),
(28, 34, 6, 1, '2019-05-06 01:28:29', '2019-05-06 01:28:29', NULL),
(29, 35, 6, 1, '2019-05-06 01:28:29', '2019-05-06 01:28:29', NULL),
(30, 36, 6, 1, '2019-05-06 01:28:29', '2019-05-06 01:28:29', NULL),
(31, 37, 7, 1, '2019-05-06 01:28:30', '2019-05-06 01:28:30', NULL),
(32, 38, 7, 1, '2019-05-06 01:28:30', '2019-05-06 01:28:30', NULL),
(33, 39, 7, 1, '2019-05-06 01:28:30', '2019-05-06 01:28:30', NULL),
(34, 40, 7, 1, '2019-05-06 01:28:31', '2019-05-06 01:28:31', NULL),
(35, 41, 7, 1, '2019-05-06 01:28:31', '2019-05-06 01:28:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_index` (`customer_id`),
  ADD KEY `addresses_country_id_index` (`country_id`),
  ADD KEY `addresses_state_id_index` (`state_id`),
  ADD KEY `addresses_city_id_index` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_index` (`country_id`),
  ADD KEY `cities_state_id_index` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_user_id_index` (`user_id`);

--
-- Indexes for table `master_document_types`
--
ALTER TABLE `master_document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_location_types`
--
ALTER TABLE `master_location_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_message_types`
--
ALTER TABLE `master_message_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_shipment_status`
--
ALTER TABLE `master_shipment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_transport_types`
--
ALTER TABLE `master_transport_types`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_service_id_index` (`service_id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_index` (`user_id`),
  ADD KEY `shipments_customer_id_index` (`customer_id`),
  ADD KEY `shipments_document_type_id_index` (`document_type_id`),
  ADD KEY `shipments_pickup_address_id_index` (`pickup_address_id`),
  ADD KEY `shipments_delivery_address_id_index` (`delivery_address_id`);

--
-- Indexes for table `shipment_details`
--
ALTER TABLE `shipment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_details_shipment_id_index` (`shipment_id`);

--
-- Indexes for table `shipment_legs`
--
ALTER TABLE `shipment_legs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_legs_shipment_id_index` (`shipment_id`);

--
-- Indexes for table `shipment_transport_route`
--
ALTER TABLE `shipment_transport_route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_transport_route_shipment_id_index` (`shipment_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `transit_locations`
--
ALTER TABLE `transit_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transit_locations_shipment_id_index` (`shipment_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_route_shipment_id_index` (`shipment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_user_id_foreign` (`user_id`),
  ADD KEY `user_details_country_id_index` (`country_id`),
  ADD KEY `user_details_state_id_index` (`state_id`),
  ADD KEY `user_details_city_id_index` (`city_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_country_id_index` (`country_id`),
  ADD KEY `warehouses_state_id_index` (`state_id`),
  ADD KEY `warehouses_city_id_index` (`city_id`);

--
-- Indexes for table `warehouse_user`
--
ALTER TABLE `warehouse_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_user_user_id_index` (`user_id`),
  ADD KEY `warehouse_user_warehouse_id_index` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1467;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `master_document_types`
--
ALTER TABLE `master_document_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_location_types`
--
ALTER TABLE `master_location_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_message_types`
--
ALTER TABLE `master_message_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_shipment_status`
--
ALTER TABLE `master_shipment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_transport_types`
--
ALTER TABLE `master_transport_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `shipment_details`
--
ALTER TABLE `shipment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipment_legs`
--
ALTER TABLE `shipment_legs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `shipment_transport_route`
--
ALTER TABLE `shipment_transport_route`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transit_locations`
--
ALTER TABLE `transit_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `warehouse_user`
--
ALTER TABLE `warehouse_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipments_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipments_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `master_document_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipments_pickup_address_id_foreign` FOREIGN KEY (`pickup_address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipment_details`
--
ALTER TABLE `shipment_details`
  ADD CONSTRAINT `shipment_details_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipment_legs`
--
ALTER TABLE `shipment_legs`
  ADD CONSTRAINT `shipment_legs_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipment_transport_route`
--
ALTER TABLE `shipment_transport_route`
  ADD CONSTRAINT `shipment_transport_route_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `transit_locations`
--
ALTER TABLE `transit_locations`
  ADD CONSTRAINT `transit_locations_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD CONSTRAINT `transport_route_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_user`
--
ALTER TABLE `warehouse_user`
  ADD CONSTRAINT `warehouse_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_user_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
