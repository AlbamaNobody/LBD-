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
-- Table structure for table `materias_horario`
--

DROP TABLE IF EXISTS `materias_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_horario` (
  `ID` int(11) NOT NULL,
  `ID_MATERIA` int(11) NOT NULL,
  `ID_HORARIO` int(11) NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `ID_ESTATUS` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_ALUMNO` (`ID_ALUMNO`),
  KEY `ID_ESTATUS` (`ID_ESTATUS`),
  KEY `ID_HORARIO` (`ID_HORARIO`),
  KEY `ID_MATERIA` (`ID_MATERIA`),
  CONSTRAINT `materias_horario_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumno` (`ID`),
  CONSTRAINT `materias_horario_ibfk_2` FOREIGN KEY (`ID_ESTATUS`) REFERENCES `estatus` (`ID`),
  CONSTRAINT `materias_horario_ibfk_3` FOREIGN KEY (`ID_HORARIO`) REFERENCES `horario` (`ID`),
  CONSTRAINT `materias_horario_ibfk_4` FOREIGN KEY (`ID_MATERIA`) REFERENCES `materias` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_horario`
--

LOCK TABLES `materias_horario` WRITE;
/*!40000 ALTER TABLE `materias_horario` DISABLE KEYS */;
INSERT INTO `materias_horario` VALUES (1,1,1,1,1),(2,1,2,1,1),(3,1,3,1,1);
/*!40000 ALTER TABLE `materias_horario` ENABLE KEYS */;
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
