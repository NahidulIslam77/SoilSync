-- MySQL dump 10.13  Distrib 9.7.0, for Linux (aarch64)
--
-- Host: localhost    Database: soilsync
-- ------------------------------------------------------
-- Server version	9.7.0

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


--
-- Table structure for table `activity_schedule`
--

DROP TABLE IF EXISTS `activity_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `farmer_crop_id` int DEFAULT NULL,
  `day_number` int NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weather_note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','done','skipped') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `completed_at` datetime DEFAULT NULL,
  `completion_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `farmer_crop_id` (`farmer_crop_id`),
  CONSTRAINT `activity_schedule_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `activity_schedule_ibfk_2` FOREIGN KEY (`farmer_crop_id`) REFERENCES `farmer_crops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_schedule`
--

LOCK TABLES `activity_schedule` WRITE;
/*!40000 ALTER TABLE `activity_schedule` DISABLE KEYS */;
INSERT INTO `activity_schedule` VALUES (2,2,5,10,'seed rupon kora',NULL,'pending',NULL,NULL),(3,2,6,7,'Apply fertilizer',NULL,'pending',NULL,NULL),(4,2,6,15,'Pest monitoring',NULL,'pending',NULL,NULL),(5,2,6,25,'Irrigation check',NULL,'pending',NULL,NULL),(6,2,6,40,'Weeding',NULL,'pending',NULL,NULL),(7,2,7,7,'Apply fertilizer','','done','2026-05-20 17:54:22','hbjkj'),(8,2,7,15,'Pest monitoring','','pending',NULL,NULL),(9,2,7,25,'Irrigation check','','pending',NULL,NULL),(10,2,7,40,'Weeding','','pending',NULL,NULL),(11,2,7,21,'Pest monitoring','','pending',NULL,NULL),(12,2,7,30,'Irrigation check','','pending',NULL,NULL),(13,2,7,45,'Disease inspection','','pending',NULL,NULL),(14,2,3,10,'Blight monitoring','','pending',NULL,NULL),(15,2,3,20,'Fungicide spray','','pending',NULL,NULL),(16,2,7,5,'Soil leveling & water management check','','skipped','2026-05-20 17:38:39','heavy rain'),(17,2,2,7,'Irrigation check','','pending',NULL,NULL),(18,2,2,15,'Apply fertilizer (NPK)','','pending',NULL,NULL),(19,2,8,7,'Apply fertilizer','','skipped','2026-06-07 16:49:29','fdcsxsdfghj'),(20,2,8,15,'Pest monitoring','','skipped','2026-06-10 09:17:02','hgbds'),(21,2,8,25,'Irrigation check','','pending',NULL,NULL),(22,2,8,40,'Weeding','','pending',NULL,NULL),(23,2,7,14,'First weeding','','skipped','2026-06-07 00:16:02','heavy rain'),(24,2,8,21,'Apply nitrogen fertilizer','','skipped','2026-06-07 21:28:50',''),(25,8,9,7,'Apply fertilizer','','pending',NULL,NULL),(26,8,9,15,'Pest monitoring','⚠ Humidity elevated (77%). Increased disease risk — monitor closely.','pending',NULL,NULL),(27,8,9,25,'Irrigation check','🌦 Moderate rain likely. Check moisture before irrigating.','pending',NULL,NULL),(28,8,9,40,'Weeding','','pending',NULL,NULL),(29,8,10,7,'Apply fertilizer','','pending',NULL,NULL),(30,8,10,15,'Pest monitoring','⚠ Humidity elevated (77%). Increased disease risk — monitor closely.','pending',NULL,NULL),(31,8,10,25,'Irrigation check','🌦 Moderate rain likely. Check moisture before irrigating.','pending',NULL,NULL),(32,8,10,40,'Weeding','','pending',NULL,NULL),(33,8,11,7,'Apply fertilizer','','pending',NULL,NULL),(34,8,11,15,'Pest monitoring','','pending',NULL,NULL),(35,8,11,25,'Irrigation check','','pending',NULL,NULL),(36,8,11,40,'Weeding','','pending',NULL,NULL),(37,8,11,5,'Soil leveling & water management check','','pending',NULL,NULL),(38,8,12,7,'Apply fertilizer',NULL,'pending',NULL,NULL),(39,8,12,15,'Pest monitoring',NULL,'pending',NULL,NULL),(40,8,12,25,'Irrigation check',NULL,'pending',NULL,NULL),(41,8,12,40,'Weeding',NULL,'pending',NULL,NULL),(42,8,13,7,'Apply fertilizer',NULL,'pending',NULL,NULL),(43,8,13,15,'Pest monitoring',NULL,'pending',NULL,NULL),(44,8,13,25,'Irrigation check',NULL,'pending',NULL,NULL),(45,8,13,40,'Weeding',NULL,'pending',NULL,NULL),(46,8,14,7,'Apply fertilizer',NULL,'pending',NULL,NULL),(47,8,14,15,'Pest monitoring',NULL,'pending',NULL,NULL),(48,8,14,25,'Irrigation check',NULL,'pending',NULL,NULL),(49,8,14,40,'Weeding',NULL,'pending',NULL,NULL),(50,8,15,7,'Apply fertilizer','','pending',NULL,NULL),(51,8,15,15,'Pest monitoring','','pending',NULL,NULL),(52,8,15,25,'Irrigation check','','pending',NULL,NULL),(53,8,15,40,'Weeding','','pending',NULL,NULL),(54,8,16,7,'Apply fertilizer','','pending',NULL,NULL),(55,8,16,15,'Pest monitoring','','pending',NULL,NULL),(56,8,16,25,'Irrigation check','','pending',NULL,NULL),(57,8,16,40,'Weeding','','pending',NULL,NULL);
/*!40000 ALTER TABLE `activity_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advisory_feed`
--

DROP TABLE IF EXISTS `advisory_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisory_feed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `category` enum('weather','pest','market','general') COLLATE utf8mb4_unicode_ci DEFAULT 'general',
  `location_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_urgent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisory_feed`
--

