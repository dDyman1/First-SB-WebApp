CREATE DATABASE  IF NOT EXISTS `schooldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schooldb`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `MarkID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `SubjectID` int DEFAULT NULL,
  `EvalDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Grade` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`MarkID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,1,1,'2021-08-02 14:33:19',75),(2,1,2,'2021-08-02 14:33:19',83),(3,1,3,'2021-08-02 14:33:19',92),(4,1,4,'2021-08-02 14:33:19',67),(5,1,5,'2021-08-02 14:33:19',98),(6,2,1,'2021-08-02 14:33:19',75),(7,2,2,'2021-08-02 14:33:19',63),(8,2,3,'2021-08-02 14:33:19',72),(9,2,4,'2021-08-02 14:33:19',87),(10,2,5,'2021-08-02 14:33:19',78),(11,3,1,'2021-08-02 14:33:19',75),(12,3,2,'2021-08-02 14:33:19',83),(13,3,3,'2021-08-02 14:33:19',92),(14,3,4,'2021-08-02 14:33:19',67),(15,3,5,'2021-08-02 14:33:19',88),(16,4,1,'2021-08-02 14:33:19',72),(17,4,2,'2021-08-02 14:33:19',87),(18,4,3,'2021-08-02 14:33:19',90),(19,4,4,'2021-08-02 14:33:19',65),(20,4,5,'2021-08-02 14:33:19',82),(21,5,1,'2021-08-02 14:33:19',77),(22,5,2,'2021-08-02 14:33:19',67),(23,5,3,'2021-08-02 14:33:19',80),(24,5,4,'2021-08-02 14:33:19',75),(25,5,5,'2021-08-02 14:33:19',92),(26,6,1,'2021-08-02 14:33:19',75),(27,6,2,'2021-08-02 14:33:19',83),(28,6,3,'2021-08-02 14:33:19',92),(29,6,4,'2021-08-02 14:33:19',67),(30,6,5,'2021-08-02 14:33:19',88);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `TeamID` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Alex','Boukin',1),(2,'Michelle','Gal',2),(3,'Carson','Cass',3),(4,'Vitu','Ravirajan',1),(5,'Nada','Erabbe',3),(6,'Paul','San-Fran',2);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `SubjectID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(25) NOT NULL DEFAULT 'TBA',
  PRIMARY KEY (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Programming'),(2,'Physics'),(3,'Chemistry'),(4,'History'),(5,'Biology');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects_teacher`
--

DROP TABLE IF EXISTS `subjects_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects_teacher` (
  `SubjectID` int DEFAULT NULL,
  `TeacherID` int DEFAULT NULL,
  `TeamID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects_teacher`
--

LOCK TABLES `subjects_teacher` WRITE;
/*!40000 ALTER TABLE `subjects_teacher` DISABLE KEYS */;
INSERT INTO `subjects_teacher` VALUES (1,1,1),(2,1,1),(2,2,3),(1,2,3),(1,3,2),(3,3,3),(4,1,3),(5,1,2),(4,2,1),(4,2,2),(2,3,1),(3,3,2);
/*!40000 ALTER TABLE `subjects_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `TeacherID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  PRIMARY KEY (`TeacherID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Bob','Dylan'),(2,'Kim Jong','Un'),(3,'Ya Boy','Donald');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `TeamID` int NOT NULL AUTO_INCREMENT,
  `TeamName` varchar(30) NOT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Gryfindor'),(2,'Ravenclaw'),(3,'HufflePuff'),(4,'Gryfindor'),(5,'Ravenclaw'),(6,'HufflePuff'),(7,'Gryfindor'),(8,'Ravenclaw'),(9,'HufflePuff');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fish@yahoo.ca','oidfhd','sdoikf','sdiifha234'),(2,'ddy@yahoo.ca','HJhfds','dsfhed','fish1234'),(3,'dylan@bob.edu','Bob','Dylan','fillet209'),(7,'fillet@fish.ca','HF','IHHJ','$2a$10$ARnEy7zJSQ6aNaChf3UJiOQuZSZSy0LcDMxksKJ7b6IgHsF/Uxvfa'),(8,'bill@yahoo.ca','JKBHBJ','JHNLKNH','$2a$10$zFERRzQv11DEh/qqOQS25.cIvCcP.ARx.QyfHNb0EpY6yZhGQWC9.'),(9,'bob@rogers.com','JKHJH','KJHK','$2a$10$c5oIMMP/t3Bhsb0OrcTKmeEnx96qQW7hRfwnphvvRBk58CHSfWSqe');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-02 23:35:16
