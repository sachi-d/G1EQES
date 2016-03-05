-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: g1eqes
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES (29,'2016-01-19 13:26:32','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453209992679.sql'),(30,'2016-01-19 13:26:47','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453210007096.sql'),(31,'2016-01-19 13:27:24','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453210044047.sql'),(32,'2016-01-19 13:27:56','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453210076199.sql'),(33,'2016-01-19 13:30:03','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453210202915.sql'),(34,'2016-01-19 14:06:20','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453212380043.sql'),(35,'2016-01-19 14:44:10','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453214650211.sql'),(36,'2016-01-19 15:05:02','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453215902306.sql'),(37,'2016-01-19 15:05:53','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453215953615.sql'),(38,'2016-01-19 15:06:32','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453215991906.sql'),(39,'2016-01-19 15:15:45','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453216545493.sql'),(40,'2016-01-19 15:16:37','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453216597404.sql'),(41,'2016-01-19 15:36:38','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453217797812.sql'),(42,'2016-01-19 16:08:20','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453219700100.sql'),(43,'2016-01-19 16:13:24','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453220003806.sql'),(44,'2016-01-19 16:33:56','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453221236151.sql'),(45,'2016-01-19 16:34:19','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453221259843.sql'),(46,'2016-01-19 16:44:57','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453221897431.sql'),(47,'2016-01-19 16:47:00','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453222019921.sql'),(48,'2016-01-19 17:00:28','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453222828349.sql'),(49,'2016-01-19 17:06:33','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453223193023.sql'),(50,'2016-01-19 17:09:36','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453223376163.sql'),(51,'2016-01-19 17:11:05','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453223464906.sql'),(52,'2016-01-19 17:24:33','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453224273018.sql'),(53,'2016-01-19 17:25:00','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453224299916.sql'),(54,'2016-01-19 17:34:05','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453224845145.sql'),(55,'2016-01-19 17:35:37','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453224937131.sql'),(56,'2016-01-19 17:50:40','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453225840123.sql'),(57,'2016-01-19 18:02:41','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453226561703.sql'),(58,'2016-01-19 18:11:28','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453227088435.sql'),(59,'2016-01-19 18:30:16','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228216754.sql'),(60,'2016-01-19 18:36:46','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228606397.sql'),(61,'2016-01-19 18:37:22','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228642493.sql'),(62,'2016-01-19 18:38:35','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228715058.sql'),(63,'2016-01-19 18:39:09','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228749229.sql'),(64,'2016-01-19 18:40:35','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228835130.sql'),(65,'2016-01-19 18:41:20','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453228879827.sql'),(66,'2016-01-19 18:44:21','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453229061742.sql'),(67,'2016-01-19 18:44:22','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453229062708.sql'),(68,'2016-01-19 18:46:39','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453229198620.sql'),(69,'2016-01-19 18:52:54','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453229573963.sql'),(70,'2016-01-20 05:44:02','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453268642535.sql'),(71,'2016-01-20 05:45:35','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453268735263.sql'),(72,'2016-01-20 13:12:29','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453295549182.sql'),(73,'2016-01-20 13:13:47','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453295627285.sql'),(74,'2016-01-20 13:39:47','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453297187466.sql'),(75,'2016-01-20 14:04:47','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453298687418.sql'),(76,'2016-01-20 14:12:06','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299126673.sql'),(77,'2016-01-20 14:13:25','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299205368.sql'),(78,'2016-01-20 14:21:17','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299677599.sql'),(79,'2016-01-20 14:21:42','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299702696.sql'),(80,'2016-01-20 14:21:48','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299708218.sql'),(81,'2016-01-20 14:22:08','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299728495.sql'),(82,'2016-01-20 14:24:29','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453299869334.sql'),(83,'2016-01-20 14:27:05','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453300025508.sql'),(84,'2016-01-20 14:44:15','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453301055380.sql'),(85,'2016-01-20 14:45:24','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453301123985.sql'),(86,'2016-01-20 14:47:30','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453301250044.sql'),(87,'2016-01-20 14:49:46','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453301385814.sql'),(88,'2016-01-20 15:02:57','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453302177381.sql'),(89,'2016-01-20 15:04:29','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453302268720.sql'),(90,'2016-01-20 15:13:16','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453302795984.sql'),(91,'2016-01-20 15:16:21','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453302980965.sql'),(92,'2016-01-20 15:17:30','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453303049857.sql'),(93,'2016-01-20 15:47:55','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453304874689.sql'),(94,'2016-01-20 16:02:19','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453305738701.sql'),(95,'2016-01-20 16:05:39','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453305938811.sql'),(96,'2016-01-20 16:06:23','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453305982736.sql'),(97,'2016-01-20 16:41:16','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453308075866.sql'),(98,'2016-01-20 16:42:08','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453308128480.sql'),(99,'2016-01-20 16:42:55','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453308175263.sql'),(100,'2016-01-20 16:43:33','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453308213190.sql'),(101,'2016-01-20 16:46:03','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453308363505.sql'),(102,'2016-01-21 02:00:32','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453341632646.sql'),(103,'2016-01-21 02:09:16','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453342156116.sql'),(104,'2016-01-21 02:09:50','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453342190187.sql'),(105,'2016-01-21 02:16:39','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453342599649.sql'),(106,'2016-01-21 02:18:32','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453342712420.sql'),(107,'2016-01-21 02:20:14','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453342814576.sql'),(108,'2016-01-21 02:24:25','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453343065091.sql'),(109,'2016-01-21 02:30:42','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453343442637.sql'),(110,'2016-01-21 03:09:48','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453345787832.sql'),(111,'2016-01-21 03:12:13','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453345933741.sql'),(112,'2016-01-21 03:12:40','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453345960198.sql'),(113,'2016-01-21 03:12:55','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453345974746.sql'),(114,'2016-01-21 03:13:32','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346012021.sql'),(115,'2016-01-21 03:14:11','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346050940.sql'),(116,'2016-01-21 03:14:28','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346067793.sql'),(117,'2016-01-21 03:17:07','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346227452.sql'),(118,'2016-01-21 03:17:17','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346236914.sql'),(119,'2016-01-21 03:21:23','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453346483454.sql'),(120,'2016-01-21 03:32:29','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453347149142.sql'),(121,'2016-01-21 03:37:21','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453347440887.sql'),(122,'2016-01-21 03:56:17','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453348576862.sql'),(123,'2016-01-21 04:01:41','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453348901461.sql'),(124,'2016-01-21 04:39:06','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453351146271.sql'),(125,'2016-01-21 04:39:24','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453351164450.sql'),(126,'2016-01-21 04:40:59','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453351258963.sql'),(127,'2016-01-21 05:03:48','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453352628183.sql'),(128,'2016-01-21 05:06:28','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453352788303.sql'),(129,'2016-01-21 05:08:25','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453352905569.sql'),(130,'2016-01-21 05:11:17','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453353077033.sql'),(131,'2016-01-21 05:13:17','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453353197118.sql'),(132,'2016-01-21 05:23:22','C:\\Users\\Chanaka\\Desktop\\G1EQES_Backup\\g1eqes1453353802522.sql');
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadline`
--

DROP TABLE IF EXISTS `deadline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadline` (
  `deadline_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) DEFAULT NULL,
  `p1` date DEFAULT NULL,
  `g1` date DEFAULT NULL,
  `p2` date DEFAULT NULL,
  `g2` date DEFAULT NULL,
  PRIMARY KEY (`deadline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadline`
--

LOCK TABLES `deadline` WRITE;
/*!40000 ALTER TABLE `deadline` DISABLE KEYS */;
INSERT INTO `deadline` VALUES (1,2016,'2016-01-18','2016-01-22','2016-01-28','2016-01-31');
/*!40000 ALTER TABLE `deadline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  KEY `fk_district_province1_idx` (`province_id`),
  CONSTRAINT `fk_district_province1` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,1,'42','Colombo',1),(2,1,'43','Gampaha',1),(3,1,'44','Kalutara',1),(4,2,'45','Kandy',1),(5,2,'46','Matale',1),(6,2,'47','Nuwara Eliya',1),(7,3,'48','Galle',1),(8,3,'49','Matara',1),(9,3,'50','Hambantot',1),(10,4,'51','Jaffna',1),(11,4,'52','Mannar',1),(12,4,'53','Vavuniya',1),(13,4,'54','Mullaitivu',1),(14,4,'55','Kilin',1),(15,5,'56','Batticaloa',1),(16,5,'57','Ampara',1),(17,5,'58','Trincomalee',1),(18,6,'59','Kurunegala',1),(19,6,'60','Puttalam',1),(20,7,'61','Anuradhapura',1),(21,7,'62','Polonnaruwa',1),(22,8,'63','Badulla',1),(23,8,'64','Moneragala',1),(24,9,'65','Ratnapura',1),(25,9,'66','Kegalle',1);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_sec`
--

DROP TABLE IF EXISTS `division_sec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division_sec` (
  `divisionsec_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`divisionsec_id`),
  KEY `fk_division_sec_district1_idx` (`district_id`),
  CONSTRAINT `fk_division_sec_district1` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_sec`
--

LOCK TABLES `division_sec` WRITE;
/*!40000 ALTER TABLE `division_sec` DISABLE KEYS */;
INSERT INTO `division_sec` VALUES (1,1,'950','Colombo',1),(2,1,'951','Kolonnawa',1),(3,1,'952','Kaduwela',1),(4,1,'953','Homagama',1),(5,1,'954','Hanwella',1),(6,1,'955','Padukka',1),(7,1,'956','Maharagama',1),(8,1,'957','Sri Jayawardanapura Kotte',1),(9,1,'958','Thimbirigasyaya',1),(10,1,'959','Dehiwala-Mount Lavinia',1),(11,1,'960','Ratmalana',1),(12,1,'961','Moratuwa',1),(13,1,'962','Kesbewa',1),(14,2,'963','Negombo',1),(15,2,'964','Katana',1),(16,2,'965','Divulapitiya',1),(17,2,'966','Mirigama',1),(18,2,'967','Minuwangoda',1),(19,2,'968','Wattala',1),(20,2,'969','Ja-Ela',1),(21,2,'970','Gampaha',1),(22,2,'971','Attanagalla',1),(23,2,'972','Dompe',1),(24,2,'973','Mahara',1),(25,2,'974','Kelaniya',1),(26,2,'975','Biyagama',1),(27,3,'976','Panadura',1),(28,3,'977','Bandaragama',1),(29,3,'978','Horana',1),(30,3,'979','Ingiriya',1),(31,3,'980','Bulathsinhala',1),(32,3,'981','Madurawela',1),(33,3,'982','Millaniya',1),(34,3,'983','Kalutara',1),(35,3,'984','Beruwala',1),(36,3,'985','Dodangoda',1),(37,3,'986','Mathugama',1),(38,3,'987','Agalawatta',1),(39,3,'988','Palindanuwara',1),(40,3,'989','Walallavita',1);
/*!40000 ALTER TABLE `division_sec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grama_div`
--

DROP TABLE IF EXISTS `grama_div`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grama_div` (
  `gramadiv_id` int(11) NOT NULL AUTO_INCREMENT,
  `divisionsec_id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`gramadiv_id`),
  KEY `fk_grama_div_division_sec1_idx` (`divisionsec_id`),
  CONSTRAINT `fk_grama_div_division_sec1` FOREIGN KEY (`divisionsec_id`) REFERENCES `division_sec` (`divisionsec_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grama_div`
--

LOCK TABLES `grama_div` WRITE;
/*!40000 ALTER TABLE `grama_div` DISABLE KEYS */;
INSERT INTO `grama_div` VALUES (1,1,'9','Sammanthranapura',1),(2,1,'10','Mattakkuliya',1),(3,1,'11','Modara',1),(4,1,'12','Madampitiya',1),(5,1,'13','Mahawatta',1),(6,1,'14','Aluthmawatha',1),(7,1,'15','Lunupokuna',1),(8,1,'16','Bloemendhal',1),(9,1,'17','Kotahena East',1),(10,1,'18','Kotahena West',1),(11,1,'19','Kochchikade North',1),(12,1,'20','Jinthupitiya',1),(13,1,'21','Massangar Street',1),(14,1,'22','New Bazaar',1),(15,1,'23','Grandpass South',1),(16,1,'24','Grandpass North',1),(17,1,'25','Nawagampura',1),(18,1,'26','Maligawatta East',1),(19,1,'27','Kettarama',1),(20,1,'28','Aluthkade East',1),(21,1,'29','Aluthkade West',1),(22,1,'30','Kochchikade South',1),(23,1,'31','Pettah',1),(24,1,'32','Fort',1),(25,1,'33','Galle Face',1),(26,1,'34','Slave Island',1),(27,1,'35','Hunupitiya',1),(28,1,'36','Suduwella',1),(29,1,'37','Keselwatta',1),(30,1,'38','Panchikawatta',1),(31,1,'39','Maligawatta West',1),(32,1,'40','Maligakanda',1),(33,1,'41','Maradana',1),(34,1,'42','Ibbanwala',1),(35,1,'43','Wekanda',1),(36,2,'44','Wathulla',1),(37,2,'45','Sedawatta',1),(38,2,'46','Halmulla',1),(39,2,'47','Kotuvila',1),(40,2,'48','Veheragoda',1),(41,2,'49','Orugodawatta',1),(42,2,'50','Meethotamulla',1),(43,2,'51','Welewaththa',1),(44,2,'52','Kiththampahuwa',1),(45,2,'53','Wennawatta',1),(46,2,'54','Maha Buthgamuwa B',1),(47,2,'55','Kuda Buthgamuwa',1),(48,2,'56','Kelanimulla',1),(49,2,'57','Ambathale',1),(50,2,'58','Mulleriyawa North',1),(51,2,'59','Belagama',1),(52,2,'60','Kotikawatta East',1),(53,2,'61','Maha Buthgamuwa A',1),(54,2,'62','Maha Buthgamuwa C',1),(55,2,'63','Wellampitiya',1),(56,2,'64','Kuriniyawatta',1),(57,2,'65','Kolonnawa',1),(58,2,'66','Dahampura',1),(59,2,'67','Singhapura',1),(60,2,'68','Megoda Kolonnawa',1),(61,2,'69','Bopeththa',1),(62,2,'70','Batalandahena',1),(63,2,'71','Kotikawatta West',1),(64,2,'72','Mulleriyawa South',1),(65,2,'73','Malgama',1),(66,2,'74','Udumulla North',1),(67,2,'75','Maligagodella',1),(68,2,'76','Rajasinghagama',1),(69,2,'77','Udumulla South',1),(70,2,'78','Himbutana East',1),(71,2,'79','Himbutana West',1),(72,2,'80','Malpura',1),(73,2,'81','Gothatuwa New Town',1),(74,2,'82','Kajugahawatta',1),(75,2,'83','Gothatuwa',1),(76,2,'84','Salamulla',1),(77,2,'85','Wijayapura',1),(78,2,'86','Gajabapura',1),(79,2,'87','Madinnagoda',1),(80,2,'88','Elhena',1),(81,2,'89','Dodamgahahena',1);
/*!40000 ALTER TABLE `grama_div` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grama_niladhari`
--

DROP TABLE IF EXISTS `grama_niladhari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grama_niladhari` (
  `grama_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `division` int(11) NOT NULL,
  PRIMARY KEY (`grama_id`),
  KEY `fk_grama_niladhari_user1_idx` (`user_id`),
  KEY `fk_grama_niladhari_grama_div1_idx` (`division`),
  CONSTRAINT `fk_grama_niladhari_grama_div1` FOREIGN KEY (`division`) REFERENCES `grama_div` (`gramadiv_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grama_niladhari_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grama_niladhari`
--

LOCK TABLES `grama_niladhari` WRITE;
/*!40000 ALTER TABLE `grama_niladhari` DISABLE KEYS */;
INSERT INTO `grama_niladhari` VALUES (1,9,'II',1),(2,22,'II',2),(3,23,'I',3),(4,24,'II',4),(5,25,'II',5),(6,26,'II',6),(7,27,'III',7),(8,28,'II',8),(9,29,'I',9),(10,30,'I',10);
/*!40000 ALTER TABLE `grama_niladhari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`log_id`),
  KEY `fk_log_user1_idx` (`user_id`),
  CONSTRAINT `fk_log_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (82,1,'2016-01-19 13:23:32','192.168.1.2','error','failed saving deadlines'),(83,1,'2016-01-19 13:26:25','192.168.1.2','success','user logged out'),(84,3,'2016-01-19 13:26:32','192.168.1.2','success','backed up the database'),(85,3,'2016-01-19 13:26:32','192.168.1.2','success','user logged in'),(86,3,'2016-01-19 13:26:41','192.168.1.2','success','user logged out'),(87,9,'2016-01-19 13:26:47','192.168.1.2','success','backed up the database'),(88,9,'2016-01-19 13:26:47','192.168.1.2','success','user logged in'),(89,9,'2016-01-19 13:27:11','192.168.1.2','success','user logged out'),(90,3,'2016-01-19 13:27:24','192.168.1.2','success','backed up the database'),(91,3,'2016-01-19 13:27:24','192.168.1.2','success','user logged in'),(92,3,'2016-01-19 13:27:49','192.168.1.2','success','user logged out'),(93,8,'2016-01-19 13:27:56','192.168.1.2','success','backed up the database'),(94,8,'2016-01-19 13:27:56','192.168.1.2','success','user logged in'),(95,8,'2016-01-19 13:29:59','192.168.1.2','success','user logged out'),(96,1,'2016-01-19 13:30:03','192.168.1.2','success','backed up the database'),(97,1,'2016-01-19 13:30:03','192.168.1.2','success','user logged in'),(98,1,'2016-01-19 14:05:34','192.168.1.2','success','user logged out'),(99,1,'2016-01-19 14:06:20','192.168.1.2','success','backed up the database'),(100,1,'2016-01-19 14:06:20','192.168.1.2','success','user logged in'),(101,1,'2016-01-19 14:44:10','169.254.51.158','success','backed up the database'),(102,1,'2016-01-19 14:44:10','169.254.51.158','success','user logged in'),(103,1,'2016-01-19 15:04:54','192.168.1.3','success','user logged out'),(104,3,'2016-01-19 15:05:02','192.168.1.3','success','backed up the database'),(105,3,'2016-01-19 15:05:02','192.168.1.3','success','user logged in'),(106,3,'2016-01-19 15:05:42','192.168.1.3','success','user logged out'),(107,1,'2016-01-19 15:05:53','192.168.1.3','success','backed up the database'),(108,1,'2016-01-19 15:05:53','192.168.1.3','success','user logged in'),(109,1,'2016-01-19 15:06:24','192.168.1.3','success','user logged out'),(110,3,'2016-01-19 15:06:32','192.168.1.3','success','backed up the database'),(111,3,'2016-01-19 15:06:32','192.168.1.3','success','user logged in'),(112,3,'2016-01-19 15:07:45','192.168.1.3','success','registered application'),(113,3,'2016-01-19 15:15:26','192.168.1.3','success','user logged out'),(114,3,'2016-01-19 15:15:45','192.168.1.3','success','backed up the database'),(115,3,'2016-01-19 15:15:45','192.168.1.3','success','user logged in'),(116,3,'2016-01-19 15:16:16','192.168.1.3','success','user logged out'),(117,9,'2016-01-19 15:16:37','192.168.1.3','success','backed up the database'),(118,9,'2016-01-19 15:16:37','192.168.1.3','success','user logged in'),(119,9,'2016-01-19 15:35:19','192.168.1.3','success','user logged out'),(120,3,'2016-01-19 15:36:38','192.168.1.3','success','backed up the database'),(121,3,'2016-01-19 15:36:38','192.168.1.3','success','user logged in'),(122,3,'2016-01-19 16:08:15','192.168.1.3','success','user logged out'),(123,1,'2016-01-19 16:08:20','192.168.1.3','success','backed up the database'),(124,1,'2016-01-19 16:08:20','192.168.1.3','success','user logged in'),(125,1,'2016-01-19 16:10:14','192.168.1.3','success','user logged out'),(126,1,'2016-01-19 16:13:24','192.168.1.3','success','backed up the database'),(127,1,'2016-01-19 16:13:24','192.168.1.3','success','user logged in'),(128,1,'2016-01-19 16:33:27','192.168.1.3','success','user logged out'),(129,3,'2016-01-19 16:33:56','192.168.1.3','success','backed up the database'),(130,3,'2016-01-19 16:33:56','192.168.1.3','success','user logged in'),(131,3,'2016-01-19 16:34:12','192.168.1.3','success','user logged out'),(132,1,'2016-01-19 16:34:19','192.168.1.3','success','backed up the database'),(133,1,'2016-01-19 16:34:19','192.168.1.3','success','user logged in'),(134,1,'2016-01-19 16:38:02','192.168.1.3','error','failed calculate marks'),(135,1,'2016-01-19 16:41:35','192.168.1.3','error','failed calculate marks'),(136,1,'2016-01-19 16:44:42','192.168.1.3','error','error user login'),(137,1,'2016-01-19 16:44:48','192.168.1.3','error','error user login'),(138,1,'2016-01-19 16:44:53','192.168.1.3','error','error user login'),(139,1,'2016-01-19 16:44:57','192.168.1.3','success','backed up the database'),(140,1,'2016-01-19 16:44:57','192.168.1.3','success','user logged in'),(141,1,'2016-01-19 16:46:53','192.168.1.3','success','user logged out'),(142,9,'2016-01-19 16:47:00','192.168.1.3','success','backed up the database'),(143,9,'2016-01-19 16:47:00','192.168.1.3','success','user logged in'),(144,9,'2016-01-19 17:00:14','192.168.1.3','success','user logged out'),(145,8,'2016-01-19 17:00:28','192.168.1.3','success','backed up the database'),(146,8,'2016-01-19 17:00:28','192.168.1.3','success','user logged in'),(147,8,'2016-01-19 17:06:20','192.168.1.3','success','user logged out'),(148,1,'2016-01-19 17:06:33','192.168.1.3','success','backed up the database'),(149,1,'2016-01-19 17:06:33','192.168.1.3','success','user logged in'),(150,1,'2016-01-19 17:09:27','192.168.1.3','success','user logged out'),(151,8,'2016-01-19 17:09:36','192.168.1.3','success','backed up the database'),(152,8,'2016-01-19 17:09:36','192.168.1.3','success','user logged in'),(153,8,'2016-01-19 17:10:45','192.168.1.3','success','user logged out'),(154,1,'2016-01-19 17:11:05','192.168.1.3','success','backed up the database'),(155,1,'2016-01-19 17:11:05','192.168.1.3','success','user logged in'),(156,1,'2016-01-19 17:24:27','192.168.1.3','success','user logged out'),(157,1,'2016-01-19 17:24:33','192.168.1.3','success','backed up the database'),(158,1,'2016-01-19 17:24:33','192.168.1.3','success','user logged in'),(159,1,'2016-01-19 17:24:40','192.168.1.3','success','user logged out'),(160,9,'2016-01-19 17:25:00','192.168.1.3','success','backed up the database'),(161,9,'2016-01-19 17:25:00','192.168.1.3','success','user logged in'),(162,9,'2016-01-19 17:26:54','192.168.1.3','success','user logged out'),(163,1,'2016-01-19 17:34:05','192.168.1.3','success','backed up the database'),(164,1,'2016-01-19 17:34:05','192.168.1.3','success','user logged in'),(165,1,'2016-01-19 17:34:08','192.168.1.3','success','user logged out'),(166,1,'2016-01-19 17:35:37','192.168.1.3','success','backed up the database'),(167,1,'2016-01-19 17:35:37','192.168.1.3','success','user logged in'),(168,1,'2016-01-19 17:50:40','192.168.1.3','success','backed up the database'),(169,1,'2016-01-19 17:50:40','192.168.1.3','success','user logged in'),(170,1,'2016-01-19 18:02:41','192.168.1.3','success','backed up the database'),(171,1,'2016-01-19 18:02:41','192.168.1.3','success','user logged in'),(172,1,'2016-01-19 18:11:16','192.168.1.3','success','user logged out'),(173,3,'2016-01-19 18:11:28','192.168.1.3','success','backed up the database'),(174,3,'2016-01-19 18:11:28','192.168.1.3','success','user logged in'),(175,3,'2016-01-19 18:28:42','192.168.1.3','success','user logged out'),(176,11,'2016-01-19 18:30:17','192.168.1.3','success','backed up the database'),(177,11,'2016-01-19 18:30:17','192.168.1.3','success','user logged in'),(178,11,'2016-01-19 18:31:09','192.168.1.3','success','registered child'),(179,11,'2016-01-19 18:36:41','192.168.1.3','success','user logged out'),(180,1,'2016-01-19 18:36:46','192.168.1.3','success','backed up the database'),(181,1,'2016-01-19 18:36:46','192.168.1.3','success','user logged in'),(182,1,'2016-01-19 18:37:18','192.168.1.3','success','user logged out'),(183,11,'2016-01-19 18:37:22','192.168.1.3','success','backed up the database'),(184,11,'2016-01-19 18:37:22','192.168.1.3','success','user logged in'),(185,11,'2016-01-19 18:37:47','192.168.1.3','success','registered application'),(186,11,'2016-01-19 18:38:28','192.168.1.3','success','user logged out'),(187,1,'2016-01-19 18:38:35','192.168.1.3','success','backed up the database'),(188,1,'2016-01-19 18:38:35','192.168.1.3','success','user logged in'),(189,1,'2016-01-19 18:39:03','192.168.1.3','success','user logged out'),(190,11,'2016-01-19 18:39:09','192.168.1.3','success','backed up the database'),(191,11,'2016-01-19 18:39:09','192.168.1.3','success','user logged in'),(192,11,'2016-01-19 18:39:48','192.168.1.3','success','registered application'),(193,11,'2016-01-19 18:40:31','192.168.1.3','success','user logged out'),(194,1,'2016-01-19 18:40:35','192.168.1.3','success','backed up the database'),(195,1,'2016-01-19 18:40:35','192.168.1.3','success','user logged in'),(196,1,'2016-01-19 18:41:11','192.168.1.3','success','user logged out'),(197,11,'2016-01-19 18:41:20','192.168.1.3','success','backed up the database'),(198,11,'2016-01-19 18:41:20','192.168.1.3','success','user logged in'),(199,11,'2016-01-19 18:41:52','192.168.1.3','success','user logged out'),(200,1,'2016-01-19 18:44:22','192.168.1.3','success','backed up the database'),(201,1,'2016-01-19 18:44:22','192.168.1.3','success','user logged in'),(202,1,'2016-01-19 18:44:22','192.168.1.3','success','backed up the database'),(203,1,'2016-01-19 18:44:23','192.168.1.3','success','user logged in'),(204,1,'2016-01-19 18:46:24','192.168.1.3','success','user logged out'),(205,11,'2016-01-19 18:46:39','192.168.1.3','success','backed up the database'),(206,11,'2016-01-19 18:46:39','192.168.1.3','success','user logged in'),(207,11,'2016-01-19 18:52:54','192.168.1.3','success','backed up the database'),(208,11,'2016-01-19 18:52:54','192.168.1.3','success','user logged in'),(209,11,'2016-01-19 18:56:10','192.168.1.3','success','user logged out'),(210,1,'2016-01-20 05:44:02','192.168.1.2','success','backed up the database'),(211,1,'2016-01-20 05:44:02','192.168.1.2','success','user logged in'),(212,1,'2016-01-20 05:44:34','192.168.1.2','success','user logged out'),(213,1,'2016-01-20 05:45:35','192.168.1.2','success','backed up the database'),(214,1,'2016-01-20 05:45:35','192.168.1.2','success','user logged in'),(215,1,'2016-01-20 06:06:29','192.168.1.2','success','user logged out'),(216,1,'2016-01-20 06:19:06','10.8.108.42','error','failed database back up'),(217,1,'2016-01-20 06:19:06','10.8.108.42','success','user logged in'),(218,1,'2016-01-20 06:19:13','10.8.108.42','success','user logged out'),(219,11,'2016-01-20 06:19:20','10.8.108.42','error','failed database back up'),(220,11,'2016-01-20 06:19:21','10.8.108.42','success','user logged in'),(221,11,'2016-01-20 06:19:27','10.8.108.42','success','user logged out'),(222,3,'2016-01-20 06:19:53','10.8.108.42','error','failed database back up'),(223,3,'2016-01-20 06:19:53','10.8.108.42','success','user logged in'),(224,3,'2016-01-20 06:21:36','10.8.108.42','success','user logged out'),(225,1,'2016-01-20 06:21:45','10.8.108.42','error','failed database back up'),(226,1,'2016-01-20 06:21:45','10.8.108.42','success','user logged in'),(227,1,'2016-01-20 06:32:36','10.8.108.42','error','failed database back up'),(228,1,'2016-01-20 06:32:36','10.8.108.42','success','user logged in'),(229,1,'2016-01-20 06:32:36','10.8.108.42','error','failed database back up'),(230,1,'2016-01-20 06:32:36','10.8.108.42','success','user logged in'),(231,1,'2016-01-20 06:37:30','10.8.108.42','error','failed database back up'),(232,1,'2016-01-20 06:37:30','10.8.108.42','success','user logged in'),(233,1,'2016-01-20 07:53:18','100.65.28.22','error','failed database back up'),(234,1,'2016-01-20 07:53:18','100.65.28.22','success','user logged in'),(235,1,'2016-01-20 07:56:46','100.65.28.22','success','user logged out'),(236,16,'2016-01-20 08:05:58','100.65.28.22','error','failed database back up'),(237,16,'2016-01-20 08:05:58','100.65.28.22','success','user logged in'),(238,16,'2016-01-20 08:06:04','100.65.28.22','success','user logged out'),(239,1,'2016-01-20 10:42:21','100.65.43.239','error','failed database back up'),(240,1,'2016-01-20 10:42:21','100.65.43.239','success','user logged in'),(241,1,'2016-01-20 10:45:01','100.65.43.239','success','user logged out'),(242,11,'2016-01-20 11:12:38','100.65.43.239','error','failed database back up'),(243,11,'2016-01-20 11:12:38','100.65.43.239','success','user logged in'),(244,11,'2016-01-20 11:19:06','100.65.43.239','success','user logged out'),(245,11,'2016-01-20 11:19:24','100.65.43.239','error','failed database back up'),(246,11,'2016-01-20 11:19:24','100.65.43.239','success','user logged in'),(247,11,'2016-01-20 11:21:14','100.65.43.239','success','user logged out'),(248,34,'2016-01-20 11:21:28','100.65.43.239','error','failed database back up'),(249,34,'2016-01-20 11:21:28','100.65.43.239','success','user logged in'),(250,34,'2016-01-20 11:24:31','100.65.43.239','success','registered child'),(251,34,'2016-01-20 11:25:22','100.65.43.239','success','registered child'),(252,34,'2016-01-20 11:26:05','100.65.43.239','success','user logged out'),(253,35,'2016-01-20 11:26:29','100.65.43.239','error','failed database back up'),(254,35,'2016-01-20 11:26:29','100.65.43.239','success','user logged in'),(255,35,'2016-01-20 11:27:29','100.65.43.239','success','registered child'),(256,35,'2016-01-20 11:29:46','100.65.43.239','success','registered child'),(257,35,'2016-01-20 11:30:33','100.65.43.239','success','user logged out'),(258,36,'2016-01-20 11:33:50','100.65.43.239','error','failed database back up'),(259,36,'2016-01-20 11:33:50','100.65.43.239','success','user logged in'),(260,36,'2016-01-20 11:35:14','100.65.43.239','success','registered child'),(261,36,'2016-01-20 11:36:14','100.65.43.239','success','registered child'),(262,36,'2016-01-20 11:36:35','100.65.43.239','success','user logged out'),(263,34,'2016-01-20 11:37:03','100.65.43.239','error','failed database back up'),(264,34,'2016-01-20 11:37:03','100.65.43.239','success','user logged in'),(265,34,'2016-01-20 11:45:48','100.65.43.239','success','registered application'),(266,34,'2016-01-20 11:47:46','100.65.43.239','success','registered application'),(267,34,'2016-01-20 11:48:47','100.65.43.239','success','registered application'),(268,34,'2016-01-20 11:49:12','100.65.43.239','success','user logged out'),(269,35,'2016-01-20 11:49:54','100.65.43.239','error','failed database back up'),(270,35,'2016-01-20 11:49:54','100.65.43.239','success','user logged in'),(271,35,'2016-01-20 11:51:05','100.65.43.239','error','failed registering application'),(272,35,'2016-01-20 11:51:39','100.65.43.239','success','registered application'),(273,35,'2016-01-20 11:52:20','100.65.43.239','success','registered application'),(274,35,'2016-01-20 12:07:05','100.65.43.239','success','registered application'),(275,35,'2016-01-20 12:16:18','100.65.43.239','success','user logged out'),(276,36,'2016-01-20 12:19:06','100.65.43.239','error','failed database back up'),(277,36,'2016-01-20 12:19:07','100.65.43.239','success','user logged in'),(278,36,'2016-01-20 12:21:08','100.65.43.239','success','registered application'),(279,36,'2016-01-20 12:21:24','100.65.43.239','success','registered application'),(280,36,'2016-01-20 12:21:49','100.65.43.239','success','registered application'),(281,36,'2016-01-20 12:22:31','100.65.43.239','success','registered application'),(282,36,'2016-01-20 12:23:33','100.65.43.239','success','registered application'),(283,36,'2016-01-20 12:30:10','100.65.43.239','success','user logged out'),(284,1,'2016-01-20 13:12:23','192.168.1.2','success','user logged out'),(285,1,'2016-01-20 13:12:29','192.168.1.2','success','backed up the database'),(286,1,'2016-01-20 13:12:29','192.168.1.2','success','user logged in'),(287,1,'2016-01-20 13:13:47','192.168.1.2','success','backed up the database'),(288,1,'2016-01-20 13:13:47','192.168.1.2','success','user logged in'),(289,1,'2016-01-20 13:39:43','192.168.1.2','success','user logged out'),(290,1,'2016-01-20 13:39:47','192.168.1.2','success','backed up the database'),(291,1,'2016-01-20 13:39:47','192.168.1.2','success','user logged in'),(292,1,'2016-01-20 14:04:43','192.168.1.2','error','error user login'),(293,1,'2016-01-20 14:04:47','192.168.1.2','success','backed up the database'),(294,1,'2016-01-20 14:04:47','192.168.1.2','success','user logged in'),(295,1,'2016-01-20 14:11:58','192.168.1.2','success','user logged out'),(296,3,'2016-01-20 14:12:06','192.168.1.2','success','backed up the database'),(297,3,'2016-01-20 14:12:06','192.168.1.2','success','user logged in'),(298,3,'2016-01-20 14:12:23','192.168.1.2','success','user logged out'),(299,1,'2016-01-20 14:13:25','192.168.1.2','success','backed up the database'),(300,1,'2016-01-20 14:13:25','192.168.1.2','success','user logged in'),(301,1,'2016-01-20 14:19:53','192.168.1.2','success','user logged out'),(302,1,'2016-01-20 14:21:17','192.168.1.2','success','backed up the database'),(303,1,'2016-01-20 14:21:17','192.168.1.2','success','user logged in'),(304,1,'2016-01-20 14:21:37','192.168.1.2','success','user logged out'),(305,3,'2016-01-20 14:21:42','192.168.1.2','success','backed up the database'),(306,3,'2016-01-20 14:21:42','192.168.1.2','success','user logged in'),(307,3,'2016-01-20 14:21:45','192.168.1.2','success','user logged out'),(308,1,'2016-01-20 14:21:48','192.168.1.2','success','backed up the database'),(309,1,'2016-01-20 14:21:48','192.168.1.2','success','user logged in'),(310,1,'2016-01-20 14:22:04','192.168.1.2','success','user logged out'),(311,36,'2016-01-20 14:22:08','192.168.1.2','success','backed up the database'),(312,36,'2016-01-20 14:22:08','192.168.1.2','success','user logged in'),(313,36,'2016-01-20 14:24:16','192.168.1.2','success','user logged out'),(314,35,'2016-01-20 14:24:29','192.168.1.2','success','backed up the database'),(315,35,'2016-01-20 14:24:29','192.168.1.2','success','user logged in'),(316,35,'2016-01-20 14:26:47','192.168.1.2','success','user logged out'),(317,32,'2016-01-20 14:27:05','192.168.1.2','success','backed up the database'),(318,32,'2016-01-20 14:27:05','192.168.1.2','success','user logged in'),(319,32,'2016-01-20 14:28:13','192.168.1.2','success','registered child'),(320,32,'2016-01-20 14:29:48','192.168.1.2','error','failed registering application'),(321,32,'2016-01-20 14:30:22','192.168.1.2','error','failed registering application'),(322,32,'2016-01-20 14:31:22','192.168.1.2','error','failed registering application'),(323,32,'2016-01-20 14:31:36','192.168.1.2','error','failed registering application'),(324,32,'2016-01-20 14:32:11','192.168.1.2','success','registered application'),(325,32,'2016-01-20 14:33:28','192.168.1.2','success','registered application'),(326,32,'2016-01-20 14:43:49','192.168.1.2','success','user logged out'),(327,36,'2016-01-20 14:44:15','192.168.1.2','success','backed up the database'),(328,36,'2016-01-20 14:44:15','192.168.1.2','success','user logged in'),(329,36,'2016-01-20 14:45:16','192.168.1.2','success','user logged out'),(330,32,'2016-01-20 14:45:24','192.168.1.2','success','backed up the database'),(331,32,'2016-01-20 14:45:24','192.168.1.2','success','user logged in'),(332,32,'2016-01-20 14:47:23','192.168.1.2','success','user logged out'),(333,1,'2016-01-20 14:47:30','192.168.1.2','success','backed up the database'),(334,1,'2016-01-20 14:47:30','192.168.1.2','success','user logged in'),(335,1,'2016-01-20 14:49:02','192.168.1.2','success','user logged out'),(336,37,'2016-01-20 14:49:46','192.168.1.2','success','backed up the database'),(337,37,'2016-01-20 14:49:46','192.168.1.2','success','user logged in'),(338,37,'2016-01-20 14:50:37','192.168.1.2','success','registered child'),(339,37,'2016-01-20 14:53:02','192.168.1.2','error','failed registering application'),(340,37,'2016-01-20 14:54:33','192.168.1.2','error','failed registering application'),(341,37,'2016-01-20 14:55:39','192.168.1.2','error','failed registering application'),(342,37,'2016-01-20 14:56:14','192.168.1.2','success','registered application'),(343,37,'2016-01-20 15:02:43','192.168.1.2','success','user logged out'),(344,36,'2016-01-20 15:02:58','192.168.1.2','success','backed up the database'),(345,36,'2016-01-20 15:02:58','192.168.1.2','success','user logged in'),(346,36,'2016-01-20 15:04:05','192.168.1.2','success','user logged out'),(347,1,'2016-01-20 15:04:29','192.168.1.2','success','backed up the database'),(348,1,'2016-01-20 15:04:29','192.168.1.2','success','user logged in'),(349,1,'2016-01-20 15:05:48','192.168.1.2','success','user logged out'),(350,1,'2016-01-20 15:13:16','192.168.1.2','success','backed up the database'),(351,1,'2016-01-20 15:13:16','192.168.1.2','success','user logged in'),(352,1,'2016-01-20 15:13:35','192.168.1.2','success','user logged out'),(353,22,'2016-01-20 15:16:21','192.168.1.2','success','backed up the database'),(354,22,'2016-01-20 15:16:21','192.168.1.2','success','user logged in'),(355,22,'2016-01-20 15:17:26','192.168.1.2','success','user logged out'),(356,1,'2016-01-20 15:17:30','192.168.1.2','success','backed up the database'),(357,1,'2016-01-20 15:17:30','192.168.1.2','success','user logged in'),(358,1,'2016-01-20 15:17:54','192.168.1.2','success','user logged out'),(359,1,'2016-01-20 15:47:55','192.168.1.2','success','backed up the database'),(360,1,'2016-01-20 15:47:55','192.168.1.2','success','user logged in'),(361,1,'2016-01-20 16:01:00','192.168.1.2','success','user logged out'),(362,18,'2016-01-20 16:02:19','192.168.1.2','success','backed up the database'),(363,18,'2016-01-20 16:02:19','192.168.1.2','success','user logged in'),(364,18,'2016-01-20 16:02:31','192.168.1.2','success','user logged out'),(365,12,'2016-01-20 16:05:39','192.168.1.2','success','backed up the database'),(366,12,'2016-01-20 16:05:39','192.168.1.2','success','user logged in'),(367,12,'2016-01-20 16:06:06','192.168.1.2','success','user logged out'),(368,8,'2016-01-20 16:06:23','192.168.1.2','success','backed up the database'),(369,8,'2016-01-20 16:06:23','192.168.1.2','success','user logged in'),(370,8,'2016-01-20 16:19:18','192.168.1.2','success','user logged out'),(371,1,'2016-01-20 16:41:16','192.168.1.2','success','backed up the database'),(372,1,'2016-01-20 16:41:16','192.168.1.2','success','user logged in'),(373,1,'2016-01-20 16:42:00','192.168.1.2','success','user logged out'),(374,22,'2016-01-20 16:42:08','192.168.1.2','success','backed up the database'),(375,22,'2016-01-20 16:42:08','192.168.1.2','success','user logged in'),(376,22,'2016-01-20 16:42:51','192.168.1.2','success','user logged out'),(377,1,'2016-01-20 16:42:55','192.168.1.2','success','backed up the database'),(378,1,'2016-01-20 16:42:55','192.168.1.2','success','user logged in'),(379,1,'2016-01-20 16:43:26','192.168.1.2','success','user logged out'),(380,12,'2016-01-20 16:43:33','192.168.1.2','success','backed up the database'),(381,12,'2016-01-20 16:43:33','192.168.1.2','success','user logged in'),(382,12,'2016-01-20 16:44:31','192.168.1.2','success','user logged out'),(383,11,'2016-01-20 16:46:03','192.168.1.2','success','backed up the database'),(384,11,'2016-01-20 16:46:03','192.168.1.2','success','user logged in'),(385,11,'2016-01-20 16:48:56','192.168.1.2','success','user logged out'),(386,1,'2016-01-21 02:00:32','169.254.51.158','success','backed up the database'),(387,1,'2016-01-21 02:00:32','169.254.51.158','success','user logged in'),(388,1,'2016-01-21 02:08:59','192.168.1.2','success','user logged out'),(389,12,'2016-01-21 02:09:16','192.168.1.2','success','backed up the database'),(390,12,'2016-01-21 02:09:16','192.168.1.2','success','user logged in'),(391,12,'2016-01-21 02:09:42','192.168.1.2','success','user logged out'),(392,22,'2016-01-21 02:09:50','192.168.1.2','success','backed up the database'),(393,22,'2016-01-21 02:09:50','192.168.1.2','success','user logged in'),(394,22,'2016-01-21 02:16:35','192.168.1.2','success','user logged out'),(395,11,'2016-01-21 02:16:39','192.168.1.2','success','backed up the database'),(396,11,'2016-01-21 02:16:39','192.168.1.2','success','user logged in'),(397,11,'2016-01-21 02:18:26','192.168.1.2','success','user logged out'),(398,22,'2016-01-21 02:18:32','192.168.1.2','success','backed up the database'),(399,22,'2016-01-21 02:18:32','192.168.1.2','success','user logged in'),(400,22,'2016-01-21 02:20:06','192.168.1.2','success','user logged out'),(401,22,'2016-01-21 02:20:14','192.168.1.2','success','backed up the database'),(402,22,'2016-01-21 02:20:14','192.168.1.2','success','user logged in'),(403,22,'2016-01-21 02:24:19','192.168.1.2','success','user logged out'),(404,1,'2016-01-21 02:24:25','192.168.1.2','success','backed up the database'),(405,1,'2016-01-21 02:24:25','192.168.1.2','success','user logged in'),(406,1,'2016-01-21 02:30:33','192.168.1.2','success','user logged out'),(407,22,'2016-01-21 02:30:42','192.168.1.2','success','backed up the database'),(408,22,'2016-01-21 02:30:42','192.168.1.2','success','user logged in'),(409,22,'2016-01-21 02:30:56','192.168.1.2','success','user logged out'),(410,39,'2016-01-21 03:09:48','192.168.1.2','success','backed up the database'),(411,39,'2016-01-21 03:09:48','192.168.1.2','success','user logged in'),(412,39,'2016-01-21 03:10:33','192.168.1.2','success','registered child'),(413,39,'2016-01-21 03:11:47','192.168.1.2','success','registered application'),(414,39,'2016-01-21 03:12:00','192.168.1.2','success','user logged out'),(415,22,'2016-01-21 03:12:13','192.168.1.2','success','backed up the database'),(416,22,'2016-01-21 03:12:13','192.168.1.2','success','user logged in'),(417,22,'2016-01-21 03:12:28','192.168.1.2','success','user logged out'),(418,39,'2016-01-21 03:12:40','192.168.1.2','success','backed up the database'),(419,39,'2016-01-21 03:12:40','192.168.1.2','success','user logged in'),(420,39,'2016-01-21 03:12:48','192.168.1.2','success','user logged out'),(421,1,'2016-01-21 03:12:55','192.168.1.2','success','backed up the database'),(422,1,'2016-01-21 03:12:55','192.168.1.2','success','user logged in'),(423,1,'2016-01-21 03:13:23','192.168.1.2','success','user logged out'),(424,13,'2016-01-21 03:13:32','192.168.1.2','success','backed up the database'),(425,13,'2016-01-21 03:13:32','192.168.1.2','success','user logged in'),(426,13,'2016-01-21 03:14:05','192.168.1.2','success','user logged out'),(427,39,'2016-01-21 03:14:11','192.168.1.2','success','backed up the database'),(428,39,'2016-01-21 03:14:11','192.168.1.2','success','user logged in'),(429,39,'2016-01-21 03:14:24','192.168.1.2','success','user logged out'),(430,12,'2016-01-21 03:14:28','192.168.1.2','success','backed up the database'),(431,12,'2016-01-21 03:14:28','192.168.1.2','success','user logged in'),(432,12,'2016-01-21 03:17:03','192.168.1.2','success','user logged out'),(433,12,'2016-01-21 03:17:07','192.168.1.2','success','backed up the database'),(434,12,'2016-01-21 03:17:07','192.168.1.2','success','user logged in'),(435,12,'2016-01-21 03:17:09','192.168.1.2','success','user logged out'),(436,22,'2016-01-21 03:17:17','192.168.1.2','success','backed up the database'),(437,22,'2016-01-21 03:17:17','192.168.1.2','success','user logged in'),(438,22,'2016-01-21 03:21:07','192.168.1.2','success','user logged out'),(439,22,'2016-01-21 03:21:23','192.168.1.2','success','backed up the database'),(440,22,'2016-01-21 03:21:23','192.168.1.2','success','user logged in'),(441,22,'2016-01-21 03:24:26','192.168.1.2','success','user logged out'),(442,1,'2016-01-21 03:32:29','192.168.1.2','success','backed up the database'),(443,1,'2016-01-21 03:32:29','192.168.1.2','success','user logged in'),(444,1,'2016-01-21 03:36:33','192.168.1.2','success','user logged out'),(445,1,'2016-01-21 03:37:21','192.168.1.2','success','backed up the database'),(446,1,'2016-01-21 03:37:21','192.168.1.2','success','user logged in'),(447,1,'2016-01-21 03:55:32','192.168.1.2','success','user logged out'),(448,1,'2016-01-21 03:56:17','192.168.1.2','success','backed up the database'),(449,1,'2016-01-21 03:56:17','192.168.1.2','success','user logged in'),(450,1,'2016-01-21 03:59:13','192.168.1.2','success','user logged out'),(451,1,'2016-01-21 04:01:41','192.168.1.2','success','backed up the database'),(452,1,'2016-01-21 04:01:41','192.168.1.2','success','user logged in'),(453,1,'2016-01-21 04:03:56','192.168.1.2','success','user logged out'),(454,1,'2016-01-21 04:39:06','192.168.1.2','success','backed up the database'),(455,1,'2016-01-21 04:39:06','192.168.1.2','success','user logged in'),(456,1,'2016-01-21 04:39:11','192.168.1.2','success','user logged out'),(457,22,'2016-01-21 04:39:24','192.168.1.2','success','backed up the database'),(458,22,'2016-01-21 04:39:24','192.168.1.2','success','user logged in'),(459,22,'2016-01-21 04:39:44','192.168.1.2','success','user logged out'),(460,1,'2016-01-21 04:40:59','192.168.1.2','success','backed up the database'),(461,1,'2016-01-21 04:40:59','192.168.1.2','success','user logged in'),(462,1,'2016-01-21 04:55:47','192.168.1.2','success','user logged out'),(463,40,'2016-01-21 05:03:48','192.168.1.2','success','backed up the database'),(464,40,'2016-01-21 05:03:48','192.168.1.2','success','user logged in'),(465,40,'2016-01-21 05:04:19','192.168.1.2','success','registered child'),(466,40,'2016-01-21 05:05:33','192.168.1.2','success','registered application'),(467,40,'2016-01-21 05:05:49','192.168.1.2','success','user logged out'),(468,22,'2016-01-21 05:06:28','192.168.1.2','success','backed up the database'),(469,22,'2016-01-21 05:06:28','192.168.1.2','success','user logged in'),(470,22,'2016-01-21 05:08:08','192.168.1.2','success','user logged out'),(471,1,'2016-01-21 05:08:25','192.168.1.2','success','backed up the database'),(472,1,'2016-01-21 05:08:25','192.168.1.2','success','user logged in'),(473,1,'2016-01-21 05:10:58','192.168.1.2','success','user logged out'),(474,12,'2016-01-21 05:11:17','192.168.1.2','success','backed up the database'),(475,12,'2016-01-21 05:11:17','192.168.1.2','success','user logged in'),(476,12,'2016-01-21 05:12:09','192.168.1.2','success','user logged out'),(477,11,'2016-01-21 05:13:17','192.168.1.2','success','backed up the database'),(478,11,'2016-01-21 05:13:17','192.168.1.2','success','user logged in'),(479,11,'2016-01-21 05:23:14','192.168.1.2','success','user logged out'),(480,1,'2016-01-21 05:23:22','192.168.1.2','success','backed up the database'),(481,1,'2016-01-21 05:23:22','192.168.1.2','success','user logged in'),(482,1,'2016-01-21 05:32:46','169.254.51.158','success','user logged out');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `province` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `division_secretary` int(11) NOT NULL,
  `grama_division` int(11) NOT NULL,
  PRIMARY KEY (`parent_id`),
  KEY `fk_parent_user_idx` (`user_id`),
  KEY `fk_parent_grama_div1_idx` (`grama_division`),
  KEY `fk_parent_division_sec1_idx` (`division_secretary`),
  KEY `fk_parent_district1_idx` (`district`),
  KEY `fk_parent_province1_idx` (`province`),
  CONSTRAINT `fk_parent_district1` FOREIGN KEY (`district`) REFERENCES `district` (`district_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parent_division_sec1` FOREIGN KEY (`division_secretary`) REFERENCES `division_sec` (`divisionsec_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parent_grama_div1` FOREIGN KEY (`grama_division`) REFERENCES `grama_div` (`gramadiv_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parent_province1` FOREIGN KEY (`province`) REFERENCES `province` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parent_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (2,3,'SriLankan','Buddhism',3,7,1,1),(3,11,'SriLankan','Buddhism',1,1,1,2),(4,31,'SriLankan','Buddhism',1,1,1,3),(5,32,'SriLankan','Christianity',1,1,1,2),(6,33,'SriLankan','Christianity',1,1,3,5),(7,34,'SriLankan','Buddhism',1,2,1,2),(8,35,'SriLankan','Buddhism',1,3,1,6),(9,36,'SriLankan','Hinduism',1,3,1,7),(10,37,'SriLankan','Buddhism',1,3,3,3),(11,38,'SriLankan','Christianity',1,2,1,2),(12,39,'SriLankan','Buddhism',1,1,1,2),(13,40,'SriLankan','Buddhism',1,1,1,2);
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `past_pupil`
--

DROP TABLE IF EXISTS `past_pupil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `past_pupil` (
  `pp_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `to_grade` int(11) DEFAULT NULL,
  `from_grade` int(11) DEFAULT NULL,
  `to_year` int(11) DEFAULT NULL,
  `from_year` int(11) DEFAULT NULL,
  KEY `fk_past_pupil_student1_idx` (`student_id`),
  KEY `fk_past_pupil_student2_idx` (`pp_id`),
  CONSTRAINT `fk_past_pupil_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_past_pupil_student2` FOREIGN KEY (`pp_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `past_pupil`
--

LOCK TABLES `past_pupil` WRITE;
/*!40000 ALTER TABLE `past_pupil` DISABLE KEYS */;
INSERT INTO `past_pupil` VALUES (3,13,11,1,1985,1985);
/*!40000 ALTER TABLE `past_pupil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal`
--

DROP TABLE IF EXISTS `principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal` (
  `principal_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`principal_id`),
  KEY `fk_principal_user1_idx` (`user_id`),
  KEY `fk_principal_school1_idx` (`school_id`),
  CONSTRAINT `fk_principal_school1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_principal_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal`
--

LOCK TABLES `principal` WRITE;
/*!40000 ALTER TABLE `principal` DISABLE KEYS */;
INSERT INTO `principal` VALUES (1,8,1,'I'),(2,10,2,'I'),(3,12,3,'II'),(4,13,4,'IV'),(5,14,5,'I'),(6,15,15,'II'),(7,16,8,'I'),(8,17,9,'I'),(9,18,14,'II'),(10,19,10,'II'),(11,20,13,'I'),(12,21,7,'I');
/*!40000 ALTER TABLE `principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'63','Western',1),(2,'64','Central',1),(3,'65','Southern',1),(4,'66','Northern',1),(5,'67','Eastern',1),(6,'68','North-Western',1),(7,'69','North-Central',1),(8,'70','Uva',1),(9,'71','Sabaragamuwa',1);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry`
--

DROP TABLE IF EXISTS `registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registry` (
  `registry_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `distance` varchar(45) DEFAULT NULL,
  `pastpupil_score` int(11) DEFAULT NULL,
  `sibling_score` int(11) DEFAULT NULL,
  `distance_score` varchar(45) DEFAULT NULL,
  `registered_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`registry_id`),
  KEY `fk_registry_student1_idx` (`student_id`),
  KEY `fk_registry_school1_idx` (`school_id`),
  KEY `status_index` (`registered_status`),
  CONSTRAINT `fk_registry_school1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_registry_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry`
--

LOCK TABLES `registry` WRITE;
/*!40000 ALTER TABLE `registry` DISABLE KEYS */;
INSERT INTO `registry` VALUES (1,3,1,'2016-01-19','50',0,0,'25','calculated'),(2,4,2,'2016-01-19','150',0,0,'0','rejected:Invalid application.'),(3,5,3,'2016-01-20','12',0,0,'45','passed'),(4,5,4,'2016-01-20','30',0,0,'35','calculated'),(5,6,3,'2016-01-20','12',0,0,'0','rejected:invalid details'),(6,6,4,'2016-01-20','20',0,0,'45','calculated'),(7,7,3,'2016-01-20','12',0,0,'45','calculated'),(8,8,8,'2016-01-20','30',0,0,'35','calculated'),(9,9,8,'2016-01-20','30',0,0,'35','calculated'),(10,8,7,'2016-01-20','30',0,0,'35','calculated'),(11,10,15,'2016-01-20','45',0,0,'0','rejected:Invalid application.'),(12,10,14,'2016-01-20','50',0,0,'0','rejected:Invalid application.'),(13,10,13,'2016-01-20','56',0,0,'25','calculated'),(14,10,10,'2016-01-20','66',0,0,'25','calculated'),(15,10,7,'2016-01-20','12',0,0,'0','rejected:Invalid application.'),(20,12,13,'2016-01-20','100',0,0,'15','calculated'),(21,12,8,'2016-01-20','85',0,0,'25','calculated'),(25,13,10,'2016-01-20','62',0,0,'25','calculated'),(27,14,4,'2016-01-21','25',0,0,'35','calculated'),(28,15,8,'2016-01-21','20',0,0,'45','calculated');
/*!40000 ALTER TABLE `registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'Maliyadeva College','Kurunegala','National','Kurunegala','North-Western','0372222222',1),(2,'Richmond College','Galle','National','Galle','Southern','0915454545',1),(3,'Devi Balika Vidyalaya','Colombo','National','Colombo','Western','0113569956',1),(4,'Visakha Vidyalaya','Colombo','National','Colombo','Western','0116999665',1),(5,'Musaeus College','58 Rosmead Pl, Colombo','National','Colombo','Western','0115689654',1),(6,'Anula Vidyalaya','Nugegoda','National','Colombo','Western','0114589874',1),(7,'Isipathana College','Park Ln, Colombo','National','Colombo','Western','0118956123',1),(8,'Ananda College','Kularathna Mawatha, Colombo 10','National','Colombo','Western','0114589654',1),(9,'Rathnawali Balika Maha Vidyalaya','Borella','Provincial','Colombo','Western','0117845963',1),(10,'St Peter\'s College','Bambalapitiya, Colombo 6','Provincial','Colombo','Western','0112578456',1),(11,'Zahira College','Maradana','Provincial','Colombo','Western','0118956321',1),(12,'Good Shepherd College','Colombo','Provincial','Colombo','Western','0115678452',1),(13,'Royal College','Colombo','National','Colombo','Western','0118965741',1),(14,'Nalanda College','Colombo','National','Colombo','Western','0118956745',1),(15,'President\'s College','Sri Jayawardenapura Kotte','National','Colombo','Western','0115623785',1);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Central Collage Anuradhapura','8.335498',' 80.407297','Anuradhapura',1),(2,'Badulla Central College','6.996944',' 81.054248','Badulla',1),(3,'Dharmadutha College Badulla','6.986784',' 81.060448','Badulla',1),(4,'Zahira College','7.399470',' 81.840626','Batticaloa',1),(5,'Ananda College,Colombo','6.924988',' 79.870666','Colombo',1),(6,'Anula Vidyalaya, Nugegoda','6.872657',' 79.884776','Colombo',1),(7,'Bishop\'s College','6.914934',' 79.855243','Colombo',1),(8,'C/Ramanathan Hindu Ladies College','6.884273',' 79.860603','Colombo',1),(9,'Central college Piliyandala','6.799896',' 79.920987','Colombo',1),(10,'Rathmalana Hindu Ladies College','6.891367',' 79.858705','Colombo',1),(11,'D.S.Senanayeka College','6.917611',' 79.875528','Colombo',1),(12,'Devi Balika Vidyalaya, Colombo 08','6.910843',' 79.882522','Colombo',1),(13,'Dharmapala Vidyalaya, Pannipitiya','6.844213',' 79.953894','Colombo',1),(14,'Highlands College','6.844299',' 79.929772','Colombo',1),(15,'Hindu College- Colombo','6.884405',' 79.861315','Colombo',1),(16,'Isipathana College','6.887785',' 79.868119','Colombo',1),(17,'Mahanama College, Colombo 3','6.906345',' 79.854007','Colombo',1),(18,'Musaeus College','6.913939',' 79.868391','Colombo',1),(19,'Nalanda College','6.925003',' 79.875536','Colombo',1),(20,'President\'s College, Kotte','6.907193',' 79.892639','Colombo',1),(21,'Prince of Wales\' College','6.785481',' 79.882732','Colombo',1),(22,'Royal College, Colombo-7.','6.905055',' 79.860865','Colombo',1),(23,'Sirimavo Bandaranaike Vidyalaya, Colombo 07.','6.897380',' 79.863490','Colombo',1),(24,'St. Joseph\'s College, Colombo 10','6.925138',' 79.859316','Colombo',1),(25,'St.Sebastian\'s College','6.782245',' 79.882056','Colombo',1),(26,'St. Bridget\'s Convent','6.910176',' 79.865849','Colombo',1),(27,'St. Joseph\'s College','6.924845',' 79.859670','Colombo',1),(28,'St. Thomas\' College','6.837678',' 79.865013','Colombo',1),(29,'Thurstan College','6.903633',' 79.859433','Colombo',1),(30,'Vidura Colllege','6.895033',' 79.887911','Colombo',1),(31,'Vivekananda College','6.943058',' 79.860743','Colombo',1),(32,'Visakha Vidyalaya','6.891883',' 79.859587','Colombo',1),(33,'Ananda Central College, Elpitiya','6.295935',' 80.166157','Galle',1),(34,'Dharmasoka College, Ambalangoda','6.240902',' 80.054715','Galle',1),(35,'Mahinda College, Galle','6.050462',' 80.214964','Galle',1),(36,'Richmond College,Galle','6.052557',' 80.204603','Galle',1),(37,'Sacred Heart Convent Girls\' School','6.036671',' 80.211038','Galle',1),(38,'Sanghamitta College - Galle','6.047592',' 80.212335','Galle',1),(39,'Southlands College, Galle','6.027472',' 80.216391','Galle',1),(40,'St. Aloysius College','6.036147',' 80.212045','Galle',1),(41,'St. Aloysius\' College','6.035875',' 80.212442','Galle',1),(42,'Bandaranayake College, Gampaha','6.955941',' 79.884804','Gampaha',1),(43,'Holly Cross College','6.576660',' 79.963838','Gampaha',1),(44,'Maris Stella College','7.213897',' 79.848910','Gampaha',1),(45,'Rathnavali Balika Vidyalaya','6.918760',' 79.874638','Gampaha',1),(46,'Sri Dharmaloka Central College, Kelaniya','6.960377',' 79.901065','Gampaha',1),(47,'De Mazenod College','7.050789',' 79.907906','Gampaha',1),(48,'Walasmulla National School','6.149882',' 80.698501','Hambanthota',1),(49,'H/Debarawewa national school','6.284016',' 81.265294','Hambantota',1),(50,'H/Kanumuldeniya Maha Vidyalaya','6.155221',' 80.672374','Hambantota',1),(51,'Weerakatiya Rajapaksha Central College','6.135275',' 80.771007','Hambantota',1),(52,'H/Tangalle Balika Vidyalaya','6.021534',' 80.797686','Hambantota',1),(53,'Hartley College','9.828088',' 80.232688','Jaffna',1),(54,'J/Chundikuli Girls\' College','9.656069',' 80.028788','Jaffna',1),(55,'J/Kokuvil Hindu College','9.696269',' 80.015368','Jaffna',1),(56,'J/Vadamaradchy Central Ladie\'s College','6.907692',' 79.857485','Jaffna',1),(57,'J/Vembadi Girls\' High School','9.663432',' 80.015207','Jaffna',1),(58,'J/Victoria college','9.761515',' 79.942715','Jaffna',1),(59,'Jaffna Hindu College','9.678746',' 80.012455','Jaffna',1),(60,'Jaffna Hindu Ladies\' College','9.680191',' 80.018551','Jaffna',1),(61,'Jaffna Mahajana College','9.787116',' 80.022523','Jaffna',1),(62,'Jaffna Uduppiddy American Mission College','9.809652',' 80.172151','Jaffna',1),(63,'Vadamaradchy Central Ladies\' college,Jaffna','9.805613',' 80.206021','Jaffna',1),(64,'CWW Kannangara Central College, Mathugama','6.517250',' 80.120767','Kalutara',1),(65,'Holly Cross College, Kalutara','6.576628',' 79.963870','Kalutara',1),(66,'Kalutara Vidyalaya','6.585871',' 79.964459','Kalutara',1),(67,'Panadura Balika Maha Vidyalaya, Panadura, Kalutara','6.713683',' 79.908148','Kalutara',1),(68,'Sri Sumangala Girls\' School, Panadura','6.702532',' 79.908426','Kalutara',1),(69,'Taxila Central College','6.711383',' 80.063845','Kalutara',1),(70,'Dharmaraja College, Kandy','7.289968',' 80.647958','Kandy',1),(71,'St.Sylvester\'s College','7.297606',' 80.636243','Kandy',1),(72,'Zahira College','7.252946',' 80.454958','Kegalle',1),(73,'St. Joseph\'s Girls Vidyalaya','6.948497',' 79.874189','Kilinochchi',1),(74,'Kn/Kilinochchi Central College','9.380793',' 80.408925','Kilinochchi',1),(75,'Sri Rahaual Central College','7.296898',' 80.232675','Kurunegala',1),(76,'Central College Kuliyapitiya','7.466136',' 80.023821','Kurunegala',1),(77,'Holy Family Convent, Kurunegala','7.486922',' 80.362536','Kurunegala',1),(78,'Ibbagamuwa Central College','7.537910',' 80.451753','Kurunegala',1),(79,'Kuliyapitiya Central College','7.466115',' 80.023821','Kurunegala',1),(80,'Maliyadeva Balika Vidyalaya','7.482338',' 80.363028','Kurunegala',1),(81,'Maliyadeva College, Kurunegala','7.486987',' 80.359210','Kurunegala',1),(82,'St. Anne\'s College, Kurunegala','7.486566',' 80.360471','Kurunegala',1),(83,'St. Anne\'s College','6.081236',' 80.567075','Kurunegala',1),(84,'Zahira College','7.476980',' 80.627418','Matale',1),(85,'MR / Narandeniya National Collage','6.081236',' 80.567075','Matara',1),(86,'MR/Godapitiya Central College','6.089003',' 80.479671','Matara',1),(87,'MR/Vijitha Central College','8.042297',' 81.079400','Matara',1),(88,'Rahula College,Matara','5.953423',' 80.535406','Matara',1),(89,'St. Mary\'s Convent','5.943601',' 80.553032','Matara',1),(90,'St Thomas Girls School','5.953514',' 80.548991','Matara',1),(91,'St. Thomas\' College','5.948904',' 80.543969','Matara',1),(92,'Sujatha Balika Vidyalaya','5.954280',' 80.539058','Matara',1),(93,'Highlands Central College,Hatton','6.890156',' 80.596110','Nuwara Eliya',1),(94,'Royal Central College,Polonnaruwa','7.919192',' 81.003067','Polonnaruwa',1),(95,'Ananda College, Chilaw','7.571760',' 79.799380','Puttalam',1),(96,'Dhammissara National School, Nattandiya','7.411835',' 79.857967','Puttalam',1),(97,'Holy Family Balika Maha Vidyalaya, Wennappuwa.','7.340745',' 79.844730','Puttalam',1),(98,'Joseph Vaz College, Wennappuwa','7.339158',' 79.841765','Puttalam',1),(99,'R/Ferguson High School','6.682576',' 80.399375','Ratnapura',1),(100,'Vavuniya Tamil Madhya Maha Vidyalayam','8.748905',' 80.499689','Vavuniya',1);
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sibling`
--

DROP TABLE IF EXISTS `sibling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sibling` (
  `sibling_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `current_grade` varchar(45) DEFAULT NULL,
  KEY `fk_sibling_student1_idx` (`student_id`),
  KEY `fk_sibling_student2_idx` (`sibling_id`),
  CONSTRAINT `fk_sibling_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sibling_student2` FOREIGN KEY (`sibling_id`) REFERENCES `student` (`student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sibling`
--

LOCK TABLES `sibling` WRITE;
/*!40000 ALTER TABLE `sibling` DISABLE KEYS */;
INSERT INTO `sibling` VALUES (3,10,'3'),(4,12,'4'),(6,12,'7'),(11,8,'10'),(11,13,'2');
/*!40000 ALTER TABLE `sibling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `initials` varchar(10) NOT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `medium` varchar(45) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_parent1_idx` (`parent_id`),
  CONSTRAINT `fk_student_parent1` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (3,'S.D.','Ruwan Kumara Balasooriya','Balasooriya','2005-11-10','Male','Buddhism','Sinhala',1,2),(4,'R.A.','Malsha Ranawaka','Ranawaka','1993-05-10','Female','Buddhism','Sinhala',1,2),(5,'D.A.D.G.S.','Sachithra Dangalla','Dangalla','2005-07-01','Female','Christianity','Sinhala',1,3),(6,'N.A','Naduni Anuradha Herath','Herath','2016-01-20','Female','Buddhism','Sinhala',1,7),(7,'K.A','Kavindya Herath','Herath','2016-01-20','Female','Buddhism','Sinhala',1,7),(8,'H.M.T','Thamara Bandara','Bandara','2016-01-20','Male','Buddhism','Sinhala',1,8),(9,'H.M.C','Chanaka Bandara ','Bandara','2016-01-20','Male','Buddhism','Sinhala',1,8),(10,'S.C','Sisitha Chamika Balasooriya','Balasooriya','2016-01-20','Male','Christianity','Sinhala',1,9),(11,'G.M.C.A','Chamal Anjana Perera','Perera','2016-01-20','Male','Buddhism','Sinhala',1,9),(12,'K.A.','Chathurka Madhushan','Madhushan','2016-01-20','Male','Buddhism','Sinhala',1,5),(13,'K.A.','Amila Karunarathne','Karunarathne','2016-01-20','Male','Christianity','Sinhala',1,10),(14,'K.K.','Kishani Chandi Kalubowila','Kalubowila','2016-01-21','Female','Christianity','Sinhala',1,12),(15,'K.A.','Tharindu Kumarage','Kumarage','2005-01-01','Male','Buddhism','Sinhala',1,13);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telephone` (
  `user_id` int(11) NOT NULL,
  `mobile_number` int(11) DEFAULT NULL,
  `land_line` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_telephone_user1_idx` (`user_id`),
  CONSTRAINT `fk_telephone_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone`
--

LOCK TABLES `telephone` WRITE;
/*!40000 ALTER TABLE `telephone` DISABLE KEYS */;
INSERT INTO `telephone` VALUES (1,775962256,'0377201633'),(3,777777777,'0811111111'),(8,775666666,'0372655555'),(9,775666666,'0113565555'),(10,777656233,'0915465421'),(11,711464664,'0376231364'),(12,775656566,'0646316467'),(13,716665656,'0816535656'),(14,717189256,'0372245896'),(15,777246963,'0118956741'),(16,775698652,'0365589655'),(17,778965478,'0111589556'),(18,774589655,'0112548896'),(19,717858655,'0664588558'),(20,715896665,'0115885554'),(21,718556464,'0115589877'),(22,718598565,'0115588989'),(23,725898989,'0375558896'),(24,715894645,'0115654998'),(25,715888855,'0119997658'),(26,712564564,'0118596555'),(27,725698565,'0112569635'),(28,718955665,'0118599658'),(29,718599658,'011459898'),(30,759966885,'0115544477'),(31,715548996,'0114589625'),(32,788998798,'0114984987'),(33,158965556,'0116558799'),(34,714589666,'0155497897'),(35,777458986,'0346548486'),(36,718956645,'0115569859'),(37,774589651,'0379446544'),(38,775556464,'0369879565'),(39,716565555,'0374656565'),(40,776535656,'0377565655');
/*!40000 ALTER TABLE `telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_level` varchar(45) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','202cb962ac5975b964b7152d234b70','Admin','Chanaka','Lakmal','Kurunegala','923231196V','ldclakmal@gmail.com',1),(3,'dimuthu','4f23603c65b6dcbfea9c4fcbbadb828e','Parent','Dimuthu','Lakmal','Galle','922222222V','dimuthu@gmail.com',1),(8,'maliyadeva','17de8c4193211d4a9a32260565b29b7','Principal','M','Rathnayake','Kurunegala','755555555V','maliyadeva@gmail.com',1),(9,'kasun','31110d8a724dfcbf57eedda7c9dac9','GramaNiladhari','Kasun','Perera','Colombo','805555666V','kasun@gmail.com',1),(10,'richmond','dbe4b990c5a44467f4964a851951172','Principal','E M S','Ekanayake','Galle','850323333V','richmond@gmail.com',1),(11,'chandu','e0f02ccac283a65efe681c4fe66c6ce','Parent','Chandu','Herath','Narammala','933232365V','chandu@gmail.com',1),(12,'devi','18965f652fdc43f0b18da6a3d6d3c3cf','Principal','V','Perera','Hambantota','751215666V','devi@gmail.com',1),(13,'visakha','b8bc94f3d4f11b27c4c5ca1c5167259','Principal','Ruchira','Samaradiwakara','Kandy','763323466V','visakha@gmail.com',1),(14,'sujatha','43fa4daf2202fc5c47e31b651626e63','Principal','Sujatha','Rathnayake','Narammala, Kurunegala','931250632V','srathnayake@gmail.com',1),(15,'sarath','48128c60c3c361a41cb37fc97be80ea','Principal','Sarath','Karunasiri','23/5 Nawala','912563985V','sarathkarunasiri@gmail.com',1),(16,'rathnayake','92df878ff2816f5b94cba0cce6b1f2','Principal','Mohan ','Rathnayake','Kanumale, Alawwa','896854785V','rmmrathnayake@gmail.com',1),(17,'menaka','d56e2cc557e74268a79ff9c4f3ebf7f0','Principal','Menaka','Peries','2nd cross Street, Minuwangoda','936527854V','menakaperies@gmail.com',1),(18,'sugath','83a54f35bc8f4aebd7a8f4abf3d32edc','Principal','Sugath','Thilakawardane','Temple Road, Dehiwala','896532452V','sugaththilakawardane@gmail.com',1),(19,'lionel','a9503c3f1633dc41946d91ceb6f2b1f9','Principal','Lionel','Perera','2nd Lane, Moratuwa','789652455V','lionelperera@gmail.com',1),(20,'wajira','9d1baf926edca6ec59265dedb7e3d1f','Principal','Wajira','Kumarasinghe','Union place, Colombo 07','896525456V','wajirakumarasinghe@gmail.com',1),(21,'prabath','3ca71c5fb31c81cce94f9be6254c4f6d','Principal','Prabath','Karunarathne','New town road, Kottawa','896544546V','pkarunarathne@gmail.com',1),(22,'gunadasa','f5fc575125831376ba3866fd1972e49','GramaNiladhari','Gunadasa','Samarathunga','22/7 Sammanthranapura','896546553V','gunadasasamarathunga@gmail.com',1),(23,'supun','c28a34921221fc7cffbb81ae3a782cb','GramaNiladhari','Supun ','Amarathunga','15, Mattakkuliya','902566445V','supunamarathunga@gmail.com',1),(24,'jagath','cd217264917f1d6b48881740b7f684','GramaNiladhari','Jagath','Mendis','5/45, Temple Street, Modara','985878999V','jagathmendis@gmail.com',1),(25,'malan','a32e6bd12828f4adac996b4b896c2d7','GramaNiladhari','Malan','Ranaweera','78, Mahawatta','896597999V','malanranaweera@gmail.com',1),(26,'sunil','48ccc87cd7afb8574a63e8d5953d326','GramaNiladhari','Sunil','Jayarathne','12/20, Aluthmawatha','895996842V','suniljayarathne@gmail.com',1),(27,'dilan','d8b9eecc9d2c79a038f067e62f53cabc','GramaNiladhari','Dilan','Serasinghe','No 15, Lunupokuna','896547851V','dilan89@gmail.com',1),(28,'wijitha','9344fa9afb15d0327cc89cb5d498e16','GramaNiladhari','Wijitha','Manathunga','Bloemandhal','965488525V','wijithamanathunga@ymail.com',1),(29,'rukmal','4aef1d83c4d7c7bcfb2fac52e2ba37d7','GramaNiladhari','Rukmal','Perera','2sd cross lane, Kotahena East','896574568V','rukmalperera@ymail.com',1),(30,'kalum','8cba8fdf86c572ed30afe07f74a0e6e8','GramaNiladhari','Kalum','Withanage','No 15/8  Kotahena West','931250353V','kalumwithanage@ymail.com',0),(31,'oshadhi','e4b6ea2ea9509b13f9eb5dbc7d78e7','Parent','Oshadhi','Snevirathne','45/78 Baththaramulla','936525554V','oshadhi93@gmail.com',1),(32,'janaki','f6dee9b07c672b5e2ad8f439d24b536','Parent','Janaki','Perera','15/36,base line road, Kollupitiya','895678455V','janakiperera@gmail.com',1),(33,'susil','1b521523d423489710a7faed6d1ae98e','Parent','Susil','Alwis','76/16, Galle Road, Wellawaththe','896544522V','susilalwis@ymail.com',1),(34,'buddhika','6f99aac7565232ec6699b342f41666b4','Parent','Buddhika','Wijebandara','78, Kottawa','896554479V','buddhikachathuranga@gmail.com',1),(35,'kumudu','bded7bccb123bfa5943b9e17e24626','Parent','Kumudu','Jayaweera','Dehikumbura, Kalugamuwa','758965566V','skjayaweera@gmail.com',1),(36,'namal','c8d17702b32b3cd5cd29315c3632d7','Parent','Namal','Sanjeewa','Station road, Rathmalana','907785568V','namalsanjeewa@ymail.com',1),(37,'nalin','77882ba31bc3829884e3a1ff56cdceac','Parent','Nalin','Wijesundara','Wilgoda road, Kurunegala','896577541V','nalinwijesundara@ymail.com',1),(38,'vishva','c3b551a962657ed62637d6b431ac7d2','Parent','Vishva','Balasooriya','45/25 Kandy Road, Warakapola','900498495V','vishvabalasooriya@gmail.com',1),(39,'erandika','93413b7cbaceaa150d346af8187befb','Parent','Erandika','Kalubowila','Colombo','926565656V','ldclakmal@gmail.com',1),(40,'chamal','d3e8f1e535885421fbfe162ebd65fdeb','Parent','Chamal','Kuruppu','Colombo','925656565V','chamal@gmail.com',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-05  9:06:36
