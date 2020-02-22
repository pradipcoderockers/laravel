-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for osx10.14 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('09c3f1b6b0ec2cb9f9c423fdbf9cc18204014f4385b719b1de4f4aefc4ec70826c95975b123aa914',5,1,'MyApp','[]',0,'2020-02-21 00:55:27','2020-02-21 00:55:27','2021-02-21 06:25:27'),('14ff3bf09c47de839c3f6042fb33adc305a8a8aeb8aa8921cb33453ba6e30c3c6c8688537f5806d4',5,1,'MyApp','[]',0,'2020-02-22 11:17:03','2020-02-22 11:17:03','2021-02-22 16:47:03'),('7b36a03638e0587d3566c70433c7996abae0a7b4878e76a745cf06c85c964c9cd2956c78a9728749',4,1,'MyApp','[]',0,'2020-02-21 00:51:25','2020-02-21 00:51:25','2021-02-21 06:21:25'),('94115abca5c394d312999001e2cafe2d8fe25cdccaebd9702dd0776c0665e361748620ec6f4ff9f0',5,1,'MyApp','[]',0,'2020-02-22 11:11:32','2020-02-22 11:11:32','2021-02-22 16:41:32'),('b3957ab924d49015f5785c08628c3e19a0aee5834fd3773050e659c5258139e56686f7d1d6a813b8',5,1,'MyApp','[]',0,'2020-02-22 11:11:50','2020-02-22 11:11:50','2021-02-22 16:41:50'),('d98baf427e960ec028f770690d11b983ac2ceca20c18813d65897aef20090a41588ad6fc2389ef74',1,1,'MyApp','[]',0,'2020-02-21 00:58:01','2020-02-21 00:58:01','2021-02-21 06:28:01'),('fcd3e9a9e16b1227143056ead5d9221463e14eeb7b98ca8b3894568b41305291690f434ff6ab5ad7',1,1,'MyApp','[]',0,'2020-02-21 00:36:00','2020-02-21 00:36:00','2021-02-21 06:06:00');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','LHGp3xWeWJD7lUyyVHHhqczv3Gi2gF7Lomoh2DsO','http://localhost',1,0,0,'2020-02-21 00:23:39','2020-02-21 00:23:39'),(2,NULL,'Laravel Password Grant Client','USlyUTZnMGvBGicUr2mipZP1H8n4h1FHg6v1dohM','http://localhost',0,1,0,'2020-02-21 00:23:39','2020-02-21 00:23:39');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-02-21 00:23:39','2020-02-21 00:23:39');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `schoolprofile`
--

DROP TABLE IF EXISTS `schoolprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schoolprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `admission` varchar(255) DEFAULT NULL,
  `add_line1` varchar(500) NOT NULL,
  `add_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `scholarship` text DEFAULT NULL,
  `fee_structure` text DEFAULT NULL,
  `course_detail` text DEFAULT NULL,
  `rating` int(11) DEFAULT 0,
  `popularity` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolprofile`
--

LOCK TABLES `schoolprofile` WRITE;
/*!40000 ALTER TABLE `schoolprofile` DISABLE KEYS */;
INSERT INTO `schoolprofile` VALUES (1,'pradip','fdafafasfaf','pradip.comat@appypiellp.com','6563636363',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,0),(2,'DPS','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','6563636363',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',0,0),(3,'DPS','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','6563636363',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',4,0),(4,'DPS','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','6563636363',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',4,0),(5,'DPS','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','54674747474',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',4,0),(6,'DPS','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','54674747474',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',4,0),(7,'DPSdfafafasfs','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','pradipdsaff.comat@appypiellp.com','54674747474',NULL,'Noida',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:','In the first step, we require to get fresh Laravel application using below command, So open your terminal OR command prompt and run below command:',4,0);
/*!40000 ALTER TABLE `schoolprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentprofile`
--

DROP TABLE IF EXISTS `studentprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `admission` varchar(255) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentprofile`
--

LOCK TABLES `studentprofile` WRITE;
/*!40000 ALTER TABLE `studentprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentprofile_saved_school`
--

DROP TABLE IF EXISTS `studentprofile_saved_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentprofile_saved_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentprofile_id` int(11) NOT NULL,
  `schoolprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentprofile_saved_school`
--

LOCK TABLES `studentprofile_saved_school` WRITE;
/*!40000 ALTER TABLE `studentprofile_saved_school` DISABLE KEYS */;
INSERT INTO `studentprofile_saved_school` VALUES (1,5,7);
/*!40000 ALTER TABLE `studentprofile_saved_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rahul','pradip.comat@appypiellp.com',NULL,'$2y$10$wOYQQxQ//ggjXKhJa.WCre6QCh.NE7.4wm3xpM79sAubODm3b9rrq',NULL,'2020-02-21 00:58:01','2020-02-21 00:58:01','student'),(5,'Rahul','pradip@appypiellp.com',NULL,'$2y$10$V.jxzDTL6ARNLdlOz8bMK.Ghde7CdhFekc7NHkA4OUUUVeRSF6JQO',NULL,'2020-02-22 11:11:32','2020-02-22 11:11:32','student');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 23:36:39
