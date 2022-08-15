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
-- Table structure for table `produce`
--

DROP TABLE IF EXISTS `produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produce` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_pounds` decimal(10,4) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT '1.00',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `produce_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produce_category` (`produce_category_id`),
  CONSTRAINT `fk_produce_category` FOREIGN KEY (`produce_category_id`) REFERENCES `produce_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produce`
--

LOCK TABLES `produce` WRITE;
/*!40000 ALTER TABLE `produce` DISABLE KEYS */;
INSERT INTO `produce` VALUES (1,'GROUND-1005','Ground Lamb','1 lb.',1.0000,'assets/products/lamb/ground.jpg',18.99,100,'2022-08-05 19:29:43.000000',NULL,1),(2,'DHOP-1000','Loin Chops','Two per package/Approx. 0.65 lbs.',0.6500,'assets/products/lamb/chop.jpg',12.99,100,'2022-08-05 19:29:43.000000',NULL,1),(3,'Rack-1007','Rib Chops','Two per package/Approx. 0.65 lbs.',0.6500,'assets/products/lamb/ribchop.jpg',16.00,100,'2022-08-05 19:29:43.000000',NULL,1),(4,'SHOULDERBONELESS-1001','Shoulder - Boneless','Approx. 6 lbs.',6.0000,'assets/products/lamb/shoulder-boneless.jpg',16.00,100,'2022-08-05 19:29:43.000000',NULL,1),(5,'SHOULDERBONEIN-1002','Whole Leg of Lamb - Bone in','Center cut. Approx. 7 lbs.',7.0000,'assets/products/lamb/leg.jpg',18.00,100,'2022-08-05 19:29:43.000000',NULL,1),(6,'LEG-1003','Whole Leg of Lamb - Boneless','Center cut. Approx. 6 lbs.',9.0000,'assets/products/lamb/leg.jpg',1.00,100,'2022-08-05 19:29:43.000000',NULL,1),(7,'LEG-1004','Stew meat / Kebobs','1 lb.',1.0000,'assets/products/lamb/kebob.jpg',9.00,100,'2022-08-05 19:29:43.000000',NULL,1),(8,'Kebab-1006','Shank','1 lb.',8.0000,'assets/images/products/books/kebab.png',1.00,100,'2022-08-05 19:29:43.000000',NULL,1);
/*!40000 ALTER TABLE `produce` ENABLE KEYS */;
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
