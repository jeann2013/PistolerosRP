-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: redemrp
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `bank_users`
--

DROP TABLE IF EXISTS `bank_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `money` double(22,2) DEFAULT 0.00,
  `gold` double(22,2) DEFAULT 0.00,
  `items` longtext DEFAULT '[]',
  `invspace` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_users`
--

LOCK TABLES `bank_users` WRITE;
/*!40000 ALTER TABLE `bank_users` DISABLE KEYS */;
INSERT INTO `bank_users` VALUES (1,'Valentine','steam:110000142d368bd',3,0.00,0.00,'[]',0),(2,'Valentine','steam:110000107526ebc',2,0.00,0.00,'[]',0);
/*!40000 ALTER TABLE `bank_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_inventories`
--

DROP TABLE IF EXISTS `character_inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_inventories` (
  `character_id` int(11) DEFAULT NULL,
  `inventory_type` varchar(100) NOT NULL DEFAULT 'default',
  `item_crafted_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  KEY `character_inventory_idx` (`character_id`,`inventory_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_inventories`
--

LOCK TABLES `character_inventories` WRITE;
/*!40000 ALTER TABLE `character_inventories` DISABLE KEYS */;
INSERT INTO `character_inventories` VALUES (3,'default',8,1,'2022-10-25 21:43:23'),(1,'default',26,1,'2022-10-26 23:33:25'),(2,'default',27,1,'2022-10-27 23:36:03'),(2,'default',28,1,'2022-10-27 23:36:05');
/*!40000 ALTER TABLE `character_inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `steamname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `charidentifier` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(10) COLLATE utf8mb4_bin DEFAULT 'user',
  `money` double(11,2) DEFAULT 0.00,
  `gold` double(11,2) DEFAULT 0.00,
  `rol` double(11,2) NOT NULL DEFAULT 0.00,
  `xp` int(11) DEFAULT 0,
  `healthouter` int(4) DEFAULT 500,
  `healthinner` int(4) DEFAULT 100,
  `staminaouter` int(4) DEFAULT 100,
  `staminainner` int(4) DEFAULT 100,
  `hours` float NOT NULL DEFAULT 0,
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `status` varchar(140) COLLATE utf8mb4_bin DEFAULT '{}',
  `meta` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT ' ',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT ' ',
  `skinPlayer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `compPlayer` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `jobgrade` int(11) DEFAULT 0,
  `coords` varchar(75) COLLATE utf8mb4_bin DEFAULT '{}',
  `isdead` tinyint(1) DEFAULT 0,
  `clanid` int(11) DEFAULT 0,
  `trust` int(11) DEFAULT 0,
  `supporter` int(11) DEFAULT 0,
  `walk` varchar(50) COLLATE utf8mb4_bin DEFAULT 'noanim',
  `crafting` longtext COLLATE utf8mb4_bin DEFAULT '{"medical":0,"blacksmith":0,"basic":0,"survival":0,"brewing":0,"food":0}',
  `info` longtext COLLATE utf8mb4_bin DEFAULT '{}',
  `gunsmith` double(11,2) DEFAULT 0.00,
  `ammo` longtext COLLATE utf8mb4_bin DEFAULT '{}',
  UNIQUE KEY `identifier_charidentifier` (`identifier`,`charidentifier`) USING BTREE,
  KEY `charidentifier` (`charidentifier`) USING BTREE,
  KEY `ammo` (`ammo`(768)) USING BTREE,
  KEY `clanid` (`clanid`),
  KEY `crafting` (`crafting`(768)),
  KEY `compPlayer` (`compPlayer`(768)),
  KEY `info` (`info`(768)),
  KEY `inventory` (`inventory`(768)),
  KEY `coords` (`coords`),
  KEY `money` (`money`),
  KEY `meta` (`meta`),
  KEY `steamname` (`steamname`),
  CONSTRAINT `FK_characters_users` FOREIGN KEY (`identifier`) REFERENCES `users` (`identifier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES ('steam:110000107526ebc','',2,'user',23796.93,0.00,0.00,71,264,100,1065353216,100,4.5,'{}','doctor','{\r\n  \"Hunger\": 892,\r\n  \"Thirst\": 797,\r\n  \"Metabolism\": -9974\r\n}','{}','Cuajinais','Restrepo','{\"sex\":\"mp_male\",\"HeadType\":0,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":0,\"Body\":0,\"Waist\":0,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Satchels\":-1,\"RingLh\":-1,\"Buckle\":-1,\"Boots\":2870091829,\"Mask\":106039335,\"GunbeltAccs\":-1,\"NeckWear\":-1,\"Accessories\":-1,\"Belt\":-1,\"Spats\":-1,\"Gauntlets\":53467018,\"Loadouts\":-1,\"Coat\":-1,\"Spurs\":-1,\"Cloak\":-1,\"RingRh\":95447827,\"Skirt\":-1,\"Vest\":-1,\"Pant\":3282528841,\"Holster\":-1,\"NeckTies\":-1,\"Shirt\":1380773680,\"CoatClosed\":-1,\"Gunbelt\":-1,\"Suspender\":-1,\"Glove\":1729396451,\"Bracelet\":-1,\"EyeWear\":-1,\"Chap\":-1,\"Hat\":-1,\"Poncho\":415885545}',1,'{\"y\":-1319.0,\"x\":2826.0,\"heading\":307.0,\"z\":46.0}',0,0,0,0,'MP_Style_Casual','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_RIFLE_ELEPHANT\":10,\"AMMO_RIFLE_SPLIT_POINT\":16,\"AMMO_SHOTGUN\":30,\"AMMO_REPEATER_SPLIT_POINT\":50,\"AMMO_REVOLVER\":29,\"AMMO_REPEATER\":7,\"AMMO_REPEATER_HIGH_VELOCITY\":100}'),('steam:11000010f83aa15','',1,'user',10022.10,0.00,0.00,26,350,100,1065353216,100,2,'{}','police','{\r\n  \"Hunger\": 881,\r\n  \"Thirst\": 762,\r\n  \"Metabolism\": -4184\r\n}','{}','bereber','prueba1','{\n  \"sex\": \"mp_male\",\n  \"HeadType\": 1209218150,\n  \"BodyType\": -2098115193,\n  \"LegsType\": 363641629,\n  \"HeadSize\": 0.0,\n  \"EyeBrowH\": 0.0,\n  \"EyeBrowW\": 0.0,\n  \"EyeBrowD\": 0.0,\n  \"EarsH\": 0.0,\n  \"EarsW\": 0.0,\n  \"EarsD\": 0.0,\n  \"EarsL\": 0.0,\n  \"EyeLidH\": 0.0,\n  \"EyeLidW\": 0.0,\n  \"EyeD\": 0.0,\n  \"EyeAng\": 0.0,\n  \"EyeDis\": 0.0,\n  \"EyeH\": 0.0,\n  \"NoseW\": 0.0,\n  \"NoseS\": 0.0,\n  \"NoseH\": 0.0,\n  \"NoseAng\": 0.0,\n  \"NoseC\": 0.0,\n  \"NoseDis\": 0.0,\n  \"CheekBonesH\": 0.0,\n  \"CheekBonesW\": 0.0,\n  \"CheekBonesD\": 0.0,\n  \"MouthW\": 0.0,\n  \"MouthD\": 0.0,\n  \"MouthX\": 0.0,\n  \"MouthY\": 0.0,\n  \"ULiphH\": 0.0,\n  \"ULiphW\": 0.0,\n  \"ULiphD\": 0.0,\n  \"LLiphH\": 0.0,\n  \"LLiphW\": 0.0,\n  \"LLiphD\": 0.0,\n  \"JawH\": 0.0,\n  \"JawW\": 0.0,\n  \"JawD\": 0.0,\n  \"ChinH\": 0.0,\n  \"ChinW\": 0.0,\n  \"ChinD\": 0.0,\n  \"Beard\": 4209486082,\n  \"Hair\": 879214843,\n  \"Body\": 0,\n  \"Waist\": 0,\n  \"Eyes\": 0,\n  \"Scale\": 1.0,\n  \"eyebrows_visibility\": 0,\n  \"eyebrows_tx_id\": 0,\n  \"scars_visibility\": 0,\n  \"scars_tx_id\": 0,\n  \"spots_visibility\": 0,\n  \"spots_tx_id\": 0,\n  \"disc_visibility\": 0,\n  \"disc_tx_id\": 0,\n  \"complex_visibility\": 0,\n  \"complex_tx_id\": 0,\n  \"acne_visibility\": 0,\n  \"acne_tx_id\": 0,\n  \"ageing_visibility\": 0,\n  \"ageing_tx_id\": 0,\n  \"freckles_visibility\": 0,\n  \"freckles_tx_id\": 0,\n  \"moles_visibility\": 0,\n  \"moles_tx_id\": 0,\n  \"grime_visibility\": 0,\n  \"grime_tx_id\": 0,\n  \"lipsticks_visibility\": 0,\n  \"lipsticks_tx_id\": 0,\n  \"lipsticks_palette_id\": 0,\n  \"lipsticks_palette_color_primary\": 0,\n  \"shadows_visibility\": 0,\n  \"shadows_tx_id\": 0,\n  \"shadows_palette_id\": 0,\n  \"shadows_palette_color_primary\": 0,\n  \"albedo\": -343742430\n}','{\"RingLh\":3234605618,\"CoatClosed\":-1,\"GunbeltAccs\":-1,\"Satchels\":-1,\"Chap\":-1,\"Accessories\":-1,\"Loadouts\":-1,\"RingRh\":-1,\"Gauntlets\":-1,\"Suspender\":-1,\"NeckTies\":-1,\"Shirt\":1744213676,\"Poncho\":-1,\"Buckle\":-1,\"Coat\":-1,\"Skirt\":-1,\"Holster\":-1,\"EyeWear\":-1,\"Boots\":3910092689,\"Pant\":3538234790,\"Spurs\":-1,\"Spats\":-1,\"Glove\":-1,\"NeckWear\":-1,\"Belt\":-1,\"Gunbelt\":-1,\"Hat\":3278504748,\"Vest\":-1,\"Bracelet\":-1,\"Mask\":-1,\"Cloak\":-1}',4,'{\"y\":-1291.0,\"x\":1301.0,\"heading\":214.0,\"z\":75.0}',0,0,0,0,'mp_style_drunk','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}'),('steam:110000142d368bd','',3,'user',200.00,0.00,0.00,0,1471,100,1058944814,100,0.5,'{}','unemployed','{\r\n  \"Hunger\": 550,\r\n  \"Thirst\": 105,\r\n  \"Metabolism\": -900\r\n}','{}','Jean','Cana','{\"sex\":\"mp_male\",\"HeadType\":0,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.7,\"EyeBrowH\":-1.3,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.9,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":0,\"Body\":0,\"Waist\":0,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":4734375,\"EyeWear\":-1,\"Mask\":3394073803,\"NeckWear\":-1,\"NeckTies\":-1,\"Shirt\":-1,\"Suspender\":-1,\"Vest\":150973636,\"Coat\":-1,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":-1,\"Belt\":-1,\"Buckle\":-1,\"Holster\":-1,\"Pant\":109828490,\"Skirt\":-1,\"Chap\":-1,\"Boots\":3910092689,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"heading\":95.0,\"z\":117.0,\"y\":786.0,\"x\":-318.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clothes` (
  `identifier` varchar(40) NOT NULL,
  `charid` int(11) NOT NULL,
  `clothes` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herbalists`
--

DROP TABLE IF EXISTS `herbalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herbalists` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  UNIQUE KEY `identifier_charidentifier` (`identifier`,`charidentifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herbalists`
--

LOCK TABLES `herbalists` WRITE;
/*!40000 ALTER TABLE `herbalists` DISABLE KEYS */;
/*!40000 ALTER TABLE `herbalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horse_complements`
--

DROP TABLE IF EXISTS `horse_complements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horse_complements` (
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `complements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  UNIQUE KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horse_complements`
--

LOCK TABLES `horse_complements` WRITE;
/*!40000 ALTER TABLE `horse_complements` DISABLE KEYS */;
INSERT INTO `horse_complements` VALUES ('steam:110000107526ebc',2,'[1000396653,707315902,691935155,811613109,1147825921,1712007673,62106376,414935856,3811019816,276665752,632624486,1824076046,776366243,3879727649,1667119228,2571565172]');
/*!40000 ALTER TABLE `horse_complements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT 1,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(50) DEFAULT NULL,
  `usable` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{}',
  PRIMARY KEY (`item`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('ammoarrowdynamite','Arrow Dynamite',10,1,'item_standard',1,26,'{}'),('ammoarrowfire','Arrow Fire',10,1,'item_standard',1,27,'{}'),('ammoarrowimproved','Arrow Improved',10,1,'item_standard',1,29,'{}'),('ammoarrownormal','Arrow Normal',10,1,'item_standard',1,28,'{}'),('ammoarrowpoison','Arrow Poison',10,1,'item_standard',1,31,'{}'),('ammoarrowsmallgame','Arrow Small Game',10,1,'item_standard',1,30,'{}'),('ammobolla','Bolla Ammo',10,1,'item_standard',1,37,'{}'),('ammodynamite','Dynamite Ammo',10,1,'item_standard',1,38,'{}'),('ammoelephant','Elephant Rifle Ammo',10,1,'item_standard',1,16,'{}'),('ammoknives','Knives Ammo',10,1,'item_standard',1,34,'{}'),('ammomolotov','Molotov Ammo',10,1,'item_standard',1,40,'{}'),('ammopistolexplosive','Pistol Ammo Explosive',10,1,'item_standard',1,21,'{}'),('ammopistolexpress','Pistol Ammo Express',10,1,'item_standard',1,22,'{}'),('ammopistolnormal','Pistol Ammo Normal',10,1,'item_standard',1,23,'{}'),('ammopistolsplitpoint','Pistol Ammo Splitpoint',10,1,'item_standard',1,25,'{}'),('ammopistolvelocity','Pistol Ammo Velocity',10,1,'item_standard',1,24,'{}'),('ammopoisonbottle','Poison Bottle Ammo',10,1,'item_standard',1,36,'{}'),('ammorepeaterexplosive','Repeater Ammo Explosive',10,1,'item_standard',1,1,'{}'),('ammorepeaterexpress','Repeater Ammo Express',10,1,'item_standard',1,2,'{}'),('ammorepeaternormal','Repeater Ammo Normal',10,1,'item_standard',1,3,'{}'),('ammorepeatersplitpoint','Repeater Ammo Splitpoint',10,1,'item_standard',1,5,'{}'),('ammorepeatervelocity','Repeater Ammo Velocity',10,1,'item_standard',1,4,'{}'),('ammorevolverexplosive','Revolver Ammo Explosive',10,1,'item_standard',1,6,'{}'),('ammorevolverexpress','Revolver Ammo Express',10,1,'item_standard',1,7,'{}'),('ammorevolvernormal','Revolver Ammo Normal',10,1,'item_standard',1,8,'{}'),('ammorevolversplitpoint','Revolver Ammo Splitpoint',10,1,'item_standard',1,10,'{}'),('ammorevolvervelocity','Revolver Ammo Velocity',10,1,'item_standard',1,9,'{}'),('ammorifleexplosive','Rifle Ammo Explosive',10,1,'item_standard',1,11,'{}'),('ammorifleexpress','Rifle Ammo Express',10,1,'item_standard',1,12,'{}'),('ammoriflenormal','Rifle Ammo Normal',10,1,'item_standard',1,13,'{}'),('ammoriflesplitpoint','Rifle Ammo Splitpoint',10,1,'item_standard',1,15,'{}'),('ammoriflevelocity','Rifle Ammo Velocity',10,1,'item_standard',1,14,'{}'),('ammoshotgunexplosive','Shotgun Ammo Explosive',10,1,'item_standard',1,18,'{}'),('ammoshotgunincendiary','Shotgun Ammo Incendiary',10,1,'item_standard',1,17,'{}'),('ammoshotgunnormal','Shotgun Ammo Normal',10,1,'item_standard',1,19,'{}'),('ammoshotgunslug','Shotgun Ammo Slug',10,1,'item_standard',1,20,'{}'),('ammotomahawk','Tonmahawk Ammo',10,1,'item_standard',1,35,'{}'),('ammovarmint','Varmint Ammo',10,1,'item_standard',1,32,'{}'),('ammovarminttranq','Varmint Tranquilizer Ammo',10,1,'item_standard',1,33,'{}'),('ammovoldynamite','Volatile Dynamite Ammo',10,1,'item_standard',1,39,'{}'),('ammovolmolotov','Volatile Molotov Ammo',10,1,'item_standard',1,41,'{}'),('apple','Apple',100,1,'item_standard',1,44,'{}'),('bandage','Bandage',100,1,'item_standard',1,45,'{}'),('bread','Bread',100,1,'item_standard',1,42,'{}'),('consumable_coffee','Cafe',5,1,'item_standard',1,46,'{}'),('consumable_haycube','Heno',50,1,'item_standard',1,47,'{}'),('consumable_kidneybeans_can','Lata de alubias',5,1,'item_standard',1,48,'{}'),('consumable_medicine','Medicina',3,1,'item_standard',1,49,'{}'),('consumable_peach','Melocoton',5,1,'item_standard',1,50,'{}'),('consumable_salmon_can','Lata de Salmon',5,1,'item_standard',1,51,'{}'),('herbal_medicine','Herbal Medicine',20,1,'item_standard',1,52,'{}'),('herbal_tonic','Herbal Tonic',20,1,'item_standard',1,53,'{}'),('water','Water',100,1,'item_standard',1,43,'{}');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_crafted`
--

DROP TABLE IF EXISTS `items_crafted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_crafted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `crafted_item_idx` (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_crafted`
--

LOCK TABLES `items_crafted` WRITE;
/*!40000 ALTER TABLE `items_crafted` DISABLE KEYS */;
INSERT INTO `items_crafted` VALUES (8,3,8,'2022-10-25 21:43:23','[]'),(26,1,49,'2022-10-26 23:33:25','[]'),(27,2,44,'2022-10-27 23:36:03','[]'),(28,2,43,'2022-10-27 23:36:05','[]');
/*!40000 ALTER TABLE `items_crafted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobmanager`
--

DROP TABLE IF EXISTS `jobmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobmanager` (
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  PRIMARY KEY (`identifier`,`charidentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobmanager`
--

LOCK TABLES `jobmanager` WRITE;
/*!40000 ALTER TABLE `jobmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loadout`
--

DROP TABLE IF EXISTS `loadout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ammo` varchar(255) NOT NULL DEFAULT '{}',
  `components` varchar(255) NOT NULL DEFAULT '[]',
  `dirtlevel` double DEFAULT 0,
  `mudlevel` double DEFAULT 0,
  `conditionlevel` double DEFAULT 0,
  `rustlevel` double DEFAULT 0,
  `used` tinyint(4) DEFAULT 0,
  `dropped` int(11) NOT NULL DEFAULT 0,
  `comps` varchar(5550) NOT NULL DEFAULT '{}',
  `used2` tinyint(4) NOT NULL DEFAULT 0,
  `curr_inv` varchar(100) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loadout`
--

LOCK TABLES `loadout` WRITE;
/*!40000 ALTER TABLE `loadout` DISABLE KEYS */;
INSERT INTO `loadout` VALUES (2,'',2,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(3,'steam:11000010f83aa15',1,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(9,'',2,'WEAPON_KIT_BINOCULARS','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(10,'',2,'WEAPON_THROWN_BOLAS','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(12,'steam:110000142d368bd',3,'WEAPON_MELEE_KNIFE','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(13,'',2,'WEAPON_PISTOL_MAUSER','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(14,'',2,'WEAPON_PISTOL_VOLCANIC','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(15,'',2,'WEAPON_SHOTGUN_REPEATING','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(16,'',2,'WEAPON_PISTOL_SEMIAUTO','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(17,'',2,'WEAPON_RIFLE_SPRINGFIELD','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(18,'',2,'WEAPON_RIFLE_SPRINGFIELD','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(19,'',2,'WEAPON_MELEE_HATCHET_HUNTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(20,'',2,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(26,'',2,'WEAPON_REPEATER_WINCHESTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(27,'steam:110000107526ebc',2,'WEAPON_REPEATER_HENRY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(28,'steam:110000107526ebc',2,'WEAPON_SNIPERRIFLE_ROLLINGBLOCK','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(29,'',2,'WEAPON_THROWN_MOLOTOV','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(30,'',2,'WEAPON_MELEE_HAMMER','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(31,'steam:110000107526ebc',2,'WEAPON_MELEE_HATCHET','[]','[]',0,0,0,0,1,0,'{}',0,'default'),(32,'steam:11000010f83aa15',1,'WEAPON_MELEE_HATCHET','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(34,'steam:110000107526ebc',2,'WEAPON_MELEE_KNIFE','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(35,'steam:11000010f83aa15',1,'WEAPON_MELEE_HATCHET','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default');
/*!40000 ALTER TABLE `loadout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailbox_mails`
--

DROP TABLE IF EXISTS `mailbox_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailbox_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(50) DEFAULT NULL,
  `sender_firstname` varchar(50) DEFAULT NULL,
  `sender_lastname` varchar(50) DEFAULT NULL,
  `receiver_id` varchar(50) DEFAULT NULL,
  `receiver_firstname` varchar(50) DEFAULT NULL,
  `receiver_lastname` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `opened` tinyint(1) DEFAULT 0,
  `received_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailbox_mails`
--

LOCK TABLES `mailbox_mails` WRITE;
/*!40000 ALTER TABLE `mailbox_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailbox_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outfits`
--

DROP TABLE IF EXISTS `outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outfits` (
  `identifier` varchar(40) NOT NULL,
  `charid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `clothes` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outfits`
--

LOCK TABLES `outfits` WRITE;
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skins`
--

DROP TABLE IF EXISTS `skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skins` (
  `identifier` varchar(40) NOT NULL,
  `charid` int(11) NOT NULL,
  `skin` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skins`
--

LOCK TABLES `skins` WRITE;
/*!40000 ALTER TABLE `skins` DISABLE KEYS */;
/*!40000 ALTER TABLE `skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stables`
--

DROP TABLE IF EXISTS `stables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `modelname` varchar(70) NOT NULL,
  `type` varchar(11) NOT NULL,
  `status` longtext DEFAULT NULL,
  `xp` int(11) DEFAULT 0,
  `injured` int(11) DEFAULT 0,
  `gear` longtext DEFAULT NULL,
  `isDefault` int(11) NOT NULL DEFAULT 0,
  `inventory` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stables`
--

LOCK TABLES `stables` WRITE;
/*!40000 ALTER TABLE `stables` DISABLE KEYS */;
INSERT INTO `stables` VALUES (1,'steam:110000107526ebc',2,'prueba1','A_C_Horse_Kladruber_Silver','horse',NULL,0,0,'{\r\n  \"blanket\": 1000396653,\r\n  \"horn\": 707315902,\r\n  \"bag\": 691935155,\r\n  \"tail\": 811613109,\r\n  \"mane\": 1147825921,\r\n  \"saddle\": 1712007673,\r\n  \"stirrups\": 62106376,\r\n  \"bedroll\": 414935856,\r\n  \"lantern\": 0,\r\n  \"mask\": 3811019816\r\n}',0,NULL),(2,'steam:11000010f83aa15',1,'prueba1','A_C_Horse_AmericanPaint_Greyovero','horse',NULL,0,0,NULL,1,NULL),(3,'steam:110000107526ebc',2,'prueba2','A_C_Horse_MissouriFoxTrotter_SableChampagne','horse',NULL,0,0,NULL,0,NULL),(4,'steam:110000107526ebc',2,'carro1','chuckwagon000x','cart',NULL,0,0,NULL,0,NULL),(5,'steam:110000107526ebc',2,'prueba3','A_C_Horse_SuffolkPunch_RedChestnut','horse',NULL,0,0,'{\r\n  \"blanket\": 0,\r\n  \"horn\": 276665752,\r\n  \"bag\": 0,\r\n  \"tail\": 632624486,\r\n  \"mane\": 1824076046,\r\n  \"saddle\": 776366243,\r\n  \"stirrups\": 3879727649,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 1667119228,\r\n  \"mask\": 2571565172\r\n}',1,NULL),(6,'steam:11000010f83aa15',1,'prueba11','huntercart01','cart',NULL,0,0,NULL,1,NULL),(7,'steam:110000107526ebc',2,'prueba4','A_C_Horse_Thoroughbred_BlackChestnut','horse',NULL,0,0,NULL,0,NULL),(8,'steam:110000107526ebc',2,'prueba5','A_C_Horse_AmericanStandardbred_Black','horse',NULL,0,0,NULL,0,NULL);
/*!40000 ALTER TABLE `stables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_inventory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `charid` int(11) NOT NULL,
  `items` varchar(16000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_inventory`
--

LOCK TABLES `user_inventory` WRITE;
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_locker`
--

DROP TABLE IF EXISTS `user_locker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_locker` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `charid` int(11) NOT NULL,
  `items` varchar(16000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_locker`
--

LOCK TABLES `user_locker` WRITE;
/*!40000 ALTER TABLE `user_locker` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_locker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(50) DEFAULT 'user',
  `warnings` int(11) DEFAULT 0,
  `banned` tinyint(1) DEFAULT NULL,
  `banneduntil` int(10) DEFAULT 0,
  `char` varchar(50) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('steam:110000107526ebc','user',0,0,0,'false'),('steam:11000010f83aa15','user',0,0,0,'false'),('steam:110000142d368bd','user',0,0,0,'false'),('steam:110000156bd50f6','user',0,0,0,'false');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `firstconnection` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist`
--

LOCK TABLES `whitelist` WRITE;
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
INSERT INTO `whitelist` VALUES (1,'steam:11000010f83aa15',0,0),(2,'steam:110000107526ebc',0,0),(3,'steam:110000142d368bd',0,0);
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 21:54:43
