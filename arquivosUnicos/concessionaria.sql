-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionaria_nova
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `ano` int NOT NULL,
  `preco` double NOT NULL,
  `idFabricante` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFabricante` (`idFabricante`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`idFabricante`) REFERENCES `fabricante` (`id`),
  CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'Civic','Branco',2023,130000,7,3),(2,'HB20','Vermelho',2022,75000,8,4),(3,'Onix','Prata',2021,68000,9,5),(4,'Compass','Preto',2023,180000,11,6),(5,'Renegade','Cinza',2022,120000,11,7),(6,'Kwid','Branco',2021,45000,12,8),(7,'Peugeot 208','Azul',2023,90000,13,9),(8,'Fiat Argo','Vermelho',2022,70000,14,10),(9,'BMW X1','Preto',2023,250000,5,1),(10,'Audi A3','Branco',2022,220000,4,2),(11,'Tesla Model 3','Preto',2023,300000,25,3),(12,'Porsche Cayenne','Cinza',2023,500000,18,4);
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos Silva','Rua C','9999-9999'),(2,'Ana Souza','Rua D','4444-4444'),(3,'Pedro Santos','Rua E','5555-5555'),(4,'Juliana Lima','Rua F','6666-6666'),(5,'Fernanda Alves','Rua G','7777-7777'),(6,'Bruno Rocha','Rua H','8888-8888'),(7,'Camila Ferreira','Rua I','9999-9999'),(8,'Lucas Ribeiro','Rua J','1010-1010'),(9,'Patricia Gomes','Rua K','2020-2020'),(10,'Rafael Martins','Rua L','3030-3030'),(11,'Carlos Silva','Rua C','3333-3333'),(12,'Ana Souza','Rua D','4444-4444'),(13,'Pedro Santos','Rua E','5555-5555'),(14,'Juliana Lima','Rua F','6666-6666'),(15,'Fernanda Alves','Rua G','7777-7777'),(16,'Bruno Rocha','Rua H','8888-8888'),(17,'Camila Ferreira','Rua I','9999-9999'),(18,'Lucas Ribeiro','Rua J','1010-1010'),(19,'Patricia Gomes','Rua K','2020-2020'),(20,'Rafael Martins','Rua L','3030-3030');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'Toyota'),(2,'Honda'),(3,'Hyundai'),(4,'Kia'),(5,'Chevrolet'),(6,'Ford'),(7,'Jeep'),(8,'Renault'),(9,'Peugeot'),(10,'Fiat'),(11,'Citroen'),(12,'Mitsubishi'),(13,'Subaru'),(14,'Mazda'),(15,'Suzuki'),(16,'Volvo'),(17,'Land Rover'),(18,'Jaguar'),(19,'Porsche'),(20,'Ferrari'),(21,'Lamborghini'),(22,'Maserati'),(23,'Tesla'),(24,'Mini'),(25,'Chery'),(26,'Geely'),(27,'Great Wall'),(28,'RAM'),(29,'Dodge'),(30,'Cadillac'),(31,'Lincoln'),(32,'Infiniti'),(33,'Acura'),(34,'Alfa Romeo'),(35,'Bugatti'),(36,'Koenigsegg'),(37,'Pagani'),(38,'Toyota'),(39,'Honda'),(40,'Hyundai'),(41,'Kia'),(42,'Chevrolet'),(43,'Ford'),(44,'Jeep'),(45,'Renault'),(46,'Peugeot'),(47,'Fiat'),(48,'Citroen'),(49,'Mitsubishi'),(50,'Subaru'),(51,'Mazda'),(52,'Suzuki'),(53,'Volvo'),(54,'Land Rover'),(55,'Jaguar'),(56,'Porsche'),(57,'Ferrari'),(58,'Lamborghini'),(59,'Maserati'),(60,'Tesla'),(61,'Mini'),(62,'Chery'),(63,'Geely'),(64,'Great Wall'),(65,'RAM'),(66,'Dodge'),(67,'Cadillac'),(68,'Lincoln'),(69,'Infiniti'),(70,'Acura'),(71,'Alfa Romeo'),(72,'Bugatti'),(73,'Koenigsegg'),(74,'Pagani');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `salario` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Ricardo Almeida',3200),(2,'Fernanda Costa',3800),(3,'Lucas Pereira',2900),(4,'Juliana Martins',4100),(5,'Bruno Carvalho',3500),(6,'Camila Rodrigues',3700),(7,'Diego Fernandes',3000),(8,'Patricia Oliveira',4200),(9,'Rafael Gomes',3300),(10,'Aline Barbosa',3600),(11,'Marcos Vinicius',3400),(12,'Beatriz Souza',3900),(13,'Thiago Ribeiro',3100),(14,'Larissa Mendes',4000),(15,'Eduardo Teixeira',2800),(16,'Ricardo Almeida',3200),(17,'Fernanda Costa',3800),(18,'Lucas Pereira',2900),(19,'Juliana Martins',4100),(20,'Bruno Carvalho',3500),(21,'Camila Rodrigues',3700),(22,'Diego Fernandes',3000),(23,'Patricia Oliveira',4200),(24,'Rafael Gomes',3300),(25,'Aline Barbosa',3600),(26,'Marcos Vinicius',3400),(27,'Beatriz Souza',3900),(28,'Thiago Ribeiro',3100),(29,'Larissa Mendes',4000),(30,'Eduardo Teixeira',2800);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 16:22:47
