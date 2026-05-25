-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: hortifrutbilly
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João','Av. Sapopemba, 1234','(11)99876-5432'),(2,'Maria','Rua da Consolação, 321','(11)95432-8769'),(3,'Ana Silva','Rua das Flores, 123, Centro - São Paulo, SP','(11) 98765-4321'),(4,'Bruno Costa','Av. Paulista, 1000, Bela Vista - São Paulo, SP','(11) 91234-5678'),(5,'Carla Mendes','Rua do Sol, 45, Copacabana - Rio de Janeiro, RJ','(21) 99876-5432'),(6,'Diego Santos','Praça da Sé, 99, Centro - São Paulo, SP','(11) 97777-8888'),(7,'Elena Rocha','Rua das Acácias, 321, Cambuí - Campinas, SP','(19) 96666-5555'),(8,'Fábio Lima','Av. Brasil, 500, Savassi - Belo Horizonte, MG','(31) 95555-4444'),(9,'Gabriela Castro','Rua das Palmeiras, 77, Batel - Curitiba, PR','(41) 94444-3333'),(10,'Henrique Alves','Av. Atlântica, 200, Leme - Rio de Janeiro, RJ','(21) 93333-2222'),(11,'Isabela Nogueira','Rua XV de Novembro, 15, Centro Histórico - Porto Alegre, RS','(51) 92222-1111'),(12,'João Pedro','Av. Afonso Pena, 300, Centro - Campo Grande, MS','(67) 91111-0000'),(13,'Karina Souza','Rua da Consolação, 400, Consolação - São Paulo, SP','(11) 90000-9999'),(14,'Lucas Oliveira','Av. Boa Viagem, 800, Boa Viagem - Recife, PE','(81) 98888-7777'),(15,'Mariana Dias','Rua das Laranjeiras, 10, Pelourinho - Salvador, BA','(71) 97777-6666');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notafiscal`
--

DROP TABLE IF EXISTS `notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notafiscal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dataNota` date NOT NULL,
  `idCliente` int NOT NULL,
  `idProduto` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCliente` (`idCliente`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `notafiscal_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `notafiscal_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notafiscal`
--

LOCK TABLES `notafiscal` WRITE;
/*!40000 ALTER TABLE `notafiscal` DISABLE KEYS */;
INSERT INTO `notafiscal` VALUES (1,'2026-04-01',1,1),(2,'2026-04-02',2,3),(3,'2026-04-03',3,5),(4,'2026-04-04',4,2),(5,'2026-04-05',5,10),(6,'2026-04-06',6,9),(7,'2026-04-07',7,12),(8,'2026-04-08',8,17),(9,'2026-04-09',9,16),(10,'2026-04-10',10,18),(11,'2026-04-11',11,15),(12,'2026-04-12',12,11),(13,'2026-04-13',13,7),(14,'2026-04-14',14,4),(15,'2026-04-15',15,8);
/*!40000 ALTER TABLE `notafiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `preco` double NOT NULL,
  `idTipo` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipo` (`idTipo`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipoproduto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Limão Tahiti (KG)',4.99,31),(2,'Laranja Pera (KG)',5.5,31),(3,'Morango (Caixa)',8.9,32),(4,'Banana Nanica (KG)',6.5,33),(5,'Pêssego Nacional (KG)',12,34),(6,'Alface Americana (Un)',4.5,35),(7,'Espinafre (Maço)',3.8,35),(8,'Brócolis Ninja (Un)',7,36),(9,'Tomate Carmem (KG)',8.5,37),(10,'Abobrinha Italiana (KG)',5.9,37),(11,'Cenoura (KG)',4.8,38),(12,'Batata Monalisa (KG)',6.9,39),(13,'Cebola Pera (KG)',5,40),(14,'Manjericão (Maço)',3.5,41),(15,'Pimenta do Reino (100g)',9,42),(16,'Cogumelo Paris (Bandeja)',14.5,43),(17,'Ovos Caipiras (Dúzia)',18,44),(18,'Castanha do Pará (100g)',15.5,45);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoproduto`
--

DROP TABLE IF EXISTS `tipoproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoproduto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoproduto`
--

LOCK TABLES `tipoproduto` WRITE;
/*!40000 ALTER TABLE `tipoproduto` DISABLE KEYS */;
INSERT INTO `tipoproduto` VALUES (31,'Frutas Cítricas'),(32,'Frutas Vermelhas'),(33,'Frutas Tropicais'),(34,'Frutas de Caroço'),(35,'Folhas Verdes'),(36,'Flores e Hastes'),(37,'Legumes de Fruto'),(38,'Raízes'),(39,'Tubérculos'),(40,'Bulbos'),(41,'Ervas Aromáticas'),(42,'Especiarias Secas'),(43,'Cogumelos e Fungos'),(44,'Ovos'),(45,'Castanhas e Sementes');
/*!40000 ALTER TABLE `tipoproduto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 13:44:31
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: concessionaria
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
  `id` int NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `ano` int NOT NULL,
  `carroceria` varchar(20) NOT NULL,
  `preco` double NOT NULL,
  `opcionais` varchar(100) DEFAULT NULL,
  `idFabricante` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFabricante` (`idFabricante`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`idFabricante`) REFERENCES `fabricante` (`id`),
  CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `id` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'BYD'),(2,'VOLKSWAGEN'),(3,'NISSAN'),(4,'AUDI'),(5,'BMW');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 13:44:32
