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
-- Table structure for table `week_master`
--

DROP TABLE IF EXISTS `week_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `week_master` (
  `week_id` int(6) DEFAULT NULL,
  `s_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `week_master`
--

LOCK TABLES `week_master` WRITE;
/*!40000 ALTER TABLE `week_master` DISABLE KEYS */;
INSERT INTO `week_master` VALUES (201751,1),(201752,2),(201801,3),(201802,4),(201803,5),(201804,6),(201805,7),(201806,8),(201807,9),(201808,10),(201809,11),(201810,12),(201811,13),(201812,14),(201813,15),(201814,16),(201815,17),(201816,18),(201817,19),(201818,20),(201819,21),(201820,22),(201821,23),(201822,24),(201823,25),(201824,26),(201825,27),(201826,28),(201827,29),(201828,30),(201829,31),(201830,32),(201831,33),(201832,34),(201833,35),(201834,36),(201835,37),(201836,38),(201837,39),(201838,40),(201839,41),(201840,42),(201841,43),(201842,44),(201843,45),(201844,46),(201845,47),(201846,48),(201847,49),(201848,50),(201849,51),(201850,52),(201851,53),(201852,54),(201901,55),(201902,56),(201903,57),(201904,58),(201905,59),(201906,60),(201907,61),(201908,62),(201909,63),(201910,64),(201911,65),(201912,66),(201913,67),(201914,68),(201915,69),(201916,70),(201917,71),(201918,72),(201919,73),(201920,74),(201921,75),(201922,76),(201923,77),(201924,78),(201925,79),(201926,80),(201927,81),(201928,82),(201929,83),(201930,84),(201931,85),(201932,86),(201933,87),(201934,88),(201935,89),(201936,90),(201937,91),(201938,92),(201939,93),(201940,94),(201941,95),(201942,96),(201943,97),(201944,98),(201945,99),(201946,100),(201947,101),(201948,102),(201949,103),(201950,104),(201951,105),(201952,106),(202001,107),(202002,108),(202003,109),(202004,110),(202005,111),(202006,112),(202007,113),(202008,114),(202009,115),(202010,116),(202011,117),(202012,118),(202013,119),(202014,120),(202015,121),(202016,122),(202017,123),(202018,124),(202019,125),(202020,126),(202021,127),(202022,128),(202023,129),(202024,130),(202025,131),(202026,132),(202027,133),(202028,134),(202029,135),(202030,136),(202031,137),(202032,138),(202033,139),(202034,140),(202035,141),(202036,142),(202037,143),(202038,144),(202039,145),(202040,146),(202041,147),(202042,148),(202043,149),(202044,150),(202045,151),(202046,152),(202047,153),(202048,154),(202049,155),(202050,156),(202051,157),(202052,158);
/*!40000 ALTER TABLE `week_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 16:19:11
