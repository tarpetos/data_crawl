-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: onet_code_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `stored_data`
--

DROP TABLE IF EXISTS `stored_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stored_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` varchar(10) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stored_data`
--

LOCK TABLES `stored_data` WRITE;
/*!40000 ALTER TABLE `stored_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `stored_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stored_data_mod`
--

DROP TABLE IF EXISTS `stored_data_mod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stored_data_mod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` varchar(10) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `lay_titles` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `tasks` varchar(200) DEFAULT NULL,
  `tasks_number` varchar(3) DEFAULT NULL,
  `activities` varchar(200) DEFAULT NULL,
  `activities_number` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stored_data_mod`
--

LOCK TABLES `stored_data_mod` WRITE;
/*!40000 ALTER TABLE `stored_data_mod` DISABLE KEYS */;
INSERT INTO `stored_data_mod` VALUES (1,'100','Police and Sheriff\'s Patrol Officers','33-3051.00','https://www.onetcodeconnector.org/find/score/33-3051.00?s=taras#title','https://www.onetcodeconnector.org/find/score/33-3051.00?s=taras#lay','','','','',''),(2,'50','Social and Community Service Managers','11-9151.00','','https://www.onetcodeconnector.org/find/score/11-9151.00?s=taras#lay','','','','',''),(3,'50','Agents and Business Managers of Artists, Performers, and Athletes','13-1011.00','','https://www.onetcodeconnector.org/find/score/13-1011.00?s=taras#lay','','','','',''),(4,'50','Compliance Officers','13-1041.00','','https://www.onetcodeconnector.org/find/score/13-1041.00?s=taras#lay','','','','',''),(5,'50','Coroners','13-1041.06','','https://www.onetcodeconnector.org/find/score/13-1041.06?s=taras#lay','','','','',''),(6,'50','Business Operations Specialists, All Other','13-1199.00','','https://www.onetcodeconnector.org/find/score/13-1199.00?s=taras#lay','','','','',''),(7,'50','Civil Engineering Technologists and Technicians','17-3022.00','','https://www.onetcodeconnector.org/find/score/17-3022.00?s=taras#lay','','','','',''),(8,'50','Counselors, All Other','21-1019.00','','https://www.onetcodeconnector.org/find/score/21-1019.00?s=taras#lay','','','','',''),(9,'50','Child, Family, and School Social Workers','21-1021.00','','https://www.onetcodeconnector.org/find/score/21-1021.00?s=taras#lay','','','','',''),(10,'50','Social Workers, All Other','21-1029.00','','https://www.onetcodeconnector.org/find/score/21-1029.00?s=taras#lay','','','','',''),(11,'50','Social and Human Service Assistants','21-1093.00','','https://www.onetcodeconnector.org/find/score/21-1093.00?s=taras#lay','','','','',''),(12,'50','Community and Social Service Specialists, All Other','21-1099.00','','https://www.onetcodeconnector.org/find/score/21-1099.00?s=taras#lay','','','','',''),(13,'50','Clergy','21-2011.00','','https://www.onetcodeconnector.org/find/score/21-2011.00?s=taras#lay','','','','',''),(14,'50','Directors, Religious Activities and Education','21-2021.00','','https://www.onetcodeconnector.org/find/score/21-2021.00?s=taras#lay','','','','',''),(15,'50','Lawyers','23-1011.00','','https://www.onetcodeconnector.org/find/score/23-1011.00?s=taras#lay','','','','',''),(16,'50','Area, Ethnic, and Cultural Studies Teachers, Postsecondary','25-1062.00','','https://www.onetcodeconnector.org/find/score/25-1062.00?s=taras#lay','','','','',''),(17,'50','Nursing Instructors and Teachers, Postsecondary','25-1072.00','','https://www.onetcodeconnector.org/find/score/25-1072.00?s=taras#lay','','','','',''),(18,'50','English Language and Literature Teachers, Postsecondary','25-1123.00','','https://www.onetcodeconnector.org/find/score/25-1123.00?s=taras#lay','','','','',''),(19,'50','Career/Technical Education Teachers, Postsecondary','25-1194.00','','https://www.onetcodeconnector.org/find/score/25-1194.00?s=taras#lay','','','','',''),(20,'50','Preschool Teachers, Except Special Education','25-2011.00','','https://www.onetcodeconnector.org/find/score/25-2011.00?s=taras#lay','','','','',''),(21,'50','Career/Technical Education Teachers, Secondary School','25-2032.00','','https://www.onetcodeconnector.org/find/score/25-2032.00?s=taras#lay','','','','',''),(22,'50','Special Education Teachers, Secondary School','25-2058.00','','https://www.onetcodeconnector.org/find/score/25-2058.00?s=taras#lay','','','','',''),(23,'50','Self-Enrichment Teachers','25-3021.00','','https://www.onetcodeconnector.org/find/score/25-3021.00?s=taras#lay','','','','',''),(24,'50','Tutors','25-3041.00','','https://www.onetcodeconnector.org/find/score/25-3041.00?s=taras#lay','','','','',''),(25,'50','Librarians and Media Collections Specialists','25-4022.00','','https://www.onetcodeconnector.org/find/score/25-4022.00?s=taras#lay','','','','',''),(26,'50','Teaching Assistants, Preschool, Elementary, Middle, and Secondary School, Except Special Education','25-9042.00','','https://www.onetcodeconnector.org/find/score/25-9042.00?s=taras#lay','','','','',''),(27,'50','Floral Designers','27-1023.00','','https://www.onetcodeconnector.org/find/score/27-1023.00?s=taras#lay','','','','',''),(28,'50','Coaches and Scouts','27-2022.00','','https://www.onetcodeconnector.org/find/score/27-2022.00?s=taras#lay','','','','',''),(29,'50','Music Directors and Composers','27-2041.00','','https://www.onetcodeconnector.org/find/score/27-2041.00?s=taras#lay','','','','',''),(30,'50','Poets, Lyricists and Creative Writers','27-3043.05','','https://www.onetcodeconnector.org/find/score/27-3043.05?s=taras#lay','','','','',''),(31,'50','Physician Assistants','29-1071.00','','https://www.onetcodeconnector.org/find/score/29-1071.00?s=taras#lay','','','','',''),(32,'50','Nurse Midwives','29-1161.00','','https://www.onetcodeconnector.org/find/score/29-1161.00?s=taras#lay','','','','',''),(33,'50','Nurse Practitioners','29-1171.00','','https://www.onetcodeconnector.org/find/score/29-1171.00?s=taras#lay','','','','',''),(34,'50','Surgical Technologists','29-2055.00','','https://www.onetcodeconnector.org/find/score/29-2055.00?s=taras#lay','','','','',''),(35,'50','Athletic Trainers','29-9091.00','','https://www.onetcodeconnector.org/find/score/29-9091.00?s=taras#lay','','','','',''),(36,'50','Home Health Aides','31-1121.00','','https://www.onetcodeconnector.org/find/score/31-1121.00?s=taras#lay','','','','',''),(37,'50','Nursing Assistants','31-1131.00','','https://www.onetcodeconnector.org/find/score/31-1131.00?s=taras#lay','','','','',''),(38,'50','Medical Assistants','31-9092.00','','https://www.onetcodeconnector.org/find/score/31-9092.00?s=taras#lay','','','','',''),(39,'50','Pharmacy Aides','31-9095.00','','https://www.onetcodeconnector.org/find/score/31-9095.00?s=taras#lay','','','','',''),(40,'50','Firefighters','33-2011.00','','https://www.onetcodeconnector.org/find/score/33-2011.00?s=taras#lay','','','','',''),(41,'50','Correctional Officers and Jailers','33-3012.00','','https://www.onetcodeconnector.org/find/score/33-3012.00?s=taras#lay','','','','',''),(42,'50','Detectives and Criminal Investigators','33-3021.00','','https://www.onetcodeconnector.org/find/score/33-3021.00?s=taras#lay','','','','',''),(43,'50','Cooks, Institution and Cafeteria','35-2012.00','','https://www.onetcodeconnector.org/find/score/35-2012.00?s=taras#lay','','','','',''),(44,'50','Fast Food and Counter Workers','35-3023.00','','https://www.onetcodeconnector.org/find/score/35-3023.00?s=taras#lay','','','','',''),(45,'50','Dining Room and Cafeteria Attendants and Bartender Helpers','35-9011.00','','https://www.onetcodeconnector.org/find/score/35-9011.00?s=taras#lay','','','','',''),(46,'50','Hairdressers, Hairstylists, and Cosmetologists','39-5012.00','','https://www.onetcodeconnector.org/find/score/39-5012.00?s=taras#lay','','','','',''),(47,'50','Childcare Workers','39-9011.00','','https://www.onetcodeconnector.org/find/score/39-9011.00?s=taras#lay','','','','',''),(48,'50','Retail Salespersons','41-2031.00','','https://www.onetcodeconnector.org/find/score/41-2031.00?s=taras#lay','','','','',''),(49,'50','Sales Representatives, Wholesale and Manufacturing, Except Technical and Scientific Products','41-4012.00','','https://www.onetcodeconnector.org/find/score/41-4012.00?s=taras#lay','','','','',''),(50,'50','Models','41-9012.00','','https://www.onetcodeconnector.org/find/score/41-9012.00?s=taras#lay','','','','',''),(51,'50','Court, Municipal, and License Clerks','43-4031.00','','https://www.onetcodeconnector.org/find/score/43-4031.00?s=taras#lay','','','','',''),(52,'50','Executive Secretaries and Executive Administrative Assistants','43-6011.00','','https://www.onetcodeconnector.org/find/score/43-6011.00?s=taras#lay','','','','',''),(53,'50','Helpers--Brickmasons, Blockmasons, Stonemasons, and Tile and Marble Setters','47-3011.00','','https://www.onetcodeconnector.org/find/score/47-3011.00?s=taras#lay','','','','',''),(54,'50','Helpers--Carpenters','47-3012.00','','https://www.onetcodeconnector.org/find/score/47-3012.00?s=taras#lay','','','','',''),(55,'50','Helpers--Electricians','47-3013.00','','https://www.onetcodeconnector.org/find/score/47-3013.00?s=taras#lay','','','','',''),(56,'50','Helpers--Painters, Paperhangers, Plasterers, and Stucco Masons','47-3014.00','','https://www.onetcodeconnector.org/find/score/47-3014.00?s=taras#lay','','','','',''),(57,'50','Helpers--Pipelayers, Plumbers, Pipefitters, and Steamfitters','47-3015.00','','https://www.onetcodeconnector.org/find/score/47-3015.00?s=taras#lay','','','','',''),(58,'50','Helpers--Extraction Workers','47-5081.00','','https://www.onetcodeconnector.org/find/score/47-5081.00?s=taras#lay','','','','',''),(59,'50','Millwrights','49-9044.00','','https://www.onetcodeconnector.org/find/score/49-9044.00?s=taras#lay','','','','',''),(60,'50','Helpers--Installation, Maintenance, and Repair Workers','49-9098.00','','https://www.onetcodeconnector.org/find/score/49-9098.00?s=taras#lay','','','','',''),(61,'50','Helpers--Production Workers','51-9198.00','','https://www.onetcodeconnector.org/find/score/51-9198.00?s=taras#lay','','','','',''),(62,'50','Production Workers, All Other','51-9199.00','','https://www.onetcodeconnector.org/find/score/51-9199.00?s=taras#lay','','','','',''),(63,'50','Heavy and Tractor-Trailer Truck Drivers','53-3032.00','','https://www.onetcodeconnector.org/find/score/53-3032.00?s=taras#lay','','','','',''),(64,'50','Sailors and Marine Oilers','53-5011.00','','https://www.onetcodeconnector.org/find/score/53-5011.00?s=taras#lay','','','','',''),(65,'50','Captains, Mates, and Pilots of Water Vessels','53-5021.00','','https://www.onetcodeconnector.org/find/score/53-5021.00?s=taras#lay','','','','',''),(66,'50','Military Officer Special and Tactical Operations Leaders, All Other','55-1019.00','','https://www.onetcodeconnector.org/find/score/55-1019.00?s=taras#lay','','','','',''),(67,'50','Aircraft Launch and Recovery Specialists','55-3012.00','','https://www.onetcodeconnector.org/find/score/55-3012.00?s=taras#lay','','','','',''),(68,'50','Artillery and Missile Crew Members','55-3014.00','','https://www.onetcodeconnector.org/find/score/55-3014.00?s=taras#lay','','','','','');
/*!40000 ALTER TABLE `stored_data_mod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 18:37:38
