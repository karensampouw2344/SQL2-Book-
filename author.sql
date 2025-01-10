-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 08:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `idAuthor` int(11) NOT NULL,
  `AuthorName` varchar(100) NOT NULL,
  `TotalBookPublished` int(11) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`idAuthor`, `AuthorName`, `TotalBookPublished`, `DateOfBirth`) VALUES
(1, 'Morgan Housel', 3, '1984-01-01'),
(2, 'Dale Carnegie', 5, '1888-11-24'),
(3, 'James Clear', 1, '1986-06-01'),
(4, 'Benjamin Graham', 4, '1894-05-09'),
(5, 'Sun Tzu', 1, '0544-01-01'),
(6, 'Robert Greene', 6, '1959-05-14'),
(7, 'Peter Lynch', 2, '1944-01-19'),
(8, 'George S. Clason', 2, '1874-11-07'),
(9, 'Jordan B. Peterson', 2, '1962-06-12'),
(10, 'Robert T. Kiyosaki', 4, '1947-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`idAuthor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
