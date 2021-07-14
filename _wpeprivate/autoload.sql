-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: wp_dalesptrain
-- ------------------------------------------------------
-- Server version	5.7.34-37-log

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wpengine.com/','','2019-12-12 16:14:52','2019-12-12 16:14:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1934 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://dalesptrain.wpengine.com','yes'),(2,'home','http://dalesptrain.wpengine.com','yes'),(3,'blogname','Dale Morris Site','yes'),(4,'blogdescription','Your SUPER-powered WP Engine Site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','dale.morris@wpengine.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','6','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:4:{i:0;s:30:\"atomic-blocks/atomicblocks.php\";i:1;s:33:\"genesis-enews-extended/plugin.php\";i:2;s:43:\"simple-social-icons/simple-social-icons.php\";i:3;s:24:\"wpforms-lite/wpforms.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','genesis','yes'),(41,'stylesheet','genesis-sample','yes'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','49752','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:4:{s:12:\"_multiwidget\";i:1;i:1;a:4:{s:5:\"title\";s:6:\"Design\";s:4:\"text\";s:175:\"<p>With an emphasis on typography, white space, and mobile-optimized design, your website will look absolutely breathtaking.</p><p><a href=\"#\">Learn more about design</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:2;a:4:{s:5:\"title\";s:7:\"Content\";s:4:\"text\";s:180:\"<p>Our team will teach you the art of writing audience-focused content that will help you achieve the success you truly deserve.</p><p><a href=\"#\">Learn more about content</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"Strategy\";s:4:\"text\";s:182:\"<p>We help creative entrepreneurs build their digital business by focusing on three key elements of a successful online platform.</p><p><a href=\"#\">Learn more about strategy</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:1:{s:43:\"simple-social-icons/simple-social-icons.php\";a:2:{i:0;s:26:\"Simple_Social_Icons_Widget\";i:1;s:16:\"plugin_uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','7','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'initial_db_version','44719','yes'),(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"after-entry\";a:0:{}s:13:\"array_version\";i:3;s:8:\"footer-1\";a:1:{i:0;s:6:\"text-1\";}s:8:\"footer-2\";a:1:{i:0;s:6:\"text-2\";}s:8:\"footer-3\";a:1:{i:0;s:6:\"text-3\";}}','yes'),(102,'cron','a:10:{i:1626279295;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626279615;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626285659;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626288515;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626291457;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1626315032;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1626318696;a:1:{s:46:\"WPEngineSecurityAuditor_Scans_fingerprint_core\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1626703200;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1626801111;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_wpe_powered_by_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'recovery_keys','a:0:{}','yes'),(134,'wpe_notices','a:1:{s:4:\"read\";s:0:\"\";}','yes'),(135,'wpe_notices_ttl','1576263659','yes'),(154,'theme_mods_twentynineteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576260213;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(155,'current_theme','Genesis Sample','yes'),(156,'theme_mods_genesis-sample','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(157,'theme_switched','','yes'),(158,'widget_featured-page','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(159,'widget_featured-post','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(160,'widget_user-profile','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(161,'genesis-settings','a:33:{s:6:\"update\";i:1;s:20:\"update_email_address\";s:0:\"\";s:10:\"blog_title\";s:4:\"text\";s:15:\"style_selection\";s:0:\"\";s:11:\"site_layout\";s:15:\"content-sidebar\";s:9:\"superfish\";i:0;s:15:\"breadcrumb_home\";i:0;s:21:\"breadcrumb_front_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:14:\"comments_pages\";i:0;s:14:\"comments_posts\";i:1;s:25:\"entry_meta_before_content\";s:67:\"[post_date] by [post_author_posts_link] [post_comments] [post_edit]\";s:24:\"entry_meta_after_content\";s:29:\"[post_categories] [post_tags]\";s:16:\"trackbacks_pages\";i:0;s:16:\"trackbacks_posts\";i:1;s:15:\"content_archive\";s:4:\"full\";s:21:\"content_archive_limit\";i:0;s:25:\"content_archive_thumbnail\";i:0;s:10:\"image_size\";s:23:\"genesis-singular-images\";s:15:\"image_alignment\";s:11:\"aligncenter\";s:9:\"posts_nav\";s:7:\"numeric\";s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:11:\"footer_text\";s:203:\"[footer_copyright before=\"Copyright \"] · [footer_childtheme_link before=\"\" after=\" on\"] [footer_genesis_link url=\"https://www.studiopress.com/\" before=\"\"] · [footer_wordpress_link] · [footer_loginout]\";s:13:\"theme_version\";s:5:\"3.2.1\";s:10:\"db_version\";s:4:\"3200\";s:13:\"first_version\";s:5:\"3.2.1\";s:12:\"blog_cat_num\";i:6;}','yes'),(162,'genesis-seo-settings','a:25:{s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:23:\"append_description_home\";i:1;s:10:\"home_h1_on\";s:7:\"neither\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;}','yes'),(165,'genesis_onboarding_chosen_pack','color','no'),(167,'widget_simple-social-icons','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(169,'widget_enews-ext','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(171,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(172,'genesis_onboarding_wpforms_id','13','no'),(173,'genesis_onboarding_imported_post_ids','a:5:{s:8:\"homepage\";i:7;s:6:\"blocks\";i:8;s:5:\"about\";i:9;s:7:\"contact\";i:11;s:7:\"landing\";i:12;}','no'),(175,'wpforms_review','a:2:{s:4:\"time\";i:1576260262;s:9:\"dismissed\";b:0;}','yes'),(180,'recently_activated','a:0:{}','yes'),(293,'admin_email_lifespan','0','yes'),(294,'db_upgraded','','yes'),(297,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1626277842;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no'),(632,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":4,\"critical\":0}','yes'),(1060,'disallowed_keys','','no'),(1061,'comment_previously_approved','1','yes'),(1062,'auto_plugin_theme_update_emails','a:0:{}','no'),(1063,'finished_updating_comment_type','1','yes'),(1117,'wpe-health-check-site-status-result','{\"good\":15,\"recommended\":4,\"critical\":0}','yes'),(1396,'auto_update_core_dev','enabled','yes'),(1397,'auto_update_core_minor','enabled','yes'),(1398,'auto_update_core_major','unset','yes'),(1649,'https_detection_errors','a:0:{}','yes'),(1886,'_site_transient_timeout_php_check_118d929f49b3ffd1ee497e844fd6e1ce','1626276284','no'),(1887,'_site_transient_php_check_118d929f49b3ffd1ee497e844fd6e1ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(1923,'genesis_expiring_setting_update_expiration','1626288760','no'),(1924,'genesis_expiring_setting_update','a:5:{s:5:\"theme\";s:7:\"genesis\";s:3:\"url\";s:41:\"https://my.studiopress.com/themes/genesis\";s:11:\"new_version\";s:5:\"3.3.4\";s:7:\"package\";s:61:\"https://api.genesistheme.com/download/?file=genesis.3.3.4.zip\";s:13:\"changelog_url\";s:63:\"https://studiopress.github.io/genesis/changelog/?TB_iframe=true\";}','no'),(1929,'_site_transient_timeout_theme_roots','1626279642','no'),(1930,'_site_transient_theme_roots','a:5:{s:14:\"genesis-sample\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(1932,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626277843;s:7:\"checked\";a:5:{s:14:\"genesis-sample\";s:5:\"3.2.0\";s:7:\"genesis\";s:5:\"3.2.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.4.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(1933,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626277843;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:30:\"atomic-blocks/atomicblocks.php\";s:5:\"2.3.0\";s:33:\"genesis-enews-extended/plugin.php\";s:5:\"2.1.1\";s:43:\"simple-social-icons/simple-social-icons.php\";s:5:\"3.0.1\";s:24:\"wpforms-lite/wpforms.php\";s:5:\"1.5.7\";}s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:30:\"atomic-blocks/atomicblocks.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/atomic-blocks\";s:4:\"slug\";s:13:\"atomic-blocks\";s:6:\"plugin\";s:30:\"atomic-blocks/atomicblocks.php\";s:11:\"new_version\";s:5:\"2.9.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/atomic-blocks/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/atomic-blocks.2.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/atomic-blocks/assets/icon-256x256.jpg?rev=1914921\";s:2:\"1x\";s:66:\"https://ps.w.org/atomic-blocks/assets/icon-128x128.jpg?rev=1914920\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/atomic-blocks/assets/banner-1544x500.jpg?rev=1843088\";s:2:\"1x\";s:68:\"https://ps.w.org/atomic-blocks/assets/banner-772x250.jpg?rev=1843087\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"5.5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"genesis-enews-extended/plugin.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/genesis-enews-extended\";s:4:\"slug\";s:22:\"genesis-enews-extended\";s:6:\"plugin\";s:33:\"genesis-enews-extended/plugin.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/genesis-enews-extended/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/genesis-enews-extended.2.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/genesis-enews-extended.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.9.6\";s:6:\"tested\";s:5:\"5.7.0\";s:12:\"requires_php\";s:5:\"5.4.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"simple-social-icons/simple-social-icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:33:\"w.org/plugins/simple-social-icons\";s:4:\"slug\";s:19:\"simple-social-icons\";s:6:\"plugin\";s:43:\"simple-social-icons/simple-social-icons.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/simple-social-icons/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/simple-social-icons.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/simple-social-icons/assets/icon-256x256.png?rev=1335655\";s:2:\"1x\";s:72:\"https://ps.w.org/simple-social-icons/assets/icon-128x128.png?rev=1335655\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/simple-social-icons/assets/banner-1544x500.png?rev=1587503\";s:2:\"1x\";s:74:\"https://ps.w.org/simple-social-icons/assets/banner-772x250.png?rev=1587503\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"5.4.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.7.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(7,7,'_genesis_layout','full-width-content'),(8,7,'_genesis_hide_title','1'),(9,7,'_genesis_hide_breadcrumbs','1'),(10,7,'_genesis_hide_singular_image','1'),(11,8,'_genesis_layout','full-width-content'),(12,9,'_genesis_layout','full-width-content'),(13,9,'_genesis_hide_singular_image','1'),(14,10,'_wp_attached_file','2019/12/about.jpg'),(15,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:999;s:4:\"file\";s:17:\"2019/12/about.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"about-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sidebar-featured\";a:4:{s:4:\"file\";s:15:\"about-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"genesis-singular-images\";a:4:{s:4:\"file\";s:17:\"about-702x526.jpg\";s:5:\"width\";i:702;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ab-block-post-grid-landscape\";a:4:{s:4:\"file\";s:17:\"about-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"ab-block-post-grid-square\";a:4:{s:4:\"file\";s:17:\"about-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(16,9,'_thumbnail_id','10'),(17,12,'_genesis_layout','full-width-content'),(18,12,'_genesis_hide_breadcrumbs','1'),(19,12,'_genesis_hide_singular_image','1'),(20,12,'_genesis_hide_footer_widgets','1'),(21,12,'_wp_page_template','page-templates/landing.php'),(22,14,'_menu_item_type','post_type'),(23,14,'_menu_item_menu_item_parent','0'),(24,14,'_menu_item_object_id','7'),(25,14,'_menu_item_object','page'),(26,14,'_menu_item_target',''),(27,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(28,14,'_menu_item_xfn',''),(29,14,'_menu_item_url',''),(30,15,'_menu_item_type','post_type'),(31,15,'_menu_item_menu_item_parent','0'),(32,15,'_menu_item_object_id','9'),(33,15,'_menu_item_object','page'),(34,15,'_menu_item_target',''),(35,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(36,15,'_menu_item_xfn',''),(37,15,'_menu_item_url',''),(38,16,'_menu_item_type','post_type'),(39,16,'_menu_item_menu_item_parent','0'),(40,16,'_menu_item_object_id','11'),(41,16,'_menu_item_object','page'),(42,16,'_menu_item_target',''),(43,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(44,16,'_menu_item_xfn',''),(45,16,'_menu_item_url',''),(46,17,'_menu_item_type','post_type'),(47,17,'_menu_item_menu_item_parent','0'),(48,17,'_menu_item_object_id','8'),(49,17,'_menu_item_object','page'),(50,17,'_menu_item_target',''),(51,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(52,17,'_menu_item_xfn',''),(53,17,'_menu_item_url',''),(54,18,'_menu_item_type','post_type'),(55,18,'_menu_item_menu_item_parent','0'),(56,18,'_menu_item_object_id','12'),(57,18,'_menu_item_object','page'),(58,18,'_menu_item_target',''),(59,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(60,18,'_menu_item_xfn',''),(61,18,'_menu_item_url',''),(62,7,'_edit_lock','1576260880:1'),(63,7,'_edit_last','1'),(64,7,'_genesis_scripts_body_position','bottom');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-12-12 16:14:52','2019-12-12 16:14:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-12-12 16:14:52','2019-12-12 16:14:52','',0,'http://dalesptrain.wpengine.com/?p=1',0,'post','',1),(2,1,'2019-12-12 16:14:52','2019-12-12 16:14:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dalesptrain.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-12-12 16:14:52','2019-12-12 16:14:52','',0,'http://dalesptrain.wpengine.com/?page_id=2',0,'page','',0),(3,1,'2019-12-12 16:14:52','2019-12-12 16:14:52','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://dalesptrain.wpengine.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-12-12 16:14:52','2019-12-12 16:14:52','',0,'http://dalesptrain.wpengine.com/?page_id=3',0,'page','',0),(7,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','<!-- wp:media-text {\"align\":\"full\",\"mediaId\":1657,\"mediaType\":\"image\",\"isStackedOnMobile\":true} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"https://dalesptrain.wpengine.com/wp-content/themes/genesis-sample/config/import/images/mountain-color.jpg\" alt=\"\" class=\"wp-image-1657\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"level\":1} -->\n<h1>This is the site that Dale made using Genesis and the sample theme.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pretty sweet, huh?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"textColor\":\"light-gray\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-button is-style-default\"><a class=\"wp-block-button__link has-text-color has-light-gray-color\" href=\"#\">Button!!</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:atomic-blocks/ab-container {\"containerPaddingTop\":4.5,\"containerPaddingRight\":0,\"containerPaddingBottom\":0,\"containerPaddingLeft\":0,\"containerMarginTop\":0,\"containerMarginBottom\":0,\"containerWidth\":\"full\",\"containerBackgroundColor\":\"#111111\"} -->\n<div style=\"background-color:#111111;padding-top:4.5%\" class=\"wp-block-atomic-blocks-ab-container ab-block-container alignfull\"><div class=\"ab-container-inside\"><div class=\"ab-container-content\" style=\"max-width:1600px\"><!-- wp:atomic-blocks/ab-cta {\"buttonText\":\"Get Started Today\",\"buttonBackgroundColor\":\"#0072e5\",\"ctaBackgroundColor\":\"#111111\",\"ctaTextColor\":\"#f5f5f5\"} -->\n<div style=\"background-color:#111111;text-align:center\" class=\"wp-block-atomic-blocks-ab-cta ab-block-cta\"><div class=\"ab-cta-content\"><h2 class=\"ab-cta-title ab-font-size-32\" style=\"color:#f5f5f5\">Ready to take your next step?</h2><div class=\"ab-cta-text ab-font-size-32\" style=\"color:#f5f5f5\"><p>Grow your audience and build a profitable online business.</p></div></div><div class=\"ab-cta-button\"><a href=\"#\" target=\"_self\" rel=\"noopener noreferrer\" class=\"ab-button ab-button-shape-rounded ab-button-size-medium\" style=\"color:#ffffff;background-color:#0072e5\">Get Started Today</a></div></div>\n<!-- /wp:atomic-blocks/ab-cta --></div></div></div>\n<!-- /wp:atomic-blocks/ab-container -->\n\n<!-- wp:atomic-blocks/ab-spacer {\"spacerHeight\":60} -->\n<div style=\"color:#ddd\" class=\"wp-block-atomic-blocks-ab-spacer ab-block-spacer ab-divider-solid ab-divider-size-1\"><hr style=\"height:60px\"/></div>\n<!-- /wp:atomic-blocks/ab-spacer -->\n\n<!-- wp:heading {\"align\":\"center\",\"className\":\"has-text-align-center\"} -->\n<h2 class=\"has-text-align-center\">What people are saying</h2>\n<!-- /wp:heading -->\n\n<!-- wp:atomic-blocks/ab-spacer {\"spacerHeight\":25} -->\n<div style=\"color:#ddd\" class=\"wp-block-atomic-blocks-ab-spacer ab-block-spacer ab-divider-solid ab-divider-size-1\"><hr style=\"height:25px\"/></div>\n<!-- /wp:atomic-blocks/ab-spacer -->\n\n<!-- wp:atomic-blocks/ab-columns {\"columns\":3,\"layout\":\"ab-3-col-equal\",\"align\":\"wide\"} -->\n<div class=\"wp-block-atomic-blocks-ab-columns ab-layout-columns-3 ab-3-col-equal alignwide\"><div class=\"ab-layout-column-wrap ab-block-layout-column-gap-2 ab-is-responsive-column\"><!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:atomic-blocks/ab-testimonial -->\n<div style=\"background-color:#f2f2f2;color:#32373c\" class=\"wp-block-atomic-blocks-ab-testimonial left-aligned ab-font-size-18 ab-block-testimonial\"><div class=\"ab-testimonial-text\"><p>Your course helped me to grow my email list from 500 to over 10,000 subscribers—all within 3 months! </p></div><div class=\"ab-testimonial-info\"><h2 class=\"ab-testimonial-name\" style=\"color:#32373c\">Jane</h2><small class=\"ab-testimonial-title\" style=\"color:#32373c\">Food Blogger</small></div></div>\n<!-- /wp:atomic-blocks/ab-testimonial --></div></div>\n<!-- /wp:atomic-blocks/ab-column -->\n\n<!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:atomic-blocks/ab-testimonial -->\n<div style=\"background-color:#f2f2f2;color:#32373c\" class=\"wp-block-atomic-blocks-ab-testimonial left-aligned ab-font-size-18 ab-block-testimonial\"><div class=\"ab-testimonial-text\"><p>I started using your email marketing technique and it helped me to make $5,000 more a month without any extra work! </p></div><div class=\"ab-testimonial-info\"><h2 class=\"ab-testimonial-name\" style=\"color:#32373c\">Rob</h2><small class=\"ab-testimonial-title\" style=\"color:#32373c\">Copywriter</small></div></div>\n<!-- /wp:atomic-blocks/ab-testimonial --></div></div>\n<!-- /wp:atomic-blocks/ab-column -->\n\n<!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:atomic-blocks/ab-testimonial -->\n<div style=\"background-color:#f2f2f2;color:#32373c\" class=\"wp-block-atomic-blocks-ab-testimonial left-aligned ab-font-size-18 ab-block-testimonial\"><div class=\"ab-testimonial-text\"><p>I was skeptical but I found that your system had multiplied my revenue by 40% after just the first quarter! </p></div><div class=\"ab-testimonial-info\"><h2 class=\"ab-testimonial-name\" style=\"color:#32373c\">Susan</h2><small class=\"ab-testimonial-title\" style=\"color:#32373c\">Entrepreneur</small></div></div>\n<!-- /wp:atomic-blocks/ab-testimonial --></div></div>\n<!-- /wp:atomic-blocks/ab-column --></div></div>\n<!-- /wp:atomic-blocks/ab-columns -->\n\n<!-- wp:atomic-blocks/ab-spacer -->\n<div style=\"color:#ddd\" class=\"wp-block-atomic-blocks-ab-spacer ab-block-spacer ab-divider-solid ab-divider-size-1\"><hr style=\"height:30px\"/></div>\n<!-- /wp:atomic-blocks/ab-spacer -->\n\n<!-- wp:atomic-blocks/ab-columns {\"columns\":2,\"layout\":\"ab-2-col-equal\",\"align\":\"full\",\"paddingTop\":14,\"paddingRight\":5,\"paddingBottom\":8,\"paddingLeft\":5,\"paddingUnit\":\"%\",\"customTextColor\":\"#ffffff\",\"customBackgroundColor\":\"#111111\",\"columnMaxWidth\":1062} -->\n<div class=\"wp-block-atomic-blocks-ab-columns ab-layout-columns-2 ab-2-col-equal ab-has-custom-background-color ab-has-custom-text-color ab-columns-center alignfull\" style=\"padding-top:14%;padding-right:5%;padding-bottom:8%;padding-left:5%;background-color:#111111;color:#ffffff\"><div class=\"ab-layout-column-wrap ab-block-layout-column-gap-2 ab-is-responsive-column\" style=\"max-width:1062px\"><!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:paragraph {\"align\":\"left\",\"customTextColor\":\"#ffffff\",\"customFontSize\":40} -->\n<p style=\"color:#ffffff;font-size:40px;text-align:left\" class=\"has-text-color\"><p style=\"color:#ffffff;font-size:40px\" class=\"has-text-color has-text-align-left\">Contact us today</p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:atomic-blocks/ab-column -->\n\n<!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:button {\"customTextColor\":\"#ffffff\",\"align\":\"right\",\"className\":\"is-style-outline home-contact\"} -->\n<div class=\"wp-block-button alignright is-style-outline home-contact\"><a class=\"wp-block-button__link has-text-color no-border-radius\" href=\"/contact\" style=\"color:#ffffff\">Get in touch</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:atomic-blocks/ab-column --></div></div>\n<!-- /wp:atomic-blocks/ab-columns -->\n\n<!-- wp:atomic-blocks/ab-spacer {\"spacerHeight\":60} -->\n<div style=\"color:#ddd\" class=\"wp-block-atomic-blocks-ab-spacer ab-block-spacer ab-divider-solid ab-divider-size-1\"><hr style=\"height:60px\"/></div>\n<!-- /wp:atomic-blocks/ab-spacer -->\n\n<!-- wp:atomic-blocks/ab-columns {\"columns\":2,\"layout\":\"ab-2-col-equal\",\"align\":\"wide\"} -->\n<div class=\"wp-block-atomic-blocks-ab-columns ab-layout-columns-2 ab-2-col-equal alignwide\"><div class=\"ab-layout-column-wrap ab-block-layout-column-gap-2 ab-is-responsive-column\"><!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:atomic-blocks/ab-accordion {\"accordionOpen\":true,\"className\":\"ab-font-size-18\"} -->\n<div class=\"wp-block-atomic-blocks-ab-accordion ab-font-size-18 ab-block-accordion\"><details open><summary class=\"ab-accordion-title\">Can I phone or email you?</summary><div class=\"ab-accordion-text\"><!-- wp:paragraph -->\n<p>You can reach us on our <a href=\"/contact\">contact page</a> or by calling us at 1.123.456.7891</p>\n<!-- /wp:paragraph --></div></details></div>\n<!-- /wp:atomic-blocks/ab-accordion -->\n\n<!-- wp:atomic-blocks/ab-accordion {\"className\":\"ab-font-size-18\"} -->\n<div class=\"wp-block-atomic-blocks-ab-accordion ab-font-size-18 ab-block-accordion\"><details><summary class=\"ab-accordion-title\">How long have you been in business?</summary><div class=\"ab-accordion-text\"><!-- wp:paragraph -->\n<p>Our team has a combined experience of over 60 years.</p>\n<!-- /wp:paragraph --></div></details></div>\n<!-- /wp:atomic-blocks/ab-accordion -->\n\n<!-- wp:atomic-blocks/ab-accordion {\"className\":\"ab-font-size-18\"} -->\n<div class=\"wp-block-atomic-blocks-ab-accordion ab-font-size-18 ab-block-accordion\"><details><summary class=\"ab-accordion-title\">What is your return policy?</summary><div class=\"ab-accordion-text\"><!-- wp:paragraph -->\n<p>We offer a 30-day return policy for all unused items. For more information, please view our terms of service.</p>\n<!-- /wp:paragraph --></div></details></div>\n<!-- /wp:atomic-blocks/ab-accordion --></div></div>\n<!-- /wp:atomic-blocks/ab-column -->\n\n<!-- wp:atomic-blocks/ab-column -->\n<div class=\"wp-block-atomic-blocks-ab-column ab-block-layout-column\"><div class=\"ab-block-layout-column-inner\"><!-- wp:image {\"id\":1655,\"className\":\"size-large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://dalesptrain.wpengine.com/wp-content/themes/genesis-sample/config/import/images/home-about-color.jpg\" alt=\"\" class=\"wp-image-1655\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:atomic-blocks/ab-column --></div></div>\n<!-- /wp:atomic-blocks/ab-columns -->\n\n<!-- wp:atomic-blocks/ab-layouts /-->','Homepage','','publish','closed','closed','','homepage','','','2019-12-13 18:05:49','2019-12-13 18:05:49','',0,'http://dalesptrain.wpengine.com/?page_id=7',0,'page','',0),(8,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','<!-- wp:paragraph -->\n<p>Below are examples of column classes that are available in the block editor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 style=\"text-align:left\">Two Columns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind. </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 style=\"text-align:left\">Three Columns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"columns\":3} -->\n<div class=\"wp-block-columns has-3-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.\n\n</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.\n\n</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>\nThis is an example of a WordPress post, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many posts as you like in order to share with your readers what exactly is on your mind.\n\n</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 style=\"text-align:left\">Buttons</h2>\n<!-- /wp:heading -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"#\">Button<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"align\":\"center\",\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button aligncenter is-style-outline\"><a class=\"wp-block-button__link\" href=\"#\">Outlined Button<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"left\"} -->\n<h2 style=\"text-align:left\">Blockquotes &amp; Pullquotes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:pullquote {\"align\":\"wide\"} -->\n<figure class=\"wp-block-pullquote alignwide\"><blockquote><p>Good design is as little as possible. Less, but better, because it  concentrates on the essential aspects. Back to purity, back to  simplicity. </p><cite> <br>Dieter Rams</cite></blockquote></figure>\n<!-- /wp:pullquote -->','Block Content Examples','','publish','closed','closed','','block-content-examples','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?page_id=8',0,'page','',0),(9,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','<!-- wp:image {\"id\":2141,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"https://dalesptrain.wpengine.com/wp-content/themes/genesis-sample/config/import/images/about.jpg\" alt=\"\" class=\"wp-image-2141\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:atomic-blocks/ab-spacer {\"spacerHeight\":29} -->\n<div style=\"color:#ddd\" class=\"wp-block-atomic-blocks-ab-spacer ab-block-spacer ab-divider-solid ab-divider-size-1\"><hr style=\"height:29px\"/></div>\n<!-- /wp:atomic-blocks/ab-spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Hello! We are StudioPress, and  we build themes with an emphasis on typography, white space, and   mobile-optimized design to make your website look absolutely   breathtaking.  </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"right\"} -->\n<h2 style=\"text-align:right\" id=\"mce_9\">Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\"> 555.555.5555</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">\n1234 Block Blvd.<br>San Francisco, CA 94120\n\n</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','About Us','','publish','closed','closed','','about-us','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?page_id=9',0,'page','',0),(10,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','','about','','inherit','open','closed','','about','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',9,'http://dalesptrain.wpengine.com/wp-content/uploads/2019/12/about.jpg',0,'attachment','image/jpeg',0),(11,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','<!-- wp:wpforms/form-selector {\"formId\":\"13\"} /-->','Contact Us','','publish','closed','closed','','contact-us','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?page_id=11',0,'page','',0),(12,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','<!-- wp:image {\"id\":1377} -->\n<figure class=\"wp-block-image\"><img src=\"https://dalesptrain.wpengine.com/wp-content/themes/genesis-sample/config/import/images/landing.jpg\" alt=\"Paris\" class=\"wp-image-1377\"/><figcaption> Photo by <a href=\"https://unsplash.com/photos/Pi3YUQivm6o\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\" (opens in a new tab)\">Felipe Dolce</a> on <a href=\"https://unsplash.com/\">Unsplash</a> </figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>“There are only two places in the world where we can live happy: at home and in Paris.”<br></p><cite>— Ernest Hemingway</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>This is a Sample Heading</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Here’s a sample paragraph with a custom background color:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f5f5f5\"} -->\n<p style=\"background-color:#f5f5f5\" class=\"has-background\">This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind. This is an example of a WordPress post, you could edit this to put information about yourself so readers know where you are coming from. You can create as many posts as you like in order to share with them what is on your mind.</p>\n<!-- /wp:paragraph -->','Landing Page','','publish','closed','closed','','landing-page','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?page_id=12',0,'page','',0),(13,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','{\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"format\":\"first-last\",\"label\":\"Name\",\"required\":\"1\",\"size\":\"medium\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"required\":\"1\",\"size\":\"medium\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Dale Morris Site\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"message_scroll\":\"1\"}},\"honeypot\":\"1\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\"},\"meta\":{\"template\":\"contact\"},\"id\":13}','Simple Contact Form','','publish','closed','closed','','simple-contact-form','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?post_type=wpforms&#038;p=13',0,'wpforms','',0),(14,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','','Home','','publish','closed','closed','','home','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?p=14',0,'nav_menu_item','',0),(15,1,'2019-12-13 18:03:57','2019-12-13 18:03:57',' ','','','publish','closed','closed','','15','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?p=15',2,'nav_menu_item','',0),(16,1,'2019-12-13 18:03:57','2019-12-13 18:03:57',' ','','','publish','closed','closed','','16','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?p=16',3,'nav_menu_item','',0),(17,1,'2019-12-13 18:03:57','2019-12-13 18:03:57','','Block Examples','','publish','closed','closed','','block-examples','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?p=17',4,'nav_menu_item','',0),(18,1,'2019-12-13 18:03:57','2019-12-13 18:03:57',' ','','','publish','closed','closed','','18','','','2019-12-13 18:03:57','2019-12-13 18:03:57','',0,'http://dalesptrain.wpengine.com/?p=18',5,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(14,2,0),(15,2,0),(16,2,0),(17,2,0),(18,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
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
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
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
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Header Menu','header-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','wpengine'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description','This is the \"wpengine\" admin user that our staff uses to gain access to your admin area to provide support and troubleshooting. It can only be accessed by a button in our secure log that auto generates a password and dumps that password after the staff member has logged in. We have taken extreme measures to ensure that our own user is not going to be misused to harm any of our clients sites.'),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,2,'nickname','dalesptrain'),(17,2,'first_name',''),(18,2,'last_name',''),(19,2,'description',''),(20,2,'rich_editing','true'),(21,2,'syntax_highlighting','true'),(22,2,'comment_shortcuts','false'),(23,2,'admin_color','fresh'),(24,2,'use_ssl','0'),(25,2,'show_admin_bar_front','true'),(26,2,'locale',''),(27,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(28,2,'wp_user_level','10'),(29,1,'session_tokens','a:1:{s:64:\"db8d723d8a2a36cecd70496ebfc41a0fe6602dc6f16fd0030b78d2d8f3b968ef\";a:4:{s:10:\"expiration\";i:1576432859;s:2:\"ip\";s:13:\"66.162.212.19\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576260059;}}'),(30,1,'wp_dashboard_quick_press_last_post_id','4'),(31,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"66.162.212.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$BwPF.IXMkxHZ5h.0P/1UVcvXrw7gh61','wpengine','bitbucket@wpengine.com','http://wpengine.com','2019-12-12 16:14:52','',0,'wpengine'),(2,'dalesptrain','$P$B84A50UmrwWOugweVs3D6uBi0OFPlj0','dalesptrain','dale.morris@wpengine.com','http://dalesptrain.wpengine.com','2019-12-12 16:20:23','',0,'dalesptrain');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14 15:54:47
