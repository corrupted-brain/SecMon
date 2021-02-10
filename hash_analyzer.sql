-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2021 at 08:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hash_analyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `Deface`
--

CREATE TABLE `Deface` (
  `id` int(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Deface`
--

INSERT INTO `Deface` (`id`, `website`, `status`, `remark`, `date`) VALUES
(1, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-05 16:15:44'),
(2, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:11:30'),
(3, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:11:37'),
(4, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:12:30'),
(5, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:12:37'),
(6, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:13:30'),
(7, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:13:36'),
(8, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:14:30'),
(9, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:14:38'),
(10, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:17:29'),
(11, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:17:37'),
(12, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:18:29'),
(13, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:18:35'),
(14, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:19:29'),
(15, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:19:35'),
(16, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:20:44'),
(17, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:20:50'),
(18, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:21:44'),
(19, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:21:50'),
(20, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:22:59'),
(21, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:23:15'),
(22, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:23:15'),
(23, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:23:21'),
(24, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:24:02'),
(25, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:24:09'),
(26, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:25:20'),
(27, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:25:26'),
(28, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:26:20'),
(29, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:26:26'),
(30, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:27:20'),
(31, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:27:28'),
(32, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:28:20'),
(33, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:28:26'),
(34, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:29:20'),
(35, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:29:27'),
(36, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:30:47'),
(37, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:30:53'),
(38, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:31:47'),
(39, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:31:53'),
(40, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:34:27'),
(41, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:34:35'),
(42, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:36:50'),
(43, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:36:56'),
(44, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:37:50'),
(45, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:37:57'),
(46, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:39:20'),
(47, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:39:27'),
(48, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 07:41:05'),
(49, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 07:41:11'),
(50, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 13:36:09'),
(51, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 13:36:17'),
(52, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 13:37:13'),
(53, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 13:37:19'),
(54, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 13:39:10'),
(55, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 13:39:18'),
(56, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 14:42:37'),
(57, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 14:42:44'),
(58, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 14:42:47'),
(59, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:11:55'),
(60, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:12:01'),
(61, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:12:04'),
(62, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:12:55'),
(63, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:13:01'),
(64, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:13:03'),
(65, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:13:55'),
(66, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:14:02'),
(67, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:14:05'),
(68, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:14:55'),
(69, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:15:01'),
(70, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:15:03'),
(71, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:15:55'),
(72, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:16:01'),
(73, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:16:02'),
(74, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:16:55'),
(75, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:17:01'),
(76, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:17:03'),
(77, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:17:55'),
(78, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:18:02'),
(79, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:18:05'),
(80, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:18:55'),
(81, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:19:04'),
(82, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:19:06'),
(83, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:19:55'),
(84, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:20:02'),
(85, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:20:03'),
(86, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:20:55'),
(87, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:21:01'),
(88, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:21:03'),
(89, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:21:55'),
(90, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:22:00'),
(91, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:22:03'),
(92, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:22:55'),
(93, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:23:00'),
(94, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:23:03'),
(95, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:23:55'),
(96, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:24:02'),
(97, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:24:05'),
(98, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:24:54'),
(99, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:25:00'),
(100, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:25:03'),
(101, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:25:55'),
(102, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:26:01'),
(103, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:26:03'),
(104, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:26:55'),
(105, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:27:01'),
(106, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:27:04'),
(107, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:27:55'),
(108, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:28:00'),
(109, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:28:03'),
(110, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:28:55'),
(111, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:29:02'),
(112, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:29:05'),
(113, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:29:54'),
(114, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:30:00'),
(115, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:30:02'),
(116, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:30:55'),
(117, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:31:01'),
(118, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:31:03'),
(119, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:31:55'),
(120, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:32:00'),
(121, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:32:03'),
(122, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:32:55'),
(123, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:33:01'),
(124, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:33:03'),
(125, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 16:33:55'),
(126, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 16:34:02'),
(127, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 16:34:05'),
(128, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-07 19:48:42'),
(129, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-07 19:48:50'),
(130, 'eminenceways.com', 'fine', 'Office Site', '2021-02-07 19:48:53'),
(131, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:38:36'),
(132, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:38:48'),
(133, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:39:06'),
(134, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:41:18'),
(135, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:41:25'),
(136, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:41:28'),
(137, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:41:32'),
(138, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:42:18'),
(139, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:42:36'),
(140, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:42:39'),
(141, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:42:42'),
(142, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:43:17'),
(143, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:43:25'),
(144, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:43:29'),
(145, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:43:31'),
(146, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:44:18'),
(147, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:44:32'),
(148, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:44:35'),
(149, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:44:39'),
(150, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:45:19'),
(151, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:45:26'),
(152, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:45:33'),
(153, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:45:37'),
(154, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:46:17'),
(155, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:46:26'),
(156, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:46:29'),
(157, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:46:32'),
(158, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:47:17'),
(159, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:47:29'),
(160, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:47:32'),
(161, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:47:35'),
(162, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:48:21'),
(163, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:48:29'),
(164, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:48:32'),
(165, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:48:34'),
(166, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:49:22'),
(167, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:49:37'),
(168, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:49:40'),
(169, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:49:42'),
(170, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:50:18'),
(171, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:50:33'),
(172, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:50:37'),
(173, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:50:40'),
(174, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:51:23'),
(175, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:51:31'),
(176, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:51:34'),
(177, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:51:37'),
(178, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:52:18'),
(179, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:52:25'),
(180, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:52:33'),
(181, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:52:35'),
(182, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:53:19'),
(183, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:53:28'),
(184, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:53:32'),
(185, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:53:35'),
(186, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:54:18'),
(187, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:54:26'),
(188, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:54:29'),
(189, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:54:37'),
(190, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:55:18'),
(191, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:55:24'),
(192, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:55:27'),
(193, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:55:30'),
(194, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:56:23'),
(195, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:56:33'),
(196, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:56:37'),
(197, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:56:40'),
(198, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:57:19'),
(199, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:57:29'),
(200, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:57:31'),
(201, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:57:34'),
(202, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:58:18'),
(203, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:58:26'),
(204, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:58:29'),
(205, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:58:32'),
(206, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 05:59:18'),
(207, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 05:59:26'),
(208, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 05:59:29'),
(209, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 05:59:33'),
(210, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:00:18'),
(211, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:00:26'),
(212, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:00:30'),
(213, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:00:34'),
(214, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:01:19'),
(215, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:01:28'),
(216, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:01:31'),
(217, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:01:34'),
(218, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:02:18'),
(219, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:02:28'),
(220, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:02:31'),
(221, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:02:34'),
(222, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:03:22'),
(223, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:03:30'),
(224, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:03:33'),
(225, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:03:36'),
(226, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:04:17'),
(227, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:04:27'),
(228, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:04:30'),
(229, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:04:35'),
(230, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:05:19'),
(231, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:05:26'),
(232, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:05:29'),
(233, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:05:32'),
(234, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:06:18'),
(235, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:06:25'),
(236, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:06:28'),
(237, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:06:31'),
(238, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2021-02-08 06:07:18'),
(239, 'exploitway.com', 'defaced', 'Exploitway', '2021-02-08 06:07:28'),
(240, 'eminenceways.com', 'fine', 'Office Site', '2021-02-08 06:07:31'),
(241, 'smaranchand.com.np', 'fine', 'Websitw', '2021-02-08 06:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `deface_config`
--

CREATE TABLE `deface_config` (
  `id` int(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deface_config`
--

INSERT INTO `deface_config` (`id`, `website`, `description`, `email`, `contact`) VALUES
(1, 'tcioe.edu.np/4u.html', 'Thapathali Campus', 'info@tcioe.edu.np', 'contact'),
(2, 'exploitway.com', 'Exploitway', 'admin@exploitway.com', 'contact'),
(3, 'eminenceways.com', 'Office Site', 'info@eminenceways.com', 'contact'),
(4, 'smaranchand.com.np', 'Websitw', 'test@test.com', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `filescan_config`
--

CREATE TABLE `filescan_config` (
  `id` int(255) NOT NULL,
  `account` varchar(200) NOT NULL,
  `scan_path` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `file_extensions` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filescan_config`
--

INSERT INTO `filescan_config` (`id`, `account`, `scan_path`, `email`, `file_extensions`) VALUES
(1, '  kailash  ', '/home/kailash/Desktop/college', 'kailashbohara0x00@gmail.com', '  *        ');

-- --------------------------------------------------------

--
-- Table structure for table `file_history`
--

CREATE TABLE `file_history` (
  `time_stamp` char(19) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `old_hash` varchar(40) DEFAULT NULL,
  `new_hash` varchar(40) DEFAULT NULL,
  `file_last_mod` char(19) DEFAULT NULL,
  `acct` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_history`
--

INSERT INTO `file_history` (`time_stamp`, `status`, `file_path`, `old_hash`, `new_hash`, `file_last_mod`, `acct`) VALUES
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:22:12', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:23:03', 'Edited', '/home/kailash/Desktop/college/inclusion.txt', 'f2670cfbf94eb22c7a2ba633755581cbf97f31b5', 'cfaa4bab7d1136930f56deca19e09415fe3dde0f', '2021-02-08 17:22:55', '  kailash  '),
('2021-02-08 05:28:23', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:32:20', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:40:43', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:47:29', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:49:10', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:49:10', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:49:10', 'Deleted', '/home/kailash/Desktop/college/papers', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Not Applicable', '2021-01-31 16:56:18', '  kailash  '),
('2021-02-08 05:52:11', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:53:33', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 05:54:03', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:26:50', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:27:10', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:41:15', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:42:12', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:42:39', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 06:44:55', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:05:41', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:11:58', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:21:22', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:22:22', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:23:22', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:25:08', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:26:08', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:27:08', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:28:58', 'Deleted', '/home/kailash/Desktop/college/nepal.svg', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Not Applicable', '2021-02-08 19:24:42', '  kailash  '),
('2021-02-08 07:29:59', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:30:59', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:31:59', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:33:27', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:34:27', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:35:27', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:36:27', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  '),
('2021-02-08 07:37:27', 'Unchanged', 'No changes in files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', '  kailash  ');

-- --------------------------------------------------------

--
-- Table structure for table `file_scan_log`
--

CREATE TABLE `file_scan_log` (
  `file_path` varchar(200) NOT NULL,
  `file_hash` char(40) NOT NULL,
  `file_last_mod` char(19) DEFAULT NULL,
  `acct` varchar(20) NOT NULL DEFAULT 'Not specified'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_scan_log`
--

INSERT INTO `file_scan_log` (`file_path`, `file_hash`, `file_last_mod`, `acct`) VALUES
('/home/kailash/Desktop/college/demo.jsp', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2021-02-08 17:53:21', '  kailash  '),
('/home/kailash/Desktop/college/papers/WebsiteDefacementIJCSIS.pdf', '124815570022b443447417ea19d1f4d330d6544e', '2020-03-02 18:17:12', '  kailash  '),
('/home/kailash/Desktop/college/papers/electronics-08-01338.pdf', 'af54c402331998d1f0abbb7c426f3406d3cb69ce', '2020-03-02 18:15:22', '  kailash  '),
('/home/kailash/Desktop/college/papers/computers-08-00035.pdf', '33eef2962c34f5a2ef32557caa9b9a5a2970cd90', '2020-03-02 18:13:36', '  kailash  '),
('/home/kailash/Desktop/college/FYP proposal .docx', 'a2c113207c102942ac85f0ef9e10e57752c7366c', '2021-01-31 16:55:11', '  kailash  '),
('/home/kailash/Desktop/college/inclusion.txt', 'cfaa4bab7d1136930f56deca19e09415fe3dde0f', '2021-02-08 17:22:55', '  kailash  '),
('/home/kailash/Desktop/college/index.html', 'bbb35887a2a5a9a56db35b9d3aa073defe38b1d2', '2021-02-08 17:17:31', '  kailash  '),
('/home/kailash/Desktop/college/Presentation-for-FYP.pptx', 'b0317cbe2defd9c28e2524554443a5b086e9cd29', '2020-03-10 03:36:26', '  kailash  '),
('/home/kailash/Desktop/college/main.js', 'e45132d40c516749d7fe1942264e92fc430b8876', '2021-02-08 17:48:59', '  kailash  ');

-- --------------------------------------------------------

--
-- Table structure for table `IPstatus`
--

CREATE TABLE `IPstatus` (
  `id` smallint(6) NOT NULL,
  `ip_addr` varchar(15) DEFAULT NULL,
  `status` enum('up','down','n/a') NOT NULL DEFAULT 'n/a',
  `device_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `IPstatus`
--

INSERT INTO `IPstatus` (`id`, `ip_addr`, `status`, `device_name`, `date`) VALUES
(1, '127.0.0.1', 'up', 'Localhost', '2021-02-05 17:29:51'),
(2, '192.168.1.73', 'up', 'Kalilinux', '2021-02-05 17:29:51'),
(3, '202.20.20.20', 'down', 'demo', '2021-02-05 17:30:11'),
(4, '10.10.1.1', 'down', 'teststs', '2021-02-05 17:30:21'),
(71, '1.1.1.1', 'up', 'one', '2021-02-05 17:56:17'),
(280, '195.10.22.255', 'down', 'api', '2021-02-05 18:24:23'),
(341, '192.168.1.1', 'down', 'route', '2021-02-05 18:48:45'),
(342, '192.168.1.99', 'down', 'oneplus', '2021-02-05 18:48:49'),
(751, '10.10.10.1', 'down', 'haha', '2021-02-06 07:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `IPstatus_config`
--

CREATE TABLE `IPstatus_config` (
  `id` int(255) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  `device_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IPstatus_config`
--

INSERT INTO `IPstatus_config` (`id`, `ip_addr`, `device_name`) VALUES
(157, '127.0.0.1', 'Localhost'),
(169, '192.168.1.73', 'Kalilinux'),
(170, '                                                        202.12.12.3 ', '                                                        worldlink1'),
(171, '202.20.20.20', 'demo'),
(172, '10.10.1.1', 'teststs'),
(173, '1.1.1.1', 'one'),
(174, '195.10.22.255', 'api'),
(175, '192.168.1.1', 'route'),
(176, '192.168.1.99', 'oneplus'),
(177, '10.10.10.1', 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `scan_log`
--

CREATE TABLE `scan_log` (
  `scan_time` char(19) NOT NULL,
  `found_changes` int(11) NOT NULL DEFAULT 0,
  `acct` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scan_log`
--

INSERT INTO `scan_log` (`scan_time`, `found_changes`, `acct`) VALUES
('2021-02-08 05:22:12', 8, '  kailash  '),
('2021-02-08 05:23:03', 1, '  kailash  '),
('2021-02-08 05:49:10', 2, '  kailash  '),
('2021-02-08 05:53:33', 1, '  kailash  '),
('2021-02-08 07:25:08', 1, '  kailash  '),
('2021-02-08 07:28:58', 1, '  kailash  ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(250) NOT NULL,
  `time_stamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `time_stamp`) VALUES
(1, 'Kailash', 'A6AD00AC113A19D953EFB91820D8788E2263B28A', 'test@test.com', '2021-02-08'),
(98, '  Super Admin1  ', 'nepal@123', 'test@admin.com', NULL),
(99, ' Kailash Bohara', '3375bc0b4445a1e2c49c5925e5b943c2c71bcdbd', 'kailash@me.com', NULL),
(100, 'demo user', '7db4575d7eb43af49df637b3480d4256649b8cdb', 'gokul@gokul', NULL),
(101, ' new user1', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'new@mew.com', NULL),
(102, 'new mwe', 'bdb8465ce041d94a0e490564f2162dcc87d4a46a', 'mew@sw.com', '2021-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `virus`
--

CREATE TABLE `virus` (
  `id` int(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_hash` varchar(255) NOT NULL,
  `acct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `virus`
--

INSERT INTO `virus` (`id`, `file_path`, `file_hash`, `acct`) VALUES
(2, '/desktop/file.html', 'D5DD920BE5BCFEB904E95DA4B6D0CCCA0727D692', 'Kailash'),
(3, 'nepal/test.php', 'D5DD920BE5BCFEB904E95DA4B6D0CCCA0727D692', 'Kailash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Deface`
--
ALTER TABLE `Deface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deface_config`
--
ALTER TABLE `deface_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filescan_config`
--
ALTER TABLE `filescan_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_scan_log`
--
ALTER TABLE `file_scan_log`
  ADD PRIMARY KEY (`file_path`);

--
-- Indexes for table `IPstatus`
--
ALTER TABLE `IPstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_addr` (`ip_addr`);

--
-- Indexes for table `IPstatus_config`
--
ALTER TABLE `IPstatus_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scan_log`
--
ALTER TABLE `scan_log`
  ADD PRIMARY KEY (`scan_time`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virus`
--
ALTER TABLE `virus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Deface`
--
ALTER TABLE `Deface`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `deface_config`
--
ALTER TABLE `deface_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `filescan_config`
--
ALTER TABLE `filescan_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `IPstatus`
--
ALTER TABLE `IPstatus`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2858;

--
-- AUTO_INCREMENT for table `IPstatus_config`
--
ALTER TABLE `IPstatus_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `virus`
--
ALTER TABLE `virus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
