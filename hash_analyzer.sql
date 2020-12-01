-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2020 at 03:37 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

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
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:02:49', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-17 11:04:25', 'Altered', '/root/Desktop/college/lol.php', 'f62e5bcda4fae4f82370da0c6f20697b8f8447ef', '93ca2cc21f9266c7f6a5044d2039079938c83c29', '2020-07-17 23:04:16', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:39', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Added', 'FIRST SCAN (file listings inhibited)', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 10:41:40', 'Deleted', '/root/Desktop/college/papers', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Not Applicable', '2020-03-25 22:04:52', 'Kailash'),
('2020-07-22 10:45:13', 'Unchanged', 'File structure is unchanged since last scan, script execution time 0.12383 seconds.<br>The baseline contains 61 files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-22 11:17:21', 'Unchanged', 'File structure is unchanged since last scan, script execution time 0.12376 seconds.<br>The baseline contains 61 files.\r\n', 'Not Applicable', 'Not Applicable', 'Not Applicable', 'Kailash'),
('2020-07-24 09:56:08', 'Altered', '/root/Desktop/cloud', '9530bcbb009e13a4232fd2c12ddd84f761ccbb87', '216db899754b0516a75c13d890af99cf1f52a326', '2020-07-24 09:55:31', 'Kailash'),
('2020-07-24 09:56:08', 'Deleted', '/root/Desktop/net2ftp.html', 'cbfe550b2e3fb96c2cce9eec72e179d660e38b36', 'Not Applicable', '2020-07-06 23:18:25', 'Kailash'),
('2020-07-24 09:56:08', 'Deleted', '/root/Desktop/xss.xml', '6bc033fb335d3a11f09097b885ebec2d2ffa682e', 'Not Applicable', '2020-07-19 09:21:40', 'Kailash'),
('2020-07-24 09:59:17', 'Altered', '/root/Desktop/SmartCell/smartcell', 'dd8cc73e80251c3c0a50e0f7a48cf9774b8f1929', '52ca60e210fa1f1c76b260486c6b1d6bf2baf2c2', '2020-07-24 09:57:53', 'Kailash'),
('2020-07-24 09:59:17', 'Altered', '/root/Desktop/test.csv', '9c935da7fb1e27b8d60505b636612b8b23f2c115', 'c3c7d1d3e480e827b706b677d7a3b15d4ce3ac79', '2020-07-24 09:58:26', 'Kailash'),
('2020-07-24 09:59:17', 'Altered', '/root/Desktop/1.php', '1e56f9851704034e9ef41d0c1e197c792db5a955', '910d30953a4c0468535b2e5c6fdd06c821f5117f', '2020-07-24 09:57:40', 'Kailash'),
('2020-07-24 09:59:42', 'Deleted', '/root/Desktop/Secure Coding For Web Applications.pptx', '', 'Not Applicable', '2019-11-05 21:22:35', 'Kailash');

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
('/root/Desktop/college/papers/computers-08-00035.pdf', '33eef2962c34f5a2ef32557caa9b9a5a2970cd90', '2020-03-02 22:58:36', 'Kailash'),
('/root/Desktop/college/papers/electronics-08-01338.pdf', 'af54c402331998d1f0abbb7c426f3406d3cb69ce', '2020-03-02 23:00:23', 'Kailash'),
('/root/Desktop/college/papers/WebsiteDefacementIJCSIS.pdf', '124815570022b443447417ea19d1f4d330d6544e', '2020-03-02 23:02:12', 'Kailash'),
('/root/Desktop/college/papers/SoICT-Paper-87-XuanDauHoang.pdf', 'c515ea2e05e6d123bf699ca73f80985844608953', '2020-03-02 23:03:00', 'Kailash'),
('/root/Desktop/college/FYP proposal .docx', '62cef8d907707f16be90955598e013c55d7c5e56', '2020-07-17 22:55:07', 'Kailash'),
('/root/Desktop/college/lol.php', '93ca2cc21f9266c7f6a5044d2039079938c83c29', '2020-07-17 23:04:16', 'Kailash'),
('/root/Desktop/college/Presentation-for-FYP.pptx', 'b0317cbe2defd9c28e2524554443a5b086e9cd29', '2020-03-10 08:21:27', 'Kailash'),
('/root/Desktop/curl2.php', 'd468479b4ad31413d63e8e3f4f2abbeb3c955fed', '2020-04-18 16:44:28', 'Kailash'),
('/root/Desktop/Harvard/Screenshot from 2020-05-10 00-12-35.png', '55f638a126d2b5dc49f3a67a5d18b78b52ec49fe', '2020-05-10 00:12:35', 'Kailash'),
('/root/Desktop/Harvard/Screenshot from 2020-05-10 00-29-22.png', '6c85c752a1ca77f282ec8e0f90021e82d210b632', '2020-05-10 00:29:38', 'Kailash'),
('/root/Desktop/Harvard/Screenshot from 2020-05-10 00-16-12.png', '443bcb9324b456dab411c36a23ef5bdc1460ae36', '2020-05-10 00:16:18', 'Kailash'),
('/root/Desktop/Harvard/Screenshot from 2020-05-10 00-29-14.png', '9665e932583acbdcdc867e4d9c7d0ce8df448c3c', '2020-05-10 00:29:20', 'Kailash'),
('/root/Desktop/SmartCell/Screenshot from 2020-05-23 17-18-11.png', 'e37c661cb923f56a7f2f502c017420951910a0f9', '2020-05-23 17:18:12', 'Kailash'),
('/root/Desktop/SmartCell/smart_cell (1).mp4', '1ce8e5e35a9ae56a68936f18a11ec4cd9fb18030', '2020-05-24 20:29:37', 'Kailash'),
('/root/Desktop/SmartCell/smartcell', '52ca60e210fa1f1c76b260486c6b1d6bf2baf2c2', '2020-07-24 09:57:53', 'Kailash'),
('/root/Desktop/SmartCell/Screenshot from 2020-05-23 17-18-05.png', '8f4285f062354caa1de83e5c62e534e794621357', '2020-05-23 17:18:05', 'Kailash'),
('/root/Desktop/SmartCell/account_takeover.mp4', '93df6fa113c4a7f559a33a6775cc408f39e745ff', '2020-05-25 09:34:01', 'Kailash'),
('/root/Desktop/.~SC status.docx', '8cdcc57f135130aa960bf90251e01c4242d613db', '2020-07-07 12:15:05', 'Kailash'),
('/root/Desktop/test.csv', 'c3c7d1d3e480e827b706b677d7a3b15d4ce3ac79', '2020-07-24 09:58:26', 'Kailash'),
('/root/Desktop/badoo.html', '87f092c2d3ac36d84ec54e4b2183766d3de9ab4f', '2019-12-11 23:16:39', 'Kailash'),
('/root/Desktop/cloud', '216db899754b0516a75c13d890af99cf1f52a326', '2020-07-24 09:55:31', 'Kailash'),
('/root/Desktop/khali/udemy/subdomain.py', '6ecc79badceacd3cff093840df6541e46885c957', '2020-04-18 14:19:10', 'Kailash'),
('/root/Desktop/khali/udemy/portscan.py', 'd6f1d774517f1eb9fdc8c9c8d37d8585cd9a68f6', '2020-04-18 13:34:17', 'Kailash'),
('/root/Desktop/khali/udemy/test.c', '5f30bb11551afb96fe5c39aaded8cb58fcefedc1', '2020-04-20 22:39:03', 'Kailash'),
('/root/Desktop/khali/udemy/inforecon.py', '39aa5be679858905d82857c1b03543e70330d27a', '2020-04-04 22:57:44', 'Kailash'),
('/root/Desktop/khali/udemy/a.out', '621ec7bd4bbd2261bc4d0cb1934a30ccadb35ef9', '2020-04-20 22:39:08', 'Kailash'),
('/root/Desktop/khali/udemy/m5d_decode.py', '1d33f69ddcae558361a5acca47245e3aeb14d3b8', '2020-04-08 00:45:58', 'Kailash'),
('/root/Desktop/khali/udemy/test.py', 'd76c2b8fa68dd6b058ca3ace0b02e5177150d666', '2020-04-20 22:35:49', 'Kailash'),
('/root/Desktop/khali/scanner.py', 'b464b562b734de5b563fdded5a1471dc73507437', '2020-04-04 23:22:02', 'Kailash'),
('/root/Desktop/khali/test.sh', 'c4de2952c7e3ffc27dab49b55ec66529b3b352db', '2020-04-01 23:23:54', 'Kailash'),
('/root/Desktop/shell.php', '802bebbc697754e74e9f430eaae27fb08db84ff0', '2020-07-13 16:52:23', 'Kailash'),
('/root/Desktop/UN_SQL', 'e654046302ca17a22beaf60d4039eda9c40250b0', '2020-05-05 17:47:00', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-08 18-19-05.png', '2ec648a43a98a826d283e4b61b272b405fa5e814', '2020-04-08 18:19:05', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-24 21-53-54.png', '8a3b23fdcd2e9ccb6c3c11c58aad912766db1446', '2020-04-24 21:54:01', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-08 16-54-33.png', '39773b745911702af73248506b6dbc8bd80156c4', '2020-04-08 16:54:40', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-24 22-08-58.png', 'b449743122aa30a580c6bf539c29e2f5352a9888', '2020-04-24 22:09:03', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-09 13-37-32.png', '97ad4894407b84a36d47aeb593725f831f615103', '2020-04-09 13:37:32', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-24 21-50-47.png', 'b060bdf610e66e3775ba9fc867ac0276dd0b49af', '2020-04-24 21:50:56', 'Kailash'),
('/root/Desktop/police/Screenshot from 2020-04-08 16-53-15.png', 'e23f5dcc5fd6b9bf5b018edbc3d75583df8c18df', '2020-04-08 16:53:15', 'Kailash'),
('/root/Desktop/cdsc/CDS and Clearing Limited - Web Application VAPT Draft Report (EW Verified).pdf', '5718f3fb092e8d9e9d9abb3930aa188ceada808c', '2020-06-30 14:43:44', 'Kailash'),
('/root/Desktop/cdsc/privilege escalation.webm', 'a33c104f9a9bc3ebba2e394141b7795f7aa59b77', '2020-07-01 10:35:07', 'Kailash'),
('/root/Desktop/cdsc/captcha.mp4', '614cfb9acc4514553a52b018413e723292e59eb5', '2020-07-01 09:24:18', 'Kailash'),
('/root/Desktop/cdsc/rate-limit', 'e48e34bdeca51926e247ae4ba11e2440bffffe96', '2020-07-01 11:17:50', 'Kailash'),
('/root/Desktop/EZVYgucWAAEUYCV.jpeg', '09206ea0ed17cf4c3cdc49b6f576bc6a8423bbcc', '2020-05-31 15:38:22', 'Kailash'),
('/root/Desktop/OSINT/esewa .mp4', '60cc95f51243fcfa5f8b05d10a8a350cde68c339', '2020-04-22 22:17:27', 'Kailash'),
('/root/Desktop/Figure_1_ML_Web_Defacement.jpg', '06736fb5ca71d3608e4bb78904c7dd709e76e565', '2020-03-16 22:14:17', 'Kailash'),
('/root/Desktop/vianet XSS', '1db9cb1fa0a637effb3a1f1d3bae930aed335d1f', '2020-07-05 23:11:43', 'Kailash'),
('/root/Desktop/add_usr_cdsc.html', 'bf682fb18b69bd81b3fb95e9c3a702e69bb6a7e8', '2020-06-21 11:40:32', 'Kailash'),
('/root/Desktop/lol/decode.sh', '0101f7bf9eaefe45a1c177f74380d87d0798fc4a', '2020-06-27 21:55:55', 'Kailash'),
('/root/Desktop/lol/bash.sh', '1274e58769b18171a02a44244a2cc88b2a390300', '2020-06-27 21:46:30', 'Kailash'),
('/root/Desktop/test.py', '0236338ffc57f3763780087029892626906ae14c', '2020-03-30 23:45:04', 'Kailash'),
('/root/Desktop/netbio.py', 'f4fdd73eb1a0734fa536fa821131844be70d0370', '2020-05-01 22:17:34', 'Kailash'),
('/root/Desktop/Summary of Findings.docx', 'cd00b8126ddde49326fd9db82543615c3679e628', '2020-07-16 10:38:48', 'Kailash'),
('/root/Desktop/CDSC status.docx', '7a987e9fa2f70fa5d4ae07287bb1a82f9b9a47aa', '2020-07-07 12:15:05', 'Kailash'),
('/root/Desktop/curl2.html', '9695f929441b6df3ff307c0ff06bea5c174655d7', '2020-04-18 16:43:53', 'Kailash'),
('/root/Desktop/csrf_to_self_xss.html', 'bf6f90e05d380e383f9f680e2ad493d5d642f83d', '2020-06-30 22:14:39', 'Kailash'),
('/root/Desktop/WS-Browser-2019.pdf', '58556b22ffb00c8fd42fa367b820d6032e1671b8', '2019-08-30 10:30:34', 'Kailash'),
('/root/Desktop/1.php', '910d30953a4c0468535b2e5c6fdd06c821f5117f', '2020-07-24 09:57:40', 'Kailash');

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
('2020-07-24 09:59:42', 1, 'Kailash'),
('2020-07-24 09:59:17', 3, 'Kailash'),
('2020-07-24 09:56:08', 3, 'Kailash'),
('2020-07-22 10:41:40', 55, 'Kailash'),
('2020-07-17 11:04:25', 1, 'Kailash'),
('2020-07-17 11:02:49', 8, 'Kailash');

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
(3, 'Ram Bhagwan', 'ram123', 'ram@ram.com'),
(4, 'kailash Jee', 'kaka123', 'kailash@sh.com'),
(5, 'Dambar Bomb', 'Dammarya', 'dam@bam.com'),
(6, 'Hello sir', 'sir123', 'hello@sir.com'),
(7, 'babu', 'lol123', 'babu@raja.com'),
(8, 'boom', 'boom', 'boom@room.com'),
(10, 'aaaaa', 'aaa', 'aa@bb.com'),
(11, 'oops', 'lplp', 'boo@v.no'),
(12, 'lll', 'lala', 'lll@ll.com'),
(13, 'kaka baa', 'lolo', 'baa@laa.com'),
(14, 'Nepal Bhai', 'BhaiBhai', 'nepal@nep.com'),
(15, 'Kailash Bohara', 'kailash', 'me@kailash.com'),
(16, 'kala ', 'kala', 'kaka@kaka.co');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_scan_log`
--
ALTER TABLE `file_scan_log`
  ADD PRIMARY KEY (`file_path`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