LOCK TABLES `advisory_feed` WRITE;
/*!40000 ALTER TABLE `advisory_feed` DISABLE KEYS */;
INSERT INTO `advisory_feed` VALUES (1,'Heavy Rain Alert Bangladesh','Next 48 hours heavy rainfall expected in most regions. Avoid pesticide spraying and ensure drainage.','weather',NULL,'2026-05-11 18:27:02',0),(2,'Rice Market Price Rising','Rice price increasing due to supply shortage. Farmers may get better price this week.','market',NULL,'2026-05-11 18:27:02',0),(3,'Dhaka Pest Alert: Brown Plant Hopper','High risk of brown plant hopper in rice fields. Use recommended pesticide and monitor daily.','pest',1,'2026-05-11 18:27:02',0),(4,'Dhaka Irrigation Advice','Maintain regular irrigation due to high temperature conditions.','weather',1,'2026-05-11 18:27:02',0),(5,'Chittagong Heavy Rain Advisory','Possible flooding in lowland rice fields. Harvest early if mature.','weather',2,'2026-05-11 18:27:02',0),(6,'Rajshahi Wheat Disease Risk','High humidity may cause leaf rust in wheat fields.','pest',3,'2026-05-11 18:27:02',0),(7,'Shrimp Farming Advisory Khulna','Maintain salinity balance in shrimp ponds due to temperature change.','general',4,'2026-05-11 18:27:02',0),(8,'Sylhet Tea Garden Moisture Alert','High rainfall expected. Avoid fertilizer application for next 3 days.','weather',5,'2026-05-11 18:27:02',0),(9,'Barisal Flood Risk Advisory','River water level rising. Protect young crops from water logging.','weather',6,'2026-05-11 18:27:02',0),(10,'Rangpur Potato Disease Alert','Late blight risk increasing due to cold night temperature.','pest',7,'2026-05-11 18:27:02',0),(11,'Mymensingh Maize Growth Advice','Good weather for maize growth. Apply nitrogen fertilizer this week.','general',8,'2026-05-11 18:27:02',0),(17,'HEAVY RAIN','weather','weather',1,'2026-06-11 07:20:26',1),(18,'PEST OUTBREAK','Rice pests','pest',14,'2026-06-11 07:21:16',1),(19,'HEAVY RAINFALL','Don\\\'t irrigate','weather',27,'2026-06-11 07:22:02',1);
/*!40000 ALTER TABLE `advisory_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `expert_id` int DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_question_answer` (`question_id`),
  UNIQUE KEY `question_id` (`question_id`),
  KEY `expert_id` (`expert_id`),
  FULLTEXT KEY `ft_answer` (`answer`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`expert_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,8,2,'hgkj','2026-06-11 07:21:28');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banned_pesticides`
--

DROP TABLE IF EXISTS `banned_pesticides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banned_pesticides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned_pesticides`
--

LOCK TABLES `banned_pesticides` WRITE;
/*!40000 ALTER TABLE `banned_pesticides` DISABLE KEYS */;
INSERT INTO `banned_pesticides` VALUES (1,'DDT','Highly toxic and environmentally harmful'),(2,'Endrin','Banned due to health hazards'),(3,'Heptachlor','Dangerous for soil and water');
/*!40000 ALTER TABLE `banned_pesticides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop_calendar`
--

DROP TABLE IF EXISTS `crop_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crop_id` int NOT NULL,
  `season` enum('Monsoon','Winter','Summer','Spring','Year-round') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitability_score` int DEFAULT '100',
  `reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  CONSTRAINT `crop_calendar_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_calendar`
--

LOCK TABLES `crop_calendar` WRITE;
/*!40000 ALTER TABLE `crop_calendar` DISABLE KEYS */;
INSERT INTO `crop_calendar` VALUES (1,1,'Monsoon',100,'Best season for rice cultivation'),(2,1,'Winter',20,'Too cold and dry for rice'),(3,1,'Summer',40,'Needs heavy irrigation'),(4,2,'Winter',100,'Ideal temperature for wheat'),(5,2,'Monsoon',25,'Excess rainfall damages wheat'),(6,2,'Summer',15,'Too hot for wheat'),(7,3,'Winter',100,'Perfect season for potato'),(8,3,'Monsoon',30,'High disease risk'),(9,3,'Summer',20,'Too much heat'),(10,4,'Monsoon',100,'Excellent humidity for jute'),(11,4,'Winter',10,'Not suitable'),(12,4,'Summer',70,'Possible with irrigation'),(13,5,'Winter',100,'Best flowering season'),(14,5,'Monsoon',15,'Too wet'),(15,5,'Summer',20,'Too hot'),(16,6,'Summer',100,'Best warm season crop'),(17,6,'Monsoon',75,'Can grow with drainage'),(18,6,'Winter',40,'Slow growth'),(19,7,'Winter',95,'Cool weather preferred'),(20,7,'Summer',40,'Needs irrigation'),(21,7,'Monsoon',20,'Rot risk'),(22,8,'Winter',100,'Best yield season'),(23,8,'Summer',45,'Heat stress possible'),(24,8,'Monsoon',25,'Fungal disease risk'),(25,9,'Year-round',90,'Can grow throughout year'),(26,10,'Monsoon',80,'Good rainfall support'),(27,10,'Winter',75,'Good dry season production'),(28,10,'Summer',65,'Needs watering');
/*!40000 ALTER TABLE `crop_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop_diseases`
--

DROP TABLE IF EXISTS `crop_diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_diseases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crop_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  CONSTRAINT `crop_diseases_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_diseases`
--

LOCK TABLES `crop_diseases` WRITE;
/*!40000 ALTER TABLE `crop_diseases` DISABLE KEYS */;
INSERT INTO `crop_diseases` VALUES (1,1,'Blast Disease','Diamond-shaped lesions on leaves; whitish or grayish center'),(2,1,'Bacterial Leaf Blight','Water-soaked lesions turning yellow; wilting'),(3,1,'Sheath Blight','Oval or irregular lesions on leaf sheath'),(4,2,'Rust','Orange-brown pustules on leaves'),(5,3,'Late Blight','Dark brown lesions on leaves; white mold'),(6,3,'Early Blight','Concentric ring lesions; yellowing'),(7,8,'Tomato Mosaic Virus','Mottled yellowing; stunted growth'),(8,9,'Bacterial Wilt','Sudden wilting; brown discoloration of stem');
/*!40000 ALTER TABLE `crop_diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crop_rotation_rules`
--

DROP TABLE IF EXISTS `crop_rotation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop_rotation_rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crop_id` int NOT NULL COMMENT 'The crop that was just harvested (FK → crops.id)',
  `next_crop_id` int NOT NULL COMMENT 'The candidate next crop (FK → crops.id)',
  `relation` enum('good','avoid') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'good = recommended, avoid = disease risk',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Why this rotation is good or bad',
  `icon` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '?' COMMENT 'Emoji icon for the previous crop',
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  KEY `next_crop_id` (`next_crop_id`),
  CONSTRAINT `crr_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `crr_next_crop_fk` FOREIGN KEY (`next_crop_id`) REFERENCES `crops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop_rotation_rules`
--

LOCK TABLES `crop_rotation_rules` WRITE;
/*!40000 ALTER TABLE `crop_rotation_rules` DISABLE KEYS */;
INSERT INTO `crop_rotation_rules` VALUES (1,1,5,'good','Rice leaves waterlogged soil. Mustard is a natural biofumigant and restores aeration after paddy.','🌾'),(2,1,2,'good','Rice leaves waterlogged soil. Wheat thrives in the drained dry season field after rice harvest.','🌾'),(3,1,3,'good','Rice leaves waterlogged soil. Potato benefits from the residual moisture and broken soil structure.','🌾'),(4,1,7,'good','Rice leaves waterlogged soil. Onion prefers well-drained conditions — ideal after rice drainage.','🌾'),(5,1,10,'good','Rice leaves waterlogged soil. Chili grows well in the season following rice with good drainage.','🌾'),(6,1,1,'avoid','Continuous rice depletes nitrogen, waterlogging intensifies, and blast disease accumulates in soil.','🌾'),(7,1,4,'avoid','Both rice and jute prefer waterlogged conditions — rotating between them does not break disease cycles.','🌾'),(8,2,1,'good','Wheat depletes phosphorus and can carry rust. Rice restores moisture balance and breaks the disease cycle.','🌿'),(9,2,6,'good','Wheat depletes phosphorus. Maize is a different family and helps restore organic matter.','🌿'),(10,2,3,'good','Wheat depletes phosphorus. Potato is a root crop from a different family — ideal rotation choice.','🌿'),(11,2,8,'good','Wheat depletes phosphorus. Tomato benefits from the broken soil structure left after wheat harvest.','🌿'),(12,2,9,'good','Wheat depletes phosphorus. Brinjal follows well in the warm season after winter wheat.','🌿'),(13,2,2,'avoid','Repeating wheat accumulates rust disease spores and severely depletes phosphorus.','🌿'),(14,3,1,'good','Potato is a heavy feeder. Rice from a completely different family breaks the nightshade disease cycle.','🥔'),(15,3,2,'good','Potato is a heavy feeder. Wheat is a cereal — totally different family, restores soil balance.','🥔'),(16,3,6,'good','Potato is a heavy feeder. Maize is a cereal that helps restore nitrogen after heavy potato feeding.','🥔'),(17,3,7,'good','Potato is a heavy feeder. Onion suppresses soil fungi left by potato — excellent rotation.','🥔'),(18,3,5,'good','Potato is a heavy feeder. Mustard biofumigates soil and breaks soilborne pathogen cycles from potato.','🥔'),(19,3,3,'avoid','Continuous potato causes Late Blight accumulation and severe soil nutrient depletion.','🥔'),(20,3,8,'avoid','Potato and Tomato share Late Blight (Phytophthora) — planting one after the other spreads the disease.','🥔'),(21,3,9,'avoid','Potato and Brinjal are both nightshades — rotating between them does not break the disease cycle.','🥔'),(22,3,10,'avoid','Potato and Chili share Phytophthora blight — avoid planting chili after potato.','🥔'),(23,4,1,'good','Jute enriches soil with organic matter from retting. Rice capitalises on the improved soil structure.','🌿'),(24,4,2,'good','Jute enriches soil with organic matter. Wheat benefits in the dry season after jute.','🌿'),(25,4,5,'good','Jute enriches soil with organic matter. Mustard grows well in the improved post-jute soil.','🌿'),(26,4,3,'good','Jute enriches soil with organic matter. Potato thrives in the well-structured post-jute field.','🌿'),(27,4,4,'avoid','Continuous jute causes stem rot accumulation and depletes specific soil micronutrients.','🌿'),(28,5,1,'good','Mustard is a natural biofumigant that suppresses soil-borne pathogens. Rice benefits greatly.','🌼'),(29,5,2,'good','Mustard is a natural biofumigant. Wheat follows well in the pathogen-suppressed soil.','🌼'),(30,5,6,'good','Mustard is a natural biofumigant. Maize grows vigorously in cleansed post-mustard soil.','🌼'),(31,5,7,'good','Mustard is a natural biofumigant. Onion benefits from reduced fungal load in soil.','🌼'),(32,5,3,'good','Mustard is a natural biofumigant. Potato has lower blight risk following mustard biofumigation.','🌼'),(33,5,5,'avoid','Continuous mustard causes clubroot and reduces biofumigant effectiveness over time.','🌼'),(34,5,10,'avoid','Mustard and Chili can share Alternaria blight — rotating between them spreads the disease.','🌼'),(35,6,2,'good','Maize is a heavy nitrogen consumer. Wheat restores balance and is from a compatible cereal family.','🌽'),(36,6,3,'good','Maize is a heavy nitrogen consumer. Potato thrives in the broken loose soil after maize harvest.','🌽'),(37,6,5,'good','Maize is a heavy nitrogen consumer. Mustard biofumigates and restores nutrients after maize.','🌽'),(38,6,7,'good','Maize is a heavy nitrogen consumer. Onion is a light feeder — ideal to follow the heavy maize crop.','🌽'),(39,6,8,'good','Maize is a heavy nitrogen consumer. Tomato follows well in warm season after maize harvest.','🌽'),(40,6,6,'avoid','Continuous maize severely depletes nitrogen and accumulates stalk rot and corn borer populations.','🌽'),(41,6,1,'avoid','Both maize and rice are heavy feeders — rotating between them does not restore nitrogen.','🌽'),(42,7,1,'good','Onion suppresses many soil fungi and leaves soil well-drained. Rice benefits from the cleansed field.','🧅'),(43,7,6,'good','Onion suppresses many soil fungi. Maize grows vigorously in the fungal-suppressed post-onion soil.','🧅'),(44,7,8,'good','Onion suppresses many soil fungi. Tomato benefits from reduced Fusarium levels after onion.','🧅'),(45,7,9,'good','Onion suppresses many soil fungi. Brinjal follows well in the well-drained post-onion field.','🧅'),(46,7,10,'good','Onion suppresses many soil fungi. Chili benefits from the pathogen-suppressed post-onion soil.','🧅'),(47,7,7,'avoid','Continuous onion causes pink root disease and Fusarium basal rot accumulation.','🧅'),(48,8,1,'good','Tomato shares Bacterial Wilt with nightshades. Rice completely breaks the nightshade disease cycle.','🍅'),(49,8,2,'good','Tomato shares Bacterial Wilt with nightshades. Wheat is a safe cereal rotation after tomato.','🍅'),(50,8,6,'good','Tomato shares Bacterial Wilt with nightshades. Maize is from a different family — safe rotation.','🍅'),(51,8,7,'good','Tomato shares Bacterial Wilt with nightshades. Onion suppresses wilt bacteria in soil.','🍅'),(52,8,5,'good','Tomato shares Bacterial Wilt with nightshades. Mustard biofumigation reduces wilt pathogen load.','🍅'),(53,8,8,'avoid','Continuous tomato causes rapid Bacterial Wilt and Mosaic Virus buildup in soil.','🍅'),(54,8,3,'avoid','Tomato and Potato share Late Blight — planting one after the other guarantees disease spread.','🍅'),(55,8,9,'avoid','Tomato and Brinjal are both nightshades — rotating between them does not break the disease cycle.','🍅'),(56,8,10,'avoid','Tomato and Chili share Phytophthora blight and Mosaic Virus — avoid this rotation.','🍅'),(57,9,1,'good','Brinjal accumulates stem-rot and wilt pathogens. Rice completely breaks the nightshade cycle.','🫆'),(58,9,2,'good','Brinjal accumulates stem-rot and wilt pathogens. Wheat is a safe cereal rotation.','🫆'),(59,9,6,'good','Brinjal accumulates stem-rot and wilt pathogens. Maize is from a different family — safe.','🫆'),(60,9,7,'good','Brinjal accumulates stem-rot and wilt pathogens. Onion suppresses wilt bacteria in soil.','🫆'),(61,9,5,'good','Brinjal accumulates stem-rot and wilt pathogens. Mustard biofumigation reduces pathogen load.','🫆'),(62,9,9,'avoid','Continuous brinjal causes rapid stem-rot and Bacterial Wilt accumulation in soil.','🫆'),(63,9,8,'avoid','Brinjal and Tomato are both nightshades — rotating between them spreads Bacterial Wilt.','🫆'),(64,9,3,'avoid','Brinjal and Potato share Late Blight — avoid this rotation.','🫆'),(65,9,10,'avoid','Brinjal and Chili share Phytophthora blight — avoid this nightshade-to-nightshade rotation.','🫆'),(66,10,1,'good','Chili shares Phytophthora blight with nightshades. Rice completely breaks the disease cycle.','🌶️'),(67,10,2,'good','Chili shares Phytophthora blight with nightshades. Wheat is a completely safe cereal rotation.','🌶️'),(68,10,6,'good','Chili shares Phytophthora blight with nightshades. Maize is from a different family — safe rotation.','🌶️'),(69,10,7,'good','Chili shares Phytophthora blight with nightshades. Onion suppresses blight spores in soil.','🌶️'),(70,10,5,'good','Chili shares Phytophthora blight with nightshades. Mustard biofumigation cleanses the soil effectively.','🌶️'),(71,10,10,'avoid','Continuous chili causes rapid Phytophthora blight and anthracnose accumulation in soil.','🌶️'),(72,10,8,'avoid','Chili and Tomato share Phytophthora blight and Mosaic Virus — avoid this rotation.','🌶️'),(73,10,3,'avoid','Chili and Potato share Phytophthora blight — avoid planting chili after potato.','🌶️'),(74,10,9,'avoid','Chili and Brinjal share Phytophthora blight — avoid this nightshade-to-nightshade rotation.','🌶️');
/*!40000 ALTER TABLE `crop_rotation_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crops`
--

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;
INSERT INTO `crops` VALUES (1,'Rice','Staple grain crop of Bangladesh'),(2,'Wheat','Winter cereal crop'),(3,'Potato','Root vegetable crop'),(4,'Jute','Golden fiber of Bangladesh'),(5,'Mustard','Oilseed crop'),(6,'Maize','Cereal grain'),(7,'Onion','Vegetable/spice crop'),(8,'Tomato','Vegetable crop'),(9,'Brinjal','Popular vegetable'),(10,'Chili','Spice crop');
/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dae_offices`
--

DROP TABLE IF EXISTS `dae_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dae_offices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `upazila` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Sun–Thu 9am–5pm',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_location` (`location_id`),
  CONSTRAINT `fk_dae_location` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dae_offices`
--

LOCK TABLES `dae_offices` WRITE;
/*!40000 ALTER TABLE `dae_offices` DISABLE KEYS */;
INSERT INTO `dae_offices` VALUES (1,1,'Savar','DAE Upazila Office, Savar Bazar, Dhaka-1340','02-7789142','Sun–Thu 9am–5pm',1),(2,20,'Tangail Sadar','DAE Upazila Office, Deputy Commissioner Road, Tangail','0921-63018','Sun–Thu 9am–5pm',1),(3,14,'Shibalaya','DAE Office, Shibalaya Upazila Complex, Manikganj','06029-56214','Sun–Thu 9am–5pm',1),(4,17,'Belabo','DAE Office, Belabo Upazila, Narsingdi','06229-75301','Sun–Thu 9am–5pm',1),(5,9,'Faridpur Sadar','DAE District Office, Circuit House Road, Faridpur','0631-63425','Sun–Thu 9am–5pm',1),(6,24,'Comilla Sadar','DAE Upazila Office, Kandirpar, Comilla-3500','081-68491','Sun–Thu 9am–5pm',1),(7,25,'Teknaf','DAE Office, Teknaf Upazila, Cox\'s Bazar','03421-75612','Sun–Thu 9am–5pm',1),(8,22,'Brahmanbaria Sadar','DAE Office, Upazila Complex, Brahmanbaria','0851-62014','Sun–Thu 9am–5pm',1),(9,29,'Begumganj','DAE Office, Begumganj Upazila, Noakhali','0321-61803','Sun–Thu 9am–5pm',1),(10,23,'Matlab Uttar','DAE Office, Matlab Uttar, Chandpur','0844-55201','Sun–Thu 9am–5pm',1),(11,3,'Rajshahi Sadar','DAE District Office, Shaheb Bazar, Rajshahi','0721-772015','Sun–Thu 9am–5pm',1),(12,31,'Shibganj','DAE Upazila Office, Shibganj, Bogura','05123-56301','Sun–Thu 9am–5pm',1),(13,35,'Baraigram','DAE Office, Baraigram Upazila, Natore','07709-56104','Sun–Thu 9am–5pm',1),(14,34,'Mohadevpur','DAE Office, Mohadevpur, Naogaon','07427-56013','Sun–Thu 9am–5pm',1),(15,32,'Shibganj','DAE Office, Shibganj Upazila, Chapainawabganj','07822-56321','Sun–Thu 9am–5pm',1),(16,4,'Dumuria','DAE Office, Dumuria Upazila, Khulna','041-763501','Sun–Thu 9am–5pm',1),(17,40,'Chaugachha','DAE Office, Chaugachha Upazila, Jashore','0421-68203','Sun–Thu 9am–5pm',1),(18,41,'Shailkupa','DAE Office, Shailkupa Upazila, Jhenaidah','04524-56102','Sun–Thu 9am–5pm',1),(19,46,'Assasuni','DAE Office, Assasuni Upazila, Satkhira','0471-63104','Sun–Thu 9am–5pm',1),(20,54,'Nesarabad','DAE Office, Nesarabad (Swarupkathi), Pirojpur','04628-56012','Sun–Thu 9am–5pm',1),(21,6,'Barisal Sadar','DAE District Office, Band Road, Barisal','0431-64312','Sun–Thu 9am–5pm',1),(22,51,'Bhola Sadar','DAE Office, Upazila Complex, Bhola','0491-62015','Sun–Thu 9am–5pm',1),(23,53,'Bauphal','DAE Office, Bauphal Upazila, Patuakhali','04427-56203','Sun–Thu 9am–5pm',1),(24,5,'Sylhet Sadar','DAE District Office, Zindabazar, Sylhet','0821-716034','Sun–Thu 9am–5pm',1),(25,48,'Juri','DAE Office, Juri Upazila, Moulvibazar','08626-56401','Sun–Thu 9am–5pm',1),(26,47,'Chunarughat','DAE Office, Chunarughat, Habiganj','08323-56012','Sun–Thu 9am–5pm',1),(27,7,'Rangpur Sadar','DAE District Office, Station Road, Rangpur','0521-66203','Sun–Thu 9am–5pm',1),(28,60,'Panchagarh Sadar','DAE Office, Upazila Complex, Panchagarh','05682-56104','Sun–Thu 9am–5pm',1),(29,56,'Sadullapur','DAE Office, Sadullapur Upazila, Gaibandha','05424-56213','Sun–Thu 9am–5pm',1),(30,62,'Islampur','DAE Office, Islampur Upazila, Jamalpur','09822-56302','Sun–Thu 9am–5pm',1);
/*!40000 ALTER TABLE `dae_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmer_crops`
--

DROP TABLE IF EXISTS `farmer_crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmer_crops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `crop_id` int NOT NULL,
  `field_id` int DEFAULT NULL,
  `seed_id` int DEFAULT NULL,
  `planted_date` date NOT NULL,
  `expected_harvest` date DEFAULT NULL,
  `status` enum('growing','harvested','failed') COLLATE utf8mb4_unicode_ci DEFAULT 'growing',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `crop_id` (`crop_id`),
  KEY `field_id` (`field_id`),
  KEY `fk_farmer_seed` (`seed_id`),
  CONSTRAINT `farmer_crops_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `farmer_crops_ibfk_2` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`),
  CONSTRAINT `farmer_crops_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`),
  CONSTRAINT `fk_farmer_seed` FOREIGN KEY (`seed_id`) REFERENCES `seeds` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer_crops`
--

LOCK TABLES `farmer_crops` WRITE;
/*!40000 ALTER TABLE `farmer_crops` DISABLE KEYS */;
INSERT INTO `farmer_crops` VALUES (10,8,7,9,34,'2026-06-11','2026-09-24','growing','2026-06-11 04:03:05'),(11,8,1,8,12,'2026-06-09','2026-10-27','growing','2026-06-11 04:03:56'),(12,8,8,8,37,'2026-06-11','2026-08-25','growing','2026-06-11 04:05:59'),(13,8,5,11,28,'2026-06-07','2026-08-26','growing','2026-06-11 04:06:24'),(14,8,4,10,25,'2026-06-11','2026-10-09','growing','2026-06-11 05:17:54'),(15,8,3,9,21,'2026-06-11','2026-09-14','harvested','2026-06-11 05:27:43'),(16,8,3,13,7,'2026-06-11','2026-09-09','failed','2026-06-11 05:28:27');
/*!40000 ALTER TABLE `farmer_crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `soil_type` enum('Sandy','Clay','Loamy','Silt','Peaty','Chalky') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `fields_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fields_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (8,8,'A',3.00,'Peaty',25,'2026-06-11 04:01:57'),(9,8,'B',2.00,'Sandy',26,'2026-06-11 04:02:13'),(10,8,'C',1.50,'Silt',25,'2026-06-11 04:02:30'),(11,8,'D',2.50,'Clay',1,'2026-06-11 04:02:49'),(12,8,'E#',5.00,'Loamy',25,'2026-06-11 05:21:35'),(13,8,'F',2.00,'Peaty',25,'2026-06-11 05:23:17');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irrigation_logs`
--

DROP TABLE IF EXISTS `irrigation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irrigation_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `field_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `suggestion` enum('ON','OFF','MONITOR') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rain_probability` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `field_id` (`field_id`),
  CONSTRAINT `irrigation_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `irrigation_logs_ibfk_2` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irrigation_logs`
--

LOCK TABLES `irrigation_logs` WRITE;
/*!40000 ALTER TABLE `irrigation_logs` DISABLE KEYS */;
INSERT INTO `irrigation_logs` VALUES (13,8,9,'2026-06-11','MONITOR',35,'2026-06-11 04:20:59'),(14,8,10,'2026-06-03','MONITOR',35,'2026-06-11 04:21:11'),(15,8,10,'2026-06-11','MONITOR',35,'2026-06-11 05:34:48'),(16,8,10,'2026-06-11','MONITOR',35,'2026-06-11 05:37:56');
/*!40000 ALTER TABLE `irrigation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_applications`
--

DROP TABLE IF EXISTS `loan_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `amount_needed` decimal(12,2) NOT NULL,
  `land_acres` decimal(6,2) DEFAULT NULL,
  `crop_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `status` enum('saved','submitted','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT 'saved',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `loan_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `loan_applications_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `loan_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_applications`
--

LOCK TABLES `loan_applications` WRITE;
/*!40000 ALTER TABLE `loan_applications` DISABLE KEYS */;
INSERT INTO `loan_applications` VALUES (1,2,3,20000.00,3.00,'556','fddd','saved',NULL,'2026-06-06 17:48:04'),(2,8,4,120000.00,3.00,'Rice','','saved',NULL,'2026-06-11 04:26:50');
/*!40000 ALTER TABLE `loan_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_products`
--

DROP TABLE IF EXISTS `loan_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('crop','livestock','irrigation','equipment','general','emergency') COLLATE utf8mb4_unicode_ci DEFAULT 'crop',
  `min_amount` decimal(12,2) DEFAULT '10000.00',
  `max_amount` decimal(12,2) DEFAULT '500000.00',
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `interest_type` enum('flat','reducing','subsidised') COLLATE utf8mb4_unicode_ci DEFAULT 'reducing',
  `duration_min_months` smallint DEFAULT '6',
  `duration_max_months` smallint DEFAULT '60',
  `repayment_type` enum('monthly','quarterly','seasonal','lump-sum') COLLATE utf8mb4_unicode_ci DEFAULT 'monthly',
  `min_land_acres` decimal(6,2) DEFAULT NULL,
  `eligible_crops` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collateral_required` tinyint(1) DEFAULT '0',
  `guarantor_required` tinyint(1) DEFAULT '0',
  `nid_required` tinyint(1) DEFAULT '1',
  `land_deed_required` tinyint(1) DEFAULT '0',
  `bank_statement_required` tinyint(1) DEFAULT '0',
  `farmers_card_required` tinyint(1) DEFAULT '0',
  `photo_required` tinyint(1) DEFAULT '1',
  `other_documents` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `eligibility_notes` text COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `loan_products_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `loan_providers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_products`
--

LOCK TABLES `loan_products` WRITE;
/*!40000 ALTER TABLE `loan_products` DISABLE KEYS */;
INSERT INTO `loan_products` VALUES (1,1,'Krishi Sarovar Crop Loan','crop',10000.00,300000.00,4.00,'subsidised',6,18,'seasonal',0.25,'Rice,Wheat,Jute,Maize,Potato,Vegetables',0,0,1,1,0,0,1,NULL,'Subsidised seasonal crop loan for small and marginal farmers with flexible seasonal repayment.','Must own or lease at least 0.25 acres. NID and land deed required.',1,1,'2026-06-06 17:39:00'),(2,1,'Agricultural Equipment Loan','equipment',50000.00,1000000.00,7.00,'reducing',12,60,'monthly',0.50,NULL,1,0,1,1,0,0,1,NULL,'For purchase of power tillers, irrigation pumps, tractors and other farm equipment.','Collateral required. Land deed and bank statement needed. Minimum 0.5 acres land ownership.',0,1,'2026-06-06 17:39:00'),(3,1,'Emergency Crop Disaster Loan','emergency',5000.00,100000.00,2.00,'subsidised',3,12,'seasonal',0.00,NULL,0,0,1,0,0,1,1,NULL,'Fast-disbursement emergency loan for farmers affected by floods, cyclones, or crop failure.','Requires Farmers Card or official disaster declaration from local UP office.',1,1,'2026-06-06 17:39:00'),(4,2,'RAKUB Crop Production Loan','crop',15000.00,500000.00,5.00,'reducing',6,24,'seasonal',0.33,'Rice,Wheat,Mango,Litchi,Sugarcane',0,0,1,1,0,0,1,NULL,'Crop production loan for farmers in Rajshahi, Chapai, Bogura, and northern districts.','Available only in RAKUB service area (northern Bangladesh). Land deed required.',0,1,'2026-06-06 17:39:00'),(5,2,'Fisheries & Livestock Loan','livestock',20000.00,400000.00,6.00,'reducing',12,36,'monthly',0.00,NULL,1,0,1,0,0,0,1,NULL,'Loan for fish farming, poultry, dairy, and goat rearing projects.','Project plan required. Guarantor needed for amounts over BDT 1 lakh.',0,1,'2026-06-06 17:39:00'),(6,3,'BRAC Microfinance Agricultural Loan','crop',5000.00,150000.00,24.00,'flat',6,24,'monthly',0.00,'Rice,Vegetables,Poultry,Fishery',0,0,1,0,0,0,1,NULL,'Accessible micro-loan for smallholder farmers with minimal documentation. No land collateral required.','Must be a BRAC member. Group guarantee system. No land required.',1,1,'2026-06-06 17:39:00'),(7,3,'BRAC Poultry & Livestock Loan','livestock',8000.00,80000.00,22.00,'flat',6,18,'monthly',0.00,NULL,0,0,1,0,0,0,1,NULL,'Quick-disbursement loan for poultry, duck farming, goat rearing, and small dairy operations.','BRAC membership required. Group-based lending model.',0,1,'2026-06-06 17:39:00'),(8,4,'Grameen Krishi Loan','crop',3000.00,100000.00,20.00,'reducing',6,24,'monthly',0.00,NULL,0,0,1,0,0,0,1,NULL,'Classic Grameen microfinance loan for rural farmers. Weekly repayment model with group support.','Grameen Bank membership required. Group of 5 borrowers. Weekly centre meeting attendance.',0,1,'2026-06-06 17:39:00'),(9,5,'ASA General Agricultural Loan','general',5000.00,200000.00,22.00,'flat',6,24,'monthly',0.00,NULL,0,0,1,0,0,0,1,NULL,'Flexible agricultural loan for crop production, livestock, and small agri-businesses.','ASA membership required. Fast disbursement within 7 days.',0,1,'2026-06-06 17:39:00'),(10,6,'PKSF Livelihood Promotion Loan','general',10000.00,300000.00,10.00,'reducing',12,48,'monthly',0.00,NULL,0,0,1,0,0,0,1,NULL,'Government-backed livelihood loan through PKSF partner MFIs. Lower interest than commercial MFIs.','Available through PKSF partner organizations. Must be below poverty line or small farmer.',1,1,'2026-06-06 17:39:00');
/*!40000 ALTER TABLE `loan_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_providers`
--

DROP TABLE IF EXISTS `loan_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('bank','ngo','mfi','cooperative','government') COLLATE utf8mb4_unicode_ci DEFAULT 'bank',
  `logo_emoji` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '?',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_providers`
--

LOCK TABLES `loan_providers` WRITE;
/*!40000 ALTER TABLE `loan_providers` DISABLE KEYS */;
INSERT INTO `loan_providers` VALUES (1,'Bangladesh Krishi Bank','bank','🏛️','16151','https://www.krishibank.org.bd','State-owned bank dedicated to agricultural credit in Bangladesh.',1,'2026-06-06 17:39:00'),(2,'Rajshahi Krishi Unnayan Bank','bank','🌾','0721-775277','https://www.rakub.org.bd','Specialized agricultural development bank serving northern Bangladesh.',1,'2026-06-06 17:39:00'),(3,'BRAC','ngo','🤝','16345','https://www.brac.net','World largest NGO offering microfinance and agricultural loans to rural farmers.',1,'2026-06-06 17:39:00'),(4,'Grameen Bank','mfi','🏘️','09604-116116','https://www.grameen.com','Nobel Prize-winning microfinance institution focused on rural poor and small farmers.',1,'2026-06-06 17:39:00'),(5,'ASA Bangladesh','mfi','💼','02-9670672','https://www.asa.org.bd','One of the largest MFIs in Bangladesh offering farmer credit programs.',1,'2026-06-06 17:39:00'),(6,'PKSF (Partner MFI)','government','🏢','02-55007071','https://www.pksf-bd.org','Government apex body funding agricultural microfinance through partner organizations.',1,'2026-06-06 17:39:00');
/*!40000 ALTER TABLE `loan_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh',
  `division` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Bangladesh','Dhaka','Dhaka',23.8103000,90.4125000),(2,'Bangladesh','Chittagong','Chittagong',22.3569000,91.7832000),(3,'Bangladesh','Rajshahi','Rajshahi',24.3745000,88.6042000),(4,'Bangladesh','Khulna','Khulna',22.8456000,89.5403000),(5,'Bangladesh','Sylhet','Sylhet',24.8949000,91.8687000),(6,'Bangladesh','Barisal','Barisal',22.7010000,90.3535000),(7,'Bangladesh','Rangpur','Rangpur',25.7439000,89.2752000),(8,'Bangladesh','Mymensingh','Mymensingh',24.7471000,90.4203000),(9,'Bangladesh','Dhaka','Faridpur',23.6070000,89.8429000),(10,'Bangladesh','Dhaka','Gazipur',24.0023000,90.4264000),(11,'Bangladesh','Dhaka','Gopalganj',23.0051000,89.8266000),(12,'Bangladesh','Dhaka','Kishoreganj',24.4449000,90.7766000),(13,'Bangladesh','Dhaka','Madaripur',23.1641000,90.1897000),(14,'Bangladesh','Dhaka','Manikganj',23.8617000,90.0003000),(15,'Bangladesh','Dhaka','Munshiganj',23.5422000,90.5305000),(16,'Bangladesh','Dhaka','Narayanganj',23.6238000,90.5000000),(17,'Bangladesh','Dhaka','Narsingdi',23.9322000,90.7154000),(18,'Bangladesh','Dhaka','Rajbari',23.7574000,89.6445000),(19,'Bangladesh','Dhaka','Shariatpur',23.2423000,90.4348000),(20,'Bangladesh','Dhaka','Tangail',24.2513000,89.9167000),(21,'Bangladesh','Chittagong','Bandarban',22.1953000,92.2184000),(22,'Bangladesh','Chittagong','Brahmanbaria',23.9571000,91.1119000),(23,'Bangladesh','Chittagong','Chandpur',23.2333000,90.6710000),(24,'Bangladesh','Chittagong','Comilla',23.4607000,91.1809000),(25,'Bangladesh','Chittagong','Coxs Bazar',21.4272000,92.0058000),(26,'Bangladesh','Chittagong','Feni',23.0159000,91.3976000),(27,'Bangladesh','Chittagong','Khagrachhari',23.1193000,91.9847000),(28,'Bangladesh','Chittagong','Lakshmipur',22.9447000,90.8282000),(29,'Bangladesh','Chittagong','Noakhali',22.8696000,91.0995000),(30,'Bangladesh','Chittagong','Rangamati',22.7324000,92.2985000),(31,'Bangladesh','Rajshahi','Bogura',24.8510000,89.3697000),(32,'Bangladesh','Rajshahi','Chapainawabganj',24.5965000,88.2775000),(33,'Bangladesh','Rajshahi','Joypurhat',25.0968000,89.0227000),(34,'Bangladesh','Rajshahi','Naogaon',24.7936000,88.9318000),(35,'Bangladesh','Rajshahi','Natore',24.4206000,89.0003000),(36,'Bangladesh','Rajshahi','Pabna',24.0150000,89.2372000),(37,'Bangladesh','Rajshahi','Sirajganj',24.4534000,89.7007000),(38,'Bangladesh','Khulna','Bagerhat',22.6516000,89.7859000),(39,'Bangladesh','Khulna','Chuadanga',23.6402000,88.8418000),(40,'Bangladesh','Khulna','Jashore',23.1664000,89.2081000),(41,'Bangladesh','Khulna','Jhenaidah',23.5448000,89.1539000),(42,'Bangladesh','Khulna','Kushtia',23.9013000,89.1205000),(43,'Bangladesh','Khulna','Magura',23.4855000,89.4198000),(44,'Bangladesh','Khulna','Meherpur',23.7622000,88.6318000),(45,'Bangladesh','Khulna','Narail',23.1725000,89.5127000),(46,'Bangladesh','Khulna','Satkhira',22.7185000,89.0705000),(47,'Bangladesh','Sylhet','Habiganj',24.3749000,91.4155000),(48,'Bangladesh','Sylhet','Moulvibazar',24.4829000,91.7774000),(49,'Bangladesh','Sylhet','Sunamganj',25.0658000,91.3950000),(50,'Bangladesh','Barisal','Barguna',22.1592000,90.1260000),(51,'Bangladesh','Barisal','Bhola',22.6859000,90.6482000),(52,'Bangladesh','Barisal','Jhalokati',22.6406000,90.1987000),(53,'Bangladesh','Barisal','Patuakhali',22.3596000,90.3299000),(54,'Bangladesh','Barisal','Pirojpur',22.5791000,89.9759000),(55,'Bangladesh','Rangpur','Dinajpur',25.6279000,88.6332000),(56,'Bangladesh','Rangpur','Gaibandha',25.3288000,89.5281000),(57,'Bangladesh','Rangpur','Kurigram',25.8054000,89.6362000),(58,'Bangladesh','Rangpur','Lalmonirhat',25.9923000,89.2847000),(59,'Bangladesh','Rangpur','Nilphamari',25.9318000,88.8560000),(60,'Bangladesh','Rangpur','Panchagarh',26.3411000,88.5542000),(61,'Bangladesh','Rangpur','Thakurgaon',26.0337000,88.4617000),(62,'Bangladesh','Mymensingh','Jamalpur',24.9375000,89.9378000),(63,'Bangladesh','Mymensingh','Netrokona',24.8709000,90.7279000),(64,'Bangladesh','Mymensingh','Sherpur',25.0205000,90.0153000);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_prices`
--

DROP TABLE IF EXISTS `market_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crop_id` int NOT NULL,
  `location_id` int DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` enum('kg','quintal','ton') COLLATE utf8mb4_unicode_ci DEFAULT 'kg',
  `source` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `market_prices_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`),
  CONSTRAINT `market_prices_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_prices`
--

LOCK TABLES `market_prices` WRITE;
/*!40000 ALTER TABLE `market_prices` DISABLE KEYS */;
INSERT INTO `market_prices` VALUES (1,1,10,55.00,'kg','DAE Market Survey','2026-05-23'),(2,1,16,57.00,'kg','Wholesaler','2026-05-23'),(3,1,17,60.00,'kg','Local Market','2026-05-23'),(4,2,37,42.00,'kg','BADC','2026-05-23'),(5,2,31,40.00,'kg','Local Market','2026-05-23'),(6,2,20,45.00,'kg','Trader Report','2026-05-23'),(7,3,16,25.00,'kg','Cold Storage','2026-05-23'),(8,3,31,22.00,'kg','Farm Gate','2026-05-23'),(9,3,37,28.00,'kg','Wholesale','2026-05-23'),(10,7,10,85.00,'kg','Import Market','2026-05-23'),(11,7,16,90.00,'kg','Retail','2026-05-23'),(12,7,31,88.00,'kg','Trader','2026-05-23'),(13,8,17,65.00,'kg','Local Market','2026-05-23'),(14,8,16,70.00,'kg','Wholesale','2026-05-23'),(15,8,20,60.00,'kg','Farm Gate','2026-05-23'),(16,10,10,180.00,'kg','Spice Market','2026-05-23'),(17,10,31,170.00,'kg','Retail','2026-05-23'),(18,10,37,190.00,'kg','Trader','2026-05-23'),(19,1,1,72.00,'kg','DAM','2026-05-22'),(20,1,2,74.00,'kg','DAM','2026-05-21'),(21,1,3,70.00,'kg','DAM','2026-05-20'),(22,1,4,73.00,'kg','Market Survey','2026-05-19'),(23,1,5,75.00,'kg','DAM','2026-05-18'),(24,1,6,71.00,'kg','DAM','2026-05-17'),(25,1,7,69.00,'kg','Market Survey','2026-05-16'),(26,1,8,73.00,'kg','DAM','2026-05-20'),(27,2,1,58.00,'kg','DAM','2026-05-22'),(28,2,2,60.00,'kg','DAM','2026-05-21'),(29,2,3,57.00,'kg','DAM','2026-05-20'),(30,2,4,59.00,'kg','Market Survey','2026-05-19'),(31,2,5,61.00,'kg','DAM','2026-05-18'),(32,2,6,56.00,'kg','DAM','2026-05-17'),(33,2,7,55.00,'kg','Market Survey','2026-05-16'),(34,2,8,58.00,'kg','DAM','2026-05-20'),(35,3,1,28.00,'kg','DAM','2026-05-22'),(36,3,2,30.00,'kg','DAM','2026-05-21'),(37,3,3,27.00,'kg','DAM','2026-05-20'),(38,3,4,29.00,'kg','Market Survey','2026-05-19'),(39,3,5,31.00,'kg','DAM','2026-05-18'),(40,3,6,26.00,'kg','DAM','2026-05-17'),(41,3,7,25.00,'kg','Market Survey','2026-05-16'),(42,3,8,28.00,'kg','DAM','2026-05-21'),(43,7,1,65.00,'kg','DAM','2026-05-22'),(44,7,2,67.00,'kg','DAM','2026-05-21'),(45,7,3,63.00,'kg','DAM','2026-05-20'),(46,7,4,66.00,'kg','Market Survey','2026-05-19'),(47,7,5,68.00,'kg','DAM','2026-05-18'),(48,7,6,64.00,'kg','DAM','2026-05-17'),(49,7,7,62.00,'kg','Market Survey','2026-05-16'),(50,7,8,65.00,'kg','DAM','2026-05-20'),(51,8,1,120.00,'kg','DAM','2026-05-22'),(52,8,2,125.00,'kg','DAM','2026-05-21'),(53,8,3,118.00,'kg','DAM','2026-05-20'),(54,8,4,122.00,'kg','Market Survey','2026-05-19'),(55,8,5,127.00,'kg','DAM','2026-05-18'),(56,8,6,115.00,'kg','DAM','2026-05-17'),(57,8,7,110.00,'kg','Market Survey','2026-05-16'),(58,8,8,121.00,'kg','DAM','2026-05-20'),(59,10,6,40.00,'kg','DAE','2026-06-10'),(60,5,6,40.00,'kg','dae','2026-06-10'),(61,5,53,487.00,'kg','dae','2026-06-10'),(62,1,1,58.00,'kg','DAM','2026-06-10'),(63,1,2,55.00,'kg','DAM','2026-06-10'),(64,1,3,52.00,'kg','DAM','2026-06-10'),(65,1,4,54.00,'kg','DAM','2026-06-10'),(66,1,5,60.00,'kg','Local Market','2026-06-10'),(67,1,6,56.00,'kg','DAM','2026-06-10'),(68,1,7,51.00,'kg','DAM','2026-06-10'),(69,1,8,53.00,'kg','DAM','2026-06-10'),(70,2,1,45.00,'kg','Wholesaler','2026-06-10'),(71,2,3,42.00,'kg','BADC','2026-06-10'),(72,2,7,40.00,'kg','Farm Gate','2026-06-10'),(73,2,31,43.00,'kg','Local Market','2026-06-10'),(74,2,34,41.00,'kg','Trader','2026-06-10'),(75,3,1,32.00,'kg','Cold Storage','2026-06-10'),(76,3,3,28.00,'kg','Farm Gate','2026-06-10'),(77,3,31,26.00,'kg','Wholesale','2026-06-10'),(78,3,35,25.00,'kg','DAE Survey','2026-06-10'),(79,3,36,27.00,'kg','Farm Gate','2026-06-10'),(80,4,4,38.00,'kg','BJMC','2026-06-10'),(81,4,40,36.00,'kg','BJMC','2026-06-10'),(82,4,42,37.00,'kg','Local Market','2026-06-10'),(83,4,1,40.00,'kg','Wholesaler','2026-06-10'),(84,5,3,95.00,'kg','Mill Gate','2026-06-10'),(85,5,34,92.00,'kg','Farm Gate','2026-06-10'),(86,5,32,90.00,'kg','Trader','2026-06-10'),(87,6,7,30.00,'kg','Feed Mill','2026-06-10'),(88,6,55,28.00,'kg','Farm Gate','2026-06-10'),(89,6,56,29.00,'kg','Wholesaler','2026-06-10'),(90,7,1,72.00,'kg','Retail','2026-06-10'),(91,7,2,68.00,'kg','Local Market','2026-06-10'),(92,7,37,65.00,'kg','Wholesale','2026-06-10'),(93,7,4,70.00,'kg','Trader','2026-06-10'),(94,8,1,55.00,'kg','Retail','2026-06-10'),(95,8,2,50.00,'kg','Local Market','2026-06-10'),(96,8,8,48.00,'kg','Farm Gate','2026-06-10'),(97,8,20,52.00,'kg','Wholesale','2026-06-10'),(98,9,1,40.00,'kg','Retail','2026-06-10'),(99,9,2,38.00,'kg','Local Market','2026-06-10'),(100,9,8,35.00,'kg','Farm Gate','2026-06-10'),(101,9,4,37.00,'kg','Wholesale','2026-06-10'),(102,10,1,185.00,'kg','Spice Market','2026-06-10'),(103,10,2,175.00,'kg','Wholesale','2026-06-10'),(104,10,3,168.00,'kg','Farm Gate','2026-06-10'),(105,10,37,160.00,'kg','Local Market','2026-06-10'),(106,1,1,57.50,'kg','DAM','2026-06-09'),(107,1,2,54.00,'kg','DAM','2026-06-09'),(108,1,3,51.50,'kg','DAM','2026-06-09'),(109,1,4,53.00,'kg','DAM','2026-06-09'),(110,1,7,50.50,'kg','DAM','2026-06-09'),(111,2,1,44.00,'kg','Wholesaler','2026-06-09'),(112,2,3,41.50,'kg','BADC','2026-06-09'),(113,3,1,31.00,'kg','Cold Storage','2026-06-09'),(114,3,31,25.50,'kg','Wholesale','2026-06-09'),(115,7,1,71.00,'kg','Retail','2026-06-09'),(116,7,2,67.00,'kg','Local Market','2026-06-09'),(117,8,1,54.00,'kg','Retail','2026-06-09'),(118,8,8,47.00,'kg','Farm Gate','2026-06-09'),(119,10,1,183.00,'kg','Spice Market','2026-06-09'),(120,1,1,57.00,'kg','DAM','2026-06-08'),(121,1,2,53.00,'kg','DAM','2026-06-08'),(122,1,3,51.00,'kg','DAM','2026-06-08'),(123,1,4,52.50,'kg','DAM','2026-06-08'),(124,1,7,50.00,'kg','DAM','2026-06-08'),(125,2,1,43.50,'kg','Wholesaler','2026-06-08'),(126,3,1,30.50,'kg','Cold Storage','2026-06-08'),(127,3,31,25.00,'kg','Wholesale','2026-06-08'),(128,7,1,70.00,'kg','Retail','2026-06-08'),(129,8,1,53.00,'kg','Retail','2026-06-08'),(130,10,1,180.00,'kg','Spice Market','2026-06-08'),(131,1,1,56.50,'kg','DAM','2026-06-07'),(132,1,2,52.50,'kg','DAM','2026-06-07'),(133,1,3,50.00,'kg','DAM','2026-06-07'),(134,1,4,52.00,'kg','DAM','2026-06-07'),(135,1,7,49.50,'kg','DAM','2026-06-07'),(136,2,1,43.00,'kg','Wholesaler','2026-06-07'),(137,3,1,30.00,'kg','Cold Storage','2026-06-07'),(138,7,1,69.50,'kg','Retail','2026-06-07'),(139,8,1,52.50,'kg','Retail','2026-06-07'),(140,10,1,178.00,'kg','Spice Market','2026-06-07'),(141,1,1,56.00,'kg','DAM','2026-06-06'),(142,1,2,52.00,'kg','DAM','2026-06-06'),(143,1,3,49.50,'kg','DAM','2026-06-06'),(144,1,4,51.50,'kg','DAM','2026-06-06'),(145,1,7,49.00,'kg','DAM','2026-06-06'),(146,2,1,42.50,'kg','Wholesaler','2026-06-06'),(147,3,1,29.50,'kg','Cold Storage','2026-06-06'),(148,7,1,69.00,'kg','Retail','2026-06-06'),(149,8,1,51.00,'kg','Retail','2026-06-06'),(150,10,1,176.00,'kg','Spice Market','2026-06-06'),(151,1,1,55.50,'kg','DAM','2026-06-05'),(152,1,2,51.50,'kg','DAM','2026-06-05'),(153,1,3,49.00,'kg','DAM','2026-06-05'),(154,1,4,51.00,'kg','DAM','2026-06-05'),(155,1,7,48.50,'kg','DAM','2026-06-05'),(156,2,1,42.00,'kg','Wholesaler','2026-06-05'),(157,3,1,29.00,'kg','Cold Storage','2026-06-05'),(158,7,1,68.50,'kg','Retail','2026-06-05'),(159,8,1,50.00,'kg','Retail','2026-06-05'),(160,10,1,175.00,'kg','Spice Market','2026-06-05'),(161,1,1,55.00,'kg','DAM','2026-06-04'),(162,1,2,51.00,'kg','DAM','2026-06-04'),(163,1,3,48.50,'kg','DAM','2026-06-04'),(164,1,4,50.50,'kg','DAM','2026-06-04'),(165,1,7,48.00,'kg','DAM','2026-06-04'),(166,2,1,41.50,'kg','Wholesaler','2026-06-04'),(167,3,1,28.50,'kg','Cold Storage','2026-06-04'),(168,7,1,68.00,'kg','Retail','2026-06-04'),(169,8,1,49.00,'kg','Retail','2026-06-04'),(170,10,1,173.00,'kg','Spice Market','2026-06-04'),(171,7,6,56.00,'kg','DAM','2026-06-11');
/*!40000 ALTER TABLE `market_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `type` enum('pest','weather','advisory','system') COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (21,2,'Pest Report Submitted','Your pest report has been submitted successfully.','pest',1,'2026-05-18 05:23:26'),(22,2,'Pest Report Submitted','Your pest report has been submitted successfully.','pest',1,'2026-05-18 05:24:15'),(23,2,'Pest Report Submitted','Your pest report has been submitted successfully.','pest',1,'2026-05-18 05:24:33'),(24,2,'Question Submitted','Your question has been submitted.','',1,'2026-05-18 06:10:44'),(25,2,'Answer Received','Expert answered your question.','',1,'2026-05-18 06:12:10'),(26,2,'Question Submitted','Your question has been submitted.','',1,'2026-05-19 10:29:36'),(27,2,'Answer Received','Expert answered your question.','',1,'2026-05-19 10:30:06'),(28,2,'Pest Report Submitted','Your pest report has been submitted successfully.','pest',1,'2026-05-19 15:15:18'),(29,2,'Pest Report Submitted','Your pest report has been submitted successfully.','pest',1,'2026-05-19 15:57:37'),(30,2,'Pest Report Submitted','Your pest report has been submitted for review. District: Dhaka District','',1,'2026-05-19 17:05:13'),(31,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-19 17:37:22'),(32,2,'Pest Expert Advice','Expert has created advice on your pest report (Crop: Brinjal).','',1,'2026-05-19 17:51:10'),(33,2,'Answer Received','Expert answered your question.','',1,'2026-05-19 18:22:46'),(34,2,'Answer Received','Expert answered your question.','',1,'2026-05-19 18:22:57'),(35,2,'Question Submitted','Your question has been submitted.','',1,'2026-05-19 18:25:55'),(36,2,'Answer Received','Expert answered your question.','',1,'2026-05-19 18:26:33'),(37,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-19 19:11:57'),(38,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-19 19:12:35'),(39,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-19 19:12:48'),(40,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-19 19:13:13'),(41,2,'Crop Planted','You planted a new crop.','advisory',1,'2026-05-20 03:25:17'),(42,2,'Crop Planted','You planted a new crop.','advisory',1,'2026-05-20 03:40:57'),(43,2,'Question Submitted','Your question has been submitted.','',1,'2026-05-20 03:47:40'),(44,2,'Answer Received','Expert answered your question.','',1,'2026-05-20 03:47:59'),(45,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-20 03:50:18'),(46,2,'⏭ Skipped: Activity Logged','⏭ Skipped — Soil leveling & water management check for Rice.','',1,'2026-05-20 11:38:39'),(47,2,'✅ Completed: Activity Logged','✅ Completed — Apply fertilizer for Rice.','',1,'2026-05-20 11:38:52'),(48,2,'✅ Completed: Activity Logged','✅ Completed — Apply fertilizer for Rice.','',1,'2026-05-20 11:54:22'),(49,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-05-20 12:08:53'),(50,2,'Crop Planted','You planted a new crop.','advisory',1,'2026-05-23 05:02:50'),(51,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',1,'2026-05-23 05:45:53'),(52,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',1,'2026-05-23 05:56:17'),(53,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',1,'2026-05-23 06:23:40'),(54,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',1,'2026-05-23 06:37:28'),(55,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',1,'2026-05-23 06:39:55'),(56,2,'Question Submitted','Your question has been submitted.','',1,'2026-05-23 09:13:09'),(57,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-06-06 14:24:13'),(58,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-06-06 14:34:00'),(59,2,'Question Submitted','Your question has been submitted successfully.','',1,'2026-06-06 14:46:19'),(60,2,'Pest Expert Advice','Expert has created advice on your pest report (Crop: Brinjal).','',1,'2026-06-06 14:49:43'),(61,2,'⏭ Skipped: Activity Logged','⏭ Skipped — First weeding for Rice.','',1,'2026-06-06 18:13:56'),(62,2,'⏭ Skipped: Activity Logged','⏭ Skipped — First weeding for Rice.','',1,'2026-06-06 18:16:02'),(63,2,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','',1,'2026-06-07 10:47:20'),(64,2,'Pest Expert Advice','Expert has created advice on your pest report (Crop: Brinjal).','',1,'2026-06-07 10:47:49'),(65,2,'⏭ Skipped: Activity Logged','⏭ Skipped — Apply fertilizer for Wheat.','',0,'2026-06-07 10:49:29'),(66,2,'⏭ Skipped: Activity Logged','⏭ Skipped — Apply nitrogen fertilizer for Wheat.','',0,'2026-06-07 15:28:50'),(67,2,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',0,'2026-06-07 16:02:37'),(68,2,'⏭ Skipped: Activity Logged','⏭ Skipped — Pest monitoring for Wheat.','',0,'2026-06-10 03:17:02'),(69,2,'Pest Expert Advice','Expert has updated advice on your pest report (Crop: Rice).','pest',0,'2026-06-10 08:16:30'),(70,2,'Answer Received','Expert answered your question.','advisory',0,'2026-06-10 08:19:43'),(71,2,'Pest Expert Advice','Expert has created advice on your pest report (Crop: Rice).','pest',0,'2026-06-10 08:23:35'),(72,2,'Answer Received','Expert answered your question.','advisory',0,'2026-06-10 08:24:14'),(73,8,'Crop Planted','You planted a new crop.','advisory',1,'2026-06-10 17:43:39'),(74,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 04:03:05'),(75,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 04:03:56'),(76,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 04:05:59'),(77,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 04:06:24'),(78,8,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',0,'2026-06-11 04:08:44'),(79,8,'Farmers Card Linked','Your Bangladesh Farmers Card has been linked to SoilSync. You can now track all 10 government benefits.','advisory',0,'2026-06-11 04:16:14'),(80,8,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','pest',0,'2026-06-11 04:19:35'),(81,8,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','pest',0,'2026-06-11 04:19:42'),(82,8,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','pest',0,'2026-06-11 04:20:01'),(83,8,'Question Submitted','Your question has been submitted successfully.','advisory',0,'2026-06-11 04:25:43'),(84,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 05:17:54'),(85,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 05:27:43'),(86,8,'Crop Planted','You planted a new crop.','advisory',0,'2026-06-11 05:28:27'),(87,8,'New Pest Report Submitted','Your pest report has been submitted successfully from Dhaka District.','pest',0,'2026-06-11 05:30:04'),(88,8,'Answer Received','Expert answered your question.','advisory',0,'2026-06-11 07:21:28');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pest_images`
--

DROP TABLE IF EXISTS `pest_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pest_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_id` int NOT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`),
  CONSTRAINT `pest_images_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `pest_reports` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pest_images`
--

LOCK TABLES `pest_images` WRITE;
/*!40000 ALTER TABLE `pest_images` DISABLE KEYS */;
INSERT INTO `pest_images` VALUES (6,15,'assets/images/pests/1779206257_alexander-london-mJaD10XeD7w-unsplash.jpg'),(11,81,'assets/images/pests/1780756508_alexander-london-mJaD10XeD7w-unsplash.jpg'),(12,83,'assets/images/pests/1780829240_amber-kipp-75715CVEJhI-unsplash.jpg'),(13,29,'assets/images/pests/1781062791_WhatsApp Image 2026-05-08 at 8.13.22 PM.jpg');
/*!40000 ALTER TABLE `pest_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pest_reports`
--

DROP TABLE IF EXISTS `pest_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pest_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `crop_id` int NOT NULL,
  `pest_id` int NOT NULL,
  `field_id` int DEFAULT NULL,
  `severity` enum('Low','Medium','High') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','reviewed') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `outbreak_group` int DEFAULT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci,
  `district` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  KEY `pest_id` (`pest_id`),
  KEY `field_id` (`field_id`),
  KEY `fk_pest_user` (`user_id`),
  KEY `idx_outbreak_group` (`outbreak_group`),
  CONSTRAINT `fk_pest_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pest_reports_ibfk_2` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`),
  CONSTRAINT `pest_reports_ibfk_3` FOREIGN KEY (`pest_id`) REFERENCES `pests` (`id`),
  CONSTRAINT `pest_reports_ibfk_5` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pest_reports`
--

LOCK TABLES `pest_reports` WRITE;
/*!40000 ALTER TABLE `pest_reports` DISABLE KEYS */;
INSERT INTO `pest_reports` VALUES (15,2,7,7,NULL,'Medium','rtge5r4','2026-05-19 15:57:37','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','',23.794911515875746,90.43556416235091),(16,2,9,3,NULL,'Low','fgdbvtrf','2026-05-19 16:07:25','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh',NULL,23.794774142664718,90.4355618415806),(17,2,9,3,NULL,'Low','fgdbvtrf','2026-05-19 16:08:19','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh',NULL,23.794774142664718,90.4355618415806),(18,2,9,3,NULL,'Low','fgdbvtrf','2026-05-19 16:10:53','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh',NULL,23.794774142664718,90.4355618415806),(19,2,1,3,NULL,'Medium','erfgvvrged','2026-05-19 16:40:08','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.7949166462841,90.43563135759642),(20,2,1,3,NULL,'Low','','2026-05-19 16:41:44','pending',NULL,'B Block, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.79463444908724,90.43555403129402),(21,2,9,3,NULL,'Low','ftghyhbtrgff','2026-05-19 16:57:14','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794772961631224,90.43559008563692),(22,2,9,3,NULL,'Low','','2026-05-19 17:05:13','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794911005983067,90.43560808213765),(23,2,9,3,NULL,'Low','','2026-05-19 17:37:22','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794905098103204,90.43562296000388),(24,2,1,7,NULL,'High','vgfb bhtfgrv','2026-05-19 19:11:57','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.79494354636444,90.43557229967617),(25,2,1,3,NULL,'High','','2026-05-19 19:12:35','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794668024870322,90.43555319494959),(26,2,1,2,NULL,'High','','2026-05-19 19:12:48','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794668024870322,90.43555319494959),(27,2,1,7,NULL,'High','','2026-05-19 19:13:13','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794911005983067,90.43560808213765),(28,2,1,7,NULL,'High','edfedf','2026-05-20 03:50:18','pending',NULL,'UIU Entrance Road, United City, Badda, Kathaldia, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.796913,90.450005),(29,2,9,3,NULL,'Low','','2026-05-20 12:08:53','pending',NULL,'United International University, UIU Entrance Road, United City, Badda, Kathaldia, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.797363,90.450134),(81,2,9,3,NULL,'Low','fcdgvv','2026-06-06 14:24:13','pending',NULL,'Bhandari Mor, East Nurer Chala, Nurer Chala, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1212, Bangladesh','Dhaka District',23.794931212446347,90.43563876287554),(83,2,9,6,NULL,'Low','rtgvtrgvr','2026-06-07 10:47:20','pending',NULL,'United International University, Madani Avenue, United City, East Nurer Chala, Badda, Kathaldia, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1229, Bangladesh','Dhaka District',23.79841922759344,90.44996943758977),(84,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24,90.42),(85,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.002,90.421),(86,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.003,90.422),(87,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.004,90.423),(88,2,1,1,NULL,'Low',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.001,90.424),(89,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.005,90.425),(90,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.006,90.426),(91,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.007,90.427),(92,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.008,90.428),(93,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.009,90.429),(94,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.01,90.43),(95,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:36','pending',NULL,NULL,'Gazipur',24.011,90.431),(96,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.3,90.7),(97,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.301,90.701),(98,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.302,90.702),(99,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.303,90.703),(100,2,1,1,NULL,'Low',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.304,90.704),(101,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.305,90.705),(102,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.306,90.706),(103,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.307,90.707),(104,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.308,90.708),(105,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.309,90.709),(106,2,1,1,NULL,'High',NULL,'2026-06-10 17:12:53','pending',NULL,NULL,'Gazipur',24.31,90.71),(107,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.65,90.95),(108,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.651,90.951),(109,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.652,90.952),(110,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.653,90.953),(111,2,1,1,NULL,'Low',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.654,90.954),(112,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.655,90.955),(113,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.656,90.956),(114,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.657,90.957),(115,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.658,90.958),(116,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.659,90.959),(117,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.66,90.96),(118,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.661,90.961),(119,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.662,90.962),(120,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.663,90.963),(121,2,1,1,NULL,'High',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.664,90.964),(122,2,1,1,NULL,'Medium',NULL,'2026-06-10 17:13:21','pending',NULL,NULL,'Gazipur',24.665,90.965),(123,8,9,3,NULL,'Low','','2026-06-11 04:16:56','pending',NULL,'Bangla Departmental Store, 19/6, Ajam Road, Bashbari, Mohammadpur, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1207, Bangladesh','Dhaka District',23.760451626686685,90.36504872050155),(124,8,9,3,NULL,'Low','','2026-06-11 04:19:35','pending',NULL,'Bangla Departmental Store, 19/6, Ajam Road, Bashbari, Mohammadpur, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1207, Bangladesh','Dhaka District',23.760451626686685,90.36504872050155),(126,8,7,7,NULL,'Low','','2026-06-11 04:20:01','pending',NULL,'Bangla Departmental Store, 19/6, Ajam Road, Bashbari, Mohammadpur, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1207, Bangladesh','Dhaka District',23.76045099251358,90.3650054901041),(127,8,9,3,NULL,'Low','','2026-06-11 05:30:04','pending',NULL,'Bangla Departmental Store, 19/6, Ajam Road, Bashbari, Mohammadpur, Dhaka, Dhaka Metropolitan, Dhaka District, Dhaka Division, 1207, Bangladesh','Dhaka District',23.760367274863768,90.36509621707556);
/*!40000 ALTER TABLE `pest_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pest_reviews`
--

DROP TABLE IF EXISTS `pest_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pest_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_id` int DEFAULT NULL,
  `expert_id` int DEFAULT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id` (`report_id`),
  KEY `expert_id` (`expert_id`),
  CONSTRAINT `pest_reviews_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `pest_reports` (`id`),
  CONSTRAINT `pest_reviews_ibfk_2` FOREIGN KEY (`expert_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pest_reviews`
--

LOCK TABLES `pest_reviews` WRITE;
/*!40000 ALTER TABLE `pest_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `pest_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesticide_guidelines`
--

DROP TABLE IF EXISTS `pesticide_guidelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesticide_guidelines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pesticide_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safe_dosage` text COLLATE utf8mb4_unicode_ci,
  `phi_days` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesticide_guidelines`
--

LOCK TABLES `pesticide_guidelines` WRITE;
/*!40000 ALTER TABLE `pesticide_guidelines` DISABLE KEYS */;
INSERT INTO `pesticide_guidelines` VALUES (1,'Malathion','20ml per liter water',14),(2,'Neem Oil','30ml per liter water',3),(3,'Carbendazim','10g per liter water',7),(4,'Chlorpyrifos','15ml per liter water',21),(5,'Imidacloprid','5ml per liter water',10);
/*!40000 ALTER TABLE `pesticide_guidelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pests`
--

DROP TABLE IF EXISTS `pests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pests`
--

LOCK TABLES `pests` WRITE;
/*!40000 ALTER TABLE `pests` DISABLE KEYS */;
INSERT INTO `pests` VALUES (1,'Brown Planthopper','Sucks sap from rice plants causing hopperburn'),(2,'Stem Borer','Larvae bore into rice stems causing deadheart/whitehead'),(3,'Aphids','Small insects sucking plant juice causing stunted growth'),(4,'Whitefly','Transmits viral diseases; affects many crops'),(5,'Colorado Potato Beetle','Major potato pest; defoliates plants'),(6,'Armyworm','Caterpillar that feeds on leaves in large numbers'),(7,'Thrips','Tiny insects causing silver streaks on leaves'),(8,'Mites','Spider-like; cause yellowing and leaf drop');
/*!40000 ALTER TABLE `pests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` enum('pest','crop','irrigation','other') COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `image_url` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  FULLTEXT KEY `ft_question` (`question`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (7,8,'I am unable to harvest good amount of rice','Rice',1,'2026-06-11 04:23:35','crop',''),(8,8,'I am unable to harvest good amount of rice','Rice',1,'2026-06-11 04:25:43','crop','');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeds`
--

DROP TABLE IF EXISTS `seeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seeds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crop_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yield_info` text COLLATE utf8mb4_unicode_ci,
  `pest_resistance` tinyint(1) DEFAULT '0',
  `harvest_days` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crop_id` (`crop_id`),
  CONSTRAINT `seeds_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeds`
--

LOCK TABLES `seeds` WRITE;
/*!40000 ALTER TABLE `seeds` DISABLE KEYS */;
INSERT INTO `seeds` VALUES (2,1,'BRRI dhan29','HYV','7-8 ton/ha',1,150),(3,1,'BRRI Hybrid 1','Hybrid','8-9 ton/ha',1,135),(4,1,'Local Swarna','Local','4-5 ton/ha',0,145),(5,2,'Shatabdi','HYV','4-5 ton/ha',1,110),(6,2,'BARI Wheat-26','HYV','5-6 ton/ha',1,115),(7,3,'Cardinal','HYV','25-30 ton/ha',1,90),(8,3,'Diamant','Hybrid','30-35 ton/ha',1,95),(9,3,'Local Red','Local','15-20 ton/ha',0,100),(10,8,'BARI Tomato-2','HYV','40-50 ton/ha',1,75),(11,8,'Hybrid Ratan','Hybrid','50-60 ton/ha',1,70),(12,1,'BRRI dhan28','HYV','6-7 ton/ha',1,140),(13,1,'BRRI dhan29','HYV','7-8 ton/ha',1,150),(14,1,'BRRI Hybrid 1','Hybrid','8-9 ton/ha',1,135),(15,1,'Local Swarna','Local','4-5 ton/ha',0,145),(16,2,'Shatabdi','HYV','4-5 ton/ha',1,110),(17,2,'BARI Wheat-26','HYV','5-6 ton/ha',1,115),(18,2,'Prodip','HYV','4.5-5 ton/ha',1,112),(19,2,'Sufi','Local','3-4 ton/ha',0,120),(20,3,'Cardinal','HYV','25-30 ton/ha',1,90),(21,3,'Diamant','Hybrid','30-35 ton/ha',1,95),(22,3,'Local Red','Local','15-20 ton/ha',0,100),(23,3,'Granola','HYV','28-32 ton/ha',1,92),(24,4,'BJC-7370','HYV','2.5-3 ton/ha fiber',1,125),(25,4,'O-9897','HYV','2-2.5 ton/ha fiber',1,120),(26,4,'Deshi Pat','Local','1.5-2 ton/ha fiber',0,135),(27,5,'BARI Sarisha-14','HYV','1.5-2 ton/ha',1,85),(28,5,'Tori-7','HYV','1.2-1.8 ton/ha',1,80),(29,5,'Local Mustard','Local','0.8-1 ton/ha',0,95),(30,6,'NK-40','Hybrid','10-12 ton/ha',1,115),(31,6,'Pacific-984','Hybrid','11-13 ton/ha',1,118),(32,6,'BARI Bhutta-9','HYV','8-10 ton/ha',1,120),(33,6,'Local Maize','Local','5-6 ton/ha',0,125),(34,7,'Taherpuri','HYV','18-22 ton/ha',1,105),(35,7,'BARI Piaz-1','HYV','20-25 ton/ha',1,100),(36,7,'Faridpuri','Local','12-15 ton/ha',0,115),(37,8,'BARI Tomato-2','HYV','40-50 ton/ha',1,75),(38,8,'Hybrid Ratan','Hybrid','50-60 ton/ha',1,70),(39,8,'Roma VF','HYV','35-45 ton/ha',1,80),(40,8,'Local Tomato','Local','20-25 ton/ha',0,90),(41,9,'BARI Begun-8','HYV','35-45 ton/ha',1,110),(42,9,'Hybrid Purple King','Hybrid','45-55 ton/ha',1,100),(43,9,'Local Begun','Local','20-30 ton/ha',0,120),(44,10,'BARI Morich-2','HYV','10-12 ton/ha',1,95),(45,10,'Hybrid Fire','Hybrid','12-15 ton/ha',1,90),(46,10,'Local Chili','Local','6-8 ton/ha',0,105);
/*!40000 ALTER TABLE `seeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soil_crop_bonus`
--

DROP TABLE IF EXISTS `soil_crop_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soil_crop_bonus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soil_type` enum('Sandy','Clay','Loamy','Silt','Peaty','Chalky') COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_id` int NOT NULL COMMENT 'FK → crops.id',
  `bonus` int NOT NULL DEFAULT '0' COMMENT 'Score bonus added to rotation score (1-20)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_soil_crop` (`soil_type`,`crop_id`),
  KEY `crop_id` (`crop_id`),
  CONSTRAINT `scb_crop_fk` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soil_crop_bonus`
--

LOCK TABLES `soil_crop_bonus` WRITE;
/*!40000 ALTER TABLE `soil_crop_bonus` DISABLE KEYS */;
INSERT INTO `soil_crop_bonus` VALUES (1,'Clay',1,15),(2,'Clay',4,12),(3,'Clay',9,8),(4,'Clay',8,8),(5,'Clay',10,5),(6,'Loamy',2,15),(7,'Loamy',3,15),(8,'Loamy',6,12),(9,'Loamy',7,12),(10,'Loamy',8,10),(11,'Loamy',10,10),(12,'Loamy',5,8),(13,'Sandy',7,8),(14,'Sandy',10,8),(15,'Sandy',5,5),(16,'Silt',1,12),(17,'Silt',4,12),(18,'Silt',6,8),(19,'Silt',2,8),(20,'Silt',5,6),(21,'Peaty',1,15),(22,'Peaty',4,10),(23,'Peaty',6,5),(24,'Chalky',2,12),(25,'Chalky',5,10),(26,'Chalky',7,8);
/*!40000 ALTER TABLE `soil_crop_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solutions`
--

DROP TABLE IF EXISTS `solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solutions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disease_id` int NOT NULL,
  `solution_text` text COLLATE utf8mb4_unicode_ci,
  `pesticide_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disease_id` (`disease_id`),
  CONSTRAINT `solutions_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `crop_diseases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solutions`
--

LOCK TABLES `solutions` WRITE;
/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
INSERT INTO `solutions` VALUES (1,1,'Apply fungicide at early stage. Drain water from field for 3-4 days.','Tricyclazole 75WP'),(2,1,'Use resistant varieties. Maintain proper spacing.',NULL),(3,2,'Apply copper-based bactericide. Remove and burn infected plants.','Copper Oxychloride'),(4,3,'Apply fungicide. Avoid excessive nitrogen.','Hexaconazole 5SC'),(5,4,'Apply appropriate fungicide at early stage.','Propiconazole'),(6,5,'Destroy infected plants. Apply fungicide.','Mancozeb 80WP'),(7,6,'Remove infected tubers. Apply fungicide before planting.','Metalaxyl'),(8,7,'Remove infected plants. Control insect vectors.',NULL),(9,8,'Soil solarization. Crop rotation.',NULL);
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('farmer','expert','admin') COLLATE utf8mb4_unicode_ci DEFAULT 'farmer',
  `location_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fc_card_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fc_category` enum('landless','marginal','small','medium','large') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fc_land_size` decimal(8,2) DEFAULT NULL,
  `fc_bank_account` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fc_registered_at` datetime DEFAULT NULL,
  `fc_phase` enum('pre_pilot','pilot','national') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Md. Nurnove','01727493660','$2y$10$iAIcshKS2xpuf4FfXCBr1.rPN8rFcnr0fuw1ds0.8Ix.E/6yfFQgC','expert',5,'2026-05-11 09:47:45','FCedw223','medium',8.96,'2071000','2026-05-23 11:45:52','pilot'),(8,'Nazha','01701146626','$2y$12$M7affd7RYdFlzYwL6.BP.eYXfOUGrHOCqyf/GPISLa3r2E8Z0SLsK','farmer',25,'2026-06-10 08:22:02','12345634334','medium',9.00,'201667736732','2026-06-11 04:08:44','pilot'),(9,'admin1','01682313090','$2y$12$Kw2XLRt/D.cVFVt7H3r12e5VsxGKIHM1RqVBBpaqfyiFOuozEpoSG','admin',1,'2026-06-11 03:57:43',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Farmer1','01816877341','$2y$12$ZWVzVMabftFUnLcXpdkI/OmBuKUjOvE1jAUbGjvJeIghB3RE2mWVO','farmer',51,'2026-06-11 04:00:04',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Admin2','01816877342','$2y$12$wtlXNgyBl5d6Ko84sReo7uFl05Wbf.xpEo.iSmtJrdt0bjzxFx8TO','farmer',54,'2026-06-11 04:00:24',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Farmer2','0156787989','$2y$12$RSrs1prAaFnrwknp0.3dbOi7cvTanp1d8eNmgo.gVL7UgS6wl8x4y','expert',6,'2026-06-11 05:14:56',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_api_config`
--

DROP TABLE IF EXISTS `weather_api_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_api_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int DEFAULT NULL,
  `api_provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci,
  `update_interval` int DEFAULT '30',
  `last_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `weather_api_config_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_api_config`
--

LOCK TABLES `weather_api_config` WRITE;
/*!40000 ALTER TABLE `weather_api_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather_api_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `rainfall` decimal(5,2) DEFAULT NULL,
  `humidity` int DEFAULT NULL,
  `rain_probability` int DEFAULT '0',
  `recorded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `weather_data_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_data`
--

LOCK TABLES `weather_data` WRITE;
/*!40000 ALTER TABLE `weather_data` DISABLE KEYS */;
INSERT INTO `weather_data` VALUES (1,1,32.50,0.00,75,20,'2026-05-11 09:44:03'),(2,2,31.00,5.20,82,65,'2026-05-11 09:44:03'),(3,3,30.00,0.00,70,15,'2026-05-11 09:44:03'),(4,4,29.50,2.10,80,45,'2026-05-11 09:44:03'),(5,5,28.00,8.50,88,70,'2026-05-11 09:44:03'),(6,23,32.19,0.00,64,30,'2026-05-18 10:15:37'),(7,24,33.36,0.00,57,30,'2026-05-18 10:15:37'),(8,25,30.81,0.00,72,55,'2026-05-18 10:15:37'),(9,26,31.83,0.00,63,30,'2026-05-18 10:15:38'),(10,27,34.29,0.00,45,0,'2026-05-18 10:15:39'),(11,28,31.43,0.00,68,30,'2026-05-18 10:15:39'),(12,29,30.41,0.00,74,55,'2026-05-18 10:15:40'),(13,30,34.71,0.00,45,0,'2026-05-18 10:15:40'),(14,31,36.61,0.00,44,0,'2026-05-18 10:15:41'),(15,32,43.33,0.00,15,0,'2026-05-18 10:15:41'),(16,33,39.31,0.00,31,0,'2026-05-18 10:15:41'),(17,34,42.00,0.00,18,0,'2026-05-18 10:15:42'),(18,35,42.85,0.00,16,0,'2026-05-18 10:15:42'),(19,36,42.81,0.00,16,0,'2026-05-18 10:15:43'),(20,37,34.32,0.00,55,30,'2026-05-18 10:15:44'),(21,38,35.99,0.00,44,0,'2026-05-18 10:15:44'),(22,39,44.43,0.00,9,0,'2026-05-18 10:15:45'),(23,40,42.87,0.00,17,0,'2026-05-18 10:15:45'),(24,41,44.00,0.00,12,0,'2026-05-18 10:15:45'),(25,42,43.85,0.00,12,0,'2026-05-18 10:15:46'),(26,43,42.50,0.00,16,0,'2026-05-18 10:15:46'),(27,44,44.52,0.00,9,0,'2026-05-18 10:15:47'),(28,45,42.25,0.00,19,0,'2026-05-18 10:15:47'),(29,46,38.98,0.00,34,0,'2026-05-18 10:15:48'),(30,47,33.25,0.00,58,30,'2026-05-18 10:15:48'),(31,48,30.84,0.00,72,55,'2026-05-18 10:15:49'),(32,49,31.68,0.00,66,30,'2026-05-18 10:15:49'),(33,50,33.31,0.00,57,30,'2026-05-18 10:15:50'),(34,51,30.71,0.00,71,55,'2026-05-18 10:15:50'),(35,52,31.50,0.00,62,30,'2026-05-18 10:15:51'),(36,53,33.90,0.00,52,30,'2026-05-18 10:15:51'),(37,54,32.78,0.00,56,30,'2026-05-18 10:15:52'),(38,55,36.46,0.00,45,0,'2026-05-18 10:15:52'),(39,56,34.53,0.00,53,30,'2026-05-18 10:15:53'),(40,57,31.97,0.00,67,30,'2026-05-18 10:15:53'),(41,58,32.87,0.00,63,30,'2026-05-18 10:15:54'),(42,59,33.32,0.00,60,30,'2026-05-18 10:15:54'),(43,60,32.67,0.00,58,30,'2026-05-18 10:15:55'),(44,61,33.07,0.00,60,30,'2026-05-18 10:15:55'),(45,62,34.08,0.00,57,30,'2026-05-18 10:15:56'),(46,63,33.00,0.00,60,30,'2026-05-18 10:15:56'),(47,64,33.43,0.00,59,30,'2026-05-18 10:15:57'),(48,1,31.82,0.00,62,35,'2026-05-18 10:21:43'),(49,2,29.60,0.00,77,60,'2026-05-18 10:21:44'),(50,3,43.46,0.00,14,10,'2026-05-18 10:21:45'),(51,4,39.86,0.00,31,10,'2026-05-18 10:21:47'),(52,5,31.15,0.00,65,35,'2026-05-18 10:21:48'),(53,6,30.94,0.00,67,35,'2026-05-18 10:21:49'),(54,7,33.63,0.00,58,35,'2026-05-18 10:21:50'),(55,8,33.40,0.00,58,35,'2026-05-18 10:21:51'),(56,9,39.20,0.00,30,10,'2026-05-18 10:21:53'),(57,10,37.98,0.00,37,10,'2026-05-18 10:21:54'),(58,11,37.95,0.00,37,10,'2026-05-18 10:21:55'),(59,12,34.13,0.00,54,35,'2026-05-18 10:21:56'),(60,13,33.64,0.00,55,35,'2026-05-18 10:21:57'),(61,14,38.53,0.00,35,10,'2026-05-18 10:21:59'),(62,15,27.66,0.00,85,80,'2026-05-18 10:22:00'),(63,16,28.16,0.00,81,60,'2026-05-18 10:22:01'),(64,17,36.00,0.00,45,10,'2026-05-18 10:22:02'),(65,18,41.50,0.00,20,10,'2026-05-18 10:22:03'),(66,19,29.85,0.41,73,60,'2026-05-18 10:22:05'),(67,20,35.45,0.00,46,10,'2026-05-18 10:22:06'),(68,21,34.44,0.00,46,10,'2026-05-18 10:22:07'),(69,22,32.46,0.00,62,35,'2026-05-18 10:22:08'),(70,23,32.19,0.00,64,35,'2026-05-18 10:22:09'),(71,24,33.36,0.00,57,35,'2026-05-18 10:22:11'),(72,25,30.81,0.00,72,60,'2026-05-18 10:22:12'),(73,26,31.83,0.00,63,35,'2026-05-18 10:22:13'),(74,27,34.29,0.00,45,10,'2026-05-18 10:22:14'),(75,28,31.43,0.00,68,35,'2026-05-18 10:22:15'),(76,29,30.41,0.00,74,60,'2026-05-18 10:22:16'),(77,30,34.71,0.00,45,10,'2026-05-18 10:22:18'),(78,31,36.61,0.00,44,10,'2026-05-18 10:22:19'),(79,32,43.33,0.00,15,10,'2026-05-18 10:22:20'),(80,33,39.31,0.00,31,10,'2026-05-18 10:22:21'),(81,34,42.00,0.00,18,10,'2026-05-18 10:22:22'),(82,35,42.85,0.00,16,10,'2026-05-18 10:22:24'),(83,36,42.81,0.00,16,10,'2026-05-18 10:22:25'),(84,37,34.32,0.00,55,35,'2026-05-18 10:22:26'),(85,38,35.99,0.00,44,10,'2026-05-18 10:22:27'),(86,39,44.43,0.00,9,10,'2026-05-18 10:22:28'),(87,40,42.87,0.00,17,10,'2026-05-18 10:22:30'),(88,41,44.00,0.00,12,10,'2026-05-18 10:22:31'),(89,42,43.85,0.00,12,10,'2026-05-18 10:22:32'),(90,43,42.50,0.00,16,10,'2026-05-18 10:22:33'),(91,44,44.52,0.00,9,10,'2026-05-18 10:22:34'),(92,45,42.25,0.00,19,10,'2026-05-18 10:22:36'),(93,46,38.98,0.00,34,10,'2026-05-18 10:22:37'),(94,47,33.25,0.00,58,35,'2026-05-18 10:22:38'),(95,48,30.84,0.00,72,60,'2026-05-18 10:22:39'),(96,49,31.68,0.00,66,35,'2026-05-18 10:22:40'),(97,50,33.31,0.00,57,35,'2026-05-18 10:22:41'),(98,51,30.71,0.00,71,60,'2026-05-18 10:22:43'),(99,52,31.50,0.00,62,35,'2026-05-18 10:22:44'),(100,53,33.90,0.00,52,35,'2026-05-18 10:22:45'),(101,54,32.78,0.00,56,35,'2026-05-18 10:22:46'),(102,55,36.46,0.00,45,10,'2026-05-18 10:22:47'),(103,56,34.53,0.00,53,35,'2026-05-18 10:22:49'),(104,57,31.97,0.00,67,35,'2026-05-18 10:22:50'),(105,58,32.87,0.00,63,35,'2026-05-18 10:22:51'),(106,59,33.32,0.00,60,35,'2026-05-18 10:22:52'),(107,60,32.67,0.00,58,35,'2026-05-18 10:22:53'),(108,61,33.07,0.00,60,35,'2026-05-18 10:22:54'),(109,62,34.08,0.00,57,35,'2026-05-18 10:22:56'),(110,63,33.00,0.00,60,35,'2026-05-18 10:22:57'),(111,64,33.43,0.00,59,35,'2026-05-18 10:22:58'),(112,1,29.99,0.00,84,60,'2026-05-19 18:27:09'),(113,2,29.97,0.00,89,80,'2026-05-19 18:27:11'),(114,3,31.78,0.00,61,35,'2026-05-19 18:27:12'),(115,4,28.84,0.00,83,60,'2026-05-19 18:27:13'),(116,5,26.44,0.00,86,80,'2026-05-19 18:27:14'),(117,6,28.10,0.00,84,60,'2026-05-19 18:27:15'),(118,7,26.48,0.00,89,80,'2026-05-19 18:27:16'),(119,8,26.98,0.00,85,80,'2026-05-19 18:27:18'),(120,9,27.66,0.00,76,60,'2026-05-19 18:27:19'),(121,10,30.02,0.00,84,60,'2026-05-19 18:27:20'),(122,11,27.25,0.00,83,60,'2026-05-19 18:27:21'),(123,12,26.92,0.00,80,60,'2026-05-19 18:27:22'),(124,13,26.84,0.00,83,60,'2026-05-19 18:27:23'),(125,14,26.87,0.00,81,60,'2026-05-19 18:27:25'),(126,15,26.77,0.00,80,60,'2026-05-19 18:27:26'),(127,16,30.01,0.00,76,60,'2026-05-19 18:27:27'),(128,17,26.25,0.00,76,60,'2026-05-19 18:27:28'),(129,18,28.87,0.00,73,60,'2026-05-19 18:27:29'),(130,19,27.39,0.00,84,60,'2026-05-19 18:27:31'),(131,20,27.81,0.00,80,60,'2026-05-19 18:27:32'),(132,21,25.93,0.00,89,80,'2026-05-19 18:27:33'),(133,22,28.05,0.00,94,80,'2026-05-19 18:27:34'),(134,23,27.15,0.00,86,80,'2026-05-19 18:27:35'),(135,24,26.47,0.00,91,80,'2026-05-19 18:27:36'),(136,25,27.06,0.00,87,80,'2026-05-19 18:27:38'),(137,26,27.30,0.00,88,80,'2026-05-19 18:27:39'),(138,27,25.18,0.00,93,80,'2026-05-19 18:27:40'),(139,28,28.59,0.00,82,60,'2026-05-19 18:27:41'),(140,29,28.55,0.00,83,60,'2026-05-19 18:27:42'),(141,30,25.40,0.00,94,80,'2026-05-19 18:27:43'),(142,31,28.50,0.00,80,60,'2026-05-19 18:27:45'),(143,32,32.30,0.00,58,35,'2026-05-19 18:27:46'),(144,33,28.76,0.00,80,60,'2026-05-19 18:27:47'),(145,34,29.32,0.00,74,60,'2026-05-19 18:27:48'),(146,35,30.37,0.00,68,35,'2026-05-19 18:27:49'),(147,36,30.13,0.00,70,60,'2026-05-19 18:27:50'),(148,37,28.60,0.00,78,60,'2026-05-19 18:27:52'),(149,38,28.32,0.00,87,80,'2026-05-19 18:27:53'),(150,39,30.18,0.00,73,60,'2026-05-19 18:27:54'),(151,40,29.34,0.00,79,60,'2026-05-19 18:27:55'),(152,41,30.00,0.00,75,60,'2026-05-19 18:27:56'),(153,42,30.40,0.00,70,60,'2026-05-19 18:27:57'),(154,43,29.57,0.00,75,60,'2026-05-19 18:27:59'),(155,44,30.47,0.00,71,60,'2026-05-19 18:28:00'),(156,45,29.23,0.00,78,60,'2026-05-19 18:28:01'),(157,46,29.49,0.00,78,60,'2026-05-19 18:28:02'),(158,47,26.65,0.00,87,80,'2026-05-19 18:28:03'),(159,48,26.68,0.00,87,80,'2026-05-19 18:28:05'),(160,49,26.38,0.00,86,80,'2026-05-19 18:28:06'),(161,50,28.88,0.00,86,80,'2026-05-19 18:28:07'),(162,51,28.74,0.00,81,60,'2026-05-19 18:28:09'),(163,52,28.01,0.00,85,80,'2026-05-19 18:28:10'),(164,53,28.90,0.00,83,60,'2026-05-19 18:28:11'),(165,54,28.28,0.00,86,80,'2026-05-19 18:28:12'),(166,55,27.90,0.00,83,60,'2026-05-19 18:28:14'),(167,56,27.21,0.00,87,80,'2026-05-19 18:28:15'),(168,57,26.77,0.00,88,80,'2026-05-19 18:28:16'),(169,58,26.95,0.00,87,80,'2026-05-19 18:28:17'),(170,59,27.51,0.00,86,80,'2026-05-19 18:28:18'),(171,60,27.11,0.00,81,60,'2026-05-19 18:28:19'),(172,61,27.52,0.00,83,60,'2026-05-19 18:28:21'),(173,62,27.56,0.00,85,80,'2026-05-19 18:28:22'),(174,63,27.02,0.00,86,80,'2026-05-19 18:28:23'),(175,64,27.05,0.00,87,80,'2026-05-19 18:28:25'),(176,1,28.99,0.00,89,80,'2026-05-19 20:00:42'),(177,2,27.58,0.00,86,80,'2026-05-19 20:00:43'),(178,3,30.80,0.00,68,35,'2026-05-19 20:00:44'),(179,4,28.20,0.00,87,80,'2026-05-19 20:00:46'),(180,5,25.46,6.48,89,80,'2026-05-19 20:00:47'),(181,6,27.59,0.00,89,80,'2026-05-19 20:00:48'),(182,7,25.67,0.00,93,80,'2026-05-19 20:00:49'),(183,8,26.25,0.00,85,80,'2026-05-19 20:00:50'),(184,9,26.97,0.00,81,60,'2026-05-19 20:00:52'),(185,10,29.02,0.00,89,80,'2026-05-19 20:00:53'),(186,11,27.45,0.00,90,80,'2026-05-19 20:00:54'),(187,12,26.10,0.00,80,60,'2026-05-19 20:00:55'),(188,13,27.03,0.00,89,80,'2026-05-19 20:00:57'),(189,14,26.84,0.00,79,60,'2026-05-19 20:00:58'),(190,15,26.79,0.00,88,80,'2026-05-19 20:00:59'),(191,16,29.01,0.00,84,60,'2026-05-19 20:01:00'),(192,17,26.24,0.00,80,60,'2026-05-19 20:01:01'),(193,18,28.03,0.00,76,60,'2026-05-19 20:01:03'),(194,19,27.67,0.00,87,80,'2026-05-19 20:01:04'),(195,20,27.28,0.00,78,60,'2026-05-19 20:01:05'),(196,21,25.20,0.00,92,80,'2026-05-19 20:01:06'),(197,22,25.62,0.00,88,80,'2026-05-19 20:01:08'),(198,23,27.34,0.00,88,80,'2026-05-19 20:01:09'),(199,24,26.34,0.00,93,80,'2026-05-19 20:01:10'),(200,25,26.80,0.00,86,80,'2026-05-19 20:01:11'),(201,26,26.84,0.00,89,80,'2026-05-19 20:01:13'),(202,27,24.74,0.00,95,80,'2026-05-19 20:01:14'),(203,28,27.78,0.00,85,80,'2026-05-19 20:01:15'),(204,29,28.14,0.00,84,60,'2026-05-19 20:01:16'),(205,30,24.98,0.00,96,80,'2026-05-19 20:01:18'),(206,31,27.23,0.00,83,60,'2026-05-19 20:01:19'),(207,32,31.35,0.00,64,35,'2026-05-19 20:01:20'),(208,33,28.35,0.00,79,60,'2026-05-19 20:01:21'),(209,34,28.70,0.00,77,60,'2026-05-19 20:01:22'),(210,35,29.30,0.00,74,60,'2026-05-19 20:01:24'),(211,36,29.14,0.00,75,60,'2026-05-19 20:01:25'),(212,37,28.13,0.00,79,60,'2026-05-19 20:01:26'),(213,38,27.85,0.00,89,80,'2026-05-19 20:01:27'),(214,39,29.53,0.00,77,60,'2026-05-19 20:01:29'),(215,40,28.65,0.00,83,60,'2026-05-19 20:01:30'),(216,41,29.14,0.00,79,60,'2026-05-19 20:01:31'),(217,42,29.61,0.00,76,60,'2026-05-19 20:01:32'),(218,43,28.84,0.00,80,60,'2026-05-19 20:01:33'),(219,44,29.66,0.00,75,60,'2026-05-19 20:01:35'),(220,45,28.37,0.00,84,60,'2026-05-19 20:01:36'),(221,46,28.86,0.00,81,60,'2026-05-19 20:01:37'),(222,47,25.85,0.00,90,80,'2026-05-19 20:01:38'),(223,48,25.76,0.00,91,80,'2026-05-19 20:01:40'),(224,49,25.87,0.00,87,80,'2026-05-19 20:01:41'),(225,50,28.32,0.00,88,80,'2026-05-19 20:01:42'),(226,51,28.42,0.00,85,80,'2026-05-19 20:01:43'),(227,52,27.63,0.00,90,80,'2026-05-19 20:01:45'),(228,53,28.48,0.00,86,80,'2026-05-19 20:01:46'),(229,54,27.96,0.00,90,80,'2026-05-19 20:01:47'),(230,55,27.75,0.00,83,60,'2026-05-19 20:01:48'),(231,56,26.07,0.00,91,80,'2026-05-19 20:01:49'),(232,57,26.48,0.00,90,80,'2026-05-19 20:01:51'),(233,58,26.30,0.00,89,80,'2026-05-19 20:01:52'),(234,59,27.15,0.00,87,80,'2026-05-19 20:01:53'),(235,60,26.37,0.00,84,60,'2026-05-19 20:01:54'),(236,61,26.99,0.00,86,80,'2026-05-19 20:01:56'),(237,62,26.88,0.00,87,80,'2026-05-19 20:01:57'),(238,63,26.30,0.00,88,80,'2026-05-19 20:01:58'),(239,64,26.34,0.00,89,80,'2026-05-19 20:01:59'),(240,1,30.99,0.00,79,60,'2026-05-20 03:43:34'),(241,2,31.97,0.00,74,60,'2026-05-20 03:43:35'),(242,3,35.82,0.00,46,10,'2026-05-20 03:43:36'),(243,4,36.19,0.00,49,10,'2026-05-20 03:43:37'),(244,5,31.23,0.00,67,35,'2026-05-20 03:43:38'),(245,6,34.66,0.00,54,35,'2026-05-20 03:43:39'),(246,7,32.01,0.00,63,35,'2026-05-20 03:43:41'),(247,8,32.43,0.00,62,35,'2026-05-20 03:43:42'),(248,9,34.29,0.00,55,35,'2026-05-20 03:43:43'),(249,10,31.02,0.00,79,60,'2026-05-20 03:43:44'),(250,11,34.95,0.00,54,35,'2026-05-20 03:43:45'),(251,12,32.74,0.00,60,35,'2026-05-20 03:43:46'),(252,13,34.39,0.00,55,35,'2026-05-20 03:43:47'),(253,14,34.01,0.00,56,35,'2026-05-20 03:43:49'),(254,15,33.58,0.00,59,35,'2026-05-20 03:43:50'),(255,16,31.01,0.00,56,35,'2026-05-20 03:43:51'),(256,17,33.86,0.00,56,35,'2026-05-20 03:43:52'),(257,18,34.30,0.00,56,35,'2026-05-20 03:43:53'),(258,19,32.34,0.00,65,35,'2026-05-20 03:43:54'),(259,20,33.22,0.00,60,35,'2026-05-20 03:43:56'),(260,21,37.23,0.00,41,10,'2026-05-20 03:43:57'),(261,22,32.05,0.00,79,60,'2026-05-20 03:43:58'),(262,23,33.19,0.00,60,35,'2026-05-20 03:43:59'),(263,24,33.76,0.00,59,35,'2026-05-20 03:44:01'),(264,25,31.72,0.00,66,35,'2026-05-20 03:44:02'),(265,26,33.31,0.00,59,35,'2026-05-20 03:44:03'),(266,27,35.19,0.00,49,10,'2026-05-20 03:44:04'),(267,28,32.93,0.00,60,35,'2026-05-20 03:44:05'),(268,29,31.95,0.00,65,35,'2026-05-20 03:44:07'),(269,30,32.94,0.00,58,35,'2026-05-20 03:44:08'),(270,31,33.18,0.00,59,35,'2026-05-20 03:44:09'),(271,32,36.46,0.14,42,10,'2026-05-20 03:44:10'),(272,33,34.16,0.00,52,35,'2026-05-20 03:44:11'),(273,34,34.64,0.00,52,35,'2026-05-20 03:44:12'),(274,35,35.30,0.00,50,35,'2026-05-20 03:44:14'),(275,36,34.83,0.00,53,35,'2026-05-20 03:44:15'),(276,37,31.15,0.00,71,60,'2026-05-20 03:44:16'),(277,38,35.74,0.00,50,35,'2026-05-20 03:44:17'),(278,39,35.03,0.00,53,35,'2026-05-20 03:44:18'),(279,40,35.73,0.00,51,35,'2026-05-20 03:44:19'),(280,41,35.20,0.00,53,35,'2026-05-20 03:44:21'),(281,42,34.98,0.00,53,35,'2026-05-20 03:44:22'),(282,43,35.23,0.00,52,35,'2026-05-20 03:44:23'),(283,44,34.82,0.00,54,35,'2026-05-20 03:44:24'),(284,45,35.66,0.00,51,35,'2026-05-20 03:44:25'),(285,46,36.53,0.00,47,10,'2026-05-20 03:44:26'),(286,47,32.34,0.00,62,35,'2026-05-20 03:44:28'),(287,48,31.67,0.00,65,35,'2026-05-20 03:44:29'),(288,49,31.33,0.42,68,35,'2026-05-20 03:44:30'),(289,50,34.58,0.00,53,35,'2026-05-20 03:44:31'),(290,51,33.04,0.00,61,35,'2026-05-20 03:44:32'),(291,52,35.02,0.00,52,35,'2026-05-20 03:44:33'),(292,53,35.58,0.00,49,10,'2026-05-20 03:44:35'),(293,54,35.54,0.00,50,35,'2026-05-20 03:44:36'),(294,55,33.22,0.00,56,35,'2026-05-20 03:44:37'),(295,56,32.08,0.87,63,35,'2026-05-20 03:44:38'),(296,57,30.61,0.00,69,35,'2026-05-20 03:44:39'),(297,58,31.66,1.00,66,35,'2026-05-20 03:44:40'),(298,59,32.14,0.00,61,35,'2026-05-20 03:44:42'),(299,60,31.96,0.00,62,35,'2026-05-20 03:44:43'),(300,61,32.76,0.00,57,35,'2026-05-20 03:44:44'),(301,62,32.17,0.00,63,35,'2026-05-20 03:44:45'),(302,63,32.48,0.12,61,35,'2026-05-20 03:44:46'),(303,64,32.18,0.00,62,35,'2026-05-20 03:44:47'),(304,1,32.99,0.00,70,60,'2026-05-20 12:04:24'),(305,2,32.97,0.00,70,60,'2026-05-20 12:04:25'),(306,3,34.96,0.00,45,10,'2026-05-20 12:04:26'),(307,4,33.48,0.00,56,35,'2026-05-20 12:04:27'),(308,5,32.35,0.00,63,35,'2026-05-20 12:04:28'),(309,6,32.71,0.00,60,35,'2026-05-20 12:04:29'),(310,7,32.78,0.00,64,35,'2026-05-20 12:04:31'),(311,8,30.63,0.00,72,60,'2026-05-20 12:04:32'),(312,9,32.99,0.00,61,35,'2026-05-20 12:04:33'),(313,10,33.02,0.00,70,60,'2026-05-20 12:04:34'),(314,11,32.09,0.00,63,35,'2026-05-20 12:04:35'),(315,12,32.09,0.00,67,35,'2026-05-20 12:04:36'),(316,13,32.52,0.00,62,35,'2026-05-20 12:04:38'),(317,14,33.26,0.00,59,35,'2026-05-20 12:04:39'),(318,15,31.96,0.00,65,35,'2026-05-20 12:04:40'),(319,16,33.01,0.00,59,35,'2026-05-20 12:04:41'),(320,17,32.09,0.00,65,35,'2026-05-20 12:04:42'),(321,18,33.51,0.00,58,35,'2026-05-20 12:04:43'),(322,19,31.17,0.00,70,60,'2026-05-20 12:04:44'),(323,20,32.35,0.00,64,35,'2026-05-20 12:04:46'),(324,21,31.02,0.00,63,35,'2026-05-20 12:04:47'),(325,22,33.05,0.00,70,60,'2026-05-20 12:04:48'),(326,23,31.51,0.00,66,35,'2026-05-20 12:04:49'),(327,24,31.52,0.00,67,35,'2026-05-20 12:04:50'),(328,25,29.97,0.00,77,60,'2026-05-20 12:04:51'),(329,26,30.53,0.00,70,60,'2026-05-20 12:04:53'),(330,27,31.16,0.00,62,35,'2026-05-20 12:04:54'),(331,28,31.46,0.00,67,35,'2026-05-20 12:04:55'),(332,29,30.69,0.00,72,60,'2026-05-20 12:04:56'),(333,30,31.27,0.00,64,35,'2026-05-20 12:04:57'),(334,31,32.39,0.00,63,35,'2026-05-20 12:04:59'),(335,32,37.27,0.24,39,10,'2026-05-20 12:05:00'),(336,33,34.54,0.00,53,35,'2026-05-20 12:05:01'),(337,34,35.36,0.00,47,10,'2026-05-20 12:05:02'),(338,35,32.49,0.00,57,35,'2026-05-20 12:05:03'),(339,36,34.50,0.00,51,35,'2026-05-20 12:05:04'),(340,37,32.30,0.00,69,35,'2026-05-20 12:05:06'),(341,38,31.29,0.00,67,35,'2026-05-20 12:05:07'),(342,39,36.62,0.00,43,10,'2026-05-20 12:05:08'),(343,40,34.17,0.00,52,35,'2026-05-20 12:05:09'),(344,41,36.11,0.00,46,10,'2026-05-20 12:05:10'),(345,42,35.21,0.00,48,10,'2026-05-20 12:05:11'),(346,43,34.59,0.00,52,35,'2026-05-20 12:05:12'),(347,44,36.79,0.00,43,10,'2026-05-20 12:05:14'),(348,45,33.71,0.00,55,35,'2026-05-20 12:05:15'),(349,46,35.38,0.00,49,10,'2026-05-20 12:05:16'),(350,47,32.57,1.78,68,35,'2026-05-20 12:05:17'),(351,48,31.46,0.00,72,60,'2026-05-20 12:05:18'),(352,49,30.59,0.00,72,60,'2026-05-20 12:05:19'),(353,50,31.96,0.00,62,35,'2026-05-20 12:05:21'),(354,51,31.63,0.00,67,35,'2026-05-20 12:05:22'),(355,52,33.07,0.00,57,35,'2026-05-20 12:05:24'),(356,53,33.07,0.00,56,35,'2026-05-20 12:05:25'),(357,54,32.29,0.00,60,35,'2026-05-20 12:05:26'),(358,55,32.33,0.00,61,35,'2026-05-20 12:05:28'),(359,56,32.82,0.00,63,35,'2026-05-20 12:05:29'),(360,57,32.08,0.00,67,35,'2026-05-20 12:05:30'),(361,58,32.19,0.00,66,35,'2026-05-20 12:05:31'),(362,59,32.01,0.00,67,35,'2026-05-20 12:05:32'),(363,60,31.62,0.00,66,35,'2026-05-20 12:05:34'),(364,61,32.27,0.00,64,35,'2026-05-20 12:05:35'),(365,62,31.59,0.00,68,35,'2026-05-20 12:05:36'),(366,63,31.26,0.00,71,60,'2026-05-20 12:05:37'),(367,64,31.68,0.00,68,35,'2026-05-20 12:05:38'),(368,1,33.80,0.00,56,35,'2026-06-11 04:04:32'),(369,2,30.41,0.00,70,60,'2026-06-11 04:04:34'),(370,3,34.09,0.00,50,35,'2026-06-11 04:04:35'),(371,4,34.67,0.00,54,35,'2026-06-11 04:04:36'),(372,5,31.07,0.00,66,35,'2026-06-11 04:04:37'),(373,6,33.94,0.00,58,35,'2026-06-11 04:04:38'),(374,7,31.18,0.00,66,35,'2026-06-11 04:04:40'),(375,8,31.63,0.00,66,35,'2026-06-11 04:04:41'),(376,9,33.19,0.00,60,35,'2026-06-11 04:04:42'),(377,10,32.78,0.00,62,35,'2026-06-11 04:04:43'),(378,11,34.27,0.00,57,35,'2026-06-11 04:04:44'),(379,12,31.60,0.00,66,35,'2026-06-11 04:04:46'),(380,13,33.66,0.00,60,35,'2026-06-11 04:04:48'),(381,14,33.56,0.00,58,35,'2026-06-11 04:04:49'),(382,15,33.50,0.00,59,35,'2026-06-11 04:04:50'),(383,16,33.96,0.00,56,35,'2026-06-11 04:04:51'),(384,17,32.67,0.00,62,35,'2026-06-11 04:04:52'),(385,18,32.90,0.00,61,35,'2026-06-11 04:04:54'),(386,19,31.88,0.00,68,35,'2026-06-11 04:04:55'),(387,20,32.01,0.00,65,35,'2026-06-11 04:04:56'),(388,21,34.99,0.00,48,10,'2026-06-11 04:04:57'),(389,22,31.79,0.00,66,35,'2026-06-11 04:04:58'),(390,23,32.60,0.00,63,35,'2026-06-11 04:05:00'),(391,24,32.32,0.00,64,35,'2026-06-11 04:05:01'),(392,25,31.67,0.00,64,35,'2026-06-11 04:05:02'),(393,26,32.03,0.00,63,35,'2026-06-11 04:05:03'),(394,27,33.12,0.00,55,35,'2026-06-11 04:05:05'),(395,28,31.77,0.00,69,35,'2026-06-11 04:05:06'),(396,29,30.53,0.00,74,60,'2026-06-11 04:05:07'),(397,30,31.92,0.00,60,35,'2026-06-11 04:05:08'),(398,31,32.16,0.00,62,35,'2026-06-11 04:05:09'),(399,32,34.54,0.00,45,10,'2026-06-11 04:05:11'),(400,33,32.79,0.00,53,35,'2026-06-11 04:05:12'),(401,34,33.12,0.00,54,35,'2026-06-11 04:05:13'),(402,35,33.90,0.00,54,35,'2026-06-11 04:05:14'),(403,36,31.53,0.00,68,35,'2026-06-11 04:05:15'),(404,37,30.67,0.00,71,60,'2026-06-11 04:05:17'),(405,38,34.87,0.00,53,35,'2026-06-11 04:05:18'),(406,39,33.29,0.00,61,35,'2026-06-11 04:05:19'),(407,40,33.14,0.00,60,35,'2026-06-11 04:05:20'),(408,41,32.01,0.00,66,35,'2026-06-11 04:05:22'),(409,42,31.76,0.00,68,35,'2026-06-11 04:05:23'),(410,43,33.41,0.00,58,35,'2026-06-11 04:05:24'),(411,44,34.28,0.00,55,35,'2026-06-11 04:05:25'),(412,45,33.87,0.00,57,35,'2026-06-11 04:05:26'),(413,46,32.29,0.00,66,35,'2026-06-11 04:05:28'),(414,47,31.19,0.00,67,35,'2026-06-11 04:05:29'),(415,48,31.41,0.00,66,35,'2026-06-11 04:05:30'),(416,49,31.22,0.00,67,35,'2026-06-11 04:05:31');
/*!40000 ALTER TABLE `weather_data` ENABLE KEYS */;
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

-- Dump completed on 2026-06-11 12:54:29
