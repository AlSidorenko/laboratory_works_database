CREATE DATABASE  IF NOT EXISTS `lab_work_002` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lab_work_002`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab_work_002
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `врачи`
--

DROP TABLE IF EXISTS `врачи`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `врачи` (
  `TabelID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Position` varchar(20) DEFAULT NULL,
  `CabinetNo` bigint(100) DEFAULT NULL,
  `Time` varchar(12) DEFAULT NULL,
  `Srvices` varchar(50) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`TabelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `врачи`
--

LOCK TABLES `врачи` WRITE;
/*!40000 ALTER TABLE `врачи` DISABLE KEYS */;
INSERT INTO `врачи` VALUES (1,'Петров','terapy',101,'11:00-13:00','терапевтическое',1000),(2,'Иванов','хирург',102,'13:00-15:00','хирургическое',1500),(3,'Сидоров','стоматолог',103,'14:00-16:00','стоматологические',1700),(4,'Петров','хирург',104,'13:00-16:00','заведующий',2000);
/*!40000 ALTER TABLE `врачи` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `наименованиеуслуги`
--

DROP TABLE IF EXISTS `наименованиеуслуги`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `наименованиеуслуги` (
  `Терапевтическая` varchar(45) DEFAULT NULL,
  `Хирургическая` varchar(45) DEFAULT NULL,
  `Ортопедическая` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `наименованиеуслуги`
--

LOCK TABLES `наименованиеуслуги` WRITE;
/*!40000 ALTER TABLE `наименованиеуслуги` DISABLE KEYS */;
/*!40000 ALTER TABLE `наименованиеуслуги` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `штатноерасписание`
--

DROP TABLE IF EXISTS `штатноерасписание`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `штатноерасписание` (
  `Должность` varchar(45) DEFAULT NULL,
  `Оклад` double DEFAULT NULL,
  `Надбавка` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `штатноерасписание`
--

LOCK TABLES `штатноерасписание` WRITE;
/*!40000 ALTER TABLE `штатноерасписание` DISABLE KEYS */;
/*!40000 ALTER TABLE `штатноерасписание` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-31  0:23:21
