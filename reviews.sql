-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 03:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modified_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('accepted','rejected') NOT NULL DEFAULT 'rejected'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `message`, `image_path`, `date_added`, `modified_by_admin`, `status`) VALUES
(4, 'Zhassulan', 'aaa@gmail.com', 'sadasd', '', '2023-08-06 11:16:18', 1, 'rejected'),
(5, 'Жанель', 'jasulani46@gmail.com', 'scssad', '', '2023-08-06 12:10:32', 1, 'rejected'),
(6, 'Zhassulan', 'zhasik@gmail.com', 'zcsfs', '', '2023-08-06 12:27:53', 0, 'rejected'),
(7, 'Zhassulan', 'sultanwebmobile@gmail.com', 'cbcb', '', '2023-08-06 12:28:04', 1, 'accepted'),
(10, 'milk', '111e.i.n.111@gmail.com', 'cdc', '', '2023-08-06 12:49:05', 0, 'rejected'),
(11, 'Zhassulan', 'zhassulanissayev@gmail.com', 'dcsdc', 'img/photo1689242018.jpeg', '2023-08-06 12:49:21', 1, 'accepted'),
(12, 'Жанель', 'zhassulanissayev@gmail.com', 'ячсячсяч', 'img/Frame 10.png', '2023-08-06 12:52:38', 0, 'rejected'),
(13, 'Zhassulan', 'zhassulanissayev@gmail.com', 'assaas', 'img/photo1688466706.jpeg', '2023-08-06 12:58:55', 0, 'rejected'),
(14, 'Zhassulan', 'zhassulanissayev@gmail.com', 'assaas', 'img/photo1688466706.jpeg', '2023-08-06 12:58:59', 1, 'accepted'),
(15, 'Zhassulan', 'zhassulanissayev@gmail.com', 'asdasd', 'img/photo1689242018.jpeg', '2023-08-06 13:00:57', 0, 'rejected'),
(16, 'milk', 'asd@gmail.com', 'asdas', 'img/16881.jpg', '2023-08-06 13:02:14', 1, 'accepted'),
(17, 'Drinks', 'aaa@gmail.com', 'asdsa', '', '2023-08-06 13:11:46', 0, 'rejected'),
(18, 'Confectionery', 'asdf@gmail.com', 'asdasd', 'img/Frame 11.png', '2023-08-06 13:11:58', 0, 'rejected'),
(19, 'Zhassulan', '111e.i.n.111@gmail.com', 'asdas', 'img/photo1688733985.jpeg', '2023-08-06 13:12:47', 0, 'rejected'),
(20, 'Confectionery', 'aaa@gmail.com', 'asas', 'img/Frame 6.png', '2023-08-06 13:15:53', 0, 'rejected'),
(21, 'Confectionery', 'jasulani46@gmail.com', 'ычфч', 'img/photo1689242046.jpeg', '2023-08-06 13:17:46', 0, 'rejected'),
(22, 'Confectionery', '111e.i.n.111@gmail.com', 'asdasd', 'img/Frame 7.png', '2023-08-06 13:18:45', 0, 'rejected'),
(23, 'Drinks', '111e.i.n.111@gmail.com', 'dfvdv', 'img/Frame 9.png', '2023-08-06 13:28:06', 1, 'rejected'),
(24, 'Xponend', 'jasulani46@gmail.com', ',m m,', '', '2023-08-06 13:56:30', 1, 'rejected'),
(25, 'Xponend', 'jasulani46@gmail.com', ',m m, ', '', '2023-08-06 13:56:30', 1, 'accepted'),
(26, 'Drinks', '111e.i.n.111@gmail.com', '1', '', '2023-08-06 14:03:25', 1, 'accepted'),
(27, 'Drinks', '111e.i.n.111@gmail.com', 'xc zxc', '', '2023-08-06 14:03:25', 0, 'rejected'),
(28, 'Confectionery', '111e.i.n.111@gmail.com', 'фыфв', '', '2023-08-06 14:44:30', 0, 'accepted'),
(29, 'milk', 'zhasik@gmail.com', 'фвыфв', '', '2023-08-06 15:11:41', 0, 'rejected');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
