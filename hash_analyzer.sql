-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2020 at 07:10 AM
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
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `account` varchar(200) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
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
('2020-11-21 03:58:08', 'Altered', '/home/kailash/Desktop/college/inclusion.txt', '2643867fef892c50d52914398351b43f16b7521d', '23b9c492edd4b9818f6f1c8c5075324d772809e7', '2020-11-21 15:57:52', 'Kailash');

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
('/home/kailash/Desktop/college/lol.php', 'b99b195c02561e648ee416d17e1dadb365a0b1f8', '2020-11-10 06:57:42', 'Kailash'),
('/home/kailash/Desktop/college/FYP proposal .docx', '62cef8d907707f16be90955598e013c55d7c5e56', '2020-07-17 19:10:06', 'Kailash'),
('/home/kailash/Desktop/college/papers/SoICT-Paper-87-XuanDauHoang.pdf', 'c515ea2e05e6d123bf699ca73f80985844608953', '2020-03-02 18:18:00', 'Kailash'),
('/home/kailash/Desktop/college/papers/WebsiteDefacementIJCSIS.pdf', '124815570022b443447417ea19d1f4d330d6544e', '2020-03-02 18:17:12', 'Kailash'),
('/home/kailash/Desktop/college/papers/electronics-08-01338.pdf', 'af54c402331998d1f0abbb7c426f3406d3cb69ce', '2020-03-02 18:15:22', 'Kailash'),
('/home/kailash/Desktop/college/papers/computers-08-00035.pdf', '33eef2962c34f5a2ef32557caa9b9a5a2970cd90', '2020-03-02 18:13:36', 'Kailash'),
('/home/kailash/Desktop/college/inclusion.txt', '23b9c492edd4b9818f6f1c8c5075324d772809e7', '2020-11-21 15:57:52', 'Kailash');

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
(1, '192.168.1.1', 'up', '', '2020-11-30 06:35:11'),
(2, '192.168.1.99', 'down', '', '2020-11-30 06:35:15'),
(3, '192.168.1.5', 'up', '', '2020-11-30 06:35:15'),
(4, '192.168.1.10', 'up', '', '2020-11-30 06:35:15'),
(5, '192.168.1.2', 'down', '', '2020-11-30 06:35:18'),
(6, '192.168.1.66', 'down', '', '2020-11-30 06:35:21'),
(7, '192.168.1.4', 'down', '', '2020-11-30 06:35:31'),
(8, '192.168.1.200', 'down', '', '2020-11-30 06:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `IPstatus_cfg`
--

CREATE TABLE `IPstatus_cfg` (
  `id` int(255) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  `domain_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('2020-11-08 04:01:26', 97, 'Kailash'),
('2020-11-08 04:00:32', 1, 'Kailash'),
('2020-11-08 04:00:28', 1, 'Kailash'),
('2020-11-08 03:59:26', 1, 'Kailash'),
('2020-11-08 03:59:24', 1, 'Kailash'),
('2020-11-08 03:55:03', 105, 'Kailash'),
('2020-10-31 03:17:32', 4739, 'Kailash'),
('2020-11-08 04:07:44', 1, 'Kailash'),
('2020-11-08 04:09:00', 1, 'Kailash'),
('2020-11-10 06:58:22', 2, 'Kailash'),
('2020-11-21 03:58:08', 1, 'Kailash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(2, 'Gmail  Boharaz', 'gmail123', 'gmail@gmail.com'),
(3, 'Ram ', 'ram123', 'ram@ram.com'),
(4, 'kailash Jee', 'kaka123', 'kailash@sh.com'),
(7, 'babu', 'lol123', 'babu@babu.com'),
(8, 'boom', 'boom', 'boom@room.com'),
(10, 'aaaaa', 'aaa', 'aa@bb.com'),
(11, 'oops', 'lplp', 'boo@v.no'),
(12, 'lll', 'lala', 'lll@ll.com'),
(13, 'kaka baa', 'lolo', 'baa@laa.com'),
(14, 'Nepal Bhai', 'BhaiBhai', 'nepal@nep.com'),
(15, 'Kailash Bohara', 'kailash', 'me@kailash.com'),
(16, 'kala ', 'kala', 'kaka@kaka.co'),
(17, 'Sachin', '1234', 'test@test.com');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `IPstatus_cfg`
--
ALTER TABLE `IPstatus_cfg`
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
-- AUTO_INCREMENT for table `IPstatus`
--
ALTER TABLE `IPstatus`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `IPstatus_cfg`
--
ALTER TABLE `IPstatus_cfg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
