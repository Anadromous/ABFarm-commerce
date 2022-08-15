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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `product_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`product_category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Hats','Hats','Basebal Cap - Blue',17.99,'assets/products/hats/blue-hat.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,1),(2,'Hats','Hats','Basebal Cap - Khaki',17.99,'assets/products/hats/blue-hat.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,1),(3,'Hats','Hats','Basebal Cap - White',17.99,'assets/products/hats/blue-hat.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,1),(4,'Shirts','Shirts','T-shirt - Blue',17.99,'assets/products/tshirts/tshirt-blue.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,2),(5,'Shirts','Shirts','T-shirt - Gray',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,2),(6,'Shirts','Shirts','T-shirt - White',17.99,'assets/products/tshirts/tshirt-blue.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,2),(7,'Shirts','Shirts','T-shirt - Pink',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,2),(8,'Hoodies','SweatShirts','Hoody - Green',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,3),(9,'Hoodies','SweatShirts','Sweatshirt - Green',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,3),(10,'Hoodies','SweatShirts','Hoodies - Gray',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,3),(11,'Hoodies','SweatShirts','Sweatshirt - Gray',17.99,'assets/products/tshirts/tshirt-gray.jpg',_binary '',100,'2022-03-17 16:34:25.000000',NULL,3),(12,'Stickers','Stickers','Stickers',17.99,'assets/images/products/stickers/apple-blossom.png',_binary '',100,'2022-03-17 16:34:25.000000',NULL,4),(13,'Stickers','Stickers','Stickers',17.99,'assets/images/products/stickers/apple-blossom2.png',_binary '',100,'2022-03-17 16:34:25.000000',NULL,4),(14,'Stickers','Stickers','Stickers',17.99,'assets/images/products/stickers/apple-blossom.png',_binary '',100,'2022-03-17 16:34:25.000000',NULL,4),(15,'Stickers','Stickers','Stickers',17.99,'assets/images/products/stickers/apple-blossom2.png',_binary '',100,'2022-03-17 16:34:25.000000',NULL,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 15:51:05
