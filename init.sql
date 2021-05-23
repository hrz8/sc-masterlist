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
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sfx` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grain_type`
--

DROP TABLE IF EXISTS `grain_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grain_type` (
  `code` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grain_type`
--

LOCK TABLES `grain_type` WRITE;
/*!40000 ALTER TABLE `grain_type` DISABLE KEYS */;
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
  `grade` varchar(255) NOT NULL,
  `maker` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_cav`
--

LOCK TABLES `mould_cav` WRITE;
/*!40000 ALTER TABLE `mould_cav` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_maker`
--

LOCK TABLES `mould_maker` WRITE;
/*!40000 ALTER TABLE `mould_maker` DISABLE KEYS */;
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
  `value` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mould_ton`
--

LOCK TABLES `mould_ton` WRITE;
/*!40000 ALTER TABLE `mould_ton` DISABLE KEYS */;
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
  `name` int NOT NULL,
  `image` text NOT NULL,
  `qtyPerUnit` int NOT NULL,
  `qtyPerMonth` int NOT NULL,
  `dwgWeight` int NOT NULL,
  `projectId` int DEFAULT NULL,
  `materialId` int DEFAULT NULL,
  `grainTypeCode` int DEFAULT NULL,
  `mouldMakerId` int DEFAULT NULL,
  `mouldTonId` int DEFAULT NULL,
  `mouldCavId` int DEFAULT NULL,
  `actualWeightId` int DEFAULT NULL,
  `parentNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `FK_b9cb06863ceba6fca4167152081` (`projectId`),
  KEY `FK_9ad939eab558d2982213f2abd31` (`materialId`),
  KEY `FK_33fbb2da169e8c882066b5a39c7` (`grainTypeCode`),
  KEY `FK_508c3ef1ece31e2f2e863734810` (`mouldMakerId`),
  KEY `FK_ea9efc5003b26dd0010fc1ff96b` (`mouldTonId`),
  KEY `FK_f32254c0ad54abc51ecdaf8afce` (`mouldCavId`),
  KEY `FK_5b8d686a671eef6579f9c230938` (`actualWeightId`),
  KEY `FK_c0dbd0caa64157c4ef12171323b` (`parentNumber`),
  CONSTRAINT `FK_33fbb2da169e8c882066b5a39c7` FOREIGN KEY (`grainTypeCode`) REFERENCES `grain_type` (`code`),
  CONSTRAINT `FK_508c3ef1ece31e2f2e863734810` FOREIGN KEY (`mouldMakerId`) REFERENCES `mould_maker` (`id`),
  CONSTRAINT `FK_5b8d686a671eef6579f9c230938` FOREIGN KEY (`actualWeightId`) REFERENCES `actual_weight` (`id`),
  CONSTRAINT `FK_9ad939eab558d2982213f2abd31` FOREIGN KEY (`materialId`) REFERENCES `material` (`id`),
  CONSTRAINT `FK_b9cb06863ceba6fca4167152081` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
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
/*!40000 ALTER TABLE `part_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_process`
--

DROP TABLE IF EXISTS `part_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_process` (
  `partNumber` varchar(255) NOT NULL,
  `processId` int NOT NULL,
  `routing` varchar(255) NOT NULL,
  PRIMARY KEY (`partNumber`,`processId`),
  KEY `FK_1f242a3b204292c862c57408113` (`processId`),
  CONSTRAINT `FK_1f242a3b204292c862c57408113` FOREIGN KEY (`processId`) REFERENCES `process` (`id`),
  CONSTRAINT `FK_bc0946848c67b044f5c2867f30d` FOREIGN KEY (`partNumber`) REFERENCES `part` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_process`
--

LOCK TABLES `part_process` WRITE;
/*!40000 ALTER TABLE `part_process` DISABLE KEYS */;
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
  `sourcingId` int NOT NULL,
  PRIMARY KEY (`partNumber`,`sourcingId`),
  KEY `IDX_97a30e04c91c612bd1bf2163af` (`partNumber`),
  KEY `IDX_00148a090b5c04ee2773936bcd` (`sourcingId`),
  CONSTRAINT `FK_00148a090b5c04ee2773936bcd3` FOREIGN KEY (`sourcingId`) REFERENCES `sourcing` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_97a30e04c91c612bd1bf2163af0` FOREIGN KEY (`partNumber`) REFERENCES `part` (`number`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_sourcing`
--

LOCK TABLES `part_sourcing` WRITE;
/*!40000 ALTER TABLE `part_sourcing` DISABLE KEYS */;
/*!40000 ALTER TABLE `part_sourcing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sourcing`
--

DROP TABLE IF EXISTS `sourcing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sourcing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sourcing`
--

LOCK TABLES `sourcing` WRITE;
/*!40000 ALTER TABLE `sourcing` DISABLE KEYS */;
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

-- Dump completed on 2021-05-23  6:24:17
