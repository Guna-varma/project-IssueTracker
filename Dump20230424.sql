-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: issuetracker
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `actionlevel`
--

DROP TABLE IF EXISTS `actionlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actionlevel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `levelName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionlevel`
--

LOCK TABLES `actionlevel` WRITE;
/*!40000 ALTER TABLE `actionlevel` DISABLE KEYS */;
INSERT INTO `actionlevel` VALUES (1,'GlobalLevel'),(2,'IssueLevel'),(3,'ProjectLevel');
/*!40000 ALTER TABLE `actionlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actiontable`
--

DROP TABLE IF EXISTS `actiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actiontable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `actionBody` varchar(255) DEFAULT NULL,
  `actionLevel` varchar(255) DEFAULT NULL,
  `actionNumber` bigint DEFAULT NULL,
  `actionType` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `issueId` bigint DEFAULT NULL,
  `roleLevel` varchar(255) DEFAULT NULL,
  `updatedAt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2jdydrpiigke91v1x3j1vox3m` (`issueId`),
  CONSTRAINT `FK2jdydrpiigke91v1x3j1vox3m` FOREIGN KEY (`issueId`) REFERENCES `issues` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actiontable`
--

LOCK TABLES `actiontable` WRITE;
/*!40000 ALTER TABLE `actiontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `actiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributecolumnnameinfo`
--

