-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2016 at 06:05 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `pp`
--

CREATE TABLE IF NOT EXISTS `pp` (
  `id` int(3) NOT NULL,
  `uid` int(3) NOT NULL,
  `pp` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pp`
--

INSERT INTO `pp` (`id`, `uid`, `pp`) VALUES
(1, 1, '000000'),
(2, 2, '000000'),
(3, 3, '000000'),
(4, 4, '000000');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `user_type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Emeka', 'eee@yahoo.com', '$2y$13$TmubUhI.GG.DT/6KNZoDgOalqTCmgUh5Kxbofn4iPaxT/eDNwcT6C', 1, '2016-05-17 12:15:58', '2016-05-17 13:15:57'),
(2, 'Ahamba Godson', 'ahamba@yahoo.com', '$2y$13$IGczlQf3Hz3Xslh8GaJS/OH8cALR27.UFbH9B66lRfWTogVKpjuFS', 0, '2016-06-03 13:41:35', '2016-05-18 15:39:02'),
(3, 'Godson Ahamba', 'godson@yahoo.com', '$2y$13$HqBPrh3H3QBClCGMYDxra.BEFlEbsqfLjhuo6660pueKtM93Jh6DW', 1, '2016-05-20 09:38:44', '2016-05-20 10:38:43'),
(4, 'Ahhhhhh', 'ooo@yahoo.com', '$2y$13$av8IQsiT8M87smvKL3aU/e0JAlTiilUgESe6N.wfOnjD7DzYNn40S', 1, '2016-05-20 10:39:05', '2016-05-20 11:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `background_color` varchar(20) NOT NULL,
  `text_color` varchar(20) NOT NULL,
  `font_size` int(3) NOT NULL,
  `menu_embedded` int(1) NOT NULL,
  `show_images` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `background_color`, `text_color`, `font_size`, `menu_embedded`, `show_images`, `created_at`, `updated_at`) VALUES
(1, 1, '#000000', '#ffffff', 18, 1, 1, '2016-06-01 16:31:04', '2016-06-01 16:31:04'),
(2, 2, '#66dd66', '#000000', 16, 1, 1, '2016-05-20 10:14:04', '2016-05-20 10:14:04'),
(3, 4, '#0000F0', '#ffff00', 14, 0, 1, '2016-05-25 14:43:13', '2016-05-20 11:43:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pp`
--
ALTER TABLE `pp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pp`
--
ALTER TABLE `pp`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
