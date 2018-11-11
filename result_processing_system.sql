-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 04:53 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result_processing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'adminsays', '$2y$10$T5K7oxeXgFAvg/Zl498Hte1IVT60ievTbxD8IEBvGDWQcYaZKtcT2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidates`
--

CREATE TABLE `tbl_candidates` (
  `id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `roll` int(16) NOT NULL,
  `choice` varchar(256) NOT NULL,
  `position` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_candidates`
--

INSERT INTO `tbl_candidates` (`id`, `name`, `email`, `roll`, `choice`, `position`) VALUES
(1, 'Jahid', 'email1@gmail.com', 123345, 'a:5:{i:0;s:4:\"cste\";i:1;s:4:\"acce\";i:2;s:3:\"ice\";i:3;s:3:\"eee\";i:4;s:20:\"software-engineering\";}', 16),
(2, 'Faisal', 'email2@gmail.com', 123347, 'a:5:{i:0;s:3:\"ice\";i:1;s:4:\"cste\";i:2;s:4:\"acce\";i:3;s:3:\"eee\";i:4;s:20:\"software-engineering\";}', 12),
(3, 'rumman', 'email3@gmail.com', 123356, 'a:5:{i:0;s:3:\"eee\";i:1;s:4:\"cste\";i:2;s:4:\"acce\";i:3;s:3:\"ice\";i:4;s:20:\"software-engineering\";}', 1),
(4, 'Kaiko', 'email4@gmail.com', 123367, 'a:5:{i:0;s:3:\"eee\";i:1;s:20:\"software-engineering\";i:2;s:4:\"acce\";i:3;s:3:\"ice\";i:4;s:4:\"cste\";}', 5),
(5, 'Shohon', 'email5@gmail.com', 123332, 'a:5:{i:0;s:3:\"eee\";i:1;s:20:\"software-engineering\";i:2;s:4:\"cste\";i:3;s:3:\"ice\";i:4;s:4:\"acce\";}', 4),
(6, 'Eshat', 'email6@gmail.com', 123380, 'a:5:{i:0;s:4:\"cste\";i:1;s:20:\"software-engineering\";i:2;s:3:\"eee\";i:3;s:3:\"ice\";i:4;s:4:\"acce\";}', 2),
(7, 'Majhar', 'email7@gmail.com', 123511, 'a:5:{i:0;s:4:\"acce\";i:1;s:4:\"cste\";i:2;s:3:\"eee\";i:3;s:20:\"software-engineering\";i:4;s:3:\"ice\";}', 7),
(8, 'Nizam', 'email8@gmail.com', 1233488, 'a:5:{i:0;s:3:\"ice\";i:1;s:4:\"cste\";i:2;s:3:\"eee\";i:3;s:20:\"software-engineering\";i:4;s:4:\"acce\";}', 9),
(9, 'Muka', 'email9@gmail.com', 1233489, 'a:5:{i:0;s:3:\"eee\";i:1;s:4:\"cste\";i:2;s:4:\"acce\";i:3;s:20:\"software-engineering\";i:4;s:3:\"ice\";}', 13),
(10, 'Kamrul', 'email10@gmail.com', 1233499, 'a:5:{i:0;s:4:\"cste\";i:1;s:3:\"eee\";i:2;s:4:\"acce\";i:3;s:20:\"software-engineering\";i:4;s:3:\"ice\";}', 20),
(11, 'Mainul', 'email11@gmail.com', 1233423, 'a:5:{i:0;s:4:\"acce\";i:1;s:3:\"eee\";i:2;s:4:\"cste\";i:3;s:20:\"software-engineering\";i:4;s:3:\"ice\";}', 18),
(12, 'Hasan', 'email12@gmail.com', 1253488, 'a:5:{i:0;s:20:\"software-engineering\";i:1;s:3:\"ice\";i:2;s:4:\"cste\";i:3;s:3:\"eee\";i:4;s:4:\"acce\";}', 15),
(13, 'Rohol', 'email13@gmail.com', 1253489, 'a:5:{i:0;s:20:\"software-engineering\";i:1;s:4:\"cste\";i:2;s:3:\"ice\";i:3;s:3:\"eee\";i:4;s:4:\"acce\";}', 11),
(14, 'Motiur', 'email14@gmail.com', 1253476, 'a:5:{i:0;s:3:\"eee\";i:1;s:4:\"cste\";i:2;s:3:\"ice\";i:3;s:20:\"software-engineering\";i:4;s:4:\"acce\";}', 19),
(15, 'Hridoy', 'email15@gmail.com', 1254488, 'a:5:{i:0;s:3:\"ice\";i:1;s:4:\"cste\";i:2;s:3:\"eee\";i:3;s:20:\"software-engineering\";i:4;s:4:\"acce\";}', 14),
(16, 'Ali', 'email16@gmail.com', 125188, 'a:5:{i:0;s:3:\"ice\";i:1;s:3:\"eee\";i:2;s:4:\"cste\";i:3;s:20:\"software-engineering\";i:4;s:4:\"acce\";}', 17),
(17, 'sarker', 'email17@gmail.com', 1153488, 'a:5:{i:0;s:4:\"cste\";i:1;s:4:\"acce\";i:2;s:3:\"ice\";i:3;s:20:\"software-engineering\";i:4;s:3:\"eee\";}', 8),
(18, 'Nur', 'email18@gmail.com', 125349, 'a:5:{i:0;s:4:\"acce\";i:1;s:4:\"cste\";i:2;s:3:\"ice\";i:3;s:20:\"software-engineering\";i:4;s:3:\"eee\";}', 3),
(19, 'Ovhijit', 'email19@gmail.com', 1253445, 'a:5:{i:0;s:3:\"ice\";i:1;s:4:\"cste\";i:2;s:4:\"acce\";i:3;s:20:\"software-engineering\";i:4;s:3:\"eee\";}', 6),
(20, 'Moshi', 'email20@gmail.com', 1253475, 'a:5:{i:0;s:3:\"eee\";i:1;s:4:\"cste\";i:2;s:4:\"acce\";i:3;s:20:\"software-engineering\";i:4;s:3:\"ice\";}', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `seats` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `name`, `slug`, `seats`) VALUES
(5, 'CSTE', 'cste', 3),
(6, 'ICE', 'ice', 3),
(7, 'ACCE', 'acce', 2),
(8, 'EEE', 'eee', 3),
(9, 'Software Engineering', 'software-engineering', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidates`
--
ALTER TABLE `tbl_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_candidates`
--
ALTER TABLE `tbl_candidates`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
