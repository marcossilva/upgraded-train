-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Fev-2016 às 06:14
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hw3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `family`
--

INSERT INTO `family` (`id`, `FirstName`, `LastName`, `Age`) VALUES
(1, 'Gislane', 'Tavares Ferreira Leal Silva', 40),
(2, 'Ivan Pedro', 'Leal Silva', 41),
(3, 'Janaina', 'Tavares', 45),
(4, 'Sonia', 'Maria Tavares', 68),
(5, 'Marystela', 'Vianna Leal', 69),
(6, 'Marise', 'Barbosa Leal', 42),
(7, 'Luiz Gustavo', 'd''Almedia', 20),
(8, 'Thamiris', 'd''Almeida', 16),
(9, 'Ruan', 'Gonçalves', 18),
(10, 'Larissa', 'Gonçalves', 23),
(11, 'Ronaldo', 'Gonçalves', 46),
(12, 'Mario', 'Almeida', 48),
(13, 'Inês', 'Tavares', 38),
(14, 'Jarbas', 'José', 71),
(15, 'Ana Clara', 'Tavares', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(50) NOT NULL,
  `addedOn` varchar(50) NOT NULL,
  `price` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id`, `gameName`, `addedOn`, `price`) VALUES
(1, 'To Be or Not To Be', 'February 8, 2015', '$11.99'),
(2, 'Caffeine', 'February 7, 2015', '$19.99'),
(3, 'Fire', 'April 11, 2015', '$9.99'),
(4, 'Amphora', 'February 8, 2015', '$13.99'),
(5, 'Don''t Starve Together Beta', 'January 26, 2015', '$14.99'),
(6, 'Trine 3: The Artifacts of Power', 'April 26, 2015', '$21.99'),
(7, 'Adventure Time: The Secret Of The Nameless Kingdom', 'February 9, 2015', '$4.99'),
(8, 'Shadowrun: Dragonfall - Director''s Cut', 'May 21, 2015', '$14.99'),
(9, 'Qora', 'June 27, 2015', '$9.99'),
(10, 'Axiom Verge', 'May 16, 2015', '$19.99'),
(11, 'Fallout 4', 'June 16, 2015', '$59.99'),
(12, 'Dark Echo', 'May 19, 2015', '$2.99'),
(13, 'Rise of the Tomb Raider', 'February 9', '$59.99'),
(14, 'Undertale', 'November 16, 2015', '$9.99'),
(15, 'The Jackbox Party Pack 2', 'November 26, 2015', '$24.99'),
(16, 'Downwell', 'November 27, 2015', '$2.99'),
(17, 'The Curious Expedition', 'May 21, 2015', '$14.99'),
(18, 'Khaba', 'February 8, 2015', '$3.99'),
(19, 'Cubot', 'February 7, 2015', '$1.99'),
(20, 'Finding Teddy 2', 'April 26, 2015', '$14.99'),
(21, 'Cylne', 'March 25, 2015', '$8.99'),
(22, 'The Escapists', 'January 26, 2015', '$17.99'),
(23, 'Crawl', 'June 21, 2015', '$9.99'),
(24, 'Greenlight Developer Access', 'May 2, 2015', '$100.00'),
(25, 'Half Minute Hero: Super Mega Neo Climax Ultimate B', 'May 21, 2015', '$9.99'),
(26, 'Brothers - A Tale of Two Sons', 'November 27, 2015', '$14.99'),
(27, 'Kentucky Route Zero', 'February 9, 2015', '$24.99'),
(28, 'Thief', 'April 26, 2015', '$29.99'),
(29, 'The Witness', 'February 9', '$39.99'),
(30, 'Blades of Time', 'February 9, 2015', '$9.99'),
(31, 'Mirror''s Edge', 'February 3, 2015', '$19.99'),
(32, 'FINAL FANTASY XIV: A Realm Reborn', 'April 5, 2015', '$19.99'),
(33, 'Darksiders', 'February 8, 2015', '$19.99'),
(34, 'Legend of Grimrock', 'February 8, 2015', '$14.99'),
(35, 'In Verbis Virtus', 'May 13, 2015', '$19.99'),
(36, 'Hack ''n'' Slash', 'May 17, 2015', '$13.37'),
(37, 'RollerCoaster Tycoon', 'March 5, 2015', '$49.99'),
(38, 'Pillars of Eternity', 'April 9, 2015', '$44.99'),
(39, 'The Witcher 3: Wild Hunt', 'January 26, 2015', '$59.99'),
(40, 'FINAL FANTASY XIII', 'April 5, 2015', '$15.99'),
(41, 'Broforce', 'April 26, 2015', '$14.99'),
(42, 'Melody''s Escape', 'April 9, 2015', '$9.99'),
(43, 'The Impossible Game', 'February 7, 2015', '$4.99'),
(44, 'Darkest Dungeon', 'February 8, 2015', '$24.99'),
(45, 'Subnautica', 'April 9, 2015', '$19.99'),
(46, 'Goat Simulator', 'April 26, 2015', '$9.99'),
(47, 'Thrillville: Off the Rails', 'February 8, 2015', '$9.99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manga`
--

CREATE TABLE IF NOT EXISTS `manga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `lastChapter` int(11) NOT NULL,
  `mangaka` varchar(80) NOT NULL,
  `firstChapterYear` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `manga`
--

INSERT INTO `manga` (`id`, `name`, `lastChapter`, `mangaka`, `firstChapterYear`) VALUES
(1, 'One Piece', 816, 'Eiichiro Oda', 1997),
(2, 'Fairy Tail', 472, 'Mashima Hiro', 2006),
(3, 'Naruto', 700, 'Masashi Kishimoto', 1999),
(4, 'Bleach', 662, 'Tite Kubo', 2001),
(5, 'Shingeki No Kyojin', 78, 'Isayama Hajime', 2009),
(6, 'Hunter x Hunter', 349, 'Yoshihiro Togashi', 1998),
(7, 'Toriko', 358, 'Shimabukuro Mitsutoshi', 2008),
(8, 'The Breaker: New Waves', 201, 'Jeon Geuk-jin', 2010),
(9, 'Dengeki Daisy', 75, 'Motmoi Kyousuke', 2007),
(10, 'Fairy Tail Zero', 13, 'Mashima Hiro', 2014),
(11, 'Nisekoi', 204, 'Komi Naoshi', 2011),
(12, 'Ao No Exorcist', 75, 'Katou Kazue', 2009),
(13, 'Akame Ga Kiru!', 67, 'Tashiro Tetsuya', 2010),
(14, 'Gintama', 574, 'Hideaki Soroachi', 2003),
(15, 'Assassination Classroom', 175, 'Matsui Yuusei', 2012);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
