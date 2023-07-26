CREATE DATABASE  IF NOT EXISTS `league_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `league_data`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: league_data
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `champion`
--

DROP TABLE IF EXISTS `champion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champion` (
  `champion_id` int NOT NULL,
  `champion_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`champion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champion`
--

LOCK TABLES `champion` WRITE;
/*!40000 ALTER TABLE `champion` DISABLE KEYS */;
INSERT INTO `champion` VALUES (1,'Annie'),(2,'Olaf'),(3,'Galio'),(4,'Twisted Fate'),(5,'Xin Zhao'),(6,'Urgot'),(7,'LeBlanc'),(8,'Vladimir'),(9,'Fiddlesticks'),(10,'Kayle'),(11,'Master Yi'),(12,'Alistar'),(13,'Ryze'),(14,'Sion'),(15,'Sivir'),(16,'Soraka'),(17,'Teemo'),(18,'Tristana'),(19,'Warwick'),(20,'Nunu & Willump'),(21,'Miss Fortune'),(22,'Ashe'),(23,'Tryndamere'),(24,'Jax'),(25,'Morgana'),(26,'Zilean'),(27,'Singed'),(28,'Evelynn'),(29,'Twitch'),(30,'Karthus'),(31,'Cho\'Gath'),(32,'Amumu'),(33,'Rammus'),(34,'Anivia'),(35,'Shaco'),(36,'Dr. Mundo'),(37,'Sona'),(38,'Kassadin'),(39,'Irelia'),(40,'Janna'),(41,'Gangplank'),(42,'Corki'),(43,'Karma'),(44,'Taric'),(45,'Veigar'),(48,'Trundle'),(50,'Swain'),(51,'Caitlyn'),(53,'Blitzcrank'),(54,'Malphite'),(55,'Katarina'),(56,'Nocturne'),(57,'Maokai'),(58,'Renekton'),(59,'Jarvan IV'),(60,'Elise'),(61,'Orianna'),(62,'Wukong'),(63,'Brand'),(64,'Lee Sin'),(67,'Vayne'),(68,'Rumble'),(69,'Cassiopeia'),(72,'Skarner'),(74,'Heimerdinger'),(75,'Nasus'),(76,'Nidalee'),(77,'Udyr'),(78,'Poppy'),(79,'Gragas'),(80,'Pantheon'),(81,'Ezreal'),(82,'Mordekaiser'),(83,'Yorick'),(84,'Akali'),(85,'Kennen'),(86,'Garen'),(89,'Leona'),(90,'Malzahar'),(91,'Talon'),(92,'Riven'),(96,'Kog\'Maw'),(98,'Shen'),(99,'Lux'),(101,'Xerath'),(102,'Shyvana'),(103,'Ahri'),(104,'Graves'),(105,'Fizz'),(106,'Volibear'),(107,'Rengar'),(110,'Varus'),(111,'Nautilus'),(112,'Viktor'),(113,'Sejuani'),(114,'Fiora'),(115,'Ziggs'),(117,'Lulu'),(119,'Draven'),(120,'Hecarim'),(121,'Kha\'Zix'),(122,'Darius'),(126,'Jayce'),(127,'Lissandra'),(131,'Diana'),(133,'Quinn'),(134,'Syndra'),(136,'Aurelion Sol'),(141,'Kayn'),(142,'Zoe'),(143,'Zyra'),(145,'Kai\'Sa'),(147,'Seraphine'),(150,'Gnar'),(154,'Zac'),(157,'Yasuo'),(161,'Vel\'Koz'),(163,'Taliyah'),(164,'Camille'),(166,'Akshan'),(200,'Bel\'Veth'),(201,'Braum'),(202,'Jhin'),(203,'Kindred'),(221,'Zeri'),(222,'Jinx'),(223,'Tahm Kench'),(234,'Viego'),(235,'Senna'),(236,'Lucian'),(238,'Zed'),(240,'Kled'),(245,'Ekko'),(246,'Qiyana'),(254,'Vi'),(266,'Aatrox'),(267,'Nami'),(268,'Azir'),(350,'Yuumi'),(360,'Samira'),(412,'Thresh'),(420,'Illaoi'),(421,'Rek\'Sai'),(427,'Ivern'),(429,'Kalista'),(432,'Bard'),(497,'Rakan'),(498,'Xayah'),(516,'Ornn'),(517,'Sylas'),(518,'Neeko'),(523,'Aphelios'),(526,'Rell'),(555,'Pyke'),(711,'Vex'),(777,'Yone'),(875,'Sett'),(876,'Lillia'),(887,'Gwen'),(888,'Renata Glasc'),(895,'Nilah'),(897,'K\'Sante'),(902,'Milio');
/*!40000 ALTER TABLE `champion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 18:32:09
