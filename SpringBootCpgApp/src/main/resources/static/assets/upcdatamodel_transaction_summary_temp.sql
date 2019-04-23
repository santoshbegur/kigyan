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
-- Table structure for table `transaction_summary_temp`
--

DROP TABLE IF EXISTS `transaction_summary_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transaction_summary_temp` (
  `s_week_id` int(6) DEFAULT NULL,
  `week_id` int(6) DEFAULT NULL,
  `store_id` int(3) DEFAULT NULL,
  `l3_id` int(3) DEFAULT NULL,
  `qty` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_summary_temp`
--

LOCK TABLES `transaction_summary_temp` WRITE;
/*!40000 ALTER TABLE `transaction_summary_temp` DISABLE KEYS */;
INSERT INTO `transaction_summary_temp` VALUES (1,201751,1,100037,189),(1,201751,1,100038,1016),(4,201802,1,100003,1722),(4,201802,1,100104,45),(17,201815,1,100037,183),(23,201821,1,100003,395),(29,201827,1,100104,46),(39,201837,1,100104,18),(46,201844,1,100003,415),(49,201847,1,100038,147),(52,201850,1,100104,22),(62,201908,1,100038,528),(66,201912,1,100037,49),(71,201917,1,100104,42),(1,201751,2,100037,182),(4,201802,2,100038,367),(7,201805,2,100003,6660),(20,201818,2,100003,30735),(33,201831,2,100038,78),(36,201834,2,100038,160),(36,201834,2,100104,494),(43,201841,2,100037,246),(46,201844,2,100037,55),(55,201901,2,100104,254),(59,201905,2,100038,225),(7,201805,3,100037,39),(16,201814,3,100104,467),(20,201818,3,100038,498),(23,201821,3,100003,6348),(26,201824,3,100003,12652),(27,201825,3,100037,194),(29,201827,3,100104,571),(42,201840,3,100104,1673),(43,201841,3,100037,385),(46,201844,3,100037,53),(49,201847,3,100038,137),(52,201850,3,100037,44),(55,201901,3,100104,446),(56,201902,3,100037,54),(59,201905,3,100037,176),(62,201908,3,100037,216),(68,201914,3,100038,329),(3,201801,4,100104,680),(10,201808,4,100037,147),(10,201808,4,100038,506),(13,201811,4,100003,42275),(16,201814,4,100038,450),(26,201824,4,100003,17378),(42,201840,4,100104,2687),(48,201846,4,100003,11511),(48,201846,4,100104,724),(51,201849,4,100104,870),(52,201850,4,100037,158),(55,201901,4,100003,9815),(61,201907,4,100104,2369),(65,201911,4,100037,191),(71,201917,4,100003,31810),(1,201751,1,100003,1659),(11,201809,1,100003,557),(11,201809,1,100038,257),(11,201809,1,100104,13),(13,201811,1,100037,222),(14,201812,1,100104,55),(21,201819,1,100038,874),(24,201822,1,100104,58),(27,201825,1,100003,552),(34,201832,1,100003,512),(40,201838,1,100003,1993),(40,201838,1,100104,66),(56,201902,1,100003,389),(65,201911,1,100037,64),(69,201915,1,100038,117),(69,201915,1,100104,10),(3,201801,2,100003,6978),(6,201804,2,100003,23358),(6,201804,2,100104,834),(8,201806,2,100037,193),(19,201817,2,100038,84),(25,201823,2,100104,891),(28,201826,2,100037,179),(29,201827,2,100038,61),(32,201830,2,100003,27051),(38,201836,2,100038,93),(38,201836,2,100104,251),(45,201843,2,100003,23905),(51,201849,2,100003,6391),(55,201901,2,100038,56),(64,201910,2,100038,49),(64,201910,2,100104,266),(67,201913,2,100104,254),(1,201751,3,100038,563),(8,201806,3,100038,527),(27,201825,3,100003,18089),(43,201841,3,100003,28825),(46,201844,3,100104,437),(52,201850,3,100104,458),(55,201901,3,100037,32),(56,201902,3,100104,427),(62,201908,3,100104,1402),(65,201911,3,100104,443),(66,201912,3,100038,84),(69,201915,3,100038,91),(9,201807,4,100003,37480),(9,201807,4,100104,2058),(12,201810,4,100003,42732),(22,201820,4,100003,21220),(25,201823,4,100038,1348),(28,201826,4,100003,20631),(28,201826,4,100038,339),(38,201836,4,100104,786),(40,201838,4,100037,1016),(51,201849,4,100003,10529),(54,201852,4,100003,11260),(64,201910,4,100003,15036),(67,201913,4,100104,760),(70,201916,4,100003,46534),(70,201916,4,100104,2396),(4,201802,1,100038,1078),(8,201806,1,100037,207),(14,201812,1,100037,184),(14,201812,1,100038,974),(17,201815,1,100038,712),(20,201818,1,100003,2135),(20,201818,1,100038,940),(42,201840,1,100104,73),(46,201844,1,100038,150),(53,201851,1,100037,49),(55,201901,1,100104,14),(56,201902,1,100038,105),(10,201808,2,100104,321),(16,201814,2,100104,334),(23,201821,2,100003,5849),(23,201821,2,100038,60),(26,201824,2,100003,9808),(26,201824,2,100104,276),(33,201831,2,100037,150),(42,201840,2,100104,1225),(45,201843,2,100104,917),(49,201847,2,100037,42),(59,201905,2,100037,178),(68,201914,2,100104,1034),(69,201915,2,100037,96),(13,201811,3,100104,1316),(19,201817,3,100104,351),(36,201834,3,100003,21732),(39,201837,3,100003,9777),(55,201901,3,100003,6792),(61,201907,3,100104,1334),(65,201911,3,100038,88),(69,201915,3,100037,138),(71,201917,3,100038,222),(7,201805,4,100037,153),(16,201814,4,100003,13029),(19,201817,4,100104,689),(23,201821,4,100003,9948),(32,201830,4,100038,1434),(32,201830,4,100104,2079),(35,201833,4,100104,2217),(58,201904,4,100038,1540),(62,201908,4,100037,656),(64,201910,4,100104,817),(68,201914,4,100038,1411),(2,201752,1,100038,768),(6,201804,1,100038,1088),(16,201814,1,100037,48),(21,201819,1,100104,55),(28,201826,1,100104,11),(29,201827,1,100037,100),(38,201836,1,100003,438),(41,201839,1,100003,567),(45,201843,1,100037,201),(47,201845,1,100104,21),(70,201916,1,100003,2257),(70,201916,1,100038,412),(2,201752,2,100003,16863),(2,201752,2,100038,263),(5,201803,2,100003,7624),(5,201803,2,100104,306),(15,201813,2,100003,24822),(18,201816,2,100038,378),(21,201819,2,100104,956),(25,201823,2,100038,325),(31,201829,2,100104,219),(41,201839,2,100038,82),(44,201842,2,100003,7043),(51,201849,2,100037,37),(54,201852,2,100038,67),(60,201906,2,100003,7065),(67,201913,2,100038,72),(6,201804,3,100037,139),(15,201813,3,100003,27014),(22,201820,3,100037,228),(24,201822,3,100104,1441),(28,201826,3,100037,226),(28,201826,3,100038,105),(44,201842,3,100003,8754),(70,201916,3,100003,33149),(70,201916,3,100038,274),(2,201752,4,100003,26028),(8,201806,4,100003,38231),(12,201810,4,100037,593),(21,201819,4,100003,51342),(21,201819,4,100104,2232),(24,201822,4,100003,41534),(25,201823,4,100037,1216),(27,201825,4,100104,1081),(31,201829,4,100003,15605),(40,201838,4,100038,1492),(60,201906,4,100037,143),(7,201805,1,100038,300),(11,201809,1,100037,46),(14,201812,1,100003,1694),(20,201818,1,100104,122),(21,201819,1,100037,326),(24,201822,1,100037,237),(33,201831,1,100104,9),(36,201834,1,100038,310),(36,201834,1,100104,52),(39,201837,1,100003,375),(39,201837,1,100038,152),(52,201850,1,100038,134),(59,201905,1,100037,221),(59,201905,1,100038,490),(4,201802,2,100037,166),(7,201805,2,100104,254),(14,201812,2,100037,283),(17,201815,2,100003,19368),(17,201815,2,100038,252),(24,201822,2,100037,416),(26,201824,2,100038,77),(33,201831,2,100003,11062),(36,201834,2,100003,17994),(39,201837,2,100003,7749),(40,201838,2,100037,344),(49,201847,2,100038,75),(52,201850,2,100038,74),(55,201901,2,100003,5894),(56,201902,2,100037,37),(65,201911,2,100104,222),(66,201912,2,100037,96),(4,201802,3,100037,143),(7,201805,3,100003,8065),(10,201808,3,100038,121),(10,201808,3,100104,285),(13,201811,3,100003,32289),(17,201815,3,100037,231),(20,201818,3,100037,462),(26,201824,3,100038,144),(29,201827,3,100003,13344),(29,201827,3,100038,105),(42,201840,3,100003,25866),(52,201850,3,100038,115),(58,201904,3,100104,1395),(10,201808,4,100003,12600),(14,201812,4,100037,641),(17,201815,4,100037,614),(23,201821,4,100038,261),(29,201827,4,100003,18471),(29,201827,4,100038,363),(29,201827,4,100104,865),(32,201830,4,100003,45911),(36,201834,4,100037,586),(39,201837,4,100038,360),(42,201840,4,100003,37317),(49,201847,4,100037,122),(55,201901,4,100104,648),(58,201904,4,100104,2298),(65,201911,4,100003,12008),(6,201804,1,100104,43),(19,201817,1,100038,207),(22,201820,1,100104,9),(38,201836,1,100104,8),(41,201839,1,100037,70),(44,201842,1,100037,48),(45,201843,1,100104,49),(47,201845,1,100037,45),(48,201846,1,100104,18),(54,201852,1,100104,12),(67,201913,1,100104,6),(68,201914,1,100003,1765),(68,201914,1,100038,455),(71,201917,1,100038,281),(5,201803,2,100038,95),(8,201806,2,100038,346),(27,201825,2,100038,89),(40,201838,2,100038,316),(43,201841,2,100104,1040),(46,201844,2,100003,7457),(69,201915,2,100003,9138),(15,201813,3,100104,1279),(19,201817,3,100003,10750),(21,201819,3,100037,458),(22,201820,3,100104,388),(25,201823,3,100003,33200),(32,201830,3,100003,32647),(40,201838,3,100037,400),(41,201839,3,100104,569),(44,201842,3,100104,466),(50,201848,3,100037,49),(58,201904,3,100038,279),(66,201912,3,100037,108),(14,201812,4,100038,1873),(16,201814,4,100037,245),(17,201815,4,100104,1568),(20,201818,4,100038,1647),(20,201818,4,100104,2638),(27,201825,4,100003,30039),(45,201843,4,100037,883),(59,201905,4,100038,1467),(62,201908,4,100104,2204),(69,201915,4,100003,15519),(7,201805,1,100003,445),(10,201808,1,100104,9),(13,201811,1,100104,38),(23,201821,1,100104,13),(33,201831,1,100038,143),(40,201838,1,100037,301),(46,201844,1,100037,51),(49,201847,1,100003,428),(49,201847,1,100104,22),(52,201850,1,100003,335),(56,201902,1,100037,24),(59,201905,1,100003,1651),(65,201911,1,100003,423),(65,201911,1,100038,128),(65,201911,1,100104,26),(68,201914,1,100104,64),(7,201805,2,100038,91),(10,201808,2,100038,92),(11,201809,2,100037,93),(13,201811,2,100104,1119),(23,201821,2,100104,280),(27,201825,2,100037,173),(42,201840,2,100038,309),(3,201801,1,100037,34),(9,201807,1,100038,1035),(12,201810,1,100104,42),(28,201826,1,100003,626),(32,201830,1,100037,305),(34,201832,1,100104,22),(41,201839,1,100038,128),(44,201842,1,100104,16),(57,201903,1,100104,72),(61,201907,1,100037,181),(63,201909,1,100104,25),(64,201910,1,100037,85),(6,201804,2,100037,168),(9,201807,2,100003,23932),(12,201810,2,100003,26244),(16,201814,2,100037,59),(22,201820,2,100037,148),(28,201826,2,100038,84),(44,201842,2,100104,324),(53,201851,2,100104,229),(60,201906,2,100104,253),(64,201910,2,100037,73),(67,201913,2,100037,70),(7,201805,1,100104,12),(17,201815,1,100003,1478),(23,201821,1,100038,127),(26,201824,1,100104,20),(27,201825,1,100037,90),(33,201831,1,100003,584),(36,201834,1,100003,876),(37,201835,1,100037,552),(43,201841,1,100037,247),(62,201908,1,100003,1712),(62,201908,1,100104,76),(69,201915,1,100037,80),(4,201802,2,100003,24714),(10,201808,2,100003,7990),(17,201815,2,100037,217),(20,201818,2,100038,352),(29,201827,2,100104,259),(39,201837,2,100038,93),(39,201837,2,100104,230),(42,201840,2,100003,21412),(49,201847,2,100003,8037),(52,201850,2,100003,7329),(59,201905,2,100003,20389),(1,201751,1,100104,58),(4,201802,1,100037,180),(5,201803,1,100038,328),(8,201806,1,100104,37),(20,201818,1,100037,354),(24,201822,1,100003,2006),(34,201832,1,100038,168),(36,201834,1,100037,174),(37,201835,1,100038,1248),(42,201840,1,100037,249),(46,201844,1,100104,5),(50,201848,1,100003,345),(52,201850,1,100037,45),(53,201851,1,100003,385),(53,201851,1,100104,17),(55,201901,1,100037,25),(56,201902,1,100104,26),(60,201906,1,100003,376),(63,201909,1,100003,393),(66,201912,1,100038,104),(66,201912,1,100104,8),(2,201752,2,100037,158),(3,201801,2,100038,84),(3,201801,2,100104,366),(15,201813,2,100037,318),(16,201814,2,100038,82),(18,201816,2,100037,312),(28,201826,2,100104,354),(32,201830,2,100104,912),(48,201846,2,100038,81),(48,201846,2,100104,353),(50,201848,2,100037,46),(54,201852,2,100003,6918),(18,201816,1,100038,965),(23,201821,1,100037,43),(26,201824,1,100037,95),(27,201825,1,100104,23),(37,201835,1,100104,170),(50,201848,1,100038,180),(60,201906,1,100038,112),(68,201914,1,100037,246),(69,201915,1,100003,546),(6,201804,2,100038,347),(13,201811,2,100003,27700),(22,201820,2,100003,11674),(34,201832,2,100037,148),(35,201833,2,100003,27429),(47,201845,2,100037,75),(9,201807,1,100037,204),(12,201810,1,100003,1891),(15,201813,1,100104,48),(18,201816,1,100104,37),(22,201820,1,100003,413),(22,201820,1,100037,60),(22,201820,1,100038,213),(28,201826,1,100038,126),(38,201836,1,100037,84),(38,201836,1,100038,135),(41,201839,1,100104,16),(47,201845,1,100003,399),(47,201845,1,100038,134),(50,201848,1,100104,9),(51,201849,1,100037,36),(54,201852,1,100038,114),(60,201906,1,100104,15),(64,201910,1,100003,522),(67,201913,1,100003,463),(71,201917,1,100037,173),(2,201752,2,100104,760),(8,201806,2,100104,990),(9,201807,2,100038,370),(15,201813,2,100038,376),(34,201832,2,100038,69),(37,201835,2,100104,2044),(38,201836,2,100037,109),(50,201848,2,100104,396),(5,201803,1,100003,407),(18,201816,1,100003,1897),(21,201819,1,100003,2422),(24,201822,1,100038,709),(33,201831,1,100037,86),(43,201841,1,100003,1811),(43,201841,1,100038,613),(43,201841,1,100104,34),(59,201905,1,100104,72),(63,201909,1,100038,98),(12,201810,2,100104,876),(13,201811,2,100038,348),(19,201817,2,100003,9065),(21,201819,2,100037,401),(22,201820,2,100104,275),(35,201833,2,100038,308),(37,201835,2,100037,842),(41,201839,2,100104,408),(44,201842,2,100037,67),(45,201843,2,100038,325),(51,201849,2,100104,304),(3,201801,1,100003,405),(10,201808,1,100003,450),(16,201814,1,100104,23),(19,201817,1,100003,517),(25,201823,1,100104,41),(29,201827,1,100038,108),(31,201829,1,100037,64),(35,201833,1,100104,74),(42,201840,1,100038,582),(51,201849,1,100003,392),(70,201916,1,100037,282),(4,201802,2,100104,1215),(10,201808,2,100037,60),(11,201809,2,100038,95),(14,201812,2,100003,25621),(14,201812,2,100038,356),(21,201819,2,100003,31807),(24,201822,2,100038,364),(37,201835,2,100038,654),(43,201841,2,100038,356),(49,201847,2,100104,280),(56,201902,2,100003,7184),(56,201902,2,100038,69),(2,201752,1,100037,140),(3,201801,1,100038,331),(3,201801,1,100104,17),(6,201804,1,100003,1538),(9,201807,1,100104,21),(12,201810,1,100037,184),(13,201811,1,100038,1051),(26,201824,1,100003,517),(26,201824,1,100038,126),(29,201827,1,100003,689),(34,201832,1,100037,80),(35,201833,1,100003,1752),(45,201843,1,100003,1737),(45,201843,1,100038,629),(51,201849,1,100104,7),(57,201903,1,100037,152),(58,201904,1,100104,62),(61,201907,1,100104,49),(8,201806,2,100003,23527),(13,201811,2,100037,243),(20,201818,2,100037,385),(23,201821,2,100037,68),(24,201822,2,100003,26774),(29,201827,2,100037,183),(42,201840,2,100037,235),(43,201841,2,100003,25880),(52,201850,2,100037,45),(53,201851,2,100003,6154),(53,201851,2,100038,72),(5,201803,1,100104,13),(12,201810,1,100038,902),(15,201813,1,100003,1743),(19,201817,1,100037,71),(25,201823,1,100038,690),(31,201829,1,100003,622),(31,201829,1,100104,16),(35,201833,1,100037,269),(44,201842,1,100038,140),(48,201846,1,100037,60),(57,201903,1,100003,1589),(57,201903,1,100038,528),(58,201904,1,100037,178),(67,201913,1,100038,137),(70,201916,1,100104,51),(12,201810,2,100037,227),(18,201816,2,100104,1147),(31,201829,2,100003,9229),(32,201830,2,100037,516),(35,201833,2,100037,504),(41,201839,2,100003,11803),(41,201839,2,100037,70),(44,201842,2,100038,61),(47,201845,2,100038,90),(47,201845,2,100104,324),(48,201846,2,100037,51),(50,201848,2,100003,6250),(10,201808,1,100038,266),(13,201811,1,100003,1820),(16,201814,1,100003,440),(16,201814,1,100038,250),(18,201816,1,100037,252),(25,201823,1,100037,327),(28,201826,1,100037,107),(55,201901,1,100038,106),(61,201907,1,100003,1649),(61,201907,1,100038,476),(1,201751,2,100003,22526),(7,201805,2,100037,54),(11,201809,2,100104,479),(17,201815,2,100104,637),(20,201818,2,100104,1186),(26,201824,2,100037,116),(27,201825,2,100003,13418),(27,201825,2,100104,419),(33,201831,2,100104,383),(36,201834,2,100037,286),(37,201835,2,100003,54846),(39,201837,2,100037,82),(40,201838,2,100003,27085),(40,201838,2,100104,1157),(46,201844,2,100038,72),(46,201844,2,100104,291),(50,201848,2,100038,68),(7,201805,1,100037,71),(8,201806,1,100003,1700),(8,201806,1,100038,1062),(10,201808,1,100037,51),(17,201815,1,100104,19),(27,201825,1,100038,125),(37,201835,1,100003,3920),(39,201837,1,100037,59),(40,201838,1,100038,624),(49,201847,1,100037,41),(53,201851,1,100038,126),(62,201908,1,100037,181),(66,201912,1,100003,463),(5,201803,2,100037,48),(9,201807,2,100104,898),(16,201814,2,100003,8273),(19,201817,2,100104,262),(22,201820,2,100038,67),(29,201827,2,100003,10378),(31,201829,2,100037,137),(32,201830,2,100038,303),(35,201833,2,100104,1191),(38,201836,2,100003,7708),(48,201846,2,100003,7290),(51,201849,2,100038,108),(53,201851,2,100037,46),(5,201803,1,100037,56),(15,201813,1,100037,207),(19,201817,1,100104,14),(32,201830,1,100003,2054),(32,201830,1,100038,606),(32,201830,1,100104,68),(35,201833,1,100038,534),(42,201840,1,100003,1917),(48,201846,1,100003,429),(48,201846,1,100038,165),(50,201848,1,100037,54),(55,201901,1,100003,344),(58,201904,1,100003,1615),(58,201904,1,100038,494),(60,201906,1,100037,45),(63,201909,1,100037,39),(64,201910,1,100104,14),(71,201917,1,100003,1484),(1,201751,2,100038,365),(1,201751,2,100104,926),(11,201809,2,100003,9623),(14,201812,2,100104,949),(21,201819,2,100038,314),(45,201843,2,100037,248),(52,201850,2,100104,323),(58,201904,2,100104,778),(65,201911,2,100003,7277),(68,201914,2,100003,26486),(68,201914,2,100038,234),(1,201751,3,100037,159),(7,201805,3,100038,157),(10,201808,3,100003,8733),(14,201812,3,100037,288),(20,201818,3,100003,35534),(32,201830,3,100104,1467),(36,201834,3,100038,216),(39,201837,3,100104,487),(42,201840,3,100038,430),(45,201843,3,100104,1385),(48,201846,3,100104,443),(49,201847,3,100037,46),(52,201850,3,100003,8574),(62,201908,3,100038,311),(65,201911,3,100003,8987),(6,201804,4,100104,2285),(7,201805,4,100003,10792),(13,201811,4,100038,1936),(2,201752,1,100003,1338),(2,201752,1,100104,29),(6,201804,1,100037,179),(9,201807,1,100003,1634),(15,201813,1,100038,1021),(25,201823,1,100003,1903),(31,201829,1,100038,148),(44,201842,1,100003,367),(51,201849,1,100038,171),(54,201852,1,100003,344),(54,201852,1,100037,23),(64,201910,1,100038,97),(67,201913,1,100037,65),(3,201801,2,100037,52),(9,201807,2,100037,162),(12,201810,2,100038,332),(15,201813,2,100104,905),(18,201816,2,100003,27863),(19,201817,2,100037,80),(24,201822,2,100104,1096),(25,201823,2,100003,27898),(25,201823,2,100037,439),(28,201826,2,100003,11426),(31,201829,2,100038,81),(34,201832,2,100003,9795),(34,201832,2,100104,304),(58,201904,2,100038,224),(60,201906,2,100037,47),(61,201907,2,100038,224),(61,201907,2,100104,898),(71,201917,2,100003,19636),(71,201917,2,100038,164),(1,201751,3,100003,24196),(1,201751,3,100104,1248),(3,201801,3,100037,37),(7,201805,3,100104,441),(8,201806,3,100003,27759),(11,201809,3,100003,11165),(11,201809,3,100038,149),(14,201812,3,100038,472),(17,201815,3,100003,21965),(24,201822,3,100038,458),(32,201830,3,100037,520),(40,201838,3,100038,435),(43,201841,3,100038,504),(3,201801,4,100038,442),(8,201806,4,100037,523),(11,201809,4,100037,216),(12,201810,4,100104,2358),(15,201813,4,100104,2202),(18,201816,4,100104,2366),(21,201819,4,100037,1400),(22,201820,4,100038,330),(5,201803,3,100038,151),(8,201806,3,100104,1259),(9,201807,3,100037,160),(11,201809,3,100104,537),(15,201813,3,100038,504),(18,201816,3,100003,31200),(18,201816,3,100104,1260),(21,201819,3,100038,492),(37,201835,3,100038,988),(47,201845,3,100104,393),(50,201848,3,100104,646),(63,201909,3,100038,70),(70,201916,3,100037,552),(2,201752,4,100038,1467),(8,201806,4,100104,2601),(15,201813,4,100037,722),(21,201819,4,100038,1688),(24,201822,4,100038,1559),(62,201908,2,100003,24160),(62,201908,2,100037,179),(62,201908,2,100038,247),(65,201911,2,100038,59),(71,201917,2,100104,587),(3,201801,3,100104,506),(4,201802,3,100038,553),(13,201811,3,100038,507),(23,201821,3,100038,91),(26,201824,3,100104,509),(33,201831,3,100037,136),(36,201834,3,100037,218),(39,201837,3,100038,113),(45,201843,3,100003,27599),(55,201901,3,100038,87),(62,201908,3,100003,25892),(68,201914,3,100003,30715),(68,201914,3,100104,1897),(71,201917,3,100003,22718),(71,201917,3,100104,1025),(4,201802,4,100037,497),(7,201805,4,100038,438),(13,201811,4,100104,2120),(22,201820,4,100104,654),(23,201821,4,100037,191),(26,201824,4,100038,316),(57,201903,2,100104,855),(60,201906,2,100038,61),(66,201912,2,100104,285),(67,201913,2,100003,8114),(2,201752,3,100003,17248),(2,201752,3,100038,369),(19,201817,3,100037,108),(21,201819,3,100104,1198),(31,201829,3,100038,124),(34,201832,3,100003,12146),(37,201835,3,100003,64392),(40,201838,3,100104,1447),(50,201848,3,100038,144),(53,201851,3,100003,7024),(53,201851,3,100104,470),(57,201903,3,100003,23735),(60,201906,3,100038,75),(67,201913,3,100037,77),(5,201803,4,100104,755),(8,201806,4,100038,1842),(11,201809,4,100104,973),(14,201812,4,100104,2201),(15,201813,4,100003,39916),(18,201816,4,100003,44208),(18,201816,4,100038,1807),(22,201820,4,100037,433),(20,201818,3,100104,1472),(23,201821,3,100104,258),(24,201822,3,100003,30794),(27,201825,3,100038,109),(29,201827,3,100037,279),(33,201831,3,100003,13564),(36,201834,3,100104,860),(48,201846,3,100037,88),(53,201851,3,100038,115),(56,201902,3,100038,92),(59,201905,3,100104,1766),(65,201911,3,100037,69),(71,201917,3,100037,422),(5,201803,4,100037,134),(6,201804,4,100003,37279),(9,201807,4,100038,1931),(18,201816,4,100037,832),(19,201817,4,100003,14907),(24,201822,4,100037,1050),(25,201823,4,100003,44667),(27,201825,4,100037,519),(28,201826,4,100104,776),(2,201752,3,100104,818),(6,201804,3,100003,26189),(9,201807,3,100003,26624),(9,201807,3,100038,544),(16,201814,3,100038,163),(24,201822,3,100037,428),(25,201823,3,100038,489),(25,201823,3,100104,1310),(32,201830,3,100038,444),(34,201832,3,100037,162),(35,201833,3,100038,459),(41,201839,3,100003,15980),(51,201849,3,100038,147),(54,201852,3,100038,123),(58,201904,3,100003,22372),(64,201910,3,100104,614),(67,201913,3,100003,10333),(4,201802,4,100038,1831),(17,201815,4,100003,30592),(17,201815,4,100038,1331),(19,201817,4,100037,227),(23,201821,4,100104,562),(26,201824,4,100104,845),(35,201833,4,100037,1139),(36,201834,4,100003,31110),(36,201834,4,100104,1384),(54,201852,2,100104,298),(58,201904,2,100003,20658),(4,201802,3,100003,25982),(10,201808,3,100037,61),(13,201811,3,100037,248),(14,201812,3,100104,1078),(16,201814,3,100037,76),(17,201815,3,100038,338),(17,201815,3,100104,890),(23,201821,3,100037,94),(33,201831,3,100038,114),(42,201840,3,100037,343),(45,201843,3,100037,299),(46,201844,3,100003,8787),(49,201847,3,100003,9228),(49,201847,3,100104,560),(58,201904,3,100037,159),(59,201905,3,100003,23561),(59,201905,3,100038,313),(61,201907,3,100037,182),(2,201752,4,100104,1781),(3,201801,4,100003,11040),(19,201817,4,100038,408),(62,201908,2,100104,769),(63,201909,2,100038,76),(65,201911,2,100037,58),(68,201914,2,100037,306),(71,201917,2,100037,350),(3,201801,3,100038,136),(5,201803,3,100037,46),(6,201804,3,100038,534),(11,201809,3,100037,70),(12,201810,3,100104,1462),(15,201813,3,100037,343),(19,201817,3,100038,151),(22,201820,3,100003,15899),(35,201833,3,100003,32868),(35,201833,3,100104,1314),(38,201836,3,100038,139),(51,201849,3,100104,361),(53,201851,3,100037,50),(54,201852,3,100003,7674),(54,201852,3,100104,575),(1,201751,4,100003,36260),(1,201751,4,100038,2007),(6,201804,4,100037,476),(14,201812,4,100003,41692),(27,201825,4,100038,338),(55,201901,2,100037,34),(58,201904,2,100037,154),(59,201905,2,100104,1132),(66,201912,2,100038,58),(69,201915,2,100104,287),(3,201801,3,100003,7776),(8,201806,3,100037,177),(9,201807,3,100104,1444),(28,201826,3,100104,496),(37,201835,3,100037,874),(41,201839,3,100038,135),(45,201843,3,100038,426),(47,201845,3,100037,119),(57,201903,3,100104,1200),(61,201907,3,100038,315),(63,201909,3,100037,41),(64,201910,3,100003,10953),(67,201913,3,100038,80),(70,201916,3,100104,1352),(3,201801,4,100037,123),(10,201808,4,100104,572),(11,201809,4,100003,14722),(11,201809,4,100038,433),(13,201811,4,100037,704),(57,201903,2,100003,21126),(70,201916,2,100003,28116),(12,201810,3,100037,195),(21,201819,3,100003,38483),(25,201823,3,100037,592),(27,201825,3,100104,538),(31,201829,3,100003,10903),(31,201829,3,100104,417),(34,201832,3,100038,138),(34,201832,3,100104,447),(35,201833,3,100037,492),(38,201836,3,100037,90),(44,201842,3,100038,107),(47,201845,3,100003,9591),(47,201845,3,100038,144),(51,201849,3,100037,44),(57,201903,3,100037,130),(60,201906,3,100003,8164),(69,201915,3,100104,467),(2,201752,4,100037,331),(5,201803,4,100003,11141),(5,201803,4,100038,547),(9,201807,4,100037,507),(15,201813,4,100038,1932),(24,201822,4,100104,2776),(56,201902,2,100104,290),(63,201909,2,100003,7881),(66,201912,2,100003,7943),(69,201915,2,100038,65),(6,201804,3,100104,1055),(16,201814,3,100003,10072),(18,201816,3,100037,362),(22,201820,3,100038,138),(31,201829,3,100037,151),(38,201836,3,100003,9605),(38,201836,3,100104,451),(48,201846,3,100003,8560),(48,201846,3,100038,117),(51,201849,3,100003,7165),(60,201906,3,100037,48),(61,201907,3,100003,26938),(64,201910,3,100038,91),(67,201913,3,100104,397),(4,201802,4,100003,36766),(4,201802,4,100104,2629),(7,201805,4,100104,700),(26,201824,4,100037,337),(29,201827,4,100037,574),(57,201903,2,100037,159),(61,201907,2,100003,24364),(63,201909,2,100037,59),(64,201910,2,100003,8923),(70,201916,2,100037,467),(70,201916,2,100104,904),(4,201802,3,100104,1417),(14,201812,3,100003,28871),(26,201824,3,100037,161),(33,201831,3,100104,609),(39,201837,3,100037,101),(40,201838,3,100003,31986),(43,201841,3,100104,1620),(46,201844,3,100038,149),(56,201902,3,100003,7644),(66,201912,3,100003,9257),(68,201914,3,100037,372),(69,201915,3,100003,11475),(1,201751,4,100037,459),(6,201804,4,100038,1848),(12,201810,4,100038,1704),(25,201823,4,100104,2376),(16,201814,4,100104,668),(20,201818,4,100037,1185),(39,201837,4,100003,13130),(42,201840,4,100038,1507),(45,201843,4,100003,39377),(45,201843,4,100104,2316),(55,201901,4,100038,366),(59,201905,4,100037,622),(68,201914,4,100003,42939),(71,201917,4,100038,945),(71,201917,4,100104,1436),(47,201845,2,100003,7569),(54,201852,2,100037,36),(57,201903,2,100038,233),(61,201907,2,100037,159),(63,201909,2,100104,333),(70,201916,2,100038,218),(2,201752,3,100037,111),(5,201803,3,100003,8217),(5,201803,3,100104,280),(12,201810,3,100003,30652),(12,201810,3,100038,489),(18,201816,3,100038,524),(28,201826,3,100003,15079),(37,201835,3,100104,3088),(41,201839,3,100037,106),(44,201842,3,100037,109),(50,201848,3,100003,8025),(54,201852,3,100037,35),(57,201903,3,100038,350),(60,201906,3,100104,355),(63,201909,3,100003,9786),(63,201909,3,100104,553),(64,201910,3,100037,72),(66,201912,3,100104,289),(1,201751,4,100104,2703),(37,201835,4,100037,1846),(38,201836,4,100038,427),(48,201846,4,100038,498),(60,201906,4,100104,570),(61,201907,4,100038,1381),(43,201841,4,100104,2299),(44,201842,4,100037,198),(47,201845,4,100037,252),(47,201845,4,100038,481),(53,201851,4,100003,10525),(53,201851,4,100104,735),(54,201852,4,100037,128),(60,201906,4,100003,11510),(64,201910,4,100037,277),(67,201913,4,100037,244),(69,201915,4,100104,583),(33,201831,4,100037,334),(39,201837,4,100037,255),(45,201843,4,100038,1632),(46,201844,4,100037,155),(52,201850,4,100003,12464),(52,201850,4,100038,413),(58,201904,4,100003,32603),(65,201911,4,100038,339),(28,201826,4,100037,455),(31,201829,4,100037,346),(37,201835,4,100038,3276),(38,201836,4,100037,259),(41,201839,4,100037,273),(50,201848,4,100003,10697),(50,201848,4,100104,784),(56,201902,4,100104,666),(57,201903,4,100003,34676),(60,201906,4,100038,330),(63,201909,4,100038,367),(66,201912,4,100003,12299),(43,201841,4,100003,39662),(46,201844,4,100003,12487),(56,201902,4,100003,10759),(56,201902,4,100038,339),(59,201905,4,100003,33915),(69,201915,4,100038,302),(31,201829,4,100104,865),(41,201839,4,100038,410),(41,201839,4,100104,1183),(44,201842,4,100104,856),(61,201907,4,100003,37705),(63,201909,4,100037,164),(67,201913,4,100003,13766),(35,201833,4,100003,45691),(35,201833,4,100038,1505),(41,201839,4,100003,21939),(44,201842,4,100003,12928),(47,201845,4,100104,777),(51,201849,4,100038,456),(54,201852,4,100104,777),(70,201916,4,100038,1335),(36,201834,4,100038,818),(39,201837,4,100104,745),(59,201905,4,100104,2301),(68,201914,4,100037,935),(31,201829,4,100038,384),(34,201832,4,100003,16363),(34,201832,4,100038,341),(34,201832,4,100104,809),(37,201835,4,100003,91978),(37,201835,4,100104,5688),(40,201838,4,100104,2408),(47,201845,4,100003,12708),(50,201848,4,100038,454),(53,201851,4,100038,403),(57,201903,4,100038,1553),(63,201909,4,100003,12221),(66,201912,4,100038,347),(20,201818,4,100003,46882),(46,201844,4,100104,785),(48,201846,4,100037,213),(49,201847,4,100038,418),(51,201849,4,100037,146),(62,201908,4,100038,1371),(68,201914,4,100104,2553),(32,201830,4,100037,1147),(33,201831,4,100003,20752),(33,201831,4,100038,330),(33,201831,4,100104,886),(42,201840,4,100037,891),(43,201841,4,100038,1617),(46,201844,4,100038,409),(49,201847,4,100003,13305),(49,201847,4,100104,711),(52,201850,4,100104,943),(55,201901,4,100037,137),(58,201904,4,100037,543),(61,201907,4,100037,632),(62,201908,4,100003,37855),(65,201911,4,100104,630),(71,201917,4,100037,1013),(34,201832,4,100037,344),(38,201836,4,100003,13868),(43,201841,4,100037,870),(50,201848,4,100037,146),(53,201851,4,100037,154),(54,201852,4,100038,373),(56,201902,4,100037,147),(57,201903,4,100104,2309),(64,201910,4,100038,352),(66,201912,4,100037,262),(67,201913,4,100038,310),(69,201915,4,100037,376),(40,201838,4,100003,44592),(44,201842,4,100038,407),(57,201903,4,100037,504),(63,201909,4,100104,576),(66,201912,4,100104,630),(70,201916,4,100037,1298);
/*!40000 ALTER TABLE `transaction_summary_temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 16:18:05