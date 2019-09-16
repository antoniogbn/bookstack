-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: bookstack
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_book_id_index` (`book_id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'bookshelf_create','',0,1,1,'BookStack\\Bookshelf','2019-09-13 16:51:22','2019-09-13 16:51:22'),(2,'bookshelf_create','CSC Support',0,1,0,'','2019-09-13 16:51:42','2019-09-13 16:52:34'),(3,'book_create','',1,1,1,'BookStack\\Book','2019-09-13 16:51:53','2019-09-13 16:51:53'),(4,'bookshelf_update','CSC Support',0,1,0,'','2019-09-13 16:51:53','2019-09-13 16:52:34'),(5,'bookshelf_delete','CSC Support',0,1,0,'','2019-09-13 16:52:34','2019-09-13 16:52:34'),(6,'bookshelf_create','',0,1,3,'BookStack\\Bookshelf','2019-09-13 16:52:52','2019-09-13 16:52:52'),(7,'bookshelf_create','',0,1,4,'BookStack\\Bookshelf','2019-09-13 16:53:09','2019-09-13 16:53:09'),(8,'book_create','',2,1,2,'BookStack\\Book','2019-09-13 16:53:37','2019-09-13 16:53:37'),(9,'bookshelf_update','',0,1,3,'BookStack\\Bookshelf','2019-09-13 16:53:37','2019-09-13 16:53:37'),(10,'page_create','',2,1,1,'BookStack\\Page','2019-09-13 16:56:10','2019-09-13 16:56:10'),(11,'page_create','',2,1,2,'BookStack\\Page','2019-09-13 16:57:12','2019-09-13 16:57:12');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_restricted_index` (`restricted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Sonus SBC','sonus-sbc','','2019-09-13 16:51:53','2019-09-13 16:51:53',1,1,0,NULL),(2,'Basic Stuff','basic-stuff','','2019-09-13 16:53:37','2019-09-13 16:53:37',1,1,0,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_restricted_index` (`restricted`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
INSERT INTO `bookshelves` VALUES (1,'Porta One','porta-one','',1,1,0,NULL,'2019-09-13 16:51:22','2019-09-13 16:51:22'),(3,'Sonus SBC','sonus-sbc','',1,1,0,NULL,'2019-09-13 16:52:52','2019-09-13 16:52:52'),(4,'CIsco CUCM','cisco-cucm','',1,1,0,NULL,'2019-09-13 16:53:09','2019-09-13 16:53:09');
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
INSERT INTO `bookshelves_books` VALUES (3,2,1);
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_restricted_index` (`restricted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `restrictable_id` int(11) NOT NULL,
  `restrictable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restrictions_role_id_index` (`role_id`),
  KEY `restrictions_action_index` (`action`),
  KEY `restrictions_restrictable_id_restrictable_type_index` (`restrictable_id`,`restrictable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joint_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_permission` tinyint(1) NOT NULL DEFAULT '0',
  `has_permission_own` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_has_permission_index` (`has_permission`),
  KEY `joint_permissions_has_permission_own_index` (`has_permission_own`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_action_index` (`action`),
  KEY `joint_permissions_created_by_index` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES (1,1,'BookStack\\Bookshelf',1,'view',1,1,1),(2,1,'BookStack\\Bookshelf',1,'update',1,1,1),(3,1,'BookStack\\Bookshelf',1,'delete',1,1,1),(4,2,'BookStack\\Bookshelf',1,'view',1,1,1),(5,2,'BookStack\\Bookshelf',1,'update',1,1,1),(6,2,'BookStack\\Bookshelf',1,'delete',1,1,1),(7,3,'BookStack\\Bookshelf',1,'view',1,1,1),(8,3,'BookStack\\Bookshelf',1,'update',0,0,1),(9,3,'BookStack\\Bookshelf',1,'delete',0,0,1),(10,4,'BookStack\\Bookshelf',1,'view',1,1,1),(11,4,'BookStack\\Bookshelf',1,'update',0,0,1),(12,4,'BookStack\\Bookshelf',1,'delete',0,0,1),(25,1,'BookStack\\Book',1,'view',1,1,1),(26,1,'BookStack\\Book',1,'update',1,1,1),(27,1,'BookStack\\Book',1,'delete',1,1,1),(28,1,'BookStack\\Book',1,'page-create',1,1,1),(29,1,'BookStack\\Book',1,'chapter-create',1,1,1),(30,2,'BookStack\\Book',1,'view',1,1,1),(31,2,'BookStack\\Book',1,'update',1,1,1),(32,2,'BookStack\\Book',1,'delete',1,1,1),(33,2,'BookStack\\Book',1,'page-create',1,1,1),(34,2,'BookStack\\Book',1,'chapter-create',1,1,1),(35,3,'BookStack\\Book',1,'view',1,1,1),(36,3,'BookStack\\Book',1,'update',0,0,1),(37,3,'BookStack\\Book',1,'delete',0,0,1),(38,3,'BookStack\\Book',1,'page-create',0,0,1),(39,3,'BookStack\\Book',1,'chapter-create',0,0,1),(40,4,'BookStack\\Book',1,'view',1,1,1),(41,4,'BookStack\\Book',1,'update',0,0,1),(42,4,'BookStack\\Book',1,'delete',0,0,1),(43,4,'BookStack\\Book',1,'page-create',0,0,1),(44,4,'BookStack\\Book',1,'chapter-create',0,0,1),(45,1,'BookStack\\Bookshelf',3,'view',1,1,1),(46,1,'BookStack\\Bookshelf',3,'update',1,1,1),(47,1,'BookStack\\Bookshelf',3,'delete',1,1,1),(48,2,'BookStack\\Bookshelf',3,'view',1,1,1),(49,2,'BookStack\\Bookshelf',3,'update',1,1,1),(50,2,'BookStack\\Bookshelf',3,'delete',1,1,1),(51,3,'BookStack\\Bookshelf',3,'view',1,1,1),(52,3,'BookStack\\Bookshelf',3,'update',0,0,1),(53,3,'BookStack\\Bookshelf',3,'delete',0,0,1),(54,4,'BookStack\\Bookshelf',3,'view',1,1,1),(55,4,'BookStack\\Bookshelf',3,'update',0,0,1),(56,4,'BookStack\\Bookshelf',3,'delete',0,0,1),(57,1,'BookStack\\Bookshelf',4,'view',1,1,1),(58,1,'BookStack\\Bookshelf',4,'update',1,1,1),(59,1,'BookStack\\Bookshelf',4,'delete',1,1,1),(60,2,'BookStack\\Bookshelf',4,'view',1,1,1),(61,2,'BookStack\\Bookshelf',4,'update',1,1,1),(62,2,'BookStack\\Bookshelf',4,'delete',1,1,1),(63,3,'BookStack\\Bookshelf',4,'view',1,1,1),(64,3,'BookStack\\Bookshelf',4,'update',0,0,1),(65,3,'BookStack\\Bookshelf',4,'delete',0,0,1),(66,4,'BookStack\\Bookshelf',4,'view',1,1,1),(67,4,'BookStack\\Bookshelf',4,'update',0,0,1),(68,4,'BookStack\\Bookshelf',4,'delete',0,0,1),(89,1,'BookStack\\Page',1,'view',1,1,1),(90,1,'BookStack\\Page',1,'update',1,1,1),(91,1,'BookStack\\Page',1,'delete',1,1,1),(92,2,'BookStack\\Page',1,'view',1,1,1),(93,2,'BookStack\\Page',1,'update',1,1,1),(94,2,'BookStack\\Page',1,'delete',1,1,1),(95,3,'BookStack\\Page',1,'view',1,1,1),(96,3,'BookStack\\Page',1,'update',0,0,1),(97,3,'BookStack\\Page',1,'delete',0,0,1),(98,4,'BookStack\\Page',1,'view',1,1,1),(99,4,'BookStack\\Page',1,'update',0,0,1),(100,4,'BookStack\\Page',1,'delete',0,0,1),(121,1,'BookStack\\Page',2,'view',1,1,1),(122,1,'BookStack\\Page',2,'update',1,1,1),(123,1,'BookStack\\Page',2,'delete',1,1,1),(124,2,'BookStack\\Page',2,'view',1,1,1),(125,2,'BookStack\\Page',2,'update',1,1,1),(126,2,'BookStack\\Page',2,'delete',1,1,1),(127,3,'BookStack\\Page',2,'view',1,1,1),(128,3,'BookStack\\Page',2,'update',0,0,1),(129,3,'BookStack\\Page',2,'delete',0,0,1),(130,4,'BookStack\\Page',2,'view',1,1,1),(131,4,'BookStack\\Page',2,'update',0,0,1),(132,4,'BookStack\\Page',2,'delete',0,0,1),(133,1,'BookStack\\Book',2,'view',1,1,1),(134,1,'BookStack\\Book',2,'update',1,1,1),(135,1,'BookStack\\Book',2,'delete',1,1,1),(136,1,'BookStack\\Book',2,'page-create',1,1,1),(137,1,'BookStack\\Book',2,'chapter-create',1,1,1),(138,2,'BookStack\\Book',2,'view',1,1,1),(139,2,'BookStack\\Book',2,'update',1,1,1),(140,2,'BookStack\\Book',2,'delete',1,1,1),(141,2,'BookStack\\Book',2,'page-create',1,1,1),(142,2,'BookStack\\Book',2,'chapter-create',1,1,1),(143,3,'BookStack\\Book',2,'view',1,1,1),(144,3,'BookStack\\Book',2,'update',0,0,1),(145,3,'BookStack\\Book',2,'delete',0,0,1),(146,3,'BookStack\\Book',2,'page-create',0,0,1),(147,3,'BookStack\\Book',2,'chapter-create',0,0,1),(148,4,'BookStack\\Book',2,'view',1,1,1),(149,4,'BookStack\\Book',2,'update',0,0,1),(150,4,'BookStack\\Book',2,'delete',0,0,1),(151,4,'BookStack\\Book',2,'page-create',0,0,1),(152,4,'BookStack\\Book',2,'chapter-create',0,0,1);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_12_114933_create_books_table',1),(4,'2015_07_12_190027_create_pages_table',1),(5,'2015_07_13_172121_create_images_table',1),(6,'2015_07_27_172342_create_chapters_table',1),(7,'2015_08_08_200447_add_users_to_entities',1),(8,'2015_08_09_093534_create_page_revisions_table',1),(9,'2015_08_16_142133_create_activities_table',1),(10,'2015_08_29_105422_add_roles_and_permissions',1),(11,'2015_08_30_125859_create_settings_table',1),(12,'2015_08_31_175240_add_search_indexes',1),(13,'2015_09_04_165821_create_social_accounts_table',1),(14,'2015_09_05_164707_add_email_confirmation_table',1),(15,'2015_11_21_145609_create_views_table',1),(16,'2015_11_26_221857_add_entity_indexes',1),(17,'2015_12_05_145049_fulltext_weighting',1),(18,'2015_12_07_195238_add_image_upload_types',1),(19,'2015_12_09_195748_add_user_avatars',1),(20,'2016_01_11_210908_add_external_auth_to_users',1),(21,'2016_02_25_184030_add_slug_to_revisions',1),(22,'2016_02_27_120329_update_permissions_and_roles',1),(23,'2016_02_28_084200_add_entity_access_controls',1),(24,'2016_03_09_203143_add_page_revision_types',1),(25,'2016_03_13_082138_add_page_drafts',1),(26,'2016_03_25_123157_add_markdown_support',1),(27,'2016_04_09_100730_add_view_permissions_to_roles',1),(28,'2016_04_20_192649_create_joint_permissions_table',1),(29,'2016_05_06_185215_create_tags_table',1),(30,'2016_07_07_181521_add_summary_to_page_revisions',1),(31,'2016_09_29_101449_remove_hidden_roles',1),(32,'2016_10_09_142037_create_attachments_table',1),(33,'2017_01_21_163556_create_cache_table',1),(34,'2017_01_21_163602_create_sessions_table',1),(35,'2017_03_19_091553_create_search_index_table',1),(36,'2017_04_20_185112_add_revision_counts',1),(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),(38,'2017_08_01_130541_create_comments_table',1),(39,'2017_08_29_102650_add_cover_image_display',1),(40,'2018_07_15_173514_add_role_external_auth_id',1),(41,'2018_08_04_115700_create_bookshelves_table',1),(42,'2019_07_07_112515_add_template_support',1),(43,'2019_08_17_140214_add_user_invites_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'version',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,1,'Create IP Plan','<p id=\"bkmrk-skip-to-end-of-metad\"><a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Creating+an+IP+Plan#page-metadata-end\">Skip to end of metadata</a></p>\r\n<div id=\"bkmrk-\"></div>\r\n<p id=\"bkmrk-go-to-start-of-metad\"><a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Creating+an+IP+Plan#page-metadata-start\">Go to start of metadata</a></p>\r\n<div id=\"bkmrk--0\"></div>\r\n<p id=\"bkmrk-once-you-have-succes\">Once you have successfully installed the SBC 5000 series and/or SBC 7000 hardware, you are ready to install the application software. As a part of this installation, you are prompted for configuration information by the SBC.</p>\r\n<p id=\"bkmrk-create-an-ip-plan-pr\">Create an IP Plan prior to installing the software. The IP Plan is generally completed using an Excel spreadsheet, and is intended to capture information such as hostname, logical IP addresses, and so forth to help configure the SBC system. It is important to complete this document (even for simple networks) so that your system information is readily available when you begin installing the software, and to maintain this information as a reference for future configuration changes.</p>\r\n<p id=\"bkmrk-if-needed%2C-please-co\">If needed, please contact Sonus TAC team for an IP Plan use case.</p>\r\n<p id=\"bkmrk-the-steps-for-instal\">The steps for installing the application are included in section <a href=\"https://support.sonus.net/display/SBXDOC62/Installing+SBC+Application\">Installing SBC Application</a>.</p>\r\n<h2 id=\"bkmrk-example-ip-plan-deta\">Example IP Plan Details</h2>\r\n<p id=\"bkmrk-the-following-exampl\">The following example is for a redundant High Availability (HA) configuration with one standby SBC protecting the active SBC.</p>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p class=\"title\" id=\"bkmrk-caution\">Caution</p>\r\n<p id=\"bkmrk-%C2%A0ensure-that-the-man\"> Ensure that the Management and Media IP addresses are on different subnets to avoid potential conflicts.</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<div id=\"bkmrk-click-here%C2%A0to-downlo\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"noprint\">\n<strong><a href=\"https://support.sonus.net/download/attachments/125864975/SBC%20IP%20Plan.xlsx?version=1&amp;modificationDate=1539977850000&amp;api=v2\" rel=\"nofollow\" data-linked-resource-id=\"161219585\" data-linked-resource-version=\"1\" data-linked-resource-type=\"attachment\" data-linked-resource-default-alias=\"SBC IP Plan.xlsx\" data-nice-type=\"Excel Spreadsheet\" data-linked-resource-content-type=\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\" data-linked-resource-container-id=\"125864975\" data-linked-resource-container-version=\"11\">Click here</a></strong> to download an example spreadsheet.</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-2\"> </p>\r\n<div id=\"bkmrk-field-description-ex\">\r\n<div>\r\n<div>\r\n<table class=\"confluenceTable\">\n<colgroup>\n<col>\n<col>\n<col>\n<col>\n</colgroup>\n<tbody>\n<tr>\n<th class=\"confluenceTh\">Field</th>\r\n<th class=\"confluenceTh\">Description</th>\r\n<th class=\"confluenceTh\" colspan=\"1\">Example/Recommendation</th>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>System Name</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>This is the name of the overall SBC system, and is used as the designation of all servers within HA pair. Refer to <a href=\"https://support.sonus.net/display/SBXDOC62/System+Name+and+Hostname+Naming+Conventions\">System Name and Hostname Naming Conventions</a> for naming conventions.</p>\r\n<p>If external routing is used, the system name is referred to by the PSX.</p>\r\n<p>You <em>MUST</em> use the same name on the Active and Standby system installation.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DALSBC01</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Time zone</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>The time zone used in your billing records. Can be the time zone of the location.</p>\r\n<p>Note: changing the time zone will cause the application to restart.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">gmtMinus06-Central- US</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Contact Information</strong></td>\r\n<td class=\"confluenceTd\">Who to contact about the system</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Joe Smith 888-555-1212</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Location</strong></td>\r\n<td class=\"confluenceTd\">Location of the system</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">Dallas, TX</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>NTP Primary</strong></td>\r\n<td class=\"confluenceTd\">The IP address of the NTP server. A NTP source is necessary for correct system operation.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>10.11.12.2/24<br>or<br>fd00:10:6b50:4130:1</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>NTP Secondary</strong></td>\r\n<td class=\"confluenceTd\">The IP address of the NTP server. A NTP source is necessary for correct system operation.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.12.3/24<br>or<br>fd00:10:6b50:4130:2</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Logical Management IP Address</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>This IP address can be used to access the active unit, it is not tied to a particular physical unit.<br>When a unit becomes active, this IP address “moves” to that unit.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.13.3<br>(or any IP address within the Management IP subnet)</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Logical Management IP Address - Name</strong></td>\r\n<td class=\"confluenceTd\">The name (used of reference only) of the Logical Management IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DALNBS01_MGMT</td>\r\n</tr>\n<tr>\n<th class=\"confluenceTh\">Unit A and Unit B:</th>\r\n<th class=\"confluenceTh\">Configure on Unit A only (IP address moves from one Unit to the other on a fail over)</th>\r\n<th class=\"confluenceTh\" colspan=\"1\"> </th>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\"><strong>Packet Ports</strong></td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 IP Address</td>\r\n<td class=\"confluenceTd\">\r\n<p>The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.14.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 VLAN</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface (optional).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">100</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 Netmask</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 IP Address</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.15.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 VLAN</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface (optional).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">200</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 Netmask</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 IP Address*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.16.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 VLAN*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface. This is optional.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">300</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 Netmask*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 IP Address*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.17.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 VLAN*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface. This is optional.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">400</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 Netmask*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\"><em>    * Packet Port 2 and 3 are not applicable for SBC 51x0 platforms.</em></td>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\">\r\n<p><strong>HA Ports</strong> (not applicable for stand-alone configuration)</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\">\r\n<p>The HA ports of active and standby SBC nodes should be on the same subnet when the boxes are not directly connected.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Active CE IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Specifies the active VM IP address in HA pair. The Active CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Standby CE.</p>\r\n<p>These Inter CE IP addresses should be in a different network from the management network.</p>\r\n<p>Recommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>169.254.99.1 (default)</p>\r\nNote: Active and Standby CE IP addresses must be in the same subnet.<br><p> </p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Standby CE IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Specifies the standby VM IP address in HA pair. The Standby CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Active CE.</p>\r\n<p>These Inter CE IP addresses should be in a different network from the management network.</p>\r\n<p>Recommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">169.254.88.1 (default)</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">HA Interface Mask (Inter CE Prefix)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Netmask of the network in which the Active/Standby IPs are configured.</p>\r\n<p>Note: If default Active and Standby CE IP addresses are not used, use Inter CE prefix as \'255.255.255.0\'.</p>\r\n<p> </p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">255.255.0.0 (default)</td>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\">\r\n<p><strong><br>Management Ports</strong></p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\">\r\n<p>The configuration of the IP management interface is performed as part of the initial-bootscript, and is not meant to be re-configured through the EMA. Each SBC has a redundant pair of physical ports for managing traffic.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.13.10</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv4 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv4</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Management Interface0 IPv4<br>(Default Gateway)</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>The Default Gateway IPv4 address connected to the Active management interface</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>10.11.13.1</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4150::23</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv6</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">64</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv6 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4150::1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.12.13.10</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv4</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv4 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.12.13.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4160::23</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv6</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">64</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv6 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4160::1</td>\r\n</tr>\n</tbody>\n</table>\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-3\"> </p>\r\n<p id=\"bkmrk-proceed-to-configuri\">Proceed to configuring your SBC 5000 series or SBC 7000 platform:</p>\r\n<p id=\"bkmrk-configuring-the-sbc-\"><strong><a href=\"https://support.sonus.net/display/SBXDOC62/Configuring+the+SBC+5000+Series+Platform\" rel=\"nofollow\">Configuring the SBC 5000 Series Platform</a></strong></p>\r\n<p id=\"bkmrk-configuring-the-sbc--0\"><strong><a href=\"https://support.sonus.net/display/SBXDOC62/Configuring+the+SBC+7000+Platform\" rel=\"nofollow\">Configuring the SBC 7000 Platform</a></strong></p>','Skip to end of metadata\r\n\r\nGo to start of metadata\r\n\r\nOnce you have successfully installed the SBC 5000 series and/or SBC 7000 hardware, you are ready to install the application software. As a part of this installation, you are prompted for configuration information by the SBC.\r\nCreate an IP Plan prior to installing the software. The IP Plan is generally completed using an Excel spreadsheet, and is intended to capture information such as hostname, logical IP addresses, and so forth to help configure the SBC system. It is important to complete this document (even for simple networks) so that your system information is readily available when you begin installing the software, and to maintain this information as a reference for future configuration changes.\r\nIf needed, please contact Sonus TAC team for an IP Plan use case.\r\nThe steps for installing the application are included in section Installing SBC Application.\r\nExample IP Plan Details\r\nThe following example is for a redundant High Availability (HA) configuration with one standby SBC protecting the active SBC.\r\n \r\nCaution\r\n Ensure that the Management and Media IP addresses are on different subnets to avoid potential conflicts.\r\n \r\n \r\n\r\n\r\n\nClick here to download an example spreadsheet.\r\n\r\n\r\n \r\n\r\n\r\n\r\n\n\n\n\n\n\n\n\n\nField\r\nDescription\r\nExample/Recommendation\r\n\n\nSystem Name\r\n\r\nThis is the name of the overall SBC system, and is used as the designation of all servers within HA pair. Refer to System Name and Hostname Naming Conventions for naming conventions.\r\nIf external routing is used, the system name is referred to by the PSX.\r\nYou MUST use the same name on the Active and Standby system installation.\r\n\r\nDALSBC01\r\n\n\nTime zone\r\n\r\nThe time zone used in your billing records. Can be the time zone of the location.\r\nNote: changing the time zone will cause the application to restart.\r\n\r\ngmtMinus06-Central- US\r\n\n\nContact Information\r\nWho to contact about the system\r\n\r\nJoe Smith 888-555-1212\r\n\r\n\n\nLocation\r\nLocation of the system\r\nDallas, TX\r\n\n\nNTP Primary\r\nThe IP address of the NTP server. A NTP source is necessary for correct system operation.\r\n\r\n10.11.12.2/24orfd00:10:6b50:4130:1\r\n\r\n\n\nNTP Secondary\r\nThe IP address of the NTP server. A NTP source is necessary for correct system operation.\r\n10.11.12.3/24orfd00:10:6b50:4130:2\r\n\n\nLogical Management IP Address\r\n\r\nThis IP address can be used to access the active unit, it is not tied to a particular physical unit.When a unit becomes active, this IP address “moves” to that unit.\r\n\r\n10.11.13.3(or any IP address within the Management IP subnet)\r\n\n\nLogical Management IP Address - Name\r\nThe name (used of reference only) of the Logical Management IP\r\nDALNBS01_MGMT\r\n\n\nUnit A and Unit B:\r\nConfigure on Unit A only (IP address moves from one Unit to the other on a fail over)\r\n \r\n\n\nPacket Ports\r\n\n\nPacket Port 0 IP Address\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n\r\n10.11.14.1\r\n\n\nPacket Port 0 VLAN\r\nThe VLAN tag of the interface (optional).\r\n100\r\n\n\nPacket Port 0 Netmask\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\nPacket Port 1 IP Address\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.15.1\r\n\n\nPacket Port 1 VLAN\r\nThe VLAN tag of the interface (optional).\r\n200\r\n\n\nPacket Port 1 Netmask\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n\r\nPacket Port 2 IP Address*\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.16.1\r\n\n\n\r\nPacket Port 2 VLAN*\r\n\r\nThe VLAN tag of the interface. This is optional.\r\n300\r\n\n\n\r\nPacket Port 2 Netmask*\r\n\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n\r\nPacket Port 3 IP Address*\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.17.1\r\n\n\n\r\nPacket Port 3 VLAN*\r\n\r\nThe VLAN tag of the interface. This is optional.\r\n400\r\n\n\n\r\nPacket Port 3 Netmask*\r\n\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n    * Packet Port 2 and 3 are not applicable for SBC 51x0 platforms.\r\n\n\n\r\nHA Ports (not applicable for stand-alone configuration)\r\n\r\n\n\n\r\nThe HA ports of active and standby SBC nodes should be on the same subnet when the boxes are not directly connected.\r\n\r\n\n\nActive CE IP\r\n\r\nSpecifies the active VM IP address in HA pair. The Active CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Standby CE.\r\nThese Inter CE IP addresses should be in a different network from the management network.\r\nRecommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).\r\n\r\n\r\n169.254.99.1 (default)\r\nNote: Active and Standby CE IP addresses must be in the same subnet. \r\n\r\n\n\nStandby CE IP\r\n\r\nSpecifies the standby VM IP address in HA pair. The Standby CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Active CE.\r\nThese Inter CE IP addresses should be in a different network from the management network.\r\nRecommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).\r\n\r\n169.254.88.1 (default)\r\n\n\nHA Interface Mask (Inter CE Prefix)\r\n\r\nNetmask of the network in which the Active/Standby IPs are configured.\r\nNote: If default Active and Standby CE IP addresses are not used, use Inter CE prefix as \'255.255.255.0\'.\r\n \r\n\r\n255.255.0.0 (default)\r\n\n\n\r\nManagement Ports\r\n\r\n\n\n\r\nThe configuration of the IP management interface is performed as part of the initial-bootscript, and is not meant to be re-configured through the EMA. Each SBC has a redundant pair of physical ports for managing traffic.\r\n\r\n\n\nManagement Interface0 IPv4 address\r\nThe physical management IPv4 address\r\n10.11.13.10\r\n\n\nManagement Interface0 IPv4 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv4\r\n24\r\n\n\n\r\nManagement Interface0 IPv4(Default Gateway)\r\n\r\n\r\nThe Default Gateway IPv4 address connected to the Active management interface\r\n\r\n\r\n10.11.13.1\r\n\r\n\n\nManagement Interface0 IPv6 address\r\nThe physical management IPv6 address\r\nfd00:10:6b50:4150::23\r\n\n\nManagement Interface0 IPv6 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv6\r\n64\r\n\n\nManagement Interface0 IPv6(Default Gateway)\r\nThe Default Gateway IPv6 address connected to the Active management interface\r\nfd00:10:6b50:4150::1\r\n\n\nManagement Interface1 IPv4 address\r\nThe physical management IPv4 address\r\n10.12.13.10\r\n\n\nManagement Interface1 IPv4 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv4\r\n24\r\n\n\nManagement Interface1 IPv4(Default Gateway)\r\nThe Default Gateway IPv4 address connected to the Active management interface\r\n10.12.13.1\r\n\n\nManagement Interface1 IPv6 address\r\nThe physical management IPv6 address\r\nfd00:10:6b50:4160::23\r\n\n\nManagement Interface1 IPv6 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv6\r\n64\r\n\n\nManagement Interface1 IPv6(Default Gateway)\r\nThe Default Gateway IPv6 address connected to the Active management interface\r\nfd00:10:6b50:4160::1\r\n\n\n\n\r\n\r\n\r\n \r\nProceed to configuring your SBC 5000 series or SBC 7000 platform:\r\nConfiguring the SBC 5000 Series Platform\r\nConfiguring the SBC 7000 Platform',1,'2019-09-13 16:56:10','2019-09-13 16:56:10','create-ip-plan','basic-stuff','version','','Initial publish',1),(2,2,'Managing DSP','<h1 id=\"bkmrk-managing-dsps\" class=\"with-breadcrumbs\"><a href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs\">Managing DSPs</a></h1>\r\n<div id=\"bkmrk-\"></div>\r\n<div id=\"bkmrk-skip-to-end-of-metad\">\r\n<div>\r\n<div></div>\r\n<a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#page-metadata-end\">Skip to end of metadata</a>\r\n<div></div>\r\n<a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#page-metadata-start\">Go to start of metadata</a>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p id=\"bkmrk-in-this-section%3A\">In this section:</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<div id=\"bkmrk-applications%2Ffeature\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"two-equal\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"panel\">\r\n<div>\r\n<div data-headerelements=\"H1,H2,H3,H4,H5,H6,H7\" data-hasbody=\"false\" data-macro-name=\"toc\">\r\n<ul>\n<li><span class=\"toc-item-body\" data-outline=\"1\"><a class=\"toc-link\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#ManagingDSPs-Applications/FeaturesRequiringDSPs\">Applications/Features Requiring DSPs</a></span></li>\r\n<li><span class=\"toc-item-body\" data-outline=\"2\"><a class=\"toc-link\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#ManagingDSPs-Applications/FeaturesnotRequiringDSPs\">Applications/Features not Requiring DSPs</a></span></li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p id=\"bkmrk-related-articles%3A\">Related articles:</p>\r\n<div id=\"bkmrk-managing-sbc-node-lo\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"two-equal\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"info\">\r\n<div>\r\n<ul>\n<li><a href=\"https://support.sonus.net/display/SBXDOC62/Managing+SBC+Node-Locked+Licenses+for+HW+and+SWe+SBCs\">Managing SBC Node-Locked Licenses for HW and SWe SBCs</a></li>\r\n<li>\r\n<p><a href=\"https://support.sonus.net/display/SBXDOC62/Supported+Codecs+and+Transcoding\">Supported Codecs and Transcoding</a></p>\r\n<p class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"hide-if\"><span class=\"confluence-link\"> </span><a href=\"https://support.sonus.net/login.action?os_destination=%2Fdisplay%2FSBXDOC50%2FAdditional%2BDocumentation\" rel=\"nofollow\">DSP Channel Densities for SBC 5000 and 7000 Series</a></p>\r\n</li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-2\"> </p>\r\n<p id=\"bkmrk-the-sbc-core%C2%A0provide\">The SBC Core provides a wide range of high density digital signal processor (DSP) modules and a comprehensive set of converged, voice, video, vocoder, fax and data media processing functions. This section provides guidance regarding when it is necessary to use DSPs on SBC 5000 series devices (5100, 5110, 5200, 5210, 5400) and the SBC 7000 device according to protocol usage.</p>\r\n<h2 id=\"bkmrk-applications%2Ffeature-0\">Applications/Features Requiring DSPs</h2>\r\n<p id=\"bkmrk-dsps-are-required-fo\">DSPs are required for the following features. For licensing details, refer to \"SBC Protocol Licenses\" section on the page <a href=\"https://support.sonus.net/display/SBXDOC62/Managing+SBC+Node-Locked+Licenses+for+HW+and+SWe+SBCs\">Managing SBC Node-Locked Licenses for HW and SWe SBCs</a>.</p>\r\n<p id=\"bkmrk-table%C2%A0%3A%C2%A0applications\"><strong>Table <span class=\"captionTable\">:</span></strong> Applications/Features Requiring DSPs</p>\r\n<div id=\"bkmrk-%C2%A0-feature-examples-c\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div></div>\r\n<span class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"caption\"> </span>\r\n<div>\r\n<table class=\"confluenceTable tablesorter tablesorter-default\">\n<thead><tr class=\"tablesorter-headerRow\">\n<th class=\"confluenceTh sortableHeader\" tabindex=\"0\" data-column=\"0\">\r\n<div>Feature</div>\r\n</th>\r\n<th class=\"confluenceTh sortableHeader\" tabindex=\"0\" data-column=\"1\">\r\n<div>Examples</div>\r\n</th>\r\n</tr></thead>\n<tbody>\n<tr>\n<td class=\"confluenceTd\">Codec interworking</td>\r\n<td class=\"confluenceTd\">\r\n<p>DSPs are needed when applying codec interworking. Below are but a few examples.</p>\r\n<ul>\n<li>G711 to G729</li>\r\n<li>G722 to AMR-WB</li>\r\n<li>T38 fax to G711</li>\r\n</ul>\n<p> </p>\r\n<p class=\"title\">Note</p>\r\n<p>Refer to <a href=\"https://support.sonus.net/display/SBXDOC62/Supported+Codecs+and+Transcoding\">Supported Codecs and Transcoding</a> for codec details.</p>\r\n<p class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"hide-if\"><span class=\"confluence-link\">Refer to </span><a href=\"https://support.sonus.net/login.action?os_destination=%2Fdisplay%2FSBXDOC50%2FAdditional%2BDocumentation\" rel=\"nofollow\"><span class=\"confluence-link\">DSP Channel Densities for SBC 5000 and 7000 Series</span></a> for DSP density details.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Fax and Modem Tone detections</td>\r\n<td class=\"confluenceTd\">\r\n<p>Fax or Modem Tone detection can trigger modifications to calls in following scenarios, for example.</p>\r\n<ul>\n<li>Calls to T.38 pass-through</li>\r\n<li>Calls to G.711 pass-through</li>\r\n<li>G.711 to T.38 transcoded</li>\r\n</ul>\n<p class=\"title\">Note</p>\r\n<p>These modifications can also be triggered via re-INVITEs triggered by remote Gateways that detect the tones.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Interworking in-band DTMF to Out-Of-Band (OOB) or RFC 2833/4733 DTMF events</td>\r\n<td class=\"confluenceTd\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Detecting in-band DTMF for dial string applications</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">When the basic codec is the same on both legs</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>DSPs are needed for:</p>\r\n<ol>\n<li>Packet Size interworking – 10 ms G.711 interworked to 20 ms G.711</li>\r\n<li>Silence Suppression interworking</li>\r\n<li>RFC 2833/4733 Payload conversion – G.729 with DTMF PT 101 interworked to G.729 with DTMF PT 102</li>\r\n<li>Codec-specific attribute interworking – interworking AMR-WB with mode-set 1, 2, 3 with AMR-WB using mode-set 2, 3, 4, 5.</li>\r\n<li>Interworking T.38 V0 to T.38 V3</li>\r\n<li>Codec payload type changes</li>\r\n</ol>\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Playing compressed announcements</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Ringback tones</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Packet Service Profile option \'transcode only\'</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DSPs are needed when PSP Packet To Packet Control object is set to \'Transcode only\'.</td>\r\n</tr>\n</tbody>\n</table>\n</div>\r\n<div data-hasbody=\"true\" data-macro-name=\"info\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"title\" id=\"bkmrk-note\">Note</p>\r\n<p id=\"bkmrk-the-term-%22pass-throu\">The term \"pass-through\" refers to the case when the SBC relays the media end-to-end and no DSPs are used.</p>\r\n<h2 id=\"bkmrk-applications%2Ffeature-1\">Applications/Features not Requiring DSPs</h2>\r\n<p id=\"bkmrk-dsps-are-not-require\">DSPs are not required for the following features:</p>\r\n<div id=\"bkmrk-rfc-2833%2F4733-to-oob\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<ul>\n<li>RFC 2833/4733 to OOB interworking<br><br>\n</li>\r\n<li>SRTP<br><br>\n</li>\r\n<li>RTCP (although RTCP termination is only recommended for transcoded calls)<br><br>\n</li>\r\n<li>Media policing<br><br>\n</li>\r\n<li>Signaling (Call and Registration) traffic policing<br><br>\n</li>\r\n<li>NAT traversal including ICE<br><br>\n</li>\r\n<li>RFC 2833/4733 based dial string applications<br><br>\n</li>\r\n<li>G.711 announcements</li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-3\"> </p>','Managing DSPs\r\n\r\n\r\n\r\n\r\nSkip to end of metadata\r\n\r\nGo to start of metadata\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nIn this section:\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nApplications/Features Requiring DSPs\r\nApplications/Features not Requiring DSPs\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nRelated articles:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nManaging SBC Node-Locked Licenses for HW and SWe SBCs\r\n\r\nSupported Codecs and Transcoding\r\n DSP Channel Densities for SBC 5000 and 7000 Series\r\n\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nThe SBC Core provides a wide range of high density digital signal processor (DSP) modules and a comprehensive set of converged, voice, video, vocoder, fax and data media processing functions. This section provides guidance regarding when it is necessary to use DSPs on SBC 5000 series devices (5100, 5110, 5200, 5210, 5400) and the SBC 7000 device according to protocol usage.\r\nApplications/Features Requiring DSPs\r\nDSPs are required for the following features. For licensing details, refer to \"SBC Protocol Licenses\" section on the page Managing SBC Node-Locked Licenses for HW and SWe SBCs.\r\nTable : Applications/Features Requiring DSPs\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n\r\n\n\n\r\nFeature\r\n\r\n\r\nExamples\r\n\r\n\n\n\nCodec interworking\r\n\r\nDSPs are needed when applying codec interworking. Below are but a few examples.\r\n\nG711 to G729\r\nG722 to AMR-WB\r\nT38 fax to G711\r\n\n \r\nNote\r\nRefer to Supported Codecs and Transcoding for codec details.\r\nRefer to DSP Channel Densities for SBC 5000 and 7000 Series for DSP density details.\r\n\r\n\n\nFax and Modem Tone detections\r\n\r\nFax or Modem Tone detection can trigger modifications to calls in following scenarios, for example.\r\n\nCalls to T.38 pass-through\r\nCalls to G.711 pass-through\r\nG.711 to T.38 transcoded\r\n\nNote\r\nThese modifications can also be triggered via re-INVITEs triggered by remote Gateways that detect the tones.\r\n\r\n\n\nInterworking in-band DTMF to Out-Of-Band (OOB) or RFC 2833/4733 DTMF events\r\n \r\n\n\n\r\nDetecting in-band DTMF for dial string applications\r\n\r\n \r\n\n\nWhen the basic codec is the same on both legs\r\n\r\nDSPs are needed for:\r\n\nPacket Size interworking – 10 ms G.711 interworked to 20 ms G.711\r\nSilence Suppression interworking\r\nRFC 2833/4733 Payload conversion – G.729 with DTMF PT 101 interworked to G.729 with DTMF PT 102\r\nCodec-specific attribute interworking – interworking AMR-WB with mode-set 1, 2, 3 with AMR-WB using mode-set 2, 3, 4, 5.\r\nInterworking T.38 V0 to T.38 V3\r\nCodec payload type changes\r\n\n\r\n\n\n\r\nPlaying compressed announcements\r\n\r\n \r\n\n\n\r\nRingback tones\r\n\r\n \r\n\n\nPacket Service Profile option \'transcode only\'\r\nDSPs are needed when PSP Packet To Packet Control object is set to \'Transcode only\'.\r\n\n\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNote\r\nThe term \"pass-through\" refers to the case when the SBC relays the media end-to-end and no DSPs are used.\r\nApplications/Features not Requiring DSPs\r\nDSPs are not required for the following features:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nRFC 2833/4733 to OOB interworking\n\r\nSRTP\n\r\nRTCP (although RTCP termination is only recommended for transcoded calls)\n\r\nMedia policing\n\r\nSignaling (Call and Registration) traffic policing\n\r\nNAT traversal including ICE\n\r\nRFC 2833/4733 based dial string applications\n\r\nG.711 announcements\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n ',1,'2019-09-13 16:57:12','2019-09-13 16:57:12','managing-dsp','basic-stuff','version','','Initial publish',1);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '0',
  `markdown` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_restricted_index` (`restricted`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,2,0,'Create IP Plan','create-ip-plan','<p id=\"bkmrk-skip-to-end-of-metad\"><a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Creating+an+IP+Plan#page-metadata-end\">Skip to end of metadata</a></p>\r\n<div id=\"bkmrk-\"></div>\r\n<p id=\"bkmrk-go-to-start-of-metad\"><a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Creating+an+IP+Plan#page-metadata-start\">Go to start of metadata</a></p>\r\n<div id=\"bkmrk--0\"></div>\r\n<p id=\"bkmrk-once-you-have-succes\">Once you have successfully installed the SBC 5000 series and/or SBC 7000 hardware, you are ready to install the application software. As a part of this installation, you are prompted for configuration information by the SBC.</p>\r\n<p id=\"bkmrk-create-an-ip-plan-pr\">Create an IP Plan prior to installing the software. The IP Plan is generally completed using an Excel spreadsheet, and is intended to capture information such as hostname, logical IP addresses, and so forth to help configure the SBC system. It is important to complete this document (even for simple networks) so that your system information is readily available when you begin installing the software, and to maintain this information as a reference for future configuration changes.</p>\r\n<p id=\"bkmrk-if-needed%2C-please-co\">If needed, please contact Sonus TAC team for an IP Plan use case.</p>\r\n<p id=\"bkmrk-the-steps-for-instal\">The steps for installing the application are included in section <a href=\"https://support.sonus.net/display/SBXDOC62/Installing+SBC+Application\">Installing SBC Application</a>.</p>\r\n<h2 id=\"bkmrk-example-ip-plan-deta\">Example IP Plan Details</h2>\r\n<p id=\"bkmrk-the-following-exampl\">The following example is for a redundant High Availability (HA) configuration with one standby SBC protecting the active SBC.</p>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p class=\"title\" id=\"bkmrk-caution\">Caution</p>\r\n<p id=\"bkmrk-%C2%A0ensure-that-the-man\"> Ensure that the Management and Media IP addresses are on different subnets to avoid potential conflicts.</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<div id=\"bkmrk-click-here%C2%A0to-downlo\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"noprint\">\n<strong><a href=\"https://support.sonus.net/download/attachments/125864975/SBC%20IP%20Plan.xlsx?version=1&amp;modificationDate=1539977850000&amp;api=v2\" rel=\"nofollow\" data-linked-resource-id=\"161219585\" data-linked-resource-version=\"1\" data-linked-resource-type=\"attachment\" data-linked-resource-default-alias=\"SBC IP Plan.xlsx\" data-nice-type=\"Excel Spreadsheet\" data-linked-resource-content-type=\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\" data-linked-resource-container-id=\"125864975\" data-linked-resource-container-version=\"11\">Click here</a></strong> to download an example spreadsheet.</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-2\"> </p>\r\n<div id=\"bkmrk-field-description-ex\">\r\n<div>\r\n<div>\r\n<table class=\"confluenceTable\">\n<colgroup>\n<col>\n<col>\n<col>\n<col>\n</colgroup>\n<tbody>\n<tr>\n<th class=\"confluenceTh\">Field</th>\r\n<th class=\"confluenceTh\">Description</th>\r\n<th class=\"confluenceTh\" colspan=\"1\">Example/Recommendation</th>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>System Name</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>This is the name of the overall SBC system, and is used as the designation of all servers within HA pair. Refer to <a href=\"https://support.sonus.net/display/SBXDOC62/System+Name+and+Hostname+Naming+Conventions\">System Name and Hostname Naming Conventions</a> for naming conventions.</p>\r\n<p>If external routing is used, the system name is referred to by the PSX.</p>\r\n<p>You <em>MUST</em> use the same name on the Active and Standby system installation.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DALSBC01</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Time zone</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>The time zone used in your billing records. Can be the time zone of the location.</p>\r\n<p>Note: changing the time zone will cause the application to restart.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">gmtMinus06-Central- US</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Contact Information</strong></td>\r\n<td class=\"confluenceTd\">Who to contact about the system</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Joe Smith 888-555-1212</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Location</strong></td>\r\n<td class=\"confluenceTd\">Location of the system</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">Dallas, TX</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>NTP Primary</strong></td>\r\n<td class=\"confluenceTd\">The IP address of the NTP server. A NTP source is necessary for correct system operation.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>10.11.12.2/24<br>or<br>fd00:10:6b50:4130:1</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>NTP Secondary</strong></td>\r\n<td class=\"confluenceTd\">The IP address of the NTP server. A NTP source is necessary for correct system operation.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.12.3/24<br>or<br>fd00:10:6b50:4130:2</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Logical Management IP Address</strong></td>\r\n<td class=\"confluenceTd\">\r\n<p>This IP address can be used to access the active unit, it is not tied to a particular physical unit.<br>When a unit becomes active, this IP address “moves” to that unit.</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.13.3<br>(or any IP address within the Management IP subnet)</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\"><strong>Logical Management IP Address - Name</strong></td>\r\n<td class=\"confluenceTd\">The name (used of reference only) of the Logical Management IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DALNBS01_MGMT</td>\r\n</tr>\n<tr>\n<th class=\"confluenceTh\">Unit A and Unit B:</th>\r\n<th class=\"confluenceTh\">Configure on Unit A only (IP address moves from one Unit to the other on a fail over)</th>\r\n<th class=\"confluenceTh\" colspan=\"1\"> </th>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\"><strong>Packet Ports</strong></td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 IP Address</td>\r\n<td class=\"confluenceTd\">\r\n<p>The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.14.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 VLAN</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface (optional).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">100</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 0 Netmask</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 IP Address</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.15.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 VLAN</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface (optional).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">200</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Packet Port 1 Netmask</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 IP Address*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.16.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 VLAN*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface. This is optional.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">300</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 2 Netmask*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 IP Address*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The IP address of the interface. SIP and RTP traffic use this physical interface.<br>This IP address is used for RTP traffic (SIP traffic uses a different IP address).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.17.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 VLAN*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The VLAN tag of the interface. This is optional.</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">400</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">\r\n<p>Packet Port 3 Netmask*</p>\r\n</td>\r\n<td class=\"confluenceTd\">The Netmask of the interface (in “prefix” format).</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">/24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\"><em>    * Packet Port 2 and 3 are not applicable for SBC 51x0 platforms.</em></td>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\">\r\n<p><strong>HA Ports</strong> (not applicable for stand-alone configuration)</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\">\r\n<p>The HA ports of active and standby SBC nodes should be on the same subnet when the boxes are not directly connected.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Active CE IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Specifies the active VM IP address in HA pair. The Active CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Standby CE.</p>\r\n<p>These Inter CE IP addresses should be in a different network from the management network.</p>\r\n<p>Recommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>169.254.99.1 (default)</p>\r\nNote: Active and Standby CE IP addresses must be in the same subnet.<br><p> </p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Standby CE IP</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Specifies the standby VM IP address in HA pair. The Standby CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Active CE.</p>\r\n<p>These Inter CE IP addresses should be in a different network from the management network.</p>\r\n<p>Recommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">169.254.88.1 (default)</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">HA Interface Mask (Inter CE Prefix)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Netmask of the network in which the Active/Standby IPs are configured.</p>\r\n<p>Note: If default Active and Standby CE IP addresses are not used, use Inter CE prefix as \'255.255.255.0\'.</p>\r\n<p> </p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">255.255.0.0 (default)</td>\r\n</tr>\n<tr>\n<td class=\"highlight-green confluenceTd\" colspan=\"3\" data-highlight-colour=\"green\">\r\n<p><strong><br>Management Ports</strong></p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"3\">\r\n<p>The configuration of the IP management interface is performed as part of the initial-bootscript, and is not meant to be re-configured through the EMA. Each SBC has a redundant pair of physical ports for managing traffic.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.11.13.10</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv4 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv4</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Management Interface0 IPv4<br>(Default Gateway)</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>The Default Gateway IPv4 address connected to the Active management interface</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>10.11.13.1</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4150::23</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv6</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">64</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface0 IPv6<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv6 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4150::1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv4 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.12.13.10</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv4</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">24</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv4<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv4 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">10.12.13.1</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The physical management IPv6 address</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4160::23</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6 Address Prefix</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">IP Prefix of the network configured on the Active management IPv6</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">64</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Management Interface1 IPv6<br>(Default Gateway)</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">The Default Gateway IPv6 address connected to the Active management interface</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">fd00:10:6b50:4160::1</td>\r\n</tr>\n</tbody>\n</table>\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-3\"> </p>\r\n<p id=\"bkmrk-proceed-to-configuri\">Proceed to configuring your SBC 5000 series or SBC 7000 platform:</p>\r\n<p id=\"bkmrk-configuring-the-sbc-\"><strong><a href=\"https://support.sonus.net/display/SBXDOC62/Configuring+the+SBC+5000+Series+Platform\" rel=\"nofollow\">Configuring the SBC 5000 Series Platform</a></strong></p>\r\n<p id=\"bkmrk-configuring-the-sbc--0\"><strong><a href=\"https://support.sonus.net/display/SBXDOC62/Configuring+the+SBC+7000+Platform\" rel=\"nofollow\">Configuring the SBC 7000 Platform</a></strong></p>','Skip to end of metadata\r\n\r\nGo to start of metadata\r\n\r\nOnce you have successfully installed the SBC 5000 series and/or SBC 7000 hardware, you are ready to install the application software. As a part of this installation, you are prompted for configuration information by the SBC.\r\nCreate an IP Plan prior to installing the software. The IP Plan is generally completed using an Excel spreadsheet, and is intended to capture information such as hostname, logical IP addresses, and so forth to help configure the SBC system. It is important to complete this document (even for simple networks) so that your system information is readily available when you begin installing the software, and to maintain this information as a reference for future configuration changes.\r\nIf needed, please contact Sonus TAC team for an IP Plan use case.\r\nThe steps for installing the application are included in section Installing SBC Application.\r\nExample IP Plan Details\r\nThe following example is for a redundant High Availability (HA) configuration with one standby SBC protecting the active SBC.\r\n \r\nCaution\r\n Ensure that the Management and Media IP addresses are on different subnets to avoid potential conflicts.\r\n \r\n \r\n\r\n\r\n\nClick here to download an example spreadsheet.\r\n\r\n\r\n \r\n\r\n\r\n\r\n\n\n\n\n\n\n\n\n\nField\r\nDescription\r\nExample/Recommendation\r\n\n\nSystem Name\r\n\r\nThis is the name of the overall SBC system, and is used as the designation of all servers within HA pair. Refer to System Name and Hostname Naming Conventions for naming conventions.\r\nIf external routing is used, the system name is referred to by the PSX.\r\nYou MUST use the same name on the Active and Standby system installation.\r\n\r\nDALSBC01\r\n\n\nTime zone\r\n\r\nThe time zone used in your billing records. Can be the time zone of the location.\r\nNote: changing the time zone will cause the application to restart.\r\n\r\ngmtMinus06-Central- US\r\n\n\nContact Information\r\nWho to contact about the system\r\n\r\nJoe Smith 888-555-1212\r\n\r\n\n\nLocation\r\nLocation of the system\r\nDallas, TX\r\n\n\nNTP Primary\r\nThe IP address of the NTP server. A NTP source is necessary for correct system operation.\r\n\r\n10.11.12.2/24orfd00:10:6b50:4130:1\r\n\r\n\n\nNTP Secondary\r\nThe IP address of the NTP server. A NTP source is necessary for correct system operation.\r\n10.11.12.3/24orfd00:10:6b50:4130:2\r\n\n\nLogical Management IP Address\r\n\r\nThis IP address can be used to access the active unit, it is not tied to a particular physical unit.When a unit becomes active, this IP address “moves” to that unit.\r\n\r\n10.11.13.3(or any IP address within the Management IP subnet)\r\n\n\nLogical Management IP Address - Name\r\nThe name (used of reference only) of the Logical Management IP\r\nDALNBS01_MGMT\r\n\n\nUnit A and Unit B:\r\nConfigure on Unit A only (IP address moves from one Unit to the other on a fail over)\r\n \r\n\n\nPacket Ports\r\n\n\nPacket Port 0 IP Address\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n\r\n10.11.14.1\r\n\n\nPacket Port 0 VLAN\r\nThe VLAN tag of the interface (optional).\r\n100\r\n\n\nPacket Port 0 Netmask\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\nPacket Port 1 IP Address\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.15.1\r\n\n\nPacket Port 1 VLAN\r\nThe VLAN tag of the interface (optional).\r\n200\r\n\n\nPacket Port 1 Netmask\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n\r\nPacket Port 2 IP Address*\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.16.1\r\n\n\n\r\nPacket Port 2 VLAN*\r\n\r\nThe VLAN tag of the interface. This is optional.\r\n300\r\n\n\n\r\nPacket Port 2 Netmask*\r\n\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n\r\nPacket Port 3 IP Address*\r\n\r\nThe IP address of the interface. SIP and RTP traffic use this physical interface.This IP address is used for RTP traffic (SIP traffic uses a different IP address).\r\n10.11.17.1\r\n\n\n\r\nPacket Port 3 VLAN*\r\n\r\nThe VLAN tag of the interface. This is optional.\r\n400\r\n\n\n\r\nPacket Port 3 Netmask*\r\n\r\nThe Netmask of the interface (in “prefix” format).\r\n/24\r\n\n\n    * Packet Port 2 and 3 are not applicable for SBC 51x0 platforms.\r\n\n\n\r\nHA Ports (not applicable for stand-alone configuration)\r\n\r\n\n\n\r\nThe HA ports of active and standby SBC nodes should be on the same subnet when the boxes are not directly connected.\r\n\r\n\n\nActive CE IP\r\n\r\nSpecifies the active VM IP address in HA pair. The Active CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Standby CE.\r\nThese Inter CE IP addresses should be in a different network from the management network.\r\nRecommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).\r\n\r\n\r\n169.254.99.1 (default)\r\nNote: Active and Standby CE IP addresses must be in the same subnet. \r\n\r\n\n\nStandby CE IP\r\n\r\nSpecifies the standby VM IP address in HA pair. The Standby CE uses this IP which is configured to the HA port to communicate/synchronize/mirror the data with the Active CE.\r\nThese Inter CE IP addresses should be in a different network from the management network.\r\nRecommendation is to use default value when configured for single HA pair on HA subnet (subnet for HA ports of active/standby).\r\n\r\n169.254.88.1 (default)\r\n\n\nHA Interface Mask (Inter CE Prefix)\r\n\r\nNetmask of the network in which the Active/Standby IPs are configured.\r\nNote: If default Active and Standby CE IP addresses are not used, use Inter CE prefix as \'255.255.255.0\'.\r\n \r\n\r\n255.255.0.0 (default)\r\n\n\n\r\nManagement Ports\r\n\r\n\n\n\r\nThe configuration of the IP management interface is performed as part of the initial-bootscript, and is not meant to be re-configured through the EMA. Each SBC has a redundant pair of physical ports for managing traffic.\r\n\r\n\n\nManagement Interface0 IPv4 address\r\nThe physical management IPv4 address\r\n10.11.13.10\r\n\n\nManagement Interface0 IPv4 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv4\r\n24\r\n\n\n\r\nManagement Interface0 IPv4(Default Gateway)\r\n\r\n\r\nThe Default Gateway IPv4 address connected to the Active management interface\r\n\r\n\r\n10.11.13.1\r\n\r\n\n\nManagement Interface0 IPv6 address\r\nThe physical management IPv6 address\r\nfd00:10:6b50:4150::23\r\n\n\nManagement Interface0 IPv6 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv6\r\n64\r\n\n\nManagement Interface0 IPv6(Default Gateway)\r\nThe Default Gateway IPv6 address connected to the Active management interface\r\nfd00:10:6b50:4150::1\r\n\n\nManagement Interface1 IPv4 address\r\nThe physical management IPv4 address\r\n10.12.13.10\r\n\n\nManagement Interface1 IPv4 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv4\r\n24\r\n\n\nManagement Interface1 IPv4(Default Gateway)\r\nThe Default Gateway IPv4 address connected to the Active management interface\r\n10.12.13.1\r\n\n\nManagement Interface1 IPv6 address\r\nThe physical management IPv6 address\r\nfd00:10:6b50:4160::23\r\n\n\nManagement Interface1 IPv6 Address Prefix\r\nIP Prefix of the network configured on the Active management IPv6\r\n64\r\n\n\nManagement Interface1 IPv6(Default Gateway)\r\nThe Default Gateway IPv6 address connected to the Active management interface\r\nfd00:10:6b50:4160::1\r\n\n\n\n\r\n\r\n\r\n \r\nProceed to configuring your SBC 5000 series or SBC 7000 platform:\r\nConfiguring the SBC 5000 Series Platform\r\nConfiguring the SBC 7000 Platform',1,'2019-09-13 16:53:39','2019-09-13 16:56:10',1,1,0,0,'',1,0),(2,2,0,'Managing DSP','managing-dsp','<h1 id=\"bkmrk-managing-dsps\" class=\"with-breadcrumbs\"><a href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs\">Managing DSPs</a></h1>\r\n<div id=\"bkmrk-\"></div>\r\n<div id=\"bkmrk-skip-to-end-of-metad\">\r\n<div>\r\n<div></div>\r\n<a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#page-metadata-end\">Skip to end of metadata</a>\r\n<div></div>\r\n<a class=\"assistive\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#page-metadata-start\">Go to start of metadata</a>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0\"> </p>\r\n<p id=\"bkmrk-in-this-section%3A\">In this section:</p>\r\n<p id=\"bkmrk-%C2%A0-0\"> </p>\r\n<div id=\"bkmrk-applications%2Ffeature\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"two-equal\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"panel\">\r\n<div>\r\n<div data-headerelements=\"H1,H2,H3,H4,H5,H6,H7\" data-hasbody=\"false\" data-macro-name=\"toc\">\r\n<ul>\n<li><span class=\"toc-item-body\" data-outline=\"1\"><a class=\"toc-link\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#ManagingDSPs-Applications/FeaturesRequiringDSPs\">Applications/Features Requiring DSPs</a></span></li>\r\n<li><span class=\"toc-item-body\" data-outline=\"2\"><a class=\"toc-link\" href=\"https://support.sonus.net/display/SBXDOC62/Managing+DSPs#ManagingDSPs-Applications/FeaturesnotRequiringDSPs\">Applications/Features not Requiring DSPs</a></span></li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-1\"> </p>\r\n<p id=\"bkmrk-related-articles%3A\">Related articles:</p>\r\n<div id=\"bkmrk-managing-sbc-node-lo\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"two-equal\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div data-hasbody=\"true\" data-macro-name=\"info\">\r\n<div>\r\n<ul>\n<li><a href=\"https://support.sonus.net/display/SBXDOC62/Managing+SBC+Node-Locked+Licenses+for+HW+and+SWe+SBCs\">Managing SBC Node-Locked Licenses for HW and SWe SBCs</a></li>\r\n<li>\r\n<p><a href=\"https://support.sonus.net/display/SBXDOC62/Supported+Codecs+and+Transcoding\">Supported Codecs and Transcoding</a></p>\r\n<p class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"hide-if\"><span class=\"confluence-link\"> </span><a href=\"https://support.sonus.net/login.action?os_destination=%2Fdisplay%2FSBXDOC50%2FAdditional%2BDocumentation\" rel=\"nofollow\">DSP Channel Densities for SBC 5000 and 7000 Series</a></p>\r\n</li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-2\"> </p>\r\n<p id=\"bkmrk-the-sbc-core%C2%A0provide\">The SBC Core provides a wide range of high density digital signal processor (DSP) modules and a comprehensive set of converged, voice, video, vocoder, fax and data media processing functions. This section provides guidance regarding when it is necessary to use DSPs on SBC 5000 series devices (5100, 5110, 5200, 5210, 5400) and the SBC 7000 device according to protocol usage.</p>\r\n<h2 id=\"bkmrk-applications%2Ffeature-0\">Applications/Features Requiring DSPs</h2>\r\n<p id=\"bkmrk-dsps-are-required-fo\">DSPs are required for the following features. For licensing details, refer to \"SBC Protocol Licenses\" section on the page <a href=\"https://support.sonus.net/display/SBXDOC62/Managing+SBC+Node-Locked+Licenses+for+HW+and+SWe+SBCs\">Managing SBC Node-Locked Licenses for HW and SWe SBCs</a>.</p>\r\n<p id=\"bkmrk-table%C2%A0%3A%C2%A0applications\"><strong>Table <span class=\"captionTable\">:</span></strong> Applications/Features Requiring DSPs</p>\r\n<div id=\"bkmrk-%C2%A0-feature-examples-c\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<div></div>\r\n<span class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"caption\"> </span>\r\n<div>\r\n<table class=\"confluenceTable tablesorter tablesorter-default\">\n<thead><tr class=\"tablesorter-headerRow\">\n<th class=\"confluenceTh sortableHeader\" tabindex=\"0\" data-column=\"0\">\r\n<div>Feature</div>\r\n</th>\r\n<th class=\"confluenceTh sortableHeader\" tabindex=\"0\" data-column=\"1\">\r\n<div>Examples</div>\r\n</th>\r\n</tr></thead>\n<tbody>\n<tr>\n<td class=\"confluenceTd\">Codec interworking</td>\r\n<td class=\"confluenceTd\">\r\n<p>DSPs are needed when applying codec interworking. Below are but a few examples.</p>\r\n<ul>\n<li>G711 to G729</li>\r\n<li>G722 to AMR-WB</li>\r\n<li>T38 fax to G711</li>\r\n</ul>\n<p> </p>\r\n<p class=\"title\">Note</p>\r\n<p>Refer to <a href=\"https://support.sonus.net/display/SBXDOC62/Supported+Codecs+and+Transcoding\">Supported Codecs and Transcoding</a> for codec details.</p>\r\n<p class=\"conf-macro output-inline\" data-hasbody=\"true\" data-macro-name=\"hide-if\"><span class=\"confluence-link\">Refer to </span><a href=\"https://support.sonus.net/login.action?os_destination=%2Fdisplay%2FSBXDOC50%2FAdditional%2BDocumentation\" rel=\"nofollow\"><span class=\"confluence-link\">DSP Channel Densities for SBC 5000 and 7000 Series</span></a> for DSP density details.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Fax and Modem Tone detections</td>\r\n<td class=\"confluenceTd\">\r\n<p>Fax or Modem Tone detection can trigger modifications to calls in following scenarios, for example.</p>\r\n<ul>\n<li>Calls to T.38 pass-through</li>\r\n<li>Calls to G.711 pass-through</li>\r\n<li>G.711 to T.38 transcoded</li>\r\n</ul>\n<p class=\"title\">Note</p>\r\n<p>These modifications can also be triggered via re-INVITEs triggered by remote Gateways that detect the tones.</p>\r\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\">Interworking in-band DTMF to Out-Of-Band (OOB) or RFC 2833/4733 DTMF events</td>\r\n<td class=\"confluenceTd\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Detecting in-band DTMF for dial string applications</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">When the basic codec is the same on both legs</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>DSPs are needed for:</p>\r\n<ol>\n<li>Packet Size interworking – 10 ms G.711 interworked to 20 ms G.711</li>\r\n<li>Silence Suppression interworking</li>\r\n<li>RFC 2833/4733 Payload conversion – G.729 with DTMF PT 101 interworked to G.729 with DTMF PT 102</li>\r\n<li>Codec-specific attribute interworking – interworking AMR-WB with mode-set 1, 2, 3 with AMR-WB using mode-set 2, 3, 4, 5.</li>\r\n<li>Interworking T.38 V0 to T.38 V3</li>\r\n<li>Codec payload type changes</li>\r\n</ol>\n</td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Playing compressed announcements</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">\r\n<p>Ringback tones</p>\r\n</td>\r\n<td class=\"confluenceTd\" colspan=\"1\"> </td>\r\n</tr>\n<tr>\n<td class=\"confluenceTd\" colspan=\"1\">Packet Service Profile option \'transcode only\'</td>\r\n<td class=\"confluenceTd\" colspan=\"1\">DSPs are needed when PSP Packet To Packet Control object is set to \'Transcode only\'.</td>\r\n</tr>\n</tbody>\n</table>\n</div>\r\n<div data-hasbody=\"true\" data-macro-name=\"info\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"title\" id=\"bkmrk-note\">Note</p>\r\n<p id=\"bkmrk-the-term-%22pass-throu\">The term \"pass-through\" refers to the case when the SBC relays the media end-to-end and no DSPs are used.</p>\r\n<h2 id=\"bkmrk-applications%2Ffeature-1\">Applications/Features not Requiring DSPs</h2>\r\n<p id=\"bkmrk-dsps-are-not-require\">DSPs are not required for the following features:</p>\r\n<div id=\"bkmrk-rfc-2833%2F4733-to-oob\">\r\n<div>\r\n<div>\r\n<div>\r\n<div data-layout=\"single\">\r\n<div data-type=\"normal\">\r\n<div>\r\n<ul>\n<li>RFC 2833/4733 to OOB interworking<br><br>\n</li>\r\n<li>SRTP<br><br>\n</li>\r\n<li>RTCP (although RTCP termination is only recommended for transcoded calls)<br><br>\n</li>\r\n<li>Media policing<br><br>\n</li>\r\n<li>Signaling (Call and Registration) traffic policing<br><br>\n</li>\r\n<li>NAT traversal including ICE<br><br>\n</li>\r\n<li>RFC 2833/4733 based dial string applications<br><br>\n</li>\r\n<li>G.711 announcements</li>\r\n</ul>\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p id=\"bkmrk-%C2%A0-3\"> </p>','Managing DSPs\r\n\r\n\r\n\r\n\r\nSkip to end of metadata\r\n\r\nGo to start of metadata\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nIn this section:\r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nApplications/Features Requiring DSPs\r\nApplications/Features not Requiring DSPs\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nRelated articles:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nManaging SBC Node-Locked Licenses for HW and SWe SBCs\r\n\r\nSupported Codecs and Transcoding\r\n DSP Channel Densities for SBC 5000 and 7000 Series\r\n\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\nThe SBC Core provides a wide range of high density digital signal processor (DSP) modules and a comprehensive set of converged, voice, video, vocoder, fax and data media processing functions. This section provides guidance regarding when it is necessary to use DSPs on SBC 5000 series devices (5100, 5110, 5200, 5210, 5400) and the SBC 7000 device according to protocol usage.\r\nApplications/Features Requiring DSPs\r\nDSPs are required for the following features. For licensing details, refer to \"SBC Protocol Licenses\" section on the page Managing SBC Node-Locked Licenses for HW and SWe SBCs.\r\nTable : Applications/Features Requiring DSPs\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n\r\n\n\n\r\nFeature\r\n\r\n\r\nExamples\r\n\r\n\n\n\nCodec interworking\r\n\r\nDSPs are needed when applying codec interworking. Below are but a few examples.\r\n\nG711 to G729\r\nG722 to AMR-WB\r\nT38 fax to G711\r\n\n \r\nNote\r\nRefer to Supported Codecs and Transcoding for codec details.\r\nRefer to DSP Channel Densities for SBC 5000 and 7000 Series for DSP density details.\r\n\r\n\n\nFax and Modem Tone detections\r\n\r\nFax or Modem Tone detection can trigger modifications to calls in following scenarios, for example.\r\n\nCalls to T.38 pass-through\r\nCalls to G.711 pass-through\r\nG.711 to T.38 transcoded\r\n\nNote\r\nThese modifications can also be triggered via re-INVITEs triggered by remote Gateways that detect the tones.\r\n\r\n\n\nInterworking in-band DTMF to Out-Of-Band (OOB) or RFC 2833/4733 DTMF events\r\n \r\n\n\n\r\nDetecting in-band DTMF for dial string applications\r\n\r\n \r\n\n\nWhen the basic codec is the same on both legs\r\n\r\nDSPs are needed for:\r\n\nPacket Size interworking – 10 ms G.711 interworked to 20 ms G.711\r\nSilence Suppression interworking\r\nRFC 2833/4733 Payload conversion – G.729 with DTMF PT 101 interworked to G.729 with DTMF PT 102\r\nCodec-specific attribute interworking – interworking AMR-WB with mode-set 1, 2, 3 with AMR-WB using mode-set 2, 3, 4, 5.\r\nInterworking T.38 V0 to T.38 V3\r\nCodec payload type changes\r\n\n\r\n\n\n\r\nPlaying compressed announcements\r\n\r\n \r\n\n\n\r\nRingback tones\r\n\r\n \r\n\n\nPacket Service Profile option \'transcode only\'\r\nDSPs are needed when PSP Packet To Packet Control object is set to \'Transcode only\'.\r\n\n\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNote\r\nThe term \"pass-through\" refers to the case when the SBC relays the media end-to-end and no DSPs are used.\r\nApplications/Features not Requiring DSPs\r\nDSPs are not required for the following features:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\nRFC 2833/4733 to OOB interworking\n\r\nSRTP\n\r\nRTCP (although RTCP termination is only recommended for transcoded calls)\n\r\nMedia policing\n\r\nSignaling (Call and Registration) traffic policing\n\r\nNAT traversal including ICE\n\r\nRFC 2833/4733 based dial string applications\n\r\nG.711 announcements\r\n\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n ',2,'2019-09-13 16:56:36','2019-09-13 16:57:12',1,1,0,0,'',1,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(66,3),(67,3),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(66,4),(67,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (19,'settings-manage','Manage Settings',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(20,'users-manage','Manage Users',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(24,'book-create-all','Create All Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(25,'book-create-own','Create Own Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(26,'book-update-all','Update All Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(27,'book-update-own','Update Own Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(28,'book-delete-all','Delete All Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(29,'book-delete-own','Delete Own Books',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(30,'page-create-all','Create All Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(31,'page-create-own','Create Own Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(32,'page-update-all','Update All Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(33,'page-update-own','Update Own Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(34,'page-delete-all','Delete All Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(35,'page-delete-own','Delete Own Pages',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(36,'chapter-create-all','Create All Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(37,'chapter-create-own','Create Own Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(38,'chapter-update-all','Update All Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(39,'chapter-update-own','Update Own Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(40,'chapter-delete-all','Delete All Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(41,'chapter-delete-own','Delete Own Chapters',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(42,'image-create-all','Create All Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(43,'image-create-own','Create Own Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(44,'image-update-all','Update All Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(45,'image-update-own','Update Own Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(46,'image-delete-all','Delete All Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(47,'image-delete-own','Delete Own Images',NULL,'2019-09-13 16:39:23','2019-09-13 16:39:23'),(48,'book-view-all','View All Books',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(49,'book-view-own','View Own Books',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(50,'page-view-all','View All Pages',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(51,'page-view-own','View Own Pages',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(52,'chapter-view-all','View All Chapters',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(53,'chapter-view-own','View Own Chapters',NULL,'2019-09-13 16:39:25','2019-09-13 16:39:25'),(54,'attachment-create-all','Create All Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(55,'attachment-create-own','Create Own Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(56,'attachment-update-all','Update All Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(57,'attachment-update-own','Update Own Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(58,'attachment-delete-all','Delete All Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(59,'attachment-delete-own','Delete Own Attachments',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27'),(60,'comment-create-all','Create All Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(61,'comment-create-own','Create Own Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(62,'comment-update-all','Update All Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(63,'comment-update-own','Update Own Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(64,'comment-delete-all','Delete All Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(65,'comment-delete-own','Delete Own Comments',NULL,'2019-09-13 16:39:28','2019-09-13 16:39:28'),(66,'bookshelf-view-all','View All BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(67,'bookshelf-view-own','View Own BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(68,'bookshelf-create-all','Create All BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(70,'bookshelf-update-all','Update All BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2019-09-13 16:39:30','2019-09-13 16:39:30'),(74,'templates-manage','Manage Page Templates',NULL,'2019-09-13 16:39:31','2019-09-13 16:39:31');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,4);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_auth_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','Administrator of the whole application','2019-09-13 16:39:20','2019-09-13 16:39:20','admin',''),(2,'editor','Editor','User can edit Books, Chapters & Pages','2019-09-13 16:39:20','2019-09-13 16:39:20','',''),(3,'viewer','Viewer','User can view books & their content behind authentication','2019-09-13 16:39:20','2019-09-13 16:39:20','',''),(4,'public','Public','The role given to public visitors if allowed','2019-09-13 16:39:26','2019-09-13 16:39:26','public','');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (1,'Porta','BookStack\\Bookshelf',1,15),(2,'One','BookStack\\Bookshelf',1,15),(5,'Sonus','BookStack\\Book',1,10),(6,'SBC','BookStack\\Book',1,10),(7,'Sonus','BookStack\\Bookshelf',3,15),(8,'SBC','BookStack\\Bookshelf',3,15),(9,'CIsco','BookStack\\Bookshelf',4,15),(10,'CUCM','BookStack\\Bookshelf',4,15),(11,'Basic','BookStack\\Book',2,10),(12,'Stuff','BookStack\\Book',2,10),(13,'Create','BookStack\\Page',1,5),(14,'IP','BookStack\\Page',1,5),(15,'Plan','BookStack\\Page',1,5),(16,'Skip','BookStack\\Page',1,1),(17,'to','BookStack\\Page',1,24),(18,'end','BookStack\\Page',1,1),(19,'of','BookStack\\Page',1,34),(20,'metadata\r','BookStack\\Page',1,2),(21,'\r','BookStack\\Page',1,109),(22,'Go','BookStack\\Page',1,1),(23,'start','BookStack\\Page',1,1),(24,'Once','BookStack\\Page',1,1),(25,'you','BookStack\\Page',1,4),(26,'have','BookStack\\Page',1,1),(27,'successfully','BookStack\\Page',1,1),(28,'installed','BookStack\\Page',1,1),(29,'the SBC','BookStack\\Page',1,1),(30,'5000','BookStack\\Page',1,3),(31,'series','BookStack\\Page',1,2),(32,'and/or','BookStack\\Page',1,1),(33,'SBC','BookStack\\Page',1,14),(34,'7000','BookStack\\Page',1,3),(35,'hardware','BookStack\\Page',1,1),(36,'are','BookStack\\Page',1,8),(37,'ready','BookStack\\Page',1,1),(38,'install','BookStack\\Page',1,1),(39,'the','BookStack\\Page',1,71),(40,'application','BookStack\\Page',1,3),(41,'software','BookStack\\Page',1,3),(42,'As','BookStack\\Page',1,1),(43,'a','BookStack\\Page',1,13),(44,'part','BookStack\\Page',1,2),(45,'this','BookStack\\Page',1,10),(46,'installation','BookStack\\Page',1,2),(47,'prompted','BookStack\\Page',1,1),(48,'for','BookStack\\Page',1,19),(49,'configuration','BookStack\\Page',1,5),(50,'information','BookStack\\Page',1,4),(51,'by','BookStack\\Page',1,2),(52,'Create','BookStack\\Page',1,1),(53,'an','BookStack\\Page',1,4),(54,'IP','BookStack\\Page',1,42),(55,'Plan','BookStack\\Page',1,4),(56,'prior','BookStack\\Page',1,1),(57,'installing','BookStack\\Page',1,3),(58,'The','BookStack\\Page',1,29),(59,'is','BookStack\\Page',1,24),(60,'generally','BookStack\\Page',1,1),(61,'completed','BookStack\\Page',1,1),(62,'using','BookStack\\Page',1,1),(63,'Excel','BookStack\\Page',1,1),(64,'spreadsheet','BookStack\\Page',1,2),(65,'and','BookStack\\Page',1,17),(66,'intended','BookStack\\Page',1,1),(67,'capture','BookStack\\Page',1,1),(68,'such','BookStack\\Page',1,1),(69,'as','BookStack\\Page',1,5),(70,'hostname','BookStack\\Page',1,1),(71,'logical','BookStack\\Page',1,1),(72,'addresses','BookStack\\Page',1,6),(73,'so','BookStack\\Page',1,2),(74,'forth','BookStack\\Page',1,1),(75,'help','BookStack\\Page',1,1),(76,'configure','BookStack\\Page',1,1),(77,'system','BookStack\\Page',1,7),(78,'It','BookStack\\Page',1,1),(79,'important','BookStack\\Page',1,1),(80,'complete','BookStack\\Page',1,1),(81,'document','BookStack\\Page',1,1),(82,'even','BookStack\\Page',1,1),(83,'simple','BookStack\\Page',1,1),(84,'networks','BookStack\\Page',1,1),(85,'that','BookStack\\Page',1,3),(86,'your','BookStack\\Page',1,3),(87,'readily','BookStack\\Page',1,1),(88,'available','BookStack\\Page',1,1),(89,'when','BookStack\\Page',1,4),(90,'begin','BookStack\\Page',1,1),(91,'maintain','BookStack\\Page',1,1),(92,'reference','BookStack\\Page',1,2),(93,'future','BookStack\\Page',1,1),(94,'changes','BookStack\\Page',1,1),(95,'If','BookStack\\Page',1,3),(96,'needed','BookStack\\Page',1,1),(97,'please','BookStack\\Page',1,1),(98,'contact','BookStack\\Page',1,2),(99,'Sonus','BookStack\\Page',1,1),(100,'TAC','BookStack\\Page',1,1),(101,'team','BookStack\\Page',1,1),(102,'use','BookStack\\Page',1,8),(103,'case','BookStack\\Page',1,1),(104,'steps','BookStack\\Page',1,1),(105,'included','BookStack\\Page',1,1),(106,'in','BookStack\\Page',1,10),(107,'section Installing','BookStack\\Page',1,1),(108,'Application','BookStack\\Page',1,1),(109,'Example','BookStack\\Page',1,1),(110,'Details\r','BookStack\\Page',1,1),(111,'following','BookStack\\Page',1,1),(112,'example','BookStack\\Page',1,2),(113,'redundant','BookStack\\Page',1,2),(114,'High','BookStack\\Page',1,1),(115,'Availability','BookStack\\Page',1,1),(116,'HA','BookStack\\Page',1,15),(117,'with','BookStack\\Page',1,3),(118,'one','BookStack\\Page',1,2),(119,'standby','BookStack\\Page',1,3),(120,'protecting','BookStack\\Page',1,1),(121,'active','BookStack\\Page',1,5),(122,' \r','BookStack\\Page',1,8),(123,'Caution\r','BookStack\\Page',1,1),(124,' Ensure','BookStack\\Page',1,1),(125,'Management','BookStack\\Page',1,18),(126,'Media','BookStack\\Page',1,1),(127,'on','BookStack\\Page',1,11),(128,'different','BookStack\\Page',1,7),(129,'subnets','BookStack\\Page',1,1),(130,'avoid','BookStack\\Page',1,1),(131,'potential','BookStack\\Page',1,1),(132,'conflicts','BookStack\\Page',1,1),(133,'Click','BookStack\\Page',1,1),(134,'here to','BookStack\\Page',1,1),(135,'download','BookStack\\Page',1,1),(136,'Field\r','BookStack\\Page',1,1),(137,'Description\r','BookStack\\Page',1,1),(138,'Example/Recommendation\r','BookStack\\Page',1,1),(139,'System','BookStack\\Page',1,1),(140,'Name\r','BookStack\\Page',1,2),(141,'This','BookStack\\Page',1,8),(142,'name','BookStack\\Page',1,4),(143,'overall','BookStack\\Page',1,1),(144,'used','BookStack\\Page',1,10),(145,'designation','BookStack\\Page',1,1),(146,'all','BookStack\\Page',1,1),(147,'servers','BookStack\\Page',1,1),(148,'within','BookStack\\Page',1,2),(149,'pair','BookStack\\Page',1,6),(150,'Refer','BookStack\\Page',1,1),(151,'to System','BookStack\\Page',1,1),(152,'Name','BookStack\\Page',1,1),(153,'Hostname','BookStack\\Page',1,1),(154,'Naming','BookStack\\Page',1,1),(155,'Conventions for','BookStack\\Page',1,1),(156,'naming','BookStack\\Page',1,1),(157,'conventions','BookStack\\Page',1,1),(158,'external','BookStack\\Page',1,1),(159,'routing','BookStack\\Page',1,1),(160,'referred','BookStack\\Page',1,1),(161,'PSX','BookStack\\Page',1,1),(162,'You MUST use','BookStack\\Page',1,1),(163,'same','BookStack\\Page',1,3),(164,'Active','BookStack\\Page',1,14),(165,'Standby','BookStack\\Page',1,6),(166,'DALSBC01\r','BookStack\\Page',1,1),(167,'Time','BookStack\\Page',1,1),(168,'zone\r','BookStack\\Page',1,1),(169,'time','BookStack\\Page',1,3),(170,'zone','BookStack\\Page',1,3),(171,'billing','BookStack\\Page',1,1),(172,'records','BookStack\\Page',1,1),(173,'Can','BookStack\\Page',1,1),(174,'be','BookStack\\Page',1,7),(175,'location','BookStack\\Page',1,1),(176,'Note','BookStack\\Page',1,3),(177,'changing','BookStack\\Page',1,1),(178,'will','BookStack\\Page',1,1),(179,'cause','BookStack\\Page',1,1),(180,'restart','BookStack\\Page',1,1),(181,'gmtMinus06-Central-','BookStack\\Page',1,1),(182,'US\r','BookStack\\Page',1,1),(183,'Contact','BookStack\\Page',1,1),(184,'Information\r','BookStack\\Page',1,1),(185,'Who','BookStack\\Page',1,1),(186,'about','BookStack\\Page',1,1),(187,'system\r','BookStack\\Page',1,2),(188,'Joe','BookStack\\Page',1,1),(189,'Smith','BookStack\\Page',1,1),(190,'888-555-1212\r','BookStack\\Page',1,1),(191,'Location\r','BookStack\\Page',1,1),(192,'Location','BookStack\\Page',1,1),(193,'Dallas','BookStack\\Page',1,1),(194,'TX\r','BookStack\\Page',1,1),(195,'NTP','BookStack\\Page',1,6),(196,'Primary\r','BookStack\\Page',1,1),(197,'address','BookStack\\Page',1,22),(198,'server','BookStack\\Page',1,2),(199,'A','BookStack\\Page',1,4),(200,'source','BookStack\\Page',1,2),(201,'necessary','BookStack\\Page',1,2),(202,'correct','BookStack\\Page',1,2),(203,'operation','BookStack\\Page',1,2),(204,'10','BookStack\\Page',1,17),(205,'11','BookStack\\Page',1,9),(206,'12','BookStack\\Page',1,4),(207,'2/24orfd00','BookStack\\Page',1,1),(208,'6b50','BookStack\\Page',1,6),(209,'4130','BookStack\\Page',1,2),(210,'1\r','BookStack\\Page',1,9),(211,'Secondary\r','BookStack\\Page',1,1),(212,'3/24orfd00','BookStack\\Page',1,1),(213,'2\r','BookStack\\Page',1,1),(214,'Logical','BookStack\\Page',1,3),(215,'Address\r','BookStack\\Page',1,3),(216,'can','BookStack\\Page',1,1),(217,'access','BookStack\\Page',1,1),(218,'unit','BookStack\\Page',1,4),(219,'it','BookStack\\Page',1,1),(220,'not','BookStack\\Page',1,6),(221,'tied','BookStack\\Page',1,1),(222,'particular','BookStack\\Page',1,1),(223,'physical','BookStack\\Page',1,10),(224,'When','BookStack\\Page',1,1),(225,'becomes','BookStack\\Page',1,1),(226,'“moves”','BookStack\\Page',1,1),(227,'13','BookStack\\Page',1,5),(228,'3','BookStack\\Page',1,5),(229,'or','BookStack\\Page',1,2),(230,'any','BookStack\\Page',1,1),(231,'subnet','BookStack\\Page',1,7),(232,'Address','BookStack\\Page',1,5),(233,'-','BookStack\\Page',1,1),(234,'only','BookStack\\Page',1,2),(235,'IP\r','BookStack\\Page',1,3),(236,'DALNBS01_MGMT\r','BookStack\\Page',1,1),(237,'Unit','BookStack\\Page',1,4),(238,'B','BookStack\\Page',1,1),(239,'Configure','BookStack\\Page',1,1),(240,'moves','BookStack\\Page',1,1),(241,'from','BookStack\\Page',1,3),(242,'other','BookStack\\Page',1,1),(243,'fail','BookStack\\Page',1,1),(244,'over','BookStack\\Page',1,1),(245,'Packet','BookStack\\Page',1,14),(246,'Ports\r','BookStack\\Page',1,2),(247,'Port','BookStack\\Page',1,13),(248,'0','BookStack\\Page',1,6),(249,'interface','BookStack\\Page',1,17),(250,'SIP','BookStack\\Page',1,8),(251,'RTP','BookStack\\Page',1,8),(252,'traffic','BookStack\\Page',1,13),(253,'uses','BookStack\\Page',1,6),(254,'14','BookStack\\Page',1,1),(255,'VLAN\r','BookStack\\Page',1,2),(256,'VLAN','BookStack\\Page',1,4),(257,'tag','BookStack\\Page',1,4),(258,'optional','BookStack\\Page',1,4),(259,'100\r','BookStack\\Page',1,1),(260,'Netmask\r','BookStack\\Page',1,2),(261,'Netmask','BookStack\\Page',1,5),(262,'“prefix”','BookStack\\Page',1,4),(263,'format','BookStack\\Page',1,4),(264,'/24\r','BookStack\\Page',1,4),(265,'1','BookStack\\Page',1,5),(266,'15','BookStack\\Page',1,1),(267,'200\r','BookStack\\Page',1,1),(268,'2','BookStack\\Page',1,4),(269,'Address*\r','BookStack\\Page',1,2),(270,'16','BookStack\\Page',1,1),(271,'VLAN*\r','BookStack\\Page',1,2),(272,'300\r','BookStack\\Page',1,1),(273,'Netmask*\r','BookStack\\Page',1,2),(274,'17','BookStack\\Page',1,1),(275,'400\r','BookStack\\Page',1,1),(276,'   ','BookStack\\Page',1,1),(277,'*','BookStack\\Page',1,1),(278,'applicable','BookStack\\Page',1,2),(279,'51x0','BookStack\\Page',1,1),(280,'platforms','BookStack\\Page',1,1),(281,'Ports ','BookStack\\Page',1,1),(282,'stand-alone','BookStack\\Page',1,1),(283,'ports','BookStack\\Page',1,4),(284,'nodes','BookStack\\Page',1,1),(285,'should','BookStack\\Page',1,3),(286,'boxes','BookStack\\Page',1,1),(287,'directly','BookStack\\Page',1,1),(288,'connected','BookStack\\Page',1,5),(289,'CE','BookStack\\Page',1,12),(290,'Specifies','BookStack\\Page',1,2),(291,'VM','BookStack\\Page',1,2),(292,'address in','BookStack\\Page',1,2),(293,' The','BookStack\\Page',1,2),(294,'IP which','BookStack\\Page',1,2),(295,'configured to','BookStack\\Page',1,2),(296,'port to','BookStack\\Page',1,2),(297,'communicate/synchronize/mirror','BookStack\\Page',1,2),(298,'data','BookStack\\Page',1,2),(299,'These','BookStack\\Page',1,2),(300,'Inter','BookStack\\Page',1,4),(301,'network','BookStack\\Page',1,9),(302,'management','BookStack\\Page',1,15),(303,'Recommendation','BookStack\\Page',1,2),(304,'default','BookStack\\Page',1,6),(305,'value','BookStack\\Page',1,2),(306,'configured','BookStack\\Page',1,7),(307,'single','BookStack\\Page',1,2),(308,'active/standby','BookStack\\Page',1,2),(309,'169','BookStack\\Page',1,2),(310,'254','BookStack\\Page',1,2),(311,'99','BookStack\\Page',1,1),(312,'must','BookStack\\Page',1,1),(313,'88','BookStack\\Page',1,1),(314,'Interface','BookStack\\Page',1,1),(315,'Mask','BookStack\\Page',1,1),(316,'Prefix','BookStack\\Page',1,5),(317,'which','BookStack\\Page',1,1),(318,'Active/Standby','BookStack\\Page',1,1),(319,'IPs','BookStack\\Page',1,1),(320,'prefix','BookStack\\Page',1,1),(321,'255','BookStack\\Page',1,5),(322,'performed','BookStack\\Page',1,1),(323,'initial-bootscript','BookStack\\Page',1,1),(324,'meant','BookStack\\Page',1,1),(325,'re-configured','BookStack\\Page',1,1),(326,'through','BookStack\\Page',1,1),(327,'EMA','BookStack\\Page',1,1),(328,'Each','BookStack\\Page',1,1),(329,'has','BookStack\\Page',1,1),(330,'managing','BookStack\\Page',1,1),(331,'Interface0','BookStack\\Page',1,6),(332,'IPv4','BookStack\\Page',1,10),(333,'address\r','BookStack\\Page',1,8),(334,'10\r','BookStack\\Page',1,2),(335,'Prefix\r','BookStack\\Page',1,4),(336,'IPv4\r','BookStack\\Page',1,2),(337,'24\r','BookStack\\Page',1,2),(338,'Default','BookStack\\Page',1,8),(339,'Gateway','BookStack\\Page',1,8),(340,'interface\r','BookStack\\Page',1,4),(341,'IPv6','BookStack\\Page',1,10),(342,'fd00','BookStack\\Page',1,4),(343,'4150','BookStack\\Page',1,2),(344,'23\r','BookStack\\Page',1,2),(345,'IPv6\r','BookStack\\Page',1,2),(346,'64\r','BookStack\\Page',1,2),(347,'Interface1','BookStack\\Page',1,6),(348,'4160','BookStack\\Page',1,2),(349,'Proceed','BookStack\\Page',1,1),(350,'configuring','BookStack\\Page',1,1),(351,'platform','BookStack\\Page',1,1),(352,'Configuring','BookStack\\Page',1,2),(353,'Series','BookStack\\Page',1,1),(354,'Platform\r','BookStack\\Page',1,1),(355,'Platform','BookStack\\Page',1,1),(356,'Managing','BookStack\\Page',2,5),(357,'DSP','BookStack\\Page',2,5),(358,'Managing','BookStack\\Page',2,2),(359,'DSPs\r','BookStack\\Page',2,6),(360,'\r','BookStack\\Page',2,132),(361,'Skip','BookStack\\Page',2,1),(362,'to','BookStack\\Page',2,19),(363,'end','BookStack\\Page',2,1),(364,'of','BookStack\\Page',2,4),(365,'metadata\r','BookStack\\Page',2,2),(366,'Go','BookStack\\Page',2,1),(367,'start','BookStack\\Page',2,1),(368,' \r','BookStack\\Page',2,10),(369,'In','BookStack\\Page',2,1),(370,'this','BookStack\\Page',2,1),(371,'section','BookStack\\Page',2,3),(372,'Applications/Features','BookStack\\Page',2,4),(373,'Requiring','BookStack\\Page',2,5),(374,'not','BookStack\\Page',2,3),(375,'Related','BookStack\\Page',2,1),(376,'articles','BookStack\\Page',2,1),(377,'SBC','BookStack\\Page',2,9),(378,'Node-Locked','BookStack\\Page',2,2),(379,'Licenses','BookStack\\Page',2,3),(380,'for','BookStack\\Page',2,10),(381,'HW','BookStack\\Page',2,2),(382,'and','BookStack\\Page',2,12),(383,'SWe','BookStack\\Page',2,2),(384,'SBCs\r','BookStack\\Page',2,1),(385,'Supported','BookStack\\Page',2,1),(386,'Codecs','BookStack\\Page',2,2),(387,'Transcoding\r','BookStack\\Page',2,1),(388,' DSP','BookStack\\Page',2,1),(389,'Channel','BookStack\\Page',2,2),(390,'Densities','BookStack\\Page',2,2),(391,'5000','BookStack\\Page',2,3),(392,'7000','BookStack\\Page',2,2),(393,'Series\r','BookStack\\Page',2,1),(394,'The','BookStack\\Page',2,2),(395,'Core provides','BookStack\\Page',2,1),(396,'a','BookStack\\Page',2,3),(397,'wide','BookStack\\Page',2,1),(398,'range','BookStack\\Page',2,1),(399,'high','BookStack\\Page',2,1),(400,'density','BookStack\\Page',2,2),(401,'digital','BookStack\\Page',2,1),(402,'signal','BookStack\\Page',2,1),(403,'processor','BookStack\\Page',2,1),(404,'DSP','BookStack\\Page',2,2),(405,'modules','BookStack\\Page',2,1),(406,'comprehensive','BookStack\\Page',2,1),(407,'set','BookStack\\Page',2,2),(408,'converged','BookStack\\Page',2,1),(409,'voice','BookStack\\Page',2,1),(410,'video','BookStack\\Page',2,1),(411,'vocoder','BookStack\\Page',2,1),(412,'fax','BookStack\\Page',2,2),(413,'data','BookStack\\Page',2,1),(414,'media','BookStack\\Page',2,2),(415,'processing','BookStack\\Page',2,1),(416,'functions','BookStack\\Page',2,1),(417,'This','BookStack\\Page',2,1),(418,'provides','BookStack\\Page',2,1),(419,'guidance','BookStack\\Page',2,1),(420,'regarding','BookStack\\Page',2,1),(421,'when','BookStack\\Page',2,4),(422,'it','BookStack\\Page',2,1),(423,'is','BookStack\\Page',2,4),(424,'necessary','BookStack\\Page',2,1),(425,'use','BookStack\\Page',2,1),(426,'DSPs','BookStack\\Page',2,7),(427,'on','BookStack\\Page',2,3),(428,'series devices','BookStack\\Page',2,1),(429,'5100','BookStack\\Page',2,1),(430,'5110','BookStack\\Page',2,1),(431,'5200','BookStack\\Page',2,1),(432,'5210','BookStack\\Page',2,1),(433,'5400','BookStack\\Page',2,1),(434,'the','BookStack\\Page',2,10),(435,'7000 device','BookStack\\Page',2,1),(436,'according','BookStack\\Page',2,1),(437,'protocol','BookStack\\Page',2,1),(438,'usage','BookStack\\Page',2,1),(439,'are','BookStack\\Page',2,7),(440,'required','BookStack\\Page',2,2),(441,'following','BookStack\\Page',2,3),(442,'features','BookStack\\Page',2,2),(443,'For','BookStack\\Page',2,1),(444,'licensing','BookStack\\Page',2,1),(445,'details','BookStack\\Page',2,3),(446,'refer','BookStack\\Page',2,1),(447,'Protocol','BookStack\\Page',2,1),(448,'page Managing','BookStack\\Page',2,1),(449,'SBCs','BookStack\\Page',2,1),(450,'Table ','BookStack\\Page',2,1),(451,' Applications/Features','BookStack\\Page',2,1),(452,'Feature\r','BookStack\\Page',2,1),(453,'Examples\r','BookStack\\Page',2,1),(454,'Codec','BookStack\\Page',2,2),(455,'interworking\r','BookStack\\Page',2,2),(456,'needed','BookStack\\Page',2,3),(457,'applying','BookStack\\Page',2,1),(458,'codec','BookStack\\Page',2,3),(459,'interworking','BookStack\\Page',2,5),(460,'Below','BookStack\\Page',2,1),(461,'but','BookStack\\Page',2,1),(462,'few','BookStack\\Page',2,1),(463,'examples','BookStack\\Page',2,1),(464,'G711','BookStack\\Page',2,1),(465,'G729\r','BookStack\\Page',2,1),(466,'G722','BookStack\\Page',2,1),(467,'AMR-WB\r','BookStack\\Page',2,1),(468,'T38','BookStack\\Page',2,1),(469,'G711\r','BookStack\\Page',2,1),(470,'Note\r','BookStack\\Page',2,3),(471,'Refer','BookStack\\Page',2,2),(472,'to Supported','BookStack\\Page',2,1),(473,'Transcoding for','BookStack\\Page',2,1),(474,'to DSP','BookStack\\Page',2,1),(475,'Series for','BookStack\\Page',2,1),(476,'Fax','BookStack\\Page',2,2),(477,'Modem','BookStack\\Page',2,2),(478,'Tone','BookStack\\Page',2,2),(479,'detections\r','BookStack\\Page',2,1),(480,'or','BookStack\\Page',2,2),(481,'detection','BookStack\\Page',2,1),(482,'can','BookStack\\Page',2,2),(483,'trigger','BookStack\\Page',2,1),(484,'modifications','BookStack\\Page',2,2),(485,'calls','BookStack\\Page',2,2),(486,'in','BookStack\\Page',2,1),(487,'scenarios','BookStack\\Page',2,1),(488,'example','BookStack\\Page',2,1),(489,'Calls','BookStack\\Page',2,2),(490,'T','BookStack\\Page',2,4),(491,'38','BookStack\\Page',2,4),(492,'pass-through\r','BookStack\\Page',2,2),(493,'G','BookStack\\Page',2,7),(494,'711','BookStack\\Page',2,4),(495,'transcoded\r','BookStack\\Page',2,1),(496,'These','BookStack\\Page',2,1),(497,'also','BookStack\\Page',2,1),(498,'be','BookStack\\Page',2,1),(499,'triggered','BookStack\\Page',2,2),(500,'via','BookStack\\Page',2,1),(501,'re-INVITEs','BookStack\\Page',2,1),(502,'by','BookStack\\Page',2,1),(503,'remote','BookStack\\Page',2,1),(504,'Gateways','BookStack\\Page',2,1),(505,'that','BookStack\\Page',2,1),(506,'detect','BookStack\\Page',2,1),(507,'tones','BookStack\\Page',2,1),(508,'Interworking','BookStack\\Page',2,2),(509,'in-band','BookStack\\Page',2,2),(510,'DTMF','BookStack\\Page',2,5),(511,'Out-Of-Band','BookStack\\Page',2,1),(512,'OOB','BookStack\\Page',2,2),(513,'RFC','BookStack\\Page',2,4),(514,'2833/4733','BookStack\\Page',2,4),(515,'events\r','BookStack\\Page',2,1),(516,'Detecting','BookStack\\Page',2,1),(517,'dial','BookStack\\Page',2,2),(518,'string','BookStack\\Page',2,2),(519,'applications\r','BookStack\\Page',2,1),(520,'When','BookStack\\Page',2,1),(521,'basic','BookStack\\Page',2,1),(522,'same','BookStack\\Page',2,1),(523,'both','BookStack\\Page',2,1),(524,'legs\r','BookStack\\Page',2,1),(525,'Packet','BookStack\\Page',2,4),(526,'Size','BookStack\\Page',2,1),(527,'–','BookStack\\Page',2,3),(528,'10','BookStack\\Page',2,1),(529,'ms','BookStack\\Page',2,2),(530,'interworked','BookStack\\Page',2,2),(531,'20','BookStack\\Page',2,1),(532,'711\r','BookStack\\Page',2,1),(533,'Silence','BookStack\\Page',2,1),(534,'Suppression','BookStack\\Page',2,1),(535,'Payload','BookStack\\Page',2,1),(536,'conversion','BookStack\\Page',2,1),(537,'729','BookStack\\Page',2,2),(538,'with','BookStack\\Page',2,4),(539,'PT','BookStack\\Page',2,2),(540,'101','BookStack\\Page',2,1),(541,'102\r','BookStack\\Page',2,1),(542,'Codec-specific','BookStack\\Page',2,1),(543,'attribute','BookStack\\Page',2,1),(544,'AMR-WB','BookStack\\Page',2,2),(545,'mode-set','BookStack\\Page',2,2),(546,'1','BookStack\\Page',2,1),(547,'2','BookStack\\Page',2,2),(548,'3','BookStack\\Page',2,2),(549,'using','BookStack\\Page',2,1),(550,'4','BookStack\\Page',2,1),(551,'5','BookStack\\Page',2,1),(552,'V0','BookStack\\Page',2,1),(553,'V3\r','BookStack\\Page',2,1),(554,'payload','BookStack\\Page',2,1),(555,'type','BookStack\\Page',2,1),(556,'changes\r','BookStack\\Page',2,1),(557,'Playing','BookStack\\Page',2,1),(558,'compressed','BookStack\\Page',2,1),(559,'announcements\r','BookStack\\Page',2,2),(560,'Ringback','BookStack\\Page',2,1),(561,'tones\r','BookStack\\Page',2,1),(562,'Service','BookStack\\Page',2,1),(563,'Profile','BookStack\\Page',2,1),(564,'option','BookStack\\Page',2,1),(565,'transcode','BookStack\\Page',2,1),(566,'only','BookStack\\Page',2,3),(567,'PSP','BookStack\\Page',2,1),(568,'To','BookStack\\Page',2,1),(569,'Control','BookStack\\Page',2,1),(570,'object','BookStack\\Page',2,1),(571,'Transcode','BookStack\\Page',2,1),(572,'term','BookStack\\Page',2,1),(573,'pass-through','BookStack\\Page',2,1),(574,'refers','BookStack\\Page',2,1),(575,'case','BookStack\\Page',2,1),(576,'relays','BookStack\\Page',2,1),(577,'end-to-end','BookStack\\Page',2,1),(578,'no','BookStack\\Page',2,1),(579,'used','BookStack\\Page',2,1),(580,'SRTP','BookStack\\Page',2,1),(581,'RTCP','BookStack\\Page',2,2),(582,'although','BookStack\\Page',2,1),(583,'termination','BookStack\\Page',2,1),(584,'recommended','BookStack\\Page',2,1),(585,'transcoded','BookStack\\Page',2,1),(586,'Media','BookStack\\Page',2,1),(587,'policing','BookStack\\Page',2,2),(588,'Signaling','BookStack\\Page',2,1),(589,'Call','BookStack\\Page',2,1),(590,'Registration','BookStack\\Page',2,1),(591,'traffic','BookStack\\Page',2,1),(592,'NAT','BookStack\\Page',2,1),(593,'traversal','BookStack\\Page',2,1),(594,'including','BookStack\\Page',2,1),(595,'ICE','BookStack\\Page',2,1),(596,'based','BookStack\\Page',2,1),(597,'applications','BookStack\\Page',2,1),(598,' ','BookStack\\Page',2,1);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `image_id` int(11) NOT NULL DEFAULT '0',
  `external_auth_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$10$QCvXm8h9otrILyotAJJJw.jQDgFgsYIP36JUVllLuRYjkBw9CymkK',NULL,'2019-09-13 16:39:17','2019-09-13 16:39:17',1,0,'',NULL),(2,'Guest','guest@example.com','',NULL,'2019-09-13 16:39:27','2019-09-13 16:39:27',1,0,'','public');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,1,1,'BookStack\\Bookshelf',1,'2019-09-13 16:51:22','2019-09-13 16:51:22'),(3,1,1,'BookStack\\Book',4,'2019-09-13 16:51:53','2019-09-13 16:52:18'),(4,1,3,'BookStack\\Bookshelf',4,'2019-09-13 16:52:52','2019-09-13 16:57:17'),(5,1,4,'BookStack\\Bookshelf',1,'2019-09-13 16:53:09','2019-09-13 16:53:09'),(6,1,2,'BookStack\\Book',4,'2019-09-13 16:53:37','2019-09-13 16:57:18'),(7,1,1,'BookStack\\Page',1,'2019-09-13 16:56:10','2019-09-13 16:56:10'),(8,1,2,'BookStack\\Page',2,'2019-09-13 16:57:13','2019-09-13 16:57:20');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-13 19:55:56
