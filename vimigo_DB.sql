# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.23)
# Database: vimigo_DB
# Generation Time: 2021-05-26 17:55:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_06_01_000001_create_oauth_auth_codes_table',2),
	(4,'2016_06_01_000002_create_oauth_access_tokens_table',2),
	(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),
	(6,'2016_06_01_000004_create_oauth_clients_table',2),
	(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),
	(8,'2021_05_23_025927_alter_user_add_api_token',3),
	(9,'2021_05_23_030309_create_user_profile',4),
	(10,'2021_05_23_030310_create_user_profile',5);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('240475fc0f3108aa86a07de819318ca690802631e6f75ab20fc19bfbf7f95e4de0c6b127fdb365c8',16,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:34:21','2021-05-26 15:34:21','2022-05-26 15:34:21'),
	('2607826aab044b5590002ffdbda4afccb8c04984992ea23948d6e48a1327f05bd6bbbbbafe372ed2',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 16:39:57','2021-05-26 16:39:57','2021-05-27 16:39:57'),
	('273d8f757f0d265381f02dab06a0f90d792e11065b93ac7f53a38d6b428f53201081edc028d9575b',13,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:29:23','2021-05-26 15:29:23','2022-05-26 15:29:23'),
	('35c112751e6cea315e5fff4f736667cd6a6b12ea94f984006abdd26e4a6bffdb14d8d0401748ab08',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:40:34','2021-05-26 15:40:34','2022-05-26 15:40:34'),
	('44e9af87755881dd45b21b7458a898b7508f2361ca9f8d1ed6783853488753be673ac45554cfc145',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 17:04:07','2021-05-26 17:04:07','2021-05-27 17:04:07'),
	('4bf9c0e8aacd773fea12078e489af755cbcda9edebf9f72898ab58c3750f7e1eaa101adae2a4e3dd',17,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:35:51','2021-05-26 15:35:51','2022-05-26 15:35:51'),
	('52eb6842a93059556aa19a309d3c3caccd0b249e8a98358cd9e57f4de4e74bee0b63bf9855dad0d2',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:40:48','2021-05-26 15:40:48','2022-05-26 15:40:48'),
	('73cc3ccd5c5542eb523aeb4db5c1acb554be4d997a610f5eeefb216e29b6c1d3c7467254a2593a2c',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:54:15','2021-05-26 15:54:15','2021-05-27 15:54:15'),
	('7458814184d8092e09b9e79c5cab8ea28671116dea4ed845074c988fe6f99482d9008402e220b04f',9,1,NULL,'[]',0,'2021-05-26 15:18:52','2021-05-26 15:18:52','2022-05-26 15:18:52'),
	('74eb1897ee8b2b41ebcc31ae763396e4388bd058b3b36384676781b0c11997fd447f965a0b26966d',14,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:32:50','2021-05-26 15:32:50','2022-05-26 15:32:50'),
	('8668484c595668aefb4277a239ae134f446da9d06086a6eb8367bb0117d2aefa36a903b2ff2eb609',5,1,NULL,'[]',0,'2021-05-23 04:50:05','2021-05-23 04:50:05','2022-05-23 04:50:05'),
	('8f3894947fb56fc54c8bcdafcf143e4ec77eca01de465c415b2eb069f82edb6c6be3b2c5d7ea538c',8,1,NULL,'[]',0,'2021-05-26 15:14:11','2021-05-26 15:14:11','2022-05-26 15:14:11'),
	('9694b880bd94e7f18d0a589789a85fea165cd0335c657815e3001c5edca0d7dfbd75e035e9fd67f5',6,1,NULL,'[]',0,'2021-05-23 05:00:21','2021-05-23 05:00:21','2022-05-23 05:00:21'),
	('a8dda541a7ecc7e48c3a6a94b331cb95c976cdad0f33384dda49d4b55cc44b5a72e2abf5dd315618',4,1,NULL,'[]',0,'2021-05-23 04:49:28','2021-05-23 04:49:28','2022-05-23 04:49:28'),
	('bad35ae7b648f2a7f8801b72de463fa1d3e397af8a3b0fe6fd6d25c4f9367ecd419bc7590efa573e',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:36:46','2021-05-26 15:36:46','2022-05-26 15:36:46'),
	('d407aa4ea2d3cd86e6319ed96260f573e936535cf54594038ef2120abbc8495ec601ea03e69de1ac',18,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:39:38','2021-05-26 15:39:38','2022-05-26 15:39:38'),
	('e5019ccbbafb4d01d041c840b7a168c6214c2c3636c67167af03159e20c6d6d92f2b49b132f091f7',7,1,NULL,'[]',0,'2021-05-23 05:00:59','2021-05-23 05:00:59','2022-05-23 05:00:59'),
	('ea809a02ad96fb2ca848bec590d8676b20839fe1537555efb4e35e8f829ada832ef51074bf338ba5',12,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:27:43','2021-05-26 15:27:43','2022-05-26 15:27:43'),
	('ee137ca483018f48aac5d3c6e2568d42367ffb06b269ee57e0fcda0df5678aaf41afd66509cb73a7',10,1,NULL,'[]',0,'2021-05-26 15:19:29','2021-05-26 15:19:29','2022-05-26 15:19:29'),
	('fbce2ed0913f7b1b1c8ca9b526e86d8d6ffa66afa5038a06b3e9fa2885a9cd979c2a62346b8968ee',15,1,'Laravel Password Grant Client','[]',0,'2021-05-26 15:33:52','2021-05-26 15:33:52','2022-05-26 15:33:52');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'vimigo','TRTfVQdkoUbah2G6LxATQCsyj6QfrzvvlkBElyIP','http://localhost',1,0,0,'2021-05-23 04:52:58','2021-05-23 04:52:58');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,2,'2021-03-16 08:11:11','2021-03-16 08:11:11'),
	(2,4,'2021-05-23 04:15:10','2021-05-23 04:15:10'),
	(3,1,'2021-05-23 04:16:41','2021-05-23 04:16:41'),
	(4,3,'2021-05-23 04:52:31','2021-05-23 04:52:31'),
	(5,1,'2021-05-23 04:52:58','2021-05-23 04:52:58');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_profiles`;

CREATE TABLE `user_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `gender` int DEFAULT NULL,
  `identification_no` bigint DEFAULT NULL,
  `phone_no` bigint DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;

INSERT INTO `user_profiles` (`id`, `user_id`, `gender`, `identification_no`, `phone_no`, `address`, `created_at`, `updated_at`)
VALUES
	(1,1,1,88888888888,127186875,'Fera Residence',NULL,'2021-05-26 17:22:28'),
	(2,18,1,98767898766,23454432,'Yay Residence',NULL,NULL);

/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Muhammad Amirul','amirul@vimigo.com',NULL,'$2y$10$GbaxUe7EpWhLfokL0Aj9EuKf/p.vDxO2Ctw4Hpfo4ulqtLkBGxR56','mgGObkb1iDU3Cwgdxfze0DTxGeAeeWqGwf34jgVoehgzFST0vpYHcqcyCiVd',NULL,'2021-05-23 04:06:01','2021-05-23 04:06:01'),
	(18,'taca','taca@gmail.com',NULL,'$2y$10$lWRtZ44.0jyUZfjgSaAuQeqYuGI37Bk34/osahzP0s0tDghnK5uYu',NULL,'olUVckjL1Sy7SafF5XLaVyq1bMvqAzuymBqwJZifHT8J5S4EMdrhNDUFenOG','2021-05-26 15:36:46','2021-05-26 15:36:46');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
