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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'sfdsf','Brazil','Acre','fsfsf','19111'),(2,'afasa','Canada','Alberta','afasa','afasa'),(3,'sfdsf','Brazil','Acre','fsfsf','19111'),(4,'afasa','Canada','Alberta','afasa','afasa'),(5,'Forest Grove','United States','Alabama','41870 NW Lippert Ln','97116'),(6,'Forest Grove','United States','Alabama','41870 NW Lippert Ln','97116'),(7,'Forest Grove','United States','Alabama','41870 NW Lippert Ln','97116'),(8,'Forest Grove','United States','Alabama','41870 NW Lippert Ln','97116'),(9,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(10,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(11,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(12,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(13,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(14,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(15,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(16,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(17,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(18,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(19,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(20,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(21,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(23,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(24,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(25,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(26,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(27,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(28,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(29,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(30,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(31,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(32,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(33,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(34,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(35,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(36,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(37,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(38,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(39,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(40,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(41,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(42,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(43,'Forest Grove',NULL,NULL,'41870 NW Lippert Ln','97116'),(44,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(45,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(46,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(47,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(48,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(49,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(50,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(51,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(52,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(53,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(54,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(55,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(56,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(57,'Forest Grove',NULL,NULL,'41870 NW Lippert Ln','97116'),(58,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(59,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(60,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(61,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(62,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(63,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(64,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(65,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(66,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(67,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(68,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(69,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(70,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(71,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(72,'Banks','United States','Oregon','41873 NW Lippert Ln','97116'),(73,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(74,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(75,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(76,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(77,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(78,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(79,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(80,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(81,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(82,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(83,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(84,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116'),(85,'Forest Grove','United States','Oregon','41870 NW Lippert Ln','97116');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 15:51:06
