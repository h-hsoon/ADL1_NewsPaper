-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 09:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adl1_newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `category` text COLLATE utf8_unicode_520_ci NOT NULL,
  `content` text COLLATE utf8_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `toNewsLink` varchar(250) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `category`, `content`, `image`, `toNewsLink`) VALUES
(1, 'breaking ', 'important', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Non corrupti, dolores vero necessitatibus deserunt consequuntur quaerat reiciendis quod, consequatur eius sint doloribus quas cum maxime. Unde repellat maiores quisquam doloribus!', '', 'https://www.bbc.com/travel/article/20221017-nuraghi-sardinias-mysterious-beehive-towers'),
(2, 'sdfaasfdfasd', 'fdasasfdasdgdgdgsd', 'Lorem ipsum dolor sit amet, mea putant mnesarchum te. Eum graecis vivendo ea, no iudico invidunt legendos eum, an tation putant sapientem ius. Te nam impedit vocibus moderatius, mei ut regione scaevola. Clita inimicus pro at. Eu facete malorum duo. Usu no vocibus conclusionemque, pri utinam nostro iracundia an.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-royalty-free-image-506756303-1560962726.jpg?crop=0.672xw:1.00xh;0.166xw,0&resize=640:*', 'https://www.bbc.com/news/uk-england-devon-63259545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