DROP TABLE IF EXISTS `attributecolumnnameinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributecolumnnameinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attributeColumnName` varchar(255) DEFAULT NULL,
  `attributeKey` varchar(255) DEFAULT NULL,
  `dataTypeInfoId` bigint DEFAULT NULL,
  `subscriptionTypeId` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributecolumnnameinfo`
--

LOCK TABLES `attributecolumnnameinfo` WRITE;
/*!40000 ALTER TABLE `attributecolumnnameinfo` DISABLE KEYS */;
INSERT INTO `attributecolumnnameinfo` VALUES (1,'id','b739007a-c44a-41fa-9fd8-bc248687701d',1,_binary '\0'),(2,'assignee','25d3e8c3-f297-47d7-8a71-751b42d1a6ae',2,_binary '\0'),(3,'attributeDate1','a899b516-bdaa-4741-98a2-9d95d1f715de',3,_binary '\0'),(4,'attributeDate10','623d3699-c7c3-4864-be4e-d19135fdb744',3,_binary '\0'),(5,'attributeDate11','56912dd5-1f3c-4caa-acb7-510bdb8ab37e',3,_binary '\0'),(6,'attributeDate12','f15e562f-28c5-4459-bd79-6d9b6e35b268',3,_binary '\0'),(7,'attributeDate13','43b02def-623d-4e80-931f-ca334c353ca3',3,_binary '\0'),(8,'attributeDate14','7a8f5b29-aa04-4d9c-a2a9-83f6b1580ed9',3,_binary '\0'),(9,'attributeDate15','9094bcbd-51b5-4552-a3e7-0a2aedeefc9c',3,_binary '\0'),(10,'attributeDate16','7a17880e-4a1b-44a5-ac35-64aeab897472',3,_binary '\0'),(11,'attributeDate17','b9d08e50-d1ba-46ea-8e7e-e2087d8f3e96',3,_binary '\0'),(12,'attributeDate18','f6998b20-8067-4d80-a910-0c5ec40489c0',3,_binary '\0'),(13,'attributeDate19','bae34566-9953-4ece-b3f0-90c82b14e883',3,_binary '\0'),(14,'attributeDate2','66ee22d2-9bb3-4d47-a060-d1cb04cc7997',3,_binary '\0'),(15,'attributeDate20','44f2f06e-635d-4b8e-8296-eeaf317175e4',3,_binary '\0'),(16,'attributeDate3','ee93ca39-56d2-422b-947e-f90598cce0c2',3,_binary '\0'),(17,'attributeDate4','2309f9bf-71df-41d6-ab7f-053507203fea',3,_binary '\0'),(18,'attributeDate5','bfeda7dd-a595-404a-ac64-393b72b3012a',3,_binary '\0'),(19,'attributeDate6','2cfa2c8a-06a8-437f-8645-6c650158bad7',3,_binary '\0'),(20,'attributeDate7','395aca82-54c1-45c2-832a-60c93d95d5b3',3,_binary '\0'),(21,'attributeDate8','8c797b5d-08df-4fa6-8146-f025ef8da294',3,_binary '\0'),(22,'attributeDate9','d7061093-2853-41dc-9a54-1464e005e513',3,_binary '\0'),(23,'attributeMultiLineString1','58954d5c-9079-4aba-96eb-0b307369c3da',4,_binary '\0'),(24,'attributeMultiLineString10','99cd9487-f726-4bfc-85f4-c40f503b35ff',4,_binary '\0'),(25,'attributeMultiLineString2','a0e4024f-5b4d-44c7-ba4c-0b24ab517d42',4,_binary '\0'),(26,'attributeMultiLineString3','af9840ba-6c04-4731-8473-e736152be00a',4,_binary '\0'),(27,'attributeMultiLineString4','9e78dd53-b31e-412a-ba5c-8e3432077eed',4,_binary '\0'),(28,'attributeMultiLineString5','b9ef8819-f8e1-400b-a529-c15d29dda8f4',4,_binary '\0'),(29,'attributeMultiLineString6','9b48663b-5c84-4ca6-a9ac-a59ea5c64119',4,_binary '\0'),(30,'attributeMultiLineString7','c7538716-fc11-4395-a9d9-de285b972647',4,_binary '\0'),(31,'attributeMultiLineString8','4ee680b3-6593-454f-a7a3-b68ce8bc4327',4,_binary '\0'),(32,'attributeMultiLineString9','b0c8cfe0-985f-45b3-a35f-794478cb524c',4,_binary '\0'),(33,'attributeMultilineTextField1','771c0718-6546-4ad1-b54a-f1bc0ddbfa3a',5,_binary '\0'),(34,'attributeMultilineTextField10','b437d91b-e705-43b4-b1ff-2d273ef68710',5,_binary '\0'),(35,'attributeMultilineTextField2','b38a390a-6be5-45cc-b16c-2c4ef59d688a',5,_binary '\0'),(36,'attributeMultilineTextField3','6a06ecb8-e982-460e-869c-4f5aa4beb29c',5,_binary '\0'),(37,'attributeMultilineTextField4','6777c1ca-d506-4293-980e-4fea40b48445',5,_binary '\0'),(38,'attributeMultilineTextField5','36ebf6b1-e54d-47bc-a35e-9703cee056a4',5,_binary '\0'),(39,'attributeMultilineTextField6','a8d8c9d2-9b9e-4ebc-bb98-4b4e26d47c56',5,_binary '\0'),(40,'attributeMultilineTextField7','9b6f2080-da17-4edd-870a-ded35734bc64',5,_binary '\0'),(41,'attributeMultilineTextField8','cb0d304f-2124-4dae-9ea9-bc1e825e31a0',5,_binary '\0'),(42,'attributeMultilineTextField9','0cbb6ef2-eaa3-4068-8177-40bd15d56a5b',5,_binary '\0'),(43,'attributeNumberField1','b7dfdd30-8446-4744-b260-994bc11dbf24',6,_binary '\0'),(44,'attributeNumberField10','ce7ebf4f-a57a-402c-8c6c-4224e801cc2b',6,_binary '\0'),(45,'attributeNumberField2','c6c0e946-cb53-4fc4-903e-b5c585ca7602',6,_binary '\0'),(46,'attributeNumberField3','7b399d82-45df-4902-ab7d-bada689d4dab',6,_binary '\0'),(47,'attributeNumberField4','22a4c798-45bf-40a6-a353-5372e8f95a57',6,_binary '\0'),(48,'attributeNumberField5','536e1fed-fbea-4cc8-b146-03ab5ac4c90b',6,_binary '\0'),(49,'attributeNumberField6','ec916977-a5a7-4f03-985e-858eaad9d19f',6,_binary '\0'),(50,'attributeNumberField7','ecd2794c-7022-4e39-9b9f-31eb1907bfac',6,_binary '\0'),(51,'attributeNumberField8','4c51c576-3469-4765-8161-e7ae20f5bfd4',6,_binary '\0'),(52,'attributeNumberField9','75ffd793-aa6a-4eca-a357-2141c9aa38c5',6,_binary '\0'),(53,'attributeNumericField1','970d3efb-7cdd-4e5c-897f-99ad34bceea0',7,_binary '\0'),(54,'attributeNumericField10','b0e389ee-0b12-416a-a378-c1fd226eadf4',7,_binary '\0'),(55,'attributeNumericField2','05b4ee1b-0d61-4532-a36e-09a1d1055043',7,_binary '\0'),(56,'attributeNumericField3','39dc65b3-2485-4424-be8a-7021b45396ed',7,_binary '\0'),(57,'attributeNumericField4','13c3c9f7-e172-4b4b-b09c-7b07de408012',7,_binary '\0'),(58,'attributeNumericField5','1669fbd6-992c-4163-a511-35fafaf1592c',7,_binary '\0'),(59,'attributeNumericField6','f5abe073-c8c4-41b7-999d-fb527e2dd39b',7,_binary '\0'),(60,'attributeNumericField7','13762cec-6c99-4daa-ab7b-026b37d161bf',7,_binary '\0'),(61,'attributeNumericField8','8db9babc-6738-4bf2-b4e6-ef3049d12ae3',7,_binary '\0'),(62,'attributeNumericField9','18e4e479-e8ca-4c50-9bfa-ca7a51e15114',7,_binary '\0'),(63,'attributePickList1','b95474ff-8fec-40ec-9e60-2bf4dda6f540',8,_binary '\0'),(64,'attributePickList10','5497643d-2825-41cd-af60-22c10a9930a9',8,_binary '\0'),(65,'attributePickList2','0e17699a-5186-4054-8a7b-209d75b65887',8,_binary '\0'),(66,'attributePickList3','5ac149e3-6548-4e5e-aec9-241f35bafc92',8,_binary '\0'),(67,'attributePickList4','875071c3-5aae-49b4-82e0-5686c08ad867',8,_binary '\0'),(68,'attributePickList5','cadb08b7-326d-44e2-a668-f713515009f5',8,_binary '\0'),(69,'attributePickList6','c163d837-3f49-4f39-be34-1d3864ba0df7',8,_binary '\0'),(70,'attributePickList7','d0183720-79d2-4361-b196-a885e0513045',8,_binary '\0'),(71,'attributePickList8','353283a6-9c77-407e-a4f6-283cd13704ef',8,_binary '\0'),(72,'attributePickList9','4630c731-81ae-4018-86fd-f13a083791bc',8,_binary '\0'),(73,'attributeSingleLine1','7ec7eaa4-7db3-4e53-94f4-dff20b78b671',9,_binary '\0'),(74,'attributeSingleLine10','6e3c2c5b-29c4-45f9-814c-bf3c43271407',9,_binary '\0'),(75,'attributeSingleLine2','a6e05d7f-fbee-4fd3-9b1c-20c074057591',9,_binary '\0'),(76,'attributeSingleLine3','341055df-4709-4452-8b4a-e6c516c8100b',9,_binary '\0'),(77,'attributeSingleLine4','9b4b05d1-fa5b-4998-91fe-7f86e28d97a6',9,_binary '\0'),(78,'attributeSingleLine5','97fb99ad-22fc-4b57-ad81-d080ff46c336',9,_binary '\0'),(79,'attributeSingleLine6','4b962c40-744f-40e6-9730-e3fbfb8c8559',9,_binary '\0'),(80,'attributeSingleLine7','202ac4ac-938e-4df1-90f2-5c45c52d1729',9,_binary '\0'),(81,'attributeSingleLine8','6a6f24ad-be7a-475a-9858-7da7f68e4c96',9,_binary '\0'),(82,'attributeSingleLine9','4ce64e28-d0a5-4cc5-bd40-5de3cbb2d377',9,_binary '\0'),(83,'attributeTextField1','bd726770-c455-4f9e-b0fd-a33f0900b937',9,_binary '\0'),(84,'attributeTextField10','ad364b6b-e95c-47bb-a953-2301ab68b5dc',9,_binary '\0'),(85,'attributeTextField2','c33ae2a4-bd7f-46b7-9dde-d79a31d89c42',9,_binary '\0'),(86,'attributeTextField3','3edba52e-5e62-42c8-afe7-a3d5eacb8d67',9,_binary '\0'),(87,'attributeTextField4','1b95e87b-9e1c-4ce5-86bf-ab664d88ece0',9,_binary '\0'),(88,'attributeTextField5','c18e767b-d12e-419e-ac08-bc8855cbf230',9,_binary '\0'),(89,'attributeTextField6','103f5a2a-31ce-444c-ad8c-def69e39ec9b',9,_binary '\0'),(90,'attributeTextField7','025d44c5-c8bc-4f13-9185-7df3c2aab3f1',9,_binary '\0'),(91,'attributeTextField8','c07134ec-6850-4dc8-ae9f-9a7d91a36628',9,_binary '\0'),(92,'attributeTextField9','bb84ef4a-40fa-4eca-a834-9bea0fd46d89',9,_binary '\0'),(93,'attributeUserPickList1','d7dfaf56-f182-463a-b6d4-a9ce0b3368b2',9,_binary '\0'),(94,'attributeUserPickList10','9a44fed6-a01d-4362-96c3-3e500cb47a31',9,_binary '\0'),(95,'attributeUserPickList2','25a9d11b-815f-45be-82e7-073c8c6abb47',9,_binary '\0'),(96,'attributeUserPickList3','7f3fe1c0-24c5-4aed-be20-3e42a0a3c1e7',9,_binary '\0'),(97,'attributeUserPickList4','f04c1ec3-6e6f-4a3f-8044-0ce8a4e1f64a',9,_binary '\0'),(98,'attributeUserPickList5','fa3ebe5d-b684-4619-8f99-6d59a99a1570',9,_binary '\0'),(99,'attributeUserPickList6','4fc25f5f-0044-4f1a-8a86-eb62849080bb',9,_binary '\0'),(100,'attributeUserPickList7','69f62643-828e-4a69-8f2d-f7165aec6187',9,_binary '\0'),(101,'attributeUserPickList8','df8cc290-1526-4085-9692-f5f7f5984b04',9,_binary '\0'),(102,'attributeUserPickList9','42cd7eb4-be6c-47b0-90de-d47684385c3e',9,_binary '\0'),(103,'createdAt','c9ab5593-305a-41b1-94ec-171a761ea6ca',9,_binary '\0'),(104,'description','552471a4-aa68-4808-8abf-fcc27a8b16cf',9,_binary '\0'),(105,'issueStatus','67209a03-06f6-4b02-ab1b-dd792cedfbc9',9,_binary '\0'),(106,'issueTypeId','371dfcff-8dcc-4800-932c-73f83c5dbd33',9,_binary '\0'),(107,'priority','4b5979f7-40b5-4642-8863-3711f66fe4e7',9,_binary '\0'),(108,'projectId','b87b41c4-fa51-44ce-a3da-cd308565fa07',9,_binary '\0'),(109,'reporter','3bfa92f5-78c7-40c1-83b9-920d3fc3a5bb',9,_binary '\0'),(110,'resolution','e77fb1fd-3046-410d-8577-9c17308821e4',9,_binary '\0'),(111,'summary','ff9f4dad-f211-41ae-ba9b-d2f3b77b941a',9,_binary '\0'),(112,'updatedAt','e9f2d1f2-6d45-413b-a6ab-9656a39c5af0',9,_binary '\0'),(113,'votes','1e536d39-2164-4ee6-84d8-5e286f1c39f9',9,_binary '\0'),(114,'watches','8ff5f179-a61e-4e66-9793-cc401d27f728',9,_binary '\0'),(115,'workflowId','6816b72b-20f9-4383-9882-57c9f541f63a',9,_binary '\0');
/*!40000 ALTER TABLE `attributecolumnnameinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributedisplayname`
--

DROP TABLE IF EXISTS `attributedisplayname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributedisplayname` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attributeDisplayName` varchar(255) DEFAULT NULL,
  `attributeKey` varchar(255) NOT NULL,
  `dataTypeInfoId` bigint NOT NULL,
  `issueTypeId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9tpliss3iigy39d3gins3473w` (`attributeKey`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributedisplayname`
--

LOCK TABLES `attributedisplayname` WRITE;
/*!40000 ALTER TABLE `attributedisplayname` DISABLE KEYS */;
INSERT INTO `attributedisplayname` VALUES (1,'TIME LINE','055bdaaa-62c9-4a4e-9eef-127a50edd18d',10,1);
/*!40000 ALTER TABLE `attributedisplayname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditiontable`
--

DROP TABLE IF EXISTS `conditiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditiontable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `conditionName` varchar(255) DEFAULT NULL,
  `conditionValue` varchar(255) DEFAULT NULL,
  `definition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditiontable`
--

LOCK TABLES `conditiontable` WRITE;
/*!40000 ALTER TABLE `conditiontable` DISABLE KEYS */;
INSERT INTO `conditiontable` VALUES (1,'priority','HIGH','if priority is HIGH'),(2,'issueStatus','DONE','if Issue Status == DONE'),(3,'resolution','resolved','if resolution == resolved'),(4,'assignee',NULL,'if assignee == null'),(5,'priority','LOW','if priority == low'),(6,'issueStatus','IN PROGRESS','if issueStatus == In Progress'),(7,'resolution','Un Resolved','if resolution == Un Resolved');
/*!40000 ALTER TABLE `conditiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatypeinfo`
--

DROP TABLE IF EXISTS `datatypeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datatypeinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dataTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kynxwup64bp9x0yi5c5f4qynj` (`dataTypeName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatypeinfo`
--

LOCK TABLES `datatypeinfo` WRITE;
/*!40000 ALTER TABLE `datatypeinfo` DISABLE KEYS */;
INSERT INTO `datatypeinfo` VALUES (1,'BIGINT'),(3,'DATETIME'),(6,'FLOAT'),(7,'INT'),(8,'JSON'),(4,'LONGTEXT'),(5,'MEDIUMTEXT'),(9,'TEXT'),(2,'VARCHAR');
/*!40000 ALTER TABLE `datatypeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_user_roles_table`
--

DROP TABLE IF EXISTS `issue_user_roles_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_user_roles_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issue_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK80nysud8trtkejnjaxhguw9xw` (`user_id`),
  KEY `FKnfdw65j5ou0iuxec6mohl6ko3` (`issue_id`),
  KEY `FKcry461d1jfr9isumgn4g6ke8u` (`role_id`),
  CONSTRAINT `FK80nysud8trtkejnjaxhguw9xw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKcry461d1jfr9isumgn4g6ke8u` FOREIGN KEY (`role_id`) REFERENCES `rolestable` (`id`),
  CONSTRAINT `FKnfdw65j5ou0iuxec6mohl6ko3` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_user_roles_table`
--

LOCK TABLES `issue_user_roles_table` WRITE;
/*!40000 ALTER TABLE `issue_user_roles_table` DISABLE KEYS */;
INSERT INTO `issue_user_roles_table` VALUES (1,1,9,1),(2,1,6,4),(3,2,9,1),(4,2,6,2),(5,3,9,1),(6,3,6,2),(7,4,9,2),(8,4,6,2),(9,5,9,2),(10,5,6,5),(11,6,9,4),(12,6,6,3),(13,7,9,5),(14,7,6,1),(15,8,9,3),(16,8,6,1),(17,64,9,1),(18,2,2,1);
/*!40000 ALTER TABLE `issue_user_roles_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignee` varchar(255) DEFAULT NULL,
  `attributeDate1` datetime(6) DEFAULT NULL,
  `attributeDate10` datetime(6) DEFAULT NULL,
  `attributeDate11` datetime(6) DEFAULT NULL,
  `attributeDate12` datetime(6) DEFAULT NULL,
  `attributeDate13` datetime(6) DEFAULT NULL,
  `attributeDate14` datetime(6) DEFAULT NULL,
  `attributeDate15` datetime(6) DEFAULT NULL,
  `attributeDate16` datetime(6) DEFAULT NULL,
  `attributeDate17` datetime(6) DEFAULT NULL,
  `attributeDate18` datetime(6) DEFAULT NULL,
  `attributeDate19` datetime(6) DEFAULT NULL,
  `attributeDate2` datetime(6) DEFAULT NULL,
  `attributeDate20` datetime(6) DEFAULT NULL,
  `attributeDate3` datetime(6) DEFAULT NULL,
  `attributeDate4` datetime(6) DEFAULT NULL,
  `attributeDate5` datetime(6) DEFAULT NULL,
  `attributeDate6` datetime(6) DEFAULT NULL,
  `attributeDate7` datetime(6) DEFAULT NULL,
  `attributeDate8` datetime(6) DEFAULT NULL,
  `attributeDate9` datetime(6) DEFAULT NULL,
  `attributeMultiLineString1` longtext,
  `attributeMultiLineString10` longtext,
  `attributeMultiLineString2` longtext,
  `attributeMultiLineString3` longtext,
  `attributeMultiLineString4` longtext,
  `attributeMultiLineString5` longtext,
  `attributeMultiLineString6` longtext,
  `attributeMultiLineString7` longtext,
  `attributeMultiLineString8` longtext,
  `attributeMultiLineString9` longtext,
  `attributeMultilineTextField1` mediumtext,
  `attributeMultilineTextField10` mediumtext,
  `attributeMultilineTextField2` mediumtext,
  `attributeMultilineTextField3` mediumtext,
  `attributeMultilineTextField4` mediumtext,
  `attributeMultilineTextField5` mediumtext,
  `attributeMultilineTextField6` mediumtext,
  `attributeMultilineTextField7` mediumtext,
  `attributeMultilineTextField8` mediumtext,
  `attributeMultilineTextField9` mediumtext,
  `attributeNumberField1` float DEFAULT NULL,
  `attributeNumberField10` float DEFAULT NULL,
  `attributeNumberField2` float DEFAULT NULL,
  `attributeNumberField3` float DEFAULT NULL,
  `attributeNumberField4` float DEFAULT NULL,
  `attributeNumberField5` float DEFAULT NULL,
  `attributeNumberField6` float DEFAULT NULL,
  `attributeNumberField7` float DEFAULT NULL,
  `attributeNumberField8` float DEFAULT NULL,
  `attributeNumberField9` float DEFAULT NULL,
  `attributeNumericField1` int DEFAULT NULL,
  `attributeNumericField10` int DEFAULT NULL,
  `attributeNumericField2` int DEFAULT NULL,
  `attributeNumericField3` int DEFAULT NULL,
  `attributeNumericField4` int DEFAULT NULL,
  `attributeNumericField5` int DEFAULT NULL,
  `attributeNumericField6` int DEFAULT NULL,
  `attributeNumericField7` int DEFAULT NULL,
  `attributeNumericField8` int DEFAULT NULL,
  `attributeNumericField9` int DEFAULT NULL,
  `attributePickList1` json DEFAULT NULL,
  `attributePickList10` json DEFAULT NULL,
  `attributePickList2` json DEFAULT NULL,
  `attributePickList3` json DEFAULT NULL,
  `attributePickList4` json DEFAULT NULL,
  `attributePickList5` json DEFAULT NULL,
  `attributePickList6` json DEFAULT NULL,
  `attributePickList7` json DEFAULT NULL,
  `attributePickList8` json DEFAULT NULL,
  `attributePickList9` json DEFAULT NULL,
  `attributeSingleLine1` text,
  `attributeSingleLine10` text,
  `attributeSingleLine2` text,
  `attributeSingleLine3` text,
  `attributeSingleLine4` text,
  `attributeSingleLine5` text,
  `attributeSingleLine6` text,
  `attributeSingleLine7` text,
  `attributeSingleLine8` text,
  `attributeSingleLine9` text,
  `attributeTextField1` varchar(255) DEFAULT NULL,
  `attributeTextField10` varchar(255) DEFAULT NULL,
  `attributeTextField2` varchar(255) DEFAULT NULL,
  `attributeTextField3` varchar(255) DEFAULT NULL,
  `attributeTextField4` varchar(255) DEFAULT NULL,
  `attributeTextField5` varchar(255) DEFAULT NULL,
  `attributeTextField6` varchar(255) DEFAULT NULL,
  `attributeTextField7` varchar(255) DEFAULT NULL,
  `attributeTextField8` varchar(255) DEFAULT NULL,
  `attributeTextField9` varchar(255) DEFAULT NULL,
  `attributeUserPickList1` json DEFAULT NULL,
  `attributeUserPickList10` json DEFAULT NULL,
  `attributeUserPickList2` json DEFAULT NULL,
  `attributeUserPickList3` json DEFAULT NULL,
  `attributeUserPickList4` json DEFAULT NULL,
  `attributeUserPickList5` json DEFAULT NULL,
  `attributeUserPickList6` json DEFAULT NULL,
  `attributeUserPickList7` json DEFAULT NULL,
  `attributeUserPickList8` json DEFAULT NULL,
  `attributeUserPickList9` json DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `description` varchar(255) NOT NULL,
  `issueStatus` varchar(255) DEFAULT NULL,
  `issueTypeId` bigint NOT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `projectId` bigint NOT NULL,
  `reporter` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `summary` varchar(255) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `votes` bigint DEFAULT NULL,
  `watches` bigint DEFAULT NULL,
  `workflowId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgcaav2w259iyppwx23ofjcglg` (`issueTypeId`),
  KEY `FK1frl9pi4ao9d5paae71amxx1g` (`projectId`),
  KEY `FKouejnhttqm6dw2e51jdkqvda3` (`workflowId`),
  CONSTRAINT `FK1frl9pi4ao9d5paae71amxx1g` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  CONSTRAINT `FKgcaav2w259iyppwx23ofjcglg` FOREIGN KEY (`issueTypeId`) REFERENCES `issuetype` (`id`),
  CONSTRAINT `FKouejnhttqm6dw2e51jdkqvda3` FOREIGN KEY (`workflowId`) REFERENCES `workflowtable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'Miteanjay Kumar','2016-10-10 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-06 18:12:47.915000','Issue In Bug Tracker description','Done',1,'MEDIUM',2,'Akshay Kalia','Un Resolved','Bug Tracker Summary','2023-04-24 11:46:34.121000',3,4,1),(2,'Guna Varma','2017-05-11 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-05 18:14:47.915000','Issue In Issue Tracker description','TODO',2,'HIGH',1,'Shashi Kumar Yadav','UnResolved','Issue Tracker Summary','2021-04-05 18:14:47.915000',4,6,2),(3,'Meda Guna Varma','2018-04-05 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-10 18:14:47.915000','Bug In Issue Tracker description','In Review',1,'HIGH',5,'Shashi Kumar','DONE','Bug In Issue Tracker','2022-09-10 18:14:47.915000',5,5,3),(4,'Arjun Palvai','2019-04-11 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-05 18:14:47.915000','Bug In Project description','DONE',3,'HIGH',4,'Shashi Kumar','Resolved','Bug In Project','2023-04-19 17:09:45.138000',1,10,1),(5,'Shashi Kumar Yadav','2020-11-01 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-05 18:14:47.915000','FeedBack for Collector description','In Review',4,'MEDIUM',2,'Somiya Parmar','DONE','FeedBack for Collector','2023-04-05 18:16:15.915000',2,2,2),(6,'Akshay kalia','2021-05-10 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-12 18:14:47.915000','Improvement description','Done',2,'HIGH',1,'Miteanjay Kumar','Resolved','Improvement summary','2020-12-12 18:14:47.915000',1,1,3),(7,'Somiya Parmar','2023-09-27 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-06 18:14:47.915000','Error in TDS','In Progress',1,'LOWEST',6,'Guna Varma','DONE','TDS Error in Salary Module','2023-04-06 18:14:47.915000',2,2,2),(8,'Miteanjay Kumar','2023-11-04 00:00:00.000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-10 18:14:47.915000','Sample Testing of Epic','TODO',3,'LOWEST',6,'GunaVarma','Resolved','Epic Sample1','2022-10-10 18:14:47.915000',2,2,1),(9,'meda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:02:34.299000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:02:34.299000',NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:07:18.644000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:07:18.644000',NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:09:47.777000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:09:47.777000',NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:11:00.641000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:11:00.641000',NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:11:54.369000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:11:54.371000',NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:25:07.246000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:25:07.246000',NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:36:32.095000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:36:32.095000',NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:44:46.722000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:44:46.722000',NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:46:10.306000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:46:10.306000',NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:47:35.827000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:47:35.827000',NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:53:35.040000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:53:35.040000',NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 12:55:58.840000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 12:55:58.840000',NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:03:48.235000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:03:48.235000',NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:05:01.913000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:05:01.913000',NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:06:04.329000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:06:04.329000',NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:10:48.269000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:10:48.269000',NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:13:58.241000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:13:58.241000',NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:15:40.037000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:15:40.037000',NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:25:20.328000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:25:20.328000',NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:28:25.317000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:28:25.317000',NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:29:46.590000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:29:46.590000',NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 13:57:38.981000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 13:57:38.981000',NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 14:02:45.480000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 14:02:45.480000',NULL,NULL,NULL),(32,'Miteanjay Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 14:17:11.177000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 14:17:11.177000',NULL,NULL,NULL),(33,'Miteanjay Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 14:24:12.498000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 14:24:12.498000',NULL,NULL,NULL),(34,'Miteanjay Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 14:30:34.663000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 14:30:34.663000',NULL,NULL,NULL),(35,'Miteanjay Kumar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 14:32:58.447000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 14:32:58.447000',NULL,NULL,NULL),(36,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:16:21.767000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:16:21.767000',NULL,NULL,NULL),(37,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:17:54.839000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:17:54.839000',NULL,NULL,NULL),(38,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:21:49.207000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:21:49.207000',NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:25:50.749000','Description for Issue 1',NULL,2,'LOW',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:25:50.749000',NULL,NULL,NULL),(40,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:28:31.250000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:28:31.251000',NULL,NULL,NULL),(41,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:29:39.822000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:29:39.822000',NULL,NULL,NULL),(42,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 15:30:59.710000','Description for Issue 1',NULL,2,'HIGH',2,NULL,NULL,'Summary key Issues1','2023-04-19 15:30:59.710000',NULL,NULL,NULL),(43,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 16:18:24.645000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 16:18:24.645000',NULL,NULL,NULL),(44,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 16:19:31.572000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-19 16:19:31.572000',NULL,NULL,NULL),(45,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 16:20:40.678000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-19 16:20:40.678000',NULL,NULL,NULL),(46,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 16:23:37.837000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-19 16:23:37.838000',NULL,NULL,NULL),(47,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 16:24:24.441000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-19 16:24:24.441000',NULL,NULL,NULL),(48,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 17:43:11.816000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 17:43:11.816000',NULL,NULL,NULL),(49,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 17:46:19.704000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 17:46:19.704000',NULL,NULL,NULL),(50,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 17:48:26.107000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 17:48:26.107000',NULL,NULL,NULL),(51,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 18:12:24.369000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 18:12:24.369000',NULL,NULL,NULL),(52,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 18:14:29.274000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 18:14:29.275000',NULL,NULL,NULL),(53,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 18:19:22.655000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 18:19:22.656000',NULL,NULL,NULL),(54,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 18:31:40.845000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 18:31:40.845000',NULL,NULL,NULL),(55,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-19 18:37:14.832000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-19 18:37:14.832000',NULL,NULL,NULL),(56,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 10:05:11.284000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 10:05:11.284000',NULL,NULL,NULL),(57,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:09:57.828000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:09:57.828000',NULL,NULL,NULL),(58,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:11:33.269000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:11:33.269000',NULL,NULL,NULL),(59,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:19:21.890000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:19:21.890000',NULL,NULL,NULL),(60,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:19:23.533000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:19:23.533000',NULL,NULL,NULL),(61,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:23:25.936000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:23:25.936000',NULL,NULL,NULL),(62,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:24:01.245000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:24:01.245000',NULL,NULL,NULL),(63,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:24:55.661000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:24:55.661000',NULL,NULL,NULL),(64,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:38:27.830000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:38:27.830000',NULL,NULL,NULL),(65,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:51:36.724000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:51:36.724000',NULL,NULL,NULL),(66,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:51:38.368000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:51:38.368000',NULL,NULL,NULL),(67,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:53:40.866000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:53:40.866000',NULL,NULL,NULL),(68,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:53:57.955000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:53:57.955000',NULL,NULL,NULL),(69,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:57:04.215000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:57:04.215000',NULL,NULL,NULL),(70,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 12:58:33.588000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 12:58:33.588000',NULL,NULL,NULL),(71,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 13:01:57.613000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 13:01:57.613000',NULL,NULL,NULL),(72,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 13:03:43.856000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 13:03:43.857000',NULL,NULL,NULL),(73,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:16:05.731000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 14:16:05.731000',NULL,NULL,NULL),(74,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:16:23.214000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 14:16:23.214000',NULL,NULL,NULL),(75,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:28:44.274000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 14:28:44.274000',NULL,NULL,NULL),(76,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:29:01.361000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 14:29:01.361000',NULL,NULL,NULL),(77,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:33:11.605000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 14:33:11.605000',NULL,NULL,NULL),(78,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:40:21.242000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 14:40:21.242000',NULL,NULL,NULL),(79,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 14:43:09.058000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 14:43:09.058000',NULL,NULL,NULL),(80,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:13:04.439000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:13:04.439000',NULL,NULL,NULL),(81,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:17:20.125000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:17:20.125000',NULL,NULL,NULL),(82,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:17:29.137000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:17:29.137000',NULL,NULL,NULL),(83,'Ayush',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:27:46.915000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:27:46.916000',NULL,NULL,NULL),(84,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:28:57.724000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:28:57.724000',NULL,NULL,NULL),(85,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:40:02.027000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:40:02.028000',NULL,NULL,NULL),(86,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:57:22.231000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:57:22.231000',NULL,NULL,NULL),(87,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 15:58:31.800000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 15:58:31.800000',NULL,NULL,NULL),(88,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:03:13.464000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:03:13.464000',NULL,NULL,NULL),(89,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:14:00.346000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:14:00.346000',NULL,NULL,NULL),(90,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:14:41.786000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:14:41.786000',NULL,NULL,NULL),(91,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:16:08.488000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:16:08.488000',NULL,NULL,NULL),(92,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:20:35.961000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:20:35.961000',NULL,NULL,NULL),(93,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:21:23.206000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:21:23.206000',NULL,NULL,NULL),(94,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:29:11.971000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:29:11.971000',NULL,NULL,NULL),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:32:56.491000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:32:56.491000',NULL,NULL,NULL),(96,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:34:11.469000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:34:11.469000',NULL,NULL,NULL),(97,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:34:44.727000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:34:44.727000',NULL,NULL,NULL),(98,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:35:16.719000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:35:16.720000',NULL,NULL,NULL),(99,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:38:15.876000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:38:15.876000',NULL,NULL,NULL),(100,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:38:42.440000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:38:42.440000',NULL,NULL,NULL),(101,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:38:44.088000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:38:44.088000',NULL,NULL,NULL),(102,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:42:45.471000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:42:45.471000',NULL,NULL,NULL),(103,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:49:54.058000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:49:54.058000',NULL,NULL,NULL),(104,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:55:06.619000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:55:06.619000',NULL,NULL,NULL),(105,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 16:58:07.650000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 16:58:07.650000',NULL,NULL,NULL),(106,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:02:40.511000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:02:40.511000',NULL,NULL,NULL),(107,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:07:00.352000','Description for Issue 1','DONE',2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-20 17:07:54.583000',NULL,NULL,NULL),(108,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:08:59.058000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:08:59.058000',NULL,NULL,NULL),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:18:04.557000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:18:04.557000',NULL,NULL,NULL),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:19:27.679000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:19:27.679000',NULL,NULL,NULL),(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:21:11.122000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:21:11.122000',NULL,NULL,NULL),(112,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:22:48.523000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:22:48.608000',NULL,NULL,NULL),(113,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:24:30.016000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:24:30.016000',NULL,NULL,NULL),(114,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:25:16.991000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:25:17.076000',NULL,NULL,NULL),(115,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:25:22.159000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:25:22.193000',NULL,NULL,NULL),(116,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:31:53.496000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:31:53.567000',NULL,NULL,NULL),(117,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:31:59.510000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:31:59.510000',NULL,NULL,NULL),(118,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-20 17:32:02.688000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-20 17:32:02.727000',NULL,NULL,NULL),(119,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:13:14.758000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:13:14.758000',NULL,NULL,NULL),(120,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:13:29.288000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:13:29.364000',NULL,NULL,NULL),(121,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:14:57.467000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:14:57.467000',NULL,NULL,NULL),(122,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:19:37.575000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:19:37.575000',NULL,NULL,NULL),(123,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:24:00.936000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:24:00.937000',NULL,NULL,NULL),(124,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:31:45.971000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:31:45.971000',NULL,NULL,NULL),(125,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:37:09.896000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:37:09.896000',NULL,NULL,NULL),(126,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:43:21.463000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:43:21.463000',NULL,NULL,NULL),(127,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:51:28.802000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:51:28.802000',NULL,NULL,NULL),(128,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:55:48.558000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:55:48.558000',NULL,NULL,NULL),(129,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 14:58:31.289000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 14:58:31.289000',NULL,NULL,NULL),(130,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:12:46.812000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:12:46.812000',NULL,NULL,NULL),(131,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:20:11.123000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:20:11.123000',NULL,NULL,NULL),(132,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:35:20.304000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:35:20.304000',NULL,NULL,NULL),(133,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:36:55.268000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:36:55.268000',NULL,NULL,NULL),(134,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:41:09.209000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:41:09.209000',NULL,NULL,NULL),(135,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:46:39.269000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:46:39.269000',NULL,NULL,NULL),(136,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:52:41.120000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:52:41.305000',NULL,NULL,NULL),(137,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:52:47.109000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:52:47.109000',NULL,NULL,NULL),(138,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 15:53:31.940000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 15:53:31.978000',NULL,NULL,NULL),(139,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 16:00:53.225000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 16:00:53.300000',NULL,NULL,NULL),(140,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 16:00:58.758000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 16:00:58.758000',NULL,NULL,NULL),(141,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 16:17:22.120000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-21 16:17:22.120000',NULL,NULL,NULL),(142,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 16:17:47.500000','Description for Issue 1',NULL,2,'LOW',2,NULL,'Resolved','Summary key Issues1','2023-04-21 16:17:47.500000',NULL,NULL,NULL),(143,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-21 17:30:36.336000','Description for Issue 1',NULL,2,'LOW',2,NULL,'Resolved','Summary key Issues1','2023-04-21 17:30:36.336000',NULL,NULL,NULL),(144,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:15:57.140000','Description for Issue 1',NULL,2,'MEDIUM',2,NULL,'DONE','Summary key Issues1','2023-04-24 09:15:57.140000',NULL,NULL,NULL),(145,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:17:43.999000','Description for Issue 1',NULL,2,'MEDIUM',2,NULL,'DONE','Summary key Issues1','2023-04-24 09:17:43.999000',NULL,NULL,NULL),(146,'Arjun Palvai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:23:25.009000','Description for Issue 1',NULL,2,'LOW',2,NULL,'UnResolved','Summary key Issues1','2023-04-24 09:23:25.009000',NULL,NULL,NULL),(147,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:23:43.699000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'Resolved','Summary key Issues1','2023-04-24 09:23:43.761000',NULL,NULL,NULL),(148,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:39:27.495000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-24 09:39:27.732000',NULL,NULL,NULL),(149,'Meda Guna Varma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-24 09:39:51.973000','Description for Issue 1',NULL,2,'HIGH',2,NULL,'UnResolved','Summary key Issues1','2023-04-24 09:39:52.049000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetrigger`
--

DROP TABLE IF EXISTS `issuetrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuetrigger` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetrigger`
--

LOCK TABLES `issuetrigger` WRITE;
/*!40000 ALTER TABLE `issuetrigger` DISABLE KEYS */;
INSERT INTO `issuetrigger` VALUES (1,'issue Trigger for create Issues','Issue Create'),(2,'Issue Trigger for Update Issue','Issue Update '),(3,'Issue Trigger for Delete Issue','Issue Delete');
/*!40000 ALTER TABLE `issuetrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetype`
--

DROP TABLE IF EXISTS `issuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuetype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `issueTypeName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetype`
--

LOCK TABLES `issuetype` WRITE;
/*!40000 ALTER TABLE `issuetype` DISABLE KEYS */;
INSERT INTO `issuetype` VALUES (1,' Bug to resolved','Bug'),(2,' task to be implemented','Task'),(3,'Epic scenario','Epic'),(4,'SubTask to be implemented','SubTask');
/*!40000 ALTER TABLE `issuetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetypeintemplate`
--

DROP TABLE IF EXISTS `issuetypeintemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuetypeintemplate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issuetypeId` bigint NOT NULL,
  `templateId` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetypeintemplate`
--

LOCK TABLES `issuetypeintemplate` WRITE;
/*!40000 ALTER TABLE `issuetypeintemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuetypeintemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postfunction`
--

DROP TABLE IF EXISTS `postfunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postfunction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `postFunctionKey` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postfunction`
--

LOCK TABLES `postfunction` WRITE;
/*!40000 ALTER TABLE `postfunction` DISABLE KEYS */;
INSERT INTO `postfunction` VALUES (1,'Select a user to assign the issues to','Assignee issue','assignIssue'),(2,'sends an EMail to give address','send email','sendEmail'),(3,'Transition an issue to a specific status','Transition issue','transitionIssue'),(4,'Update Certain issue fields','Edit Issue','editIssue');
/*!40000 ALTER TABLE `postfunction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `iconColor` varchar(255) DEFAULT NULL,
  `priorityName` varchar(255) NOT NULL,
  `projectId` bigint DEFAULT NULL,
  `statusColor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhdt1aopw8oxvhabu1200va8g6` (`projectId`),
  CONSTRAINT `FKhdt1aopw8oxvhabu1200va8g6` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'High priority','RED','HIGH',1,'RED'),(2,'Medium priority','Orange','MEDIUM',2,'Orange'),(3,'Low priority','Yellow','LOW',3,'Yellow'),(4,'Lowest priority','Green','LOWEST',3,'Green'),(5,'High priority','RED','HIGH',4,'RED'),(6,'High priority','RED','HIGH',5,'RED'),(7,'Lowest priority','Green','LOWEST',6,'Green'),(8,'Lowest priority','Green','LOWEST',7,'Green');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assigneeType` bigint DEFAULT NULL,
  `projectDescription` varchar(255) DEFAULT NULL,
  `projectKey` varchar(255) NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `projectUrl` varchar(255) DEFAULT NULL,
  `projectLead` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,4,'Jira Description','JRA','JIRA','jiraURL',NULL),(2,2,'BMW Description','BMW','BMW','bmwurl',NULL),(3,2,'Voltas Description','VTS','Voltas','voltasUrl',NULL),(4,2,'Volmart Description','VMT','Volmart','volmartUrl',NULL),(5,2,'DRDO Description','DRDO','DRDO','drdoUrl',NULL),(6,2,'FUSO Description','FSO','FUSO','fusoUrl',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user_roles_table`
--

DROP TABLE IF EXISTS `project_user_roles_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user_roles_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `projectId` bigint NOT NULL,
  `roleId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8m08iww3u3qh7ucunvl5kf6ua` (`projectId`),
  KEY `FKahc97giseawofqprwfydihd62` (`roleId`),
  KEY `FK45jdh7gmy1ufbdhf2nt89vyhq` (`userId`),
  CONSTRAINT `FK45jdh7gmy1ufbdhf2nt89vyhq` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK8m08iww3u3qh7ucunvl5kf6ua` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  CONSTRAINT `FKahc97giseawofqprwfydihd62` FOREIGN KEY (`roleId`) REFERENCES `rolestable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user_roles_table`
--

LOCK TABLES `project_user_roles_table` WRITE;
/*!40000 ALTER TABLE `project_user_roles_table` DISABLE KEYS */;
INSERT INTO `project_user_roles_table` VALUES (1,1,3,4),(2,2,3,4),(3,3,3,4),(4,4,3,3),(5,5,3,2),(6,6,3,1),(7,1,1,1);
/*!40000 ALTER TABLE `project_user_roles_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resolution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `iconUrl` varchar(255) DEFAULT NULL,
  `projectId` bigint DEFAULT NULL,
  `resolutionName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6bnhgcty1ur9nhyhllkrj513a` (`projectId`),
  CONSTRAINT `FK6bnhgcty1ur9nhyhllkrj513a` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES (1,'Resolved','kahtedvkwqeytc',1,'RESOLVED'),(2,'UnResolved','kahtedvkwqeytc',2,'UN_RESOLVED'),(3,'Done','kahtedamdchvkwqeytc',3,'DONE');
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolestable`
--

DROP TABLE IF EXISTS `rolestable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolestable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolestable`
--

LOCK TABLES `rolestable` WRITE;
/*!40000 ALTER TABLE `rolestable` DISABLE KEYS */;
INSERT INTO `rolestable` VALUES (1,'Administrator'),(2,'Project Manager'),(3,'Project Lead'),(4,'Developer'),(5,'QA Engineer'),(6,'Reporter'),(7,'Watcher'),(8,'Commenter'),(9,'Assignee');
/*!40000 ALTER TABLE `rolestable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruletable`
--

DROP TABLE IF EXISTS `ruletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruletable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `actionLevel` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `conditionTableId` bigint DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `issueTriggerId` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ownerId` bigint DEFAULT NULL,
  `postFunctionId` bigint DEFAULT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `configurationData` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1eqwut1xvv7f1vc0yiwxitonf` (`conditionTableId`),
  KEY `FKot7k5w5ht39j2dm6n18i7qxtv` (`issueTriggerId`),
  KEY `FKeull5htmo6q1if3vxwfdnnv0o` (`postFunctionId`),
  CONSTRAINT `FK1eqwut1xvv7f1vc0yiwxitonf` FOREIGN KEY (`conditionTableId`) REFERENCES `conditiontable` (`id`),
  CONSTRAINT `FKeull5htmo6q1if3vxwfdnnv0o` FOREIGN KEY (`postFunctionId`) REFERENCES `postfunction` (`id`),
  CONSTRAINT `FKot7k5w5ht39j2dm6n18i7qxtv` FOREIGN KEY (`issueTriggerId`) REFERENCES `issuetrigger` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruletable`
--

LOCK TABLES `ruletable` WRITE;
/*!40000 ALTER TABLE `ruletable` DISABLE KEYS */;
INSERT INTO `ruletable` VALUES (1,'VLTS','issuecreated',1,'2023-04-19 11:32:47.383000','Auto Assignee Name',1,'Add Default Issue',1,1,'2023-04-19 11:32:47.383000','{\"assignee\": \"Meda Guna Varma\"}'),(2,'VLTS','issuecreated',3,'2023-04-19 16:15:30.713000',' Send mail if Resolution in Issue is resolved!',1,'Send Mail to Lead',1,2,'2023-04-19 16:15:30.713000',NULL),(3,'VLTS','issueupdate',2,'2023-04-19 16:31:12.920000','Edit an Issue, if Issue Status is DONE',1,'Edit Issue ',1,2,'2023-04-19 16:31:12.920000',NULL),(4,'VLTS','issuecreated',5,'2023-04-21 12:20:19.510000','Send mail to RoleId of users, when priority is Low',1,'Send Mail to Roles',1,2,'2023-04-21 12:20:19.510000','{\"to\": [\"9\", \"6\"], \"content\": \"Send Mail, if priority is low\", \"subject\": \"SEND MAIL TO ROLES\"}'),(5,'VLTS','issueupdate',6,'2023-04-21 12:20:19.510000','Send Email when Issue is updated where issueStatus is In Progress',1,'Send Mail when Issue Update Operation',1,2,'2023-04-21 12:20:19.510000','{\"to\": [\"9\"], \"content\": \"Send Mail, if IssueStatus is InProgress\", \"subject\": \"SEND MAIL TO Assignees\"}'),(6,'DRDO','issueupdate',7,'2023-04-21 12:20:19.510000','Auto Assignee Name when Resolution is UnResolved',1,'Auto Assignee when Resolution is UnResolved',1,1,'2023-04-21 12:20:19.510000','{\"assignee\": \"Miteanjay Kumar\"}');
/*!40000 ALTER TABLE `ruletable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `workflowId` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transitiontable`
--

DROP TABLE IF EXISTS `transitiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transitiontable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `fromStepId` bigint NOT NULL,
  `toStepId` bigint NOT NULL,
  `transitionName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transitiontable`
--

LOCK TABLES `transitiontable` WRITE;
/*!40000 ALTER TABLE `transitiontable` DISABLE KEYS */;
INSERT INTO `transitiontable` VALUES (1,'From Step 1 to Step2',1,2,'IN PROGRESS'),(2,'From Step 2to Step6',2,6,'DONE'),(3,'From Step 4 to Step1',4,1,'TASK'),(4,'From Step 1 to Step3',1,3,'In Review'),(5,'From Step 3 to Step5',3,5,'FeedBack'),(6,'From Step1 to 4',1,4,'Testing');
/*!40000 ALTER TABLE `transitiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `userName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,_binary '','2023-04-05 18:32:03.378000','meda.varma@cubastion.com','Guna varma','gunavarma@123','2023-04-05 18:32:03.378000','Guna'),(2,_binary '','2023-04-05 18:32:33.513000','shashikumar@gmail.com','Shashi Kumar Yadav','shashi@123','2023-04-05 18:32:33.513000','Shashi'),(3,_binary '','2023-04-05 18:33:03.393000','miteanjay.kumar@cubastion.com','Miteanjay Kumar','mite@123','2023-04-05 18:33:03.393000','Miteanjay'),(4,_binary '','2023-04-05 18:33:33.750000','somiya.parmar@cubastion.com','Akshay kalia','Akshay@123','2023-04-05 18:33:33.750000','Akshay'),(5,_binary '','2023-04-05 18:34:17.305000','somiya.parmar2@cubastion.com','Somiya Parmar','somiya@123','2023-04-05 18:34:17.305000','Somiya'),(6,_binary '\0','2023-04-05 18:34:46.940000','r.reddy@gmail.com','Rohith Reddy','rohith@123','2023-04-05 18:36:28.888000','Rohith'),(7,_binary '\0','2023-04-05 18:35:22.824000','aniketh@gmail.com','Aniketh Chandra','Ani@123','2023-04-05 18:35:22.824000','Aniketh'),(8,_binary '\0','2023-04-05 18:35:54.301000','himanshu.sehgal@gmail.com','Himanshu Sehgal','himanshu@123','2023-04-05 18:35:54.301000','Himanshu'),(9,_binary '','2023-04-05 19:13:59.842000','najib.123@gmail.com','Najibulla Shaik','Najib@123','2023-04-05 19:13:59.842000','Najibulla'),(10,_binary '','2023-04-05 19:14:48.654000','Anand@gmail.com','Anand Kumar','Anand@123','2023-04-05 19:14:48.654000','Anand'),(11,_binary '','2023-04-06 16:07:03.234000','arjunvarma@gmail.com','Arjun varma','Arjunvarma@123','2023-04-06 16:07:03.234000','Arjun');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowstatus`
--

DROP TABLE IF EXISTS `workflowstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflowstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowstatus`
--

LOCK TABLES `workflowstatus` WRITE;
/*!40000 ALTER TABLE `workflowstatus` DISABLE KEYS */;
INSERT INTO `workflowstatus` VALUES (1,' not done','TODO'),(2,' assigned work is started','IN Progress'),(3,'work is under review','IN REVIEW'),(4,'work is done','DONE'),(5,'Reopen the completed work','Reopen'),(6,' issue resolved ','Resolved'),(7,' assigned Work completed','Closed'),(8,'code is building','Building'),(9,'build is broken','Build Broken'),(10,'changes id declined','Declined'),(11,'Support is required','Waiting for Support'),(12,'Changes done by you not saved','Changes Not Saved'),(13,'Work is still pending','Pending'),(14,'Work is completed','Completed'),(15,'Planning for solving the problem','Planning'),(16,'Cancel the changes','Canceled'),(17,'Implementing the task assign','Implementing'),(18,'Waiting for the approval','Awaiting Approval'),(19,'Changes saved in the draft','Draft');
/*!40000 ALTER TABLE `workflowstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowsteptable`
--

DROP TABLE IF EXISTS `workflowsteptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflowsteptable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `linkedStatusId` bigint DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `stepName` varchar(255) NOT NULL,
  `workflowTableId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4e51xr3l9cbahrdxmlpksprw9` (`linkedStatusId`),
  KEY `FK1xcda0w5yk5aem52rmo2dgqro` (`workflowTableId`),
  CONSTRAINT `FK1xcda0w5yk5aem52rmo2dgqro` FOREIGN KEY (`workflowTableId`) REFERENCES `workflowtable` (`id`),
  CONSTRAINT `FK4e51xr3l9cbahrdxmlpksprw9` FOREIGN KEY (`linkedStatusId`) REFERENCES `workflowstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowsteptable`
--

LOCK TABLES `workflowsteptable` WRITE;
/*!40000 ALTER TABLE `workflowsteptable` DISABLE KEYS */;
INSERT INTO `workflowsteptable` VALUES (1,1,0,'start',1),(2,1,0,'Work in progress',1),(3,2,0,'Work in Review',2),(4,3,0,'Work Completed',2),(5,3,0,'Complete',3),(6,1,0,'Task In Progress',1),(7,1,0,'Task In Pending',1),(8,1,0,'Task In Pending',1),(9,1,0,'Task In Pending',1),(10,1,0,'Task In Pending',1),(11,1,0,'Task In Pending',1),(12,1,0,'Task In Review',1);
/*!40000 ALTER TABLE `workflowsteptable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowtable`
--

DROP TABLE IF EXISTS `workflowtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflowtable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowtable`
--

LOCK TABLES `workflowtable` WRITE;
/*!40000 ALTER TABLE `workflowtable` DISABLE KEYS */;
INSERT INTO `workflowtable` VALUES (1,'2023-04-13 16:52:33.693000','description-1','work flow-1','2023-04-13 16:52:33.693000'),(2,'2023-04-14 09:23:37.711000','Work flow description2','work flow-2','2023-04-14 09:23:37.711000'),(3,'2023-04-14 09:23:42.395000','Work flow description2','work flow-3','2023-04-14 09:23:42.395000'),(4,'2023-04-14 09:24:28.689000','Work flow description2','work flow-3','2023-04-14 09:24:28.689000');
/*!40000 ALTER TABLE `workflowtable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 11:49:13
