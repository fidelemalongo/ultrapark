-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2022 at 05:36 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '66f675b7c298dff40483724290b0da4c', '2022-03-14 11:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contactez-nous au : 089<br></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">+86 130 3348 215</span>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

DROP TABLE IF EXISTS `tbltourpackages`;
CREATE TABLE IF NOT EXISTS `tbltourpackages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png', '2017-05-13 14:23:44', '2017-05-13 17:51:01'),
(2, 'Test ', 'Test', 'Delhi India', 5433, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test demo test ', 'phpgurukul-1.png', '2017-05-13 15:24:26', '2017-05-13 17:51:57'),
(3, 'Demo Demo  Demo Demo test', 'Demo Demo Demo Demo Demo Demo  test', 'Demo Demo Demo Demo Demo Demo  test', 1000, 'Demo Demo  test', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'complaints.jpg', '2017-05-13 16:00:58', '2017-05-13 16:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_categories`
--

DROP TABLE IF EXISTS `t_categories`;
CREATE TABLE IF NOT EXISTS `t_categories` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_categorie` varchar(50) NOT NULL,
  `type` varchar(25) NOT NULL,
  `detaille_categorie` text NOT NULL,
  `prix_unitaire` varchar(9) NOT NULL,
  `photo` varchar(250) NOT NULL,
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Table qui stock les catégories';

--
-- Dumping data for table `t_categories`
--

INSERT INTO `t_categories` (`id_categorie`, `libelle_categorie`, `type`, `detaille_categorie`, `prix_unitaire`, `photo`) VALUES
(1, 'GOLD', 'Ticket pour enfant VIP', 'Cette catégorie comporte plusieurs avantages, notamment les endroits à visiter, etc. ', '500', 'complaints.jpg'),
(2, 'FAMILLE', 'Familiales', 'Cette catégorie comporte plusieurs avantages, notamment les endroits à visiter, etc. ', '2500', '14287acc-b5cb-46db-b8b4-e3ffe652fc0d.png'),
(3, 'STANDARD', 'CATEGORY STANDARD', 'Franchement programmer sous le soleil est une tache très compliquées!', '150', 'Koala.jpg'),
(4, 'PREMIUM', 'PREMIUM', 'In the premium package you will be entitled to several privileges including a buffet and other surprises ', '500', 'Penguins.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_enfants`
--

DROP TABLE IF EXISTS `t_enfants`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Table qui stock les enfants';

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

-- --------------------------------------------------------

--
-- Table structure for table `t_parents`
--

DROP TABLE IF EXISTS `t_parents`;
CREATE TABLE IF NOT EXISTS `t_parents` (
  `id_parent` mediumint(9) NOT NULL AUTO_INCREMENT,
  `noms` varchar(150) NOT NULL,
  `genre` varchar(1) NOT NULL,
  `adresse_physique` varchar(150) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `etat` varchar(5) NOT NULL,
  PRIMARY KEY (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Table qui stock les parents';

--
-- Dumping data for table `t_parents`
--

INSERT INTO `t_parents` (`id_parent`, `noms`, `genre`, `adresse_physique`, `mail`, `telephone`, `pass`, `etat`) VALUES
(1, 'ETAMA KIDO', 'F', 'KINSHASA/GOMBE', 'kereneetama@gmail.com', '0894011589', '3f8275a17d8049a4d7c6462466418d42', '1'),
(2, 'Yasmine KANGU SUKAMA', 'F', 'KINSHASA-LIMETE', 'yasminakangu@gmail.com', '0891130650', '25f9e794323b453885f5181f1b624d0b', '1'),
(3, 'DUGUGA MANDONU TICHICK', 'M', 'KINSHASA/LIMETE', 'dugugamandonu@gmail.com', '0895959140', '25f9e794323b453885f5181f1b624d0b', '1'),
(4, 'DORCAS KALENGA', 'F', 'KINSHASA/GOMBE', 'dorcaskalenga@gmail.com', '0828217877', '25f9e794323b453885f5181f1b624d0b', '1'),
(5, 'MARESHAL JORDAN', 'M', 'Shanxi University', 'jordanbasaula@gmail.com', '1301501907', '6eea9b7ef19179a06954edd0f6c05ceb', '0'),
(6, 'MARESHAL JORDAN', 'M', 'Shanxi University', 'jordanbasaula22@gmail.com', '0825405642', '1cc62ac1bf0a89cf653fc57be10f9e8d', '1'),
(7, 'John Doe', 'M', 'Miami', 'johndoe@miami.com', '123456789', '25d55ad283aa400af464c76d713c07ad', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_tickets`
--

DROP TABLE IF EXISTS `t_tickets`;
CREATE TABLE IF NOT EXISTS `t_tickets` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` mediumint(9) NOT NULL,
  `id_enfant` mediumint(9) NOT NULL,
  `id_categorie` mediumint(9) NOT NULL,
  `libelle_ticket` varchar(25) NOT NULL,
  `date_commande` varchar(25) NOT NULL,
  PRIMARY KEY (`id_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Table qui stock les ticket';

--
-- Dumping data for table `t_tickets`
--

INSERT INTO `t_tickets` (`id_ticket`, `id_parent`, `id_enfant`, `id_categorie`, `libelle_ticket`, `date_commande`) VALUES
(1, 2, 3, 2, '16/03/2022', '16/03/2022'),
(2, 2, 2, 1, '16/03/2022', '16/03/2022'),
(3, 2, 2, 1, 'TICKET PURCHASE', '16/03/2022'),
(4, 2, 3, 1, 'TICKET PURCHASE', '16/03/2022'),
(5, 2, 3, 2, 'TICKET PURCHASE', '17/03/2022'),
(6, 2, 2, 1, 'TICKET PURCHASE', '17/03/2022'),
(7, 2, 3, 1, 'TICKET PURCHASE', '17/03/2022'),
(8, 2, 2, 3, 'TICKET PURCHASE', '17/03/2022'),
(9, 4, 4, 1, 'TICKET PURCHASE', '18/03/2022');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
