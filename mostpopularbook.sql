-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 02:09 PM
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

CREATE TABLE MostPopularBook 
SELECT
b.book_id,
b.title,
a.author_id
a.name,
b.times_borrowed
FROM book b
JOIN author a ON b.author_id = a.author_id
WHERE b.times_borrowed > 10
AND a.name = 'Cut Medyah';


-- --------------------------------------------------------

--
-- Table structure for table `mostpopularbook`
--

CREATE TABLE `mostpopularbook` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `times_borrowed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mostpopularbook`
--

INSERT INTO `mostpopularbook` (`book_id`, `title`, `author_id`, `name`, `times_borrowed`) VALUES
(1, 'Wuthering Heights', 1, 'Emily Brontë', 25),
(2, 'The Lord of the Rings', 2, 'J.R.R. Tolkien', 30),
(3, 'The da Vinci Code', 3, 'Dan Brown', 18),
(4, 'The Hobbit', 2, 'J.R.R. Tolkien', 28),
(5, 'Start Your Own Import/Export Business', 4, 'Entrepreneur Press', 12),
(6, 'The Study Skills Handbook', 5, 'Stella Cottrell', 14),
(7, 'The World for Sale', 6, 'Javier Blas', 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
