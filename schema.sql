-- MySQL dump 10.13  Distrib 8.0.32, for macos12.6 (arm64)
--
-- Host: localhost    Database: newdb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `id_gr` int NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_group_idx` (`id_gr`),
  CONSTRAINT `fk_groups` FOREIGN KEY (`id_gr`) REFERENCES `id_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (18,'Ссьемънх','Оьтлнгёъ','Ёфййёуд',65,'pFPcPNnj','zkQn766c7g'),(19,'Охкщиохйбу','Гшщпгжщбмсвб','Зрцшкеи',24,'OmHozLzp','8g4d7vGr'),(20,'Лкбёэкс','Аёэежюлсь','Снечёшмызу',26,'nrptcMyWNAC','0vVuVEu6'),(21,'Ряыфуф','Вьтеэажхъпыч','Сватйюдкум',33,'NRVHsrApigJ','vGa3C0rW'),(22,'Охяэеоёбя','Епулщвояжй','Йгющгищеьхф',9,'QUzkiMrnU','04FN9pGdry'),(23,'Дюивжю','Мбасзёжсбюлт','Гясышип',20,'GzFVrLDYr','6h8aAPzU1'),(24,'Ечлжлёщ','Амъшъьнпыйёк','Быгаёрйьмэнт',51,'pFsiACFNpRI','4sLOjIh'),(25,'Жстнсыуцн','Рюубчяеют','Мткмрлапхйуг',22,'lqaHByxtlr','FGy1IO7'),(26,'Сллаебэмн','Жпошгхел','Омыёлъаз',60,'jIddQXsmP','KS3db7X1'),(27,'Лмэбктоя','Еьщщгдттынцр','Руйасщемы',34,'vzdCogCMCQ','6c1VKVjR');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `idfeedback` int NOT NULL AUTO_INCREMENT,
  `feedback` text,
  PRIMARY KEY (`idfeedback`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (15,'pdPaRA.WlE,FBZz;dwU gZajCAMyw');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_groups`
--

DROP TABLE IF EXISTS `id_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_groups` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_groups`
--

LOCK TABLES `id_groups` WRITE;
/*!40000 ALTER TABLE `id_groups` DISABLE KEYS */;
INSERT INTO `id_groups` VALUES (7,'09-023'),(8,'09-032'),(9,'09-941'),(10,'09-103'),(11,'09-922'),(12,'09-921'),(13,'09-143'),(14,'09-231'),(15,'09-231'),(16,'09-053'),(17,'09-221'),(18,'09-261'),(19,'09-021'),(20,'09-962'),(21,'09-153'),(22,'09-001'),(23,'09-161'),(24,'09-253'),(25,'09-134'),(26,'09-044'),(27,'09-134'),(28,'09-063'),(29,'09-251'),(30,'09-061'),(31,'09-212'),(32,'09-231'),(33,'09-252'),(34,'09-113'),(35,'09-943'),(36,'09-031'),(37,'09-941'),(38,'09-242'),(39,'09-001'),(40,'09-222'),(41,'09-961'),(42,'09-053'),(43,'09-951'),(44,'09-963'),(45,'09-213'),(46,'09-941'),(47,'09-231'),(48,'09-251'),(49,'09-144'),(50,'09-941'),(51,'09-232'),(52,'09-263'),(53,'09-944'),(54,'09-213'),(55,'09-961'),(56,'09-053'),(57,'09-113'),(58,'09-162'),(59,'09-222'),(60,'09-052'),(61,'09-241'),(62,'09-134'),(63,'09-013'),(64,'09-221'),(65,'09-901'),(66,'09-121'),(67,'09-011'),(68,'09-001'),(69,'09-942'),(70,'09-154'),(71,'09-964'),(72,'09-202'),(73,'09-043'),(74,'09-051'),(75,'09-204');
/*!40000 ALTER TABLE `id_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_group` int NOT NULL,
  `week` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `time` varchar(512) NOT NULL,
  `subject` varchar(512) NOT NULL,
  `teacher` varchar(512) NOT NULL,
  `classroom` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gr_idx` (`id_group`),
  CONSTRAINT `fk_gr` FOREIGN KEY (`id_group`) REFERENCES `id_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (2,7,'ч/н','понедельник','10:10-11:40','Тэъдтэ охкчшющдооцшбппюёяшэлшзкх.','Ёдюнльэу К.Ы.','ауд. 212','(УНИКС)'),(3,58,'[]','пятница','8:30-10:00','Вщсчшйуфбйоыэлнзбноэтзыь.','Тупаиёжлыгки Е.Ё.','ауд. 110','(Кремл.16)');
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 21:25:24
