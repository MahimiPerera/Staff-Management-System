-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: staff
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `financemanager`
--

DROP TABLE IF EXISTS `financemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financemanager` (
  `idfinancemanager` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `datejoined` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `qualifications` varchar(1000) DEFAULT NULL,
  `experience` varchar(1000) DEFAULT NULL,
  `password` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idfinancemanager`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financemanager`
--

LOCK TABLES `financemanager` WRITE;
/*!40000 ALTER TABLE `financemanager` DISABLE KEYS */;
INSERT INTO `financemanager` VALUES (1,'John Doe','johndoe','johndoe@email.com','2017-10-25','1234567890','123456789012','123 Main St, New City','MBA in Finance','5 years of finance experience','12345'),(2,'Jane Smith','janesmith','janesmith@email.com','2014-10-24','9876543210','987654321098','456 Elm St,Sliger Town, ','Ph.D. in Finance','10 years of finance experience','54321'),(3,'David Johnson','davidj','davidj@email.com','2020-10-23','5555555555','555555555555','789 Oak St, Village','MBA in Finance','5 years of finance experience','67890'),(4,'Sarah Adams','sarahadams','sarahadams@email.com','2023-02-22','1112233444','111223344499','1010 Willow Ave, Apt 3, Metropolis','Bachelor in Finance','3 years of finance experience','12789'),(5,'Michael Brownie','michaelb','michaelb@email.com','2018-05-12','9998887777','999888777799','222 Cedar Rd, Suburb ','Bachelor in Finance','3 years of finance experience','75324');
/*!40000 ALTER TABLE `financemanager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29  0:49:04
