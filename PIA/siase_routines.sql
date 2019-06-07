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
-- Temporary table structure for view `alumnos_materia`
--

DROP TABLE IF EXISTS `alumnos_materia`;
/*!50001 DROP VIEW IF EXISTS `alumnos_materia`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `alumnos_materia` AS SELECT 
 1 AS `ALUMNOS_MATERIA`,
 1 AS `MATERIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `horario_profesor`
--

DROP TABLE IF EXISTS `horario_profesor`;
/*!50001 DROP VIEW IF EXISTS `horario_profesor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `horario_profesor` AS SELECT 
 1 AS `ID`,
 1 AS `NOMBRE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `maestros_disponibles`
--

DROP TABLE IF EXISTS `maestros_disponibles`;
/*!50001 DROP VIEW IF EXISTS `maestros_disponibles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `maestros_disponibles` AS SELECT 
 1 AS `MAESTRO_DISPONIBLE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `horario_aula`
--

DROP TABLE IF EXISTS `horario_aula`;
/*!50001 DROP VIEW IF EXISTS `horario_aula`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `horario_aula` AS SELECT 
 1 AS `ID`,
 1 AS `DESCRIPCION`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `horario_hora`
--

DROP TABLE IF EXISTS `horario_hora`;
/*!50001 DROP VIEW IF EXISTS `horario_hora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `horario_hora` AS SELECT 
 1 AS `ID`,
 1 AS `DESCRIPCION`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `materias_semestre`
--

DROP TABLE IF EXISTS `materias_semestre`;
/*!50001 DROP VIEW IF EXISTS `materias_semestre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `materias_semestre` AS SELECT 
 1 AS `COUNT(MATERIA)`,
 1 AS `Semestre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `facultad_cantidad_carreras`
--

DROP TABLE IF EXISTS `facultad_cantidad_carreras`;
/*!50001 DROP VIEW IF EXISTS `facultad_cantidad_carreras`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `facultad_cantidad_carreras` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `COUNT(siase.carrera.ID_FACULTAD)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `profesor_estatus`
--

DROP TABLE IF EXISTS `profesor_estatus`;
/*!50001 DROP VIEW IF EXISTS `profesor_estatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `profesor_estatus` AS SELECT 
 1 AS `ID`,
 1 AS `NOMBRE`,
 1 AS `DESCRIPCION`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `maestros_estatus`
--

DROP TABLE IF EXISTS `maestros_estatus`;
/*!50001 DROP VIEW IF EXISTS `maestros_estatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `maestros_estatus` AS SELECT 
 1 AS `COUNT(NOMBRE)`,
 1 AS `ID_ESTATUS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `horario_dia`
--

DROP TABLE IF EXISTS `horario_dia`;
/*!50001 DROP VIEW IF EXISTS `horario_dia`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `horario_dia` AS SELECT 
 1 AS `ID`,
 1 AS `DESCRIPCION`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `alumnos_materia`
--

/*!50001 DROP VIEW IF EXISTS `alumnos_materia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnos_materia` AS select count(`materias_horario_alumno`.`ID_ALUMNO`) AS `ALUMNOS_MATERIA`,`materias`.`MATERIA` AS `MATERIA` from (`materias_horario_alumno` join `materias`) where ((select `materias_horario`.`ID_MATERIA` from `materias_horario` limit 1) = `materias`.`ID`) group by `materias`.`MATERIA` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horario_profesor`
--

/*!50001 DROP VIEW IF EXISTS `horario_profesor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horario_profesor` AS select `horario`.`ID` AS `ID`,`profesor`.`NOMBRE` AS `NOMBRE` from (`horario` join `profesor` on((`horario`.`ID_PROFESOR` = `profesor`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maestros_disponibles`
--

/*!50001 DROP VIEW IF EXISTS `maestros_disponibles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maestros_disponibles` AS select `profesor`.`NOMBRE` AS `MAESTRO_DISPONIBLE` from `profesor` where (`profesor`.`ID_ESTATUS` = 1) group by `profesor`.`NOMBRE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horario_aula`
--

/*!50001 DROP VIEW IF EXISTS `horario_aula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horario_aula` AS select `horario`.`ID` AS `ID`,`aula`.`DESCRIPCION` AS `DESCRIPCION` from (`horario` join `aula` on((`horario`.`ID_AULA` = `aula`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horario_hora`
--

/*!50001 DROP VIEW IF EXISTS `horario_hora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horario_hora` AS select `horario`.`ID` AS `ID`,`hora`.`DESCRIPCION` AS `DESCRIPCION` from (`horario` join `hora`) where (`horario`.`ID_HORA` = `hora`.`ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `materias_semestre`
--

/*!50001 DROP VIEW IF EXISTS `materias_semestre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `materias_semestre` AS select count(`materias`.`MATERIA`) AS `COUNT(MATERIA)`,`materias`.`SEMESTRE` AS `Semestre` from `materias` group by `materias`.`SEMESTRE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `facultad_cantidad_carreras`
--

/*!50001 DROP VIEW IF EXISTS `facultad_cantidad_carreras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `facultad_cantidad_carreras` AS select `facultad`.`NOMBRE` AS `NOMBRE`,count(`carrera`.`ID_FACULTAD`) AS `COUNT(siase.carrera.ID_FACULTAD)` from (`facultad` join `carrera` on((`facultad`.`ID` = `carrera`.`ID_FACULTAD`))) group by `facultad`.`NOMBRE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `profesor_estatus`
--

/*!50001 DROP VIEW IF EXISTS `profesor_estatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `profesor_estatus` AS select `profesor`.`ID` AS `ID`,`profesor`.`NOMBRE` AS `NOMBRE`,`estatus`.`DESCRIPCION` AS `DESCRIPCION` from (`profesor` join `estatus` on((`profesor`.`ID_ESTATUS` = `estatus`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maestros_estatus`
--

/*!50001 DROP VIEW IF EXISTS `maestros_estatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maestros_estatus` AS select count(`profesor`.`NOMBRE`) AS `COUNT(NOMBRE)`,`profesor`.`ID_ESTATUS` AS `ID_ESTATUS` from `profesor` group by `profesor`.`ID_ESTATUS` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horario_dia`
--

/*!50001 DROP VIEW IF EXISTS `horario_dia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horario_dia` AS select `horario`.`ID` AS `ID`,`dia`.`DESCRIPCION` AS `DESCRIPCION` from (`horario` join `dia` on((`horario`.`ID_DIA` = `dia`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-07  7:40:14
