-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: upcdatamodel
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Gustavo','Ponce','test@test.com','1234567890','1'),(2,'Bob','Marley','one@love.com','6483748590','0'),(3,'David','Gilmour','high@hopes.com','7648909831','1'),(4,'John','Lennon','standby@me.com','7689485620','1'),(5,'Ozzy','Osbourne','children@grave.com','6483748590','0'),(6,'Jimmy','Page','stairway@heaven.com','7648909831','1'),(7,'Jimi','Hendrix','purple@haze.com','8754091236','0'),(8,'Sex','Pistols','save@queen.com','6729098761','1'),(9,'Jim','Morrison','riders@storm.com','8754091236','0'),(10,'Richard','Blackmore','highway@star.com','8754091236','1'),(11,'Jay','Kay','cosmic@girl.com','0926389871','1'),(12,'David','Bowie','heroes@oneday.com','4338490981','1'),(13,'Bob','Dylan','knocking@doors.com','4338490981','0'),(14,'Manu','Chao','mala@vida.com','8923098753','1'),(15,'The','Specials','ghost@thown.com','7590498573','1'),(16,'Jymmy','Cliff','see@clearly.com','4338490981','0'),(17,'The','Temptations','my@girl.com','7639864096','1'),(18,'Simon','Garfunkel','mr@robinson.com','8750987531','1'),(19,'catch','22','takes@sometime.com','7098653427','1'),(20,'Janis','Joplin','cry@baby.com','6739087641','0'),(21,'Lou','Red','wild@side.com','6789045678','1'),(22,'Iggy','Pop','the@passenger.com','6934980751','1'),(23,'Dead','Kennedys','holiday@cambodia.com','2389096457','0'),(24,'The','Cure','dont@cry.com','8749340987','0');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 16:18:19
