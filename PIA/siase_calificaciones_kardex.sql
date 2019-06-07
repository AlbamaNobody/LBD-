-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: siase
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calificaciones_kardex`
--

DROP TABLE IF EXISTS `calificaciones_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificaciones_kardex` (
  `ID` int(11) NOT NULL,
  `ID_OPORTUNIDAD` int(11) NOT NULL,
  `ID_MATERIA_CARRERA` int(11) NOT NULL,
  `CALIFICACION` float NOT NULL,
  `ID_KARDEX` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_MATERIA_CARRERA` (`ID_MATERIA_CARRERA`),
  KEY `ID_OPORTUNIDAD` (`ID_OPORTUNIDAD`),
  KEY `ID_KARDEX` (`ID_KARDEX`),
  CONSTRAINT `calificaciones_kardex_ibfk_1` FOREIGN KEY (`ID_MATERIA_CARRERA`) REFERENCES `materia_carrera` (`ID`),
  CONSTRAINT `calificaciones_kardex_ibfk_2` FOREIGN KEY (`ID_OPORTUNIDAD`) REFERENCES `oportunidad` (`ID`),
  CONSTRAINT `calificaciones_kardex_ibfk_3` FOREIGN KEY (`ID_KARDEX`) REFERENCES `kardex` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones_kardex`
--

LOCK TABLES `calificaciones_kardex` WRITE;
/*!40000 ALTER TABLE `calificaciones_kardex` DISABLE KEYS */;
INSERT INTO `calificaciones_kardex` VALUES (1,1,1,100,1);
/*!40000 ALTER TABLE `calificaciones_kardex` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-07  7:40:13
