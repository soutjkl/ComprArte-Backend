CREATE DATABASE  IF NOT EXISTS `tdr-cotization-manager` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tdr-cotization-manager`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tdr-cotization-manager
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `ID_CATEGORIA` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_CATEGORIA` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`),
  UNIQUE KEY `CATEGORIA_PK` (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Macetas'),(2,'Pocillos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_CLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOMBRES_CLIENTE` varchar(50) NOT NULL,
  `APELLIDOS_CLIENTE` varchar(50) NOT NULL,
  `TIPO_DOCUMENTO` varchar(2) NOT NULL,
  `NUMERO_DOCUMENTO` varchar(30) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ESTADO_CLIENTE` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  UNIQUE KEY `CLIENTE_PK` (`ID_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizaciones`
--

DROP TABLE IF EXISTS `cotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizaciones` (
  `ID_CLIENTE` int NOT NULL,
  `ID_COTIZACION` int NOT NULL AUTO_INCREMENT,
  `NUMERO_COTIZACION` varchar(10) NOT NULL,
  `FECHA_COTIZACION` date NOT NULL,
  `SUBTOTAL` decimal(8,2) NOT NULL,
  `TOTAL` decimal(8,2) NOT NULL,
  `ESTADO_COTIZACION` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`,`ID_COTIZACION`),
  UNIQUE KEY `COTIZACION_PK` (`ID_CLIENTE`,`ID_COTIZACION`),
  KEY `RELATIONSHIP_5_FK` (`ID_CLIENTE`),
  CONSTRAINT `FK_COTIZACI_RELATIONS_CLIENTES` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `clientes` (`ID_CLIENTE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones`
--

LOCK TABLES `cotizaciones` WRITE;
/*!40000 ALTER TABLE `cotizaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ID_PRODUCTO` int NOT NULL AUTO_INCREMENT,
  `ID_CATEGORIA` int DEFAULT NULL,
  `NOMBRE_PRODUCTO` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(500) DEFAULT NULL,
  `ANCHO` decimal(5,0) NOT NULL,
  `LARGO` decimal(5,0) NOT NULL,
  `CANTIDAD` int NOT NULL,
  `REFERENCIA_PRODUCTO` varchar(30) NOT NULL,
  `PRECIO_UNITARIO` float NOT NULL,
  `IMAGEN_PRODUCTO` varchar(1024) DEFAULT NULL,
  `ESTADO_PRODUCTO` char(2) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  UNIQUE KEY `PRODUCTO_PK` (`ID_PRODUCTO`),
  KEY `RELATIONSHIP_1_FK` (`ID_CATEGORIA`),
  CONSTRAINT `FK_PRODUCTO_RELATIONS_CATEGORI` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID_CATEGORIA`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'Maceta 01','Maceta elaborada en barro ',10,10,100,'MB000001',25000,'https://images.unsplash.com/photo-1528475563668-e15742001b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D',NULL,NULL),(2,1,'Maceta 02','Maceta elaborada en barro pintada',25,30,25,'MBP00001',93000,'https://images.unsplash.com/photo-1528563351349-844bf0482bf0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D',NULL,NULL),(3,2,'Pocillo 01','Pocillo diseño divertido',12,12,230,'PP000001',20000,'https://images.unsplash.com/photo-1569616536075-9c90244601c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D',NULL,NULL),(4,2,'Pocillo 02',NULL,12,12,230,'PP000002',28000,'https://images.unsplash.com/photo-1610858562676-a65264bef29b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D','2022-11-15','2022-11-15'),(5,1,'Maceta 03','Maceta esmaltada blanca',25,25,23,'MBP000003',90000,'https://images.unsplash.com/photo-1621274220348-41dc235ff439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D','2022-11-15','2022-11-15'),(6,1,'Maceta nueva','Maceta esmaltada ',25,25,230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_agregados`
--

DROP TABLE IF EXISTS `productos_agregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_agregados` (
  `ID_CLIENTE` int NOT NULL,
  `ID_COTIZACION` int NOT NULL,
  `ID_PRODUCTO` int NOT NULL,
  `CANTIDAD_PRODUCTO` int NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`,`ID_COTIZACION`,`ID_PRODUCTO`),
  UNIQUE KEY `PRODUCTO_AGREGADO_PK` (`ID_CLIENTE`,`ID_COTIZACION`,`ID_PRODUCTO`),
  KEY `RELATIONSHIP_6_FK` (`ID_PRODUCTO`),
  CONSTRAINT `FK_PRODUCTO_RELATIONS_COTIZACI` FOREIGN KEY (`ID_CLIENTE`, `ID_COTIZACION`) REFERENCES `cotizaciones` (`ID_CLIENTE`, `ID_COTIZACION`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_PRODUCTO_RELATIONS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_agregados`
--

LOCK TABLES `productos_agregados` WRITE;
/*!40000 ALTER TABLE `productos_agregados` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_agregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `updatedAt` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin@gmail.com','U2FsdGVkX1/tC3YPX/aQUXS2s7Nh4GOGKNTvtQOTak0=','Mafe','sanchez munevar','admin','2022-12-12','2022-12-12'),('admin123@gmail.com','U2FsdGVkX1+ssHf/8QKX3kn3Z8Mhc/FlkXQlLyKv+Lk=','Mafe','sanchez munevar','user','2022-12-12','2022-12-12'),('cliente@gmail.com','U2FsdGVkX19JCkyPW57tkTn9CHleRn9xKqZMjddahBM=','Cliente','Prueba','user','2023-01-04','2023-01-04'),('mafe@hmanmkd','123','maria','sanchez','usuario','2022-12-12','2022-12-12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tdr-cotization-manager'
--

--
-- Dumping routines for database 'tdr-cotization-manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-16 12:04:04
