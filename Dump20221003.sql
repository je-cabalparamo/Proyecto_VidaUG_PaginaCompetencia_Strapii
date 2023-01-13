-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ciidb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::upload.read',NULL,'{}','[]','2022-06-27 12:44:48.625000','2022-06-27 12:44:48.625000',NULL,NULL),(2,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-27 12:44:48.639000','2022-06-27 12:44:48.639000',NULL,NULL),(3,'plugin::upload.assets.update',NULL,'{}','[]','2022-06-27 12:44:48.649000','2022-06-27 12:44:48.649000',NULL,NULL),(4,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-27 12:44:48.660000','2022-06-27 12:44:48.660000',NULL,NULL),(5,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-27 12:44:48.671000','2022-06-27 12:44:48.671000',NULL,NULL),(6,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-06-27 12:44:48.681000','2022-06-27 12:44:48.681000',NULL,NULL),(7,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-27 12:44:48.693000','2022-06-27 12:44:48.693000',NULL,NULL),(8,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-06-27 12:44:48.706000','2022-06-27 12:44:48.706000',NULL,NULL),(9,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-27 12:44:48.717000','2022-06-27 12:44:48.717000',NULL,NULL),(10,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-27 12:44:48.728000','2022-06-27 12:44:48.728000',NULL,NULL),(14,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-06-27 12:44:48.803000','2022-06-27 12:44:48.803000',NULL,NULL),(15,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-06-27 12:44:48.817000','2022-06-27 12:44:48.817000',NULL,NULL),(16,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-06-27 12:44:48.828000','2022-06-27 12:44:48.828000',NULL,NULL),(17,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-06-27 12:44:48.839000','2022-06-27 12:44:48.839000',NULL,NULL),(18,'plugin::content-type-builder.read',NULL,'{}','[]','2022-06-27 12:44:48.849000','2022-06-27 12:44:48.849000',NULL,NULL),(19,'plugin::email.settings.read',NULL,'{}','[]','2022-06-27 12:44:48.862000','2022-06-27 12:44:48.862000',NULL,NULL),(20,'plugin::upload.read',NULL,'{}','[]','2022-06-27 12:44:48.881000','2022-06-27 12:44:48.881000',NULL,NULL),(21,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-27 12:44:48.914000','2022-06-27 12:44:48.914000',NULL,NULL),(22,'plugin::upload.assets.update',NULL,'{}','[]','2022-06-27 12:44:48.934000','2022-06-27 12:44:48.934000',NULL,NULL),(23,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-27 12:44:48.950000','2022-06-27 12:44:48.950000',NULL,NULL),(24,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-27 12:44:48.972000','2022-06-27 12:44:48.972000',NULL,NULL),(25,'plugin::upload.settings.read',NULL,'{}','[]','2022-06-27 12:44:48.992000','2022-06-27 12:44:48.992000',NULL,NULL),(26,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-06-27 12:44:49.022000','2022-06-27 12:44:49.022000',NULL,NULL),(27,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-06-27 12:44:49.043000','2022-06-27 12:44:49.043000',NULL,NULL),(28,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-06-27 12:44:49.062000','2022-06-27 12:44:49.062000',NULL,NULL),(29,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-06-27 12:44:49.076000','2022-06-27 12:44:49.076000',NULL,NULL),(30,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-06-27 12:44:49.088000','2022-06-27 12:44:49.088000',NULL,NULL),(31,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-06-27 12:44:49.098000','2022-06-27 12:44:49.098000',NULL,NULL),(32,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-06-27 12:44:49.109000','2022-06-27 12:44:49.109000',NULL,NULL),(33,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-06-27 12:44:49.122000','2022-06-27 12:44:49.122000',NULL,NULL),(34,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-06-27 12:44:49.134000','2022-06-27 12:44:49.134000',NULL,NULL),(35,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-06-27 12:44:49.146000','2022-06-27 12:44:49.146000',NULL,NULL),(36,'plugin::i18n.locale.create',NULL,'{}','[]','2022-06-27 12:44:49.158000','2022-06-27 12:44:49.158000',NULL,NULL),(37,'plugin::i18n.locale.read',NULL,'{}','[]','2022-06-27 12:44:49.169000','2022-06-27 12:44:49.169000',NULL,NULL),(38,'plugin::i18n.locale.update',NULL,'{}','[]','2022-06-27 12:44:49.180000','2022-06-27 12:44:49.180000',NULL,NULL),(39,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-06-27 12:44:49.191000','2022-06-27 12:44:49.191000',NULL,NULL),(40,'admin::marketplace.read',NULL,'{}','[]','2022-06-27 12:44:49.202000','2022-06-27 12:44:49.202000',NULL,NULL),(41,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-06-27 12:44:49.214000','2022-06-27 12:44:49.214000',NULL,NULL),(42,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-06-27 12:44:49.225000','2022-06-27 12:44:49.225000',NULL,NULL),(43,'admin::webhooks.create',NULL,'{}','[]','2022-06-27 12:44:49.237000','2022-06-27 12:44:49.237000',NULL,NULL),(44,'admin::webhooks.read',NULL,'{}','[]','2022-06-27 12:44:49.248000','2022-06-27 12:44:49.248000',NULL,NULL),(45,'admin::webhooks.update',NULL,'{}','[]','2022-06-27 12:44:49.261000','2022-06-27 12:44:49.261000',NULL,NULL),(46,'admin::webhooks.delete',NULL,'{}','[]','2022-06-27 12:44:49.274000','2022-06-27 12:44:49.274000',NULL,NULL),(47,'admin::users.create',NULL,'{}','[]','2022-06-27 12:44:49.288000','2022-06-27 12:44:49.288000',NULL,NULL),(48,'admin::users.read',NULL,'{}','[]','2022-06-27 12:44:49.301000','2022-06-27 12:44:49.301000',NULL,NULL),(49,'admin::users.update',NULL,'{}','[]','2022-06-27 12:44:49.314000','2022-06-27 12:44:49.314000',NULL,NULL),(50,'admin::users.delete',NULL,'{}','[]','2022-06-27 12:44:49.328000','2022-06-27 12:44:49.328000',NULL,NULL),(51,'admin::roles.create',NULL,'{}','[]','2022-06-27 12:44:49.339000','2022-06-27 12:44:49.339000',NULL,NULL),(52,'admin::roles.read',NULL,'{}','[]','2022-06-27 12:44:49.349000','2022-06-27 12:44:49.349000',NULL,NULL),(53,'admin::roles.update',NULL,'{}','[]','2022-06-27 12:44:49.359000','2022-06-27 12:44:49.359000',NULL,NULL),(54,'admin::roles.delete',NULL,'{}','[]','2022-06-27 12:44:49.371000','2022-06-27 12:44:49.371000',NULL,NULL),(55,'admin::api-tokens.create',NULL,'{}','[]','2022-06-27 12:44:49.383000','2022-06-27 12:44:49.383000',NULL,NULL),(56,'admin::api-tokens.read',NULL,'{}','[]','2022-06-27 12:44:49.395000','2022-06-27 12:44:49.395000',NULL,NULL),(57,'admin::api-tokens.update',NULL,'{}','[]','2022-06-27 12:44:49.406000','2022-06-27 12:44:49.406000',NULL,NULL),(58,'admin::api-tokens.delete',NULL,'{}','[]','2022-06-27 12:44:49.416000','2022-06-27 12:44:49.416000',NULL,NULL),(59,'admin::project-settings.update',NULL,'{}','[]','2022-06-27 12:44:49.427000','2022-06-27 12:44:49.427000',NULL,NULL),(60,'admin::project-settings.read',NULL,'{}','[]','2022-06-27 12:44:49.439000','2022-06-27 12:44:49.439000',NULL,NULL),(64,'plugin::content-manager.explorer.delete','api::project.project','{}','[]','2022-06-28 11:21:47.583000','2022-06-28 11:21:47.583000',NULL,NULL),(65,'plugin::content-manager.explorer.publish','api::project.project','{}','[]','2022-06-28 11:21:47.593000','2022-06-28 11:21:47.593000',NULL,NULL),(84,'plugin::content-manager.explorer.delete','api::questionnaire.questionnaire','{}','[]','2022-07-04 09:43:16.013000','2022-07-04 09:43:16.013000',NULL,NULL),(85,'plugin::content-manager.explorer.publish','api::questionnaire.questionnaire','{}','[]','2022-07-04 09:43:16.024000','2022-07-04 09:43:16.024000',NULL,NULL),(86,'plugin::content-manager.explorer.create','api::certificate.certificate','{\"fields\": [\"fileCourseOne\", \"fileCourseTwo\"]}','[]','2022-07-04 09:53:05.074000','2022-07-04 09:53:05.074000',NULL,NULL),(87,'plugin::content-manager.explorer.read','api::certificate.certificate','{\"fields\": [\"fileCourseOne\", \"fileCourseTwo\"]}','[]','2022-07-04 09:53:05.087000','2022-07-04 09:53:05.087000',NULL,NULL),(88,'plugin::content-manager.explorer.update','api::certificate.certificate','{\"fields\": [\"fileCourseOne\", \"fileCourseTwo\"]}','[]','2022-07-04 09:53:05.098000','2022-07-04 09:53:05.098000',NULL,NULL),(89,'plugin::content-manager.explorer.delete','api::certificate.certificate','{}','[]','2022-07-04 09:53:05.108000','2022-07-04 09:53:05.108000',NULL,NULL),(90,'plugin::content-manager.explorer.publish','api::certificate.certificate','{}','[]','2022-07-04 09:53:05.118000','2022-07-04 09:53:05.118000',NULL,NULL),(94,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"project\", \"name\", \"lastName\", \"nuaNue\", \"emailAlternative\", \"phone\", \"yearRegistered\", \"certificate\", \"answers\"]}','[]','2022-07-04 09:58:06.183000','2022-07-04 09:58:06.183000',NULL,NULL),(95,'plugin::content-manager.explorer.create','api::answer.answer','{\"fields\": [\"answer\", \"users_permissions_user\", \"questionnaire\"]}','[]','2022-07-04 09:58:06.192000','2022-07-04 09:58:06.192000',NULL,NULL),(96,'plugin::content-manager.explorer.create','api::questionnaire.questionnaire','{\"fields\": [\"question\", \"answers\"]}','[]','2022-07-04 09:58:06.204000','2022-07-04 09:58:06.204000',NULL,NULL),(97,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"project\", \"name\", \"lastName\", \"nuaNue\", \"emailAlternative\", \"phone\", \"yearRegistered\", \"certificate\", \"answers\"]}','[]','2022-07-04 09:58:06.214000','2022-07-04 09:58:06.214000',NULL,NULL),(98,'plugin::content-manager.explorer.read','api::answer.answer','{\"fields\": [\"answer\", \"users_permissions_user\", \"questionnaire\"]}','[]','2022-07-04 09:58:06.227000','2022-07-04 09:58:06.227000',NULL,NULL),(99,'plugin::content-manager.explorer.read','api::questionnaire.questionnaire','{\"fields\": [\"question\", \"answers\"]}','[]','2022-07-04 09:58:06.238000','2022-07-04 09:58:06.238000',NULL,NULL),(100,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"project\", \"name\", \"lastName\", \"nuaNue\", \"emailAlternative\", \"phone\", \"yearRegistered\", \"certificate\", \"answers\"]}','[]','2022-07-04 09:58:06.251000','2022-07-04 09:58:06.251000',NULL,NULL),(101,'plugin::content-manager.explorer.update','api::answer.answer','{\"fields\": [\"answer\", \"users_permissions_user\", \"questionnaire\"]}','[]','2022-07-04 09:58:06.264000','2022-07-04 09:58:06.264000',NULL,NULL),(102,'plugin::content-manager.explorer.update','api::questionnaire.questionnaire','{\"fields\": [\"question\", \"answers\"]}','[]','2022-07-04 09:58:06.275000','2022-07-04 09:58:06.275000',NULL,NULL),(103,'plugin::content-manager.explorer.delete','api::answer.answer','{}','[]','2022-07-04 09:58:06.288000','2022-07-04 09:58:06.288000',NULL,NULL),(104,'plugin::content-manager.explorer.publish','api::answer.answer','{}','[]','2022-07-04 09:58:06.301000','2022-07-04 09:58:06.301000',NULL,NULL),(105,'plugin::content-manager.explorer.create','api::status.status','{\"fields\": [\"status\", \"description\", \"validated\", \"score1\", \"score2\", \"finalScore\"]}','[]','2022-07-04 10:08:52.523000','2022-07-04 10:08:52.523000',NULL,NULL),(106,'plugin::content-manager.explorer.read','api::status.status','{\"fields\": [\"status\", \"description\", \"validated\", \"score1\", \"score2\", \"finalScore\"]}','[]','2022-07-04 10:08:52.538000','2022-07-04 10:08:52.538000',NULL,NULL),(107,'plugin::content-manager.explorer.update','api::status.status','{\"fields\": [\"status\", \"description\", \"validated\", \"score1\", \"score2\", \"finalScore\"]}','[]','2022-07-04 10:08:52.550000','2022-07-04 10:08:52.550000',NULL,NULL),(108,'plugin::content-manager.explorer.delete','api::status.status','{}','[]','2022-07-04 10:08:52.562000','2022-07-04 10:08:52.562000',NULL,NULL),(109,'plugin::content-manager.explorer.publish','api::status.status','{}','[]','2022-07-04 10:08:52.572000','2022-07-04 10:08:52.572000',NULL,NULL),(113,'plugin::content-manager.explorer.create','api::event.event','{\"fields\": [\"name\", \"dInit\", \"dFinish\", \"dRespCategoryInit\", \"dRespCategoryFinish\", \"courseName1\", \"urlCourse1\", \"courseName2\", \"urlCourse2\", \"dPitchFinish\", \"dEval1Init\", \"dEval1Finish\", \"dPubSemifinalist\", \"dEval2Init\", \"dEval2Finish\", \"dPubFinalist\", \"eventFile\", \"numberWinnersPreparatory\", \"numberWinnersBachelors\"]}','[]','2022-07-04 11:16:09.229000','2022-07-04 11:16:09.229000',NULL,NULL),(114,'plugin::content-manager.explorer.read','api::event.event','{\"fields\": [\"name\", \"dInit\", \"dFinish\", \"dRespCategoryInit\", \"dRespCategoryFinish\", \"courseName1\", \"urlCourse1\", \"courseName2\", \"urlCourse2\", \"dPitchFinish\", \"dEval1Init\", \"dEval1Finish\", \"dPubSemifinalist\", \"dEval2Init\", \"dEval2Finish\", \"dPubFinalist\", \"eventFile\", \"numberWinnersPreparatory\", \"numberWinnersBachelors\"]}','[]','2022-07-04 11:16:09.244000','2022-07-04 11:16:09.244000',NULL,NULL),(115,'plugin::content-manager.explorer.update','api::event.event','{\"fields\": [\"name\", \"dInit\", \"dFinish\", \"dRespCategoryInit\", \"dRespCategoryFinish\", \"courseName1\", \"urlCourse1\", \"courseName2\", \"urlCourse2\", \"dPitchFinish\", \"dEval1Init\", \"dEval1Finish\", \"dPubSemifinalist\", \"dEval2Init\", \"dEval2Finish\", \"dPubFinalist\", \"eventFile\", \"numberWinnersPreparatory\", \"numberWinnersBachelors\"]}','[]','2022-07-04 11:16:09.255000','2022-07-04 11:16:09.255000',NULL,NULL),(116,'plugin::content-manager.explorer.delete','api::event.event','{}','[]','2022-07-04 11:16:09.265000','2022-07-04 11:16:09.265000',NULL,NULL),(117,'plugin::content-manager.explorer.publish','api::event.event','{}','[]','2022-07-04 11:16:09.275000','2022-07-04 11:16:09.275000',NULL,NULL),(121,'plugin::content-manager.explorer.delete','api::questions-evaluation-one.questions-evaluation-one','{}','[]','2022-07-04 11:52:32.337000','2022-07-04 11:52:32.337000',NULL,NULL),(122,'plugin::content-manager.explorer.publish','api::questions-evaluation-one.questions-evaluation-one','{}','[]','2022-07-04 11:52:32.347000','2022-07-04 11:52:32.347000',NULL,NULL),(123,'plugin::content-manager.explorer.create','api::answer-evaluation-one.answer-evaluation-one','{\"fields\": [\"answer\", \"questions_evaluation_ones\", \"project\"]}','[]','2022-07-04 11:57:30.148000','2022-07-04 11:57:30.148000',NULL,NULL),(125,'plugin::content-manager.explorer.create','api::questions-evaluation-one.questions-evaluation-one','{\"fields\": [\"question\", \"answer_evaluation_ones\"]}','[]','2022-07-04 11:57:30.173000','2022-07-04 11:57:30.173000',NULL,NULL),(126,'plugin::content-manager.explorer.read','api::answer-evaluation-one.answer-evaluation-one','{\"fields\": [\"answer\", \"questions_evaluation_ones\", \"project\"]}','[]','2022-07-04 11:57:30.187000','2022-07-04 11:57:30.187000',NULL,NULL),(128,'plugin::content-manager.explorer.read','api::questions-evaluation-one.questions-evaluation-one','{\"fields\": [\"question\", \"answer_evaluation_ones\"]}','[]','2022-07-04 11:57:30.211000','2022-07-04 11:57:30.211000',NULL,NULL),(129,'plugin::content-manager.explorer.update','api::answer-evaluation-one.answer-evaluation-one','{\"fields\": [\"answer\", \"questions_evaluation_ones\", \"project\"]}','[]','2022-07-04 11:57:30.225000','2022-07-04 11:57:30.225000',NULL,NULL),(131,'plugin::content-manager.explorer.update','api::questions-evaluation-one.questions-evaluation-one','{\"fields\": [\"question\", \"answer_evaluation_ones\"]}','[]','2022-07-04 11:57:30.246000','2022-07-04 11:57:30.246000',NULL,NULL),(132,'plugin::content-manager.explorer.delete','api::answer-evaluation-one.answer-evaluation-one','{}','[]','2022-07-04 11:57:30.259000','2022-07-04 11:57:30.259000',NULL,NULL),(133,'plugin::content-manager.explorer.publish','api::answer-evaluation-one.answer-evaluation-one','{}','[]','2022-07-04 11:57:30.269000','2022-07-04 11:57:30.269000',NULL,NULL),(137,'plugin::content-manager.explorer.delete','api::questions-evaluation-two.questions-evaluation-two','{}','[]','2022-07-04 11:59:39.714000','2022-07-04 11:59:39.714000',NULL,NULL),(138,'plugin::content-manager.explorer.publish','api::questions-evaluation-two.questions-evaluation-two','{}','[]','2022-07-04 11:59:39.723000','2022-07-04 11:59:39.723000',NULL,NULL),(142,'plugin::content-manager.explorer.delete','api::answer-evaluation-two.answer-evaluation-two','{}','[]','2022-07-04 12:00:41.935000','2022-07-04 12:00:41.935000',NULL,NULL),(143,'plugin::content-manager.explorer.publish','api::answer-evaluation-two.answer-evaluation-two','{}','[]','2022-07-04 12:00:41.946000','2022-07-04 12:00:41.946000',NULL,NULL),(145,'plugin::content-manager.explorer.create','api::questions-evaluation-two.questions-evaluation-two','{\"fields\": [\"question\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:10:47.282000','2022-07-04 12:10:47.282000',NULL,NULL),(147,'plugin::content-manager.explorer.read','api::questions-evaluation-two.questions-evaluation-two','{\"fields\": [\"question\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:10:47.306000','2022-07-04 12:10:47.306000',NULL,NULL),(149,'plugin::content-manager.explorer.update','api::questions-evaluation-two.questions-evaluation-two','{\"fields\": [\"question\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:10:47.327000','2022-07-04 12:10:47.327000',NULL,NULL),(150,'plugin::content-manager.explorer.create','api::answer-evaluation-two.answer-evaluation-two','{\"fields\": [\"answer\", \"questions_evaluation_twos\", \"project\"]}','[]','2022-07-04 12:11:16.760000','2022-07-04 12:11:16.760000',NULL,NULL),(151,'plugin::content-manager.explorer.create','api::project.project','{\"fields\": [\"name\", \"category\", \"users\", \"description\", \"resplettter\", \"projectFile\", \"pitch\", \"status\", \"answer_evaluation_ones\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:11:16.772000','2022-07-04 12:11:16.772000',NULL,NULL),(152,'plugin::content-manager.explorer.read','api::answer-evaluation-two.answer-evaluation-two','{\"fields\": [\"answer\", \"questions_evaluation_twos\", \"project\"]}','[]','2022-07-04 12:11:16.783000','2022-07-04 12:11:16.783000',NULL,NULL),(153,'plugin::content-manager.explorer.read','api::project.project','{\"fields\": [\"name\", \"category\", \"users\", \"description\", \"resplettter\", \"projectFile\", \"pitch\", \"status\", \"answer_evaluation_ones\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:11:16.794000','2022-07-04 12:11:16.794000',NULL,NULL),(154,'plugin::content-manager.explorer.update','api::answer-evaluation-two.answer-evaluation-two','{\"fields\": [\"answer\", \"questions_evaluation_twos\", \"project\"]}','[]','2022-07-04 12:11:16.803000','2022-07-04 12:11:16.803000',NULL,NULL),(155,'plugin::content-manager.explorer.update','api::project.project','{\"fields\": [\"name\", \"category\", \"users\", \"description\", \"resplettter\", \"projectFile\", \"pitch\", \"status\", \"answer_evaluation_ones\", \"answer_evaluation_twos\"]}','[]','2022-07-04 12:11:16.813000','2022-07-04 12:11:16.813000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,3),(7,3),(8,3),(9,3),(10,3),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(64,1),(65,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(113,1),(114,1),(115,1),(116,1),(117,1),(121,1),(122,1),(123,1),(125,1),(126,1),(128,1),(129,1),(131,1),(132,1),(133,1),(137,1),(138,1),(142,1),(143,1),(145,1),(147,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-06-27 12:44:48.592000','2022-06-27 12:44:48.592000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-06-27 12:44:48.606000','2022-06-27 12:44:48.606000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-06-27 12:44:48.612000','2022-06-27 12:44:48.612000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Carlos ','Martínez',NULL,'ca.martinezpaniagua@ugto.mx','$2a$10$F3SsFDq9nHLZKHZkORhjVO2ipnRDmSJototkJyU/mzQx/CMRq9/EK',NULL,NULL,1,0,NULL,'2022-06-27 12:45:14.070000','2022-06-27 12:45:14.070000',NULL,NULL),(2,'Charly','Dos','camartinez','camartinez@ugto.mx','$2a$10$JXxXpNhkoVsiRXvYM2.Eae7MAU2VqspqGE4.HQoX7XhyAtIn5Mebi',NULL,NULL,1,0,NULL,'2022-06-27 13:29:22.174000','2022-06-27 13:45:36.899000',NULL,NULL),(3,'test','test','test@ugto.mx','test@ugto.mx','$2a$10$90Vs/K/uGhuR1XecyMn0nOVg788k.x11vcXpg2KNpPJYz8geaJHzy',NULL,'1efef56e10ce3d80e93e967fd2ce5436031fb348',1,0,NULL,'2022-06-27 13:47:32.168000','2022-06-27 13:48:14.504000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1),(2,2),(3,2);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_ones`
--

DROP TABLE IF EXISTS `answer_evaluation_ones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_ones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answer_evaluation_ones_created_by_id_fk` (`created_by_id`),
  KEY `answer_evaluation_ones_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `answer_evaluation_ones_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `answer_evaluation_ones_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_ones`
--

LOCK TABLES `answer_evaluation_ones` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_ones` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_ones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_ones_project_links`
--

DROP TABLE IF EXISTS `answer_evaluation_ones_project_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_ones_project_links` (
  `answer_evaluation_one_id` int unsigned DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  KEY `answer_evaluation_ones_project_links_fk` (`answer_evaluation_one_id`),
  KEY `answer_evaluation_ones_project_links_inv_fk` (`project_id`),
  CONSTRAINT `answer_evaluation_ones_project_links_fk` FOREIGN KEY (`answer_evaluation_one_id`) REFERENCES `answer_evaluation_ones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answer_evaluation_ones_project_links_inv_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_ones_project_links`
--

LOCK TABLES `answer_evaluation_ones_project_links` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_ones_project_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_ones_project_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_ones_questions_evaluation_ones_links`
--

DROP TABLE IF EXISTS `answer_evaluation_ones_questions_evaluation_ones_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_ones_questions_evaluation_ones_links` (
  `answer_evaluation_one_id` int unsigned DEFAULT NULL,
  `questions_evaluation_one_id` int unsigned DEFAULT NULL,
  KEY `answer_evaluation_ones_questions_evaluation_ones_links_fk` (`answer_evaluation_one_id`),
  KEY `answer_evaluation_ones_questions_evaluation_ones_links_inv_fk` (`questions_evaluation_one_id`),
  CONSTRAINT `answer_evaluation_ones_questions_evaluation_ones_links_fk` FOREIGN KEY (`answer_evaluation_one_id`) REFERENCES `answer_evaluation_ones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answer_evaluation_ones_questions_evaluation_ones_links_inv_fk` FOREIGN KEY (`questions_evaluation_one_id`) REFERENCES `questions_evaluation_ones` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_ones_questions_evaluation_ones_links`
--

LOCK TABLES `answer_evaluation_ones_questions_evaluation_ones_links` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_ones_questions_evaluation_ones_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_ones_questions_evaluation_ones_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_twos`
--

DROP TABLE IF EXISTS `answer_evaluation_twos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_twos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answer_evaluation_twos_created_by_id_fk` (`created_by_id`),
  KEY `answer_evaluation_twos_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `answer_evaluation_twos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `answer_evaluation_twos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_twos`
--

LOCK TABLES `answer_evaluation_twos` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_twos` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_twos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_twos_project_links`
--

DROP TABLE IF EXISTS `answer_evaluation_twos_project_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_twos_project_links` (
  `answer_evaluation_two_id` int unsigned DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  KEY `answer_evaluation_twos_project_links_fk` (`answer_evaluation_two_id`),
  KEY `answer_evaluation_twos_project_links_inv_fk` (`project_id`),
  CONSTRAINT `answer_evaluation_twos_project_links_fk` FOREIGN KEY (`answer_evaluation_two_id`) REFERENCES `answer_evaluation_twos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answer_evaluation_twos_project_links_inv_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_twos_project_links`
--

LOCK TABLES `answer_evaluation_twos_project_links` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_twos_project_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_twos_project_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer_evaluation_twos_questions_evaluation_twos_links`
--

DROP TABLE IF EXISTS `answer_evaluation_twos_questions_evaluation_twos_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_evaluation_twos_questions_evaluation_twos_links` (
  `answer_evaluation_two_id` int unsigned DEFAULT NULL,
  `questions_evaluation_two_id` int unsigned DEFAULT NULL,
  KEY `answer_evaluation_twos_questions_evaluation_twos_links_fk` (`answer_evaluation_two_id`),
  KEY `answer_evaluation_twos_questions_evaluation_twos_links_inv_fk` (`questions_evaluation_two_id`),
  CONSTRAINT `answer_evaluation_twos_questions_evaluation_twos_links_fk` FOREIGN KEY (`answer_evaluation_two_id`) REFERENCES `answer_evaluation_twos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answer_evaluation_twos_questions_evaluation_twos_links_inv_fk` FOREIGN KEY (`questions_evaluation_two_id`) REFERENCES `questions_evaluation_twos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_evaluation_twos_questions_evaluation_twos_links`
--

LOCK TABLES `answer_evaluation_twos_questions_evaluation_twos_links` WRITE;
/*!40000 ALTER TABLE `answer_evaluation_twos_questions_evaluation_twos_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer_evaluation_twos_questions_evaluation_twos_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_created_by_id_fk` (`created_by_id`),
  KEY `answers_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `answers_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `answers_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers_questionnaire_links`
--

DROP TABLE IF EXISTS `answers_questionnaire_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers_questionnaire_links` (
  `answer_id` int unsigned DEFAULT NULL,
  `questionnaire_id` int unsigned DEFAULT NULL,
  KEY `answers_questionnaire_links_fk` (`answer_id`),
  KEY `answers_questionnaire_links_inv_fk` (`questionnaire_id`),
  CONSTRAINT `answers_questionnaire_links_fk` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answers_questionnaire_links_inv_fk` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaires` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers_questionnaire_links`
--

LOCK TABLES `answers_questionnaire_links` WRITE;
/*!40000 ALTER TABLE `answers_questionnaire_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers_questionnaire_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers_users_permissions_user_links`
--

DROP TABLE IF EXISTS `answers_users_permissions_user_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers_users_permissions_user_links` (
  `answer_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  KEY `answers_users_permissions_user_links_fk` (`answer_id`),
  KEY `answers_users_permissions_user_links_inv_fk` (`user_id`),
  CONSTRAINT `answers_users_permissions_user_links_fk` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `answers_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers_users_permissions_user_links`
--

LOCK TABLES `answers_users_permissions_user_links` WRITE;
/*!40000 ALTER TABLE `answers_users_permissions_user_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers_users_permissions_user_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_created_by_id_fk` (`created_by_id`),
  KEY `certificates_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `certificates_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `certificates_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `d_init` date DEFAULT NULL,
  `d_finish` date DEFAULT NULL,
  `d_resp_category_init` date DEFAULT NULL,
  `d_resp_category_finish` date DEFAULT NULL,
  `course_name_1` varchar(255) DEFAULT NULL,
  `url_course_1` varchar(255) DEFAULT NULL,
  `course_name_2` varchar(255) DEFAULT NULL,
  `url_course_2` varchar(255) DEFAULT NULL,
  `d_pitch_finish` date DEFAULT NULL,
  `d_eval_1_init` date DEFAULT NULL,
  `d_eval_1_finish` date DEFAULT NULL,
  `d_pub_semifinalist` date DEFAULT NULL,
  `d_eval_2_init` date DEFAULT NULL,
  `d_eval_2_finish` date DEFAULT NULL,
  `d_pub_finalist` date DEFAULT NULL,
  `number_winners_preparatory` int DEFAULT NULL,
  `number_winners_bachelors` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_created_by_id_fk` (`created_by_id`),
  KEY `events_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `events_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `events_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-06-27 12:44:48.512000','2022-06-27 12:44:48.512000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` longtext,
  `pitch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_created_by_id_fk` (`created_by_id`),
  KEY `projects_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `projects_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `projects_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'test','2022-06-28 12:45:08.230000','2022-06-28 12:45:51.773000','2022-06-28 12:45:51.771000',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_status_links`
--

DROP TABLE IF EXISTS `projects_status_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_status_links` (
  `project_id` int unsigned DEFAULT NULL,
  `status_id` int unsigned DEFAULT NULL,
  KEY `projects_status_links_fk` (`project_id`),
  KEY `projects_status_links_inv_fk` (`status_id`),
  CONSTRAINT `projects_status_links_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `projects_status_links_inv_fk` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_status_links`
--

LOCK TABLES `projects_status_links` WRITE;
/*!40000 ALTER TABLE `projects_status_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_status_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaires`
--

DROP TABLE IF EXISTS `questionnaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionnaires` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questionnaires_created_by_id_fk` (`created_by_id`),
  KEY `questionnaires_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `questionnaires_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `questionnaires_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaires`
--

LOCK TABLES `questionnaires` WRITE;
/*!40000 ALTER TABLE `questionnaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_evaluation_ones`
--

DROP TABLE IF EXISTS `questions_evaluation_ones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_evaluation_ones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_evaluation_ones_created_by_id_fk` (`created_by_id`),
  KEY `questions_evaluation_ones_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `questions_evaluation_ones_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `questions_evaluation_ones_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_evaluation_ones`
--

LOCK TABLES `questions_evaluation_ones` WRITE;
/*!40000 ALTER TABLE `questions_evaluation_ones` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_evaluation_ones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_evaluation_ones_answer_evaluation_ones_links`
--

DROP TABLE IF EXISTS `questions_evaluation_ones_answer_evaluation_ones_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_evaluation_ones_answer_evaluation_ones_links` (
  `questions_evaluation_one_id` int unsigned DEFAULT NULL,
  `answer_evaluation_one_id` int unsigned DEFAULT NULL,
  KEY `questions_evaluation_ones_answer_evaluation_ones_links_fk` (`questions_evaluation_one_id`),
  KEY `questions_evaluation_ones_answer_evaluation_ones_links_inv_fk` (`answer_evaluation_one_id`),
  CONSTRAINT `questions_evaluation_ones_answer_evaluation_ones_links_fk` FOREIGN KEY (`questions_evaluation_one_id`) REFERENCES `questions_evaluation_ones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `questions_evaluation_ones_answer_evaluation_ones_links_inv_fk` FOREIGN KEY (`answer_evaluation_one_id`) REFERENCES `answer_evaluation_ones` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_evaluation_ones_answer_evaluation_ones_links`
--

LOCK TABLES `questions_evaluation_ones_answer_evaluation_ones_links` WRITE;
/*!40000 ALTER TABLE `questions_evaluation_ones_answer_evaluation_ones_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_evaluation_ones_answer_evaluation_ones_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_evaluation_twos`
--

DROP TABLE IF EXISTS `questions_evaluation_twos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_evaluation_twos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_evaluation_twos_created_by_id_fk` (`created_by_id`),
  KEY `questions_evaluation_twos_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `questions_evaluation_twos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `questions_evaluation_twos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_evaluation_twos`
--

LOCK TABLES `questions_evaluation_twos` WRITE;
/*!40000 ALTER TABLE `questions_evaluation_twos` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_evaluation_twos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  `score_1` int DEFAULT NULL,
  `score_2` int DEFAULT NULL,
  `final_score` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statuses_created_by_id_fk` (`created_by_id`),
  KEY `statuses_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `statuses_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `statuses_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"users\"},\"name\":{\"type\":\"string\",\"required\":true},\"lastName\":{\"type\":\"string\",\"required\":true},\"nuaNue\":{\"type\":\"string\"},\"emailAlternative\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"yearRegistered\":{\"type\":\"string\"},\"certificate\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::certificate.certificate\"},\"answers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer.answer\",\"mappedBy\":\"users_permissions_user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"users\"},\"name\":{\"type\":\"string\",\"required\":true},\"lastName\":{\"type\":\"string\",\"required\":true},\"nuaNue\":{\"type\":\"string\"},\"emailAlternative\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"yearRegistered\":{\"type\":\"string\"},\"certificate\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::certificate.certificate\"},\"answers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer.answer\",\"mappedBy\":\"users_permissions_user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::answer.answer\":{\"kind\":\"collectionType\",\"collectionName\":\"answers\",\"info\":{\"singularName\":\"answer\",\"pluralName\":\"answers\",\"displayName\":\"answer\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"required\":true},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"answers\"},\"questionnaire\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::questionnaire.questionnaire\",\"inversedBy\":\"answers\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"answers\",\"info\":{\"singularName\":\"answer\",\"pluralName\":\"answers\",\"displayName\":\"answer\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"required\":true},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"answers\"},\"questionnaire\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::questionnaire.questionnaire\",\"inversedBy\":\"answers\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"answer\",\"connection\":\"default\",\"uid\":\"api::answer.answer\",\"apiName\":\"answer\",\"globalId\":\"Answer\",\"actions\":{},\"lifecycles\":{}},\"api::answer-evaluation-one.answer-evaluation-one\":{\"kind\":\"collectionType\",\"collectionName\":\"answer_evaluation_ones\",\"info\":{\"singularName\":\"answer-evaluation-one\",\"pluralName\":\"answer-evaluation-ones\",\"displayName\":\"AnswerEvaluationOne\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"regex\":\"/^[1-5]$/\",\"required\":true},\"questions_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::questions-evaluation-one.questions-evaluation-one\",\"inversedBy\":\"answer_evaluation_ones\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"answer_evaluation_ones\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"answer_evaluation_ones\",\"info\":{\"singularName\":\"answer-evaluation-one\",\"pluralName\":\"answer-evaluation-ones\",\"displayName\":\"AnswerEvaluationOne\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"regex\":\"/^[1-5]$/\",\"required\":true},\"questions_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::questions-evaluation-one.questions-evaluation-one\",\"inversedBy\":\"answer_evaluation_ones\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"answer_evaluation_ones\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"answer-evaluation-one\",\"connection\":\"default\",\"uid\":\"api::answer-evaluation-one.answer-evaluation-one\",\"apiName\":\"answer-evaluation-one\",\"globalId\":\"AnswerEvaluationOne\",\"actions\":{},\"lifecycles\":{}},\"api::answer-evaluation-two.answer-evaluation-two\":{\"kind\":\"collectionType\",\"collectionName\":\"answer_evaluation_twos\",\"info\":{\"singularName\":\"answer-evaluation-two\",\"pluralName\":\"answer-evaluation-twos\",\"displayName\":\"AnswerEvaluationTwo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"regex\":\"/^[1-5]$/\",\"required\":true},\"questions_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::questions-evaluation-two.questions-evaluation-two\",\"inversedBy\":\"answer_evaluation_twos\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"answer_evaluation_twos\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"answer_evaluation_twos\",\"info\":{\"singularName\":\"answer-evaluation-two\",\"pluralName\":\"answer-evaluation-twos\",\"displayName\":\"AnswerEvaluationTwo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"answer\":{\"type\":\"string\",\"regex\":\"/^[1-5]$/\",\"required\":true},\"questions_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::questions-evaluation-two.questions-evaluation-two\",\"inversedBy\":\"answer_evaluation_twos\"},\"project\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::project.project\",\"inversedBy\":\"answer_evaluation_twos\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"answer-evaluation-two\",\"connection\":\"default\",\"uid\":\"api::answer-evaluation-two.answer-evaluation-two\",\"apiName\":\"answer-evaluation-two\",\"globalId\":\"AnswerEvaluationTwo\",\"actions\":{},\"lifecycles\":{}},\"api::certificate.certificate\":{\"kind\":\"collectionType\",\"collectionName\":\"certificates\",\"info\":{\"singularName\":\"certificate\",\"pluralName\":\"certificates\",\"displayName\":\"certificate\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fileCourseOne\":{\"allowedTypes\":[\"files\"],\"type\":\"media\",\"multiple\":true},\"fileCourseTwo\":{\"allowedTypes\":[\"files\"],\"type\":\"media\",\"multiple\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"certificates\",\"info\":{\"singularName\":\"certificate\",\"pluralName\":\"certificates\",\"displayName\":\"certificate\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fileCourseOne\":{\"allowedTypes\":[\"files\"],\"type\":\"media\",\"multiple\":true},\"fileCourseTwo\":{\"allowedTypes\":[\"files\"],\"type\":\"media\",\"multiple\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"certificate\",\"connection\":\"default\",\"uid\":\"api::certificate.certificate\",\"apiName\":\"certificate\",\"globalId\":\"Certificate\",\"actions\":{},\"lifecycles\":{}},\"api::event.event\":{\"kind\":\"collectionType\",\"collectionName\":\"events\",\"info\":{\"singularName\":\"event\",\"pluralName\":\"events\",\"displayName\":\"Event\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"dInit\":{\"type\":\"date\",\"required\":true},\"dFinish\":{\"type\":\"date\",\"required\":true},\"dRespCategoryInit\":{\"type\":\"date\",\"required\":true},\"dRespCategoryFinish\":{\"type\":\"date\",\"required\":true},\"courseName1\":{\"type\":\"string\",\"required\":true},\"urlCourse1\":{\"type\":\"string\",\"required\":true},\"courseName2\":{\"type\":\"string\",\"required\":true},\"urlCourse2\":{\"type\":\"string\",\"required\":true},\"dPitchFinish\":{\"type\":\"date\",\"required\":true},\"dEval1Init\":{\"type\":\"date\",\"required\":true},\"dEval1Finish\":{\"type\":\"date\",\"required\":true},\"dPubSemifinalist\":{\"type\":\"date\",\"required\":true},\"dEval2Init\":{\"type\":\"date\",\"required\":true},\"dEval2Finish\":{\"type\":\"date\",\"required\":true},\"dPubFinalist\":{\"type\":\"date\",\"required\":true},\"eventFile\":{\"allowedTypes\":[\"files\",\"videos\",\"images\"],\"type\":\"media\",\"multiple\":true},\"numberWinnersPreparatory\":{\"type\":\"integer\",\"required\":true},\"numberWinnersBachelors\":{\"type\":\"integer\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"events\",\"info\":{\"singularName\":\"event\",\"pluralName\":\"events\",\"displayName\":\"Event\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"dInit\":{\"type\":\"date\",\"required\":true},\"dFinish\":{\"type\":\"date\",\"required\":true},\"dRespCategoryInit\":{\"type\":\"date\",\"required\":true},\"dRespCategoryFinish\":{\"type\":\"date\",\"required\":true},\"courseName1\":{\"type\":\"string\",\"required\":true},\"urlCourse1\":{\"type\":\"string\",\"required\":true},\"courseName2\":{\"type\":\"string\",\"required\":true},\"urlCourse2\":{\"type\":\"string\",\"required\":true},\"dPitchFinish\":{\"type\":\"date\",\"required\":true},\"dEval1Init\":{\"type\":\"date\",\"required\":true},\"dEval1Finish\":{\"type\":\"date\",\"required\":true},\"dPubSemifinalist\":{\"type\":\"date\",\"required\":true},\"dEval2Init\":{\"type\":\"date\",\"required\":true},\"dEval2Finish\":{\"type\":\"date\",\"required\":true},\"dPubFinalist\":{\"type\":\"date\",\"required\":true},\"eventFile\":{\"allowedTypes\":[\"files\",\"videos\",\"images\"],\"type\":\"media\",\"multiple\":true},\"numberWinnersPreparatory\":{\"type\":\"integer\",\"required\":true},\"numberWinnersBachelors\":{\"type\":\"integer\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"event\",\"connection\":\"default\",\"uid\":\"api::event.event\",\"apiName\":\"event\",\"globalId\":\"Event\",\"actions\":{},\"lifecycles\":{}},\"api::project.project\":{\"kind\":\"collectionType\",\"collectionName\":\"projects\",\"info\":{\"singularName\":\"project\",\"pluralName\":\"projects\",\"displayName\":\"Project\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"enumeration\",\"enum\":[\"Empresarial\",\"Social\",\"Proyecto de tecnologías de la información y proyectos de invenciones\",\"Medio ambiental\"]},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"project\"},\"description\":{\"type\":\"richtext\",\"required\":true},\"resplettter\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"files\"]},\"projectFile\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"files\"]},\"pitch\":{\"type\":\"string\"},\"status\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status.status\"},\"answer_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer-evaluation-one.answer-evaluation-one\",\"mappedBy\":\"project\"},\"answer_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer-evaluation-two.answer-evaluation-two\",\"mappedBy\":\"project\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"projects\",\"info\":{\"singularName\":\"project\",\"pluralName\":\"projects\",\"displayName\":\"Project\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"category\":{\"type\":\"enumeration\",\"enum\":[\"Empresarial\",\"Social\",\"Proyecto de tecnologías de la información y proyectos de invenciones\",\"Medio ambiental\"]},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"project\"},\"description\":{\"type\":\"richtext\",\"required\":true},\"resplettter\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"files\"]},\"projectFile\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"files\"]},\"pitch\":{\"type\":\"string\"},\"status\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status.status\"},\"answer_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer-evaluation-one.answer-evaluation-one\",\"mappedBy\":\"project\"},\"answer_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer-evaluation-two.answer-evaluation-two\",\"mappedBy\":\"project\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"project\",\"connection\":\"default\",\"uid\":\"api::project.project\",\"apiName\":\"project\",\"globalId\":\"Project\",\"actions\":{},\"lifecycles\":{}},\"api::questionnaire.questionnaire\":{\"kind\":\"collectionType\",\"collectionName\":\"questionnaires\",\"info\":{\"singularName\":\"questionnaire\",\"pluralName\":\"questionnaires\",\"displayName\":\"Questionnaire\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer.answer\",\"mappedBy\":\"questionnaire\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"questionnaires\",\"info\":{\"singularName\":\"questionnaire\",\"pluralName\":\"questionnaires\",\"displayName\":\"Questionnaire\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answers\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::answer.answer\",\"mappedBy\":\"questionnaire\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"questionnaire\",\"connection\":\"default\",\"uid\":\"api::questionnaire.questionnaire\",\"apiName\":\"questionnaire\",\"globalId\":\"Questionnaire\",\"actions\":{},\"lifecycles\":{}},\"api::questions-evaluation-one.questions-evaluation-one\":{\"kind\":\"collectionType\",\"collectionName\":\"questions_evaluation_ones\",\"info\":{\"singularName\":\"questions-evaluation-one\",\"pluralName\":\"questions-evaluation-ones\",\"displayName\":\"QuestionsEvaluationOne\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answer_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::answer-evaluation-one.answer-evaluation-one\",\"inversedBy\":\"questions_evaluation_ones\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"questions_evaluation_ones\",\"info\":{\"singularName\":\"questions-evaluation-one\",\"pluralName\":\"questions-evaluation-ones\",\"displayName\":\"QuestionsEvaluationOne\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answer_evaluation_ones\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::answer-evaluation-one.answer-evaluation-one\",\"inversedBy\":\"questions_evaluation_ones\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"questions-evaluation-one\",\"connection\":\"default\",\"uid\":\"api::questions-evaluation-one.questions-evaluation-one\",\"apiName\":\"questions-evaluation-one\",\"globalId\":\"QuestionsEvaluationOne\",\"actions\":{},\"lifecycles\":{}},\"api::questions-evaluation-two.questions-evaluation-two\":{\"kind\":\"collectionType\",\"collectionName\":\"questions_evaluation_twos\",\"info\":{\"singularName\":\"questions-evaluation-two\",\"pluralName\":\"questions-evaluation-twos\",\"displayName\":\"QuestionsEvaluationTwo\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answer_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::answer-evaluation-two.answer-evaluation-two\",\"mappedBy\":\"questions_evaluation_twos\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"questions_evaluation_twos\",\"info\":{\"singularName\":\"questions-evaluation-two\",\"pluralName\":\"questions-evaluation-twos\",\"displayName\":\"QuestionsEvaluationTwo\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"question\":{\"type\":\"string\",\"required\":true},\"answer_evaluation_twos\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::answer-evaluation-two.answer-evaluation-two\",\"mappedBy\":\"questions_evaluation_twos\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"questions-evaluation-two\",\"connection\":\"default\",\"uid\":\"api::questions-evaluation-two.questions-evaluation-two\",\"apiName\":\"questions-evaluation-two\",\"globalId\":\"QuestionsEvaluationTwo\",\"actions\":{},\"lifecycles\":{}},\"api::status.status\":{\"kind\":\"collectionType\",\"collectionName\":\"statuses\",\"info\":{\"singularName\":\"status\",\"pluralName\":\"statuses\",\"displayName\":\"status\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"status\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"string\",\"required\":true},\"validated\":{\"type\":\"boolean\"},\"score1\":{\"type\":\"integer\"},\"score2\":{\"type\":\"integer\"},\"finalScore\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"statuses\",\"info\":{\"singularName\":\"status\",\"pluralName\":\"statuses\",\"displayName\":\"status\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"status\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"string\",\"required\":true},\"validated\":{\"type\":\"boolean\"},\"score1\":{\"type\":\"integer\"},\"score2\":{\"type\":\"integer\"},\"finalScore\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"status\",\"connection\":\"default\",\"uid\":\"api::status.status\",\"apiName\":\"status\",\"globalId\":\"Status\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}','object',NULL,NULL),(8,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object',NULL,NULL),(9,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"project\":{\"edit\":{\"label\":\"project\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"project\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"lastName\":{\"edit\":{\"label\":\"lastName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastName\",\"searchable\":true,\"sortable\":true}},\"nuaNue\":{\"edit\":{\"label\":\"nuaNue\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nuaNue\",\"searchable\":true,\"sortable\":true}},\"emailAlternative\":{\"edit\":{\"label\":\"emailAlternative\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"emailAlternative\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"yearRegistered\":{\"edit\":{\"label\":\"yearRegistered\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"yearRegistered\",\"searchable\":true,\"sortable\":true}},\"certificate\":{\"edit\":{\"label\":\"certificate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"certificate\",\"searchable\":true,\"sortable\":true}},\"answers\":{\"edit\":{\"label\":\"answers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answers\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"lastName\",\"size\":6},{\"name\":\"nuaNue\",\"size\":6}],[{\"name\":\"emailAlternative\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"yearRegistered\",\"size\":6}]],\"editRelations\":[\"role\",\"project\",\"certificate\",\"answers\"]}}','object',NULL,NULL),(10,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(12,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(13,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Concurso de Creatividad e Innovación\",\"email\":\"camartinez@ugto.mx\"},\"response_email\":\"concursodecreatividad@ugto.mx\",\"object\":\"Confirmación de cuenta\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(14,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":\"\",\"default_role\":\"student\"}','object',NULL,NULL),(15,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(16,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(17,'plugin_content_manager_configuration_content_types::api::project.project','{\"uid\":\"api::project.project\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"resplettter\":{\"edit\":{\"label\":\"resplettter\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resplettter\",\"searchable\":false,\"sortable\":false}},\"projectFile\":{\"edit\":{\"label\":\"projectFile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"projectFile\",\"searchable\":false,\"sortable\":false}},\"pitch\":{\"edit\":{\"label\":\"pitch\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pitch\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"status\"},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"answer_evaluation_ones\":{\"edit\":{\"label\":\"answer_evaluation_ones\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answer_evaluation_ones\",\"searchable\":false,\"sortable\":false}},\"answer_evaluation_twos\":{\"edit\":{\"label\":\"answer_evaluation_twos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answer_evaluation_twos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"category\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"resplettter\",\"size\":6},{\"name\":\"projectFile\",\"size\":6}],[{\"name\":\"pitch\",\"size\":6}]],\"editRelations\":[\"users\",\"status\",\"answer_evaluation_ones\",\"answer_evaluation_twos\"]}}','object',NULL,NULL),(18,'plugin_content_manager_configuration_content_types::api::questionnaire.questionnaire','{\"uid\":\"api::questionnaire.questionnaire\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":true,\"sortable\":true}},\"answers\":{\"edit\":{\"label\":\"answers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answers\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"question\",\"size\":6}]],\"editRelations\":[\"answers\"]}}','object',NULL,NULL),(19,'plugin_content_manager_configuration_content_types::api::certificate.certificate','{\"uid\":\"api::certificate.certificate\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"fileCourseOne\":{\"edit\":{\"label\":\"fileCourseOne\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fileCourseOne\",\"searchable\":false,\"sortable\":false}},\"fileCourseTwo\":{\"edit\":{\"label\":\"fileCourseTwo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fileCourseTwo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"fileCourseOne\",\"fileCourseTwo\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"fileCourseOne\",\"size\":6},{\"name\":\"fileCourseTwo\",\"size\":6}]]}}','object',NULL,NULL),(20,'plugin_content_manager_configuration_content_types::api::answer.answer','{\"uid\":\"api::answer.answer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"answer\",\"defaultSortBy\":\"answer\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"answer\":{\"edit\":{\"label\":\"answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"answer\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"questionnaire\":{\"edit\":{\"label\":\"questionnaire\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"questionnaire\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"answer\",\"users_permissions_user\",\"questionnaire\"],\"editRelations\":[\"users_permissions_user\",\"questionnaire\"],\"edit\":[[{\"name\":\"answer\",\"size\":6}]]}}','object',NULL,NULL),(21,'plugin_content_manager_configuration_content_types::api::status.status','{\"uid\":\"api::status.status\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"status\",\"defaultSortBy\":\"status\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"validated\":{\"edit\":{\"label\":\"validated\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"validated\",\"searchable\":true,\"sortable\":true}},\"score1\":{\"edit\":{\"label\":\"score1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score1\",\"searchable\":true,\"sortable\":true}},\"score2\":{\"edit\":{\"label\":\"score2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score2\",\"searchable\":true,\"sortable\":true}},\"finalScore\":{\"edit\":{\"label\":\"finalScore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"finalScore\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"status\",\"description\",\"validated\"],\"editRelations\":[],\"edit\":[[{\"name\":\"status\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"validated\",\"size\":4},{\"name\":\"score1\",\"size\":4},{\"name\":\"score2\",\"size\":4}],[{\"name\":\"finalScore\",\"size\":4}]]}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::api::event.event','{\"uid\":\"api::event.event\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"dInit\":{\"edit\":{\"label\":\"dInit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dInit\",\"searchable\":true,\"sortable\":true}},\"dFinish\":{\"edit\":{\"label\":\"dFinish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dFinish\",\"searchable\":true,\"sortable\":true}},\"dRespCategoryInit\":{\"edit\":{\"label\":\"dRespCategoryInit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dRespCategoryInit\",\"searchable\":true,\"sortable\":true}},\"dRespCategoryFinish\":{\"edit\":{\"label\":\"dRespCategoryFinish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dRespCategoryFinish\",\"searchable\":true,\"sortable\":true}},\"courseName1\":{\"edit\":{\"label\":\"courseName1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"courseName1\",\"searchable\":true,\"sortable\":true}},\"urlCourse1\":{\"edit\":{\"label\":\"urlCourse1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"urlCourse1\",\"searchable\":true,\"sortable\":true}},\"courseName2\":{\"edit\":{\"label\":\"courseName2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"courseName2\",\"searchable\":true,\"sortable\":true}},\"urlCourse2\":{\"edit\":{\"label\":\"urlCourse2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"urlCourse2\",\"searchable\":true,\"sortable\":true}},\"dPitchFinish\":{\"edit\":{\"label\":\"dPitchFinish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dPitchFinish\",\"searchable\":true,\"sortable\":true}},\"dEval1Init\":{\"edit\":{\"label\":\"dEval1Init\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dEval1Init\",\"searchable\":true,\"sortable\":true}},\"dEval1Finish\":{\"edit\":{\"label\":\"dEval1Finish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dEval1Finish\",\"searchable\":true,\"sortable\":true}},\"dPubSemifinalist\":{\"edit\":{\"label\":\"dPubSemifinalist\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dPubSemifinalist\",\"searchable\":true,\"sortable\":true}},\"dEval2Init\":{\"edit\":{\"label\":\"dEval2Init\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dEval2Init\",\"searchable\":true,\"sortable\":true}},\"dEval2Finish\":{\"edit\":{\"label\":\"dEval2Finish\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dEval2Finish\",\"searchable\":true,\"sortable\":true}},\"dPubFinalist\":{\"edit\":{\"label\":\"dPubFinalist\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dPubFinalist\",\"searchable\":true,\"sortable\":true}},\"eventFile\":{\"edit\":{\"label\":\"eventFile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"eventFile\",\"searchable\":false,\"sortable\":false}},\"numberWinnersPreparatory\":{\"edit\":{\"label\":\"numberWinnersPreparatory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"numberWinnersPreparatory\",\"searchable\":true,\"sortable\":true}},\"numberWinnersBachelors\":{\"edit\":{\"label\":\"numberWinnersBachelors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"numberWinnersBachelors\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"dInit\",\"dFinish\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"dInit\",\"size\":4}],[{\"name\":\"dFinish\",\"size\":4},{\"name\":\"dRespCategoryInit\",\"size\":4},{\"name\":\"dRespCategoryFinish\",\"size\":4}],[{\"name\":\"courseName1\",\"size\":6},{\"name\":\"urlCourse1\",\"size\":6}],[{\"name\":\"courseName2\",\"size\":6},{\"name\":\"urlCourse2\",\"size\":6}],[{\"name\":\"dPitchFinish\",\"size\":4},{\"name\":\"dEval1Init\",\"size\":4},{\"name\":\"dEval1Finish\",\"size\":4}],[{\"name\":\"dPubSemifinalist\",\"size\":4},{\"name\":\"dEval2Init\",\"size\":4},{\"name\":\"dEval2Finish\",\"size\":4}],[{\"name\":\"dPubFinalist\",\"size\":4},{\"name\":\"eventFile\",\"size\":6}],[{\"name\":\"numberWinnersPreparatory\",\"size\":4},{\"name\":\"numberWinnersBachelors\",\"size\":4}]]}}','object',NULL,NULL),(23,'plugin_content_manager_configuration_content_types::api::questions-evaluation-one.questions-evaluation-one','{\"uid\":\"api::questions-evaluation-one.questions-evaluation-one\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":true,\"sortable\":true}},\"answer_evaluation_ones\":{\"edit\":{\"label\":\"answer_evaluation_ones\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answer_evaluation_ones\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"question\",\"size\":6}]],\"editRelations\":[\"answer_evaluation_ones\"]}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_content_types::api::answer-evaluation-one.answer-evaluation-one','{\"uid\":\"api::answer-evaluation-one.answer-evaluation-one\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"answer\",\"defaultSortBy\":\"answer\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"answer\":{\"edit\":{\"label\":\"answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"answer\",\"searchable\":true,\"sortable\":true}},\"questions_evaluation_ones\":{\"edit\":{\"label\":\"questions_evaluation_ones\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"questions_evaluation_ones\",\"searchable\":false,\"sortable\":false}},\"project\":{\"edit\":{\"label\":\"project\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"project\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"answer\",\"questions_evaluation_ones\",\"project\"],\"editRelations\":[\"questions_evaluation_ones\",\"project\"],\"edit\":[[{\"name\":\"answer\",\"size\":6}]]}}','object',NULL,NULL),(25,'plugin_content_manager_configuration_content_types::api::questions-evaluation-two.questions-evaluation-two','{\"uid\":\"api::questions-evaluation-two.questions-evaluation-two\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"question\",\"defaultSortBy\":\"question\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"question\":{\"edit\":{\"label\":\"question\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"question\",\"searchable\":true,\"sortable\":true}},\"answer_evaluation_twos\":{\"edit\":{\"label\":\"answer_evaluation_twos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"answer\"},\"list\":{\"label\":\"answer_evaluation_twos\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"question\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"question\",\"size\":6}]],\"editRelations\":[\"answer_evaluation_twos\"]}}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::api::answer-evaluation-two.answer-evaluation-two','{\"uid\":\"api::answer-evaluation-two.answer-evaluation-two\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"answer\",\"defaultSortBy\":\"answer\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"answer\":{\"edit\":{\"label\":\"answer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"answer\",\"searchable\":true,\"sortable\":true}},\"questions_evaluation_twos\":{\"edit\":{\"label\":\"questions_evaluation_twos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"question\"},\"list\":{\"label\":\"questions_evaluation_twos\",\"searchable\":false,\"sortable\":false}},\"project\":{\"edit\":{\"label\":\"project\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"project\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"answer\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"answer\",\"size\":6}]],\"editRelations\":[\"questions_evaluation_twos\",\"project\"]}}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (20,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"last_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nua_nue\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email_alternative\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"year_registered\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answers\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"answer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answers_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"answers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"answers_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answers_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_ones\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"answer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_ones_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"answer_evaluation_ones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_ones_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_ones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_twos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"answer\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_twos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"answer_evaluation_twos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_twos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_twos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"certificates\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"certificates_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"certificates_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"certificates_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"certificates_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"events\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_init\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_finish\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_resp_category_init\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_resp_category_finish\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"course_name_1\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url_course_1\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"course_name_2\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url_course_2\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_pitch_finish\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_eval_1_init\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_eval_1_finish\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_pub_semifinalist\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_eval_2_init\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_eval_2_finish\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"d_pub_finalist\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number_winners_preparatory\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"number_winners_bachelors\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"events_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"events_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"events_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"events_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"projects\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"pitch\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"projects_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"projects_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"projects_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"projects_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"questionnaires\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"question\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"questionnaires_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"questionnaires_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"questionnaires_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"questionnaires_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"questions_evaluation_ones\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"question\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"questions_evaluation_ones_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"questions_evaluation_ones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"questions_evaluation_ones_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"questions_evaluation_ones_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"questions_evaluation_twos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"question\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"questions_evaluation_twos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"questions_evaluation_twos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"questions_evaluation_twos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"questions_evaluation_twos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"statuses\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"validated\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"score_1\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"score_2\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"final_score\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"statuses_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"statuses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"statuses_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"statuses_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_project_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"project_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_project_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_project_links_inv_fk\", \"columns\": [\"project_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_project_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_project_links_inv_fk\", \"columns\": [\"project_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"projects\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_certificate_links\", \"columns\": [{\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"certificate_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_certificate_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_certificate_links_inv_fk\", \"columns\": [\"certificate_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_certificate_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_certificate_links_inv_fk\", \"columns\": [\"certificate_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"certificates\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answers_users_permissions_user_links\", \"columns\": [{\"args\": [], \"name\": \"answer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answers_users_permissions_user_links_fk\", \"columns\": [\"answer_id\"]}, {\"name\": \"answers_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"answers_users_permissions_user_links_fk\", \"columns\": [\"answer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answers\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answers_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answers_questionnaire_links\", \"columns\": [{\"args\": [], \"name\": \"answer_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"questionnaire_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answers_questionnaire_links_fk\", \"columns\": [\"answer_id\"]}, {\"name\": \"answers_questionnaire_links_inv_fk\", \"columns\": [\"questionnaire_id\"]}], \"foreignKeys\": [{\"name\": \"answers_questionnaire_links_fk\", \"columns\": [\"answer_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answers\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answers_questionnaire_links_inv_fk\", \"columns\": [\"questionnaire_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"questionnaires\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_ones_questions_evaluation_ones_links\", \"columns\": [{\"args\": [], \"name\": \"answer_evaluation_one_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"questions_evaluation_one_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_ones_questions_evaluation_ones_links_fk\", \"columns\": [\"answer_evaluation_one_id\"]}, {\"name\": \"answer_evaluation_ones_questions_evaluation_ones_links_inv_fk\", \"columns\": [\"questions_evaluation_one_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_ones_questions_evaluation_ones_links_fk\", \"columns\": [\"answer_evaluation_one_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answer_evaluation_ones\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_ones_questions_evaluation_ones_links_inv_fk\", \"columns\": [\"questions_evaluation_one_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"questions_evaluation_ones\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_ones_project_links\", \"columns\": [{\"args\": [], \"name\": \"answer_evaluation_one_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"project_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_ones_project_links_fk\", \"columns\": [\"answer_evaluation_one_id\"]}, {\"name\": \"answer_evaluation_ones_project_links_inv_fk\", \"columns\": [\"project_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_ones_project_links_fk\", \"columns\": [\"answer_evaluation_one_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answer_evaluation_ones\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_ones_project_links_inv_fk\", \"columns\": [\"project_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"projects\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_twos_questions_evaluation_twos_links\", \"columns\": [{\"args\": [], \"name\": \"answer_evaluation_two_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"questions_evaluation_two_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_twos_questions_evaluation_twos_links_fk\", \"columns\": [\"answer_evaluation_two_id\"]}, {\"name\": \"answer_evaluation_twos_questions_evaluation_twos_links_inv_fk\", \"columns\": [\"questions_evaluation_two_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_twos_questions_evaluation_twos_links_fk\", \"columns\": [\"answer_evaluation_two_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answer_evaluation_twos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_twos_questions_evaluation_twos_links_inv_fk\", \"columns\": [\"questions_evaluation_two_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"questions_evaluation_twos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"answer_evaluation_twos_project_links\", \"columns\": [{\"args\": [], \"name\": \"answer_evaluation_two_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"project_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"answer_evaluation_twos_project_links_fk\", \"columns\": [\"answer_evaluation_two_id\"]}, {\"name\": \"answer_evaluation_twos_project_links_inv_fk\", \"columns\": [\"project_id\"]}], \"foreignKeys\": [{\"name\": \"answer_evaluation_twos_project_links_fk\", \"columns\": [\"answer_evaluation_two_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answer_evaluation_twos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"answer_evaluation_twos_project_links_inv_fk\", \"columns\": [\"project_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"projects\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"projects_status_links\", \"columns\": [{\"args\": [], \"name\": \"project_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"projects_status_links_fk\", \"columns\": [\"project_id\"]}, {\"name\": \"projects_status_links_inv_fk\", \"columns\": [\"status_id\"]}], \"foreignKeys\": [{\"name\": \"projects_status_links_fk\", \"columns\": [\"project_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"projects\", \"referencedColumns\": [\"id\"]}, {\"name\": \"projects_status_links_inv_fk\", \"columns\": [\"status_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"statuses\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"questions_evaluation_ones_answer_evaluation_ones_links\", \"columns\": [{\"args\": [], \"name\": \"questions_evaluation_one_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"answer_evaluation_one_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"questions_evaluation_ones_answer_evaluation_ones_links_fk\", \"columns\": [\"questions_evaluation_one_id\"]}, {\"name\": \"questions_evaluation_ones_answer_evaluation_ones_links_inv_fk\", \"columns\": [\"answer_evaluation_one_id\"]}], \"foreignKeys\": [{\"name\": \"questions_evaluation_ones_answer_evaluation_ones_links_fk\", \"columns\": [\"questions_evaluation_one_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"questions_evaluation_ones\", \"referencedColumns\": [\"id\"]}, {\"name\": \"questions_evaluation_ones_answer_evaluation_ones_links_inv_fk\", \"columns\": [\"answer_evaluation_one_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"answer_evaluation_ones\", \"referencedColumns\": [\"id\"]}]}]}','2022-07-04 12:11:16','1ba0f7291aab4616ddb09995b3cdf471');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (1,'plugin::users-permissions.auth.connect','2022-06-27 12:44:48.457000','2022-06-27 12:44:48.457000',NULL,NULL),(2,'plugin::users-permissions.user.me','2022-06-27 12:44:48.457000','2022-06-27 12:44:48.457000',NULL,NULL),(11,'plugin::users-permissions.user.me','2022-06-27 12:44:48.476000','2022-06-27 12:44:48.476000',NULL,NULL),(13,'plugin::users-permissions.auth.emailConfirmation','2022-06-28 10:59:57.409000','2022-06-28 10:59:57.409000',NULL,NULL),(14,'plugin::users-permissions.auth.sendEmailConfirmation','2022-06-28 10:59:57.409000','2022-06-28 10:59:57.409000',NULL,NULL),(18,'api::project.project.find','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(19,'api::project.project.findOne','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(20,'api::project.project.delete','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(21,'plugin::content-type-builder.content-types.getContentTypes','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(22,'api::project.project.create','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(23,'plugin::content-type-builder.content-types.getContentType','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(24,'api::project.project.update','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(25,'plugin::content-type-builder.components.getComponent','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(26,'plugin::content-type-builder.components.getComponents','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(27,'plugin::email.email.send','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(28,'plugin::upload.content-api.find','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(29,'plugin::upload.content-api.findOne','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(30,'plugin::upload.content-api.destroy','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(31,'plugin::upload.content-api.upload','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(32,'plugin::i18n.locales.listLocales','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(33,'plugin::users-permissions.auth.callback','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(34,'plugin::users-permissions.auth.resetPassword','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(35,'plugin::users-permissions.auth.forgotPassword','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(36,'plugin::users-permissions.auth.register','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(37,'plugin::users-permissions.auth.emailConfirmation','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(38,'plugin::users-permissions.auth.sendEmailConfirmation','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(39,'plugin::users-permissions.user.create','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(40,'plugin::users-permissions.user.update','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(41,'plugin::users-permissions.user.find','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(42,'plugin::users-permissions.user.findOne','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(43,'plugin::users-permissions.user.count','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(44,'plugin::users-permissions.user.destroy','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(45,'plugin::users-permissions.role.createRole','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(46,'plugin::users-permissions.role.findOne','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(47,'plugin::users-permissions.role.find','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(48,'plugin::users-permissions.role.updateRole','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(49,'plugin::users-permissions.role.deleteRole','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(50,'plugin::users-permissions.permissions.getPermissions','2022-06-28 11:35:41.518000','2022-06-28 11:35:41.518000',NULL,NULL),(58,'plugin::users-permissions.auth.register','2022-06-29 14:39:05.701000','2022-06-29 14:39:05.701000',NULL,NULL),(59,'plugin::users-permissions.auth.register','2022-06-30 09:16:36.473000','2022-06-30 09:16:36.473000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (2,1),(1,1),(11,2),(13,3),(14,3),(18,1),(20,1),(19,1),(21,1),(25,1),(23,1),(27,1),(26,1),(22,1),(24,1),(28,1),(29,1),(30,1),(35,1),(32,1),(33,1),(31,1),(36,1),(37,1),(34,1),(38,1),(39,1),(40,1),(41,1),(47,1),(42,1),(44,1),(46,1),(50,1),(45,1),(43,1),(48,1),(49,1),(58,5),(59,2);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Editor','Persona encargada de crear las convocatorias.','authenticated','2022-06-27 12:44:48.434000','2022-06-28 11:35:41.490000',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public','2022-06-27 12:44:48.443000','2022-06-30 09:16:46.242000',NULL,NULL),(3,'Student','Estudiante que realiza un registro de usuario','student','2022-06-27 12:51:34.525000','2022-06-28 10:59:57.399000',NULL,NULL),(4,'RespCategory','Responsable del área de categoria','respcategory','2022-06-27 12:51:59.019000','2022-06-29 14:28:17.561000',NULL,NULL),(5,'Evaluator','Evaluadores de los proyectos','evaluator','2022-06-27 12:55:36.963000','2022-06-29 14:39:05.688000',NULL,NULL),(6,'Asesor','Responsable de apoyar a los proyectos.','asesor','2022-06-27 12:56:49.492000','2022-06-27 12:56:49.492000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nua_nue` varchar(255) DEFAULT NULL,
  `email_alternative` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `year_registered` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
INSERT INTO `up_users` VALUES (74,'za26','za26@ugto.mx','local','$2a$10$68pBLGLyaeXpGtZJo33qU.fYPzOmHoAyl4M2ylfcAPwibdMwrdDce',NULL,NULL,1,0,'2022-06-30 14:16:22.393000','2022-06-30 14:16:22.393000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_certificate_links`
--

DROP TABLE IF EXISTS `up_users_certificate_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_certificate_links` (
  `user_id` int unsigned DEFAULT NULL,
  `certificate_id` int unsigned DEFAULT NULL,
  KEY `up_users_certificate_links_fk` (`user_id`),
  KEY `up_users_certificate_links_inv_fk` (`certificate_id`),
  CONSTRAINT `up_users_certificate_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_certificate_links_inv_fk` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_certificate_links`
--

LOCK TABLES `up_users_certificate_links` WRITE;
/*!40000 ALTER TABLE `up_users_certificate_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_certificate_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_project_links`
--

DROP TABLE IF EXISTS `up_users_project_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_project_links` (
  `user_id` int unsigned DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  KEY `up_users_project_links_fk` (`user_id`),
  KEY `up_users_project_links_inv_fk` (`project_id`),
  CONSTRAINT `up_users_project_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_project_links_inv_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_project_links`
--

LOCK TABLES `up_users_project_links` WRITE;
/*!40000 ALTER TABLE `up_users_project_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_project_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
INSERT INTO `up_users_role_links` VALUES (74,6);
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-03  9:44:42
