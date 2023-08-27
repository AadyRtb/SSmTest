-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ssm
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `clazz`
--

DROP TABLE IF EXISTS `clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clazz` (
  `cid` int NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `tname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clazz`
--

LOCK TABLES `clazz` WRITE;
/*!40000 ALTER TABLE `clazz` DISABLE KEYS */;
INSERT INTO `clazz` VALUES (1,'软产2101','刘志'),(2,'电产2101','张继'),(3,'车产2101','李湘'),(4,'资环2101','赵之德'),(5,'临床2101','曾刚');
/*!40000 ALTER TABLE `clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaner`
--

DROP TABLE IF EXISTS `cleaner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleaner` (
  `cleanid` int NOT NULL,
  `cleanname` varchar(45) DEFAULT NULL,
  `cphone` varchar(45) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  PRIMARY KEY (`cleanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaner`
--

LOCK TABLES `cleaner` WRITE;
/*!40000 ALTER TABLE `cleaner` DISABLE KEYS */;
INSERT INTO `cleaner` VALUES (31,'知春','213123',11),(32,'天后','421414',12),(33,'五爷','1424414',22),(34,'菲克','1241414124124',21),(35,'飞科','3423',31);
/*!40000 ALTER TABLE `cleaner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dormitory` (
  `rid` int NOT NULL,
  `rfloor` int DEFAULT NULL,
  `bid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormitory`
--

LOCK TABLES `dormitory` WRITE;
/*!40000 ALTER TABLE `dormitory` DISABLE KEYS */;
INSERT INTO `dormitory` VALUES (1101,11,'南一'),(1102,11,'南一'),(1103,11,'南一'),(1104,11,'南一'),(1105,11,'南一'),(1201,12,'南一'),(1202,12,'南一'),(1203,12,'南一'),(1204,12,'南一'),(1205,12,'南一'),(2101,21,'南二'),(2102,21,'南二'),(2103,21,'南二'),(2104,21,'南二'),(2105,21,'南二'),(2201,22,'南二'),(2202,22,'南二'),(2203,22,'南二'),(2204,22,'南二'),(2205,22,'南二'),(3101,31,'南三'),(3102,31,'南三'),(3103,31,'南三'),(3104,31,'南三'),(3105,31,'南三'),(3201,32,'南三'),(3202,32,'南三'),(3203,32,'南三'),(3204,32,'南三'),(3205,32,'南三'),(4101,41,'南四'),(4102,41,'南四'),(4103,41,'南四'),(4104,41,'南四'),(4105,41,'南四'),(4201,42,'南四'),(4202,42,'南四'),(4203,42,'南四'),(4204,42,'南四'),(4205,42,'南四'),(5101,51,'南五'),(5102,51,'南五'),(5103,51,'南五'),(5104,51,'南五'),(5105,51,'南五'),(5201,52,'南五'),(5202,52,'南五'),(5203,52,'南五'),(5204,52,'南五'),(5205,52,'南五');
/*!40000 ALTER TABLE `dormitory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dormitorybuilding`
--

DROP TABLE IF EXISTS `dormitorybuilding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dormitorybuilding` (
  `bid` int NOT NULL,
  `bname` varchar(45) DEFAULT NULL,
  `fid` int DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dormitorybuilding`
--

LOCK TABLES `dormitorybuilding` WRITE;
/*!40000 ALTER TABLE `dormitorybuilding` DISABLE KEYS */;
INSERT INTO `dormitorybuilding` VALUES (1,'南一',1),(2,'南二',2),(3,'南三',3),(4,'南四',4),(5,'南五',5);
/*!40000 ALTER TABLE `dormitorybuilding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fireman`
--

DROP TABLE IF EXISTS `fireman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fireman` (
  `fid` int NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `fphone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fireman`
--

LOCK TABLES `fireman` WRITE;
/*!40000 ALTER TABLE `fireman` DISABLE KEYS */;
INSERT INTO `fireman` VALUES (11,'刘好','13245676578'),(12,'李五','19856482732'),(13,'张可','13479910931'),(14,'吴兴','10948372641'),(15,'占沃坎','10947264581');
/*!40000 ALTER TABLE `fireman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housemaster`
--

DROP TABLE IF EXISTS `housemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housemaster` (
  `rmid` int NOT NULL,
  `rmname` varchar(45) DEFAULT NULL,
  `rmphone` varchar(45) DEFAULT NULL,
  `bid` int DEFAULT NULL,
  PRIMARY KEY (`rmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housemaster`
--

LOCK TABLES `housemaster` WRITE;
/*!40000 ALTER TABLE `housemaster` DISABLE KEYS */;
INSERT INTO `housemaster` VALUES (21,'艾莉','12313231',1),(22,'卡卡','424114',2),(23,' 霍尔','5352525',3),(24,'凯越','235234',4),(25,'智业','2534234235',5);
/*!40000 ALTER TABLE `housemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `mid` int NOT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `mphone` varchar(45) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (41,'捍卫任','123123',32),(42,'基科','44424',41),(43,'玛法','124556666',42),(44,'李浩','12313213',51),(45,'李灏','988776',52);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management` (
  `eid` int NOT NULL,
  `ename` varchar(45) DEFAULT NULL,
  `work` varchar(45) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management`
--

LOCK TABLES `management` WRITE;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
INSERT INTO `management` VALUES (11,'刘好','消防',213),(12,'李五','消防',213),(13,'张可','消防',324),(14,'吴兴','消防',412),(15,'占沃坎','消防',123),(21,'艾莉','宿管',312),(22,'卡卡','宿管',312),(23,' 霍尔','宿管',321),(24,'凯越','宿管',123),(25,'智业','宿管',321),(31,'知春','保洁',123),(32,'天后','保洁',412),(33,'五爷','保洁',234),(34,'菲克','保洁',234),(35,'飞科','保洁',232),(41,'捍卫任','维修',234),(42,'基科','维修',123),(43,'玛法','维修',324),(44,'李浩','维修',234),(45,'李灏','维修',234);
/*!40000 ALTER TABLE `management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `idstudent` int NOT NULL,
  `studentname` varchar(45) DEFAULT NULL,
  `iddormitory` int DEFAULT NULL,
  `classroom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (101,'奇迹行者',1101,'软产2101'),(102,'老逼登',1102,'软产2101'),(103,'任正伟',1103,'软产2101'),(104,'gwq',1104,'软产2101'),(105,'阿尔卡彭',1105,'软产2101'),(106,'garge',1201,'软产2101'),(107,'葛瑞克',1202,'软产2101'),(108,'赛博朋克',1203,'软产2101'),(109,'聪明的墨菲特',1204,'软产2101'),(110,'胡若蓓',1205,'软产2101'),(201,'刘能',2101,'电产2101'),(202,'呼呼',2102,'电产2101'),(203,'阿迪王',2103,'电产2101'),(204,'端午节',2104,'电产2101'),(205,'李说',2105,'电产2101'),(206,'达瓦',2201,'电产2101'),(207,'范文芳',2202,'电产2101'),(208,'芙蓉',2203,'电产2101'),(209,'斐济',2204,'电产2101'),(210,'蜜饯',2205,'电产2101'),(301,'李刚',3101,'车产2101'),(302,'极客',3102,'车产2101'),(303,'聚光若',3103,'车产2101'),(304,'哥廷根',3104,'车产2101'),(305,'必将',3105,'车产2101'),(306,'低洼',3201,'车产2101'),(307,'阿达瓦',3202,'车产2101'),(308,'济南',3203,'车产2101'),(309,'阿文',3204,'车产2101'),(310,'好友',3205,'车产2101'),(401,'卡纳汉',4101,'资环2101'),(402,'武大靖',4102,'资环2101'),(403,'范文风',4103,'资环2101'),(404,'大文豪',4104,'资环2101'),(405,'殿外',4105,'资环2101'),(406,'大胃王',4201,'资环2101'),(407,'大武当',4202,'资环2101'),(408,'奶妈',4203,'资环2101'),(409,'阿瓦蒂',4204,'资环2101'),(410,'达维多夫',4205,'资环2101'),(501,'菲菲',5101,'临床2101'),(502,'夸克',5102,'临床2101'),(503,'荣荣',5103,'临床2101'),(504,'忽忽',5104,'临床2101'),(505,'版本',5105,'临床2101'),(506,'木卡姆',5201,'临床2101'),(507,'虎虎',5202,'临床2101'),(508,'九九',5203,'临床2101'),(509,'欧卡',5204,'临床2101'),(510,'黑魂',5205,'临床2101');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234'),('qwer','1111');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-12 19:02:13
