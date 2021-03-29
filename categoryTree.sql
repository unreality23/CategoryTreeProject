-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.23 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for categorytree
CREATE DATABASE IF NOT EXISTS `categorytree` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `categorytree`;

-- Dumping structure for table categorytree.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table categorytree.categories: ~7 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Category', '2021-03-27 18:54:36', '2021-03-27 18:54:36'),
	(2, 0, 'Category2', '2021-03-27 18:54:36', '2021-03-27 18:54:36'),
	(3, 0, 'Category3', '2021-03-27 18:54:36', '2021-03-27 18:54:36'),
	(7, 1, 'SubCategory1', '2021-03-27 19:24:19', '2021-03-27 19:24:19'),
	(8, 2, 'SubCategory2', '2021-03-27 19:25:33', '2021-03-27 19:25:33'),
	(9, 3, 'SubCategory3', '2021-03-27 19:25:33', '2021-03-27 19:25:33'),
	(10, 7, 'SubCategory4', '2021-03-27 19:25:33', '2021-03-27 19:25:33'),
	(11, 10, 'SubCategory5', '2021-03-27 22:59:29', '2021-03-27 22:59:29');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table categorytree.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table categorytree.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(51, '2021_03_27_102357_create_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
