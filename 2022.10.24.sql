-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 05:14 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

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
(1, 'Sardinia\'s mysterious beehive towers\n', 'Nature', 'More than 7,000 Bronze Age skyscrapers once dotted this Italian island. Now, new discoveries are shining light on Sardinia\'s Nuragic civilisation.', 'https://ychef.files.bbci.co.uk/1600x900/p0d6gjgb.webp', 'https://www.bbc.com/travel/article/20221017-nuraghi-sardinias-mysterious-beehive-towers'),
(2, 'Dog rescued from Haytor quarry', 'ِِAccidents', 'A dog has been rescued from an old quarry on Dartmoor after being trapped for nearly seven hours.\n\nJess the dog became stuck after a pile of granite boulders collapsed over a hole she had run down at Haytor quarry.\n\nMembers from the Devon Cave Rescue Organisation (DCRO) joined firefighters and police to help reunite her with her owner shortly after 23:30 BST on Thursday.\n\nRescuers had to remove the boulders one by one before she was eventually freed.\n\nTara Beacroft, from the DCRO, described the delicate operation as \"a bit like the world\'s worst game of Jenga\".\n\n', 'https://ichef.bbci.co.uk/news/976/cpsprodpb/5A69/production/_127154132_dogrescue2.jpg.webp', 'https://www.bbc.com/news/uk-england-devon-63259545'),
(3, 'A fish that sparked a national obsession', 'Food', 'Bacalhau (salt cod) is a deep part of Portugals culinary identity. But the fish is found far from the countrys shores, so how did this love affair come to be and continue today?', 'https://ychef.files.bbci.co.uk/1600x900/p0d83chw.webp', 'https://www.bbc.com/travel/article/20221019-a-fish-that-sparked-a-national-obsession'),
(4, 'The forgotten history of the US African American c', 'Culture', 'One of the US newest national parks has put West Virginia in the spotlight, but theres a deeper history to discover in the remnants of its African American coal communities.', 'https://ychef.files.bbci.co.uk/1600x900/p0d7nmh7.webp', 'https://www.bbc.com/travel/article/20221023-the-forgotten-history-of-the-us-african-american-coal-towns'),
(5, 'Robert Lewandowski scored his 12th goal', 'Sport', 'The Poland striker got his sides third goal when he drove in an unstoppable drive from Ousmane Dembeles pass.\r\n\r\nLewandowski had provided the assist for the opener, lofting the ball for Dembele to head in.\r\n\r\nDembele found Sergi Roberto to make it 2-0 and also set up a late fourth as Ferran Torres swept in.\r\n\r\nIt was a dominant display by Barcelona but some of the shine was taken off the win as Roberto went off with a shoulder injury late on.', 'https://ichef.bbci.co.uk/onesport/cps/800/cpsprodpb/12A0D/production/_127310367_robertlewandowski.jpg', 'https://www.bbc.com/sport/football/63368519');

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
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
