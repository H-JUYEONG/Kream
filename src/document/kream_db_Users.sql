-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: kream_db
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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `userNo` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) DEFAULT NULL,
  `userPw` varchar(100) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userAddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (2,'user02','password02','이영희','부산광역시 해운대구'),(3,'user03','password03','박지훈','대구광역시 중구'),(4,'user04','password04','최수연','인천광역시 남동구'),(5,'user05','password05','정민호','광주광역시 동구'),(6,'user06','password06','김지영','울산광역시 남구'),(7,'user07','password07','이재용','경기도 수원시'),(8,'user08','password08','박서연','충청북도 청주시'),(9,'user09','password09','최준호','전라북도 전주시'),(10,'user10','password10','정하늘','제주특별자치도 제주시'),(11,'user11','password11','김태형','서울특별시 강북구'),(12,'user12','password12','이유진','부산광역시 동구'),(13,'user13','password13','박민수','대구광역시 서구'),(14,'user14','password14','최미래','인천광역시 연수구'),(15,'user15','password15','정유진','광주광역시 서구'),(16,'user16','password16','김지호','울산광역시 북구'),(17,'user17','password17','이민석','경기도 고양시'),(18,'user18','password18','박수진','충청남도 천안시'),(19,'user19','password19','최성현','전라남도 광양시'),(20,'user20','password20','정하린','제주특별자치도 서귀포시'),(21,'user21','password21','김정희','서울특별시 노원구'),(22,'user22','password22','이승호','부산광역시 사하구'),(23,'user23','password23','박지민','대구광역시 달서구'),(24,'user24','password24','최지훈','인천광역시 부평구'),(25,'user25','password25','정지훈','광주광역시 광산구'),(26,'user26','password26','김연수','울산광역시 중구'),(27,'user27','password27','이준호','경기도 안양시'),(28,'user28','password28','박혜진','충청북도 음성군'),(29,'user29','password29','최경수','전라북도 익산시'),(30,'user30','password30','정서영','제주특별자치도 제주시'),(31,'user31','password31','김재원','서울특별시 동대문구'),(32,'user32','password32','이현주','부산광역시 금정구'),(33,'user33','password33','박승현','대구광역시 동구'),(34,'user34','password34','최유진','인천광역시 송도구'),(35,'user35','password35','정호준','광주광역시 남구'),(36,'user36','password36','김다희','울산광역시 중구'),(37,'user37','password37','이정민','경기도 평택시'),(38,'user38','password38','박서진','충청남도 공주시'),(39,'user39','password39','최준영','전라남도 순천시'),(40,'user40','password40','정민서','제주특별자치도 서귀포시'),(41,'user41','password41','김호진','서울특별시 서대문구'),(42,'user42','password42','이유빈','부산광역시 부산진구'),(43,'user43','password43','박정우','대구광역시 수성구'),(44,'user44','password44','최영민','인천광역시 중구'),(45,'user45','password45','정지영','광주광역시 동구'),(46,'user46','password46','김민경','울산광역시 남구'),(47,'user47','password47','이상훈','경기도 오산시'),(48,'user48','password48','박은지','충청북도 진천군'),(49,'user49','password49','최지연','전라북도 군산시'),(50,'user50','password50','정윤서','제주특별자치도 제주도'),(51,'user51','password51','김진수','서울특별시 양천구'),(52,'user52','password52','이성민','부산광역시 연제구'),(53,'user53','password53','박지우','대구광역시 북구'),(54,'user54','password54','최은정','인천광역시 중구'),(55,'user55','password55','정민재','광주광역시 서구'),(56,'user56','password56','김영수','울산광역시 울주군'),(57,'user57','password57','이주영','경기도 김포시'),(58,'user58','password58','박소영','충청남도 아산시'),(59,'user59','password59','최도현','전라남도 여수시'),(60,'user60','password60','정서윤','제주특별자치도 제주시'),(61,'user61','password61','김현아','서울특별시 강서구'),(62,'user62','password62','이재원','부산광역시 수영구'),(63,'user63','password63','박성민','대구광역시 서구'),(64,'user64','password64','최하은','인천광역시 계양구'),(65,'user65','password65','정하영','광주광역시 남구'),(66,'user66','password66','김태현','울산광역시 울주군'),(67,'user67','password67','이상민','경기도 성남시'),(68,'user68','password68','박민경','충청남도 보령시'),(69,'user69','password69','최정민','전라북도 남원시'),(70,'user70','password70','정재희','제주특별자치도 서귀포시'),(71,'user71','password71','김동현','서울특별시 중구'),(72,'user72','password72','이수진','부산광역시 동래구'),(73,'user73','password73','박성준','대구광역시 동구'),(74,'user74','password74','최지원','인천광역시 남동구'),(75,'user75','password75','정민희','광주광역시 북구'),(76,'user76','password76','김지혜','울산광역시 동구'),(77,'user77','password77','이종호','경기도 광명시'),(78,'user78','password78','박하늘','충청남도 논산시'),(79,'user79','password79','최진호','전라남도 화순군'),(80,'user80','password80','정해진','제주특별자치도 제주시'),(81,'user81','password81','김승현','서울특별시 동작구'),(82,'user82','password82','이유정','부산광역시 사상구'),(83,'user83','password83','박세진','대구광역시 남구'),(84,'user84','password84','최영주','인천광역시 서구'),(85,'user85','password85','정다은','광주광역시 남구'),(86,'user86','password86','김유빈','울산광역시 북구'),(87,'user87','password87','이혜진','경기도 군포시'),(88,'user88','password88','박재현','충청북도 옥천군'),(89,'user89','password89','최준형','전라북도 정읍시'),(90,'user90','password90','정세희','제주특별자치도 제주시'),(91,'user91','password91','김민수','서울특별시 서초구'),(92,'user92','password92','이상희','부산광역시 동구'),(93,'user93','password93','박현주','대구광역시 달성군'),(94,'user94','password94','김유찬','인천광역시 남구'),(95,'user95','password95','정준호','광주광역시 동구'),(96,'user96','password96','김연진','울산광역시 동구'),(97,'user97','password97','이성민','경기도 하남시'),(98,'user98','password98','박미래','충청남도 서산시'),(99,'user99','password99','최윤호','전라남도 목포시'),(999,'admin','admin','관리자','서울특별시 강남구'),(1001,'rladbcks12','rladbcks12','김유찬','하이미디어'),(1002,'yuchankim','yuchankim','박지민','하이미디어 강남');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 18:04:12
