-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 01:52 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_enfants`
--

CREATE TABLE IF NOT EXISTS `t_enfants` (
  `id_enfant` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` mediumint(9) NOT NULL,
  `nom` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `postnom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `genre` varchar(1) NOT NULL,
  `age` varchar(4) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id_enfant`),
  KEY `id_enfant` (`id_enfant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Table qui stock les enfants' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `t_enfants`
--

INSERT INTO `t_enfants` (`id_enfant`, `id_parent`, `nom`, `postnom`, `prenom`, `genre`, `age`, `photo`) VALUES
(1, 1, 'KANGU', 'MATONDO', 'LEONEL', 'M', '4', ''),
(2, 2, 'LUNDA', 'LUNDA', 'JONATHAN', 'M', '3', ''),
(3, 2, 'MATONDO', 'VAKALA', 'GRACE', 'F', '5', ''),
(4, 4, 'YEYE', 'YEYE', 'HENOCK', 'M', '3', ''),
(5, 4, 'KAMBOLO', 'ONEMA', 'DENIS', 'M', '4', ''),
(6, 4, 'BATEKA', 'BANDU', 'PATHY', 'F', '2', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
