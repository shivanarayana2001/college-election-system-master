-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: election
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table contestant
--

DROP TABLE IF EXISTS contestant;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE contestant (
  contestant_id varchar(100) NOT NULL,
  name varchar(45) DEFAULT NULL,
  age int DEFAULT NULL,
  branch varchar(45) DEFAULT NULL,
  category varchar(45) DEFAULT NULL,
  agenda varchar(1000) DEFAULT NULL,
  votes int DEFAULT '0',
  PRIMARY KEY (contestant_id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table contestant
--

/*!40000 ALTER TABLE contestant DISABLE KEYS */;
INSERT INTO contestant VALUES ('190330141','sudheendra murugula',19,'CSE','sports','ss',0),('190330185','patel vinay reddy',19,'CSE','sports','sssd',0),('190330213','SAI SRINIVASA SUBRAHMANYAM P',19,'CSE','department','ss',3),('190330214','Sakalabhaktula Pramod',19,'CSE','department','ds',4),('190330306','Jayanth Manthrigalla',19,'CSE','sports','aa',2);
/*!40000 ALTER TABLE contestant ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02 16:52:42
