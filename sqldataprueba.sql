-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marketonubaprueba
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `actividadesconsumidores`
--

DROP TABLE IF EXISTS `actividadesconsumidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividadesconsumidores` (
  `id_actividades_consumidores` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `id_consumidor` int DEFAULT NULL,
  `id_ofertante` int DEFAULT NULL,
  PRIMARY KEY (`id_actividades_consumidores`),
  KEY `FKt21b63hugd0605is9bi564ufq` (`id_consumidor`),
  KEY `FKeveaabkggkkcsb09bqt3id7st` (`id_ofertante`),
  CONSTRAINT `FKeveaabkggkkcsb09bqt3id7st` FOREIGN KEY (`id_ofertante`) REFERENCES `ofertantes` (`id_ofertante`),
  CONSTRAINT `FKt21b63hugd0605is9bi564ufq` FOREIGN KEY (`id_consumidor`) REFERENCES `consumidores` (`id_consumidor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividadesconsumidores`
--

LOCK TABLES `actividadesconsumidores` WRITE;
/*!40000 ALTER TABLE `actividadesconsumidores` DISABLE KEYS */;
INSERT INTO `actividadesconsumidores` VALUES (4,'naturaleza','cjeixnoxn id','2024-06-26','beuzneicn',4,2),(5,'naturaleza','xneixkfkck k','2024-06-22','enixkfiznejz',6,2),(6,'naturaleza','d22d2d2d2d2d2d2','2024-06-26','ricardo actividad 2',6,2),(7,'deportes','2f2f2f2f2','2024-06-28','ricardo 3',6,2),(8,'educacion','dwdawdadawd','2024-06-30','ricardo 4',6,1),(9,'naturaleza','wdwdwadawd','2024-06-22','test 2',4,1),(10,'deportes','cadawdawd','2024-06-27','test 3',4,2),(11,'educacion',' wdwdawdawdawdawd','2024-06-29','test 4',4,NULL),(12,'naturaleza','dwdadadaw','2024-06-23','test 5',4,2),(13,'otros','123wadwwda','2024-06-19','test 6',4,2);
/*!40000 ALTER TABLE `actividadesconsumidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividadesofertantes`
--

DROP TABLE IF EXISTS `actividadesofertantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividadesofertantes` (
  `id_actividad_ofertante` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `numero_plazas` int DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `id_ofertante` int DEFAULT NULL,
  PRIMARY KEY (`id_actividad_ofertante`),
  KEY `FKl7c6t7huuarrn56nrecktprmg` (`id_ofertante`),
  CONSTRAINT `FKl7c6t7huuarrn56nrecktprmg` FOREIGN KEY (`id_ofertante`) REFERENCES `ofertantes` (`id_ofertante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividadesofertantes`
--

LOCK TABLES `actividadesofertantes` WRITE;
/*!40000 ALTER TABLE `actividadesofertantes` DISABLE KEYS */;
INSERT INTO `actividadesofertantes` VALUES (1,'naturaleza','bueno quillo que quiere q te cuente, busca la mansana','2024-06-07',25,'la busqueda de la manzana dorada',1),(2,'educacion','po eso','2024-06-08',25,'la busqueda de la manzana blanca',1),(4,'otros','po eso','2024-06-29',22,'el textooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo to largo',2),(5,'naturaleza','nueva','2024-06-30',1,'nueva',2),(6,'otros','dwdawdawdwad','2024-07-31',22,'rafa 1',2),(7,'educacion','d2d2dad2da','2024-06-13',22,'rafa 2',2),(8,'otros','d2ed2d2dasdwd','2024-06-16',25,'rafa 3',2),(9,'otros','dwdawdasdw','2024-06-14',12,'rafa 4',2);
/*!40000 ALTER TABLE `actividadesofertantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumidoractividadfavorita`
--

DROP TABLE IF EXISTS `consumidoractividadfavorita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumidoractividadfavorita` (
  `id_consumidor_actividad_favorita` int NOT NULL AUTO_INCREMENT,
  `id_actividad_ofertante` int DEFAULT NULL,
  `id_consumidor` int DEFAULT NULL,
  PRIMARY KEY (`id_consumidor_actividad_favorita`),
  KEY `FKgsy11q48l6ylutl78jpko9coj` (`id_actividad_ofertante`),
  KEY `FK4tibhhtgge88qtmlgd1aqtbcl` (`id_consumidor`),
  CONSTRAINT `FK4tibhhtgge88qtmlgd1aqtbcl` FOREIGN KEY (`id_consumidor`) REFERENCES `consumidores` (`id_consumidor`),
  CONSTRAINT `FKgsy11q48l6ylutl78jpko9coj` FOREIGN KEY (`id_actividad_ofertante`) REFERENCES `actividadesofertantes` (`id_actividad_ofertante`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumidoractividadfavorita`
--

LOCK TABLES `consumidoractividadfavorita` WRITE;
/*!40000 ALTER TABLE `consumidoractividadfavorita` DISABLE KEYS */;
INSERT INTO `consumidoractividadfavorita` VALUES (8,1,4),(9,2,4),(10,4,4),(11,5,4),(13,1,6),(14,2,6),(15,4,6),(16,5,6);
/*!40000 ALTER TABLE `consumidoractividadfavorita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumidoractividadofertante`
--

DROP TABLE IF EXISTS `consumidoractividadofertante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumidoractividadofertante` (
  `id_consumidor_actividad_ofertante` int NOT NULL AUTO_INCREMENT,
  `id_actividad_ofertante` int DEFAULT NULL,
  `id_consumidor` int DEFAULT NULL,
  PRIMARY KEY (`id_consumidor_actividad_ofertante`),
  KEY `FK8merf2j6m12wkxwfn7sjq86ke` (`id_actividad_ofertante`),
  KEY `FKcx4iq5sp8ha7ds2dymkpgnvvr` (`id_consumidor`),
  CONSTRAINT `FK8merf2j6m12wkxwfn7sjq86ke` FOREIGN KEY (`id_actividad_ofertante`) REFERENCES `actividadesofertantes` (`id_actividad_ofertante`),
  CONSTRAINT `FKcx4iq5sp8ha7ds2dymkpgnvvr` FOREIGN KEY (`id_consumidor`) REFERENCES `consumidores` (`id_consumidor`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumidoractividadofertante`
--

LOCK TABLES `consumidoractividadofertante` WRITE;
/*!40000 ALTER TABLE `consumidoractividadofertante` DISABLE KEYS */;
INSERT INTO `consumidoractividadofertante` VALUES (17,5,4),(18,2,6),(19,4,6),(20,1,6),(21,1,4),(22,2,4),(23,4,4);
/*!40000 ALTER TABLE `consumidoractividadofertante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumidores`
--

DROP TABLE IF EXISTS `consumidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumidores` (
  `id_consumidor` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id_consumidor`),
  UNIQUE KEY `UK_nqp0r32i8j21233ddcj116l4h` (`email`),
  UNIQUE KEY `UK_br5epr486nbkfe4hwc64u6eyd` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumidores`
--

LOCK TABLES `consumidores` WRITE;
/*!40000 ALTER TABLE `consumidores` DISABLE KEYS */;
INSERT INTO `consumidores` VALUES (4,'test@gmail.com','1285732325','test123'),(6,'zricardogr03@gmail.com','876499389','ricardo');
/*!40000 ALTER TABLE `consumidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertanteactividadfavorita`
--

DROP TABLE IF EXISTS `ofertanteactividadfavorita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertanteactividadfavorita` (
  `id_ofertante_actividad_favorita` int NOT NULL AUTO_INCREMENT,
  `id_actividad_consumidor` int DEFAULT NULL,
  `id_ofertante` int DEFAULT NULL,
  PRIMARY KEY (`id_ofertante_actividad_favorita`),
  KEY `FKnkv6ohb0bki9scakwe572329c` (`id_actividad_consumidor`),
  KEY `FK5ltxfux41wiu6ti1fqi3hlo6s` (`id_ofertante`),
  CONSTRAINT `FK5ltxfux41wiu6ti1fqi3hlo6s` FOREIGN KEY (`id_ofertante`) REFERENCES `ofertantes` (`id_ofertante`),
  CONSTRAINT `FKnkv6ohb0bki9scakwe572329c` FOREIGN KEY (`id_actividad_consumidor`) REFERENCES `actividadesconsumidores` (`id_actividades_consumidores`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertanteactividadfavorita`
--

LOCK TABLES `ofertanteactividadfavorita` WRITE;
/*!40000 ALTER TABLE `ofertanteactividadfavorita` DISABLE KEYS */;
INSERT INTO `ofertanteactividadfavorita` VALUES (3,4,2),(4,5,2),(5,6,2),(6,7,2),(7,10,2),(8,12,2),(9,13,2);
/*!40000 ALTER TABLE `ofertanteactividadfavorita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertantes`
--

DROP TABLE IF EXISTS `ofertantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertantes` (
  `id_ofertante` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ofertante`),
  UNIQUE KEY `UK_5wqqt7o5lw0dut7vdetqe9hmc` (`email`),
  UNIQUE KEY `UK_curbin5tlnh5xf6ppmbty13ua` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertantes`
--

LOCK TABLES `ofertantes` WRITE;
/*!40000 ALTER TABLE `ofertantes` DISABLE KEYS */;
INSERT INTO `ofertantes` VALUES (1,'manueh@gmail.com','-1025498045','manuel'),(2,'rafa@gmail.com','-890930924','rafael');
/*!40000 ALTER TABLE `ofertantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 16:17:12
