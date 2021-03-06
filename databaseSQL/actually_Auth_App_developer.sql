CREATE DATABASE  IF NOT EXISTS `actually` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `actually`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: actually
-- ------------------------------------------------------
-- Server version	5.6.21-enterprise-commercial-advanced

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
-- Table structure for table `Auth_App_developer`
--

DROP TABLE IF EXISTS `Auth_App_developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Auth_App_developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `githubName` varchar(50) NOT NULL,
  `pmAssigned_id` int(11) DEFAULT NULL,
  `optional1` varchar(100) DEFAULT NULL,
  `optional2` varchar(100) DEFAULT NULL,
  `optional3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Auth_App_developer_d3712109` (`pmAssigned_id`),
  CONSTRAINT `pmAssigned_id_refs_id_31d65d2f` FOREIGN KEY (`pmAssigned_id`) REFERENCES `Auth_App_pm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Auth_App_developer`
--

LOCK TABLES `Auth_App_developer` WRITE;
/*!40000 ALTER TABLE `Auth_App_developer` DISABLE KEYS */;
INSERT INTO `Auth_App_developer` VALUES (1,'Wen','Zhu','spoiled_piggy',1,'0.111','0.222',''),(2,'Long','Ma','treebug',1,'0.111','0.222',''),(3,'Sha','Jin','jinsha',1,'0.111','0.222',''),(4,'Yachen','Xie','xieyachen',2,'0.111','0.222',''),(5,'Yiming','Jia','jiayiming',2,'0.111','0.222',''),(7,'bb','aaa','aaaa',NULL,'','',''),(8,'xie','yachen','sinkerplus',NULL,NULL,NULL,NULL),(10,'Zhe','Nan','Maggie199',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Auth_App_developer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-15 21:55:28
