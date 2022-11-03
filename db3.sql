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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_users`
--

LOCK TABLES `bank_users` WRITE;
/*!40000 ALTER TABLE `bank_users` DISABLE KEYS */;
INSERT INTO `bank_users` VALUES (1,'Valentine','steam:110000142d368bd',3,13475.00,0.00,'[]',0),(2,'Valentine','steam:110000107526ebc',2,0.00,0.00,'[]',0),(3,'Valentine','steam:11000010274612f',5,1050.00,0.00,'[]',0),(4,'Valentine','steam:110000115662cee',7,2000.00,0.00,'[]',0);
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
INSERT INTO `character_inventories` VALUES (4,'default',29,1,'2022-10-29 07:03:06'),(5,'default',32,3,'2022-10-29 18:20:43'),(2,'default',37,8,'2022-10-29 18:47:21'),(2,'default',38,4,'2022-10-29 18:47:55'),(5,'default',40,6,'2022-10-29 18:50:33'),(6,'default',41,2,'2022-10-29 19:08:35'),(5,'default',45,2,'2022-10-29 19:40:08'),(5,'default',46,8,'2022-10-29 19:44:52'),(7,'default',48,5,'2022-10-29 20:04:23'),(2,'default',54,6,'2022-10-29 21:38:08'),(7,'default',55,3,'2022-10-29 21:38:47'),(6,'default',57,5,'2022-10-30 03:40:59'),(6,'default',59,1,'2022-10-30 03:49:08'),(6,'default',60,4,'2022-10-30 03:49:12'),(7,'default',71,5,'2022-10-30 13:43:53'),(7,'default',75,10,'2022-10-30 13:51:25'),(7,'default',76,10,'2022-10-30 14:43:13'),(5,'default',80,1,'2022-10-30 15:40:31'),(1,'default',87,1,'2022-10-30 15:59:07'),(5,'default',88,10,'2022-10-30 16:23:16'),(1,'default',93,1,'2022-10-30 17:05:31'),(9,'default',94,1,'2022-10-30 17:08:14'),(10,'default',95,1,'2022-10-30 17:28:24'),(1,'default',96,8,'2022-10-30 17:38:25'),(2,'default',97,8,'2022-10-30 17:40:27'),(2,'default',102,10,'2022-10-30 17:45:19'),(1,'default',107,2,'2022-10-30 17:50:22'),(1,'default',108,3,'2022-10-30 17:51:43'),(2,'default',120,16,'2022-10-30 23:00:09'),(2,'default',124,14,'2022-10-30 23:02:43'),(2,'default',127,2,'2022-10-30 23:06:55'),(2,'default',153,17,'2022-10-31 05:47:16'),(2,'default',154,4,'2022-10-31 05:47:35'),(2,'default',156,22,'2022-10-31 05:48:01'),(2,'default',159,5,'2022-11-01 23:32:02'),(11,'default',161,1,'2022-11-02 01:32:58'),(2,'default',163,16,'2022-11-02 01:51:14'),(2,'default',167,4,'2022-11-02 02:37:24'),(2,'default',170,7,'2022-11-02 02:49:24'),(2,'default',173,8,'2022-11-02 18:29:41'),(2,'default',175,1,'2022-11-02 18:35:19'),(2,'default',176,2,'2022-11-02 18:35:23'),(2,'default',177,3,'2022-11-02 18:35:27'),(2,'default',178,3,'2022-11-02 18:35:30'),(13,'default',181,1,'2022-11-02 19:10:33'),(3,'default',184,4,'2022-11-03 00:51:27'),(3,'default',187,2,'2022-11-03 01:12:39'),(2,'default',188,5,'2022-11-03 02:33:33'),(2,'default',189,3,'2022-11-03 03:12:46'),(2,'default',191,13,'2022-11-03 03:24:42'),(3,'default',192,1,'2022-11-03 03:28:54'),(2,'default',195,4,'2022-11-03 04:02:50'),(2,'default',197,5,'2022-11-03 04:03:05'),(2,'default',200,1,'2022-11-03 04:05:25'),(2,'default',208,1,'2022-11-03 20:07:55'),(2,'default',209,1,'2022-11-03 20:47:10'),(3,'default',212,9,'2022-11-03 20:59:31'),(3,'default',213,8,'2022-11-03 21:02:40'),(3,'default',214,10,'2022-11-03 21:34:30'),(3,'default',215,9,'2022-11-03 21:34:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES ('steam:11000010274612f','',5,'admin',46685.90,0.00,0.00,24,158,100,1065353216,100,2,'{}','doctor','{\r\n  \"Hunger\": 723,\r\n  \"Thirst\": 456,\r\n  \"Metabolism\": -1716\r\n}','{}','John','casper','{\"sex\":\"mp_male\",\"HeadType\":0,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":0,\"Body\":0,\"Waist\":0,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Coat\":98552328,\"RingLh\":-1,\"EyeWear\":-1,\"Glove\":-1,\"Hat\":402604760,\"Suspender\":-1,\"CoatClosed\":-1,\"GunbeltAccs\":-1,\"Belt\":-1,\"Cloak\":-1,\"Shirt\":-1,\"Pant\":4032906168,\"Satchels\":-1,\"Loadouts\":496888497,\"Holster\":3741550548,\"Gauntlets\":-1,\"NeckWear\":-1,\"Spats\":-1,\"Mask\":-1,\"Spurs\":-1,\"Bracelet\":-1,\"RingRh\":-1,\"Buckle\":-1,\"Skirt\":-1,\"Chap\":-1,\"Accessories\":-1,\"Gunbelt\":1382144499,\"Boots\":2639496376,\"Vest\":-1,\"Poncho\":-1,\"NeckTies\":-1}',4,'{\"y\":792.0,\"x\":-309.0,\"heading\":315.0,\"z\":117.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_SHOTGUN_SLUG\":39,\"AMMO_RIFLE_HIGH_VELOCITY\":87,\"AMMO_REPEATER_SPLIT_POINT\":76,\"AMMO_REVOLVER\":173}'),('steam:110000106b0b177','',12,'user',8089.00,0.00,0.00,24,348,100,1063959511,100,1,'{}','unemployed','{\r\n  \"Hunger\": 804,\r\n  \"Thirst\": 624,\r\n  \"Metabolism\": -2544\r\n}','{}','Chris','Marshall','{\"sex\":\"mp_male\",\"HeadType\":-1598141829,\"BodyType\":543187419,\"LegsType\":-2068143351,\"HeadSize\":0.5,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":2679509709,\"Hair\":2869758343,\"Body\":0,\"Waist\":0,\"Eyes\":612262189,\"Scale\":0.9,\"eyebrows_visibility\":1,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":1516563803,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":179443688,\"NeckTies\":-1,\"Shirt\":2777978462,\"Suspender\":-1,\"Vest\":517353259,\"Coat\":-1,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":181282117,\"Belt\":-1,\"Buckle\":196919272,\"Holster\":797308288,\"Pant\":1677792880,\"Skirt\":-1,\"Chap\":-1,\"Boots\":3659530852,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"z\":119.0,\"y\":504.0,\"x\":-2273.0,\"heading\":65.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_REVOLVER\":100,\"AMMO_RIFLE_ELEPHANT\":10,\"AMMO_RIFLE\":26}'),('steam:110000107526ebc','',2,'user',21312.34,0.00,0.00,163,379,100,1065353216,100,11.5,'{}','doctor','{\r\n  \"Hunger\": 309,\r\n  \"Thirst\": 163,\r\n  \"Metabolism\": -10000\r\n}','{}','Cuajinais','Restrepo','{\n  \"sex\": \"mp_male\",\n  \"HeadType\": 0,\n  \"BodyType\": 0,\n  \"LegsType\": 0,\n  \"HeadSize\": 0.0,\n  \"EyeBrowH\": 0.0,\n  \"EyeBrowW\": 0.0,\n  \"EyeBrowD\": 0.0,\n  \"EarsH\": 0.0,\n  \"EarsW\": 0.0,\n  \"EarsD\": 0.0,\n  \"EarsL\": 0.0,\n  \"EyeLidH\": 0.0,\n  \"EyeLidW\": 0.0,\n  \"EyeD\": 0.0,\n  \"EyeAng\": 0.0,\n  \"EyeDis\": 0.0,\n  \"EyeH\": 0.0,\n  \"NoseW\": 0.0,\n  \"NoseS\": 0.0,\n  \"NoseH\": 0.0,\n  \"NoseAng\": 0.0,\n  \"NoseC\": 0.0,\n  \"NoseDis\": 0.0,\n  \"CheekBonesH\": 0.0,\n  \"CheekBonesW\": 0.0,\n  \"CheekBonesD\": 0.0,\n  \"MouthW\": 0.0,\n  \"MouthD\": 0.0,\n  \"MouthX\": 0.0,\n  \"MouthY\": 0.0,\n  \"ULiphH\": 0.0,\n  \"ULiphW\": 0.0,\n  \"ULiphD\": 0.0,\n  \"LLiphH\": 0.0,\n  \"LLiphW\": 0.0,\n  \"LLiphD\": 0.0,\n  \"JawH\": 0.0,\n  \"JawW\": 0.0,\n  \"JawD\": 0.0,\n  \"ChinH\": 0.0,\n  \"ChinW\": 0.0,\n  \"ChinD\": 0.0,\n  \"Beard\": 0,\n  \"Hair\": 2059530093,\n  \"Body\": 0,\n  \"Waist\": 0,\n  \"Eyes\": 0,\n  \"Scale\": 1.0,\n  \"eyebrows_visibility\": 0,\n  \"eyebrows_tx_id\": 0,\n  \"scars_visibility\": 0,\n  \"scars_tx_id\": 0,\n  \"spots_visibility\": 0,\n  \"spots_tx_id\": 0,\n  \"disc_visibility\": 0,\n  \"disc_tx_id\": 0,\n  \"complex_visibility\": 0,\n  \"complex_tx_id\": 0,\n  \"acne_visibility\": 0,\n  \"acne_tx_id\": 0,\n  \"ageing_visibility\": 0,\n  \"ageing_tx_id\": 0,\n  \"freckles_visibility\": 0,\n  \"freckles_tx_id\": 0,\n  \"moles_visibility\": 0,\n  \"moles_tx_id\": 0,\n  \"grime_visibility\": 0,\n  \"grime_tx_id\": 0,\n  \"lipsticks_visibility\": 0,\n  \"lipsticks_tx_id\": 0,\n  \"lipsticks_palette_id\": 0,\n  \"lipsticks_palette_color_primary\": 0,\n  \"shadows_visibility\": 0,\n  \"shadows_tx_id\": 0,\n  \"shadows_palette_id\": 0,\n  \"shadows_palette_color_primary\": 0,\n  \"albedo\": 317354806\n}','{\"Satchels\":-1,\"GunbeltAccs\":-1,\"Buckle\":-1,\"Accessories\":-1,\"Hat\":559804374,\"Suspender\":-1,\"RingLh\":-1,\"RingRh\":-1,\"Spurs\":-1,\"NeckWear\":-1,\"Cloak\":-1,\"Loadouts\":-1,\"Poncho\":88394759,\"Pant\":3282528841,\"Holster\":-1,\"Vest\":-1,\"Skirt\":-1,\"Bracelet\":-1,\"NeckTies\":-1,\"Spats\":-1,\"Coat\":-1,\"Chap\":-1,\"Shirt\":1501218433,\"Boots\":2870091829,\"Gauntlets\":-1,\"Belt\":-1,\"Mask\":-1,\"Gunbelt\":-1,\"EyeWear\":-1,\"Glove\":-1,\"CoatClosed\":-1}',1,'{\"y\":785.0,\"z\":119.0,\"heading\":70.0,\"x\":-246.0}',0,0,0,0,'MP_Style_Casual','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_RIFLE_ELEPHANT\":10,\"AMMO_REVOLVER_HIGH_VELOCITY\":29,\"AMMO_RIFLE\":0,\"AMMO_SHOTGUN\":53,\"AMMO_REPEATER_HIGH_VELOCITY\":100,\"AMMO_REPEATER\":179,\"AMMO_ARROW\":16,\"AMMO_REVOLVER\":0,\"AMMO_RIFLE_SPLIT_POINT\":38,\"AMMO_REPEATER_SPLIT_POINT\":8}'),('steam:110000107526ebc','',13,'user',1624.64,0.00,0.00,54,350,100,1065353216,100,0,'{}','unemployed','{\r\n  \"Hunger\": 985,\r\n  \"Thirst\": 971,\r\n  \"Metabolism\": -1128\r\n}','{}','Samuel','Bolton','{\"sex\":\"mp_male\",\"HeadType\":0,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":0,\"Body\":0,\"Waist\":0,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":-1,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":-1,\"NeckTies\":-1,\"Shirt\":-1,\"Suspender\":-1,\"Vest\":-1,\"Coat\":-1,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":-1,\"Belt\":-1,\"Buckle\":-1,\"Holster\":-1,\"Pant\":-1,\"Skirt\":-1,\"Chap\":-1,\"Boots\":-1,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"y\":791.0,\"z\":117.0,\"heading\":169.0,\"x\":-305.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}'),('steam:11000010b865e6f','',10,'user',135.00,0.00,0.00,0,80,50,1061529442,100,0,'{}','unemployed','{\r\n  \"Hunger\": 850,\r\n  \"Thirst\": 703,\r\n  \"Metabolism\": -300\r\n}','{}','Luis','henriqueto','{\"sex\":\"mp_male\",\"HeadType\":-2064391035,\"BodyType\":-1168547251,\"LegsType\":-2068143351,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":122428071,\"Hair\":2690487796,\"Body\":3925619106,\"Waist\":2549153037,\"Eyes\":612262189,\"Scale\":1.0,\"eyebrows_visibility\":1,\"eyebrows_tx_id\":2,\"scars_visibility\":1,\"scars_tx_id\":2,\"spots_visibility\":1,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":253,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":1509262315,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":1039947233,\"NeckTies\":-1,\"Shirt\":512611169,\"Suspender\":2815290590,\"Vest\":805623875,\"Coat\":1964266686,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":305923308,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":351104126,\"Belt\":271524070,\"Buckle\":-1,\"Holster\":-1,\"Pant\":16798151,\"Skirt\":-1,\"Chap\":-1,\"Boots\":3040444105,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"z\":117.0,\"heading\":321.0,\"x\":-317.0,\"y\":788.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}'),('steam:11000010f83aa15','',1,'user',6252.15,0.00,0.00,26,318,100,1065353216,100,3,'{}','police','{\r\n  \"Hunger\": 914,\r\n  \"Thirst\": 841,\r\n  \"Metabolism\": -6896\r\n}','{}','bereber','prueba1','{\n  \"sex\": \"mp_male\",\n  \"HeadType\": 1209218150,\n  \"BodyType\": -2098115193,\n  \"LegsType\": 363641629,\n  \"HeadSize\": 0.0,\n  \"EyeBrowH\": 0.0,\n  \"EyeBrowW\": 0.0,\n  \"EyeBrowD\": 0.0,\n  \"EarsH\": 0.0,\n  \"EarsW\": 0.0,\n  \"EarsD\": 0.0,\n  \"EarsL\": 0.0,\n  \"EyeLidH\": 0.0,\n  \"EyeLidW\": 0.0,\n  \"EyeD\": 0.0,\n  \"EyeAng\": 0.0,\n  \"EyeDis\": 0.0,\n  \"EyeH\": 0.0,\n  \"NoseW\": 0.0,\n  \"NoseS\": 0.0,\n  \"NoseH\": 0.0,\n  \"NoseAng\": 0.0,\n  \"NoseC\": 0.0,\n  \"NoseDis\": 0.0,\n  \"CheekBonesH\": 0.0,\n  \"CheekBonesW\": 0.0,\n  \"CheekBonesD\": 0.0,\n  \"MouthW\": 0.0,\n  \"MouthD\": 0.0,\n  \"MouthX\": 0.0,\n  \"MouthY\": 0.0,\n  \"ULiphH\": 0.0,\n  \"ULiphW\": 0.0,\n  \"ULiphD\": 0.0,\n  \"LLiphH\": 0.0,\n  \"LLiphW\": 0.0,\n  \"LLiphD\": 0.0,\n  \"JawH\": 0.0,\n  \"JawW\": 0.0,\n  \"JawD\": 0.0,\n  \"ChinH\": 0.0,\n  \"ChinW\": 0.0,\n  \"ChinD\": 0.0,\n  \"Beard\": 4209486082,\n  \"Hair\": 879214843,\n  \"Body\": 0,\n  \"Waist\": 0,\n  \"Eyes\": 0,\n  \"Scale\": 1.0,\n  \"eyebrows_visibility\": 0,\n  \"eyebrows_tx_id\": 0,\n  \"scars_visibility\": 0,\n  \"scars_tx_id\": 0,\n  \"spots_visibility\": 0,\n  \"spots_tx_id\": 0,\n  \"disc_visibility\": 0,\n  \"disc_tx_id\": 0,\n  \"complex_visibility\": 0,\n  \"complex_tx_id\": 0,\n  \"acne_visibility\": 0,\n  \"acne_tx_id\": 0,\n  \"ageing_visibility\": 0,\n  \"ageing_tx_id\": 0,\n  \"freckles_visibility\": 0,\n  \"freckles_tx_id\": 0,\n  \"moles_visibility\": 0,\n  \"moles_tx_id\": 0,\n  \"grime_visibility\": 0,\n  \"grime_tx_id\": 0,\n  \"lipsticks_visibility\": 0,\n  \"lipsticks_tx_id\": 0,\n  \"lipsticks_palette_id\": 0,\n  \"lipsticks_palette_color_primary\": 0,\n  \"shadows_visibility\": 0,\n  \"shadows_tx_id\": 0,\n  \"shadows_palette_id\": 0,\n  \"shadows_palette_color_primary\": 0,\n  \"albedo\": -343742430\n}','{\"RingLh\":3234605618,\"CoatClosed\":-1,\"GunbeltAccs\":-1,\"Satchels\":-1,\"Chap\":-1,\"Accessories\":-1,\"Loadouts\":-1,\"RingRh\":-1,\"Gauntlets\":-1,\"Suspender\":-1,\"NeckTies\":-1,\"Shirt\":1744213676,\"Poncho\":-1,\"Buckle\":-1,\"Coat\":-1,\"Skirt\":-1,\"Holster\":-1,\"EyeWear\":-1,\"Boots\":3910092689,\"Pant\":3538234790,\"Spurs\":-1,\"Spats\":-1,\"Glove\":-1,\"NeckWear\":-1,\"Belt\":-1,\"Gunbelt\":-1,\"Hat\":3278504748,\"Vest\":-1,\"Bracelet\":-1,\"Mask\":-1,\"Cloak\":-1}',4,'{\"x\":-322.0,\"heading\":147.0,\"z\":117.0,\"y\":736.0}',0,0,0,0,'mp_style_drunk','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_SHOTGUN\":24,\"AMMO_RIFLE_SPLIT_POINT\":50,\"AMMO_RIFLE_HIGH_VELOCITY\":100,\"AMMO_RIFLE\":100,\"AMMO_22\":9,\"AMMO_RIFLE_EXPRESS\":100,\"AMMO_REVOLVER_HIGH_VELOCITY\":70}'),('steam:1100001137bdbfe','',6,'admin',199701.00,0.00,0.00,0,366,100,1065353216,100,2.5,'{}','unemployed','{\r\n  \"Hunger\": 955,\r\n  \"Thirst\": 911,\r\n  \"Metabolism\": -700\r\n}','{}','Ashton','Wesley','{\"sex\":\"mp_male\",\"HeadType\":1209218150,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":75152474,\"Hair\":1788889546,\"Body\":0,\"Waist\":0,\"Eyes\":1552505114,\"Scale\":1.1,\"eyebrows_visibility\":1,\"eyebrows_tx_id\":7,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":1,\"ageing_tx_id\":0,\"freckles_visibility\":1,\"freckles_tx_id\":1,\"moles_visibility\":1,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"RingRh\":-1,\"CoatClosed\":-1,\"Spats\":-1,\"Boots\":3016049040,\"Chap\":-1,\"Satchels\":-1,\"Accessories\":2083997285,\"Vest\":781508287,\"Bracelet\":-1,\"Suspender\":-1,\"Mask\":-1,\"EyeWear\":-1,\"RingLh\":-1,\"Skirt\":-1,\"Gunbelt\":-1,\"Gauntlets\":-1,\"Coat\":1071687452,\"NeckTies\":-1,\"GunbeltAccs\":-1,\"Spurs\":-1,\"Glove\":2025391138,\"Pant\":729423724,\"Hat\":2694211002,\"Holster\":-1,\"Buckle\":-1,\"Belt\":-1,\"Poncho\":-1,\"NeckWear\":479789096,\"Loadouts\":-1,\"Cloak\":-1,\"Shirt\":146938739}',0,'{\"y\":802.0,\"x\":-357.0,\"heading\":233.0,\"z\":116.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_REVOLVER\":175,\"AMMO_SHOTGUN\":0}'),('steam:110000115662cee','',7,'admin',2225.10,0.00,0.00,134,177,100,1065353216,100,3.5,'{}','police','{\r\n  \"Hunger\": 967,\r\n  \"Thirst\": 733,\r\n  \"Metabolism\": -3798\r\n}','{}','Roy','Moore','{\n  \"sex\": \"mp_male\",\n  \"HeadType\": -1598141829,\n  \"BodyType\": 1210379577,\n  \"LegsType\": -744001397,\n  \"HeadSize\": 0.4,\n  \"EyeBrowH\": 0.5,\n  \"EyeBrowW\": 0.5,\n  \"EyeBrowD\": 0.5,\n  \"EarsH\": 0.5,\n  \"EarsW\": 0.6,\n  \"EarsD\": 0.7,\n  \"EarsL\": 0.7,\n  \"EyeLidH\": 0.7,\n  \"EyeLidW\": 0.6,\n  \"EyeD\": 0.0,\n  \"EyeAng\": 0.0,\n  \"EyeDis\": 0.0,\n  \"EyeH\": 0.0,\n  \"NoseW\": 0.0,\n  \"NoseS\": 0.0,\n  \"NoseH\": 0.0,\n  \"NoseAng\": 0.0,\n  \"NoseC\": 0.0,\n  \"NoseDis\": 0.0,\n  \"CheekBonesH\": 0.0,\n  \"CheekBonesW\": 0.0,\n  \"CheekBonesD\": 0.0,\n  \"MouthW\": 0.0,\n  \"MouthD\": 0.0,\n  \"MouthX\": 0.0,\n  \"MouthY\": 0.0,\n  \"ULiphH\": 0.0,\n  \"ULiphW\": 0.0,\n  \"ULiphD\": 0.0,\n  \"LLiphH\": 0.0,\n  \"LLiphW\": 0.0,\n  \"LLiphD\": 0.0,\n  \"JawH\": 0.0,\n  \"JawW\": 0.0,\n  \"JawD\": 0.0,\n  \"ChinH\": 0.0,\n  \"ChinW\": 0.0,\n  \"ChinD\": 0.0,\n  \"Beard\": 3811269149,\n  \"Hair\": 4199650471,\n  \"Body\": 3925619106,\n  \"Waist\": 3969033807,\n  \"Eyes\": 4030267507,\n  \"Scale\": 0.75,\n  \"eyebrows_visibility\": 1,\n  \"eyebrows_tx_id\": 3,\n  \"scars_visibility\": 0,\n  \"scars_tx_id\": 0,\n  \"spots_visibility\": 0,\n  \"spots_tx_id\": 0,\n  \"disc_visibility\": 0,\n  \"disc_tx_id\": 0,\n  \"complex_visibility\": 0,\n  \"complex_tx_id\": 0,\n  \"acne_visibility\": 0,\n  \"acne_tx_id\": 0,\n  \"ageing_visibility\": 0,\n  \"ageing_tx_id\": 0,\n  \"freckles_visibility\": 0,\n  \"freckles_tx_id\": 0,\n  \"moles_visibility\": 0,\n  \"moles_tx_id\": 0,\n  \"grime_visibility\": 0,\n  \"grime_tx_id\": 0,\n  \"lipsticks_visibility\": 0,\n  \"lipsticks_tx_id\": 0,\n  \"lipsticks_palette_id\": 0,\n  \"lipsticks_palette_color_primary\": 0,\n  \"shadows_visibility\": 0,\n  \"shadows_tx_id\": 0,\n  \"shadows_palette_id\": 0,\n  \"shadows_palette_color_primary\": 0,\n  \"albedo\": 1557597939\n}','{\"NeckWear\":65060921,\"RingRh\":3742761105,\"GunbeltAccs\":-1,\"EyeWear\":1000448224,\"Suspender\":1731856201,\"Coat\":-1,\"Spats\":-1,\"Hat\":-1,\"Loadouts\":118271052,\"NeckTies\":-1,\"Satchels\":-1,\"RingLh\":628815846,\"Bracelet\":3914028312,\"Mask\":-1,\"Poncho\":-1,\"Glove\":305923308,\"CoatClosed\":-1,\"Chap\":-1,\"Vest\":1020929636,\"Spurs\":-1,\"Belt\":27101825,\"Cloak\":-1,\"Buckle\":202094695,\"Gunbelt\":1082956942,\"Pant\":339532923,\"Gauntlets\":-1,\"Skirt\":-1,\"Boots\":2574197690,\"Shirt\":340311767,\"Holster\":3727896598,\"Accessories\":106536658}',5,'{\"z\":117.0,\"heading\":125.0,\"x\":-306.0,\"y\":792.0}',0,0,0,0,'mp_style_inquisitive','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_SHOTGUN_SLUG\":17,\"AMMO_PISTOL_HIGH_VELOCITY\":89,\"AMMO_REPEATER_SPLIT_POINT\":0,\"AMMO_REVOLVER\":199,\"AMMO_RIFLE_EXPRESS\":86}'),('steam:1100001348c2095','',11,'user',200.00,0.00,0.00,0,300,50,1065353216,100,0,'{}','unemployed','{\n  \"Hunger\": 1000,\n  \"Thirst\": 1000,\n  \"Metabolism\": 0\n}','{}','Jade','Codsmith','{\"sex\":\"mp_male\",\"HeadType\":1901130586,\"BodyType\":543187419,\"LegsType\":-2068143351,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":2115010028,\"Hair\":2735431297,\"Body\":3925619106,\"Waist\":2249546070,\"Eyes\":329402181,\"Scale\":1.2,\"eyebrows_visibility\":1,\"eyebrows_tx_id\":6,\"scars_visibility\":1,\"scars_tx_id\":6,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":277207897,\"EyeWear\":442424923,\"Mask\":-1,\"NeckWear\":1719236933,\"NeckTies\":-1,\"Shirt\":1858166584,\"Suspender\":2770469649,\"Vest\":1954087201,\"Coat\":600930118,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":2358904833,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":240101607,\"Belt\":898979011,\"Buckle\":397737916,\"Holster\":3052944823,\"Pant\":3865047466,\"Skirt\":-1,\"Chap\":-1,\"Boots\":4149075669,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":639284852,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"z\":114.0,\"y\":634.0,\"x\":-181.0,\"heading\":55.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}'),('steam:1100001414294dd','',9,'admin',200.00,0.00,0.00,0,322,100,1065353216,100,0,'{}','unemployed','{\r\n  \"Hunger\": 839,\r\n  \"Thirst\": 682,\r\n  \"Metabolism\": -334\r\n}','{}','Paige','Moore','{\"sex\":\"mp_female\",\"HeadType\":-1932416058,\"BodyType\":186465082,\"LegsType\":0,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.4,\"EyeLidW\":0.1,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.4,\"NoseH\":0.5,\"NoseAng\":0.5,\"NoseC\":0.4,\"NoseDis\":-1.1,\"CheekBonesH\":0.1,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.1,\"MouthD\":0.8,\"MouthX\":0.0,\"MouthY\":0.2,\"ULiphH\":0.5,\"ULiphW\":0.2,\"ULiphD\":0.0,\"LLiphH\":0.8,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":2152524497,\"Body\":3925619106,\"Waist\":2249546070,\"Eyes\":3703470983,\"Scale\":1.1,\"eyebrows_visibility\":1,\"eyebrows_tx_id\":11,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":1,\"freckles_tx_id\":2,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":1,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":24,\"lipsticks_palette_color_primary\":10,\"shadows_visibility\":1,\"shadows_tx_id\":0,\"shadows_palette_id\":9,\"shadows_palette_color_primary\":9,\"albedo\":-1532879544}','{\"Hat\":-1,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":644542331,\"NeckTies\":-1,\"Shirt\":2994127770,\"Suspender\":-1,\"Vest\":-1,\"Coat\":897251416,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":-1,\"Belt\":2540121056,\"Buckle\":-1,\"Holster\":-1,\"Pant\":647637449,\"Skirt\":-1,\"Chap\":-1,\"Boots\":489450736,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"y\":786.0,\"x\":-305.0,\"heading\":20.0,\"z\":117.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}'),('steam:110000142d368bd','',3,'user',45.26,0.00,0.00,309,350,100,1065353216,100,14,'{}','doctor','{\r\n  \"Hunger\": 821,\r\n  \"Thirst\": 643,\r\n  \"Metabolism\": -10000\r\n}','{}','Jean','Cana','{\"sex\":\"mp_male\",\"HeadType\":0,\"BodyType\":0,\"LegsType\":0,\"HeadSize\":0.7,\"EyeBrowH\":-1.3,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.9,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":0,\"Hair\":0,\"Body\":0,\"Waist\":0,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Loadouts\":-1,\"Hat\":4734375,\"Satchels\":-1,\"Coat\":-1,\"GunbeltAccs\":271365123,\"Gunbelt\":-1,\"Boots\":4112702236,\"NeckWear\":-1,\"NeckTies\":-1,\"Spats\":-1,\"Bracelet\":-1,\"RingRh\":-1,\"EyeWear\":-1,\"Gauntlets\":-1,\"Buckle\":-1,\"RingLh\":-1,\"Belt\":-1,\"Suspender\":-1,\"Spurs\":-1,\"Vest\":150973636,\"Glove\":-1,\"Poncho\":-1,\"Holster\":-1,\"Shirt\":342833122,\"Chap\":-1,\"CoatClosed\":-1,\"Skirt\":-1,\"Cloak\":-1,\"Mask\":3394073803,\"Pant\":328593312,\"Accessories\":-1}',2,'{\"heading\":223.0,\"x\":-320.0,\"y\":795.0,\"z\":117.0}',0,0,0,0,'MP_Style_EasyRider','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_REVOLVER\":300,\"AMMO_ARROW\":0,\"AMMO_REVOLVER_HIGH_VELOCITY\":200,\"AMMO_PISTOL\":70}'),('steam:11000014dc82869','',8,'user',200.00,0.00,0.00,0,350,100,1059361259,100,0,'{}','unemployed','{\r\n  \"Hunger\": 823,\r\n  \"Thirst\": 650,\r\n  \"Metabolism\": -372\r\n}','{}','AMBER','ROGERS','{\"sex\":\"mp_female\",\"HeadType\":-1430071127,\"BodyType\":-1915782583,\"LegsType\":-1603048025,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":-1,\"Hair\":396308894,\"Body\":3053080007,\"Waist\":399015098,\"Eyes\":2836599857,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":-1532879544}','{\"Hat\":-1,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":-1,\"NeckTies\":-1,\"Shirt\":1954071898,\"Suspender\":-1,\"Vest\":-1,\"Coat\":-1,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":-1,\"Belt\":-1,\"Buckle\":-1,\"Holster\":-1,\"Pant\":185184716,\"Skirt\":-1,\"Chap\":-1,\"Boots\":2366192516,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"y\":789.0,\"x\":-345.0,\"heading\":50.0,\"z\":115.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{\"AMMO_REVOLVER\":100}'),('steam:110000155f75357','',4,'user',200.00,0.00,0.00,0,300,50,1049214717,0,0,'{}','unemployed','{}','{}','lee','jones','{\"sex\":\"mp_male\",\"HeadType\":361543666,\"BodyType\":1257168263,\"LegsType\":-1965988844,\"HeadSize\":0.0,\"EyeBrowH\":0.0,\"EyeBrowW\":0.0,\"EyeBrowD\":0.0,\"EarsH\":0.0,\"EarsW\":0.0,\"EarsD\":0.0,\"EarsL\":0.0,\"EyeLidH\":0.0,\"EyeLidW\":0.0,\"EyeD\":0.0,\"EyeAng\":0.0,\"EyeDis\":0.0,\"EyeH\":0.0,\"NoseW\":0.0,\"NoseS\":0.0,\"NoseH\":0.0,\"NoseAng\":0.0,\"NoseC\":0.0,\"NoseDis\":0.0,\"CheekBonesH\":0.0,\"CheekBonesW\":0.0,\"CheekBonesD\":0.0,\"MouthW\":0.0,\"MouthD\":0.0,\"MouthX\":0.0,\"MouthY\":0.0,\"ULiphH\":0.0,\"ULiphW\":0.0,\"ULiphD\":0.0,\"LLiphH\":0.0,\"LLiphW\":0.0,\"LLiphD\":0.0,\"JawH\":0.0,\"JawW\":0.0,\"JawD\":0.0,\"ChinH\":0.0,\"ChinW\":0.0,\"ChinD\":0.0,\"Beard\":1522736310,\"Hair\":2874852206,\"Body\":61606861,\"Waist\":2249546070,\"Eyes\":0,\"Scale\":1.0,\"eyebrows_visibility\":0,\"eyebrows_tx_id\":0,\"scars_visibility\":0,\"scars_tx_id\":0,\"spots_visibility\":0,\"spots_tx_id\":0,\"disc_visibility\":0,\"disc_tx_id\":0,\"complex_visibility\":0,\"complex_tx_id\":0,\"acne_visibility\":0,\"acne_tx_id\":0,\"ageing_visibility\":0,\"ageing_tx_id\":0,\"freckles_visibility\":0,\"freckles_tx_id\":0,\"moles_visibility\":0,\"moles_tx_id\":0,\"grime_visibility\":0,\"grime_tx_id\":0,\"lipsticks_visibility\":0,\"lipsticks_tx_id\":0,\"lipsticks_palette_id\":0,\"lipsticks_palette_color_primary\":0,\"shadows_visibility\":0,\"shadows_tx_id\":0,\"shadows_palette_id\":0,\"shadows_palette_color_primary\":0,\"albedo\":317354806}','{\"Hat\":63411059,\"EyeWear\":-1,\"Mask\":-1,\"NeckWear\":-1,\"NeckTies\":-1,\"Shirt\":-1,\"Suspender\":-1,\"Vest\":-1,\"Coat\":-1,\"Poncho\":-1,\"Cloak\":-1,\"Glove\":-1,\"RingRh\":-1,\"RingLh\":-1,\"Bracelet\":-1,\"Gunbelt\":-1,\"Belt\":-1,\"Buckle\":-1,\"Holster\":-1,\"Pant\":-1,\"Skirt\":-1,\"Chap\":-1,\"Boots\":-1,\"Spurs\":-1,\"Spats\":-1,\"GunbeltAccs\":-1,\"Gauntlets\":-1,\"Loadouts\":-1,\"Accessories\":-1,\"Satchels\":-1,\"CoatClosed\":-1}',0,'{\"y\":161.0,\"x\":-1295.0,\"heading\":154.0,\"z\":61.0}',0,0,0,0,'noanim','{\"medical\":0,\"blacksmith\":0,\"basic\":0,\"survival\":0,\"brewing\":0,\"food\":0}','{}',0.00,'{}');
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
INSERT INTO `herbalists` VALUES ('steam:110000115662cee',7,'NewHannover');
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
INSERT INTO `horse_complements` VALUES ('steam:11000010274612f',5,'[1797293285,720369354,353177002,1484641439]'),('steam:110000107526ebc',2,'[1000396653,707315902,691935155,811613109,1147825921,1712007673,62106376,414935856,3811019816,276665752,632624486,1824076046,776366243,3879727649,1667119228,2571565172,711799784,987779253,1594070435,3525692576,2856299546,1261904520,1739551490]'),('steam:1100001137bdbfe',6,'[3345762009,3955696011,2856299546,317775775,2547029492]'),('steam:110000115662cee',7,'[3989519736,3689327675,2346782611,3271879500,378682918,893370428,1484641439,414935856,2645632508]'),('steam:110000142d368bd',3,'[2184863786,491707272,1211811843,387267141,2571565172,231242399,707315902,2346782611,1614346239,785227376,62106376,3811019816]');
/*!40000 ALTER TABLE `horse_complements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housing`
--

DROP TABLE IF EXISTS `housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `charidentifier` int(11) NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `open` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72707 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housing`
--

LOCK TABLES `housing` WRITE;
/*!40000 ALTER TABLE `housing` DISABLE KEYS */;
INSERT INTO `housing` VALUES (24834,'steam:110000107526ebc',13,'[]','{}',1),(34306,'steam:110000107526ebc',13,'[]','{}',0),(72706,'steam:110000107526ebc',13,'[]','{}',0);
/*!40000 ALTER TABLE `housing` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('ammoarrowdynamite','Arrow Dynamite',10,1,'item_standard',1,26,'{}'),('ammoarrowfire','Arrow Fire',10,1,'item_standard',1,27,'{}'),('ammoarrowimproved','Arrow Improved',10,1,'item_standard',1,29,'{}'),('ammoarrownormal','Arrow Normal',10,1,'item_standard',1,28,'{}'),('ammoarrowpoison','Arrow Poison',10,1,'item_standard',1,31,'{}'),('ammoarrowsmallgame','Arrow Small Game',10,1,'item_standard',1,30,'{}'),('ammobolla','Bolla Ammo',10,1,'item_standard',1,37,'{}'),('ammodynamite','Dynamite Ammo',10,1,'item_standard',1,38,'{}'),('ammoelephant','Elephant Rifle Ammo',10,1,'item_standard',1,16,'{}'),('ammoknives','Knives Ammo',10,1,'item_standard',1,34,'{}'),('ammomolotov','Molotov Ammo',10,1,'item_standard',1,40,'{}'),('ammopistolexplosive','Pistol Ammo Explosive',10,1,'item_standard',1,21,'{}'),('ammopistolexpress','Pistol Ammo Express',10,1,'item_standard',1,22,'{}'),('ammopistolnormal','Pistol Ammo Normal',10,1,'item_standard',1,23,'{}'),('ammopistolsplitpoint','Pistol Ammo Splitpoint',10,1,'item_standard',1,25,'{}'),('ammopistolvelocity','Pistol Ammo Velocity',10,1,'item_standard',1,24,'{}'),('ammopoisonbottle','Poison Bottle Ammo',10,1,'item_standard',1,36,'{}'),('ammorepeaterexplosive','Repeater Ammo Explosive',10,1,'item_standard',1,1,'{}'),('ammorepeaterexpress','Repeater Ammo Express',10,1,'item_standard',1,2,'{}'),('ammorepeaternormal','Repeater Ammo Normal',10,1,'item_standard',1,3,'{}'),('ammorepeatersplitpoint','Repeater Ammo Splitpoint',10,1,'item_standard',1,5,'{}'),('ammorepeatervelocity','Repeater Ammo Velocity',10,1,'item_standard',1,4,'{}'),('ammorevolverexplosive','Revolver Ammo Explosive',10,1,'item_standard',1,6,'{}'),('ammorevolverexpress','Revolver Ammo Express',10,1,'item_standard',1,7,'{}'),('ammorevolvernormal','Revolver Ammo Normal',10,1,'item_standard',1,8,'{}'),('ammorevolversplitpoint','Revolver Ammo Splitpoint',10,1,'item_standard',1,10,'{}'),('ammorevolvervelocity','Revolver Ammo Velocity',10,1,'item_standard',1,9,'{}'),('ammorifleexplosive','Rifle Ammo Explosive',10,1,'item_standard',1,11,'{}'),('ammorifleexpress','Rifle Ammo Express',10,1,'item_standard',1,12,'{}'),('ammoriflenormal','Rifle Ammo Normal',10,1,'item_standard',1,13,'{}'),('ammoriflesplitpoint','Rifle Ammo Splitpoint',10,1,'item_standard',1,15,'{}'),('ammoriflevelocity','Rifle Ammo Velocity',10,1,'item_standard',1,14,'{}'),('ammoshotgunexplosive','Shotgun Ammo Explosive',10,1,'item_standard',1,18,'{}'),('ammoshotgunincendiary','Shotgun Ammo Incendiary',10,1,'item_standard',1,17,'{}'),('ammoshotgunnormal','Shotgun Ammo Normal',10,1,'item_standard',1,19,'{}'),('ammoshotgunslug','Shotgun Ammo Slug',10,1,'item_standard',1,20,'{}'),('ammotomahawk','Tonmahawk Ammo',10,1,'item_standard',1,35,'{}'),('ammovarmint','Varmint Ammo',10,1,'item_standard',1,32,'{}'),('ammovarminttranq','Varmint Tranquilizer Ammo',10,1,'item_standard',1,33,'{}'),('ammovoldynamite','Volatile Dynamite Ammo',10,1,'item_standard',1,39,'{}'),('ammovolmolotov','Volatile Molotov Ammo',10,1,'item_standard',1,41,'{}'),('apple','Apple',100,1,'item_standard',1,44,'{}'),('a_c_fishbluegil_01_ms','Blue Gil (Medium)',10,1,'item_standard',0,70,'{}'),('a_c_fishbluegil_01_sm','Blue Gil (Small)',10,1,'item_standard',0,71,'{}'),('a_c_fishbullheadcat_01_ms','Bullhead Cat (Medium)',10,1,'item_standard',0,72,'{}'),('a_c_fishbullheadcat_01_sm','Bullhead Cat (Small)',10,1,'item_standard',0,73,'{}'),('a_c_fishchainpickerel_01_ms','Chain Pickerel (Medium)',10,1,'item_standard',0,74,'{}'),('a_c_fishchainpickerel_01_sm','Chain Pickerel (Small)',10,1,'item_standard',0,75,'{}'),('a_c_fishchannelcatfish_01_lg','Channel Catfish (Large)',10,1,'item_standard',0,76,'{}'),('a_c_fishchannelcatfish_01_xl','Channel Catfish (Extra Large)',10,1,'item_standard',0,77,'{}'),('a_c_fishlakesturgeon_01_lg','Lake Sturgeon (Large)',10,1,'item_standard',0,78,'{}'),('a_c_fishlargemouthbass_01_lg','Large Mouth Bass (Large)',10,1,'item_standard',0,79,'{}'),('a_c_fishlargemouthbass_01_ms','Large Mouth Bass (Medium)',10,1,'item_standard',0,80,'{}'),('a_c_fishlongnosegar_01_lg','Long Nose Gar (Large)',10,1,'item_standard',0,81,'{}'),('a_c_fishmuskie_01_lg','Muskie (Large)',10,1,'item_standard',0,82,'{}'),('a_c_fishnorthernpike_01_lg','Northern Pike (Large)',10,1,'item_standard',0,83,'{}'),('a_c_fishperch_01_ms','Perch (Medium)',10,1,'item_standard',0,84,'{}'),('a_c_fishperch_01_sm','Perch (Small)',10,1,'item_standard',0,85,'{}'),('a_c_fishrainbowtrout_01_lg','Rainbow Trout (Large)',10,1,'item_standard',0,86,'{}'),('a_c_fishrainbowtrout_01_ms','Rainbow Trout (Medium)',10,1,'item_standard',0,87,'{}'),('a_c_fishredfinpickerel_01_ms','Red Fin Pickerel (Medium)',10,1,'item_standard',0,88,'{}'),('a_c_fishredfinpickerel_01_sm','Red Fin Pickerel (Small)',10,1,'item_standard',0,89,'{}'),('a_c_fishrockbass_01_ms','Rock Bass (Medium)',10,1,'item_standard',0,90,'{}'),('a_c_fishrockbass_01_sm','Rock Bass (Small)',10,1,'item_standard',0,91,'{}'),('a_c_fishsalmonsockeye_01_lg','Salmon Sockeye (Large)',10,1,'item_standard',0,92,'{}'),('a_c_fishsalmonsockeye_01_ml','Salmon Sockeye (Medium-Large)',10,1,'item_standard',0,93,'{}'),('a_c_fishsalmonsockeye_01_ms','Salmon Sockeye (Medium)',10,1,'item_standard',0,94,'{}'),('a_c_fishsmallmouthbass_01_lg','Small Mouth Bass (Large)',10,1,'item_standard',0,95,'{}'),('a_c_fishsmallmouthbass_01_ms','Small Mouth Bass (Medium)',10,1,'item_standard',0,96,'{}'),('bandage','Bandage',100,1,'item_standard',1,45,'{}'),('bearClaws','Bear Claws',50,1,'item_standard',1,124,'{}'),('BigGameMeat','Big Meat',50,1,'item_standard',1,122,'{}'),('bread','Bread',100,1,'item_standard',1,42,'{}'),('carrots','Zanahoria',50,1,'item_standard',1,125,'{}'),('clay','Copper Bar',50,1,'item_standard',0,98,'{}'),('cleanshort','Trapo para arma',10,1,'item_standard',1,118,'{}'),('coal','Coal',50,1,'item_standard',0,108,'{}'),('consumable_coffee','Cafe',5,1,'item_standard',1,46,'{}'),('consumable_haycube','Heno',50,1,'item_standard',1,47,'{}'),('consumable_kidneybeans_can','Lata de alubias',5,1,'item_standard',1,48,'{}'),('consumable_medicine','Medicina',3,1,'item_standard',1,49,'{}'),('consumable_peach','Melocoton',5,1,'item_standard',1,50,'{}'),('consumable_salmon_can','Lata de Salmon',5,1,'item_standard',1,51,'{}'),('copper','Titanium Bar',50,1,'item_standard',0,100,'{}'),('feather','Feather',50,1,'item_standard',1,120,'{}'),('fibers','Fibers',50,1,'item_standard',1,116,'{}'),('fish','Fist',50,1,'item_standard',1,123,'{}'),('fishingrod','Fishing Rod',10,1,'item_standard',1,126,'{}'),('goldnugget','Gold Nugget',10,1,'item_standard',0,97,'{}'),('gold_nugget','Gold Nugget',10,1,'item_standard',1,105,'{}'),('hatchet','Hatchet',1,1,'item_standard',0,110,'{}'),('herbal_medicine','Herbal Medicine',20,1,'item_standard',1,52,'{}'),('herbal_tonic','Herbal Tonic',20,1,'item_standard',1,53,'{}'),('honey','Honey',50,1,'item_standard',1,112,'{}'),('hwood','Hard Wood',50,1,'item_standard',1,114,'{}'),('iron','Blacksteel Bar',50,1,'item_standard',0,101,'{}'),('lumberaxe','Lumber Axe',1,1,'item_standard',0,109,'{}'),('meat','Meat',50,1,'item_standard',1,121,'{}'),('nitrite','Nitrite',50,1,'item_standard',0,107,'{}'),('pickaxe','Pickaxe',1,1,'item_standard',1,55,'{}'),('provision_coal','Zinc Bar',50,1,'item_standard',0,99,'{}'),('pulp','Pulp',50,1,'item_standard',1,117,'{}'),('p_baitBread01x','Bread Bait',10,1,'item_standard',1,56,'{}'),('p_baitCheese01x','Cheese Bait',10,1,'item_standard',1,58,'{}'),('p_baitCorn01x','Corn Bait',10,1,'item_standard',1,57,'{}'),('p_baitCricket01x','Cricket Bait',10,1,'item_standard',1,60,'{}'),('p_baitWorm01x','Worm Bait',10,1,'item_standard',1,59,'{}'),('p_crawdad01x','Crawfish Bait',10,1,'item_standard',1,61,'{}'),('p_FinisdFishlure01x','Fish Lure',10,1,'item_standard',1,63,'{}'),('p_finisdfishlurelegendary01x','Legendary Fish Lure',10,1,'item_standard',1,66,'{}'),('p_finishdcrawd01x','Crawfish Lure',10,1,'item_standard',1,64,'{}'),('p_finishdcrawdlegendary01x','Legendary Crawfish Lure',10,1,'item_standard',1,67,'{}'),('p_finishedragonfly01x','Dragonfly Lure',10,1,'item_standard',1,62,'{}'),('p_finishedragonflylegendary01x','Legendary Dragonfly Lure',10,1,'item_standard',1,65,'{}'),('p_lgoc_spinner_v4','Spinner V4',10,1,'item_standard',1,68,'{}'),('p_lgoc_spinner_v6','Spinner V6',10,1,'item_standard',1,69,'{}'),('rubber','rubber',50,1,'item_standard',1,115,'{}'),('salt','Salt',50,1,'item_standard',0,106,'{}'),('sap','Sap',50,1,'item_standard',1,111,'{}'),('stone','Lead Bar',50,1,'item_standard',0,103,'{}'),('sulfur','Brass Bar',50,1,'item_standard',0,102,'{}'),('syringe','Jeringuilla',10,1,'item_standard',1,54,'{}'),('water','Water',100,1,'item_standard',1,43,'{}'),('wood','Wood',50,1,'item_standard',1,113,'{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_crafted`
--

