-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   5.7.33 - MySQL Community Server (GPL)
-- サーバー OS:                      Win64
-- HeidiSQL バージョン:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- future_db のデータベース構造をダンプしています
CREATE DATABASE IF NOT EXISTS `future_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `future_db`;

--  テーブル future_db.bodytypes の構造をダンプしています
CREATE TABLE IF NOT EXISTS `bodytypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TypeOfBody` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- テーブル future_db.bodytypes: ~10 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `bodytypes` DISABLE KEYS */;
REPLACE INTO `bodytypes` (`id`, `TypeOfBody`, `created_at`, `updated_at`) VALUES
	(1, 'STATION WAGON', NULL, NULL),
	(2, 'SEDAN', NULL, NULL),
	(3, 'VAN', NULL, NULL),
	(4, 'PICKUP VAN', NULL, NULL),
	(5, 'MINI VAN', NULL, NULL),
	(6, 'WAGON', NULL, NULL),
	(7, 'BUS', NULL, NULL),
	(8, 'TRUCK', NULL, NULL),
	(9, 'DUMP', NULL, NULL),
	(10, 'HEAVY EQUIPTMENT', NULL, NULL);
/*!40000 ALTER TABLE `bodytypes` ENABLE KEYS */;

--  テーブル future_db.ccs の構造をダンプしています
CREATE TABLE IF NOT EXISTS `ccs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EngineCapacityInCC` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EngineCapacityInWatt` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- テーブル future_db.ccs: ~5 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `ccs` DISABLE KEYS */;
REPLACE INTO `ccs` (`id`, `EngineCapacityInCC`, `EngineCapacityInWatt`, `created_at`, `updated_at`) VALUES
	(1, '1500', NULL, NULL, NULL),
	(2, '660', NULL, NULL, NULL),
	(3, '1600', NULL, NULL, NULL),
	(4, '1300', NULL, NULL, NULL),
	(5, '1800', 1790, NULL, NULL);
/*!40000 ALTER TABLE `ccs` ENABLE KEYS */;

