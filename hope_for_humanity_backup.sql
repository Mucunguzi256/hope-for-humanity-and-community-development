-- MySQL dump 10.13  Distrib 9.6.0, for macos26.2 (arm64)
--
-- Host: localhost    Database: hope_for_humanity
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'fddf0886-20bc-11f1-9382-615584997270:1-9858';

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (6,'action_scheduler/migration_hook','complete','2026-03-27 04:15:10','2026-03-27 04:15:10',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1774584910;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1774584910;}',1,1,'2026-03-27 04:15:32','2026-03-27 04:15:32',2,NULL),(7,'action_scheduler_run_recurring_actions_schedule_hook','complete','2026-03-27 04:17:00','2026-03-27 04:17:00',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1774585020;s:18:\"\0*\0first_timestamp\";i:1774585020;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1774585020;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2026-03-27 04:17:02','2026-03-27 04:17:02',4,NULL),(8,'action_scheduler_run_recurring_actions_schedule_hook','complete','2026-03-28 04:17:02','2026-03-28 04:17:02',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1774671422;s:18:\"\0*\0first_timestamp\";i:1774585020;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1774671422;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2026-03-28 12:43:24','2026-03-28 12:43:24',79,NULL),(9,'action_scheduler_run_recurring_actions_schedule_hook','pending','2026-03-29 12:43:24','2026-03-29 12:43:24',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1774788204;s:18:\"\0*\0first_timestamp\";i:1774585020;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1774788204;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration'),(2,'ActionScheduler');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,6,'action created','2026-03-27 04:14:10','2026-03-27 04:14:10'),(2,6,'action started via WP Cron','2026-03-27 04:15:32','2026-03-27 04:15:32'),(3,6,'action complete via WP Cron','2026-03-27 04:15:32','2026-03-27 04:15:32'),(4,7,'action created','2026-03-27 04:17:00','2026-03-27 04:17:00'),(5,7,'action started via Async Request','2026-03-27 04:17:02','2026-03-27 04:17:02'),(6,7,'action complete via Async Request','2026-03-27 04:17:02','2026-03-27 04:17:02'),(7,8,'action created','2026-03-27 04:17:02','2026-03-27 04:17:02'),(8,8,'action started via WP Cron','2026-03-28 12:43:24','2026-03-28 12:43:24'),(9,8,'action complete via WP Cron','2026-03-28 12:43:24','2026-03-28 12:43:24'),(10,9,'action created','2026-03-28 12:43:24','2026-03-28 12:43:24');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2026-03-27 04:11:08','2026-03-27 04:11:08','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_campaign_forms`
--

DROP TABLE IF EXISTS `wp_give_campaign_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_campaign_forms` (
  `campaign_id` int unsigned NOT NULL,
  `form_id` int unsigned NOT NULL,
  PRIMARY KEY (`campaign_id`,`form_id`),
  KEY `form_id` (`form_id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_campaign_forms`
--

LOCK TABLES `wp_give_campaign_forms` WRITE;
/*!40000 ALTER TABLE `wp_give_campaign_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_campaign_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_campaigns`
--

DROP TABLE IF EXISTS `wp_give_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_campaigns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `campaign_page_id` int unsigned DEFAULT NULL,
  `form_id` int NOT NULL,
  `campaign_type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `campaign_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `long_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_logo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_image` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `primary_color` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secondary_color` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_goal` int unsigned NOT NULL,
  `goal_type` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'amount',
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_campaigns`
--

LOCK TABLES `wp_give_campaigns` WRITE;
/*!40000 ALTER TABLE `wp_give_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_commentmeta`
--

DROP TABLE IF EXISTS `wp_give_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_commentmeta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `give_comment_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `give_comment_id` (`give_comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_commentmeta`
--

LOCK TABLES `wp_give_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_give_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_comments`
--

DROP TABLE IF EXISTS `wp_give_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_comments` (
  `comment_ID` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `comment_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_parent` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_type` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`comment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_comments`
--

LOCK TABLES `wp_give_comments` WRITE;
/*!40000 ALTER TABLE `wp_give_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_donationmeta`
--

DROP TABLE IF EXISTS `wp_give_donationmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_donationmeta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `donation_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `donation_id` (`donation_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_donationmeta`
--

LOCK TABLES `wp_give_donationmeta` WRITE;
/*!40000 ALTER TABLE `wp_give_donationmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_donationmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_donormeta`
--

DROP TABLE IF EXISTS `wp_give_donormeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_donormeta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `donor_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `donor_id` (`donor_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_donormeta`
--

LOCK TABLES `wp_give_donormeta` WRITE;
/*!40000 ALTER TABLE `wp_give_donormeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_donormeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_donors`
--

DROP TABLE IF EXISTS `wp_give_donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_donors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` mediumtext NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '',
  `purchase_value` mediumtext NOT NULL,
  `purchase_count` bigint NOT NULL,
  `payment_ids` longtext NOT NULL,
  `date_created` datetime NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `verify_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `verify_throttle` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_donors`
--

LOCK TABLES `wp_give_donors` WRITE;
/*!40000 ALTER TABLE `wp_give_donors` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_formmeta`
--

DROP TABLE IF EXISTS `wp_give_formmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_formmeta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `form_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `form_id` (`form_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_formmeta`
--

LOCK TABLES `wp_give_formmeta` WRITE;
/*!40000 ALTER TABLE `wp_give_formmeta` DISABLE KEYS */;
INSERT INTO `wp_give_formmeta` VALUES (1,11,'_give_form_sales','0'),(2,11,'_give_form_earnings','0'),(3,10,'_give_form_sales','0'),(4,10,'_give_form_earnings','0'),(5,9,'_give_form_sales','0'),(6,9,'_give_form_earnings','0'),(7,9,'_give_set_price','10.00'),(9,9,'_give_default_price_id','2'),(10,10,'_give_set_price','10.00'),(12,10,'_give_default_price_id','2'),(13,11,'_give_set_price','10.00'),(15,11,'_give_default_price_id','2'),(16,9,'_give_price_option','custom'),(17,9,'_give_custom_amount','enabled'),(18,9,'_give_custom_amount_minimum','1.00'),(19,10,'_give_price_option','custom'),(20,10,'_give_custom_amount','enabled'),(21,10,'_give_custom_amount_minimum','1.00'),(22,11,'_give_price_option','custom'),(23,11,'_give_custom_amount','enabled'),(24,11,'_give_custom_amount_minimum','1.00');
/*!40000 ALTER TABLE `wp_give_formmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_log`
--

DROP TABLE IF EXISTS `wp_give_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `log_type` (`log_type`),
  KEY `category` (`category`),
  KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_log`
--

LOCK TABLES `wp_give_log` WRITE;
/*!40000 ALTER TABLE `wp_give_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_migrations`
--

DROP TABLE IF EXISTS `wp_give_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_migrations` (
  `id` varchar(180) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `error` text COLLATE utf8mb4_unicode_520_ci,
  `last_run` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_migrations`
--

LOCK TABLES `wp_give_migrations` WRITE;
/*!40000 ALTER TABLE `wp_give_migrations` DISABLE KEYS */;
INSERT INTO `wp_give_migrations` VALUES ('add_campaign_id_to_donations','success','','2026-03-27 07:14:09'),('add_campaign_id_to_revenue_table','success','','2026-03-27 07:14:09'),('add_campaign_id_to_subscriptions','success','','2026-03-27 07:14:10'),('add_campaign_id_to_subscriptions_table','success','','2026-03-27 07:14:10'),('add_indexes_to_revenue_table','success','','2026-03-27 07:14:09'),('add_paymentmode_to_subscription_table','success','','2026-03-27 07:14:09'),('add_view_capabilities_to_admin_roles','success','','2026-03-27 07:14:10'),('add-missing-donor-id-in-donation-comments','success','','2026-03-27 07:14:09'),('add-missing-transaction-id-for-uncompleted-stripe-donations','success','','2026-03-27 07:14:09'),('add-statement-descriptor-to-stripe-accounts','success','','2026-03-27 07:14:09'),('associate_donations_to_campaign','success','','2026-03-27 07:14:09'),('cache_campaign_data','success','','2026-03-27 07:14:09'),('complete-removed-legacy-log-migration','success','','2026-03-27 07:14:09'),('copy-v2-gateways-settings-to-v3','success','','2026-03-27 07:14:09'),('create_migrations_table','success','','2026-03-27 07:14:09'),('create_new_log_table','success','','2026-03-27 07:14:09'),('create_revenue_table','success','','2026-03-27 07:14:09'),('create_subscription_tables','success','','2026-03-27 07:14:09'),('delete_old_log_tables','success','','2026-03-27 07:14:09'),('donation-forms-clean-multiple-slashes-on-db','success','','2026-03-27 07:14:09'),('donation-forms-donation-levels-schema','success','','2026-03-27 07:14:09'),('donation-forms-remove-duplicate-meta','success','','2026-03-27 07:14:09'),('donation-meta-unserialize-title-prefix','success','','2026-03-27 07:14:09'),('donors-add-phone-column','success','','2026-03-27 07:14:09'),('fix_give_accountant_capabilities','success','','2026-03-27 07:14:10'),('fix_give_worker_capabilities','success','','2026-03-27 07:14:10'),('give-campaigns-create-give-campaign-forms-table','success','','2026-03-27 07:14:09'),('give-campaigns-create-give-campaigns-table','success','','2026-03-27 07:14:09'),('give-campaigns-set-campaign-type','success','','2026-03-27 07:14:09'),('migrate_completed_migrations','success','','2026-03-27 07:14:09'),('migrate_forms_to_campaign_forms','success','','2026-03-27 07:14:09'),('move-donation-comment-to-donation-meta-table','success','','2026-03-27 07:14:09'),('recalculate_exchange_rate','success','','2026-03-27 07:14:09'),('refresh-licenses-for-last-active-date','success','','2026-03-27 07:14:09'),('refresh-licenses-for-platform-fee','success','','2026-03-27 07:14:09'),('register-paypal-donations-refresh-token-cron-job-by-mode','success','','2026-03-27 07:14:09'),('remove_payment_intent_secret_meta','success','','2026-03-27 07:14:09'),('remove_revenue_foreign_keys','success','','2026-03-27 07:14:09'),('remove_sensitive_logs','success','','2026-03-27 07:14:09'),('remove-log-with-card-info','success','','2026-03-27 07:14:09'),('remove-paypal-ipn-verification-setting','success','','2026-03-27 07:14:09'),('set_automatic_formatting_option','success','','2026-03-27 07:14:09'),('set_paypal_standard_id_to_paypal_from_paypal_standard','success','','2026-03-27 07:14:09'),('set-form-donation-levels-to-strings','success','','2026-03-27 07:14:09'),('subscriptions_backfill_missing_campaign_id_for_donations','success','','2026-03-27 07:14:09'),('update_transferred_subscriptions_product_id','success','','2026-03-27 07:14:10');
/*!40000 ALTER TABLE `wp_give_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_revenue`
--

DROP TABLE IF EXISTS `wp_give_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_revenue` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `donation_id` bigint unsigned NOT NULL,
  `form_id` bigint unsigned NOT NULL,
  `amount` int unsigned NOT NULL,
  `campaign_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_revenue`
--

LOCK TABLES `wp_give_revenue` WRITE;
/*!40000 ALTER TABLE `wp_give_revenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_sequential_ordering`
--

DROP TABLE IF EXISTS `wp_give_sequential_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_sequential_ordering` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_sequential_ordering`
--

LOCK TABLES `wp_give_sequential_ordering` WRITE;
/*!40000 ALTER TABLE `wp_give_sequential_ordering` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_sequential_ordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_sessions`
--

DROP TABLE IF EXISTS `wp_give_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_sessions` (
  `session_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_sessions`
--

LOCK TABLES `wp_give_sessions` WRITE;
/*!40000 ALTER TABLE `wp_give_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_subscriptionmeta`
--

DROP TABLE IF EXISTS `wp_give_subscriptionmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_subscriptionmeta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `subscription_id` (`subscription_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_subscriptionmeta`
--

LOCK TABLES `wp_give_subscriptionmeta` WRITE;
/*!40000 ALTER TABLE `wp_give_subscriptionmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_subscriptionmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_give_subscriptions`
--

DROP TABLE IF EXISTS `wp_give_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_give_subscriptions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `period` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `frequency` bigint NOT NULL DEFAULT '1',
  `initial_amount` decimal(18,10) NOT NULL,
  `recurring_amount` decimal(18,10) NOT NULL,
  `recurring_fee_amount` decimal(18,10) NOT NULL,
  `bill_times` bigint NOT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_payment_id` bigint NOT NULL,
  `payment_mode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_id` bigint NOT NULL,
  `created` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `profile_id` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  KEY `customer` (`customer_id`),
  KEY `transaction` (`transaction_id`),
  KEY `customer_and_status` (`customer_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_give_subscriptions`
--

LOCK TABLES `wp_give_subscriptions` WRITE;
/*!40000 ALTER TABLE `wp_give_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_give_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:16:{i:1774739288;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1774739539;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1774757539;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1774757731;a:1:{s:27:\"give_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1774757822;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1774757859;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1774758197;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1774761067;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1774762867;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1774764667;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1774844131;a:1:{s:30:\"give_thricely_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:8:\"thricely\";s:4:\"args\";a:0:{}s:8:\"interval\";i:259200;}}}i:1775189633;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1775189731;a:1:{s:28:\"give_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1775275939;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1777176931;a:1:{s:29:\"give_monthly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}','on'),(2,'siteurl','http://localhost:8080','on'),(3,'home','http://localhost:8080','on'),(4,'blogname','Hope for Humanity and Community Development','on'),(5,'blogdescription','','on'),(6,'users_can_register','0','on'),(7,'admin_email','moemucu@gmail.com','on'),(8,'start_of_week','1','on'),(9,'use_balanceTags','0','on'),(10,'use_smilies','1','on'),(11,'require_name_email','1','on'),(12,'comments_notify','1','on'),(13,'posts_per_rss','10','on'),(14,'rss_use_excerpt','0','on'),(15,'mailserver_url','mail.example.com','on'),(16,'mailserver_login','login@example.com','on'),(17,'mailserver_pass','','on'),(18,'mailserver_port','110','on'),(19,'default_category','1','on'),(20,'default_comment_status','open','on'),(21,'default_ping_status','open','on'),(22,'default_pingback_flag','1','on'),(23,'posts_per_page','10','on'),(24,'date_format','F j, Y','on'),(25,'time_format','g:i a','on'),(26,'links_updated_date_format','F j, Y g:i a','on'),(27,'comment_moderation','0','on'),(28,'moderation_notify','1','on'),(29,'permalink_structure','/%postname%/','on'),(30,'rewrite_rules','a:137:{s:12:\"donations/?$\";s:30:\"index.php?post_type=give_forms\";s:42:\"donations/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=give_forms&feed=$matches[1]\";s:37:\"donations/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=give_forms&feed=$matches[1]\";s:29:\"donations/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=give_forms&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:13:\"give/(.+?)/?$\";s:50:\"index.php?url_prefix=give&give_form_id=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:34:\"category/(.+?)/give-api(/(.*))?/?$\";s:56:\"index.php?category_name=$matches[1]&give-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:31:\"tag/([^/]+)/give-api(/(.*))?/?$\";s:46:\"index.php?tag=$matches[1]&give-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"donations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"donations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"donations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"donations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"donations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"donations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"donations/([^/]+)/embed/?$\";s:43:\"index.php?give_forms=$matches[1]&embed=true\";s:30:\"donations/([^/]+)/trackback/?$\";s:37:\"index.php?give_forms=$matches[1]&tb=1\";s:50:\"donations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?give_forms=$matches[1]&feed=$matches[2]\";s:45:\"donations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?give_forms=$matches[1]&feed=$matches[2]\";s:38:\"donations/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?give_forms=$matches[1]&paged=$matches[2]\";s:45:\"donations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?give_forms=$matches[1]&cpage=$matches[2]\";s:37:\"donations/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?give_forms=$matches[1]&give-api=$matches[3]\";s:43:\"donations/[^/]+/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:54:\"donations/[^/]+/attachment/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:34:\"donations/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?give_forms=$matches[1]&page=$matches[2]\";s:26:\"donations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"donations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"donations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"donations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"donations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"donations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:19:\"give-api(/(.*))?/?$\";s:31:\"index.php?&give-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:28:\"comments/give-api(/(.*))?/?$\";s:31:\"index.php?&give-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:31:\"search/(.+)/give-api(/(.*))?/?$\";s:44:\"index.php?s=$matches[1]&give-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:34:\"author/([^/]+)/give-api(/(.*))?/?$\";s:54:\"index.php?author_name=$matches[1]&give-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/give-api(/(.*))?/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&give-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:43:\"([0-9]{4})/([0-9]{1,2})/give-api(/(.*))?/?$\";s:68:\"index.php?year=$matches[1]&monthnum=$matches[2]&give-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:30:\"([0-9]{4})/give-api(/(.*))?/?$\";s:47:\"index.php?year=$matches[1]&give-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:27:\"(.?.+?)/give-api(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&give-api=$matches[3]\";s:33:\".?.+?/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:44:\".?.+?/attachment/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:27:\"([^/]+)/give-api(/(.*))?/?$\";s:47:\"index.php?name=$matches[1]&give-api=$matches[3]\";s:33:\"[^/]+/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:44:\"[^/]+/attachment/([^/]+)/give-api(/(.*))?/?$\";s:53:\"index.php?attachment=$matches[1]&give-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on'),(31,'hack_file','0','on'),(32,'blog_charset','UTF-8','on'),(33,'moderation_keys','','off'),(34,'active_plugins','a:3:{i:0;s:27:\"astra-sites/astra-sites.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:13:\"give/give.php\";}','on'),(35,'category_base','','on'),(36,'ping_sites','https://rpc.pingomatic.com/','on'),(37,'comment_max_links','2','on'),(38,'gmt_offset','0','on'),(39,'default_email_category','1','on'),(40,'recently_edited','','off'),(41,'template','hope-humanity','on'),(42,'stylesheet','hope-humanity','on'),(43,'comment_registration','0','on'),(44,'html_type','text/html','on'),(45,'use_trackback','0','on'),(46,'default_role','subscriber','on'),(47,'db_version','60717','on'),(48,'uploads_use_yearmonth_folders','1','on'),(49,'upload_path','','on'),(50,'blog_public','1','on'),(51,'default_link_category','2','on'),(52,'show_on_front','page','on'),(53,'tag_base','','on'),(54,'show_avatars','1','on'),(55,'avatar_rating','G','on'),(56,'upload_url_path','','on'),(57,'thumbnail_size_w','150','on'),(58,'thumbnail_size_h','150','on'),(59,'thumbnail_crop','1','on'),(60,'medium_size_w','300','on'),(61,'medium_size_h','300','on'),(62,'avatar_default','mystery','on'),(63,'large_size_w','1024','on'),(64,'large_size_h','1024','on'),(65,'image_default_link_type','none','on'),(66,'image_default_size','','on'),(67,'image_default_align','','on'),(68,'close_comments_for_old_posts','0','on'),(69,'close_comments_days_old','14','on'),(70,'thread_comments','1','on'),(71,'thread_comments_depth','5','on'),(72,'page_comments','0','on'),(73,'comments_per_page','50','on'),(74,'default_comments_page','newest','on'),(75,'comment_order','asc','on'),(76,'sticky_posts','a:0:{}','on'),(77,'widget_categories','a:0:{}','on'),(78,'widget_text','a:0:{}','on'),(79,'widget_rss','a:0:{}','on'),(80,'uninstall_plugins','a:0:{}','off'),(81,'timezone_string','','on'),(82,'page_for_posts','36','on'),(83,'page_on_front','13','on'),(84,'default_post_format','0','on'),(85,'link_manager_enabled','0','on'),(86,'finished_splitting_shared_terms','1','on'),(87,'site_icon','0','on'),(88,'medium_large_size_w','768','on'),(89,'medium_large_size_h','0','on'),(90,'wp_page_for_privacy_policy','3','on'),(91,'show_comments_cookies_opt_in','1','on'),(92,'admin_email_lifespan','1790136667','on'),(93,'disallowed_keys','','off'),(94,'comment_previously_approved','1','on'),(95,'auto_plugin_theme_update_emails','a:0:{}','off'),(96,'auto_update_core_dev','enabled','on'),(97,'auto_update_core_minor','enabled','on'),(98,'auto_update_core_major','enabled','on'),(99,'wp_force_deactivated_plugins','a:0:{}','on'),(100,'wp_attachment_pages_enabled','0','on'),(101,'wp_notes_notify','1','on'),(102,'initial_db_version','60717','on'),(103,'wp_user_roles','a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:101:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"view_give_reports\";b:1;s:24:\"view_give_sensitive_data\";b:1;s:19:\"export_give_reports\";b:1;s:20:\"manage_give_settings\";b:1;s:18:\"view_give_payments\";b:1;s:15:\"view_give_forms\";b:1;s:15:\"edit_give_forms\";b:1;s:22:\"edit_others_give_forms\";b:1;s:18:\"publish_give_forms\";b:1;s:23:\"read_private_give_forms\";b:1;s:17:\"delete_give_forms\";b:1;s:25:\"delete_private_give_forms\";b:1;s:27:\"delete_published_give_forms\";b:1;s:24:\"delete_others_give_forms\";b:1;s:23:\"edit_private_give_forms\";b:1;s:25:\"edit_published_give_forms\";b:1;s:22:\"manage_give_form_terms\";b:1;s:20:\"edit_give_form_terms\";b:1;s:22:\"delete_give_form_terms\";b:1;s:22:\"assign_give_form_terms\";b:1;s:20:\"view_give_form_stats\";b:1;s:17:\"import_give_forms\";b:1;s:18:\"edit_give_payments\";b:1;s:25:\"edit_others_give_payments\";b:1;s:21:\"publish_give_payments\";b:1;s:26:\"read_private_give_payments\";b:1;s:20:\"delete_give_payments\";b:1;s:28:\"delete_private_give_payments\";b:1;s:30:\"delete_published_give_payments\";b:1;s:27:\"delete_others_give_payments\";b:1;s:26:\"edit_private_give_payments\";b:1;s:28:\"edit_published_give_payments\";b:1;s:25:\"manage_give_payment_terms\";b:1;s:23:\"edit_give_payment_terms\";b:1;s:25:\"delete_give_payment_terms\";b:1;s:25:\"assign_give_payment_terms\";b:1;s:23:\"view_give_payment_stats\";b:1;s:20:\"import_give_payments\";b:1;s:23:\"manage_zip_ai_assistant\";b:1;s:26:\"manage_ast_block_templates\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:23:\"manage_zip_ai_assistant\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"give_manager\";a:2:{s:4:\"name\";s:14:\"GiveWP Manager\";s:12:\"capabilities\";a:59:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:10:\"edit_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:17:\"view_give_reports\";b:1;s:24:\"view_give_sensitive_data\";b:1;s:19:\"export_give_reports\";b:1;s:20:\"manage_give_settings\";b:1;s:18:\"view_give_payments\";b:1;s:15:\"view_give_forms\";b:1;s:15:\"edit_give_forms\";b:1;s:22:\"edit_others_give_forms\";b:1;s:18:\"publish_give_forms\";b:1;s:23:\"read_private_give_forms\";b:1;s:17:\"delete_give_forms\";b:1;s:25:\"delete_private_give_forms\";b:1;s:27:\"delete_published_give_forms\";b:1;s:24:\"delete_others_give_forms\";b:1;s:23:\"edit_private_give_forms\";b:1;s:25:\"edit_published_give_forms\";b:1;s:22:\"manage_give_form_terms\";b:1;s:20:\"edit_give_form_terms\";b:1;s:22:\"delete_give_form_terms\";b:1;s:22:\"assign_give_form_terms\";b:1;s:20:\"view_give_form_stats\";b:1;s:17:\"import_give_forms\";b:1;s:18:\"edit_give_payments\";b:1;s:25:\"edit_others_give_payments\";b:1;s:21:\"publish_give_payments\";b:1;s:26:\"read_private_give_payments\";b:1;s:20:\"delete_give_payments\";b:1;s:28:\"delete_private_give_payments\";b:1;s:30:\"delete_published_give_payments\";b:1;s:27:\"delete_others_give_payments\";b:1;s:26:\"edit_private_give_payments\";b:1;s:28:\"edit_published_give_payments\";b:1;s:25:\"manage_give_payment_terms\";b:1;s:23:\"edit_give_payment_terms\";b:1;s:25:\"delete_give_payment_terms\";b:1;s:25:\"assign_give_payment_terms\";b:1;s:23:\"view_give_payment_stats\";b:1;s:20:\"import_give_payments\";b:1;}}s:15:\"give_accountant\";a:2:{s:4:\"name\";s:17:\"GiveWP Accountant\";s:12:\"capabilities\";a:9:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:15:\"view_give_forms\";b:1;s:23:\"read_private_give_forms\";b:1;s:17:\"view_give_reports\";b:1;s:19:\"export_give_reports\";b:1;s:18:\"edit_give_payments\";b:1;s:18:\"view_give_payments\";b:1;}}s:11:\"give_worker\";a:2:{s:4:\"name\";s:13:\"GiveWP Worker\";s:12:\"capabilities\";a:17:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"upload_files\";b:1;s:12:\"delete_posts\";b:0;s:18:\"view_give_payments\";b:1;s:15:\"view_give_forms\";b:1;s:17:\"delete_give_forms\";b:1;s:24:\"delete_others_give_forms\";b:1;s:25:\"delete_private_give_forms\";b:1;s:27:\"delete_published_give_forms\";b:1;s:15:\"edit_give_forms\";b:1;s:22:\"edit_others_give_forms\";b:1;s:23:\"edit_private_give_forms\";b:1;s:25:\"edit_published_give_forms\";b:1;s:18:\"publish_give_forms\";b:1;s:23:\"read_private_give_forms\";b:1;}}s:10:\"give_donor\";a:2:{s:4:\"name\";s:12:\"GiveWP Donor\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}}','on'),(104,'fresh_site','0','off'),(105,'user_count','1','off'),(106,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto'),(107,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"give-forms-sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto'),(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.9.4\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}','on'),(125,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1774585833;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off'),(126,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"4ad6ed4956ef7f814db220c22a123393\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on'),(128,'recovery_keys','a:0:{}','off'),(130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.9.4-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.4\";s:7:\"version\";s:5:\"6.9.4\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1774719229;s:15:\"version_checked\";s:5:\"6.9.4\";s:12:\"translations\";a:0:{}}','off'),(135,'action_scheduler_hybrid_store_demarkation','5','auto'),(136,'schema-ActionScheduler_StoreSchema','8.0.1774584848','auto'),(137,'schema-ActionScheduler_LoggerSchema','3.0.1774584848','auto'),(140,'give_settings','a:57:{s:12:\"base_country\";s:2:\"US\";s:9:\"test_mode\";s:8:\"disabled\";s:8:\"currency\";s:3:\"USD\";s:17:\"currency_position\";s:6:\"before\";s:16:\"session_lifetime\";s:6:\"604800\";s:12:\"email_access\";s:7:\"enabled\";s:19:\"thousands_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:15:\"number_decimals\";i:2;s:26:\"sequential-ordering_status\";s:7:\"enabled\";s:3:\"css\";s:7:\"enabled\";s:11:\"floatlabels\";s:8:\"disabled\";s:13:\"company_field\";s:8:\"disabled\";s:17:\"name_title_prefix\";s:8:\"disabled\";s:14:\"forms_singular\";s:7:\"enabled\";s:14:\"forms_archives\";s:7:\"enabled\";s:13:\"forms_excerpt\";s:7:\"enabled\";s:17:\"form_featured_img\";s:7:\"enabled\";s:12:\"form_sidebar\";s:7:\"enabled\";s:10:\"categories\";s:8:\"disabled\";s:4:\"tags\";s:8:\"disabled\";s:5:\"terms\";s:8:\"disabled\";s:13:\"admin_notices\";s:7:\"enabled\";s:5:\"cache\";s:7:\"enabled\";s:19:\"uninstall_on_delete\";s:8:\"disabled\";s:18:\"the_content_filter\";s:7:\"enabled\";s:14:\"scripts_footer\";s:8:\"disabled\";s:20:\"agree_to_terms_label\";s:15:\"Agree to Terms?\";s:14:\"agreement_text\";s:2367:\"<p>Acceptance of any contribution, gift or grant is at the discretion of the Hope for Humanity and Community Development. The  Hope for Humanity and Community Development will not accept any gift unless it can be used or expended consistently with the purpose and mission of the  Hope for Humanity and Community Development.</p>\n				<p>No irrevocable gift, whether outright or life-income in character, will be accepted if under any reasonable set of circumstances the gift would jeopardize the donor’s financial security.</p>\n				<p>The Hope for Humanity and Community Development will refrain from providing advice about the tax or other treatment of gifts and will encourage donors to seek guidance from their own professional advisers to assist them in the process of making their donation.</p>\n				<p>The Hope for Humanity and Community Development will accept donations of cash or publicly traded securities. Gifts of in-kind services will be accepted at the discretion of the Hope for Humanity and Community Development.</p>\n				<p>Certain other gifts, real property, personal property, in-kind gifts, non-liquid securities, and contributions whose sources are not transparent or whose use is restricted in some manner, must be reviewed prior to acceptance due to the special obligations raised or liabilities they may pose for Hope for Humanity and Community Development.</p>\n				<p>The Hope for Humanity and Community Development will provide acknowledgments to donors meeting tax requirements for property received by the charity as a gift. However, except for gifts of cash and publicly traded securities, no value shall be ascribed to any receipt or other form of substantiation of a gift received by Hope for Humanity and Community Development.</p>\n				<p>The Hope for Humanity and Community Development will respect the intent of the donor relating to gifts for restricted purposes and those relating to the desire to remain anonymous. With respect to anonymous gifts, the Hope for Humanity and Community Development will restrict information about the donor to only those staff members with a need to know.</p>\n				<p>The Hope for Humanity and Community Development will not compensate, whether through commissions, finders\' fees, or other means, any third party for directing a gift or a donor to the Hope for Humanity and Community Development.</p>\";s:21:\"babel_polyfill_script\";s:7:\"enabled\";s:8:\"gateways\";a:2:{s:6:\"manual\";i:1;s:7:\"offline\";i:1;}s:11:\"gateways_v3\";a:2:{s:6:\"manual\";i:1;s:7:\"offline\";i:1;}s:15:\"default_gateway\";s:6:\"manual\";s:18:\"default_gateway_v3\";s:6:\"manual\";s:31:\"global_offline_donation_content\";s:331:\"<p>To make an offline donation toward this cause, follow these steps: </p><ol><li>Write a check payable to \"{sitename}\"</li><li>On the memo line of the check, indicate that the donation is for \"{sitename}\"</li><li>Mail your check to:</li></ol>{offline_mailing_address}<br><p>Your tax-deductible donation is greatly appreciated!</p>\";s:43:\"give_offline_donation_enable_billing_fields\";s:8:\"disabled\";s:23:\"donor_default_user_role\";s:10:\"give_donor\";s:20:\"form_page_url_prefix\";s:4:\"give\";s:29:\"_give_stripe_get_all_accounts\";a:0:{}s:18:\"setup_page_enabled\";s:7:\"enabled\";s:14:\"usage_tracking\";s:8:\"disabled\";s:26:\"sequential-ordering_number\";i:1;s:42:\"offline-donation-instruction_email_message\";s:331:\"<p>To make an offline donation toward this cause, follow these steps: </p><ol><li>Write a check payable to \"{sitename}\"</li><li>On the memo line of the check, indicate that the donation is for \"{sitename}\"</li><li>Mail your check to:</li></ol>{offline_mailing_address}<br><p>Your tax-deductible donation is greatly appreciated!</p>\";s:30:\"donation-receipt_email_message\";s:394:\"Dear {name},\n\nThank you for your donation. Your generosity is appreciated! Here are the details of your donation:\n\n<strong>Donor:</strong> {fullname}\n<strong>Donation:</strong> {donation}\n<strong>Donation Date:</strong> {date}\n<strong>Amount:</strong> {amount}\n<strong>Payment Method:</strong> {payment_method}\n<strong>Payment ID:</strong> {payment_id}\n\n{receipt_link}\n\n\n\nSincerely,\n{sitename}\n\";s:26:\"new-donation_email_message\";s:280:\"Hi there,\n\nThis email is to inform you that a new donation has been made on your website: {site_url}.\n\n<strong>Donor:</strong> {name}\n<strong>Donation:</strong> {donation}\n<strong>Amount:</strong> {amount}\n<strong>Payment Method:</strong> {payment_method}\n\nThank you,\n\n{sitename}\n\";s:22:\"new-donation_recipient\";a:1:{i:0;s:17:\"moemucu@gmail.com\";}s:30:\"new-offline-donation_recipient\";a:1:{i:0;s:17:\"moemucu@gmail.com\";}s:28:\"new-donor-register_recipient\";a:1:{i:0;s:17:\"moemucu@gmail.com\";}s:25:\"new-donation_notification\";s:7:\"enabled\";s:20:\"auto_format_currency\";s:2:\"on\";s:12:\"success_page\";i:5;s:12:\"failure_page\";i:6;s:20:\"donor_dashboard_page\";i:7;s:41:\"override_legacy_donation_management_pages\";s:7:\"enabled\";s:12:\"history_page\";i:7;s:18:\"subscriptions_page\";i:7;s:26:\"manual_payment_instruction\";s:225:\"Thank you for your generous donation! To complete your physical donation, please visit our offices at Kampala, Uganda or contact us at info@hopeforhumanity.org or +256 700 000 000. Our team will guide you through the process.\";}','off'),(141,'give_default_api_version','v1','no'),(142,'wp_give_donors_db_version','1.0','no'),(143,'wp_give_donormeta_db_version','1.0','no'),(144,'wp_give_comments_db_version','1.0','no'),(145,'wp_give_commentmeta_db_version','1.0','no'),(146,'wp_give_sessions_db_version','1.0','no'),(147,'wp_give_formmeta_db_version','1.0','no'),(148,'wp_give_sequential_ordering_db_version','1.0','no'),(149,'wp_give_donationmeta_db_version','1.0','no'),(151,'give_completed_upgrades','a:41:{i:0;b:0;i:1;s:25:\"v18_upgrades_core_setting\";i:2;s:30:\"v220_rename_donation_meta_type\";i:3;s:38:\"v270_store_stripe_account_for_donation\";i:4;s:17:\"v20_logs_upgrades\";i:5;s:30:\"upgrade_give_user_caps_cleanup\";i:6;s:32:\"upgrade_give_payment_customer_id\";i:7;s:27:\"upgrade_give_offline_status\";i:8;s:26:\"v18_upgrades_form_metadata\";i:9;s:30:\"v189_upgrades_levels_post_meta\";i:10;s:26:\"v1812_update_amount_values\";i:11;s:34:\"v1812_update_donor_purchase_values\";i:12;s:23:\"v1813_update_user_roles\";i:13;s:29:\"v1813_update_donor_user_roles\";i:14;s:43:\"v1817_update_donation_iranian_currency_code\";i:15;s:24:\"v1817_cleanup_user_roles\";i:16;s:39:\"v1818_assign_custom_amount_set_donation\";i:17;s:30:\"v1818_give_worker_role_cleanup\";i:18;s:26:\"v20_upgrades_form_metadata\";i:19;s:32:\"v20_move_metadata_into_new_table\";i:20;s:23:\"v20_rename_donor_tables\";i:21;s:23:\"v20_upgrades_donor_name\";i:22;s:25:\"v20_upgrades_user_address\";i:23;s:29:\"v20_upgrades_payment_metadata\";i:24;s:30:\"v201_upgrades_payment_metadata\";i:25;s:23:\"v201_add_missing_donors\";i:26;s:33:\"v201_move_metadata_into_new_table\";i:27;s:18:\"v201_logs_upgrades\";i:28;s:32:\"v210_verify_form_status_upgrades\";i:29;s:25:\"v213_delete_donation_meta\";i:30;s:28:\"v215_update_donor_user_roles\";i:31;s:22:\"v224_update_donor_meta\";i:32;s:31:\"v224_update_donor_meta_forms_id\";i:33;s:20:\"v230_move_donor_note\";i:34;s:23:\"v230_move_donation_note\";i:35;s:41:\"v230_delete_donor_wall_related_donor_data\";i:36;s:43:\"v230_delete_donor_wall_related_comment_data\";i:37;s:30:\"v240_update_form_goal_progress\";i:38;s:21:\"v241_remove_sale_logs\";i:39;s:39:\"add-past-donation-data-to-revenue-table\";i:40;s:21:\"migrate_existing_logs\";}','off'),(152,'give_version','4.14.3','off'),(157,'widget_give_forms_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),(159,'action_scheduler_migration_status','complete','auto'),(160,'as_has_wp_comment_logs','no','on'),(161,'action_scheduler_lock_async-request-runner','69c85c8d962bd0.37319983|1774738633','no'),(163,'give_install_pages_created','1','off'),(164,'_give_table_check','1775189822','off'),(166,'_site_transient_timeout_browser_02379953b93cd223243db09f1dd4e5b9','1775189862','off'),(167,'_site_transient_browser_02379953b93cd223243db09f1dd4e5b9','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"146.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off'),(168,'_site_transient_timeout_php_check_6e3cf885d0e1a160cba79b33b6ad38bf','1775189863','off'),(169,'_site_transient_php_check_6e3cf885d0e1a160cba79b33b6ad38bf','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off'),(172,'finished_updating_comment_type','1','auto'),(189,'can_compress_scripts','1','on'),(196,'current_theme','Hope for Humanity','auto'),(197,'theme_switched','','auto'),(201,'theme_mods_astra','a:3:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1774590663;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:18:\"give-forms-sidebar\";a:0:{}}}}','off'),(202,'bsf_usage_migrated','1','off'),(203,'astra-settings','a:2:{s:18:\"theme-auto-version\";s:6:\"4.12.6\";s:22:\"is_theme_queue_running\";b:0;}','auto'),(204,'astra_usage_installed_time','1774585860','off'),(206,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1774733781;s:7:\"checked\";a:5:{s:5:\"astra\";s:6:\"4.12.6\";s:13:\"hope-humanity\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.4\";s:16:\"twentytwentyfour\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:6:\"4.12.6\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/astra.4.12.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off'),(209,'astra-sites-auto-version','4.4.52','off'),(212,'wpcf7','a:2:{s:7:\"version\";s:5:\"6.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1774585964;s:7:\"version\";s:5:\"6.1.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','auto'),(214,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1774719230;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:13:\"give/give.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"w.org/plugins/give\";s:4:\"slug\";s:4:\"give\";s:6:\"plugin\";s:13:\"give/give.php\";s:11:\"new_version\";s:6:\"4.14.3\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/give/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/give.4.14.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:57:\"https://ps.w.org/give/assets/icon-256x256.jpg?rev=2873287\";s:2:\"1x\";s:57:\"https://ps.w.org/give/assets/icon-128x128.jpg?rev=2873287\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/give/assets/banner-1544x500.jpg?rev=2979689\";s:2:\"1x\";s:59:\"https://ps.w.org/give/assets/banner-772x250.jpg?rev=2979689\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"astra-sites/astra-sites.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/astra-sites\";s:4:\"slug\";s:11:\"astra-sites\";s:6:\"plugin\";s:27:\"astra-sites/astra-sites.php\";s:11:\"new_version\";s:6:\"4.4.52\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/astra-sites/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/astra-sites.4.4.52.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/astra-sites/assets/icon-256x256.gif?rev=3060571\";s:2:\"1x\";s:64:\"https://ps.w.org/astra-sites/assets/icon-256x256.gif?rev=3060571\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/astra-sites/assets/banner-1544x500.jpg?rev=3055258\";s:2:\"1x\";s:66:\"https://ps.w.org/astra-sites/assets/banner-772x250.jpg?rev=3055258\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"5.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.5\";s:13:\"give/give.php\";s:6:\"4.14.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"astra-sites/astra-sites.php\";s:6:\"4.4.52\";}}','off'),(215,'astra_sites_recent_import_log_file','/Users/mac/dev/hope-for-humanity-and-community-development/wp-content/uploads/astra-sites/import-27-Mar-2026-04-33-02-328d7767ce4bf20fa1410ddf7ecfb705.log','off'),(216,'_site_transient_timeout_astra-sites-import-check','1775190782','off'),(217,'_site_transient_astra-sites-import-check','true','off'),(219,'astra-sites-last-export-checksums-latest','y#zUdnLJ%Kzu','off'),(220,'astra-sites-batch-status-string','Request Failed! Still Calling..','off'),(221,'astra-blocks-batch-status-string','Complete storing data for page 4','off'),(223,'astra_sites_settings','a:4:{s:12:\"page_builder\";s:9:\"gutenberg\";s:18:\"_import_timestamps\";a:1:{s:14:\"content_edited\";a:18:{i:0;i:1774586018;i:1;i:1774586054;i:2;i:1774586067;i:3;i:1774586075;i:4;i:1774586084;i:5;i:1774701953;i:6;i:1774702569;i:7;i:1774703258;i:8;i:1774703349;i:9;i:1774703412;i:10;i:1774734799;i:11;i:1774734827;i:12;i:1774734835;i:13;i:1774734848;i:14;i:1774735023;i:15;i:1774735037;i:16;i:1774739008;i:17;i:1774739056;}}s:13:\"steps_visited\";a:4:{i:0;s:7:\"welcome\";i:1;s:12:\"page-builder\";i:2;s:16:\"template-listing\";i:3;s:16:\"template-preview\";}s:20:\"dismiss_ai_promotion\";s:4:\"true\";}','off'),(225,'astra-sites-last-export-checksums','y#zUdnLJ%Kzu','off'),(226,'astra-sites-batch-is-complete','yes','off'),(227,'astra-sites-fresh-site','no','off'),(230,'astra_sites_usage_installed_time','1774586025','off'),(231,'ast-block-templates-version','2.4.21','auto'),(232,'_transient_timeout_zipwp_images_server_country_code','1775190828','off'),(233,'_transient_zipwp_images_server_country_code','UG','off'),(242,'_site_transient_timeout_browser_5b2ba492da1bf8b88f5f71b161575820','1775191519','off'),(243,'_site_transient_browser_5b2ba492da1bf8b88f5f71b161575820','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"137.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off'),(244,'allowed_astra_notices','a:2:{i:0;s:26:\"astra-sites-welcome-notice\";i:1;s:24:\"astra_sites-optin-notice\";}','auto'),(266,'astra_sites_current_import_template_type','classic','auto'),(267,'astra_sites_current_spectra_blocks_ver','v3','auto'),(294,'theme_mods_hope-humanity','a:2:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','auto'),(323,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":6,\"critical\":1}','on'),(325,'_transient_timeout_zip_ai_auth_token','1774788272','off'),(326,'_transient_zip_ai_auth_token','','off'),(376,'_site_transient_timeout_theme_roots','1774735580','off'),(377,'_site_transient_theme_roots','a:5:{s:5:\"astra\";s:7:\"/themes\";s:13:\"hope-humanity\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','off'),(385,'wp_calendar_block_has_published_posts','1','auto'),(398,'category_children','a:0:{}','auto'),(407,'_site_transient_timeout_wp_theme_files_patterns-73ee722d176243ac80f2e2b0cacfa3b6','1774739895','off'),(408,'_site_transient_wp_theme_files_patterns-73ee722d176243ac80f2e2b0cacfa3b6','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,12,'_form','<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),(4,12,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <moemucu@gmail.com>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(5,12,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:33:\"[_site_title] <moemucu@gmail.com>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(6,12,'_messages','a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),(7,12,'_additional_settings',''),(8,12,'_locale','en_US'),(9,12,'_hash','cd085ef47b1c8d7518bac39704c6b540151a81d842420bd4599fb9e1760f3262'),(10,18,'_menu_item_type','post_type'),(11,18,'_menu_item_menu_item_parent','0'),(12,18,'_menu_item_object_id','13'),(13,18,'_menu_item_object','page'),(14,18,'_menu_item_target',''),(15,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(16,18,'_menu_item_xfn',''),(17,18,'_menu_item_url',''),(18,19,'_menu_item_type','post_type'),(19,19,'_menu_item_menu_item_parent','0'),(20,19,'_menu_item_object_id','14'),(21,19,'_menu_item_object','page'),(22,19,'_menu_item_target',''),(23,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(24,19,'_menu_item_xfn',''),(25,19,'_menu_item_url',''),(26,20,'_menu_item_type','post_type'),(27,20,'_menu_item_menu_item_parent','0'),(28,20,'_menu_item_object_id','15'),(29,20,'_menu_item_object','page'),(30,20,'_menu_item_target',''),(31,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(32,20,'_menu_item_xfn',''),(33,20,'_menu_item_url',''),(34,21,'_menu_item_type','post_type'),(35,21,'_menu_item_menu_item_parent','0'),(36,21,'_menu_item_object_id','17'),(37,21,'_menu_item_object','page'),(38,21,'_menu_item_target',''),(39,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(40,21,'_menu_item_xfn',''),(41,21,'_menu_item_url',''),(42,22,'_menu_item_type','post_type'),(43,22,'_menu_item_menu_item_parent','0'),(44,22,'_menu_item_object_id','16'),(45,22,'_menu_item_object','page'),(46,22,'_menu_item_target',''),(47,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(48,22,'_menu_item_xfn',''),(49,22,'_menu_item_url',''),(50,28,'_menu_item_type','post_type'),(51,28,'_menu_item_menu_item_parent','20'),(52,28,'_menu_item_object_id','15'),(53,28,'_menu_item_object','page'),(54,28,'_menu_item_target',''),(55,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(56,28,'_menu_item_xfn',''),(57,28,'_menu_item_url',''),(58,29,'_menu_item_type','post_type'),(59,29,'_menu_item_menu_item_parent','20'),(60,29,'_menu_item_object_id','10'),(61,29,'_menu_item_object','give_forms'),(62,29,'_menu_item_target',''),(63,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(64,29,'_menu_item_xfn',''),(65,29,'_menu_item_url',''),(66,30,'_menu_item_type','post_type'),(67,30,'_menu_item_menu_item_parent','20'),(68,30,'_menu_item_object_id','11'),(69,30,'_menu_item_object','give_forms'),(70,30,'_menu_item_target',''),(71,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(72,30,'_menu_item_xfn',''),(73,30,'_menu_item_url',''),(82,37,'_menu_item_type','post_type'),(83,37,'_menu_item_menu_item_parent','0'),(84,37,'_menu_item_object_id','36'),(85,37,'_menu_item_object','page'),(86,37,'_menu_item_target',''),(87,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(88,37,'_menu_item_xfn',''),(89,37,'_menu_item_url',''),(90,38,'_wp_page_template','page-branding.php');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2026-03-27 04:11:08','2026-03-27 04:11:08','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2026-03-27 04:11:08','2026-03-27 04:11:08','',0,'http://localhost:8080/?p=1',0,'post','',1),(2,1,'2026-03-27 04:11:08','2026-03-27 04:11:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2026-03-27 04:11:08','2026-03-27 04:11:08','',0,'http://localhost:8080/?page_id=2',0,'page','',0),(3,1,'2026-03-27 04:11:08','2026-03-27 04:11:08','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2026-03-27 04:11:08','2026-03-27 04:11:08','',0,'http://localhost:8080/?page_id=3',0,'page','',0),(4,0,'2026-03-27 04:12:19','2026-03-27 04:12:19','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2026-03-27 04:12:19','2026-03-27 04:12:19','',0,'http://localhost:8080/?p=4',0,'wp_navigation','',0),(5,1,'2026-03-27 04:17:02','2026-03-27 04:17:02','[give_receipt]','Donation Confirmation','','publish','closed','closed','','donation-confirmation','','','2026-03-27 04:17:02','2026-03-27 04:17:02','',0,'http://localhost:8080/?page_id=5',0,'page','',0),(6,1,'2026-03-27 04:17:02','2026-03-27 04:17:02','We&#039;re sorry, your donation failed to process. Please try again or contact site support.','Donation Failed','','publish','closed','closed','','donation-failed','','','2026-03-27 04:17:02','2026-03-27 04:17:02','',0,'http://localhost:8080/?page_id=6',0,'page','',0),(7,1,'2026-03-27 04:17:02','2026-03-27 04:17:02','<!-- wp:give/donor-dashboard {\"align\":\"wide\"} /-->','Donor Dashboard','','publish','close','close','','donor-dashboard','','','2026-03-27 04:17:02','2026-03-27 04:17:02','',0,'http://localhost:8080/?page_id=7',0,'page','',0),(8,1,'2026-03-27 04:23:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-03-27 04:23:17','0000-00-00 00:00:00','',0,'http://localhost:8080/?p=8',0,'post','',0),(9,0,'2026-03-27 04:24:01','2026-03-27 04:24:01','','Clean Water Project','','publish','closed','closed','','clean-water-project','','','2026-03-27 04:24:01','2026-03-27 04:24:01','',0,'http://localhost:8080/?give_forms=clean-water-project',0,'give_forms','',0),(10,0,'2026-03-27 04:25:40','2026-03-27 04:25:40','','Food Aid Programme','','publish','closed','closed','','food-aid-programme','','','2026-03-27 04:25:40','2026-03-27 04:25:40','',0,'http://localhost:8080/?give_forms=food-aid-programme',0,'give_forms','',0),(11,0,'2026-03-27 04:26:04','2026-03-27 04:26:04','','Orphan Support','','publish','closed','closed','','orphan-support','','','2026-03-27 04:26:04','2026-03-27 04:26:04','',0,'http://localhost:8080/?give_forms=orphan-support',0,'give_forms','',0),(12,0,'2026-03-27 04:32:44','2026-03-27 04:32:44','<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <moemucu@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <moemucu@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2026-03-27 04:32:44','2026-03-27 04:32:44','',0,'http://localhost:8080/?post_type=wpcf7_contact_form&p=12',0,'wpcf7_contact_form','',0),(13,0,'2026-03-27 04:33:38','2026-03-27 04:33:38','','Home','','publish','closed','closed','','home','','','2026-03-27 04:33:38','2026-03-27 04:33:38','',0,'http://localhost:8080/?page_id=13',0,'page','',0),(14,0,'2026-03-27 04:34:14','2026-03-27 04:34:14','<div class=\"about-page\">\n\n    <div class=\"about-hero\">\n        <h2>Who We Are</h2>\n        <p>Hope for Humanity and Community Development is a nonprofit organization dedicated to transforming lives through sustainable humanitarian programs across underserved communities.</p>\n    </div>\n\n    <div class=\"about-mission-vision\">\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">🎯</div>\n            <h3>Our Mission</h3>\n            <p>To provide life-changing support through clean water, food aid, and orphan care programs that restore dignity and create lasting change in vulnerable communities.</p>\n        </div>\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">🌍</div>\n            <h3>Our Vision</h3>\n            <p>A world where every person has access to clean water, nutritious food, and a safe and loving environment to grow and thrive.</p>\n        </div>\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">💎</div>\n            <h3>Our Values</h3>\n            <p>Integrity, compassion, transparency, and community-driven impact guide everything we do. We believe in working with communities, not just for them.</p>\n        </div>\n    </div>\n\n    <div class=\"about-story\">\n        <h2>Our Story</h2>\n        <p>Founded in 2020, Hope for Humanity began with a simple belief — that small acts of kindness, when organized and sustained, can transform entire communities. What started as a small food distribution drive in Kampala has grown into a fully-fledged organization running three major programs across 12+ communities in Uganda.</p>\n        <p>Today, we have impacted over 5,000 lives and continue to grow, driven by the generosity of donors like you and the dedication of our team and volunteers on the ground.</p>\n    </div>\n\n    <div class=\"about-cta\">\n        <h2>Join Us in Making a Difference</h2>\n        <p>Whether you donate, volunteer, or spread the word — every action counts.</p>\n        <a href=\"/donate/\" class=\"btn-primary\">Donate Now</a>\n    </div>\n\n</div>','About Us','','publish','closed','closed','','about-us','','','2026-03-28 13:07:38','2026-03-28 13:07:38','',0,'http://localhost:8080/?page_id=14',0,'page','',0),(15,0,'2026-03-27 04:34:27','2026-03-27 04:34:27','<!-- CLEAN WATER -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">💧</div>\n    <h2>Clean Water Project</h2>\n    <p>Access to clean water is a basic human right. Yet millions of people in our communities walk miles every day to collect unsafe water that causes disease and death. Our Clean Water Project drills boreholes, installs water purification systems, and educates communities on water hygiene.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>2,500+</strong><span>People Served</span></div>\n        <div class=\"cause-impact-item\"><strong>8</strong><span>Wells Drilled</span></div>\n        <div class=\"cause-impact-item\"><strong>5</strong><span>Villages Reached</span></div>\n    </div>\n    [give_form id=\"9\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Clean Water\" link_class=\"cause-donate-btn\"]\n</div>\n\n<hr class=\"cause-divider\">\n\n<!-- FOOD AID -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">🍽️</div>\n    <h2>Food Aid Programme</h2>\n    <p>Hunger is a silent crisis affecting thousands of families in our region. Our Food Aid Programme delivers nutritious monthly food packages to vulnerable families, supports school feeding programs, and works with local farmers to build long-term food security.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>1,800+</strong><span>Families Fed</span></div>\n        <div class=\"cause-impact-item\"><strong>12</strong><span>Schools Supported</span></div>\n        <div class=\"cause-impact-item\"><strong>Monthly</strong><span>Food Packages</span></div>\n    </div>\n    [give_form id=\"10\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Food Aid\" link_class=\"cause-donate-btn\"]\n</div>\n\n<hr class=\"cause-divider\">\n\n<!-- ORPHAN SUPPORT -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">🤝</div>\n    <h2>Orphan Support</h2>\n    <p>Every child deserves love, shelter, and education. Our Orphan Support program provides orphaned and vulnerable children with safe housing, quality education, healthcare, and the emotional support they need to thrive and build a better future.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>300+</strong><span>Children Supported</span></div>\n        <div class=\"cause-impact-item\"><strong>4</strong><span>Safe Homes</span></div>\n        <div class=\"cause-impact-item\"><strong>100%</strong><span>In School</span></div>\n    </div>\n    [give_form id=\"11\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Orphan Support\" link_class=\"cause-donate-btn\"]\n</div>','Our Causes','','publish','closed','closed','','our-causes','','','2026-03-28 12:45:53','2026-03-28 12:45:53','',0,'http://localhost:8080/?page_id=15',0,'page','',0),(16,0,'2026-03-27 04:34:35','2026-03-27 04:34:35','<div class=\"contact-page\">\n\n    <div class=\"contact-intro\">\n        <h2>Get In Touch</h2>\n        <p>We would love to hear from you. Whether you have a question, want to volunteer, or are interested in partnering with us — reach out!</p>\n    </div>\n\n    <div class=\"contact-grid\">\n        <div class=\"contact-info\">\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📍</div>\n                <h3>Our Location</h3>\n                <p>Kampala, Uganda</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📧</div>\n                <h3>Email Us</h3>\n                <p>info@hopeforhumanity.org</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📞</div>\n                <h3>Call Us</h3>\n                <p>+256 700 000 000</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">🕐</div>\n                <h3>Working Hours</h3>\n                <p>Monday - Friday: 8am - 5pm</p>\n            </div>\n        </div>\n\n        <div class=\"contact-form-wrap\">\n            [contact-form-7 id=\"12\" title=\"Contact form 1\"]\n        </div>\n    </div>\n\n</div>','Contact Us','','publish','closed','closed','','contact-us','','','2026-03-28 13:10:12','2026-03-28 13:10:12','',0,'http://localhost:8080/?page_id=16',0,'page','',0),(17,0,'2026-03-27 04:34:44','2026-03-27 04:34:44','<div class=\"donate-page\">\n    <div class=\"donate-intro\">\n        <h2>Choose a Cause to Support</h2>\n        <p>100% of your donation goes directly to those in need. Choose a cause below and make a difference today.</p>\n    </div>\n\n    <div class=\"donate-forms-grid\">\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">💧</div>\n            <h3>Clean Water Project</h3>\n            [give_form id=\"9\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">🍽️</div>\n            <h3>Food Aid Programme</h3>\n            [give_form id=\"10\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">🤝</div>\n            <h3>Orphan Support</h3>\n            [give_form id=\"11\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n    </div>\n</div>','Donate','','publish','closed','closed','','donate','','','2026-03-28 12:56:09','2026-03-28 12:56:09','',0,'http://localhost:8080/?page_id=17',0,'page','',0),(18,0,'2026-03-27 06:37:18','2026-03-27 06:37:18',' ','','','publish','closed','closed','','18','','','2026-03-27 06:37:18','2026-03-27 06:37:18','',0,'http://localhost:8080/?p=18',0,'nav_menu_item','',0),(19,0,'2026-03-27 06:37:18','2026-03-27 06:37:18',' ','','','publish','closed','closed','','19','','','2026-03-27 06:37:18','2026-03-27 06:37:18','',0,'http://localhost:8080/?p=19',2,'nav_menu_item','',0),(20,0,'2026-03-27 06:37:19','2026-03-27 06:37:19',' ','','','publish','closed','closed','','20','','','2026-03-27 06:37:19','2026-03-27 06:37:19','',0,'http://localhost:8080/?p=20',3,'nav_menu_item','',0),(21,0,'2026-03-27 06:37:20','2026-03-27 06:37:20',' ','','','publish','closed','closed','','21','','','2026-03-27 06:37:20','2026-03-27 06:37:20','',0,'http://localhost:8080/?p=21',4,'nav_menu_item','',0),(22,0,'2026-03-27 06:37:20','2026-03-27 06:37:20',' ','','','publish','closed','closed','','22','','','2026-03-27 06:37:20','2026-03-27 06:37:20','',0,'http://localhost:8080/?p=22',5,'nav_menu_item','',0),(23,0,'2026-03-28 12:45:53','2026-03-28 12:45:53','<!-- CLEAN WATER -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">💧</div>\n    <h2>Clean Water Project</h2>\n    <p>Access to clean water is a basic human right. Yet millions of people in our communities walk miles every day to collect unsafe water that causes disease and death. Our Clean Water Project drills boreholes, installs water purification systems, and educates communities on water hygiene.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>2,500+</strong><span>People Served</span></div>\n        <div class=\"cause-impact-item\"><strong>8</strong><span>Wells Drilled</span></div>\n        <div class=\"cause-impact-item\"><strong>5</strong><span>Villages Reached</span></div>\n    </div>\n    [give_form id=\"9\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Clean Water\" link_class=\"cause-donate-btn\"]\n</div>\n\n<hr class=\"cause-divider\">\n\n<!-- FOOD AID -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">🍽️</div>\n    <h2>Food Aid Programme</h2>\n    <p>Hunger is a silent crisis affecting thousands of families in our region. Our Food Aid Programme delivers nutritious monthly food packages to vulnerable families, supports school feeding programs, and works with local farmers to build long-term food security.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>1,800+</strong><span>Families Fed</span></div>\n        <div class=\"cause-impact-item\"><strong>12</strong><span>Schools Supported</span></div>\n        <div class=\"cause-impact-item\"><strong>Monthly</strong><span>Food Packages</span></div>\n    </div>\n    [give_form id=\"10\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Food Aid\" link_class=\"cause-donate-btn\"]\n</div>\n\n<hr class=\"cause-divider\">\n\n<!-- ORPHAN SUPPORT -->\n<div class=\"cause-page-section\">\n    <div class=\"cause-page-icon\">🤝</div>\n    <h2>Orphan Support</h2>\n    <p>Every child deserves love, shelter, and education. Our Orphan Support program provides orphaned and vulnerable children with safe housing, quality education, healthcare, and the emotional support they need to thrive and build a better future.</p>\n    <div class=\"cause-impact-bar\">\n        <div class=\"cause-impact-item\"><strong>300+</strong><span>Children Supported</span></div>\n        <div class=\"cause-impact-item\"><strong>4</strong><span>Safe Homes</span></div>\n        <div class=\"cause-impact-item\"><strong>100%</strong><span>In School</span></div>\n    </div>\n    [give_form id=\"11\" display_style=\"modal\" show_title=\"false\" show_goal=\"true\" show_content=\"none\" link_text=\"Donate to Orphan Support\" link_class=\"cause-donate-btn\"]\n</div>','Our Causes','','inherit','closed','closed','','15-revision-v1','','','2026-03-28 12:45:53','2026-03-28 12:45:53','',15,'http://localhost:8080/?p=23',0,'revision','',0),(24,0,'2026-03-28 12:56:09','2026-03-28 12:56:09','<div class=\"donate-page\">\n    <div class=\"donate-intro\">\n        <h2>Choose a Cause to Support</h2>\n        <p>100% of your donation goes directly to those in need. Choose a cause below and make a difference today.</p>\n    </div>\n\n    <div class=\"donate-forms-grid\">\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">💧</div>\n            <h3>Clean Water Project</h3>\n            [give_form id=\"9\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">🍽️</div>\n            <h3>Food Aid Programme</h3>\n            [give_form id=\"10\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n\n        <div class=\"donate-form-card\">\n            <div class=\"cause-page-icon\">🤝</div>\n            <h3>Orphan Support</h3>\n            [give_form id=\"11\" display_style=\"reveal\" show_title=\"false\" show_goal=\"true\"]\n        </div>\n    </div>\n</div>','Donate','','inherit','closed','closed','','17-revision-v1','','','2026-03-28 12:56:09','2026-03-28 12:56:09','',17,'http://localhost:8080/?p=24',0,'revision','',0),(25,0,'2026-03-28 13:07:38','2026-03-28 13:07:38','<div class=\"about-page\">\n\n    <div class=\"about-hero\">\n        <h2>Who We Are</h2>\n        <p>Hope for Humanity and Community Development is a nonprofit organization dedicated to transforming lives through sustainable humanitarian programs across underserved communities.</p>\n    </div>\n\n    <div class=\"about-mission-vision\">\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">🎯</div>\n            <h3>Our Mission</h3>\n            <p>To provide life-changing support through clean water, food aid, and orphan care programs that restore dignity and create lasting change in vulnerable communities.</p>\n        </div>\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">🌍</div>\n            <h3>Our Vision</h3>\n            <p>A world where every person has access to clean water, nutritious food, and a safe and loving environment to grow and thrive.</p>\n        </div>\n        <div class=\"mv-card\">\n            <div class=\"cause-page-icon\">💎</div>\n            <h3>Our Values</h3>\n            <p>Integrity, compassion, transparency, and community-driven impact guide everything we do. We believe in working with communities, not just for them.</p>\n        </div>\n    </div>\n\n    <div class=\"about-story\">\n        <h2>Our Story</h2>\n        <p>Founded in 2020, Hope for Humanity began with a simple belief — that small acts of kindness, when organized and sustained, can transform entire communities. What started as a small food distribution drive in Kampala has grown into a fully-fledged organization running three major programs across 12+ communities in Uganda.</p>\n        <p>Today, we have impacted over 5,000 lives and continue to grow, driven by the generosity of donors like you and the dedication of our team and volunteers on the ground.</p>\n    </div>\n\n    <div class=\"about-cta\">\n        <h2>Join Us in Making a Difference</h2>\n        <p>Whether you donate, volunteer, or spread the word — every action counts.</p>\n        <a href=\"/donate/\" class=\"btn-primary\">Donate Now</a>\n    </div>\n\n</div>','About Us','','inherit','closed','closed','','14-revision-v1','','','2026-03-28 13:07:38','2026-03-28 13:07:38','',14,'http://localhost:8080/?p=25',0,'revision','',0),(26,0,'2026-03-28 13:09:09','2026-03-28 13:09:09','<div class=\"contact-page\">\n\n    <div class=\"contact-intro\">\n        <h2>Get In Touch</h2>\n        <p>We would love to hear from you. Whether you have a question, want to volunteer, or are interested in partnering with us — reach out!</p>\n    </div>\n\n    <div class=\"contact-grid\">\n        <div class=\"contact-info\">\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📍</div>\n                <h3>Our Location</h3>\n                <p>Kampala, Uganda</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📧</div>\n                <h3>Email Us</h3>\n                <p>info@hopeforhumanity.org</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📞</div>\n                <h3>Call Us</h3>\n                <p>+256 700 000 000</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">🕐</div>\n                <h3>Working Hours</h3>\n                <p>Monday - Friday: 8am - 5pm</p>\n            </div>\n        </div>\n\n        <div class=\"contact-form-wrap\">\n            [contact-form-7 id=\"1\" title=\"Contact form 1\"]\n        </div>\n    </div>\n\n</div>','Contact Us','','inherit','closed','closed','','16-revision-v1','','','2026-03-28 13:09:09','2026-03-28 13:09:09','',16,'http://localhost:8080/?p=26',0,'revision','',0),(27,0,'2026-03-28 13:10:12','2026-03-28 13:10:12','<div class=\"contact-page\">\n\n    <div class=\"contact-intro\">\n        <h2>Get In Touch</h2>\n        <p>We would love to hear from you. Whether you have a question, want to volunteer, or are interested in partnering with us — reach out!</p>\n    </div>\n\n    <div class=\"contact-grid\">\n        <div class=\"contact-info\">\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📍</div>\n                <h3>Our Location</h3>\n                <p>Kampala, Uganda</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📧</div>\n                <h3>Email Us</h3>\n                <p>info@hopeforhumanity.org</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">📞</div>\n                <h3>Call Us</h3>\n                <p>+256 700 000 000</p>\n            </div>\n            <div class=\"contact-info-card\">\n                <div class=\"cause-page-icon\">🕐</div>\n                <h3>Working Hours</h3>\n                <p>Monday - Friday: 8am - 5pm</p>\n            </div>\n        </div>\n\n        <div class=\"contact-form-wrap\">\n            [contact-form-7 id=\"12\" title=\"Contact form 1\"]\n        </div>\n    </div>\n\n</div>','Contact Us','','inherit','closed','closed','','16-revision-v1','','','2026-03-28 13:10:12','2026-03-28 13:10:12','',16,'http://localhost:8080/?p=27',0,'revision','',0),(28,0,'2026-03-28 21:36:22','2026-03-28 21:36:22','','Clean Water','','publish','closed','closed','','clean-water','','','2026-03-28 21:36:22','2026-03-28 21:36:22','',0,'http://localhost:8080/clean-water/',6,'nav_menu_item','',0),(29,0,'2026-03-28 21:37:14','2026-03-28 21:37:14','','Food Aid','','publish','closed','closed','','food-aid','','','2026-03-28 21:37:14','2026-03-28 21:37:14','',0,'http://localhost:8080/food-aid/',7,'nav_menu_item','',0),(30,0,'2026-03-28 21:37:20','2026-03-28 21:37:20',' ','','','publish','closed','closed','','30','','','2026-03-28 21:37:20','2026-03-28 21:37:20','',0,'http://localhost:8080/30/',8,'nav_menu_item','',0),(31,0,'2026-03-28 21:53:19','2026-03-28 21:53:19','','News & Updates','','publish','closed','closed','','news-updates','','','2026-03-28 21:53:19','2026-03-28 21:53:19','',0,'http://localhost:8080/news-updates/',0,'page','',0),(34,0,'2026-03-28 21:54:08','2026-03-28 21:54:08','Our Food Aid Programme successfully distributed nutritious food packages to 1,800 families across Kampala and surrounding areas this month. The packages included rice, beans, cooking oil, and other essential items to help families through difficult times.','Food Aid Distribution Reaches 1,800 Families This Month','','publish','open','open','','food-aid-distribution-reaches-1800-families-this-month','','','2026-03-28 21:54:08','2026-03-28 21:54:08','',0,'http://localhost:8080/food-aid-distribution-reaches-1800-families-this-month/',0,'post','',0),(35,0,'2026-03-28 21:57:03','2026-03-28 21:57:03','Thanks to the generous donations from our supporters, we have successfully drilled a new borehole in Wakiso District, providing clean and safe drinking water to over 300 families. The community came together to celebrate this milestone and expressed their heartfelt gratitude.','New Borehole Drilled in Wakiso District','','publish','open','open','','new-borehole-drilled-in-wakiso-district','','','2026-03-28 21:57:03','2026-03-28 21:57:03','',0,'http://localhost:8080/new-borehole-drilled-in-wakiso-district/',0,'post','',0),(36,0,'2026-03-28 21:57:17','2026-03-28 21:57:17','','News & Updates','','publish','closed','closed','','news-updates-2','','','2026-03-28 21:57:17','2026-03-28 21:57:17','',0,'http://localhost:8080/news-updates-2/',0,'page','',0),(37,0,'2026-03-28 21:58:11','2026-03-28 21:58:11','','News','','publish','closed','closed','','news','','','2026-03-28 21:58:11','2026-03-28 21:58:11','',0,'http://localhost:8080/news/',9,'nav_menu_item','',0),(38,0,'2026-03-28 23:03:28','2026-03-28 23:03:28','BRANDING_PAGE_CONTENT','Branding','','publish','closed','closed','','branding','','','2026-03-28 23:04:16','2026-03-28 23:04:16','',0,'http://localhost:8080/branding/',0,'page','',0),(39,0,'2026-03-28 23:04:16','2026-03-28 23:04:16','BRANDING_PAGE_CONTENT','Branding','','inherit','closed','closed','','38-revision-v1','','','2026-03-28 23:04:16','2026-03-28 23:04:16','',38,'http://localhost:8080/?p=39',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(18,2,0),(19,2,0),(20,2,0),(21,2,0),(22,2,0),(28,2,0),(29,2,0),(30,2,0),(34,1,0),(35,1,0),(37,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3),(2,2,'nav_menu','',0,9);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Primary Menu','primary-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:3:{s:13:\"administrator\";b:1;s:15:\"view_give_forms\";b:1;s:18:\"view_give_payments\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:2:{s:64:\"d809459f05dd874fe03c06b0bb33c9bdf34743769c04367b805ad4fde820bb2b\";a:4:{s:10:\"expiration\";i:1775794659;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36\";s:5:\"login\";i:1774585059;}s:64:\"cd54c8a93806d9dbff23c98a85beedb69c663a4664dd2a53a390aab9109b0290\";a:4:{s:10:\"expiration\";i:1775796316;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36\";s:5:\"login\";i:1774586716;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','8'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$wp$2y$12$WKns2QXhob5KvE.almBBRuqdVJ64lCsUCxcvVnOlmNmO2Ibl7roVC','admin','moemucu@gmail.com','http://localhost:8080','2026-03-27 04:11:08','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-29  2:16:38
