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
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_CATEGORIA`),
  UNIQUE KEY `CATEGORIA_PK` (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Alcancias',NULL,NULL),(2,'Belgica',NULL,NULL),(3,'Bonsai',NULL,NULL),(4,'Jardineras y Cajones',NULL,NULL),(5,'Cilindro Natural',NULL,NULL),(6,'Arte y Color',NULL,NULL),(7,'Columnas',NULL,NULL),(8,'Materas de Copa',NULL,NULL),(9,'Fuentes',NULL,NULL),(10,'Pantallas',NULL,NULL),(11,'Platos Planos',NULL,NULL),(12,'Soportes',NULL,NULL),(13,'Cerámica esmaltada',NULL,NULL),(14,'Materas de Animales',NULL,NULL),(15,'Hogar y Cocina',NULL,NULL),(16,'Materas Indio',NULL,NULL),(17,'Materas Cuadradas',NULL,NULL),(18,'Materas de Figuras',NULL,NULL),(19,'Materas de Pared',NULL,NULL),(20,'Materas Grandes',NULL,NULL),(21,'Materas Labrilladas',NULL,NULL),(22,'Materas Mini',NULL,NULL),(23,'Materas Naturales',NULL,NULL),(24,'Precolombinos',NULL,NULL),(25,'Productos Decorativos',NULL,NULL),(26,'Materas Pequeñas',NULL,NULL),(27,'Productos Nuevos',NULL,NULL),(28,'Enjobe',NULL,NULL),(29,'Moviles',NULL,NULL);
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
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  UNIQUE KEY `CLIENTE_PK` (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Primer Cliente','Prueba ','CC','1025626523','cleinte.nuevo@prueba.com','A','2023-03-28','2023-03-28',''),(2,'Primer Cliente','Prueba ','TI','10256265','davileo846@gmail.com','A','2023-03-30','2023-03-30',''),(3,'Cliente Nuevo','Prueba Dos','CC','1025626541','uncorreo@mail.com','A','2023-03-31','2023-03-31',''),(4,'Pepito','Perez','TI','1025626523','correo@mail.com','A','2023-04-04','2023-04-04',''),(5,'Juanito Alimaña','No tiene maña','CC','3546831','juanito@mail.com','A','2023-04-08','2023-04-08',''),(6,'Roberto','Cabales','CC','687631321','rober@mail.com','A','2023-04-09','2023-04-09',''),(7,'Casandra','Blues','CC','4654351','casandra@mail.com','A','2023-04-09','2023-04-09','269875126'),(8,'Roberto','Cabales','CC','10256265','roberto@mail.com','A','2023-04-09','2023-04-09','65132135'),(9,'Carlos','Brent','CC','34654321','carlos@mail.com','A','2023-04-09','2023-04-09','6456843215'),(10,'Cliente Frecuente','Hill','CC','108736353','cleinte.frecuente@gmail.com','A','2023-06-10','2023-06-10','65132135'),(11,'Juanito Alimaña','Cabales','CC','1025626523','correoprueba@gmail.com','A','2023-06-11','2023-06-11','7986332354'),(12,'Carlos','Puente','CC','981738652','carlos.puente@gmail.com','A','2023-06-11','2023-06-11','3211154556'),(13,'Primer Cliente','Cardenas','CC','12456675','prueba.prueba@gmail.com','A','2023-06-11','2023-06-11','123654765'),(14,'Roberto','No tiene maña','CC','1025626541','davileo648@hotmail.com','A','2023-06-12','2023-06-12','12343567'),(15,'David','Malaver','CC','9878527','davileo846@gmail.com','A','2023-06-25','2023-06-25','987387653');
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
  `NUMERO_COTIZACION` varchar(30) DEFAULT NULL,
  `FECHA_COTIZACION` date NOT NULL,
  `SUBTOTAL` decimal(12,2) NOT NULL,
  `TOTAL` decimal(12,2) NOT NULL,
  `ESTADO_COTIZACION` varchar(2) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_COTIZACION`),
  UNIQUE KEY `COTIZACION_PK` (`ID_CLIENTE`,`ID_COTIZACION`),
  KEY `RELATIONSHIP_5_FK` (`ID_CLIENTE`),
  CONSTRAINT `FK_COTIZACI_RELATIONS_CLIENTES` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `clientes` (`ID_CLIENTE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones`
--

LOCK TABLES `cotizaciones` WRITE;
/*!40000 ALTER TABLE `cotizaciones` DISABLE KEYS */;
INSERT INTO `cotizaciones` VALUES (11,1,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,2,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,3,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,4,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,5,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,6,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,7,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,8,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,9,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,10,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,11,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,12,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,13,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,14,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(11,15,NULL,'2023-06-11',0.00,3707000.00,'C','2023-06-11','2023-06-11'),(12,16,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,17,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,18,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,19,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,20,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,21,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(12,22,NULL,'2023-06-12',0.00,944000.00,'C','2023-06-11','2023-06-11'),(13,23,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-11','2023-06-11'),(13,24,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,25,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,26,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,27,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,28,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,29,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,30,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,31,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,32,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,33,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,34,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,35,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,36,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,37,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,38,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(13,39,NULL,'2023-06-12',0.00,541000.00,'C','2023-06-12','2023-06-12'),(14,40,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,41,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,42,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,43,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,44,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,45,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(14,46,NULL,'2023-06-12',0.00,586000.00,'C','2023-06-12','2023-06-12'),(15,47,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25'),(15,48,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25'),(15,49,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25'),(15,50,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25'),(15,51,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25'),(15,52,NULL,'2023-06-25',0.00,366000.00,'C','2023-06-25','2023-06-25');
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
  `CANTIDAD` int NOT NULL,
  `REFERENCIA_PRODUCTO` varchar(30) NOT NULL,
  `PRECIO_UNITARIO` float NOT NULL,
  `IMAGEN_PRODUCTO` varchar(1024) DEFAULT NULL,
  `ESTADO_PRODUCTO` char(2) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  UNIQUE KEY `PRODUCTO_PK` (`ID_PRODUCTO`),
  KEY `RELATIONSHIP_1_FK` (`ID_CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'Maceta nueva actualizada','Maceta esmaltada actualizadaa por segunda vez jeje ',100,'B0000214',380000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D',NULL,'2023-04-04'),(2,1,'Maceta 02','Maceta elaborada en barro pintada',25,'MBP00001',93000,'https://images.unsplash.com/photo-1528563351349-844bf0482bf0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D',NULL,NULL),(3,2,'Pocillo 01','Pocillo diseño divertido',230,'PP000001',20000,'https://images.unsplash.com/photo-1569616536075-9c90244601c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D',NULL,NULL),(4,2,'Pocillo 02',NULL,230,'PP000002',28000,'https://images.unsplash.com/photo-1610858562676-a65264bef29b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D','2022-11-15','2022-11-15'),(5,1,'Maceta 03','Maceta esmaltada blanca',23,'MBP000003',90000,'https://images.unsplash.com/photo-1621274220348-41dc235ff439?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80','D','2022-11-15','2022-11-15'),(6,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(12,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(13,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(14,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(15,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(16,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(17,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(18,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(19,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(20,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(21,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(22,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(23,1,'Maceta nueva','Maceta esmaltada ',230,'M0000214',120000,'https://todoraquira.com/wp-content/uploads/2021/04/achira-variegada-2-1200x1200.jpg','D','2022-11-15','2022-11-15'),(24,NULL,'materamarrano ','sdfsggfdgfgfhgf',200,'asdfdghjkl',20000,'https://drive.google.com/uc?id=1WyuIx7r7OAifnnLlsi5RdK8xjLsa_qAR&export=download','D','2023-06-27','2023-06-27'),(25,6,'Algo de arte ','Algo de arte hermoso \nNose que mas \n20*20*20\nYeiii',200,'R01-JM100',20000,'https://drive.google.com/uc?id=1YLba-6NCY8M5Hj3jkMWWLkXbGcL5dgdl&export=download','D','2023-07-10','2023-07-10');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_agregados`
--

DROP TABLE IF EXISTS `productos_agregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_agregados` (
  `ID_COTIZACION` int NOT NULL,
  `ID_PRODUCTO` int NOT NULL,
  `CANTIDAD_PRODUCTO` int NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`ID_COTIZACION`,`ID_PRODUCTO`),
  UNIQUE KEY `PRODUCTO_AGREGADO_PK` (`ID_COTIZACION`,`ID_PRODUCTO`),
  KEY `RELATIONSHIP_6_FK` (`ID_PRODUCTO`),
  CONSTRAINT `FK_PRODUCTO_RELATIONS_PRODUCTO` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_agregados`
--

LOCK TABLES `productos_agregados` WRITE;
/*!40000 ALTER TABLE `productos_agregados` DISABLE KEYS */;
INSERT INTO `productos_agregados` VALUES (42,1,1,'2023-06-12','2023-06-12'),(42,2,2,'2023-06-12','2023-06-12'),(42,3,1,'2023-06-12','2023-06-12'),(43,1,1,'2023-06-12','2023-06-12'),(43,2,2,'2023-06-12','2023-06-12'),(43,3,1,'2023-06-12','2023-06-12'),(44,1,1,'2023-06-12','2023-06-12'),(44,2,2,'2023-06-12','2023-06-12'),(44,3,1,'2023-06-12','2023-06-12'),(45,1,1,'2023-06-12','2023-06-12'),(45,2,2,'2023-06-12','2023-06-12'),(45,3,1,'2023-06-12','2023-06-12'),(46,1,1,'2023-06-12','2023-06-12'),(46,2,2,'2023-06-12','2023-06-12'),(46,3,1,'2023-06-12','2023-06-12'),(47,2,2,'2023-06-25','2023-06-25'),(47,5,2,'2023-06-25','2023-06-25'),(48,2,2,'2023-06-25','2023-06-25'),(48,5,2,'2023-06-25','2023-06-25'),(49,2,2,'2023-06-25','2023-06-25'),(49,5,2,'2023-06-25','2023-06-25'),(50,2,2,'2023-06-25','2023-06-25'),(50,5,2,'2023-06-25','2023-06-25'),(51,2,2,'2023-06-25','2023-06-25'),(51,5,2,'2023-06-25','2023-06-25'),(52,2,2,'2023-06-25','2023-06-25'),(52,5,2,'2023-06-25','2023-06-25');
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
INSERT INTO `users` VALUES ('admin@gmail.com','U2FsdGVkX1/tC3YPX/aQUXS2s7Nh4GOGKNTvtQOTak0=','Mafe','sanchez munevar','admin','2022-12-12','2022-12-12'),('admin123@gmail.com','U2FsdGVkX1+ssHf/8QKX3kn3Z8Mhc/FlkXQlLyKv+Lk=','Mafe','sanchez munevar','user','2022-12-12','2022-12-12'),('cliente@gmail.com','U2FsdGVkX19JCkyPW57tkTn9CHleRn9xKqZMjddahBM=','Cliente','Prueba','user','2023-01-04','2023-01-04'),('mafe@hmanmkd','123','maria','sanchez','usuario','2022-12-12','2022-12-12'),('mafe2109@gmail.com','1057892','mafe','rodriguez','user','2023-01-19','2023-01-19'),('malaver@gmail.com','789945','David','malaver','user','2023-03-12','2023-03-12'),('maria.sanchez02@uptc.edu.co','mafe123','Maria Fernanda','Sanchez Munevar','admin','2023-02-12','2023-02-12'),('prueba@gmail.com','123456','prueba','pepito','user','2023-01-19','2023-01-19'),('prueba2@gmail.com','prueba123','prubeaaa','melo','user','2023-01-29','2023-01-29');
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

-- Dump completed on 2023-07-18 20:53:24