LOCK TABLES `items_crafted` WRITE;
/*!40000 ALTER TABLE `items_crafted` DISABLE KEYS */;
INSERT INTO `items_crafted` VALUES (29,4,8,'2022-10-29 07:03:06','[]'),(32,5,8,'2022-10-29 18:20:43','[]'),(37,2,9,'2022-10-29 18:47:21','[]'),(38,2,8,'2022-10-29 18:47:55','[]'),(40,5,43,'2022-10-29 18:50:33','[]'),(41,6,8,'2022-10-29 19:08:35','[]'),(45,5,5,'2022-10-29 19:40:08','[]'),(46,5,45,'2022-10-29 19:44:52','[]'),(48,7,4,'2022-10-29 20:04:23','[]'),(54,2,15,'2022-10-29 21:38:08','[]'),(55,7,12,'2022-10-29 21:38:47','[]'),(57,6,19,'2022-10-30 03:40:59','[]'),(59,6,43,'2022-10-30 03:49:08','[]'),(60,6,42,'2022-10-30 03:49:12','[]'),(71,7,45,'2022-10-30 13:43:53','[]'),(75,7,101,'2022-10-30 13:51:25','[]'),(76,7,42,'2022-10-30 14:43:13','[]'),(80,5,14,'2022-10-30 15:40:31','[]'),(87,1,55,'2022-10-30 15:59:07','{\"durability\":99,\"description\":\"Durability = 98\"}'),(88,5,54,'2022-10-30 16:23:16','[]'),(93,1,9,'2022-10-30 17:05:31','[]'),(94,9,8,'2022-10-30 17:08:14','[]'),(95,10,8,'2022-10-30 17:28:24','[]'),(96,1,19,'2022-10-30 17:38:25','[]'),(97,2,3,'2022-10-30 17:40:27','[]'),(102,2,19,'2022-10-30 17:45:19','[]'),(107,1,43,'2022-10-30 17:50:22','[]'),(108,1,42,'2022-10-30 17:51:43','[]'),(120,2,101,'2022-10-30 23:00:09','[]'),(124,2,100,'2022-10-30 23:02:43','[]'),(127,2,98,'2022-10-30 23:06:55','[]'),(153,2,113,'2022-10-31 05:47:16','[]'),(154,2,115,'2022-10-31 05:47:35','[]'),(156,2,117,'2022-10-31 05:48:01','[]'),(159,2,43,'2022-11-01 23:32:02','[]'),(161,11,8,'2022-11-02 01:32:58','[]'),(163,2,116,'2022-11-02 01:51:13','[]'),(167,2,42,'2022-11-02 02:37:24','[]'),(170,2,28,'2022-11-02 02:49:24','[]'),(173,2,44,'2022-11-02 18:29:41','[]'),(175,2,55,'2022-11-02 18:35:19','{\"description\":\"Durability = 98\",\"durability\":99}'),(176,2,103,'2022-11-02 18:35:23','[]'),(177,2,106,'2022-11-02 18:35:27','[]'),(178,2,107,'2022-11-02 18:35:30','[]'),(181,13,8,'2022-11-02 19:10:33','[]'),(184,3,121,'2022-11-03 00:51:27','[]'),(187,3,23,'2022-11-03 01:12:39','[]'),(188,2,45,'2022-11-03 02:33:33','[]'),(189,2,121,'2022-11-03 03:12:46','[]'),(191,2,114,'2022-11-03 03:24:42','[]'),(192,3,45,'2022-11-03 03:28:54','[]'),(195,2,111,'2022-11-03 04:02:50','[]'),(197,2,112,'2022-11-03 04:03:05','[]'),(200,2,110,'2022-11-03 04:05:25','{\"description\":\"Durability = 93\",\"durability\":93}'),(208,2,56,'2022-11-03 20:07:55','[]'),(209,2,71,'2022-11-03 20:47:10','[]'),(212,3,62,'2022-11-03 20:59:31','[]'),(213,3,68,'2022-11-03 21:02:40','[]'),(214,3,42,'2022-11-03 21:34:30','[]'),(215,3,43,'2022-11-03 21:34:33','[]');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loadout`
--

LOCK TABLES `loadout` WRITE;
/*!40000 ALTER TABLE `loadout` DISABLE KEYS */;
INSERT INTO `loadout` VALUES (2,'',2,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(3,'steam:11000010f83aa15',1,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(9,'',2,'WEAPON_KIT_BINOCULARS','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(10,'',2,'WEAPON_THROWN_BOLAS','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(12,'steam:110000142d368bd',3,'WEAPON_MELEE_KNIFE','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(13,'',2,'WEAPON_PISTOL_MAUSER','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(14,'',2,'WEAPON_PISTOL_VOLCANIC','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(15,'',2,'WEAPON_SHOTGUN_REPEATING','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(16,'',2,'WEAPON_PISTOL_SEMIAUTO','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(17,'',2,'WEAPON_RIFLE_SPRINGFIELD','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(18,'',2,'WEAPON_RIFLE_SPRINGFIELD','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(19,'',2,'WEAPON_MELEE_HATCHET_HUNTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(20,'',2,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(26,'',2,'WEAPON_REPEATER_WINCHESTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(28,'',2,'WEAPON_SNIPERRIFLE_ROLLINGBLOCK','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(29,'',2,'WEAPON_THROWN_MOLOTOV','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(30,'',2,'WEAPON_MELEE_HAMMER','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(34,'steam:110000107526ebc',2,'WEAPON_MELEE_KNIFE','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(35,'steam:11000010f83aa15',1,'WEAPON_MELEE_HATCHET','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(36,'steam:110000155f75357',4,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(38,'',3,'WEAPON_BOW','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(39,'',3,'WEAPON_BOW','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(40,'',3,'WEAPON_BOW_IMPROVED','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(41,'steam:11000010274612f',5,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,1,0,'{}',0,'default'),(43,'',2,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(44,'steam:11000010274612f',5,'WEAPON_REVOLVER_NAVY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(45,'steam:11000010274612f',5,'WEAPON_MELEE_MACHETE_COLLECTOR','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(46,'',5,'WEAPON_LASSO','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(47,'steam:11000010274612f',5,'WEAPON_LASSO_REINFORCED','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(48,'steam:11000010274612f',5,'WEAPON_REPEATER_WINCHESTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(49,'',2,'WEAPON_KIT_BINOCULARS','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(50,'steam:1100001137bdbfe',6,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,1,0,'{}',0,'default'),(51,'steam:1100001137bdbfe',6,'WEAPON_REVOLVER_LEMAT','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(52,'steam:110000115662cee',7,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(53,'steam:110000115662cee',7,'WEAPON_REPEATER_WINCHESTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(55,'steam:110000115662cee',7,'WEAPON_LASSO','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(57,'steam:110000115662cee',7,'WEAPON_SHOTGUN_SAWEDOFF','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(58,'steam:110000115662cee',7,'WEAPON_RIFLE_SPRINGFIELD','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(60,'',2,'WEAPON_THROWN_TOMAHAWK','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(61,'',7,'WEAPON_PISTOL_VOLCANIC','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(62,'steam:11000010274612f',5,'WEAPON_RIFLE_SPRINGFIELD','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(63,'steam:11000010274612f',5,'WEAPON_SHOTGUN_PUMP','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(64,'steam:110000115662cee',7,'WEAPON_MELEE_HATCHET','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(65,'steam:11000014dc82869',8,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(66,'steam:1100001414294dd',9,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(67,'steam:110000115662cee',7,'WEAPON_PISTOL_VOLCANIC','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(68,'steam:11000010b865e6f',10,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(70,'',1,'WEAPON_SHOTGUN_DOUBLEBARREL','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(71,'',1,'WEAPON_SHOTGUN_SAWEDOFF','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(72,'',1,'WEAPON_SHOTGUN_REPEATING','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(73,'',1,'WEAPON_RIFLE_BOLTACTION','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(74,'steam:11000010f83aa15',1,'WEAPON_RIFLE_ELEPHANT','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(76,'',1,'WEAPON_RIFLE_VARMINT','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(77,'steam:11000010b865e6f',10,'WEAPON_REVOLVER_CATTLEMAN','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(78,'steam:11000010b865e6f',10,'WEAPON_REVOLVER_LEMAT','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(79,'steam:11000010f83aa15',1,'WEAPON_KIT_CAMERA','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(80,'steam:11000010f83aa15',1,'WEAPON_KIT_CAMERA_ADVANCED','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(81,'',1,'WEAPON_SHOTGUN_PUMP','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(82,'',2,'WEAPON_MELEE_HATCHET_HUNTER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(83,'',2,'WEAPON_MELEE_CLEAVER','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(84,'',2,'WEAPON_REPEATER_HENRY','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(85,'',2,'WEAPON_SHOTGUN_REPEATING','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(86,'',2,'WEAPON_THROWN_THROWING_KNIVES','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(88,'',2,'WEAPON_MELEE_HATCHET','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(89,'steam:1100001348c2095',11,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(90,'steam:110000106b0b177',12,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,1,0,'{}',0,'default'),(91,'steam:110000107526ebc',2,'WEAPON_LASSO','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(92,'steam:110000106b0b177',12,'WEAPON_SNIPERRIFLE_CARCANO','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,0,'{}',0,'default'),(93,'steam:110000106b0b177',12,'WEAPON_SNIPERRIFLE_CARCANO','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,1,0,'{}',0,'default'),(94,'steam:110000142d368bd',3,'WEAPON_PISTOL_VOLCANIC','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(96,'',2,'WEAPON_BOW','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(97,'',3,'WEAPON_THROWN_THROWING_KNIVES','{\"nothing\":0}','[\"nothing\"]',0,0,0,0,0,1,'{}',0,'default'),(98,'steam:110000107526ebc',13,'WEAPON_MELEE_KNIFE','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(99,'',3,'WEAPON_FISHINGROD','[]','[]',0,0,0,0,0,1,'{}',0,'default'),(100,'steam:110000142d368bd',3,'WEAPON_FISHINGROD','[]','[]',0,0,0,0,0,0,'{}',0,'default'),(101,'steam:110000107526ebc',2,'WEAPON_FISHINGROD','[]','[]',0,0,0,0,0,0,'{}',0,'default');
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL,
  `charidentifier` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comps` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outfits`
--

LOCK TABLES `outfits` WRITE;
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
INSERT INTO `outfits` VALUES (1,'steam:110000142d368bd',3,'mio','{\"Loadouts\":-1,\"Hat\":4734375,\"Satchels\":-1,\"Coat\":-1,\"GunbeltAccs\":271365123,\"Gunbelt\":-1,\"Boots\":4112702236,\"NeckWear\":-1,\"NeckTies\":-1,\"Spats\":-1,\"Bracelet\":-1,\"RingRh\":-1,\"EyeWear\":-1,\"Gauntlets\":-1,\"Buckle\":-1,\"RingLh\":-1,\"Belt\":-1,\"Suspender\":-1,\"Spurs\":-1,\"Vest\":150973636,\"Glove\":-1,\"Poncho\":-1,\"Holster\":-1,\"Shirt\":342833122,\"Chap\":-1,\"CoatClosed\":-1,\"Skirt\":-1,\"Cloak\":-1,\"Mask\":3394073803,\"Pant\":328593312,\"Accessories\":-1}'),(2,'steam:11000010274612f',5,'Ropa1','{\"NeckTies\":815422802,\"Mask\":-1,\"Belt\":-1,\"Pant\":241073852,\"GunbeltAccs\":-1,\"Satchels\":-1,\"Chap\":-1,\"Spurs\":-1,\"Gunbelt\":1382144499,\"Loadouts\":475267810,\"Boots\":2639496376,\"Glove\":808704546,\"Cloak\":-1,\"RingRh\":-1,\"Hat\":3531236450,\"Spats\":-1,\"Gauntlets\":-1,\"Bracelet\":-1,\"Accessories\":-1,\"Suspender\":-1,\"Skirt\":-1,\"Vest\":2283019799,\"NeckWear\":-1,\"Buckle\":-1,\"Coat\":1348094862,\"Poncho\":-1,\"CoatClosed\":-1,\"EyeWear\":-1,\"RingLh\":-1,\"Holster\":3741550548,\"Shirt\":2518582726}'),(3,'steam:110000115662cee',7,'adas<das','{\"NeckWear\":65060921,\"RingRh\":3742761105,\"GunbeltAccs\":-1,\"EyeWear\":1000448224,\"Suspender\":1731856201,\"Coat\":-1,\"Spats\":-1,\"Hat\":-1,\"Loadouts\":118271052,\"NeckTies\":-1,\"Satchels\":-1,\"RingLh\":628815846,\"Bracelet\":3914028312,\"Mask\":-1,\"Poncho\":-1,\"Glove\":305923308,\"CoatClosed\":-1,\"Chap\":-1,\"Vest\":1020929636,\"Spurs\":-1,\"Belt\":27101825,\"Cloak\":-1,\"Buckle\":202094695,\"Gunbelt\":1082956942,\"Pant\":339532923,\"Gauntlets\":-1,\"Skirt\":-1,\"Boots\":2574197690,\"Shirt\":340311767,\"Holster\":3727896598,\"Accessories\":106536658}'),(4,'steam:1100001137bdbfe',6,'12','{\"RingRh\":-1,\"CoatClosed\":-1,\"Spats\":-1,\"Boots\":3016049040,\"Chap\":-1,\"Satchels\":-1,\"Accessories\":2083997285,\"Vest\":781508287,\"Bracelet\":-1,\"Suspender\":-1,\"Mask\":-1,\"EyeWear\":-1,\"RingLh\":-1,\"Skirt\":-1,\"Gunbelt\":-1,\"Gauntlets\":-1,\"Coat\":1071687452,\"NeckTies\":-1,\"GunbeltAccs\":-1,\"Spurs\":-1,\"Glove\":2025391138,\"Pant\":729423724,\"Hat\":2694211002,\"Holster\":-1,\"Buckle\":-1,\"Belt\":-1,\"Poncho\":-1,\"NeckWear\":479789096,\"Loadouts\":-1,\"Cloak\":-1,\"Shirt\":146938739}'),(5,'steam:11000010274612f',5,'1','{\"CoatClosed\":-1,\"Spats\":-1,\"Poncho\":-1,\"RingLh\":-1,\"Suspender\":-1,\"Gauntlets\":-1,\"Satchels\":-1,\"Cloak\":-1,\"Hat\":3531236450,\"Chap\":-1,\"Vest\":2283019799,\"Skirt\":-1,\"Loadouts\":475267810,\"Gunbelt\":1382144499,\"Spurs\":-1,\"Glove\":808704546,\"Accessories\":-1,\"Holster\":3741550548,\"Buckle\":-1,\"NeckWear\":-1,\"Belt\":-1,\"Mask\":-1,\"Bracelet\":-1,\"RingRh\":-1,\"GunbeltAccs\":-1,\"Boots\":2639496376,\"NeckTies\":815422802,\"Shirt\":2518582726,\"EyeWear\":-1,\"Coat\":-1,\"Pant\":241073852}'),(6,'steam:11000010274612f',5,'2','{\"Coat\":98552328,\"RingLh\":-1,\"EyeWear\":-1,\"Glove\":-1,\"Hat\":402604760,\"Suspender\":-1,\"CoatClosed\":-1,\"GunbeltAccs\":-1,\"Belt\":-1,\"Cloak\":-1,\"Shirt\":-1,\"Pant\":4032906168,\"Satchels\":-1,\"Loadouts\":496888497,\"Holster\":3741550548,\"Gauntlets\":-1,\"NeckWear\":-1,\"Spats\":-1,\"Mask\":-1,\"Spurs\":-1,\"Bracelet\":-1,\"RingRh\":-1,\"Buckle\":-1,\"Skirt\":-1,\"Chap\":-1,\"Accessories\":-1,\"Gunbelt\":1382144499,\"Boots\":2639496376,\"Vest\":-1,\"Poncho\":-1,\"NeckTies\":-1}'),(7,'steam:110000107526ebc',2,'original','{\"RingLh\":-1,\"EyeWear\":-1,\"NeckWear\":-1,\"Vest\":-1,\"CoatClosed\":-1,\"Hat\":559804374,\"Mask\":-1,\"Coat\":-1,\"Spats\":-1,\"Satchels\":-1,\"Holster\":-1,\"Bracelet\":-1,\"Cloak\":-1,\"Buckle\":-1,\"Poncho\":88394759,\"Loadouts\":-1,\"Gauntlets\":53467018,\"GunbeltAccs\":-1,\"Pant\":3282528841,\"Gunbelt\":-1,\"Suspender\":-1,\"Boots\":2870091829,\"NeckTies\":-1,\"Chap\":-1,\"RingRh\":95447827,\"Accessories\":-1,\"Belt\":-1,\"Spurs\":-1,\"Skirt\":-1,\"Shirt\":3864566500,\"Glove\":1729396451}'),(8,'steam:110000107526ebc',2,'original','{\"Satchels\":-1,\"GunbeltAccs\":-1,\"Buckle\":-1,\"Accessories\":-1,\"Hat\":559804374,\"Suspender\":-1,\"RingLh\":-1,\"RingRh\":95447827,\"Spurs\":-1,\"NeckWear\":-1,\"Cloak\":-1,\"Loadouts\":-1,\"Poncho\":88394759,\"Pant\":3282528841,\"Holster\":-1,\"Vest\":-1,\"Skirt\":-1,\"Bracelet\":-1,\"NeckTies\":-1,\"Spats\":-1,\"Coat\":-1,\"Chap\":-1,\"Shirt\":3864566500,\"Boots\":2870091829,\"Gauntlets\":53467018,\"Belt\":-1,\"Mask\":-1,\"Gunbelt\":-1,\"EyeWear\":-1,\"Glove\":-1,\"CoatClosed\":-1}'),(9,'steam:110000107526ebc',2,'original','{\"Satchels\":-1,\"GunbeltAccs\":-1,\"Buckle\":-1,\"Accessories\":-1,\"Hat\":559804374,\"Suspender\":-1,\"RingLh\":-1,\"RingRh\":-1,\"Spurs\":-1,\"NeckWear\":-1,\"Cloak\":-1,\"Loadouts\":-1,\"Poncho\":88394759,\"Pant\":3282528841,\"Holster\":-1,\"Vest\":-1,\"Skirt\":-1,\"Bracelet\":-1,\"NeckTies\":-1,\"Spats\":-1,\"Coat\":-1,\"Chap\":-1,\"Shirt\":1501218433,\"Boots\":2870091829,\"Gauntlets\":-1,\"Belt\":-1,\"Mask\":-1,\"Gunbelt\":-1,\"EyeWear\":-1,\"Glove\":-1,\"CoatClosed\":-1}');
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interiorId` int(11) NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `identifier` varchar(60) NOT NULL,
  `charidentifier` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stables`
--

LOCK TABLES `stables` WRITE;
/*!40000 ALTER TABLE `stables` DISABLE KEYS */;
INSERT INTO `stables` VALUES (1,'steam:110000107526ebc',2,'prueba1','A_C_Horse_Kladruber_Silver','horse',NULL,0,0,'{\r\n  \"blanket\": 1000396653,\r\n  \"horn\": 707315902,\r\n  \"bag\": 691935155,\r\n  \"tail\": 811613109,\r\n  \"mane\": 1147825921,\r\n  \"saddle\": 1712007673,\r\n  \"stirrups\": 62106376,\r\n  \"bedroll\": 414935856,\r\n  \"lantern\": 0,\r\n  \"mask\": 3811019816\r\n}',0,NULL),(2,'steam:11000010f83aa15',1,'prueba1','A_C_Horse_AmericanPaint_Greyovero','horse',NULL,0,0,NULL,1,NULL),(4,'steam:110000107526ebc',2,'carro1','chuckwagon000x','cart',NULL,0,0,NULL,0,NULL),(6,'steam:11000010f83aa15',1,'prueba11','huntercart01','cart',NULL,0,0,NULL,1,NULL),(7,'steam:110000107526ebc',2,'prueba4','A_C_Horse_Thoroughbred_BlackChestnut','horse',NULL,0,0,NULL,0,NULL),(8,'steam:110000107526ebc',2,'prueba5','A_C_Horse_AmericanStandardbred_Black','horse',NULL,0,0,NULL,0,NULL),(10,'steam:110000142d368bd',3,'sisi','A_C_Horse_Arabian_Grey','horse',NULL,0,0,'{\r\n  \"blanket\": 231242399,\r\n  \"horn\": 707315902,\r\n  \"bag\": 2346782611,\r\n  \"tail\": 0,\r\n  \"mane\": 1614346239,\r\n  \"saddle\": 785227376,\r\n  \"stirrups\": 62106376,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 0,\r\n  \"mask\": 3811019816\r\n}',1,NULL),(12,'steam:110000107526ebc',2,'Prueba2','A_C_Horse_Shire_DarkBay','horse',NULL,0,0,'{\r\n  \"blanket\": 711799784,\r\n  \"horn\": 0,\r\n  \"bag\": 0,\r\n  \"tail\": 987779253,\r\n  \"mane\": 1594070435,\r\n  \"saddle\": 3525692576,\r\n  \"stirrups\": 0,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 0,\r\n  \"mask\": 0\r\n}',0,NULL),(13,'steam:1100001137bdbfe',6,'Sumon','A_C_Horse_Kladruber_White','horse',NULL,0,0,'{\r\n  \"blanket\": 0,\r\n  \"horn\": 0,\r\n  \"bag\": 0,\r\n  \"tail\": 3955696011,\r\n  \"mane\": 2547029492,\r\n  \"saddle\": 3345762009,\r\n  \"stirrups\": 0,\r\n  \"bedroll\": 317775775,\r\n  \"lantern\": 0,\r\n  \"mask\": 0\r\n}',1,NULL),(14,'steam:110000107526ebc',2,'Nieve','A_C_Horse_Arabian_White','horse',NULL,0,0,'{\r\n  \"blanket\": 0,\r\n  \"horn\": 0,\r\n  \"bag\": 0,\r\n  \"tail\": 811613109,\r\n  \"mane\": 2856299546,\r\n  \"saddle\": 1261904520,\r\n  \"stirrups\": 1739551490,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 0,\r\n  \"mask\": 0\r\n}',1,NULL),(15,'steam:110000115662cee',7,'Merluza','A_C_Horse_AmericanPaint_Overo','horse',NULL,0,0,'{\r\n  \"blanket\": 3989519736,\r\n  \"horn\": 3689327675,\r\n  \"bag\": 2346782611,\r\n  \"tail\": 3271879500,\r\n  \"mane\": 378682918,\r\n  \"saddle\": 893370428,\r\n  \"stirrups\": 1484641439,\r\n  \"bedroll\": 414935856,\r\n  \"lantern\": 0,\r\n  \"mask\": 2645632508\r\n}',1,NULL),(16,'steam:11000010274612f',5,'Samantha','A_C_Horse_Shire_RavenBlack','horse',NULL,0,0,'{\r\n  \"blanket\": 1797293285,\r\n  \"horn\": 0,\r\n  \"bag\": 720369354,\r\n  \"tail\": 0,\r\n  \"mane\": 0,\r\n  \"saddle\": 353177002,\r\n  \"stirrups\": 1484641439,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 0,\r\n  \"mask\": 0\r\n}',1,NULL),(17,'steam:110000115662cee',7,'asda ','wagonPrison01x','cart',NULL,0,0,NULL,0,NULL),(18,'steam:110000115662cee',7,'adsasd','A_C_Horse_AmericanStandardbred_Black','horse',NULL,0,0,NULL,0,NULL),(19,'steam:110000115662cee',7,'asdasdaf adf','A_C_Horse_Appaloosa_BlackSnowflake','horse',NULL,0,0,NULL,0,NULL),(20,'steam:110000115662cee',7,'qewdfasg ','A_C_Horse_DutchWarmblood_ChocolateRoan','horse',NULL,0,0,NULL,0,NULL),(21,'steam:110000115662cee',7,'asfdq2w fd','A_C_Horse_KentuckySaddle_Black','horse',NULL,0,0,NULL,0,NULL),(22,'steam:110000115662cee',7,'adfga','ArmySupplyWagon','cart',NULL,0,0,NULL,0,NULL),(23,'steam:110000115662cee',7,'asfafage','buggy03','cart',NULL,0,0,NULL,0,NULL),(24,'steam:110000115662cee',7,'afasdfwer   a','wagondoc01x','cart',NULL,0,0,NULL,0,NULL),(25,'steam:110000115662cee',7,'asfaqw qwas','wagonCircus01x','cart',NULL,0,0,NULL,1,NULL),(26,'steam:110000106b0b177',12,'|||||||||||||||||Tornado','A_C_Horse_Turkoman_Gold','horse',NULL,0,0,NULL,1,NULL),(27,'steam:110000107526ebc',13,'asdasd','A_C_Horse_AmericanPaint_Greyovero','horse',NULL,0,0,'{\r\n  \"blanket\": 0,\r\n  \"horn\": 0,\r\n  \"bag\": 491707272,\r\n  \"tail\": 0,\r\n  \"mane\": 0,\r\n  \"saddle\": 0,\r\n  \"stirrups\": 0,\r\n  \"bedroll\": 0,\r\n  \"lantern\": 0,\r\n  \"mask\": 0\r\n}',1,NULL);
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
INSERT INTO `users` VALUES ('steam:11000010274612f','user',0,0,0,'false'),('steam:110000106b0b177','user',0,0,0,'false'),('steam:110000107526ebc','user',0,0,0,'false'),('steam:11000010b865e6f','user',0,0,0,'false'),('steam:11000010f83aa15','user',0,0,0,'false'),('steam:110000111e0692b','user',0,0,0,'false'),('steam:1100001137bdbfe','user',0,0,0,'false'),('steam:110000115662cee','user',0,0,0,'false'),('steam:1100001348c2095','user',0,0,0,'false'),('steam:1100001414294dd','user',0,0,0,'false'),('steam:110000142d368bd','user',0,0,0,'false'),('steam:11000014dc82869','user',0,0,0,'false'),('steam:110000153f62c2a','user',0,0,0,'false'),('steam:110000155f75357','user',0,0,0,'false'),('steam:110000156bd50f6','user',0,0,0,'false');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist`
--

LOCK TABLES `whitelist` WRITE;
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
INSERT INTO `whitelist` VALUES (1,'steam:11000010f83aa15',0,0),(2,'steam:110000107526ebc',0,0),(3,'steam:110000142d368bd',1,0),(4,'steam:110000155f75357',0,0),(5,'steam:11000010274612f',0,0),(6,'steam:1100001137bdbfe',0,0),(7,'steam:110000115662cee',0,0),(8,'steam:11000014dc82869',0,0),(9,'steam:1100001414294dd',0,0),(10,'steam:11000010b865e6f',0,0),(11,'steam:1100001348c2095',0,0),(12,'steam:110000106b0b177',0,0),(13,'steam:110000153f62c2a',0,0);
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

-- Dump completed on 2022-11-03 19:23:50
