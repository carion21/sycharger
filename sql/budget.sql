-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour budget
DROP DATABASE IF EXISTS `budget`;
CREATE DATABASE IF NOT EXISTS `budget` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `budget`;

-- Export de la structure de la table budget. budget
DROP TABLE IF EXISTS `budget`;
CREATE TABLE IF NOT EXISTS `budget` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `RUBRIQUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `2010` double DEFAULT '0',
  `2011` double DEFAULT '0',
  `2012` double DEFAULT '0',
  `2013` double DEFAULT '0',
  `2014` double DEFAULT '0',
  `2015` double DEFAULT '0',
  `2016` double DEFAULT '0',
  `2017` double DEFAULT '0',
  `2018` double DEFAULT '0',
  `2019` double DEFAULT '0',
  `2020` double DEFAULT '0',
  `2021` double DEFAULT '0',
  `2022` double DEFAULT '0',
  `2023` double DEFAULT '0',
  `2024` double DEFAULT '0',
  `2025` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Export de données de la table budget.budget : ~0 rows (environ)
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