--  テーブル future_db.colors の構造をダンプしています
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- テーブル future_db.colors: ~21 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
REPLACE INTO `colors` (`id`, `color`, `created_at`, `updated_at`) VALUES
	(1, 'Beige', '2022-09-13 20:01:09', '2022-09-13 20:01:09'),
	(2, 'Black', '2022-09-13 20:01:09', '2022-09-13 20:01:09'),
	(3, 'Blue', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(4, 'Brown', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(5, 'Cream', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(6, 'Gold', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(7, 'Gray', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(8, 'Green', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(9, 'Orange', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(10, 'Pearl', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(11, 'Pink', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(12, 'Purple', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(13, 'Red', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(14, 'Rose', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(15, 'Silver', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(16, 'Turquoise', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(17, 'Twotone', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(18, 'White', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(19, 'Wine', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(20, 'Yellow', '2022-09-13 20:01:10', '2022-09-13 20:01:10'),
	(21, 'Other', '2022-09-13 20:01:10', '2022-09-13 20:01:10');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;

--  テーブル future_db.countries の構造をダンプしています
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- テーブル future_db.countries: ~6 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
REPLACE INTO `countries` (`id`, `CountryName`, `created_at`, `updated_at`) VALUES
	(1, 'Bangladesh', '2022-09-18 23:26:14', '2022-09-18 23:26:14'),
	(2, 'India', '2022-09-18 23:26:14', '2022-09-18 23:26:14'),
	(3, 'Kenya', '2022-09-18 23:26:14', '2022-09-18 23:26:14'),
	(4, 'Australia', '2022-09-18 23:26:14', '2022-09-18 23:26:14'),
	(5, 'England', '2022-09-18 23:26:14', '2022-09-18 23:26:14'),
	(6, 'South Africa', '2022-09-18 23:26:14', '2022-09-18 23:26:14');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

--  テーブル future_db.failed_jobs の構造をダンプしています
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- テーブル future_db.failed_jobs: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

--  テーブル future_db.fuels の構造をダンプしています
CREATE TABLE IF NOT EXISTS `fuels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fuel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- テーブル future_db.fuels: ~6 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `fuels` DISABLE KEYS */;
REPLACE INTO `fuels` (`id`, `fuel`, `created_at`, `updated_at`) VALUES
	(1, 'PETROL', '2022-09-17 00:38:45', '2022-09-17 00:38:45'),
	(2, 'DIESEL', '2022-09-17 00:39:35', '2022-09-17 00:39:35'),
	(3, 'LPG', '2022-09-17 00:39:35', '2022-09-17 00:39:35'),
	(4, 'CNG', '2022-09-17 00:39:35', '2022-09-17 00:39:35'),
	(5, 'HYBRID(DIESEL)', '2022-09-17 00:39:35', '2022-09-17 00:39:35'),
	(6, 'HYBRID(PETROL)', '2022-09-17 00:39:35', '2022-09-17 00:39:35');
/*!40000 ALTER TABLE `fuels` ENABLE KEYS */;

--  テーブル future_db.makers の構造をダンプしています
CREATE TABLE IF NOT EXISTS `makers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Maker` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- テーブル future_db.makers: ~5 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `makers` DISABLE KEYS */;
REPLACE INTO `makers` (`id`, `Maker`, `created_at`, `updated_at`) VALUES
	(1, 'HONDA', NULL, NULL),
	(2, 'TOYOTA', NULL, NULL),
	(3, 'SUZUKI', NULL, NULL),
	(4, 'MAZDA', NULL, NULL),
	(5, 'BMW', NULL, NULL);
/*!40000 ALTER TABLE `makers` ENABLE KEYS */;

--  テーブル future_db.migrations の構造をダンプしています
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- テーブル future_db.migrations: ~5 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_02_25_123141_create_users_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--  テーブル future_db.mileages の構造をダンプしています
CREATE TABLE IF NOT EXISTS `mileages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mileage` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- テーブル future_db.mileages: ~13 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `mileages` DISABLE KEYS */;
REPLACE INTO `mileages` (`id`, `mileage`, `created_at`, `updated_at`) VALUES
	(1, 1000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(2, 5000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(3, 10000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(4, 20000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(5, 40000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(6, 60000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(7, 80000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(8, 100000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(9, 150000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(10, 200000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(11, 250000, '2022-09-13 19:57:06', '2022-09-13 19:57:06'),
	(12, 300000, '2022-09-17 00:38:45', '2022-09-17 00:38:45'),
	(13, 120000, '2022-09-17 00:38:45', '2022-09-17 00:38:45');
/*!40000 ALTER TABLE `mileages` ENABLE KEYS */;

--  テーブル future_db.password_resets の構造をダンプしています
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- テーブル future_db.password_resets: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--  テーブル future_db.personal_access_tokens の構造をダンプしています
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- テーブル future_db.personal_access_tokens: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

--  テーブル future_db.users の構造をダンプしています
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- テーブル future_db.users: ~1 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
	(6, 'MOSTAFA S M GOLAM', 'smarthub.jp@gmail.com', '$2y$10$JmzCzLEtxEXqJe1JM9/11uRBp5109IKFol2hchQ9kpQVzwG3deeqK', '2023-02-25 16:02:50', '2023-02-25 16:02:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--  テーブル future_db.vehiclenames の構造をダンプしています
CREATE TABLE IF NOT EXISTS `vehiclenames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `VehicleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- テーブル future_db.vehiclenames: ~9 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `vehiclenames` DISABLE KEYS */;
REPLACE INTO `vehiclenames` (`id`, `VehicleName`, `created_at`, `updated_at`) VALUES
	(1, 'FREED', NULL, NULL),
	(2, 'MINI CAB', NULL, NULL),
	(3, 'AQUA', NULL, NULL),
	(4, 'BMW MINI', NULL, NULL),
	(5, 'FIT', NULL, NULL),
	(6, 'WAGON R', NULL, NULL),
	(7, 'LOPPI', NULL, NULL),
	(8, 'PRIUS', NULL, NULL),
	(9, 'COROLLA AXIO', NULL, NULL);
/*!40000 ALTER TABLE `vehiclenames` ENABLE KEYS */;

--  テーブル future_db.vehicles の構造をダンプしています
CREATE TABLE IF NOT EXISTS `vehicles` (
  `Id` int(10) unsigned NOT NULL,
  `ChassisNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ConsigneeCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShipSailingId` int(11) DEFAULT '0',
  `CompanyIdForShippingInstruction` int(11) DEFAULT NULL,
  `CompanyIdForFinalInvoice` int(11) DEFAULT NULL,
  `FinalInvoiceCurrency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProformaInvoicePrice` int(11) DEFAULT NULL,
  `ProformaInvoiceCurrency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Maker` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Grade` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleNameExtention` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Model` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `YearModel` int(11) DEFAULT NULL,
  `EngineCapacityInCC` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EngineCapacityInWatt` int(11) DEFAULT NULL,
  `RegistrationYY` int(11) DEFAULT NULL,
  `RegistrationMonth` int(11) DEFAULT NULL,
  `RegistrationDay` int(11) DEFAULT NULL,
  `OriginalMileage` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisplayMileage` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `4WD` tinyint(1) DEFAULT NULL,
  `AlloyWheel` tinyint(1) DEFAULT NULL,
  `FullOption` tinyint(1) DEFAULT NULL,
  `PowerSteering` tinyint(1) DEFAULT NULL,
  `PowerWindow` tinyint(1) DEFAULT NULL,
  `AutoTransmission` tinyint(1) DEFAULT NULL,
  `ManualTransmission` tinyint(1) DEFAULT NULL,
  `Transmission` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Seat` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Door` int(11) DEFAULT NULL,
  `Fuel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AC` tinyint(1) DEFAULT NULL,
  `AcDetail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PLock` tinyint(1) DEFAULT NULL,
  `PMirror` tinyint(1) DEFAULT NULL,
  `AutoDoor` tinyint(1) DEFAULT NULL,
  `SunRoof` tinyint(1) DEFAULT NULL,
  `Hroof` tinyint(1) DEFAULT NULL,
  `Sglass` tinyint(1) DEFAULT NULL,
  `NKRating` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LeftHand` tinyint(1) DEFAULT NULL,
  `ABS` tinyint(1) DEFAULT NULL,
  `LeatherSeat` tinyint(1) DEFAULT NULL,
  `Navigation` tinyint(1) DEFAULT NULL,
  `TV` tinyint(1) DEFAULT NULL,
  `AirBag` tinyint(1) DEFAULT NULL,
  `AirBagValue` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Remarks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoRemarks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockLocation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegistrationNoEng` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegistrationNoJpn` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL,
  `FirstRegistrationYear` int(11) DEFAULT NULL,
  `FirstRegistrationMonth` int(11) DEFAULT NULL,
  `OwnerName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwnerAddress` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Length` int(11) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Weight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GWeight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SpecNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ClassNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EngineModel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaximumCarry` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShapeClass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehicleUse` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VehiclePurpose` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TypeOfBody` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BuyingAuctionName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BuyingAuctionDate` date DEFAULT NULL,
  `PushPrice` int(11) DEFAULT NULL,
  `BuyingAuctionCharge` int(11) DEFAULT NULL,
  `RecycleCharge` int(11) DEFAULT NULL,
  `ShakenCharge` int(11) DEFAULT NULL,
  `RiksoCompany` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExhibitAuctionName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExhibitAuctionDate` date DEFAULT NULL,
  `ExhibitAuctionCharge` int(11) DEFAULT NULL,
  `RepairCompany` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RiksoCharge` int(11) DEFAULT NULL,
  `RiksoDate` date DEFAULT NULL,
  `OtherChargesApplied` tinyint(1) DEFAULT NULL,
  `BuyingAuctionStockNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BuyingAuctionRating` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DeparturePort` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArrivalPort` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FinalInvoicePrice` int(11) DEFAULT NULL,
  `FOB` int(11) unsigned DEFAULT NULL,
  `BLNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CaseNo` int(11) DEFAULT NULL,
  `StockNo` int(11) DEFAULT NULL,
  `NumberPlateIn` tinyint(1) DEFAULT NULL,
  `NumberPlateInDate` date DEFAULT NULL,
  `DocumentsIn` tinyint(1) DEFAULT NULL,
  `DocumentsInDate` date DEFAULT NULL,
  `OwnerChange` tinyint(1) DEFAULT NULL,
  `OwnerChangeDate` date DEFAULT NULL,
  `OwnerChangeDocsReady` tinyint(1) DEFAULT NULL,
  `OwnerChangeDocsReadyDate` date DEFAULT NULL,
  `Shaken` tinyint(1) DEFAULT NULL,
  `EntrySupplier` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingCompany` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RepairDate` date DEFAULT NULL,
  `RepairCharge` int(11) DEFAULT NULL,
  `FourthPartySupplierName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FourthPartySupplierBuyingDate` date DEFAULT NULL,
  `FourthPartyBuyingPrice` int(11) DEFAULT NULL,
  `EngineNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FFWeight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FRWeight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RFWeight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RRWeight` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModelWithPrefix` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FixedNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CS` tinyint(1) DEFAULT NULL,
  `MD` tinyint(1) DEFAULT NULL,
  `CD` tinyint(1) DEFAULT NULL,
  `PurchaseLocationCode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseIncharge` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SellLocationCode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProcessingCharge` int(11) DEFAULT NULL,
  `StockEntryDate` date DEFAULT NULL,
  `SellDate` date DEFAULT NULL,
  `SellCurrency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SellPrice` bigint(20) DEFAULT '0',
  `SellRemarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LocalStockNo` int(11) DEFAULT NULL,
  `BranchPurchasePrice` bigint(20) DEFAULT NULL,
  `BranchProcessingFee` bigint(20) DEFAULT NULL,
  `BranchRepairFee` bigint(20) DEFAULT NULL,
  `SupplierType` int(10) unsigned NOT NULL,
  `TargetCountry` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RiksoPoint` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RoofGrill` tinyint(1) DEFAULT NULL,
  `RearSpoiler` tinyint(1) DEFAULT NULL,
  `DVD` tinyint(1) DEFAULT NULL,
  `ClearanceDate` date DEFAULT NULL,
  `HighDeck` tinyint(1) DEFAULT NULL,
  `JustLow` tinyint(1) DEFAULT NULL,
  `FOBCurrency` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BackUpId` int(11) DEFAULT NULL,
  `NkWebsiteDisplay` int(11) DEFAULT '0',
  `NkWebsiteFlag` tinyint(4) DEFAULT '0',
  `PictureStorage` tinyint(4) DEFAULT '0',
  `AutomanPrice` int(11) DEFAULT NULL,
  `TargetPrice` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'FOB for website',
  `FOBYEN` int(11) DEFAULT NULL,
  `OriginalRiksoCharge` int(11) DEFAULT NULL,
  `VehicleLocationId` int(11) DEFAULT '0',
  `BackMonitor` tinyint(4) DEFAULT '0',
  `Freight` int(11) DEFAULT NULL,
  `IsAgarabakara` tinyint(4) DEFAULT '0',
  `PurchaseInputPerson` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarTaxProcessingFee` int(11) DEFAULT NULL,
  `CarTaxReturn` tinyint(1) DEFAULT NULL,
  `CarTaxReturnAmount` int(11) DEFAULT NULL,
  `CarTaxReturnDate` date DEFAULT NULL,
  `HidLight` tinyint(1) DEFAULT NULL,
  `BackTyre` tinyint(1) DEFAULT NULL,
  `CheckSheetMaxCarry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExportNNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExportRefNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExportScheduledDay` date DEFAULT NULL,
  `ExportScheduleRegistrationPlace` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExportScheduleRegistrationDistrict` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExportApplicationDate` date DEFAULT NULL,
  `EngineCapacityInKiloWatt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecycleSend` tinyint(4) DEFAULT NULL,
  `RecycleSendDate` date DEFAULT NULL,
  `RecycleNotApplicatble` tinyint(4) DEFAULT NULL,
  `RecycleDisAllowed` tinyint(4) DEFAULT NULL,
  `ReceivedRecycleAmount` int(11) DEFAULT NULL,
  `RecycleReceivedMonth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecycleReceivedYear` int(11) DEFAULT NULL,
  `InspectionCharge` int(11) DEFAULT NULL,
  `ShippingCharge` int(11) DEFAULT NULL,
  `FreightCharge` int(11) DEFAULT NULL,
  `Machineries` tinyint(11) DEFAULT NULL,
  `OthersDescription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BossPrice` int(11) DEFAULT NULL,
  `NKTenderDisplay` tinyint(1) DEFAULT '0',
  `CYearMonth` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ChassisNo` (`ChassisNo`),
  KEY `ShipSailingId` (`FinalInvoicePrice`),
  KEY `BLNo` (`BLNo`),
  KEY `CaseNo` (`CaseNo`),
  KEY `ConsigneeCode` (`ConsigneeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- テーブル future_db.vehicles: ~3 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
REPLACE INTO `vehicles` (`Id`, `ChassisNo`, `ConsigneeCode`, `ShipSailingId`, `CompanyIdForShippingInstruction`, `CompanyIdForFinalInvoice`, `FinalInvoiceCurrency`, `ProformaInvoicePrice`, `ProformaInvoiceCurrency`, `Maker`, `VehicleName`, `Grade`, `VehicleNameExtention`, `Model`, `YearModel`, `EngineCapacityInCC`, `EngineCapacityInWatt`, `RegistrationYY`, `RegistrationMonth`, `RegistrationDay`, `OriginalMileage`, `DisplayMileage`, `4WD`, `AlloyWheel`, `FullOption`, `PowerSteering`, `PowerWindow`, `AutoTransmission`, `ManualTransmission`, `Transmission`, `Color`, `Seat`, `Door`, `Fuel`, `AC`, `AcDetail`, `PLock`, `PMirror`, `AutoDoor`, `SunRoof`, `Hroof`, `Sglass`, `NKRating`, `LeftHand`, `ABS`, `LeatherSeat`, `Navigation`, `TV`, `AirBag`, `AirBagValue`, `Remarks`, `CoRemarks`, `StockLocation`, `RegistrationNoEng`, `RegistrationNoJpn`, `RegistrationDate`, `FirstRegistrationYear`, `FirstRegistrationMonth`, `OwnerName`, `OwnerAddress`, `Length`, `Width`, `Height`, `Weight`, `GWeight`, `SpecNo`, `ClassNo`, `EngineModel`, `MaximumCarry`, `ShapeClass`, `VehicleUse`, `VehiclePurpose`, `TypeOfBody`, `BuyingAuctionName`, `BuyingAuctionDate`, `PushPrice`, `BuyingAuctionCharge`, `RecycleCharge`, `ShakenCharge`, `RiksoCompany`, `ExhibitAuctionName`, `ExhibitAuctionDate`, `ExhibitAuctionCharge`, `RepairCompany`, `RiksoCharge`, `RiksoDate`, `OtherChargesApplied`, `BuyingAuctionStockNo`, `BuyingAuctionRating`, `DeparturePort`, `ArrivalPort`, `FinalInvoicePrice`, `FOB`, `BLNo`, `CaseNo`, `StockNo`, `NumberPlateIn`, `NumberPlateInDate`, `DocumentsIn`, `DocumentsInDate`, `OwnerChange`, `OwnerChangeDate`, `OwnerChangeDocsReady`, `OwnerChangeDocsReadyDate`, `Shaken`, `EntrySupplier`, `ShippingCompany`, `RepairDate`, `RepairCharge`, `FourthPartySupplierName`, `FourthPartySupplierBuyingDate`, `FourthPartyBuyingPrice`, `EngineNo`, `FFWeight`, `FRWeight`, `RFWeight`, `RRWeight`, `ModelWithPrefix`, `FixedNumber`, `CS`, `MD`, `CD`, `PurchaseLocationCode`, `PurchaseIncharge`, `SellLocationCode`, `ProcessingCharge`, `StockEntryDate`, `SellDate`, `SellCurrency`, `SellPrice`, `SellRemarks`, `LocalStockNo`, `BranchPurchasePrice`, `BranchProcessingFee`, `BranchRepairFee`, `SupplierType`, `TargetCountry`, `RiksoPoint`, `RoofGrill`, `RearSpoiler`, `DVD`, `ClearanceDate`, `HighDeck`, `JustLow`, `FOBCurrency`, `BackUpId`, `NkWebsiteDisplay`, `NkWebsiteFlag`, `PictureStorage`, `AutomanPrice`, `TargetPrice`, `FOBYEN`, `OriginalRiksoCharge`, `VehicleLocationId`, `BackMonitor`, `Freight`, `IsAgarabakara`, `PurchaseInputPerson`, `CarTaxProcessingFee`, `CarTaxReturn`, `CarTaxReturnAmount`, `CarTaxReturnDate`, `HidLight`, `BackTyre`, `CheckSheetMaxCarry`, `ExportNNo`, `ExportRefNo`, `ExportScheduledDay`, `ExportScheduleRegistrationPlace`, `ExportScheduleRegistrationDistrict`, `ExportApplicationDate`, `EngineCapacityInKiloWatt`, `RecycleSend`, `RecycleSendDate`, `RecycleNotApplicatble`, `RecycleDisAllowed`, `ReceivedRecycleAmount`, `RecycleReceivedMonth`, `RecycleReceivedYear`, `InspectionCharge`, `ShippingCharge`, `FreightCharge`, `Machineries`, `OthersDescription`, `BossPrice`, `NKTenderDisplay`, `CYearMonth`) VALUES
	(10006, 'MH22S-132352', '', 0, 0, NULL, NULL, NULL, NULL, 'SUZUKI', 'WAGON R', 'STINGRAY', NULL, 'DBA-MH22S', 200801, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, '', 'BLACK', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU KANAGAWA', '2020-01-16', 12000, 9000, 9000, 0, 'OWN', '', NULL, 0, NULL, 0, NULL, NULL, '3030', '', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 3000, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'NOMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, '0'),
	(10007, 'MH23S-768357', '', 0, 0, NULL, NULL, NULL, NULL, 'SUZUKI', 'WAGON R', '', NULL, 'DBA-MH23S', 201111, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', 'SILVER', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', '', '', '', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU MIE', '2020-03-31', 12000, 9500, 9880, 0, 'ZERO', '', NULL, 0, NULL, 33000, NULL, NULL, '8638', '', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'NOMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
	(10008, 'HF21S-305509', '', 0, NULL, NULL, NULL, NULL, NULL, 'MAZDA', 'LOPPI', '', NULL, 'UA-HF21S', 200201, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', '', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MINI-MINI', '2020-02-01', 20000, 10000, 8000, 0, 'OWN', '', NULL, NULL, NULL, 0, NULL, NULL, '0001', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 3000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', NULL, 0, 379, 0, NULL, 0, 'NOMAN', 0, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, '0');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

--  テーブル future_db.years の構造をダンプしています
CREATE TABLE IF NOT EXISTS `years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `YearModel` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- テーブル future_db.years: ~24 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
REPLACE INTO `years` (`id`, `YearModel`, `created_at`, `updated_at`) VALUES
	(1, 2000, '2022-09-18 19:46:33', '2022-09-18 19:46:33'),
	(2, 2001, '2022-09-18 19:46:33', '2022-09-18 19:46:33'),
	(3, 2002, '2022-09-18 19:46:33', '2022-09-18 19:46:33'),
	(4, 2003, '2022-09-18 19:46:33', '2022-09-18 19:46:33'),
	(5, 2004, '2022-09-18 19:46:33', '2022-09-18 19:46:33'),
	(6, 2005, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(7, 2006, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(8, 2007, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(9, 2008, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(10, 2009, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(11, 2010, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(12, 2011, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(13, 2012, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(14, 2013, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(15, 2014, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(16, 2015, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(17, 2016, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(18, 2017, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(19, 2018, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(20, 2019, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(21, 2020, '2022-09-18 19:46:34', '2022-09-18 19:46:34'),
	(22, 2021, '2022-09-18 19:47:18', '2022-09-18 19:47:18'),
	(23, 2022, '2022-09-18 19:47:19', '2022-09-18 19:47:19'),
	(24, 2023, '2022-09-18 19:47:19', '2022-09-18 19:47:19');
/*!40000 ALTER TABLE `years` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
