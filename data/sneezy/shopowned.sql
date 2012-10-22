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
-- Table structure for table `shopowned`
--

DROP TABLE IF EXISTS `shopowned`;
CREATE TABLE `shopowned` (
  `shop_nr` int(11) NOT NULL default '0',
  `profit_buy` double NOT NULL default '0',
  `profit_sell` double NOT NULL default '0',
  `max_num` int(11) default NULL,
  `corp_id` int(11) default NULL,
  `dividend` double default NULL,
  `reserve_max` int(11) default NULL,
  `reserve_min` int(11) default NULL,
  `no_such_item1` varchar(127) default NULL,
  `no_such_item2` varchar(127) default NULL,
  `do_not_buy` varchar(127) default NULL,
  `missing_cash1` varchar(127) default NULL,
  `missing_cash2` varchar(127) default NULL,
  `message_buy` varchar(127) default NULL,
  `message_sell` varchar(127) default NULL,
  `tax_nr` int(11) default NULL,
  `gold` int(11) default NULL,
  PRIMARY KEY  (`shop_nr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopowned`
--


/*!40000 ALTER TABLE `shopowned` DISABLE KEYS */;
LOCK TABLES `shopowned` WRITE;
INSERT INTO `shopowned` VALUES (0,1,0.2,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32046091),(1,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,960326),(2,1,0.2,10,21,0,0,0,NULL,'I\'ve never heard of that.',NULL,NULL,'I\'m sorry you can\'t afford that.  Try killing a few more wall mobs to raise some cash.','Hey that only cost you %d talen.  Your lucky day.','There ya go, %d talens.  Money in your pocket!',NULL,6619999),(3,1.65,0.7,200,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1149108),(4,0,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1491650248),(5,1.1,0.7,10,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,978269),(6,1.1,0.7,10,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,322860),(7,1.1,0.2,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,903927),(8,1.4,0.7,11,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1039144),(9,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,820648),(10,1.1,0.2,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2673974),(11,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,804),(12,1.1,0.2,10,21,0,0,0,'I don\'t have one of those.  I\'m sure when Fitz gets some time, he\'ll plow for more.','I don\'t have that right now, but if you\'ll come back in a day or two, I\'m sure someone will have sold me some more.',NULL,NULL,'Out of dough eh?  Being a caster does have it\'s down side.  Get someone to plow for you.','%d talen in exchange for good casting, not a bad deal.','Here\'s your %d talen.  Thanks!',NULL,1175977),(13,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(14,0.3,0,0,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,84994854),(15,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,5864923),(16,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1025126),(17,3,0.65,2,1,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,971980),(18,1.3,0.5,10,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,2247760),(19,1.2,0.9,4,29,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,1048643),(20,1.2,0.5,2,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,264179),(21,1.4,0.5,10,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,374960),(22,2,0.1,20,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,326036),(23,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,945925),(24,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,326156),(25,1.2,0.2,900,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,452),(26,1.5,0.05,100,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,472552),(27,1.5,0.05,100,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1001817),(28,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,983302),(29,0.6,0.1,20,3,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,2003265),(30,1.3,0.5,10,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,544),(31,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,949790),(32,5,0.0001,99,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,316333),(33,3,0.01,4,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,398666),(34,1.2,0.01,1,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,310632),(35,1,0.5,2,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,852552),(36,1,0.2,10,21,0,0,0,'I don\'t have that right now.','I\'ve never heard of that item.','Whoa, I don\'t take those.  Sorry.',NULL,'Doesn\'t look like you can afford that.  Come back again with some loot!','%d is a lot of money, thanks!','I\'ve been looking for one of those.  Here\'s %d talen for it.',NULL,11682617),(37,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,975436),(38,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,953055),(39,1,0.1,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,997862),(40,0.8,0.1,10,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,3143473),(41,0.8,0.1,10,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,791774),(42,0.1,0.1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,984979),(43,5,0.0001,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,226602),(44,1.2,0.8,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(45,1.2,0.2,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,985942),(46,1.2,0.2,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,972209),(47,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,946785),(48,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,947704),(49,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,975986),(50,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,937463),(51,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,939086),(52,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,973189),(53,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,934114),(54,5,0.01,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1591237),(55,1,0.5,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,25012714),(56,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,129172),(57,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,9127313),(58,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,187324),(59,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,797976),(60,1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,123),(61,1.3,0.5,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1032030),(62,1.2,0.8,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,982938),(63,5,0.1,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,499711),(64,1,0.4,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,939539),(65,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,972413),(66,2.5,0.5,10,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,823353),(67,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,969730),(68,0.5,0.2,900,27,0,900000000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1399267),(69,1.2,0.8,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1000251),(70,2,1.2,10,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,4457),(71,1,1e-05,900,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,71),(72,2,0.2,30,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1871862),(73,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,968653),(74,2.1,0.9,1,27,0.1,600000,500000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,540919),(75,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,981270),(76,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,954060),(77,2.2,0.3,900,1,0,2100000,1900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1804960),(78,5,1e-05,900,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1026851),(79,2,0.4,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,987393),(80,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,977380),(81,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,8234532),(82,1.5,0.6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,14954),(83,5,1e-06,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,803039),(84,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(85,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(86,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(87,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(88,1.4,0.6,25,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,169057),(89,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(90,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(91,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(92,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(93,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(94,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(95,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(96,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(97,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(98,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(99,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(100,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(101,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(102,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(103,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(104,1.1,0.7,10,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,654338),(105,5,0,100,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,70761),(106,1.05,0.95,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,992408),(107,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,793426),(108,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,990076),(109,1.25,0.4,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,231779),(110,1.1,0.9,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,18018),(111,1.2,0.8,10,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,485590),(112,1.1,0.7,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,68303),(113,1,0.4,5,11,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,45557061),(114,0.35,0.1,10,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,2744084),(115,2,1,100,13,0.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,349894),(116,1.1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,979391),(117,0.8,0.35,5,4,0,6000000,5000000,NULL,'I\'ve never heard of that! If you want Armor Go 14 East and 2 North from Center Square','This isnt Clothing. If your trying to sell armor, go 14 East and two North of Center Square.','I can\'t afford that! Give Frobozz a Tell that Torkyns outa cash please.',NULL,'That\'ll be %d talens. Thank you! For great Armor go 14 east 2 north from Center Square.','Here is your %d talens.  Thank you! If you want great Armor Go 14 East and 2 North from Center Square!',14,5668696),(118,1,0.3,3,3,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,8682594),(119,1.5,0.65,4,3,0,10000000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,965035),(120,2,0.1,50,8,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1212449),(121,1.5,0.0001,15,12,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,411300),(122,1.05,1,100,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,14188463),(124,0.2,0,10,10,0,250000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,248397),(125,0.85,0.4,10,4,0,NULL,NULL,NULL,'You dont have that Item in your inventory. You idiot!','It aint Armor, and it aint Jewelery, so I dont want it.',NULL,NULL,'That\'ll be %d talens. Thank you.','heres your %d talens. Feel free to continue bleeding me dry!',14,7166119),(126,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,NULL),(127,1.8,0,0,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8646813),(128,1.8,0,10,29,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,368618),(129,1.65,0,0,27,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,995585),(130,1.65,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,3065151),(131,1.8,0,10,27,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1041645),(132,1.65,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,60213),(133,1.65,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,65530),(134,1.65,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,15763),(135,1.1,0.5,10,3,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!  And do you know I pay extra for good poisons?','Here is your %d talens.  Thank you!  And do you know I pay extra for good poisons?',14,2226716),(136,0.1,0.05,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,6522090),(137,5,0.1,5,17,0,1000000,500000,'Looks like we\'re sold out of that item.','We don\'t have that for sale at the moment, sorry.','Sorry, I don\'t buy that stuff. Check the guy south of me.','I\'m a little strapped for cash right now.','Prices non-negotiable, sorry.','That\'s gonna be %d talens, thanks. Tell your friends about us.','Fair enough, here\'s your %d talens. Please come again.',14,836032),(138,1.1,0.9,10,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,78997),(139,5,0.1,5,17,NULL,1000000,500000,'Sorry chap, fresh out of those. Try the \'list\' command.','I\'m afraid you don\'t have that item to sell to me.','I only trade in clothing, friend.','Sorry, I seem to be out of funds temporarily.  Come back soon.',NULL,NULL,NULL,14,934244),(140,0,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,-265828),(141,0,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,35127984),(142,0,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,411808097),(143,0.48,0.3,50,13,0.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,31260),(144,1.8,0,0,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8562281),(145,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,767109),(146,1.4,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1238908),(147,1.4,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,39845),(148,1.4,0,0,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,826108),(149,2.1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1445126),(150,1.8,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1118102),(151,1,0.1,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1139817),(152,1.4,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,38571),(153,1.4,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,7200),(154,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,42082),(155,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,-2969),(156,1,0.1,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,2446),(157,1,0.1,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,0),(158,1,0.1,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,0),(159,5,0.4,2000,4,NULL,NULL,NULL,'I have no such item, does not compute!','Does not Compute!',NULL,'I have Insufficient Funds!','You have Insufficient Funds!','you gave me %d talens.  Transaction Complete.','I gave you %d talens.  Transaction Complete.',14,2899459),(160,1.1,0.9,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,176559992),(161,1.8,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1006754),(162,1.4,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(163,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,0),(164,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1085885),(165,1.4,0.6,25,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,421838),(166,1,0.9,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,520200),(167,1.4,0.6,25,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,867438),(168,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(169,0.15,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3737467),(170,0.15,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16265733),(171,0.15,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11640145),(172,2.5,0.0001,10,24,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,361991),(173,5,1e-05,10,12,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,527540),(174,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(175,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(176,1.4,0,25,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(177,1.4,0.6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(178,5,1e-06,100,12,NULL,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,570588),(179,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(180,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(181,1.5,0.01,10,17,NULL,250000,15000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,132583),(182,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,1600000),(183,1,0.1,9999,2,0.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,102905),(184,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,741778),(185,0.01,0,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,755151),(186,20,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19356292),(187,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(188,0,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,0),(189,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(190,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(191,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(192,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(193,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,150),(194,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,3266),(195,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,0),(196,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,696),(197,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,250),(198,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(199,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,2339),(200,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,297028),(201,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,1514),(202,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,8092),(203,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,291943),(204,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,425),(205,10,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,362245),(206,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,5525),(207,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,3936),(208,10,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,97977),(209,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,391),(210,10,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,107884),(211,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(212,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(213,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(214,1.1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,102179),(215,1.1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40170),(217,1.2,0.2,10,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,1122261),(218,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,288202),(219,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,755850),(220,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,812225),(221,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,8027),(222,0,0,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(223,1,0,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000127),(224,1.1,0.9,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1005284),(226,0.7,0.1,1000,30,NULL,NULL,NULL,NULL,NULL,'That will not help the cause.','I seem to be short on cash at the moment.','You seem to be short on cash.',NULL,NULL,171,2277453),(227,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL),(228,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL),(229,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL),(230,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL),(231,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,NULL),(232,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,737068),(233,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,513588),(234,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,61452),(235,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,40755),(236,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,974476),(237,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,343891),(238,1.01,1,10,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,1390758),(239,1.1,0.9,100,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,348341),(240,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,21540),(241,1,0.9,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,229),(242,1,0.5,100,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,1000000),(243,1.1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,926366),(244,1.1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',170,43482),(245,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,0),(246,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,0),(247,1.25,0.75,10,1,NULL,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,1014000),(248,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(250,1.1,0.9,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,-13954836),(251,1,0.5,1000,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1017188),(252,1.1,0.9,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000),(255,0,0,10,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,0),(256,3,0.5,1,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,757414),(257,3,0.5,1,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,452580),(258,4,2,9999,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,1248440),(260,1.1,0.9,10,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,155160),(261,1.1,0.9,10,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000464);
UNLOCK TABLES;
/*!40000 ALTER TABLE `shopowned` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

