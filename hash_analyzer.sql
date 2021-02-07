-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2021 at 05:01 PM
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
(2, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus', '2020-12-08 08:29:29'),
(4, 'google.com', 'fine', 'Google', '2020-12-08 08:29:34'),
(5, 'meteo.dhm.gov.np/cms', 'defaced', 'Dept. of Metrology', '2020-12-08 08:29:36'),
(7, 'google.com', 'fine', 'Google', '2020-12-08 08:31:44'),
(8, 'meteo.dhm.gov.np/cms', 'defaced', 'Dept. of Metrology', '2020-12-08 08:31:50'),
(9, 'tcioe.edu.np/4u.html', 'defaced', 'Thapathali Campus ', '2020-12-08 09:45:06'),
(14, 'eminenceways.com', 'fine', 'office', '2021-01-08 05:34:21'),
(15, 'office', 'Something went wrong.', 'office', '2021-01-08 05:34:21'),
(18, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:33:45'),
(19, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:33:45'),
(20, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:33:45'),
(21, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:33:45'),
(22, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:33:49'),
(23, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:33:49'),
(24, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:49'),
(25, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:49'),
(26, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:33:49'),
(27, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:33:49'),
(28, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:49'),
(29, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:49'),
(30, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:33:54'),
(31, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:33:54'),
(32, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:33:55'),
(33, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:33:55'),
(34, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:33:57'),
(35, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:33:57'),
(36, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:57'),
(37, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:57'),
(38, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:33:58'),
(39, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:33:58'),
(40, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:58'),
(41, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:33:58'),
(42, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:34:02'),
(43, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:34:02'),
(44, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:34:03'),
(45, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:34:03'),
(46, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:34:05'),
(47, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:34:05'),
(48, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:05'),
(49, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:05'),
(50, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:34:06'),
(51, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:34:06'),
(52, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:06'),
(53, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:06'),
(54, 'test.com', 'fine', 'Dummuy Site', '2021-01-26 11:34:10'),
(55, 'Dummuy Site', 'Something went wrong.', 'Dummuy Site', '2021-01-26 11:34:10'),
(56, 'tuiost.edu.np', 'fine', 'CSIT website', '2021-01-26 11:34:13'),
(57, 'CSIT website', 'Something went wrong.', 'CSIT website', '2021-01-26 11:34:13'),
(58, '', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:13'),
(59, '                                                        Google ', 'Something went wrong.', '                                                        Google ', '2021-01-26 11:34:13'),
(60, 'naya.com', 'fine', '', '2021-01-31 18:32:16'),
(61, 'naya site', 'Something went wrong.', '', '2021-01-31 18:32:16'),
(62, 'naya.com', 'fine', 'naya site', '2021-01-31 18:33:47'),
(63, 'naya site', 'Something went wrong.', 'naya site', '2021-01-31 18:33:47');

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
(4, 'naya.com', 'naya site', 'naya ho', 'contact'),
(5, '                                                        google.com ', '                                                        lolo ', '                                                        test@rest.com ', '                                               asas                                                                 Edit                                                    '),
(6, 'kalija.com', 'Kalija', 'kalij@rest.com', 'contact'),
(7, 'goli.com', 'goliz', 'goliz@goliz.com', 'contact'),
(8, 'http://google.com', 'lolollolasas', 'test@test.com', 'contact'),
(9, 'lol.com', 'dfgh jhgf', 'test@test.com', 'contact'),
(10, 'papa.co', 'papa papi', 'rato@tato', 'contact'),
(11, 'lolu.com', 'golu lolu', 'test@golu', 'contact');

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
(1, ' kailash  1', ' /home/Desktop/College/   ', 'kailashbohara0x00@gmail.com', '     *     ');

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
('2021-01-31 04:56:49', 'Deleted', '/home/kailash/Desktop/college/papers/SoICT-Paper-87-XuanDauHoang.pdf', 'c515ea2e05e6d123bf699ca73f80985844608953', 'Not Applicable', '2020-03-02 18:18:00', 'Kailash'),
('2021-01-31 04:56:49', 'Altered', '/home/kailash/Desktop/college/index.html', '64d1f4138f8706a5a3bb5dc3055663c55722c365', 'd6f676b7d5925a7e7a0fd504b3a9a78786c9ec9d', '2021-01-31 16:56:39', 'Kailash'),
('2021-01-31 04:56:48', 'Altered', '/home/kailash/Desktop/college/papers', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2021-01-31 16:56:18', 'Kailash'),
('2021-01-31 04:55:58', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-31 04:55:58', 'Altered', '/home/kailash/Desktop/college/FYP proposal .docx', '62cef8d907707f16be90955598e013c55d7c5e56', 'a2c113207c102942ac85f0ef9e10e57752c7366c', '2021-01-31 16:55:11', 'Kailash'),
('2021-01-31 04:53:55', 'Altered', '/home/kailash/Desktop/college/inclusion.txt', '23b9c492edd4b9818f6f1c8c5075324d772809e7', 'a074e12c2226e8cc79c2cd3838a03c9fb16dab3b', '2021-01-28 18:14:25', 'Kailash'),
('2021-01-26 12:37:57', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:57', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:56', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:56', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:56', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:56', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2021-01-26 12:37:56', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash');

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
('/home/kailash/Desktop/college/Presentation-for-FYP.pptx', 'b0317cbe2defd9c28e2524554443a5b086e9cd29', '2020-03-10 03:36:26', 'Kailash'),
('/home/kailash/Desktop/college/FYP proposal .docx', 'a2c113207c102942ac85f0ef9e10e57752c7366c', '2021-01-31 16:55:11', 'Kailash'),
('/home/kailash/Desktop/college/papers/WebsiteDefacementIJCSIS.pdf', '124815570022b443447417ea19d1f4d330d6544e', '2020-03-02 18:17:12', 'Kailash'),
('/home/kailash/Desktop/college/papers/electronics-08-01338.pdf', 'af54c402331998d1f0abbb7c426f3406d3cb69ce', '2020-03-02 18:15:22', 'Kailash'),
('/home/kailash/Desktop/college/papers/computers-08-00035.pdf', '33eef2962c34f5a2ef32557caa9b9a5a2970cd90', '2020-03-02 18:13:36', 'Kailash'),
('/home/kailash/Desktop/college/inclusion.txt', 'a074e12c2226e8cc79c2cd3838a03c9fb16dab3b', '2021-01-28 18:14:25', 'Kailash'),
('/home/kailash/Desktop/college/FULLTEXT01.pdf', 'bb82a633d4b84e39296fcb6c7cf214dd0f5bc5e5', '2020-12-01 08:55:43', 'Kailash'),
('/home/kailash/Desktop/college/papers', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2021-01-31 16:56:18', 'Kailash'),
('/home/kailash/Desktop/college/index.html', 'd6f676b7d5925a7e7a0fd504b3a9a78786c9ec9d', '2021-01-31 16:56:39', 'Kailash');

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
(1, '192.168.1.1', 'up', 'Router', '2020-12-10 19:51:33'),
(2, 'Router', 'down', 'Router', '2020-12-10 19:51:34'),
(3, '192.168.1.10', 'up', 'Kailash Laptop', '2020-12-10 19:51:34'),
(13577, '127.0.0.1', 'up', 'Localhost', '2021-01-24 04:39:03'),
(13578, '165.22.215.101', 'up', 'TU IOST website', '2021-01-24 04:39:03'),
(13579, '98989899898', 'down', '98989899898', '2021-01-24 07:27:56'),
(13597, 'TU IOST website', 'down', 'TU IOST website', '2021-01-24 07:40:39'),
(13614, '10.10.1.10', 'down', 'test', '2021-01-25 06:52:24'),
(13615, 'test', 'down', 'test', '2021-01-25 06:52:24'),
(13628, '1', 'down', 'HfjNUlYZ', '2021-01-26 11:40:44'),
(13629, 'HfjNUlYZ', 'down', 'HfjNUlYZ', '2021-01-26 11:40:45'),
(13634, '@@aA7E5', 'down', '@@aA7E5', '2021-01-26 11:40:55'),
(13636, 'JyI=', 'down', 'JyI=', '2021-01-26 11:41:00'),
(13637, '@@iG4Su', 'down', 'HfjNUlYZ', '2021-01-26 11:41:00'),
(13643, 'UjhHbjZlNng=', 'down', 'UjhHbjZlNng=', '2021-01-26 11:41:05'),
(13648, 'Array', 'down', 'Array', '2021-01-26 11:41:11'),
(13665, 'xJvAbIm9', 'down', 'xJvAbIm9', '2021-01-26 11:41:21'),
(13666, '3aYtQGLg', 'down', 'HfjNUlYZ', '2021-01-26 11:41:21'),
(13686, '../HfjNUlYZ', 'down', '../HfjNUlYZ', '2021-01-26 11:41:27'),
(13734, 'bxss.me', 'down', 'bxss.me', '2021-01-26 11:41:39'),
(13807, ')', 'up', ')', '2021-01-26 11:41:47'),
(13808, '!(()&&!|*|*|', 'up', '!(()&&!|*|*|', '2021-01-26 11:41:47'),
(13819, 'HfjNUlYZ9750960', 'down', 'HfjNUlYZ9750960', '2021-01-26 11:41:48'),
(13820, '{{49094*49481}}', 'down', '{{49094*49481}}', '2021-01-26 11:41:48'),
(13824, '{{49832*49502}}', 'down', 'HfjNUlYZ', '2021-01-26 11:41:48'),
(13828, '/xfs.bxss.me', 'down', '/xfs.bxss.me', '2021-01-26 11:41:48'),
(13834, 'code.php', 'down', 'code.php', '2021-01-26 11:41:48'),
(13835, 'code.php\0', 'up', 'code.php\0', '2021-01-26 11:41:48'),
(13836, 'code.php/.', 'down', 'code.php/.', '2021-01-26 11:41:48'),
(13845, 'FQkDfj0U', 'down', 'FQkDfj0U', '2021-01-26 11:41:48'),
(14030, 'SUBwSFkx', 'down', 'HfjNUlYZ', '2021-01-26 11:41:59'),
(15917, '127.0.0.2', 'up', 'Localhost', '2021-01-26 19:05:26'),
(15918, 'Localhost', 'up', 'Localhost', '2021-01-26 19:05:26'),
(15919, '1.1.1.1', 'up', 'dork', '2021-01-26 19:05:26'),
(15920, 'dork', 'down', 'dork', '2021-01-26 19:05:26'),
(15921, '2.3.3.3.', 'down', 'naya', '2021-01-26 19:05:26'),
(15922, 'naya', 'down', 'naya', '2021-01-26 19:05:26'),
(15923, 'a.com', 'down', 'aa', '2021-01-26 19:05:27'),
(15924, 'aa', 'down', 'aa', '2021-01-26 19:05:27'),
(16451, '10.10.10.1', 'down', 'chiya pasal', '2021-02-01 03:11:17'),
(16452, 'chiya pasal', 'down', 'chiya pasal', '2021-02-01 03:11:17'),
(16453, '192168.111.2', 'down', 'ewq', '2021-02-01 03:11:17'),
(16454, 'ewq', 'down', 'ewq', '2021-02-01 03:11:17'),
(16583, '192312', 'down', 'haha', '2021-02-01 10:34:51'),
(16584, 'haha', 'down', 'haha', '2021-02-01 10:34:51'),
(16585, '192456', 'down', 'haha2', '2021-02-01 10:35:01'),
(16586, 'haha2', 'down', 'haha2', '2021-02-01 10:35:01'),
(16587, '19266555', 'down', 'yest', '2021-02-01 10:35:11'),
(16588, 'yest', 'down', 'yest', '2021-02-01 10:35:11'),
(17277, '192.168.1.73', 'up', 'Kalilinux', '2021-02-02 16:06:39'),
(17278, 'Kalilinux', 'down', 'Kalilinux', '2021-02-02 16:06:39'),
(17303, '202.20.20.20', 'down', 'demo', '2021-02-02 16:45:18'),
(17304, 'demo', 'down', 'demo', '2021-02-02 16:45:18'),
(17305, '10.10.1.1', 'down', 'teststs', '2021-02-02 16:45:28'),
(17306, 'teststs', 'down', 'teststs', '2021-02-02 16:45:28');

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
(172, '10.10.1.1', 'teststs');

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
('2021-01-31 04:56:49', 3, 'Kailash'),
('2021-01-31 04:55:58', 2, 'Kailash'),
('2021-01-31 04:53:55', 1, 'Kailash'),
('2021-01-26 12:37:56', 1, 'Kailash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(1, 'Kailash', 'A6AD00AC113A19D953EFB91820D8788E2263B28A', 'test@test.com'),
(98, '  Super Admin1  ', 'nepal@123', 'test@admin.com'),
(99, ' Kailash Bohara', '3375bc0b4445a1e2c49c5925e5b943c2c71bcdbd', 'kailash@me.com'),
(100, 'demo user', '7db4575d7eb43af49df637b3480d4256649b8cdb', 'gokul@gokul'),
(101, ' new user1', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'new@mew.com');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `deface_config`
--
ALTER TABLE `deface_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `filescan_config`
--
ALTER TABLE `filescan_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `IPstatus`
--
ALTER TABLE `IPstatus`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17939;

--
-- AUTO_INCREMENT for table `IPstatus_config`
--
ALTER TABLE `IPstatus_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `virus`
--
ALTER TABLE `virus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
