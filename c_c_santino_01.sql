-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: c_c_santino_01
-- ------------------------------------------------------
-- Server version	5.5.61

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
-- Table structure for table `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alquiler` (
  `id_alquiler` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialista` int(11) NOT NULL,
  `id_consultorio` int(11) NOT NULL,
  `fecha` varchar(45) CHARACTER SET utf8 NOT NULL,
  `tipo` varchar(45) CHARACTER SET utf8 NOT NULL,
  `monto_total` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_alquiler`,`id_especialista`,`id_consultorio`,`fecha`,`tipo`),
  UNIQUE KEY `id_alquiler_UNIQUE` (`id_alquiler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler`
--

LOCK TABLES `alquiler` WRITE;
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquiler_x__mes`
--

DROP TABLE IF EXISTS `alquiler_x__mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alquiler_x__mes` (
  `id_alquiler` int(11) NOT NULL,
  `dia` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `desde` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cant_horas_seguidas` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_alquiler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler_x__mes`
--

LOCK TABLES `alquiler_x__mes` WRITE;
/*!40000 ALTER TABLE `alquiler_x__mes` DISABLE KEYS */;
/*!40000 ALTER TABLE `alquiler_x__mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquiler_x_dia`
--

DROP TABLE IF EXISTS `alquiler_x_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alquiler_x_dia` (
  `id_alquiler` int(11) NOT NULL,
  `fecha` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `dia` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `desde` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cant_horas_seguidas` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_alquiler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler_x_dia`
--

LOCK TABLES `alquiler_x_dia` WRITE;
/*!40000 ALTER TABLE `alquiler_x_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `alquiler_x_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialista` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8 NOT NULL,
  `asunto` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (16,1,21,'18/10/18','nueva consulÃ±ta','hola mundo'),(17,1,21,'22/10/18','uno nuevo01','sadasdds'),(18,1,21,'16/11/18','llego con fiebre y mucho vomito','dolor de cabezaa');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultorios`
--

DROP TABLE IF EXISTS `consultorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultorios` (
  `id_Consultorio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_consultorio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_Consultorio`),
  UNIQUE KEY `id_Consultorio_UNIQUE` (`id_Consultorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultorios`
--

LOCK TABLES `consultorios` WRITE;
/*!40000 ALTER TABLE `consultorios` DISABLE KEYS */;
INSERT INTO `consultorios` VALUES (1,' Psicopedagogia','1'),(2,'Pediatria','2'),(3,'Odontologia','3'),(4,'Psicologia','4'),(5,'consultorio','5');
/*!40000 ALTER TABLE `consultorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL AUTO_INCREMENT,
  `especialidad` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE KEY `id_Especialidad_UNIQUE` (`id_especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,' Psicopedagogia'),(2,'Pediatria'),(3,'Odontologia'),(4,'Psicologia');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialista`
--

DROP TABLE IF EXISTS `especialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialista` (
  `id_especialista` int(11) NOT NULL AUTO_INCREMENT,
  `id_especialidad` int(11) NOT NULL,
  `id_obra_social` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_nacimiento_es` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horas_de_atencion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_especialista`),
  UNIQUE KEY `id_especialista_UNIQUE` (`id_especialista`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialista`
--

LOCK TABLES `especialista` WRITE;
/*!40000 ALTER TABLE `especialista` DISABLE KEYS */;
INSERT INTO `especialista` VALUES (1,3,2,'Lucas','Cuevas','02320 455656','233344345','admin','0','3245','2018-10-11','H','1.jpg','20'),(2,2,4,'agustin','apellido','4535','233344345','admin','1','3245','2018-10-11','H','2.jpg','10'),(4,2,2,'juan','Gutierrez','1223434','233344345','admin','2','3245','2018-10-11','H','4.jpg','15'),(5,2,2,'agustin','egierd','1223434','2243244','323','2','',NULL,'H',NULL,'10');
/*!40000 ALTER TABLE `especialista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_ob_sociales`
--

DROP TABLE IF EXISTS `estado_ob_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_ob_sociales` (
  `id_estado_ob_sociales` int(11) NOT NULL AUTO_INCREMENT,
  `estado_ob_Social` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_ob_sociales`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_ob_sociales`
--

LOCK TABLES `estado_ob_sociales` WRITE;
/*!40000 ALTER TABLE `estado_ob_sociales` DISABLE KEYS */;
INSERT INTO `estado_ob_sociales` VALUES (1,'activa'),(2,'suspendida'),(3,'De Baja');
/*!40000 ALTER TABLE `estado_ob_sociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_turno`
--

DROP TABLE IF EXISTS `estado_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_turno` (
  `id_estado_turno` int(11) NOT NULL AUTO_INCREMENT,
  `name_estado_turno` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_turno`
--

LOCK TABLES `estado_turno` WRITE;
/*!40000 ALTER TABLE `estado_turno` DISABLE KEYS */;
INSERT INTO `estado_turno` VALUES (1,'sin-confirmar'),(2,'confirmo'),(3,'cancelo'),(4,'no llego');
/*!40000 ALTER TABLE `estado_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_ob_sociales`
--

DROP TABLE IF EXISTS `estados_ob_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_ob_sociales` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_ob_sociales`
--

LOCK TABLES `estados_ob_sociales` WRITE;
/*!40000 ALTER TABLE `estados_ob_sociales` DISABLE KEYS */;
INSERT INTO `estados_ob_sociales` VALUES (1,'tramite'),(2,'dañado'),(3,'valido');
/*!40000 ALTER TABLE `estados_ob_sociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiares`
--

DROP TABLE IF EXISTS `familiares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiares` (
  `id_paciente` int(11) NOT NULL,
  `nombre_tutor` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_tutor` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  `dni_tutor` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiares`
--

LOCK TABLES `familiares` WRITE;
/*!40000 ALTER TABLE `familiares` DISABLE KEYS */;
INSERT INTO `familiares` VALUES (21,'alfonzo','alfonosd','213234'),(23,'alfonzo','alfonosd','213234'),(24,'alfonzo','alfonosd','32342354');
/*!40000 ALTER TABLE `familiares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horas`
--

DROP TABLE IF EXISTS `horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horas` (
  `id_hora` int(11) NOT NULL AUTO_INCREMENT,
  `hora` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_hora`),
  UNIQUE KEY `id_hora_UNIQUE` (`id_hora`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horas`
--

LOCK TABLES `horas` WRITE;
/*!40000 ALTER TABLE `horas` DISABLE KEYS */;
INSERT INTO `horas` VALUES (1,'8:00hs'),(2,'8:15hs'),(3,'8:30'),(4,'8:45hs'),(5,'9:00hs'),(6,'9:15hs'),(7,'9:30hs'),(8,'9:45hs'),(9,'10:00hs');
/*!40000 ALTER TABLE `horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horasios_alquiler`
--

DROP TABLE IF EXISTS `horasios_alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horasios_alquiler` (
  `id_Alquiler` int(11) NOT NULL,
  `dia` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_hora` int(11) NOT NULL,
  PRIMARY KEY (`id_Alquiler`,`dia`,`id_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horasios_alquiler`
--

LOCK TABLES `horasios_alquiler` WRITE;
/*!40000 ALTER TABLE `horasios_alquiler` DISABLE KEYS */;
/*!40000 ALTER TABLE `horasios_alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_usuario`
--

DROP TABLE IF EXISTS `nivel_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_usuario` (
  `id_nivel_usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_nivel_usuario`,`nivel_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_usuario`
--

LOCK TABLES `nivel_usuario` WRITE;
/*!40000 ALTER TABLE `nivel_usuario` DISABLE KEYS */;
INSERT INTO `nivel_usuario` VALUES ('0','administrador'),('1','recepcionista'),('2','especialista');
/*!40000 ALTER TABLE `nivel_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ob_social_paciente`
--

DROP TABLE IF EXISTS `ob_social_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ob_social_paciente` (
  `id_ob_social` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `nro_afiliado` varchar(65) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_ob_social`,`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ob_social_paciente`
--

LOCK TABLES `ob_social_paciente` WRITE;
/*!40000 ALTER TABLE `ob_social_paciente` DISABLE KEYS */;
INSERT INTO `ob_social_paciente` VALUES (1,1,'1456','3'),(1,25,'','1'),(1,26,'','1'),(3,21,'345345','3'),(3,26,'1829','3'),(4,23,'1829','2'),(4,24,'1829','3'),(4,25,'1829','2');
/*!40000 ALTER TABLE `ob_social_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ob_sociales_especialista`
--

DROP TABLE IF EXISTS `ob_sociales_especialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ob_sociales_especialista` (
  `id_ob_sociales` int(11) NOT NULL,
  `id_especialista` int(11) NOT NULL,
  PRIMARY KEY (`id_ob_sociales`,`id_especialista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ob_sociales_especialista`
--

LOCK TABLES `ob_sociales_especialista` WRITE;
/*!40000 ALTER TABLE `ob_sociales_especialista` DISABLE KEYS */;
INSERT INTO `ob_sociales_especialista` VALUES (1,2),(2,2),(2,3),(3,1),(3,3),(4,1),(5,1);
/*!40000 ALTER TABLE `ob_sociales_especialista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra_social`
--

DROP TABLE IF EXISTS `obra_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obra_social` (
  `id_obra_social` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_obra_soc` varchar(45) CHARACTER SET utf8 NOT NULL,
  `copago` varchar(225) CHARACTER SET utf8 NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_obra_social`),
  UNIQUE KEY `id_obra_social_UNIQUE` (`id_obra_social`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_social`
--

LOCK TABLES `obra_social` WRITE;
/*!40000 ALTER TABLE `obra_social` DISABLE KEYS */;
INSERT INTO `obra_social` VALUES (1,'OSMATA','1000','2'),(2,'OSDE','10','1'),(3,'GALENO','103','2'),(4,'PARTICULAR','350','3');
/*!40000 ALTER TABLE `obra_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(75) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `fech_nacimiento` varchar(45) CHARACTER SET utf8 NOT NULL,
  `sexo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `id_paciente_UNIQUE` (`id_paciente`),
  UNIQUE KEY `dni_UNIQUE` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (21,'Lucas','alimanar','4254580','23423443','2012-01-03','H','san ca','pilar','234243423324'),(23,'Lucas','albornoz','234234325345','2423455454565','','H','adfs','234243423324','234243423324'),(24,'ayuda','albornoz','1234','2423455454565','asd8s8','H','sancas','dfdsf','234243423324');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `id_paciente` varchar(45) NOT NULL,
  `id_especialista` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `hora` varchar(45) NOT NULL,
  `estado_turno` varchar(45) DEFAULT NULL,
  `min` varchar(45) NOT NULL,
  PRIMARY KEY (`id_paciente`,`id_especialista`,`fecha`,`hora`,`min`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES ('24','1','2018-11-06','10','2','0'),('24','1','2018-11-06','12','3','20'),('24','1','2018-11-06','8','4','0'),('24','1','2018-11-06','8','3','20'),('24','1','2018-11-06','8','4','40'),('24','1','2018-11-06','9','3','20'),('24','2','2018-11-05','8','1','30'),('24','2','2018-11-05','8','1','40'),('24','2','2018-11-06','8','2','20');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `textColor` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `id_especialista` int(11) NOT NULL,
  `end` datetime NOT NULL,
  `id_paciente` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_especialista`,`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (0,'afdasfsdafd','asdfasdfasdf','','#FFFFFF','2018-10-24 17:30:00',0,'2018-10-24 17:30:00',0),(0,'alaverga','vbnnbvbcvbn','','#FFFFFF','2018-10-24 16:00:00',0,'2018-10-24 16:00:00',24),(3,'dfghdfghdgfh','dfghfdgfgdfgdfgsaaaaaaaaaaaa','','#FFFFFF','2018-10-22 11:30:00',0,'2018-10-22 11:30:00',0),(4,'dasfdfsaadfsaaaaaaaa','fgdfgdfgh','','#FFFFFF','2018-10-22 10:30:00',0,'2018-10-22 10:30:00',0);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16  1:22:39
