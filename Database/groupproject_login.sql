-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: groupproject
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `userID` varchar(45) NOT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `referee_refereeID` varchar(20) NOT NULL,
  `admin_adminID` varchar(45) NOT NULL,
  `manager_managerID` varchar(45) NOT NULL,
  `players_playerID` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`,`referee_refereeID`,`admin_adminID`,`manager_managerID`,`players_playerID`),
  KEY `fk_login_referee1_idx` (`referee_refereeID`),
  KEY `fk_login_admin1_idx` (`admin_adminID`),
  KEY `fk_login_manager1_idx` (`manager_managerID`),
  KEY `fk_login_players1_idx` (`players_playerID`),
  CONSTRAINT `fk_login_admin1` FOREIGN KEY (`admin_adminID`) REFERENCES `admin` (`adminID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_login_manager1` FOREIGN KEY (`manager_managerID`) REFERENCES `manager` (`managerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_login_players1` FOREIGN KEY (`players_playerID`) REFERENCES `players` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_login_referee1` FOREIGN KEY (`referee_refereeID`) REFERENCES `referee` (`refereeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 23:00:52
