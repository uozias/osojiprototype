-- MySQL dump 10.13  Distrib 5.1.68, for Win64 (unknown)
--
-- Host: localhost    Database: osoji
-- ------------------------------------------------------
-- Server version	5.1.68-community

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
-- Current Database: `osoji`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `osoji` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `osoji`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add area',7,'add_area'),(20,'Can change area',7,'change_area'),(21,'Can delete area',7,'delete_area'),(22,'Can add customer',8,'add_customer'),(23,'Can change customer',8,'change_customer'),(24,'Can delete customer',8,'delete_customer'),(25,'Can add cleanup request',9,'add_cleanuprequest'),(26,'Can change cleanup request',9,'change_cleanuprequest'),(27,'Can delete cleanup request',9,'delete_cleanuprequest'),(28,'Can add cleanup place kind',10,'add_cleanupplacekind'),(29,'Can change cleanup place kind',10,'change_cleanupplacekind'),(30,'Can delete cleanup place kind',10,'delete_cleanupplacekind'),(31,'Can add cleanup place',11,'add_cleanupplace'),(32,'Can change cleanup place',11,'change_cleanupplace'),(33,'Can delete cleanup place',11,'delete_cleanupplace'),(34,'Can add pitcure',12,'add_pitcure'),(35,'Can change pitcure',12,'change_pitcure'),(36,'Can delete pitcure',12,'delete_pitcure'),(37,'Can add cleaner',13,'add_cleaner'),(38,'Can change cleaner',13,'change_cleaner'),(39,'Can delete cleaner',13,'delete_cleaner'),(40,'Can add bid',14,'add_bid'),(41,'Can change bid',14,'change_bid'),(42,'Can delete bid',14,'delete_bid'),(43,'Can add preferred date',15,'add_preferreddate'),(44,'Can change preferred date',15,'change_preferreddate'),(45,'Can delete preferred date',15,'delete_preferreddate'),(46,'Can add available date',16,'add_availabledate'),(47,'Can change available date',16,'change_availabledate'),(48,'Can delete available date',16,'delete_availabledate'),(49,'Can add contract',17,'add_contract'),(50,'Can change contract',17,'change_contract'),(51,'Can delete contract',17,'delete_contract'),(52,'Can add available place',18,'add_availableplace'),(53,'Can change available place',18,'change_availableplace'),(54,'Can delete available place',18,'delete_availableplace'),(55,'Can add job',19,'add_job'),(56,'Can change job',19,'change_job'),(57,'Can delete job',19,'delete_job'),(58,'Can add inhabited area',20,'add_inhabitedarea'),(59,'Can change inhabited area',20,'change_inhabitedarea'),(60,'Can delete inhabited area',20,'delete_inhabitedarea'),(61,'Can add question card',21,'add_questioncard'),(62,'Can change question card',21,'change_questioncard'),(63,'Can delete question card',21,'delete_questioncard'),(64,'Can add answer card',22,'add_answercard'),(65,'Can change answer card',22,'change_answercard'),(66,'Can delete answer card',22,'delete_answercard'),(67,'Can add log entry',23,'add_logentry'),(68,'Can change log entry',23,'change_logentry'),(69,'Can delete log entry',23,'delete_logentry'),(70,'Can add user',24,'add_user'),(71,'Can change user',24,'change_user'),(72,'Can delete user',24,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'saizoaoyagi','','','uozias@gmail.com','pbkdf2_sha256$10000$q8BJT74KzJyW$LQmTdUHTl7ewx4F5hb/nOOWMfDW6nKlUG+RFe19SXlU=',1,1,1,'2013-03-03 05:34:25','2013-03-03 01:59:23');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-03-03 06:00:25',1,7,'1','Area object',1,''),(2,'2013-03-03 06:00:30',1,7,'2','Area object',1,''),(3,'2013-03-03 06:00:35',1,7,'3','Area object',1,''),(4,'2013-03-03 06:00:40',1,7,'4','Area object',1,''),(5,'2013-03-03 06:03:49',1,8,'1','Customer object',1,''),(6,'2013-03-03 06:07:51',1,10,'1','CleanupPlaceKind object',1,''),(7,'2013-03-03 06:08:02',1,10,'2','CleanupPlaceKind object',1,''),(8,'2013-03-03 06:08:07',1,10,'3','CleanupPlaceKind object',1,''),(9,'2013-03-03 06:08:12',1,10,'4','CleanupPlaceKind object',1,''),(10,'2013-03-03 09:19:48',1,13,'1','Cleaner object',1,''),(11,'2013-03-03 10:06:32',1,13,'1','おそう次郎',1,''),(12,'2013-03-03 10:07:11',1,8,'2','テスト太郎',1,''),(13,'2013-03-03 10:07:29',1,10,'1','キッチン',1,''),(14,'2013-03-03 10:07:37',1,10,'2','エアコン',1,''),(15,'2013-03-03 10:07:43',1,10,'3','暖炉',1,''),(16,'2013-03-03 10:07:51',1,10,'4','浴室',1,''),(17,'2013-03-03 10:08:35',1,7,'1','東京',1,''),(18,'2013-03-03 10:08:38',1,7,'2','千葉',1,''),(19,'2013-03-03 10:08:41',1,7,'3','埼玉',1,''),(20,'2013-03-03 10:08:44',1,7,'4','神奈川',1,''),(21,'2013-03-03 10:21:18',1,7,'4','神奈川',3,''),(22,'2013-03-03 10:21:18',1,7,'3','埼玉',3,''),(23,'2013-03-03 10:21:18',1,7,'2','千葉',3,''),(24,'2013-03-03 10:21:18',1,7,'1','東京',3,''),(25,'2013-03-03 10:21:25',1,7,'5','kanagawa',1,''),(26,'2013-03-03 10:25:02',1,20,'7','kanagawa',1,''),(27,'2013-03-03 10:25:19',1,7,'6','東京',1,''),(28,'2013-03-03 10:25:24',1,7,'7','埼玉',1,''),(29,'2013-03-03 10:25:52',1,20,'8','東京',1,''),(30,'2013-03-03 10:25:58',1,20,'7','東京',2,'area を変更しました。');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'area','search','area'),(8,'customer','search','customer'),(9,'cleanup request','search','cleanuprequest'),(10,'cleanup place kind','search','cleanupplacekind'),(11,'cleanup place','search','cleanupplace'),(12,'pitcure','search','pitcure'),(13,'cleaner','search','cleaner'),(14,'bid','search','bid'),(15,'preferred date','search','preferreddate'),(16,'available date','search','availabledate'),(17,'contract','search','contract'),(18,'available place','search','availableplace'),(19,'job','search','job'),(20,'inhabited area','search','inhabitedarea'),(21,'question card','search','questioncard'),(22,'answer card','search','answercard'),(23,'log entry','admin','logentry'),(24,'user','search','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('86d143aaaae15e02342786986219e0ce','NTJmYjc1NTM4YjVlZTdjNjcyZDAwOTdmNWMzNTlmZjM1YzVjNGI4OTqAAn1xAChVEl9hdXRoX3Vz\nZXJfYmFja2VuZHEBVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEC\nVQ1fYXV0aF91c2VyX2lkcQOKAQF1Lg==\n','2013-03-17 03:22:03'),('99ba41c61fd972f027b22c416e525cac','NTJmYjc1NTM4YjVlZTdjNjcyZDAwOTdmNWMzNTlmZjM1YzVjNGI4OTqAAn1xAChVEl9hdXRoX3Vz\nZXJfYmFja2VuZHEBVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEC\nVQ1fYXV0aF91c2VyX2lkcQOKAQF1Lg==\n','2013-03-17 05:34:25');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_answercard`
--

DROP TABLE IF EXISTS `search_answercard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_answercard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleanup_request_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `parent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_answercard_7d89aaeb` (`cleanup_request_id`),
  KEY `search_answercard_63f17a16` (`parent_id`),
  KEY `search_answercard_12366e04` (`customer_id`),
  CONSTRAINT `cleanup_request_id_refs_id_1e1deb8a` FOREIGN KEY (`cleanup_request_id`) REFERENCES `search_cleanuprequest` (`id`),
  CONSTRAINT `customer_id_refs_user_ptr_id_89fe003` FOREIGN KEY (`customer_id`) REFERENCES `search_customer` (`user_ptr_id`),
  CONSTRAINT `parent_id_refs_id_55e302c9` FOREIGN KEY (`parent_id`) REFERENCES `search_answercard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_answercard`
--

LOCK TABLES `search_answercard` WRITE;
/*!40000 ALTER TABLE `search_answercard` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_answercard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_area`
--

DROP TABLE IF EXISTS `search_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefecture` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_area`
--

LOCK TABLES `search_area` WRITE;
/*!40000 ALTER TABLE `search_area` DISABLE KEYS */;
INSERT INTO `search_area` VALUES (5,'kanagawa'),(6,'東京'),(7,'埼玉');
/*!40000 ALTER TABLE `search_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_availabledate`
--

DROP TABLE IF EXISTS `search_availabledate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_availabledate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_availabledate_8338fda` (`bid_id`),
  CONSTRAINT `bid_id_refs_id_34d5fa8b` FOREIGN KEY (`bid_id`) REFERENCES `search_bid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_availabledate`
--

LOCK TABLES `search_availabledate` WRITE;
/*!40000 ALTER TABLE `search_availabledate` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_availabledate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_availableplace`
--

DROP TABLE IF EXISTS `search_availableplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_availableplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleaner_id` int(11) NOT NULL,
  `cleanup_place_kind_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_availableplace_4b83916f` (`cleaner_id`),
  KEY `search_availableplace_3beeba45` (`cleanup_place_kind_id`),
  CONSTRAINT `cleaner_id_refs_user_ptr_id_3c353618` FOREIGN KEY (`cleaner_id`) REFERENCES `search_cleaner` (`user_ptr_id`),
  CONSTRAINT `cleanup_place_kind_id_refs_id_4110575e` FOREIGN KEY (`cleanup_place_kind_id`) REFERENCES `search_cleanupplacekind` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_availableplace`
--

LOCK TABLES `search_availableplace` WRITE;
/*!40000 ALTER TABLE `search_availableplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_availableplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_bid`
--

DROP TABLE IF EXISTS `search_bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_bid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleanup_request_id` int(11) NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `asking_price` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `dead` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_bid_7d89aaeb` (`cleanup_request_id`),
  KEY `search_bid_4b83916f` (`cleaner_id`),
  CONSTRAINT `cleaner_id_refs_user_ptr_id_687eec82` FOREIGN KEY (`cleaner_id`) REFERENCES `search_cleaner` (`user_ptr_id`),
  CONSTRAINT `cleanup_request_id_refs_id_45835da2` FOREIGN KEY (`cleanup_request_id`) REFERENCES `search_cleanuprequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_bid`
--

LOCK TABLES `search_bid` WRITE;
/*!40000 ALTER TABLE `search_bid` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_cleaner`
--

DROP TABLE IF EXISTS `search_cleaner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_cleaner` (
  `user_ptr_id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `company_mame_reading` varchar(128) NOT NULL,
  `company_telephone_number` varchar(128) NOT NULL,
  `company_url` longtext NOT NULL,
  `schedule_share` varchar(128) NOT NULL,
  `request_from_others` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `user_ptr_id_refs_id_1ea63bdd` FOREIGN KEY (`user_ptr_id`) REFERENCES `search_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_cleaner`
--

LOCK TABLES `search_cleaner` WRITE;
/*!40000 ALTER TABLE `search_cleaner` DISABLE KEYS */;
INSERT INTO `search_cleaner` VALUES (1,'おそうじ社','おそうじしゃ','0','http://www.osoji.org','1',0);
/*!40000 ALTER TABLE `search_cleaner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_cleanupplace`
--

DROP TABLE IF EXISTS `search_cleanupplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_cleanupplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleanup_request_id` int(11) NOT NULL,
  `cleanup_place_kind_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `dirt_level` int(11) NOT NULL,
  `hope_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_cleanupplace_7d89aaeb` (`cleanup_request_id`),
  KEY `search_cleanupplace_3beeba45` (`cleanup_place_kind_id`),
  CONSTRAINT `cleanup_place_kind_id_refs_id_4484a05f` FOREIGN KEY (`cleanup_place_kind_id`) REFERENCES `search_cleanupplacekind` (`id`),
  CONSTRAINT `cleanup_request_id_refs_id_707e58e9` FOREIGN KEY (`cleanup_request_id`) REFERENCES `search_cleanuprequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_cleanupplace`
--

LOCK TABLES `search_cleanupplace` WRITE;
/*!40000 ALTER TABLE `search_cleanupplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_cleanupplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_cleanupplacekind`
--

DROP TABLE IF EXISTS `search_cleanupplacekind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_cleanupplacekind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_cleanupplacekind`
--

LOCK TABLES `search_cleanupplacekind` WRITE;
/*!40000 ALTER TABLE `search_cleanupplacekind` DISABLE KEYS */;
INSERT INTO `search_cleanupplacekind` VALUES (1,'キッチン'),(2,'エアコン'),(3,'暖炉'),(4,'浴室');
/*!40000 ALTER TABLE `search_cleanupplacekind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_cleanuprequest`
--

DROP TABLE IF EXISTS `search_cleanuprequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_cleanuprequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `delivery` datetime NOT NULL,
  `maximum_price` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_cleanuprequest_12366e04` (`customer_id`),
  CONSTRAINT `customer_id_refs_user_ptr_id_30fa6e8e` FOREIGN KEY (`customer_id`) REFERENCES `search_customer` (`user_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_cleanuprequest`
--

LOCK TABLES `search_cleanuprequest` WRITE;
/*!40000 ALTER TABLE `search_cleanuprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_cleanuprequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_contract`
--

DROP TABLE IF EXISTS `search_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_id` int(11) NOT NULL,
  `cleanup_request_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `payment_state` varchar(128) NOT NULL,
  `operation_state` varchar(128) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `overall_evaluation` int(11) NOT NULL,
  `technique_evaluation` int(11) NOT NULL,
  `price_evaluation` int(11) NOT NULL,
  `service_evaluation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_contract_8338fda` (`bid_id`),
  KEY `search_contract_7d89aaeb` (`cleanup_request_id`),
  CONSTRAINT `bid_id_refs_id_2af0a92d` FOREIGN KEY (`bid_id`) REFERENCES `search_bid` (`id`),
  CONSTRAINT `cleanup_request_id_refs_id_5783b1ea` FOREIGN KEY (`cleanup_request_id`) REFERENCES `search_cleanuprequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_contract`
--

LOCK TABLES `search_contract` WRITE;
/*!40000 ALTER TABLE `search_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_customer`
--

DROP TABLE IF EXISTS `search_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_customer` (
  `user_ptr_id` int(11) NOT NULL,
  `dummy` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `user_ptr_id_refs_id_761f1bf0` FOREIGN KEY (`user_ptr_id`) REFERENCES `search_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_customer`
--

LOCK TABLES `search_customer` WRITE;
/*!40000 ALTER TABLE `search_customer` DISABLE KEYS */;
INSERT INTO `search_customer` VALUES (2,1);
/*!40000 ALTER TABLE `search_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_inhabitedarea`
--

DROP TABLE IF EXISTS `search_inhabitedarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_inhabitedarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_inhabitedarea_202f16e9` (`area_id`),
  KEY `search_inhabitedarea_403f60f` (`user_id`),
  CONSTRAINT `area_id_refs_id_59ff8136` FOREIGN KEY (`area_id`) REFERENCES `search_area` (`id`),
  CONSTRAINT `user_id_refs_id_36a38914` FOREIGN KEY (`user_id`) REFERENCES `search_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_inhabitedarea`
--

LOCK TABLES `search_inhabitedarea` WRITE;
/*!40000 ALTER TABLE `search_inhabitedarea` DISABLE KEYS */;
INSERT INTO `search_inhabitedarea` VALUES (7,6,1),(8,6,2);
/*!40000 ALTER TABLE `search_inhabitedarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_job`
--

DROP TABLE IF EXISTS `search_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `kind` varchar(5) NOT NULL,
  `address` longtext NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_job`
--

LOCK TABLES `search_job` WRITE;
/*!40000 ALTER TABLE `search_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_pitcure`
--

DROP TABLE IF EXISTS `search_pitcure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_pitcure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleanup_place_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_pitcure_714327ad` (`cleanup_place_id`),
  CONSTRAINT `cleanup_place_id_refs_id_f02d7c9` FOREIGN KEY (`cleanup_place_id`) REFERENCES `search_cleanupplace` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_pitcure`
--

LOCK TABLES `search_pitcure` WRITE;
/*!40000 ALTER TABLE `search_pitcure` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_pitcure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_preferreddate`
--

DROP TABLE IF EXISTS `search_preferreddate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_preferreddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_preferreddate_8338fda` (`bid_id`),
  CONSTRAINT `bid_id_refs_id_4145de79` FOREIGN KEY (`bid_id`) REFERENCES `search_bid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_preferreddate`
--

LOCK TABLES `search_preferreddate` WRITE;
/*!40000 ALTER TABLE `search_preferreddate` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_preferreddate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_questioncard`
--

DROP TABLE IF EXISTS `search_questioncard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_questioncard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cleanup_request_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_questioncard_7d89aaeb` (`cleanup_request_id`),
  KEY `search_questioncard_63f17a16` (`parent_id`),
  KEY `search_questioncard_4b83916f` (`cleaner_id`),
  CONSTRAINT `cleaner_id_refs_user_ptr_id_68a9297a` FOREIGN KEY (`cleaner_id`) REFERENCES `search_cleaner` (`user_ptr_id`),
  CONSTRAINT `cleanup_request_id_refs_id_3cb9f886` FOREIGN KEY (`cleanup_request_id`) REFERENCES `search_cleanuprequest` (`id`),
  CONSTRAINT `parent_id_refs_id_2eac0749` FOREIGN KEY (`parent_id`) REFERENCES `search_questioncard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_questioncard`
--

LOCK TABLES `search_questioncard` WRITE;
/*!40000 ALTER TABLE `search_questioncard` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_questioncard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_user`
--

DROP TABLE IF EXISTS `search_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `first_name_reading` varchar(128) NOT NULL,
  `family_name` varchar(128) NOT NULL,
  `family_name_reading` varchar(128) NOT NULL,
  `login_user_name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `address` longtext NOT NULL,
  `telephone_number` int(11) NOT NULL,
  `sign_up_state` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_user`
--

LOCK TABLES `search_user` WRITE;
/*!40000 ALTER TABLE `search_user` DISABLE KEYS */;
INSERT INTO `search_user` VALUES (1,'uoizas@googlemail.com','おそう次郎','おそうじろう','汚部屋','おべや','osojiro','osojiro','東京都杉並区',0,'済'),(2,'uoizas@googlemail.com','テスト太郎','てすとたろう','お掃除','おそうじ','testtarou','testtarou','東京都中野区',0,'済');
/*!40000 ALTER TABLE `search_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-03 19:36:01
