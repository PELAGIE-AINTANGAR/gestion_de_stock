-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: boutique
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Electronique'),(2,'Mode'),(3,'Maison'),(4,'Electronique'),(5,'Mode'),(6,'Maison'),(7,'Electronique'),(8,'Mode'),(9,'Maison'),(10,'Electronique'),(11,'Mode'),(12,'Maison'),(13,'Electronique'),(14,'Mode'),(15,'Maison'),(16,'Electronique'),(17,'Mode'),(18,'Maison'),(19,'Electronique'),(20,'Mode'),(21,'Maison'),(22,'Electronique'),(23,'Mode'),(24,'Maison'),(25,'Electronique'),(26,'Mode'),(27,'Maison'),(28,'Electronique'),(29,'Mode'),(30,'Maison'),(31,'Electronique'),(32,'Mode'),(33,'Maison'),(34,'Electronique'),(35,'Mode'),(36,'Maison'),(37,'Electronique'),(38,'Mode'),(39,'Maison'),(40,'Electronique'),(41,'Mode'),(42,'Maison'),(43,'Electronique'),(44,'Mode'),(45,'Maison'),(46,'Electronique'),(47,'Mode'),(48,'Maison'),(49,'Electronique'),(50,'Mode'),(51,'Maison'),(52,'Electronique'),(53,'Mode'),(54,'Maison'),(55,'Electronique'),(56,'Mode'),(57,'Maison'),(58,'Electronique'),(59,'Mode'),(60,'Maison'),(61,'Electronique'),(62,'Mode'),(63,'Maison'),(64,'Electronique'),(65,'Mode'),(66,'Maison'),(67,'Electronique'),(68,'Mode'),(69,'Maison'),(70,'Electronique'),(71,'Mode'),(72,'Maison'),(73,'Electronique'),(74,'Mode'),(75,'Maison'),(76,'Electronique'),(77,'Mode'),(78,'Maison'),(79,'Electronique'),(80,'Mode'),(81,'Maison'),(82,'Electronique'),(83,'Mode'),(84,'Maison'),(85,'Electronique'),(86,'Mode'),(87,'Maison'),(88,'Electronique'),(89,'Mode'),(90,'Maison'),(91,'Electronique'),(92,'Mode'),(93,'Maison'),(94,'Electronique'),(95,'Mode'),(96,'Maison'),(97,'Electronique'),(98,'Mode'),(99,'Maison'),(100,'Electronique'),(101,'Mode'),(102,'Maison'),(103,'Electronique'),(104,'Mode'),(105,'Maison'),(106,'Electronique'),(107,'Mode'),(108,'Maison'),(109,'Electronique'),(110,'Mode'),(111,'Maison'),(112,'Electronique'),(113,'Mode'),(114,'Maison'),(115,'Electronique'),(116,'Mode'),(117,'Maison'),(118,'Electronique'),(119,'Mode'),(120,'Maison'),(121,'Electronique'),(122,'Mode'),(123,'Maison'),(124,'Electronique'),(125,'Mode'),(126,'Maison'),(127,'Electronique'),(128,'Mode'),(129,'Maison'),(130,'Electronique'),(131,'Mode'),(132,'Maison'),(133,'Electronique'),(134,'Mode'),(135,'Maison'),(136,'Electronique'),(137,'Mode'),(138,'Maison'),(139,'Electronique'),(140,'Mode'),(141,'Maison'),(142,'Electronique'),(143,'Mode'),(144,'Maison'),(145,'Electronique'),(146,'Mode'),(147,'Maison'),(148,'Electronique'),(149,'Mode'),(150,'Maison'),(151,'Electronique'),(152,'Mode'),(153,'Maison'),(154,'Electronique'),(155,'Mode'),(156,'Maison'),(157,'Electronique'),(158,'Mode'),(159,'Maison'),(160,'Electronique'),(161,'Mode'),(162,'Maison'),(163,'Electronique'),(164,'Mode'),(165,'Maison'),(166,'Electronique'),(167,'Mode'),(168,'Maison'),(169,'Electronique'),(170,'Mode'),(171,'Maison'),(172,'Electronique'),(173,'Mode'),(174,'Maison'),(175,'Electronique'),(176,'Mode'),(177,'Maison'),(178,'Electronique'),(179,'Mode'),(180,'Maison'),(181,'Electronique'),(182,'Mode'),(183,'Maison'),(184,'Electronique'),(185,'Mode'),(186,'Maison'),(187,'Electronique'),(188,'Mode'),(189,'Maison'),(190,'Electronique'),(191,'Mode'),(192,'Maison'),(193,'Electronique'),(194,'Mode'),(195,'Maison'),(196,'Electronique'),(197,'Mode'),(198,'Maison'),(199,'Electronique'),(200,'Mode'),(201,'Maison'),(202,'Electronique'),(203,'Mode'),(204,'Maison'),(205,'Electronique'),(206,'Mode'),(207,'Maison'),(208,'Electronique'),(209,'Mode'),(210,'Maison'),(211,'Electronique'),(212,'Mode'),(213,'Maison'),(214,'Electronique'),(215,'Mode'),(216,'Maison'),(217,'Electronique'),(218,'Mode'),(219,'Maison'),(220,'Electronique'),(221,'Mode'),(222,'Maison'),(223,'Electronique'),(224,'Mode'),(225,'Maison'),(226,'Electronique'),(227,'Mode'),(228,'Maison'),(229,'Electronique'),(230,'Mode'),(231,'Maison'),(232,'Electronique'),(233,'Mode'),(234,'Maison'),(235,'Electronique'),(236,'Mode'),(237,'Maison'),(238,'Electronique'),(239,'Mode'),(240,'Maison'),(241,'Electronique'),(242,'Mode'),(243,'Maison'),(244,'Electronique'),(245,'Mode'),(246,'Maison'),(247,'Electronique'),(248,'Mode'),(249,'Maison'),(250,'Electronique'),(251,'Mode'),(252,'Maison'),(253,'Electronique'),(254,'Mode'),(255,'Maison'),(256,'Electronique'),(257,'Mode'),(258,'Maison'),(259,'Electronique'),(260,'Mode'),(261,'Maison'),(262,'Electronique'),(263,'Mode'),(264,'Maison'),(265,'Electronique'),(266,'Mode'),(267,'Maison'),(268,'Electronique'),(269,'Mode'),(270,'Maison'),(271,'Electronique'),(272,'Mode'),(273,'Maison'),(274,'Electronique'),(275,'Mode'),(276,'Maison'),(277,'Electronique'),(278,'Mode'),(279,'Maison'),(280,'Electronique'),(281,'Mode'),(282,'Maison'),(283,'Electronique'),(284,'Mode'),(285,'Maison'),(286,'Electronique'),(287,'Mode'),(288,'Maison'),(289,'Electronique'),(290,'Mode'),(291,'Maison'),(292,'Electronique'),(293,'Mode'),(294,'Maison'),(295,'Electronique'),(296,'Mode'),(297,'Maison'),(298,'Electronique'),(299,'Mode'),(300,'Maison'),(301,'Electronique'),(302,'Mode'),(303,'Maison'),(304,'Electronique'),(305,'Mode'),(306,'Maison'),(307,'Electronique'),(308,'Mode'),(309,'Maison'),(310,'Electronique'),(311,'Mode'),(312,'Maison'),(313,'Electronique'),(314,'Mode'),(315,'Maison'),(316,'Electronique'),(317,'Mode'),(318,'Maison'),(319,'Electronique'),(320,'Mode'),(321,'Maison'),(322,'Electronique'),(323,'Mode'),(324,'Maison'),(325,'Electronique'),(326,'Mode'),(327,'Maison'),(328,'Electronique'),(329,'Mode'),(330,'Maison'),(331,'Electronique'),(332,'Mode'),(333,'Maison'),(334,'Electronique'),(335,'Mode'),(336,'Maison'),(337,'Electronique'),(338,'Mode'),(339,'Maison'),(340,'Electronique'),(341,'Mode'),(342,'Maison'),(343,'Electronique'),(344,'Mode'),(345,'Maison'),(346,'Electronique'),(347,'Mode'),(348,'Maison'),(349,'Electronique'),(350,'Mode'),(351,'Maison'),(352,'Electronique'),(353,'Mode'),(354,'Maison'),(355,'Electronique'),(356,'Mode'),(357,'Maison'),(358,'Electronique'),(359,'Mode'),(360,'Maison'),(361,'Electronique'),(362,'Mode'),(363,'Maison'),(364,'Electronique'),(365,'Mode'),(366,'Maison'),(367,'Electronique'),(368,'Mode'),(369,'Maison'),(370,'Electronique'),(371,'Mode'),(372,'Maison'),(373,'Electronique'),(374,'Mode'),(375,'Maison'),(376,'Electronique'),(377,'Mode'),(378,'Maison'),(379,'Electronique'),(380,'Mode'),(381,'Maison'),(382,'Electronique'),(383,'Mode'),(384,'Maison'),(385,'Electronique'),(386,'Mode'),(387,'Maison'),(388,'Electronique'),(389,'Mode'),(390,'Maison'),(391,'Electronique'),(392,'Mode'),(393,'Maison'),(394,'Electronique'),(395,'Mode'),(396,'Maison'),(397,'Electronique'),(398,'Mode'),(399,'Maison'),(400,'Electronique'),(401,'Mode'),(402,'Maison'),(403,'Electronique'),(404,'Mode'),(405,'Maison'),(406,'Electronique'),(407,'Mode'),(408,'Maison'),(409,'Electronique'),(410,'Mode'),(411,'Maison'),(412,'Electronique'),(413,'Mode'),(414,'Maison'),(415,'Electronique'),(416,'Mode'),(417,'Maison'),(418,'Electronique'),(419,'Mode'),(420,'Maison'),(421,'Electronique'),(422,'Mode'),(423,'Maison'),(424,'Electronique'),(425,'Mode'),(426,'Maison'),(427,'Electronique'),(428,'Mode'),(429,'Maison'),(430,'Electronique'),(431,'Mode'),(432,'Maison'),(433,'Electronique'),(434,'Mode'),(435,'Maison'),(436,'Electronique'),(437,'Mode'),(438,'Maison'),(439,'Electronique'),(440,'Mode'),(441,'Maison'),(442,'Electronique'),(443,'Mode'),(444,'Maison'),(445,'Electronique'),(446,'Mode'),(447,'Maison'),(448,'Electronique'),(449,'Mode'),(450,'Maison'),(451,'Electronique'),(452,'Mode'),(453,'Maison'),(454,'Electronique'),(455,'Mode'),(456,'Maison'),(457,'Electronique'),(458,'Mode'),(459,'Maison'),(460,'Electronique'),(461,'Mode'),(462,'Maison'),(463,'Electronique'),(464,'Mode'),(465,'Maison'),(466,'Electronique'),(467,'Mode'),(468,'Maison'),(469,'Electronique'),(470,'Mode'),(471,'Maison'),(472,'Electronique'),(473,'Mode'),(474,'Maison'),(475,'Electronique'),(476,'Mode'),(477,'Maison'),(478,'Electronique'),(479,'Mode'),(480,'Maison'),(481,'Electronique'),(482,'Mode'),(483,'Maison'),(484,'Electronique'),(485,'Mode'),(486,'Maison'),(487,'Electronique'),(488,'Mode'),(489,'Maison'),(490,'Electronique'),(491,'Mode'),(492,'Maison'),(493,'Electronique'),(494,'Mode'),(495,'Maison'),(496,'Electronique'),(497,'Mode'),(498,'Maison'),(499,'Electronique'),(500,'Mode'),(501,'Maison'),(502,'Electronique'),(503,'Mode'),(504,'Maison');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` text,
  `prix` int DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  `id_categorie` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (2,'chemisette','tissu',70,1,2),(70,'matela','en bambo',400,1,1),(71,'tablette','iphat',150,1,1),(75,'pantalon','coton',50,1,1),(76,'lampe','maison du monde',150,1,2),(77,'avion','4V',10000000,1,1),(165,'voiture','4X4',30000,1,1),(502,'lunette','boss',143,1,1),(523,'fauteille','maison de meuble',200,1,2),(649,'Téléviseur','Téléviseur OLED 4K',1500,10,1),(650,'Chemise','Chemise en coton',50,50,2),(651,'Canapé','Canapé d\'angle en cuir',2000,5,3),(653,'Table','Table en bois',200,10,3),(672,'ordinateur','HP',500,1,2),(789,'Chaise','Chaise en bois',100,20,3),(796,'ventillateur','hggh',676,1,2);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 10:35:48
