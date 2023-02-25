-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2022 年 9 月 05 日 09:00
-- サーバのバージョン： 5.7.35
-- PHP のバージョン: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `a2db_ftokyo`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `a2_vehicle`
--

CREATE TABLE `a2_vehicle` (
  `Id` int(10) UNSIGNED NOT NULL,
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
  `FOB` int(11) UNSIGNED DEFAULT NULL,
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
  `SupplierType` int(10) UNSIGNED NOT NULL,
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
  `CYearMonth` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `a2_vehicle`
--

INSERT INTO `a2_vehicle` (`Id`, `ChassisNo`, `ConsigneeCode`, `ShipSailingId`, `CompanyIdForShippingInstruction`, `CompanyIdForFinalInvoice`, `FinalInvoiceCurrency`, `ProformaInvoicePrice`, `ProformaInvoiceCurrency`, `Maker`, `VehicleName`, `Grade`, `VehicleNameExtention`, `Model`, `YearModel`, `EngineCapacityInCC`, `EngineCapacityInWatt`, `RegistrationYY`, `RegistrationMonth`, `RegistrationDay`, `OriginalMileage`, `DisplayMileage`, `4WD`, `AlloyWheel`, `FullOption`, `PowerSteering`, `PowerWindow`, `AutoTransmission`, `ManualTransmission`, `Transmission`, `Color`, `Seat`, `Door`, `Fuel`, `AC`, `AcDetail`, `PLock`, `PMirror`, `AutoDoor`, `SunRoof`, `Hroof`, `Sglass`, `NKRating`, `LeftHand`, `ABS`, `LeatherSeat`, `Navigation`, `TV`, `AirBag`, `AirBagValue`, `Remarks`, `CoRemarks`, `StockLocation`, `RegistrationNoEng`, `RegistrationNoJpn`, `RegistrationDate`, `FirstRegistrationYear`, `FirstRegistrationMonth`, `OwnerName`, `OwnerAddress`, `Length`, `Width`, `Height`, `Weight`, `GWeight`, `SpecNo`, `ClassNo`, `EngineModel`, `MaximumCarry`, `ShapeClass`, `VehicleUse`, `VehiclePurpose`, `TypeOfBody`, `BuyingAuctionName`, `BuyingAuctionDate`, `PushPrice`, `BuyingAuctionCharge`, `RecycleCharge`, `ShakenCharge`, `RiksoCompany`, `ExhibitAuctionName`, `ExhibitAuctionDate`, `ExhibitAuctionCharge`, `RepairCompany`, `RiksoCharge`, `RiksoDate`, `OtherChargesApplied`, `BuyingAuctionStockNo`, `BuyingAuctionRating`, `DeparturePort`, `ArrivalPort`, `FinalInvoicePrice`, `FOB`, `BLNo`, `CaseNo`, `StockNo`, `NumberPlateIn`, `NumberPlateInDate`, `DocumentsIn`, `DocumentsInDate`, `OwnerChange`, `OwnerChangeDate`, `OwnerChangeDocsReady`, `OwnerChangeDocsReadyDate`, `Shaken`, `EntrySupplier`, `ShippingCompany`, `RepairDate`, `RepairCharge`, `FourthPartySupplierName`, `FourthPartySupplierBuyingDate`, `FourthPartyBuyingPrice`, `EngineNo`, `FFWeight`, `FRWeight`, `RFWeight`, `RRWeight`, `ModelWithPrefix`, `FixedNumber`, `CS`, `MD`, `CD`, `PurchaseLocationCode`, `PurchaseIncharge`, `SellLocationCode`, `ProcessingCharge`, `StockEntryDate`, `SellDate`, `SellCurrency`, `SellPrice`, `SellRemarks`, `LocalStockNo`, `BranchPurchasePrice`, `BranchProcessingFee`, `BranchRepairFee`, `SupplierType`, `TargetCountry`, `RiksoPoint`, `RoofGrill`, `RearSpoiler`, `DVD`, `ClearanceDate`, `HighDeck`, `JustLow`, `FOBCurrency`, `BackUpId`, `NkWebsiteDisplay`, `NkWebsiteFlag`, `PictureStorage`, `AutomanPrice`, `TargetPrice`, `FOBYEN`, `OriginalRiksoCharge`, `VehicleLocationId`, `BackMonitor`, `Freight`, `IsAgarabakara`, `PurchaseInputPerson`, `CarTaxProcessingFee`, `CarTaxReturn`, `CarTaxReturnAmount`, `CarTaxReturnDate`, `HidLight`, `BackTyre`, `CheckSheetMaxCarry`, `ExportNNo`, `ExportRefNo`, `ExportScheduledDay`, `ExportScheduleRegistrationPlace`, `ExportScheduleRegistrationDistrict`, `ExportApplicationDate`, `EngineCapacityInKiloWatt`, `RecycleSend`, `RecycleSendDate`, `RecycleNotApplicatble`, `RecycleDisAllowed`, `ReceivedRecycleAmount`, `RecycleReceivedMonth`, `RecycleReceivedYear`, `InspectionCharge`, `ShippingCharge`, `FreightCharge`, `Machineries`, `OthersDescription`, `BossPrice`, `NKTenderDisplay`, `CYearMonth`) VALUES
(45999, 'ZVW30-1070403', '', 1, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'PRIUS', '', NULL, 'DAA-ZVW30', 200909, '1800', 1790, NULL, NULL, NULL, '292000', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', '', '5', 5, 'HYBRID', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', '', '', '', 'YOKOHAMA326NO7789', 'YOKOHAMA326NO7789', '2021-02-19', 2009, 9, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 446, 174, 149, '1360', '1635', '16294', '0013', '2ZR-3JM', '', '', '', '', '', 'MIRIVE SAITAMA', '2021-02-24', 250000, 0, 0, 0, 'ZERO', '', NULL, 0, NULL, 0, '2021-04-15', 0, '4296', '3.5', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '830', '', '', '530', 'DAA-ZVW30', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'KENYA', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'RAHMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(46000, 'NZE141-3021073', '', 0, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'COROLLA AXIO', '', NULL, 'DBA-NZE141', 201203, '1500', NULL, NULL, NULL, NULL, '147000', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', '', '5', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', '', '', '', 'SENDAI 500 WA 6228', '', '2021-02-25', 2012, 3, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 441, 169, 146, '1130', '', '', '', '1NZ', '', '', '', '', '', 'MIRIVE SAITAMA', '2021-02-24', 100000, 0, 0, 0, 'ZERO', '', NULL, 0, NULL, 0, '2021-04-15', 0, '0099', '3.5', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '710', '', '', '420', 'DBA-NZE141', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'KENYA', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'RAHMAN', 0, 0, 0, NULL, 0, 0, '', '02647', '', NULL, 'SHINAGAWA', 'TOKYO', '2021-03-31', '1.49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(46003, 'ZVW30-1070413', '', 1, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'PRIUS', '', NULL, 'DAA-ZVW30', 200909, '1800', 1790, NULL, NULL, NULL, '292000', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', '', '5', 5, 'HYBRID', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', '', '', '', 'YOKOHAMA326NO7789', 'YOKOHAMA326NO7789', '2021-02-19', 2009, 9, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 446, 174, 149, '1360', '1635', '16294', '0013', '2ZR-3JM', '', '', '', '', '', 'MIRIVE SAITAMA', '2021-02-24', 250000, 0, 0, 0, 'ZERO', '', NULL, 0, NULL, 0, '2021-04-15', 0, '4296', '3.5', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '830', '', '', '530', 'DAA-ZVW30', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'KENYA', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'RAHMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(46004, 'ZVW30-1070404', NULL, 1, 0, 0, '(NULL)', 0, '(NULL)', 'TOYOTA', 'PRIUS', NULL, '(NULL)', 'DAA-ZVW30', 200909, '1800', 1790, 0, 0, 0, '292000', NULL, 0, 0, 1, 1, 1, 1, 0, 'FAT', NULL, '5', 5, 'HYBRID', 1, NULL, 0, 0, 0, 0, 0, 0, '(NULL)', 0, 1, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 'YOKOHAMA326NO7789', 'YOKOHAMA326NO7789', '2021-02-19', 2009, 9, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 446, 174, 149, '1360', '1635', '16294', '0013', '2ZR-3JM', NULL, NULL, NULL, NULL, NULL, 'MIRIVE SAITAMA', '2021-02-24', 250000, 0, 0, 0, 'ZERO', NULL, NULL, 0, '(NULL)', 0, '2021-04-15', 0, '4296', '3.5', NULL, NULL, 0, 0, '(NULL)', 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, '2021-08-25', 0, NULL, NULL, '2021-08-25', 0, '(NULL)', '2021-08-25', 0, NULL, '830', NULL, NULL, '530', 'DAA-ZVW30', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, '2021-08-25', '2021-08-25', NULL, 0, NULL, 0, 0, 0, 0, 0, 'KENYA', NULL, 0, 0, 0, '2021-08-25', 0, 0, '(NULL', 0, 0, 0, 0, 0, '', 0, 0, 379, 0, 0, 0, 'RAHMAN', 0, 0, 0, '2021-08-25', 0, 0, NULL, '(NULL)', '(NULL)', NULL, '(NULL)', '(NULL)', '0000-00-00', NULL, 0, NULL, 0, 0, 0, '(NULL)', 0, 0, 0, 0, 0, '(NULL)', 0, 0, '0'),
(46005, 'NZE141-3021075', NULL, 0, 0, 0, '(NULL)', 0, '(NULL)', 'TOYOTA', 'COROLLA AXIO', NULL, '(NULL)', 'DBA-NZE141', 201203, '1500', 0, 0, 0, 0, '147000', NULL, 0, 0, 1, 1, 1, 1, 0, 'FAT', NULL, '5', 5, 'GASOLINE', 1, NULL, 0, 0, 0, 0, 0, 0, '(NULL)', 0, 1, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 'SENDAI 500 WA 6228', NULL, '2021-02-25', 2012, 3, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 441, 169, 146, '1130', NULL, NULL, NULL, '1NZ', NULL, NULL, NULL, NULL, NULL, 'MIRIVE SAITAMA', '2021-02-24', 100000, 0, 0, 0, 'ZERO', NULL, NULL, 0, '(NULL)', 0, '2021-04-15', 0, '0099', '3.5', NULL, NULL, 0, 0, '(NULL)', 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, '2021-08-25', 0, NULL, NULL, '2021-08-25', 0, '(NULL)', '2021-08-25', 0, NULL, '710', NULL, NULL, '420', 'DBA-NZE141', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, '2021-08-25', '2021-08-25', NULL, 0, NULL, 0, 0, 0, 0, 0, 'KENYA', NULL, 0, 0, 0, '2021-08-25', 0, 0, '(NULL', 0, 0, 0, 0, 0, '', 0, 0, 379, 0, 0, 0, 'RAHMAN', 0, 0, 0, '2021-08-25', 0, 0, NULL, '02647', NULL, NULL, 'SHINAGAWA', 'TOKYO', '2021-03-31', '1.49', 0, NULL, 0, 0, 0, '(NULL)', 0, 0, 0, 0, 0, '(NULL)', 0, 0, '0'),
(46006, 'ZVW30-1070416', NULL, 1, 0, 0, '(NULL)', 0, '(NULL)', 'TOYOTA', 'PRIUS', NULL, '(NULL)', 'DAA-ZVW30', 200909, '1800', 1790, 0, 0, 0, '292000', NULL, 0, 0, 1, 1, 1, 1, 0, 'FAT', NULL, '5', 5, 'HYBRID', 1, NULL, 0, 0, 0, 0, 0, 0, '(NULL)', 0, 1, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 'YOKOHAMA326NO7789', 'YOKOHAMA326NO7789', '2021-02-19', 2009, 9, 'FUTURE TRADING', 'SAGAMIHARA JAPAN', 446, 174, 149, '1360', '1635', '16294', '0013', '2ZR-3JM', NULL, NULL, NULL, NULL, NULL, 'MIRIVE SAITAMA', '2021-02-24', 250000, 0, 0, 0, 'ZERO', NULL, NULL, 0, '(NULL)', 0, '2021-04-15', 0, '4296', '3.5', NULL, NULL, 0, 0, '(NULL)', 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, '2021-08-25', 0, NULL, NULL, '2021-08-25', 0, '(NULL)', '2021-08-25', 0, NULL, '830', NULL, NULL, '530', 'DAA-ZVW30', '5', 0, 0, 0, 'HEADOFFICE', 'HANIFUR', 'HEADOFFICE', 0, '2021-08-25', '2021-08-25', NULL, 0, NULL, 0, 0, 0, 0, 0, 'KENYA', NULL, 0, 0, 0, '2021-08-25', 0, 0, '(NULL', 0, 0, 0, 0, 0, '', 0, 0, 379, 0, 0, 0, 'RAHMAN', 0, 0, 0, '2021-08-25', 0, 0, NULL, '(NULL)', '(NULL)', NULL, '(NULL)', '(NULL)', '0000-00-00', NULL, 0, NULL, 0, 0, 0, '(NULL)', 0, 0, 0, 0, 0, '(NULL)', 0, 0, '0'),
(46007, 'ZVW30-5529937', '', 0, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'PRIUS', '', NULL, '', 0, '1800', NULL, NULL, NULL, NULL, '', '', 0, 0, 0, 0, 0, 1, 0, '', 'PEARL', '7', 5, 'GASOLINE', 0, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 1, 0, 0, '', '', '', 'MRS BANDO', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'MIRIVE OSAKA', '2022-09-02', 266000, 12727, 11820, 0, 'DAICHI', '', NULL, 0, NULL, 25000, NULL, NULL, '60047', '', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'SUMON', 'HEADOFFICE', 0, '2022-09-01', NULL, '', 0, '', 0, 0, 0, 0, 0, 'BANGLADESH', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 1, NULL, '', 0, 0, 102, 0, NULL, 0, 'RAHMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `a2_vehicle`
--
ALTER TABLE `a2_vehicle`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `ChassisNo` (`ChassisNo`),
  ADD KEY `ShipSailingId` (`FinalInvoicePrice`),
  ADD KEY `BLNo` (`BLNo`),
  ADD KEY `CaseNo` (`CaseNo`),
  ADD KEY `ConsigneeCode` (`ConsigneeCode`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `a2_vehicle`
--
ALTER TABLE `a2_vehicle`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
