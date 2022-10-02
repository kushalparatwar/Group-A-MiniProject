-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: miniproject
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `NO` int NOT NULL AUTO_INCREMENT,
  `QUESTIONS` varchar(255) DEFAULT NULL,
  `ANSWER` varchar(255) DEFAULT NULL,
  `OPTION1` varchar(255) DEFAULT NULL,
  `OPTION2` varchar(255) DEFAULT NULL,
  `OPTION3` varchar(255) DEFAULT NULL,
  `OPTION4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Which of the following is not a Java features?','c','a) Dynamic','b) Architecture Neutral','c) Use of pointers','d) Object-oriented'),(2,'is used to find and fix bugs in the Java programs?','d','a) JVM','b) JRE','c) JDK','d) JDB'),(3,'Which of the following is a valid declaration of a char?','a','a) char ch = \'\\utea\'','b) char ca = \'tea\'','c) char cr = \\u0223','d) char cc = \'\\itea\''),(4,'What is the return type of the hashCode() method in the Object class?','b','a) Object','b) int','c) long','d) void'),(5,'Which of the following is a valid long literal?','d','a) ABH8097','b)L990023','c) 904423','d) 0xnf029L'),(6,'What does the expression float a = 35 / 0 return?','c','a) 0','b) Not a Number','c) Infinity','d) Run time exception'),(7,'Which of the following is a marker interface?','b','a) Runnable interface','b) Remote interface','c) Readable interface','d) Result interface'),(8,'Which of the following is true about the anonymous inner class?','d','a) It has only methods','b) Objects can\'t be created','c) It has a fixed class name','d) It has no class name'),(9,'Which package contains the Random class?','a','a) java.util package','b) java.lang package','c) java.awt package','d) java.io package'),(10,'An interface with no fields or methods is known as a?','b','a) Runnable Interface','b) Marker Interface','c) Abstract Interface','d) CharSequence Interface');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` int NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SCORE` varchar(255) DEFAULT NULL,
  `GRADE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Kushal','10','A'),(2,'Ram','4','Fail');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-02 18:16:24
