-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2020 at 04:59 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(9, 'tcioe.edu.np/4u.html', 'defaced', '', '2020-12-08 09:45:06'),
(11, 'google.com', 'fine', '', '2020-12-08 09:45:11'),
(12, 'meteo.dhm.gov.np/cms', 'defaced', '', '2020-12-08 09:45:22'),
(13, 'uniglobecollege.edu.np/index1.php', 'defaced', '', '2020-12-08 09:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `Deface_config`
--

CREATE TABLE `Deface_config` (
  `id` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filehash_config`
--

CREATE TABLE `filehash_config` (
  `account` varchar(200) NOT NULL,
  `scan_path` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `file_extensions` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('2020-11-10 06:57:04', 'Unchanged', 'No changes in files found.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-11-10 06:58:22', 'Altered', '/home/kailash/Desktop/college/lol.php', '89d13c30f59bf9c0796f55e5cedae63c03e92548', 'b99b195c02561e648ee416d17e1dadb365a0b1f8', '2020-11-10 06:57:42', 'Kailash'),
('2020-11-10 06:58:22', 'Altered', '/home/kailash/Desktop/college/inclusion.txt', '119d724ca2d2081324ee4dfaa24249361bc5ec6e', '2643867fef892c50d52914398351b43f16b7521d', '2020-11-10 06:58:17', 'Kailash'),
('2020-11-21 03:58:08', 'Altered', '/home/kailash/Desktop/college/inclusion.txt', '2643867fef892c50d52914398351b43f16b7521d', '23b9c492edd4b9818f6f1c8c5075324d772809e7', '2020-11-21 15:57:52', 'Kailash'),
('2020-12-07 03:45:21', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-12-07 03:45:21', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-12-07 03:45:21', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-12-07 03:45:21', 'Deleted', '/home/kailash/Desktop/college/lol.php', 'b99b195c02561e648ee416d17e1dadb365a0b1f8', 'Not Applicable', '2020-11-10 06:57:42', 'Kailash'),
('2020-12-08 10:28:22', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-12-08 10:28:22', 'Deleted', '/home/kailash/Desktop/college/28055935_1231882686943655_7498027669584834336_n.jpg', 'fbd8842d3567fe9d8247cb0385337af5502ac456', 'Not Applicable', '2020-12-04 09:35:22', 'Kailash'),
('2020-12-08 10:28:55', 'Altered', '/home/kailash/Desktop/college/test.html', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'fb1640beb74bbb6f8d7ce81e2da237e884d68ad5', '2020-12-08 10:28:49', 'Kailash'),
('2020-12-08 10:29:30', 'Deleted', '/home/kailash/Desktop/college/test.html', 'fb1640beb74bbb6f8d7ce81e2da237e884d68ad5', 'Not Applicable', '2020-12-08 10:28:49', 'Kailash'),
('2020-12-08 10:38:51', 'Added', 'FIRST SCAN', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-12-08 10:39:14', 'Altered', '/home/kailash/Desktop/college/nepal.html', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'c1a66f27fd6d7b6acc9b7ead82f69a39cdc926b6', '2020-12-08 10:39:08', 'Kailash'),
('2020-12-08 10:39:45', 'Deleted', '/home/kailash/Desktop/college/nepal.html', 'c1a66f27fd6d7b6acc9b7ead82f69a39cdc926b6', 'Not Applicable', '2020-12-08 10:39:08', 'Kailash');

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
('/home/kailash/Desktop/college/FYP proposal .docx', '62cef8d907707f16be90955598e013c55d7c5e56', '2020-07-17 19:10:06', 'Kailash'),
('/home/kailash/Desktop/college/papers/SoICT-Paper-87-XuanDauHoang.pdf', 'c515ea2e05e6d123bf699ca73f80985844608953', '2020-03-02 18:18:00', 'Kailash'),
('/home/kailash/Desktop/college/papers/WebsiteDefacementIJCSIS.pdf', '124815570022b443447417ea19d1f4d330d6544e', '2020-03-02 18:17:12', 'Kailash'),
('/home/kailash/Desktop/college/papers/electronics-08-01338.pdf', 'af54c402331998d1f0abbb7c426f3406d3cb69ce', '2020-03-02 18:15:22', 'Kailash'),
('/home/kailash/Desktop/college/papers/computers-08-00035.pdf', '33eef2962c34f5a2ef32557caa9b9a5a2970cd90', '2020-03-02 18:13:36', 'Kailash'),
('/home/kailash/Desktop/college/inclusion.txt', '23b9c492edd4b9818f6f1c8c5075324d772809e7', '2020-11-21 15:57:52', 'Kailash'),
('/home/kailash/Desktop/college/FULLTEXT01.pdf', 'bb82a633d4b84e39296fcb6c7cf214dd0f5bc5e5', '2020-12-01 08:55:43', 'Kailash');

-- --------------------------------------------------------

--
-- Table structure for table `IPstatus`
--

CREATE TABLE `IPstatus` (
  `id` smallint(6) NOT NULL,
  `ip_addr` varchar(15) DEFAULT NULL,
  `status` enum('up','down','n/a') NOT NULL DEFAULT 'n/a',
  `device_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `IPstatus`
--

INSERT INTO `IPstatus` (`id`, `ip_addr`, `status`, `device_name`, `date`) VALUES
(1, '192.168.1.1', 'up', 'Router', '2020-12-10 19:51:33'),
(2, 'Router', 'down', 'Router', '2020-12-10 19:51:34'),
(3, '192.168.1.10', 'up', 'Kailash Laptop', '2020-12-10 19:51:34'),
(4, 'Kailash Laptop', 'down', 'Kailash Laptop', '2020-12-10 19:51:34'),
(5, '192.168.1.99', 'down', 'Dummy Server', '2020-12-10 19:51:38'),
(6, 'Dummy Server', 'down', 'Dummy Server', '2020-12-10 19:51:38');

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
(1, '192.168.1.1', 'Router'),
(2, '192.168.1.10', 'Kailash Laptop'),
(3, '192.168.1.99', 'Dummy Server');

-- --------------------------------------------------------

--
-- Table structure for table `scan_log`
--

CREATE TABLE `scan_log` (
  `scan_time` char(19) NOT NULL,
  `found_changes` int(11) NOT NULL DEFAULT '0',
  `acct` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scan_log`
--

INSERT INTO `scan_log` (`scan_time`, `found_changes`, `acct`) VALUES
('2020-12-08 10:39:45', 1, 'Kailash'),
('2020-12-08 10:39:14', 1, 'Kailash'),
('2020-12-08 10:38:52', 1, 'Kailash'),
('2020-12-08 10:28:22', 2, 'Kailash'),
('2020-12-08 10:29:30', 1, 'Kailash'),
('2020-12-08 10:28:55', 1, 'Kailash'),
('2020-11-10 06:58:22', 2, 'Kailash'),
('2020-11-21 03:58:08', 1, 'Kailash'),
('2020-12-07 03:45:21', 3, 'Kailash');

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
(2, 'Google ', 'gmail123', 'gmail@gmail.com'),
(55, 'kailash', 'ca86de6bd4af8c27e0467d433e0bd3a209c342bc', 'kb@b.com'),
(56, 'Test User', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 'test@test.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Deface`
--
ALTER TABLE `Deface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Deface_config`
--
ALTER TABLE `Deface_config`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Deface`
--
ALTER TABLE `Deface`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `IPstatus`
--
ALTER TABLE `IPstatus`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `IPstatus_config`
--
ALTER TABLE `IPstatus_config`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
