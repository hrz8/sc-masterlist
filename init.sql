-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: sc-masterlist
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `actual_weight`
--

DROP TABLE IF EXISTS `actual_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actual_weight` (
  `id` int NOT NULL AUTO_INCREMENT,
  `part` int NOT NULL,
  `run` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_weight`
--

LOCK TABLES `actual_weight` WRITE;
/*!40000 ALTER TABLE `actual_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `sfx` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'BLACK','201B',NULL,NULL),(2,'IVORY','R080',NULL,NULL),(3,'IVORY','H0S9',NULL,NULL),(4,'BLACK','Y2W1',NULL,NULL),(5,'BLACK','R299',NULL,NULL),(6,NULL,'RS76',NULL,NULL),(7,NULL,'RT45',NULL,NULL),(8,'BLACK','11BK03',NULL,NULL),(9,'BLACK','11BK01',NULL,NULL),(10,'BLACK','12BK02',NULL,NULL),(11,'NATURAL','NATURAL',NULL,NULL),(12,'GREY','R8H',NULL,NULL),(13,'BEIGE','587',NULL,NULL),(14,'BLACK','RX04',NULL,NULL);
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grain_type`
--

DROP TABLE IF EXISTS `grain_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grain_type` (
  `code` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grain_type`
--

LOCK TABLES `grain_type` WRITE;
/*!40000 ALTER TABLE `grain_type` DISABLE KEYS */;
INSERT INTO `grain_type` VALUES ('GR002',NULL),('GR003',NULL),('GR004',NULL),('GR005',NULL),('GR006',NULL),('GR007',NULL),('GR008',NULL),('GR009',NULL),('GR010',NULL),('GR011',NULL),('GR012',NULL),('GR013',NULL),('GR014',NULL),('GR015',NULL),('GR016',NULL),('GR017',NULL),('GR018',NULL),('GR019',NULL),('GR020',NULL),('GR021',NULL),('GR022',NULL),('GR023',NULL),('GR024',NULL),('GR025',NULL),('GR026',NULL),('GR027',NULL),('GR028',NULL),('GR029',NULL),('GR030',NULL),('GR031',NULL),('GR032',NULL),('GR033',NULL),('GR034',NULL),('GR035',NULL),('GR036',NULL),('GR037',NULL),('GR038',NULL),('GR039',NULL),('GR040',NULL),('GR041',NULL),('GR042',NULL),('GR043',NULL),('GR044',NULL),('GR045',NULL),('GR046',NULL),('GR047',NULL),('GR048',NULL),('GR049',NULL),('GR050',NULL),('GR051',NULL),('GR052',NULL),('GR053',NULL),('GR054',NULL),('GR055',NULL),('GR056',NULL),('GR057',NULL),('GR058',NULL),('GR059',NULL),('GR060',NULL),('GR061',NULL),('GR062',NULL),('GR500',NULL),('GR501',NULL),('GR502',NULL),('GR503',NULL),('GR504',NULL),('GR505',NULL),('GR506',NULL),('GR507',NULL),('GR508',NULL),('GR509',NULL),('GR510',NULL),('GR511',NULL),('GR512',NULL),('GRAIN-A',NULL),('GRAIN-B',NULL),('GRAIN-C',NULL),('GRAIN-D',NULL),('GRAIN-E',NULL),('GRAIN-F',NULL),('GRAIN-G',NULL),('GRAIN-H',NULL),('GRAIN-I',NULL),('GRAIN-J',NULL),('GRAIN-K',NULL);
/*!40000 ALTER TABLE `grain_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tsm` varchar(255) NOT NULL,
  `description` text,
  `gradeCode` varchar(255) DEFAULT NULL,
  `makerName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e8dddd4ced7c87e40e622b2c2c3` (`gradeCode`),
  KEY `FK_d780f85b0178af88fa685933dc6` (`makerName`),
  CONSTRAINT `FK_d780f85b0178af88fa685933dc6` FOREIGN KEY (`makerName`) REFERENCES `material_maker` (`name`),
  CONSTRAINT `FK_e8dddd4ced7c87e40e622b2c2c3` FOREIGN KEY (`gradeCode`) REFERENCES `material_grade` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'5608G-1',NULL,'X660T','TPC'),(2,'5608G-5AL',NULL,'LA880T','TPC'),(3,'5608G-5A',NULL,'LA880T','TPC'),(4,'5608G-5ALS',NULL,'LA880T','TPC'),(5,'5608G-5BL',NULL,'BR5B1','TPC'),(6,'5608G-5BLS',NULL,'BR5B1','TPC'),(7,'5608G-7',NULL,'TSOP-7','TPC'),(8,'5514G-2L',NULL,'(PP) AZ564GL','TPC'),(9,'5514G-3AL',NULL,'(PP) CPS188','TPC'),(10,'5514G-3BL',NULL,'(PP) AZ864E4','TPC'),(11,'5514G-3BLS',NULL,'(PP) AZ864E4','TPC'),(12,'5512G-2A',NULL,'(ABS) 100-X01','TORAY'),(13,'5512G-2C',NULL,'(ABS) 450Y-MH5','TORAY'),(14,'5512G-3A',NULL,'(ABS) 100-X01','TORAY'),(15,'5512G-3',NULL,'(ABS) 100-MPF','TORAY'),(16,'5512G-4A',NULL,'(ABS) 325','TORAY'),(17,'5512G-4B',NULL,'(ABS) 325','TORAY'),(18,'5523G-2',NULL,'(ASA) W211','TECHNO POLYMER'),(19,'5523G-1W',NULL,'ASA',NULL),(20,'5526G-1',NULL,'PC/ABS','SABIC'),(21,'5514-2',NULL,'(PP) AW563','TPC'),(22,'5514G-2',NULL,'(PP) AW563','TPC'),(23,'5514-2B',NULL,'(PP) AW564','TPC'),(24,'5601-7L',NULL,'(PP) BYE63','TPC'),(25,'5601-7L',NULL,'(PP) BYE63','TPC'),(26,'5708-1',NULL,'(PP) CPS-142','TPC'),(27,'5515-1B',NULL,'POM','POLYPLASTICS'),(28,'5528-1LN',NULL,'B132AT (PP2)','RAPINDO');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_grade`
--

DROP TABLE IF EXISTS `material_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_grade` (
  `code` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_grade`
--

LOCK TABLES `material_grade` WRITE;
/*!40000 ALTER TABLE `material_grade` DISABLE KEYS */;
INSERT INTO `material_grade` VALUES ('(ABS) 100-MPF',NULL),('(ABS) 100-X01',NULL),('(ABS) 325',NULL),('(ABS) 450Y-MH5',NULL),('(ASA) W211',NULL),('(PP) AW563',NULL),('(PP) AW564',NULL),('(PP) AZ564GL',NULL),('(PP) AZ864E4',NULL),('(PP) BYE63',NULL),('(PP) CPS-142',NULL),('(PP) CPS188',NULL),('ASA',NULL),('B132AT (PP2)',NULL),('BR5B1',NULL),('LA880T',NULL),('PC/ABS',NULL),('POM',NULL),('TSOP-7',NULL),('X660T',NULL);
/*!40000 ALTER TABLE `material_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_maker`
--

DROP TABLE IF EXISTS `material_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_maker` (
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_maker`
--

LOCK TABLES `material_maker` WRITE;
/*!40000 ALTER TABLE `material_maker` DISABLE KEYS */;
INSERT INTO `material_maker` VALUES ('POLYPLASTICS',NULL),('RAPINDO',NULL),('SABIC',NULL),('TECHNO POLYMER',NULL),('TORAY',NULL),('TPC',NULL);
/*!40000 ALTER TABLE `material_maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1621751799090,'addSeed1621751799090');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mould_cav`
--

DROP TABLE IF EXISTS `mould_cav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mould_cav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_cav`
--

LOCK TABLES `mould_cav` WRITE;
/*!40000 ALTER TABLE `mould_cav` DISABLE KEYS */;
INSERT INTO `mould_cav` VALUES (1,'1',NULL),(2,'2',NULL),(3,'R/L SET',NULL),(4,'FAMILY MOULD',NULL);
/*!40000 ALTER TABLE `mould_cav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mould_maker`
--

DROP TABLE IF EXISTS `mould_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mould_maker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_maker`
--

LOCK TABLES `mould_maker` WRITE;
/*!40000 ALTER TABLE `mould_maker` DISABLE KEYS */;
INSERT INTO `mould_maker` VALUES (1,'TATEMATSU',NULL),(2,'YAMAGUCHI',NULL),(3,'KOZUKA',NULL),(4,'SUGITY',NULL),(5,'RPT',NULL),(6,'JS MOLD',NULL),(7,'SAEAM',NULL),(8,'NARA',NULL),(9,'HYUKJIN',NULL),(10,'NAN JOMG',NULL),(11,'SMT',NULL),(12,'JPQ',NULL);
/*!40000 ALTER TABLE `mould_maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mould_ton`
--

DROP TABLE IF EXISTS `mould_ton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mould_ton` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_ton`
--

LOCK TABLES `mould_ton` WRITE;
/*!40000 ALTER TABLE `mould_ton` DISABLE KEYS */;
INSERT INTO `mould_ton` VALUES (1,80,NULL),(2,170,NULL),(3,350,NULL),(4,650,NULL),(5,1300,NULL),(6,1600,NULL),(7,2500,NULL),(8,3500,NULL);
/*!40000 ALTER TABLE `mould_ton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `number` varchar(100) NOT NULL,
  `level` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `qtyPerUnit` int DEFAULT NULL,
  `qtyPerMonth` int DEFAULT NULL,
  `dwgWeight` int DEFAULT NULL,
  `paintColor` varchar(255) DEFAULT NULL,
  `paintCode` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sourcingRemarks` varchar(255) DEFAULT NULL,
  `processRouting` varchar(255) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `materialId` int DEFAULT NULL,
  `grainTypeCode` varchar(255) DEFAULT NULL,
  `mouldMakerId` int DEFAULT NULL,
  `mouldTonId` int DEFAULT NULL,
  `mouldCavId` int DEFAULT NULL,
  `actualWeightId` int DEFAULT NULL,
  `parentNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `FK_593b8516ef9fbcf79a5e966562b` (`projectName`),
  KEY `FK_9ad939eab558d2982213f2abd31` (`materialId`),
  KEY `FK_33fbb2da169e8c882066b5a39c7` (`grainTypeCode`),
  KEY `FK_508c3ef1ece31e2f2e863734810` (`mouldMakerId`),
  KEY `FK_ea9efc5003b26dd0010fc1ff96b` (`mouldTonId`),
  KEY `FK_f32254c0ad54abc51ecdaf8afce` (`mouldCavId`),
  KEY `FK_5b8d686a671eef6579f9c230938` (`actualWeightId`),
  KEY `FK_c0dbd0caa64157c4ef12171323b` (`parentNumber`),
  CONSTRAINT `FK_33fbb2da169e8c882066b5a39c7` FOREIGN KEY (`grainTypeCode`) REFERENCES `grain_type` (`code`),
  CONSTRAINT `FK_508c3ef1ece31e2f2e863734810` FOREIGN KEY (`mouldMakerId`) REFERENCES `mould_maker` (`id`),
  CONSTRAINT `FK_593b8516ef9fbcf79a5e966562b` FOREIGN KEY (`projectName`) REFERENCES `project` (`name`),
  CONSTRAINT `FK_5b8d686a671eef6579f9c230938` FOREIGN KEY (`actualWeightId`) REFERENCES `actual_weight` (`id`),
  CONSTRAINT `FK_9ad939eab558d2982213f2abd31` FOREIGN KEY (`materialId`) REFERENCES `material` (`id`),
  CONSTRAINT `FK_c0dbd0caa64157c4ef12171323b` FOREIGN KEY (`parentNumber`) REFERENCES `part` (`number`),
  CONSTRAINT `FK_ea9efc5003b26dd0010fc1ff96b` FOREIGN KEY (`mouldTonId`) REFERENCES `mould_ton` (`id`),
  CONSTRAINT `FK_f32254c0ad54abc51ecdaf8afce` FOREIGN KEY (`mouldCavId`) REFERENCES `mould_cav` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES ('52101-BZC10',1,'BUMPER, SUB-ASSY, FR (D-BRAND LO : W/SONAR, W/O FOG, W/O CAMERA)','https://picsum.photos/seed/picsum/200/300',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D26A',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('52119-BZR70',2,'COVER, FR BUMPER (D-BRAND)','https://picsum.photos/id/237/200/300',1,NULL,4831,'BODY COLOR','11BK01',NULL,NULL,NULL,'D26A',7,'GR504',1,8,1,NULL,'52101-BZC10'),('53111-BZ580',2,'GRILLE, RADIATOR (D-BRAND)','https://picsum.photos/200/300.jpg',2,1,292,'BLACK',NULL,NULL,'SC','RPT -> SC','D26A',17,'GR504',6,3,1,NULL,'52101-BZC10');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_closure`
--

DROP TABLE IF EXISTS `part_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_closure` (
  `parent_number` varchar(100) NOT NULL,
  `sub_number` varchar(100) NOT NULL,
  PRIMARY KEY (`parent_number`,`sub_number`),
  KEY `IDX_5f3f708108707e4ec29e58dd67` (`parent_number`),
  KEY `IDX_d3b4af31298359dad9615acf4e` (`sub_number`),
  CONSTRAINT `FK_5f3f708108707e4ec29e58dd675` FOREIGN KEY (`parent_number`) REFERENCES `part` (`number`),
  CONSTRAINT `FK_d3b4af31298359dad9615acf4ee` FOREIGN KEY (`sub_number`) REFERENCES `part` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_closure`
--

LOCK TABLES `part_closure` WRITE;
/*!40000 ALTER TABLE `part_closure` DISABLE KEYS */;
INSERT INTO `part_closure` VALUES ('52101-BZC10','52101-BZC10'),('52101-BZC10','52119-BZR70'),('52101-BZC10','53111-BZ580'),('52119-BZR70','52119-BZR70'),('53111-BZ580','53111-BZ580');
/*!40000 ALTER TABLE `part_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_color`
--

DROP TABLE IF EXISTS `part_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_color` (
  `partNumber` varchar(100) NOT NULL,
  `colorId` int NOT NULL,
  PRIMARY KEY (`partNumber`,`colorId`),
  KEY `IDX_28da4b6cdfd43bf0d47eea6ea2` (`partNumber`),
  KEY `IDX_b78e7ec7eb475861833682ddc0` (`colorId`),
  CONSTRAINT `FK_28da4b6cdfd43bf0d47eea6ea29` FOREIGN KEY (`partNumber`) REFERENCES `part` (`number`) ON DELETE CASCADE,
  CONSTRAINT `FK_b78e7ec7eb475861833682ddc0c` FOREIGN KEY (`colorId`) REFERENCES `color` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_color`
--

LOCK TABLES `part_color` WRITE;
/*!40000 ALTER TABLE `part_color` DISABLE KEYS */;
INSERT INTO `part_color` VALUES ('52119-BZR70',14),('53111-BZ580',14);
/*!40000 ALTER TABLE `part_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_process`
--

DROP TABLE IF EXISTS `part_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_process` (
  `partNumber` varchar(100) NOT NULL,
  `processName` varchar(255) NOT NULL,
  PRIMARY KEY (`partNumber`,`processName`),
  KEY `IDX_bc0946848c67b044f5c2867f30` (`partNumber`),
  KEY `IDX_779ae4a3d49daf3c2e2bcc277d` (`processName`),
  CONSTRAINT `FK_779ae4a3d49daf3c2e2bcc277dc` FOREIGN KEY (`processName`) REFERENCES `process` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_bc0946848c67b044f5c2867f30d` FOREIGN KEY (`partNumber`) REFERENCES `part` (`number`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_process`
--

LOCK TABLES `part_process` WRITE;
/*!40000 ALTER TABLE `part_process` DISABLE KEYS */;
INSERT INTO `part_process` VALUES ('52119-BZR70','RESIN'),('53111-BZ580','ASSY');
/*!40000 ALTER TABLE `part_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_sourcing`
--

DROP TABLE IF EXISTS `part_sourcing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_sourcing` (
  `partNumber` varchar(100) NOT NULL,
  `sourcingName` varchar(255) NOT NULL,
  PRIMARY KEY (`partNumber`,`sourcingName`),
  KEY `IDX_97a30e04c91c612bd1bf2163af` (`partNumber`),
  KEY `IDX_fd4e0631c1e47aae9d37dd93a2` (`sourcingName`),
  CONSTRAINT `FK_97a30e04c91c612bd1bf2163af0` FOREIGN KEY (`partNumber`) REFERENCES `part` (`number`) ON DELETE CASCADE,
  CONSTRAINT `FK_fd4e0631c1e47aae9d37dd93a2f` FOREIGN KEY (`sourcingName`) REFERENCES `sourcing` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_sourcing`
--

LOCK TABLES `part_sourcing` WRITE;
/*!40000 ALTER TABLE `part_sourcing` DISABLE KEYS */;
INSERT INTO `part_sourcing` VALUES ('52119-BZR70','SUGITY'),('52119-BZR70','V-V'),('53111-BZ580','RPT');
/*!40000 ALTER TABLE `part_sourcing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES ('ASSY',NULL),('CUTTING',NULL),('EXTRUSION',NULL),('GRAIN',NULL),('PAINT',NULL),('PLATING',NULL),('RESIN',NULL);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('560B',NULL),('D26A',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sourcing`
--

DROP TABLE IF EXISTS `sourcing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sourcing` (
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sourcing`
--

LOCK TABLES `sourcing` WRITE;
/*!40000 ALTER TABLE `sourcing` DISABLE KEYS */;
INSERT INTO `sourcing` VALUES ('CKD',NULL),('KTI',NULL),('OTHERS',NULL),('RPT',NULL),('SUGITY',NULL),('TTEC',NULL),('V-V',NULL);
/*!40000 ALTER TABLE `sourcing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23  9:15:00
