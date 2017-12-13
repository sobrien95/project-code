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
-- Table structure for table `playermatchdetails`
--

DROP TABLE IF EXISTS `playermatchdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playermatchdetails` (
  `players_playerID` varchar(10) NOT NULL,
  `match_matchID` int(11) NOT NULL,
  `goalsScored` int(11) DEFAULT NULL,
  `minutesPlayed` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `goalsConceded` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`players_playerID`,`match_matchID`),
  KEY `fk_players_has_match_match1_idx` (`match_matchID`),
  KEY `fk_players_has_match_players1_idx` (`players_playerID`),
  CONSTRAINT `fk_players_has_match_match1` FOREIGN KEY (`match_matchID`) REFERENCES `match` (`matchID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_players_has_match_players1` FOREIGN KEY (`players_playerID`) REFERENCES `players` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playermatchdetails`
--

LOCK TABLES `playermatchdetails` WRITE;
/*!40000 ALTER TABLE `playermatchdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `playermatchdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 23:00:50
