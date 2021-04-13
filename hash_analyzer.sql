-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2021 at 05:09 AM
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
(1, 'http://skhdmp.gov.np/cox.html', 'defaced', 'Saptakoshi', '2021-04-13 03:05:39'),
(2, 'tuiost.edu.np', 'fine', 'CSIT', '2021-04-13 03:05:40'),
(3, 'http://www.janapremee.edu.np', 'defaced', 'Jana Premi Campus', '2021-04-13 03:05:41'),
(4, 'http://nepal.gov.np', 'defaced', 'Nepal Government', '2021-04-13 03:05:42'),
(5, 'http://skhdmp.gov.np/cox.html', 'defaced', 'Saptakoshi', '2021-04-13 03:06:39'),
(6, 'tuiost.edu.np', 'fine', 'CSIT', '2021-04-13 03:06:40'),
(7, 'http://www.janapremee.edu.np', 'defaced', 'Jana Premi Campus', '2021-04-13 03:06:42'),
(8, 'http://nepal.gov.np', 'defaced', 'Nepal Government', '2021-04-13 03:06:43'),
(9, 'http://skhdmp.gov.np/cox.html', 'defaced', 'Saptakoshi', '2021-04-13 03:07:39'),
(10, 'tuiost.edu.np', 'fine', 'CSIT', '2021-04-13 03:07:40'),
(11, 'http://www.janapremee.edu.np', 'defaced', 'Jana Premi Campus', '2021-04-13 03:07:42'),
(12, 'http://nepal.gov.np', 'defaced', 'Nepal Government', '2021-04-13 03:07:42'),
(13, 'http://skhdmp.gov.np/cox.html', 'defaced', 'Saptakoshi', '2021-04-13 03:08:39'),
(14, 'tuiost.edu.np', 'fine', 'CSIT', '2021-04-13 03:08:40'),
(15, 'http://www.janapremee.edu.np', 'defaced', 'Jana Premi Campus', '2021-04-13 03:08:41'),
(16, 'http://nepal.gov.np', 'defaced', 'Nepal Government', '2021-04-13 03:08:42');

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
(1, 'http://skhdmp.gov.np/cox.html', 'Saptakoshi', 'info@skhdmp.gov.np', '9841121212'),
(5, 'tuiost.edu.np', 'CSIT', 'info@tuiost.edu.np', 'contact'),
(6, 'http://www.janapremee.edu.np', 'Jana Premi Campus', 'info@janapremee.edu.np', 'contact'),
(7, 'http://nepal.gov.np', 'Nepal Government', 'admin@nepal.gov.np', 'contact');

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
(1, '         kailash         ', '/home/kailash/Desktop/college', 'kailashbohara0x00@gmail.com', '             ');

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
('2021-04-13 04:53:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:53:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:53:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:53:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:52:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:52:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:52:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:52:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:51:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:51:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:51:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:51:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:50:45', 'Deleted', '/home/kailash/Desktop/college/finalpresentationAMIRS (1).docx', '9297a1e5adf8f6e9d52507596e9fa28c675fc8a6', 'Not Applicable', '2021-04-13 04:40:33', '         kailash    '),
('2021-04-13 04:50:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:50:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:50:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:50:45', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:48:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:48:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:48:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:48:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:47:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:47:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:47:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:47:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:46:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:46:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:46:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:46:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:45:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:45:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:45:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:45:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:44:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:44:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:44:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:44:55', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:43:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:43:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:43:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:43:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:42:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:42:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:42:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:42:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:41:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:41:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:41:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:41:38', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:41:38', 'Altered', '/home/kailash/Desktop/college/finalpresentationAMIRS (1).docx', 'b0914f16e3e82fffeecbdf10388cdd4c9f9d6ecd', '9297a1e5adf8f6e9d52507596e9fa28c675fc8a6', '2021-04-13 04:40:33', '         kailash    '),
('2021-04-13 04:39:56', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:39:56', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:39:56', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:39:56', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:39:56', 'Altered', '/home/kailash/Desktop/college/test.txt', 'a370358113494c193d7b133fe56efc6e6f57c97c', '732358826ce1a608a3020ff0a6e681ccd1b02781', '2021-04-13 04:39:52', '         kailash    '),
('2021-04-13 04:39:56', 'Altered', '/home/kailash/Desktop/college/test.txt', 'a370358113494c193d7b133fe56efc6e6f57c97c', '732358826ce1a608a3020ff0a6e681ccd1b02781', '2021-04-13 04:39:52', '         kailash    '),
('2021-04-13 04:38:04', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:04', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:04', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:04', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:38:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:37:25', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:37:25', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:37:25', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:37:25', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:36:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:36:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:36:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:36:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:35:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:35:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:35:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:35:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:34:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:34:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:34:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:34:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:33:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:33:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:33:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:33:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:32:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:32:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:32:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:32:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:31:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:31:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:31:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:31:02', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:28:37', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:28:37', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:28:37', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:28:37', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:27:30', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:27:30', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:27:30', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:27:30', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:26:31', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:26:31', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:26:31', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:26:31', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:26:31', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    '),
('2021-04-13 04:25:09', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', '         kailash    ');

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
('/home/kailash/Desktop/college/main.js', 'e45132d40c516749d7fe1942264e92fc430b8876', '2021-02-08 17:48:59', '  kailash  '),
('/home/kailash/Desktop/college/test.txt', '732358826ce1a608a3020ff0a6e681ccd1b02781', '2021-04-13 04:39:52', '         kailash    '),
('/home/kailash/Desktop/college/Asses Monitoring and Incident Response System.pdf', '851ee9c9985011158506dc27e1d24dbe4ce1343f', '2021-02-09 18:04:12', '         kailash    '),
('/home/kailash/Desktop/college/Kailash Bohara- Resume.docx', 'e24a580f99e14005d8c7633b6bfdb133a2435d74', '2021-02-20 19:00:26', '         kailash    '),
('/home/kailash/Desktop/college/project-FInal-draft-super1-11.pdf', '267c2b5b361e9cf63ba511ab9944c27f76ccc661', '2021-01-23 15:48:17', '         kailash    '),
('/home/kailash/Desktop/college/Asses Monitoring and Incident Response System.pptx', '30f9f0dba8f225cd1a3ab9fc71f623dedcc34ee9', '2021-02-09 18:04:29', '         kailash    ');

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
(1, '192.168.10.70', 'up', 'Laptop', '2021-02-09 16:04:17'),
(2, '9.1.2.3', 'down', 'TestIP', '2021-02-09 16:04:27'),
(27, '127.0.0.1', 'down', 'Localhost', '2021-02-10 03:36:32'),
(31, '10.10.10.21', 'down', 'demo', '2021-02-10 03:38:22');

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
(1, '192.168.10.70', 'Laptop'),
(2, '9.1.2.3', 'TestIP'),
(4, '127.0.0.1', 'Localhost'),
(5, '10.10.10.21', 'demo');

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
('2021-04-13 04:53:45', 4, '         kailash    '),
('2021-04-13 04:52:45', 4, '         kailash    '),
('2021-04-13 04:51:45', 4, '         kailash    '),
('2021-04-13 04:50:45', 5, '         kailash    '),
('2021-04-13 04:48:55', 4, '         kailash    '),
('2021-04-13 04:47:55', 4, '         kailash    '),
('2021-04-13 04:46:55', 4, '         kailash    '),
('2021-04-13 04:45:55', 4, '         kailash    '),
('2021-04-13 04:44:55', 4, '         kailash    '),
('2021-04-13 04:43:38', 4, '         kailash    '),
('2021-04-13 04:42:38', 4, '         kailash    '),
('2021-04-13 04:41:38', 5, '         kailash    '),
('2021-04-13 04:39:56', 5, '         kailash    '),
('2021-04-13 04:38:04', 4, '         kailash    '),
('2021-04-13 04:38:02', 4, '         kailash    '),
('2021-04-13 04:37:25', 4, '         kailash    '),
('2021-04-13 04:36:02', 4, '         kailash    '),
('2021-04-13 04:35:02', 4, '         kailash    '),
('2021-04-13 04:34:02', 4, '         kailash    '),
('2021-04-13 04:33:02', 4, '         kailash    '),
('2021-04-13 04:32:02', 4, '         kailash    '),
('2021-04-13 04:31:02', 4, '         kailash    '),
('2021-04-13 04:28:37', 4, '         kailash    '),
('2021-04-13 04:27:30', 4, '         kailash    '),
('2021-04-13 04:26:31', 5, '         kailash    '),
('2021-04-13 04:25:09', 10, '         kailash    ');

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
(1, 'Admin', 'A6AD00AC113A19D953EFB91820D8788E2263B28A', 'test@test.com', '2021-02-08'),
(98, 'Super Admin1  ', 'nepal@123', 'test@admin.com', NULL),
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deface_config`
--
ALTER TABLE `deface_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `filescan_config`
--
ALTER TABLE `filescan_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `IPstatus`
--
ALTER TABLE `IPstatus`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `IPstatus_config`
--
ALTER TABLE `IPstatus_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
