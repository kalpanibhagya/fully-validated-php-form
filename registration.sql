-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2017 at 08:26 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `about` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `address`, `country`, `zip`, `email`, `sex`, `language`, `about`) VALUES
('Kalpani', 'YzQ4ZWNlMzJlZDM5MTNkYjZjODg4ODYxNzdhYTc1OWY=', 'Kalpani Ranasinghe', 'Galigamuwa, Kegalle', 'LK', '71232', 'd@gmail.com', 'Female', 'English', 'Student'),
('Lee Chung', 'MThhMDVjMTllYWUzMDg4MTMyODIxYWJmMWU1MWVlZGU=', 'Lee Chung', 'Beijing', 'CN', '34142', 'lee@gmail.com', 'Male', 'Non-English', 'Teacher'),
('Sadeep', 'OTAzNTc2MDVkZmU1ZjNmM2MwYTc2YzEzNjYyOTcyYzM=', 'Sadeep Rathnayake', 'Ganemulla,Gampaha', 'LK', '73231', 's@gmail.com', 'Male', 'English', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
