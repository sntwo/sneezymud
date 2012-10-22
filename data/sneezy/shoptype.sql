-- MySQL dump 10.10
--
-- Host: db.sneezymud.com    Database: sneezy
-- ------------------------------------------------------
-- Server version	5.0.24a-standard

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
-- Table structure for table `shoptype`
--

DROP TABLE IF EXISTS `shoptype`;
CREATE TABLE `shoptype` (
  `shop_nr` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoptype`
--


/*!40000 ALTER TABLE `shoptype` DISABLE KEYS */;
LOCK TABLES `shoptype` WRITE;
INSERT INTO `shoptype` VALUES (0,5),(0,44),(1,1),(1,6),(2,9),(5,4),(5,3),(6,10),(7,2),(8,35),(8,15),(8,17),(8,27),(8,38),(8,49),(9,8),(9,31),(9,12),(9,16),(9,22),(9,20),(9,21),(9,37),(9,43),(10,36),(10,31),(10,46),(15,8),(15,20),(15,7),(15,42),(15,43),(16,19),(16,17),(17,19),(17,22),(17,11),(17,30),(17,31),(18,1),(18,6),(18,15),(18,27),(19,9),(20,5),(20,44),(21,2),(21,3),(21,4),(21,10),(21,30),(22,25),(22,26),(22,37),(23,17),(23,19),(24,17),(24,19),(25,9),(26,9),(27,5),(27,44),(28,17),(28,19),(29,2),(29,3),(29,4),(29,10),(29,30),(30,1),(30,6),(30,15),(30,27),(31,17),(31,19),(32,5),(32,44),(33,9),(33,11),(34,9),(35,5),(35,25),(35,26),(35,44),(79,6),(37,19),(37,17),(38,19),(38,17),(39,19),(39,17),(40,9),(41,5),(41,44),(42,31),(43,2),(43,3),(43,4),(43,10),(43,30),(44,20),(44,8),(44,7),(45,1),(45,6),(45,27),(45,38),(46,1),(46,6),(46,27),(46,38),(47,17),(47,19),(48,17),(48,19),(49,19),(49,17),(50,19),(50,17),(51,19),(51,17),(52,19),(53,17),(54,9),(54,11),(55,5),(55,44),(56,8),(56,20),(56,7),(56,42),(57,8),(57,20),(57,7),(57,42),(58,8),(58,20),(58,7),(58,42),(59,17),(60,1),(60,6),(60,27),(60,31),(60,38),(61,8),(61,31),(61,12),(61,16),(61,22),(61,20),(61,21),(61,37),(62,22),(63,25),(63,26),(63,37),(64,17),(64,19),(65,17),(65,19),(66,1),(66,17),(66,19),(66,38),(66,27),(67,19),(68,10),(69,22),(70,30),(70,29),(71,14),(71,18),(71,12),(71,35),(72,35),(72,15),(72,17),(72,27),(72,38),(72,1),(73,45),(74,11),(75,19),(76,17),(76,19),(77,5),(77,44),(78,14),(78,18),(78,12),(79,15),(79,17),(79,27),(79,38),(79,1),(80,19),(81,8),(81,20),(81,7),(81,42),(82,9),(83,5),(83,44),(84,17),(84,46),(88,2),(88,30),(89,19),(97,43),(104,50),(104,52),(105,50),(105,52),(106,19),(107,17),(107,19),(108,22),(111,36),(111,31),(111,46),(112,60),(112,19),(113,9),(113,45),(114,54),(114,8),(115,29),(115,30),(116,19),(116,17),(117,11),(122,62),(119,36),(119,31),(119,46),(119,8),(174,11),(118,5),(119,45),(71,63),(78,63),(8,67),(175,5),(121,46),(121,36),(125,9),(125,45),(135,14),(135,18),(135,12),(135,63),(137,9),(138,9),(139,11),(159,30),(159,29),(120,10),(120,2),(143,2),(143,10),(12,29),(12,30),(172,2),(172,4),(172,7),(172,10),(172,30),(173,11),(173,11),(176,19),(177,12),(177,17),(177,18),(177,27),(177,49),(178,12),(178,17),(178,18),(178,27),(178,49),(179,9),(180,11),(181,1),(183,55),(183,56),(11,14),(11,18),(11,12),(11,35),(11,63),(184,9),(216,9),(217,2),(217,3),(214,5),(215,11),(217,4),(217,10),(217,30),(36,11),(225,10),(226,2),(226,10),(232,36),(232,46),(233,11),(234,9),(235,5),(235,44),(236,45),(237,15),(237,27),(237,6),(237,1),(237,38),(237,17),(238,42),(238,43),(238,20),(238,8),(239,29),(239,30),(242,19),(243,14),(243,18),(243,12),(243,63),(244,2),(244,10),(251,19),(3,19),(256,11),(257,9),(258,29),(258,30),(30,35),(18,35);
UNLOCK TABLES;
/*!40000 ALTER TABLE `shoptype` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

