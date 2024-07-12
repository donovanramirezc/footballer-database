CREATE DATABASE  IF NOT EXISTS `futbolistasdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `futbolistasdb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: futbolistasdb
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `futbolista`
--

DROP TABLE IF EXISTS `futbolista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbolista` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` datetime(6) DEFAULT NULL,
  `caracteristicas` varchar(255) DEFAULT NULL,
  `posicion_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posicion_id` (`posicion_id`),
  CONSTRAINT `futbolista_ibfk_1` FOREIGN KEY (`posicion_id`) REFERENCES `posicion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbolista`
--

LOCK TABLES `futbolista` WRITE;
/*!40000 ALTER TABLE `futbolista` DISABLE KEYS */;
INSERT INTO `futbolista` VALUES (1,'Kike','Mendoza','1998-05-12 00:00:00.000000','Goleador, juego aéreo',4),(2,'Piero','Huamán','1994-09-22 00:00:00.000000','Velocidad, regate',4),(3,'Juan Diego','Flores','1999-03-15 00:00:00.000000','Definición, inteligencia',4),(4,'Lucho','Ramírez','1989-11-07 00:00:00.000000','Regate, pase',3),(5,'Toño','Rodríguez','1992-06-19 00:00:00.000000','Reflejos, seguridad',1),(6,'Carlitos','Gonzales','1997-02-04 00:00:00.000000','Creatividad, regate',3),(7,'Gino','Quispe','1990-12-30 00:00:00.000000','Recuperación, marcaje',3),(8,'Pepe','Díaz','1995-07-11 00:00:00.000000','Velocidad, fuerza',2),(9,'Beto','Sánchez','1988-01-18 00:00:00.000000','Velocidad, regate',4),(10,'Pancho','Castillo','1996-08-25 00:00:00.000000','Regate, disparo',3),(11,'Renzo','Acuña','1993-03-08 00:00:00.000000','Pase largo, control',3),(12,'Miguel','Paredes','1995-11-27 00:00:00.000000','Defensa, liderazgo',2),(13,'Adrián','Fuentes','1991-02-13 00:00:00.000000','Visión, técnica',3),(14,'Sebastián','Montoya','2000-04-22 00:00:00.000000','Anticipación, fuerza',2),(15,'Fabián','Navarro','1998-09-30 00:00:00.000000','Regate, velocidad',4),(16,'Enzo','López','1996-01-15 00:00:00.000000','Juego aéreo, defensa',2),(17,'Bruno','Torres','1997-07-05 00:00:00.000000','Resistencia, táctica',3),(18,'Leo','Marín','1999-12-12 00:00:00.000000','Disparo, agilidad',4),(19,'Javier','Rojas','1992-10-10 00:00:00.000000','Definición, visión',4),(20,'Dani','Valdez','1987-06-25 00:00:00.000000','Cabezazo, fuerza',3);
/*!40000 ALTER TABLE `futbolista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Arquero'),(2,'Defensa'),(3,'Mediocampista'),(4,'Delantero');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  5:08:51
