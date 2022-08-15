-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: farm-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'afasa','afasa','afasa@test.com'),(2,'Gary','Jones','gary@test.com'),(3,'Peter','Chapman','pchapman@easystreet.net'),(4,'Peter','Chapman','pchapman@easystreet.net'),(5,'Peter','Chapman','pchapman@easystreet.net'),(6,'Peter','Chapman','pchapman@easystreet.net'),(7,'Peter','Chapman','pchapman@easystreet.net'),(8,'Peter','Chapman','pchapman@easystreet.net'),(9,'Peter','Chapman','pchapman@easystreet.net'),(10,'Peter','Chapman','pchapman@easystreet.net'),(11,'Peter','Chapman','pchapman@easystreet.net'),(12,'Peter','Chapman','pchapman@easystreet.net'),(13,'Peter','Chapman','pchapman@easystreet.net'),(14,'Peter','Chapman','pchapman@easystreet.net'),(16,'Peter','Chapman','pchapman@easystreet.net'),(17,'Peter','Chapman','pchapman@easystreet.net'),(18,'Peter','Chapman','pchapman@easystreet.net'),(19,'Peter','Chapman','pchapman@easystreet.net'),(20,'Peter','Chapman','pchapman@easystreet.net'),(21,'Peter','Chapman','pchapman@easystreet.net'),(22,'Peter','Chapman','pchapman@easystreet.net'),(23,'Peter','Chapman','pchapman@easystreet.net'),(24,'Peter','Chapman','pchapman@easystreet.net'),(25,'Peter','Chapman','pchapman@easystreet.net'),(26,'Peter','Chapman','pchapman@easystreet.net'),(27,'Peter','Chapman','pchapman@easystreet.net'),(28,'Peter','Chapman','pchapman@easystreet.net'),(29,'Peter','Chapman','pchapman@easystreet.net'),(30,'Peter','Chapman','pchapman@easystreet.net'),(31,'Peter','Chapman','pchapman@easystreet.net'),(32,'Peter','Chapman','pchapman@easystreet.net'),(33,'Peter','Chapman','pchapman@easystreet.net'),(34,'Peter','Chapman','pchapman@easystreet.net'),(35,'Peter','Chapman','pchapman@easystreet.net'),(36,'Peter','Chapman','pchapman@easystreet.net'),(37,'Peter','Chapman','pchapman@easystreet.net'),(38,'Peter','Chapman','pchapman@easystreet.net'),(39,'Peter','Chapman','pchapman@easystreet.net'),(40,'Peter','Chapman','pchapman@easystreet.net'),(41,'Peter','Chapman','pchapman@easystreet.net'),(42,'Lynn','Chapman','lchapman@easystreet.net'),(43,'Lynn','Chapman','lchapman@easystreet.net'),(44,'Peter','Chapman','pchapman@easystreet.net'),(45,'Peter','Chapman','pchapman@easystreet.net'),(46,'Peter','Chapman','pchapman@easystreet.net'),(47,'Peter','Chapman','pchapman@easystreet.net'),(48,'Peter','Chapman','pchapman@easystreet.net'),(49,'Peter','Chapman','pchapman@easystreet.net'),(50,'Peter','Chapman','pchapman@easystreet.net'),(51,'Peter','Chapman','pchapman@easystreet.net'),(52,'Peter','Chapman','pchapman@easystreet.net'),(53,'Peter','Chapman','pchapman@easystreet.net'),(54,'Peter','Chapman','pchapman@easystreet.net'),(55,'Peter','Chapman','pchapman@easystreet.net'),(56,'Peter','Chapman','pchapman@easystreet.net'),(57,'Peter','Chapman','pchapman@easystreet.net'),(58,'Peter','Chapman','pchapman@easystreet.net'),(59,'Peter','Chapman','pchapman@easystreet.net'),(60,'Peter','Chapman','pchapman@easystreet.net'),(61,'Peter','Chapman','pchapman@easystreet.net'),(62,'Peter','Chapman','pchapman@easystreet.net'),(63,'Peter','Chapman','pchapman@easystreet.net'),(64,'Peter','Chapman','pchapman@easystreet.net'),(65,'Peter','Chapman','pchapman@easystreet.net'),(66,'Peter','Chapman','pchapman@easystreet.net'),(67,'Peter','Chapman','pchapman@easystreet.net'),(68,'Peter','Chapman','pchapman@easystreet.net'),(69,'Peter','Chapman','pchapman@easystreet.net'),(70,'Peter','Chapman','pchapman@easystreet.net'),(71,'Peter','Chapman','pchapman@easystreet.net'),(72,'Peter','Chapman','pchapman@easystreet.net'),(73,'Peter','Chapman','pchapman@easystreet.net'),(74,'Peter','Chapman','pchapman@easystreet.net'),(75,'Peter','Chapman','pchapman@easystreet.net'),(76,'Lynn','Chapman','lchapman@easystreet.net'),(77,'Peter','Chapman','pchapman@easystreet.net'),(78,'Lynn','Chapman','lchapman@easystreet.net');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 15:51:04
