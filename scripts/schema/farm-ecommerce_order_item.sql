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
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `K_order_id` (`order_id`),
  KEY `FK_product_id` (`product_id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (23,'assets/images/products/lamb/chop.png',3,12.99,20,1),(24,'assets/images/products/lamb/chop.png',3,12.99,21,1),(25,'assets/images/products/lamb/chop.png',3,12.99,22,1),(26,'assets/images/products/lamb/chop.png',3,12.99,23,1),(27,'assets/images/products/lamb/bonelesshoulder.png',2,20.99,23,2),(28,'assets/images/products/lamb/bonelesshoulder.png',2,20.99,22,2),(29,'assets/images/products/lamb/chop.png',2,12.99,24,1),(30,'assets/images/products/lamb/chop.png',2,12.99,25,1),(31,'assets/images/products/lamb/chop.png',3,12.99,27,1),(32,'assets/images/products/lamb/chop.png',3,12.99,26,1),(33,'assets/images/products/lamb/chop.png',2,12.99,28,1),(34,'assets/images/products/lamb/chop.png',2,12.99,29,1),(35,'assets/images/products/lamb/chop.png',2,12.99,30,1),(36,'assets/images/products/lamb/chop.png',2,12.99,31,1),(37,'assets/images/products/lamb/chop.png',4,12.99,32,1),(38,'assets/images/products/lamb/chop.png',5,12.99,33,1),(39,'assets/images/products/lamb/chop.png',2,12.99,35,1),(40,'assets/images/products/lamb/chop.png',2,12.99,36,1),(41,'assets/images/products/lamb/chop.png',1,12.99,37,1),(42,'assets/images/products/lamb/chop.png',3,12.99,38,1),(43,'assets/images/products/lamb/chop.png',2,12.99,39,1),(44,'assets/images/products/lamb/chop.png',2,12.99,40,1),(45,'assets/products/tshirts/tshirt-blue.jpg',1,17.99,41,6),(46,'assets/products/tshirts/tshirt-gray.jpg',1,17.99,41,5),(47,'assets/images/products/lamb/chop.png',2,12.99,41,1),(48,'assets/images/products/lamb/chop.png',1,12.99,42,1),(49,'assets/images/products/lamb/chop.png',2,12.99,43,1),(50,'assets/images/products/lamb/chop.png',2,12.99,44,1),(51,'assets/images/products/lamb/bonelesshoulder.png',3,20.99,45,2),(52,'assets/images/products/lamb/chop.png',2,12.99,46,1),(53,'assets/images/products/lamb/chop.png',1,12.99,47,1),(54,'assets/images/products/lamb/chop.png',2,12.99,48,1),(55,'assets/images/products/lamb/chop.png',2,12.99,49,1),(56,'assets/images/products/lamb/chop.png',2,12.99,50,1),(57,'assets/images/products/books/ground.png',3,18.99,51,6),(58,'assets/images/products/lamb/chop.png',2,12.99,52,1),(59,'assets/images/products/lamb/bonelesshoulder.png',1,20.99,53,2),(60,'assets/images/products/lamb/chop.png',2,12.99,54,1),(61,'assets/images/products/lamb/chop.png',2,12.99,55,1),(62,'assets/images/products/lamb/chop.png',2,12.99,56,1),(63,'assets/images/products/lamb/chop.png',2,12.99,57,1),(64,'assets/images/products/lamb/chop.png',2,12.99,58,1),(65,'assets/images/products/lamb/chop.png',2,12.99,59,1),(66,'assets/images/products/lamb/chop.png',1,12.99,60,1),(67,'assets/images/products/lamb/chop.png',2,12.99,61,1),(68,'assets/images/products/lamb/chop.png',2,12.99,62,1),(69,'assets/images/products/lamb/chop.png',1,12.99,63,1),(70,'assets/images/products/lamb/chop.png',1,12.99,64,1),(71,'assets/images/products/lamb/chop.png',1,12.99,65,1),(72,'assets/images/products/lamb/chop.png',1,12.99,66,1),(73,'assets/products/hats/blue-hat.jpg',2,17.99,67,2),(74,'assets/images/products/lamb/chop.png',2,12.99,68,1),(75,'assets/images/products/lamb/chop.png',1,12.99,69,1),(76,'assets/products/hats/blue-hat.jpg',1,17.99,69,2),(77,'assets/images/products/lamb/chop.png',1,12.99,70,1),(78,'assets/images/products/lamb/chop.png',2,12.99,71,1),(79,'assets/images/products/lamb/chop.png',2,12.99,72,1),(80,'assets/images/products/lamb/chop.png',2,12.99,73,1),(81,'assets/images/products/lamb/bonelesshoulder.png',3,20.99,74,2),(82,'assets/images/products/lamb/chop.png',2,12.99,75,1),(83,'assets/images/products/lamb/chop.png',2,12.99,76,1),(84,'assets/products/lamb/ground.jpg',1,18.99,77,1),(85,'assets/products/lamb/ground.jpg',1,18.99,78,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
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
