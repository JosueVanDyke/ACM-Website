CREATE DATABASE  IF NOT EXISTS `production` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `production`;
-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: 192.168.0.203    Database: production
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.31-MariaDB-0+deb10u1

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
-- Table structure for table `class_events`
--

DROP TABLE IF EXISTS `class_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` varchar(45) NOT NULL DEFAULT 'NOTE',
  `event_name` varchar(45) NOT NULL,
  `event_description` varchar(200) NOT NULL,
  `event_due_date` datetime NOT NULL DEFAULT current_timestamp(),
  `class_id` int(10) unsigned NOT NULL,
  `insert_user_id` int(10) unsigned NOT NULL,
  `insert_date_utc` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`event_id`),
  KEY `class_events__class_IDX1` (`class_id`),
  KEY `class_events__users_IDX2` (`insert_user_id`),
  CONSTRAINT `class_events__class_FK1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `class_events__users_FK2` FOREIGN KEY (`insert_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_events`
--

LOCK TABLES `class_events` WRITE;
/*!40000 ALTER TABLE `class_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-12 21:39:09
