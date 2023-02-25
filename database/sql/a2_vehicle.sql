-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2022 at 11:15 PM
-- Server version: 5.7.35
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a2db_future`
--

-- --------------------------------------------------------
--
-- Table structure for table `bodytype`
--
CREATE TABLE `bodytypes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `TypeOfBody` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
);
--
-- Insert value from vehicles
--
INSERT INTO bodytypes(TypeOfBody)
SELECT DISTINCT TypeOfBody FROM vehicles;

--
-- Table structure for table `vehiclenames`
--
CREATE TABLE `vehiclenames` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `VehicleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
);

-
-- Insert value from vehicles
--
INSERT INTO vehiclenames(VehicleName)
SELECT DISTINCT VehicleName FROM vehicles;

--
-- Table structure for table `Makers`
--
CREATE TABLE `makers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Maker` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
);

INSERT INTO makers(Maker)
SELECT DISTINCT Maker FROM vehicles
ALTER TABLE Makers RENAME TO makers; Makers.
--
-- Table structure for table `ccs`
--
CREATE TABLE `ccs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `EngineCapacityInCC` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EngineCapacityInWatt` int(11) DEFAULT NULL,
  `created_at` DATETIME DEFAULT NULL,
  `updated_at` DATETIME DEFAULT NULL
);

INSERT INTO ccs(EngineCapacityInCC, EngineCapacityInWatt) 
SELECT DISTINCT EngineCapacityInCC, EngineCapacityInWatt FROM vehicles

--
-- Table structure for table `Makers`
--
CREATE TABLE `mileages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `mileage` int(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO mileages(mileage) values(1000);
INSERT INTO mileages(mileage) VALUES(5000);
INSERT INTO mileages(mileage) VALUES(10000);
INSERT INTO mileages(mileage) VALUES(20000);
INSERT INTO mileages(mileage) VALUES(40000);
INSERT INTO mileages(mileage) VALUES(60000);
INSERT INTO mileages(mileage) VALUES(80000);
INSERT INTO mileages(mileage) VALUES(100000);
INSERT INTO mileages(mileage) VALUES(150000);
INSERT INTO mileages(mileage) VALUES(200000);
INSERT INTO mileages(mileage) VALUES(250000);


CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `YearModel` int(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO years(YearModel) values(2000);
INSERT INTO years(YearModel) VALUES(2001);
INSERT INTO years(YearModel) VALUES(2002);
INSERT INTO years(YearModel) VALUES(2003);
INSERT INTO years(YearModel) VALUES(2004);
INSERT INTO years(YearModel) VALUES(2005);
INSERT INTO years(YearModel) VALUES(2006);
INSERT INTO years(YearModel) VALUES(2007);
INSERT INTO years(YearModel) VALUES(2008);
INSERT INTO years(YearModel) VALUES(2009);
INSERT INTO years(YearModel) VALUES(2010);
INSERT INTO years(YearModel) values(2011);
INSERT INTO years(YearModel) VALUES(2012);
INSERT INTO years(YearModel) VALUES(2013);
INSERT INTO years(YearModel) VALUES(2014);
INSERT INTO years(YearModel) VALUES(2015);
INSERT INTO years(YearModel) VALUES(2016);
INSERT INTO years(YearModel) VALUES(2017);
INSERT INTO years(YearModel) VALUES(2018);
INSERT INTO years(YearModel) VALUES(2019);
INSERT INTO years(YearModel) VALUES(2020);
INSERT INTO years(YearModel) VALUES(2021);
INSERT INTO years(YearModel) values(2022);
INSERT INTO years(YearModel) values(2023);


CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `CountryName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO countries(CountryName) values('Bangladesh');
INSERT INTO countries(CountryName) values('India');
INSERT INTO countries(CountryName) values('Kenya');
INSERT INTO countries(CountryName) values('Australia');
INSERT INTO countries(CountryName) values('England');
INSERT INTO countries(CountryName) values('South Africa');

CREATE TABLE `fuels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fuel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO fuels(fuel) values('PETROL');
INSERT INTO mileages(mileage) VALUES('DIESEL');
INSERT INTO mileages(mileage) VALUES('LPG');
INSERT INTO mileages(mileage) VALUES('CNG');
INSERT INTO mileages(mileage) VALUES('HYBRID(DIESEL)');
INSERT INTO mileages(mileage) VALUES('HYBRID(PETROL)');



CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO colors(color) values("Beige");
INSERT INTO colors(color) values("Black");
INSERT INTO colors(color) values("Blue");
INSERT INTO colors(color) values("Brown");
INSERT INTO colors(color) values("Cream");
INSERT INTO colors(color) values("Gold");
INSERT INTO colors(color) values("Gray");
INSERT INTO colors(color) values("Green");
INSERT INTO colors(color) values("Orange");
INSERT INTO colors(color) values("Pearl");
INSERT INTO colors(color) values("Pink");
INSERT INTO colors(color) values("Purple");
INSERT INTO colors(color) values("Red");
INSERT INTO colors(color) values("Rose");
INSERT INTO colors(color) values("Silver");
INSERT INTO colors(color) values("Turquoise");
INSERT INTO colors(color) values("Twotone");
INSERT INTO colors(color) values("White");
INSERT INTO colors(color) values("Wine");
INSERT INTO colors(color) values("Yellow");
INSERT INTO colors(color) values("Other");

--
-- Table structure for table `a2_vehicle`
--

CREATE TABLE `vehicles` (
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
-- Dumping data for table `a2_vehicle`
--

INSERT INTO `vehicles` (`Id`, `ChassisNo`, `ConsigneeCode`, `ShipSailingId`, `CompanyIdForShippingInstruction`, `CompanyIdForFinalInvoice`, `FinalInvoiceCurrency`, `ProformaInvoicePrice`, `ProformaInvoiceCurrency`, `Maker`, `VehicleName`, `Grade`, `VehicleNameExtention`, `Model`, `YearModel`, `EngineCapacityInCC`, `EngineCapacityInWatt`, `RegistrationYY`, `RegistrationMonth`, `RegistrationDay`, `OriginalMileage`, `DisplayMileage`, `4WD`, `AlloyWheel`, `FullOption`, `PowerSteering`, `PowerWindow`, `AutoTransmission`, `ManualTransmission`, `Transmission`, `Color`, `Seat`, `Door`, `Fuel`, `AC`, `AcDetail`, `PLock`, `PMirror`, `AutoDoor`, `SunRoof`, `Hroof`, `Sglass`, `NKRating`, `LeftHand`, `ABS`, `LeatherSeat`, `Navigation`, `TV`, `AirBag`, `AirBagValue`, `Remarks`, `CoRemarks`, `StockLocation`, `RegistrationNoEng`, `RegistrationNoJpn`, `RegistrationDate`, `FirstRegistrationYear`, `FirstRegistrationMonth`, `OwnerName`, `OwnerAddress`, `Length`, `Width`, `Height`, `Weight`, `GWeight`, `SpecNo`, `ClassNo`, `EngineModel`, `MaximumCarry`, `ShapeClass`, `VehicleUse`, `VehiclePurpose`, `TypeOfBody`, `BuyingAuctionName`, `BuyingAuctionDate`, `PushPrice`, `BuyingAuctionCharge`, `RecycleCharge`, `ShakenCharge`, `RiksoCompany`, `ExhibitAuctionName`, `ExhibitAuctionDate`, `ExhibitAuctionCharge`, `RepairCompany`, `RiksoCharge`, `RiksoDate`, `OtherChargesApplied`, `BuyingAuctionStockNo`, `BuyingAuctionRating`, `DeparturePort`, `ArrivalPort`, `FinalInvoicePrice`, `FOB`, `BLNo`, `CaseNo`, `StockNo`, `NumberPlateIn`, `NumberPlateInDate`, `DocumentsIn`, `DocumentsInDate`, `OwnerChange`, `OwnerChangeDate`, `OwnerChangeDocsReady`, `OwnerChangeDocsReadyDate`, `Shaken`, `EntrySupplier`, `ShippingCompany`, `RepairDate`, `RepairCharge`, `FourthPartySupplierName`, `FourthPartySupplierBuyingDate`, `FourthPartyBuyingPrice`, `EngineNo`, `FFWeight`, `FRWeight`, `RFWeight`, `RRWeight`, `ModelWithPrefix`, `FixedNumber`, `CS`, `MD`, `CD`, `PurchaseLocationCode`, `PurchaseIncharge`, `SellLocationCode`, `ProcessingCharge`, `StockEntryDate`, `SellDate`, `SellCurrency`, `SellPrice`, `SellRemarks`, `LocalStockNo`, `BranchPurchasePrice`, `BranchProcessingFee`, `BranchRepairFee`, `SupplierType`, `TargetCountry`, `RiksoPoint`, `RoofGrill`, `RearSpoiler`, `DVD`, `ClearanceDate`, `HighDeck`, `JustLow`, `FOBCurrency`, `BackUpId`, `NkWebsiteDisplay`, `NkWebsiteFlag`, `PictureStorage`, `AutomanPrice`, `TargetPrice`, `FOBYEN`, `OriginalRiksoCharge`, `VehicleLocationId`, `BackMonitor`, `Freight`, `IsAgarabakara`, `PurchaseInputPerson`, `CarTaxProcessingFee`, `CarTaxReturn`, `CarTaxReturnAmount`, `CarTaxReturnDate`, `HidLight`, `BackTyre`, `CheckSheetMaxCarry`, `ExportNNo`, `ExportRefNo`, `ExportScheduledDay`, `ExportScheduleRegistrationPlace`, `ExportScheduleRegistrationDistrict`, `ExportApplicationDate`, `EngineCapacityInKiloWatt`, `RecycleSend`, `RecycleSendDate`, `RecycleNotApplicatble`, `RecycleDisAllowed`, `ReceivedRecycleAmount`, `RecycleReceivedMonth`, `RecycleReceivedYear`, `InspectionCharge`, `ShippingCharge`, `FreightCharge`, `Machineries`, `OthersDescription`, `BossPrice`, `NKTenderDisplay`, `CYearMonth`) VALUES
(10001, 'GB3-1104451', '', 0, 0, NULL, NULL, NULL, NULL, 'HONDA', 'FREED', 'G JUST SELECTION', NULL, 'DBA-GB3', 200906, '1500', NULL, NULL, NULL, NULL, '113000', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', 'SILVER', '7', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 1, 1, 1, '', 'FAT, AC, PS, PW, AirBag, ABS, NAVI, TV, DVD, Back Monitor', 'HONDA KANSAI', 'NKYARD', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', 'STATION WAGON', 'HONDA KANSAI', '2021-04-19', 38000, 12000, 11860, 0, 'ZERO', '', NULL, 0, NULL, 23980, '2021-04-24', NULL, '79026', '3', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, '', '', NULL, 10000, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 3000, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', 'NKYARD', 0, 0, 1, NULL, 0, 0, NULL, NULL, 1, 1, 1, NULL, '', 0, 0, 128, 1, NULL, 0, 'MASUDRANA', 31600, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(10002, 'U62V-2202363', 'YAHOOAUC', 0, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'MINI CAB', '4WD BRAVO', NULL, 'GBD-U62V', 201303, '660', NULL, NULL, NULL, NULL, '121281', '', 0, 0, 1, 1, 1, 0, 1, 'C4', 'SILVER', '2', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', 'MT(C4), AC, PS, PW, AirBag, ABS', 'オークションID ：r481350846', 'ZERO KAWASAKI CENTER', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU FUKUSHIMA', '2021-04-22', 102000, 9500, 8520, 0, 'ZERO', '', NULL, 0, NULL, 60000, '2021-04-28', NULL, '7255', '3.5', '', '', NULL, 0, NULL, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 7700, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, '2021-05-17', 'JPY', 243850, '投稿者： naditrade オークションID: r481350846', 0, 0, 0, 0, 0, 'JAPAN', 'ZERO KAWASAKI CENTER', 0, 0, 0, NULL, 0, 0, NULL, NULL, 1, 1, 1, NULL, '', 0, 0, 219, 0, NULL, 0, 'MASUDRANA', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(10003, 'NHP10-6065947', '', 0, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'AQUA', 'S', NULL, 'DAA-NHP10', 201207, '1500', NULL, NULL, NULL, NULL, '111430', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', 'SILVER', '5', 5, 'GASOLINE', 1, 'AAC', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', 'FAT, AAC, PS, PW, AirBag, ABS', '', 'ZERO KAWASAKI CENTER', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU FUKUSHIMA', '2021-04-22', 121000, 9500, 9980, 0, 'ZERO', '', NULL, 0, NULL, 20680, '2021-04-28', NULL, '2369', '3', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', 'ZERO KAWASAKI CENTER', 0, 0, 0, NULL, 0, 0, NULL, NULL, 1, 1, 1, NULL, '', 0, 0, 219, 0, NULL, 0, 'MASUDRANA', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(10004, 'WMWRA32020TE81838', 'AUCTION', 0, 0, NULL, NULL, NULL, NULL, 'TOYOTA', 'BMW MINI', 'COOPER ONE', NULL, 'GH-RA16', 200506, '1600', NULL, NULL, NULL, NULL, '131818', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', 'SILVER', '4', 3, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 1, 1, 1, '', 'FAT, AC, PS, PW, AirBag, ABS, NAVI, TV', '', 'ZERO KAWASAKI CENTER', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU FUKUSHIMA', '2021-04-22', 21000, 9500, 15790, 0, 'ZERO', '', NULL, 0, NULL, 20680, '2021-04-28', NULL, '7387', '3.5', '', '', NULL, 0, NULL, 2, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, '2021-05-18', 'JPY', 40000, 'CAA TOKYO', 0, 0, 0, 0, 0, 'JAPAN', 'ZERO KAWASAKI CENTER', 0, 0, 0, NULL, 0, 0, NULL, NULL, 1, 1, 1, NULL, '', 0, 0, 219, 0, NULL, 0, 'MASUDRANA', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(10005, 'GE6-1405390', 'AUCTION', 0, 0, NULL, NULL, NULL, NULL, 'HONDA', 'FIT', 'G', NULL, 'DBA-GE6', 2010, '1300', NULL, NULL, NULL, NULL, '165000', '', 0, 0, 1, 1, 1, 0, 0, '', 'SILVER', '5', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 1, 1, 0, NULL, '', '', '', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'MIRIVE SAITAMA', '2020-07-22', 108000, 10000, 11000, 0, 'NK-RIKUSOU', '', NULL, 0, NULL, 0, NULL, NULL, '7048', '', '', '', NULL, 0, NULL, 1, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, '2021-05-18', 'JPY', 50000, 'CAA TOKYO', 0, 0, 0, 0, 0, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 1, 1, 1, NULL, '', 0, 0, 379, 0, NULL, 0, 'NOMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, '0'),
(10006, 'MH22S-132352', '', 0, 0, NULL, NULL, NULL, NULL, 'SUZUKI', 'WAGON R', 'STINGRAY', NULL, 'DBA-MH22S', 200801, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, '', 'BLACK', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, '', '', '', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU KANAGAWA', '2020-01-16', 12000, 9000, 9000, 0, 'OWN', '', NULL, 0, NULL, 0, NULL, NULL, '3030', '', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 3000, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'NOMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, '0'),
(10007, 'MH23S-768357', '', 0, 0, NULL, NULL, NULL, NULL, 'SUZUKI', 'WAGON R', '', NULL, 'DBA-MH23S', 201111, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', 'SILVER', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 1, '', '', '', '', '', '', NULL, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'JU MIE', '2020-03-31', 12000, 9500, 9880, 0, 'ZERO', '', NULL, 0, NULL, 33000, NULL, NULL, '8638', '', '', '', NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, '', '', NULL, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 0, NULL, NULL, '', 0, '', 0, 0, 0, 0, 0, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', 0, 0, 379, 0, NULL, 0, 'NOMAN', 0, 0, 0, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, '0'),
(10008, 'HF21S-305509', '', 0, NULL, NULL, NULL, NULL, NULL, 'MAZDA', 'LOPPI', '', NULL, 'UA-HF21S', 200201, '660', NULL, NULL, NULL, NULL, '', '', 0, 0, 1, 1, 1, 1, 0, 'FAT', '', '4', 5, 'GASOLINE', 1, '', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MINI-MINI', '2020-02-01', 20000, 10000, 8000, 0, 'OWN', '', NULL, NULL, NULL, 0, NULL, NULL, '0001', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HEADOFFICE', 'NOMAN', 'HEADOFFICE', 3000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 'JAPAN', '', 0, 0, 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, '', NULL, 0, 379, 0, NULL, 0, 'NOMAN', 0, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a2_vehicle`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `ChassisNo` (`ChassisNo`),
  ADD KEY `ShipSailingId` (`FinalInvoicePrice`),
  ADD KEY `BLNo` (`BLNo`),
  ADD KEY `CaseNo` (`CaseNo`),
  ADD KEY `ConsigneeCode` (`ConsigneeCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a2_vehicle`
--
ALTER TABLE `vehicles`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
