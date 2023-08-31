CREATE DATABASE  IF NOT EXISTS `actividad2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: actividad2
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `EMaiil` varchar(45) NOT NULL,
  `FNacimiento` date NOT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Laura ','Martínez','Km 3','ryan.white@dummyemail.info','2005-08-15'),(2,'Alejandro ','López','Cra 23','jessica.clark@madeupmail.biz','1998-03-22'),(3,'Sofia ','García','Cll 6','chris.miller@fakemail.co','1992-11-04'),(4,'Juan ','Rodríguez','Av 56','lisa.martin@fakemail.org','1989-06-30'),(5,'Ana ','González','Cra 91','sarah.brown@outlook.com','1996-09-18'),(6,'Carlos','Pérez','Cll 54','david.wilson@hotmail.com','2000-04-12'),(7,'Isabel ','Fernández','Av 45','emily.jones@yahoo.com','1987-12-08'),(8,'Miguel ','Sánchez','Av 675','alice.smith@gmail.com','1994-05-26'),(9,'Lucia ','Torres','Cll 478','john.doe@example.com','1984-10-17'),(10,'David ','Ramírez','Cra 50','mike.johnson@webmail.net','1990-07-03');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `preciocompra` decimal(10,0) NOT NULL,
  `precioventa` decimal(10,0) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo_producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id_productos`,`tipo_producto_id`),
  KEY `fk_productos_tipo_producto1_idx` (`tipo_producto_id`),
  CONSTRAINT `fk_productos_tipo_producto1` FOREIGN KEY (`tipo_producto_id`) REFERENCES `tipo_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Camisetas de algodón',10000,15000,30,1),(2,'Zapatillas deportivas.',45000,50000,30,1),(3,'Trajes de baño.',30000,35000,30,1),(4,'Cepillos de maquillaje.',10000,15000,30,5),(5,'Champú nutritivo.',5000,1000,30,5),(6,'Cremas antienvejecimiento.',90000,95000,30,5),(7,'Teléfono inteligente.',700000,750000,30,2),(8,'Consola de videojuegos.',500000,600000,30,2),(9,'Smart TV',900000,1000000,30,2),(10,'Altavoces Bluetooth.',45000,50000,30,2),(11,'Computadora portátil.',1700000,2000000,30,2),(12,'Sidra espumosa.',20000,25000,50,4),(13,'Limonada casera.',2000,2500,50,4),(14,'Té verde orgánico.',5000,6000,50,4),(15,'Velas perfumadas.',4000,5000,50,3),(16,'Cortinas opacas.',9000,10000,50,3),(17,'Plantas de interior.',10000,15000,50,3),(18,'Cuadros modernos.',25000,30000,50,3),(19,'Cojines decorativos.',30000,35000,50,3),(20,'Whisky de malta.',15000,20000,50,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(25) NOT NULL,
  PRIMARY KEY (`id_proveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'DistribucionesMundo','Av 123','1234567890','miemail1234@gmail.com'),(2,'EcoLogística','Cll 345','9876543210','correoficticio@hotmail.co'),(3,'DistriRed','Cra 567','5551212121','ejemplocorreo@yahoo.com'),(4,'GlobalDistribuye','Av 765','9998887776','notarealaddress@outlook.c'),(5,'RapidEnvíos','Cra 987','1112233444','micuentadeemail@gmail.com'),(6,'DistribuSmart','Cll 732','7776665555','correo_falso@hotmail.com'),(7,'ConnectLogix','Av 768','8889990001','maildeprueba@yahoo.com'),(8,'NexusDistribución','Av 908','4443332222','correo_inventado@outlook.'),(9,'PrimeDispatch','Cll 21','6667778889','direccióncorreo@gmail.com'),(10,'SoluDistribuciones','Cra 98','5554443333','correoficticio2@yahoo.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_x_producto`
--

DROP TABLE IF EXISTS `proveedores_x_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_x_producto` (
  `id_proveedores` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `proveedores_x_producto_ibfk_1` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`),
  CONSTRAINT `proveedores_x_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_x_producto`
--

LOCK TABLES `proveedores_x_producto` WRITE;
/*!40000 ALTER TABLE `proveedores_x_producto` DISABLE KEYS */;
INSERT INTO `proveedores_x_producto` VALUES (1,1,1),(1,2,2),(1,3,1),(1,7,4),(2,1,3),(2,2,5),(2,3,2),(2,8,2),(3,2,4),(3,4,8),(3,6,7),(3,7,5),(4,1,3),(4,2,6),(4,3,9),(4,9,7),(5,10,2),(5,11,3),(5,12,2),(5,13,1),(6,5,7),(6,9,4),(6,15,5),(6,16,6),(7,5,1),(7,6,4),(7,9,2),(7,10,3),(8,11,3),(8,15,2),(8,18,5),(8,19,1),(9,14,3),(9,16,3),(9,17,7),(9,20,5),(10,1,2),(10,18,5),(10,19,7),(10,20,9);
/*!40000 ALTER TABLE `proveedores_x_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id_telefonos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_telefonos`),
  KEY `clientes_id` (`clientes_id`),
  CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,'5551234567',1),(2,'7779876543',1),(3,'8884567890',2),(4,'6662345678',3),(5,'9993456789',4),(6,'3338765432',5),(7,'1119876543',5),(8,'4442345678',6),(9,'2225678901',7),(10,'8887654321',8),(11,'1112223333',9),(12,'3332221111',10);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_producto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES (1,'Ropa'),(2,'Electronica'),(3,'Decoracion'),(4,'Bebidas'),(5,'Belleza');
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `sub_total` decimal(10,0) NOT NULL,
  `iva` decimal(10,0) NOT NULL,
  `descuento` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ventas`),
  KEY `clientes_id` (`clientes_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'00001','2023-01-23',20000,19,0,23800,3),(2,'00002','2023-02-04',30000,19,0,35700,1),(3,'00003','2023-02-24',10000,19,0,11900,5),(4,'00004','2023-03-05',15000,19,0,17850,2),(5,'00005','2023-03-15',9000,19,0,10710,7),(6,'00006','2023-03-30',19000,19,0,22610,6),(7,'00007','2023-04-04',50000,19,0,59500,8),(8,'00008','2023-04-14',100000,19,0,119000,9),(9,'00009','2023-05-10',400000,19,0,476000,1),(10,'00010','2023-05-25',2000000,19,0,2380000,10),(11,'00011','2023-06-01',300100,19,0,357119,4),(12,'00012','2023-06-20',30000,19,0,35700,8),(13,'00013','2023-07-04',10000,19,0,11900,7),(14,'00014','2023-07-06',50000,19,0,59500,4),(15,'00015','2023-07-07',30000,19,0,35700,1),(16,'00016','2023-07-09',5000,19,0,5950,2),(17,'00017','2023-07-21',10000,19,0,11900,2),(18,'00018','2023-08-20',70000,19,0,83300,3),(19,'00019','2023-08-30',900000,19,0,1071000,5),(20,'00020','2023-09-20',100000,19,0,119000,10);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_x_producto`
--

DROP TABLE IF EXISTS `ventas_x_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_x_producto` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_venta`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `ventas_x_producto_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_ventas`),
  CONSTRAINT `ventas_x_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_x_producto`
--

LOCK TABLES `ventas_x_producto` WRITE;
/*!40000 ALTER TABLE `ventas_x_producto` DISABLE KEYS */;
INSERT INTO `ventas_x_producto` VALUES (1,1,1),(2,3,5),(3,2,4),(4,5,3),(5,6,6),(6,4,2),(7,12,9),(8,19,8),(9,20,3),(10,14,1);
/*!40000 ALTER TABLE `ventas_x_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'actividad2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 16:58:10
