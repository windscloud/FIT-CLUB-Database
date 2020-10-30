-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2019-12-03 11:54:28
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zyi16A3`
--
CREATE DATABASE zyi16A3;
USE zyi16A3;
-- --------------------------------------------------------

--
-- 表的结构 `all_access_member`
--

DROP TABLE IF EXISTS `all_access_member`;
CREATE TABLE IF NOT EXISTS `all_access_member` (
  `MemberCode` varchar(10) NOT NULL,
  `AllAccessFeePerWeek` int(10) NOT NULL DEFAULT '5',
  `AllAccessWeeks` int(10) DEFAULT NULL,
  PRIMARY KEY (`MemberCode`),
  KEY `MemberCode` (`MemberCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `all_access_member`
--

INSERT INTO `all_access_member` (`MemberCode`, `AllAccessFeePerWeek`, `AllAccessWeeks`) VALUES
('AC0002', 5, 4),
('AC0003', 5, 4),
('AC0004', 5, 4),
('AC0013', 5, 4),
('AC0033', 5, 4),
('AC0034', 5, 4),
('E0008', 5, 4),
('E0027', 5, 12),
('E0028', 5, 12),
('K0014', 5, 12),
('K0015', 5, 12),
('K0035', 5, 12),
('K0036', 5, 12),
('K0037', 5, 12),
('K0040', 5, 6),
('MG0030', 5, 6),
('MG0032', 5, 6),
('P0017', 5, 6),
('P0019', 5, 6),
('P0021', 5, 6),
('P0022', 5, 6),
('P0023', 5, 6),
('P0026', 5, 6),
('R0006', 5, 8),
('R0009', 5, 8),
('R0011', 5, 8),
('R0041', 5, 8),
('R0044', 5, 8);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `ClassID` int(10) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(20) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`ClassID`, `ClassName`, `Description`) VALUES
(1, 'Active Core', NULL),
(2, 'Active Kids', NULL),
(3, 'Active Adults', NULL),
(4, 'Yoga', NULL),
(5, 'Pilates', NULL),
(6, 'Aqua', NULL),
(7, 'Hiit', NULL),
(8, 'Boxing', NULL),
(9, 'Hot Yoga', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `class_details`
--

DROP TABLE IF EXISTS `class_details`;
CREATE TABLE IF NOT EXISTS `class_details` (
  `ClassDetailsID` int(10) NOT NULL AUTO_INCREMENT,
  `ClassOfferingID` int(10) NOT NULL,
  `Day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  PRIMARY KEY (`ClassDetailsID`),
  KEY `ClassOfferingID` (`ClassOfferingID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class_details`
--

INSERT INTO `class_details` (`ClassDetailsID`, `ClassOfferingID`, `Day`, `StartTime`, `EndTime`) VALUES
(1, 1, 'Tuesday', '07:00:00', '08:00:00'),
(2, 2, 'Thursday', '07:00:00', '08:00:00'),
(3, 3, 'Friday', '16:00:00', '17:00:00'),
(4, 4, 'Tuesday', '05:30:00', '06:30:00'),
(5, 5, 'Wednesday', '16:00:00', '17:00:00'),
(6, 6, 'Monday', '09:00:00', '10:00:00'),
(7, 7, 'Thursday', '07:00:00', '08:00:00'),
(8, 8, 'Wednesday', '09:00:00', '10:00:00'),
(9, 9, 'Tuesday', '06:00:00', '07:00:00'),
(10, 10, 'Wednesday', '16:00:00', '17:00:00'),
(11, 11, 'Saturday', '09:00:00', '10:00:00'),
(12, 12, 'Saturday', '06:00:00', '07:00:00'),
(13, 13, 'Saturday', '06:00:00', '07:00:00'),
(14, 14, 'Saturday', '16:00:00', '17:00:00'),
(15, 15, 'Saturday', '06:00:00', '07:00:00'),
(16, 16, 'Saturday', '16:00:00', '07:00:00'),
(17, 17, 'Tuesday', '05:30:00', '06:30:00'),
(18, 18, 'Monday', '09:00:00', '10:00:00'),
(19, 19, 'Monday', '06:00:00', '07:00:00'),
(20, 20, 'Wednesday', '06:00:00', '07:00:00'),
(21, 21, 'Thursday', '06:00:00', '07:00:00'),
(22, 22, 'Thursday', '05:30:00', '06:30:00'),
(23, 23, 'Friday', '16:00:00', '17:00:00'),
(24, 24, 'Monday', '16:00:00', '17:00:00'),
(25, 25, 'Friday', '09:00:00', '10:00:00'),
(26, 26, 'Thursday', '05:30:00', '06:30:00'),
(27, 27, 'Friday', '06:00:00', '07:00:00'),
(28, 28, 'Friday', '07:00:00', '08:00:00'),
(29, 29, 'Tuesday', '05:30:00', '06:30:00'),
(30, 30, 'Monday', '16:00:00', '17:00:00'),
(31, 31, 'Friday', '05:30:00', '06:30:00'),
(32, 32, 'Monday', '07:00:00', '08:00:00'),
(33, 33, 'Thursday', '09:00:00', '10:00:00'),
(34, 34, 'Saturday', '06:00:00', '07:00:00'),
(35, 35, 'Friday', '06:00:00', '07:00:00'),
(36, 36, 'Wednesday', '06:00:00', '07:00:00'),
(37, 37, 'Monday', '07:00:00', '08:00:00'),
(38, 38, 'Wednesday', '05:30:00', '06:30:00'),
(39, 39, 'Monday', '05:30:00', '06:30:00');

-- --------------------------------------------------------

--
-- 表的结构 `class_member_enrolment`
--

DROP TABLE IF EXISTS `class_member_enrolment`;
CREATE TABLE IF NOT EXISTS `class_member_enrolment` (
  `ClassMemberEnrolmentID` int(10) NOT NULL AUTO_INCREMENT,
  `MemberCode` varchar(10) NOT NULL,
  `ClassOfferingID` int(10) NOT NULL,
  PRIMARY KEY (`ClassMemberEnrolmentID`),
  KEY `MemberCode` (`MemberCode`),
  KEY `ClassOfferingID` (`ClassOfferingID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class_member_enrolment`
--

INSERT INTO `class_member_enrolment` (`ClassMemberEnrolmentID`, `MemberCode`, `ClassOfferingID`) VALUES
(1, 'AC0001', 1),
(2, 'AC0002', 2),
(3, 'AC0003', 3),
(4, 'AC0004', 4),
(5, 'AC0012', 5),
(6, 'AC0013', 6),
(7, 'AC0033', 7),
(8, 'AC0034', 8),
(9, 'AC0045', 9),
(10, 'E0007', 10),
(11, 'E0008', 11),
(12, 'E0027', 12),
(13, 'E0028', 13),
(14, 'E0029', 14),
(15, 'K0014', 15),
(16, 'K0015', 16),
(17, 'K0016', 17),
(18, 'K0035', 18),
(19, 'K0036', 19),
(20, 'K0037', 20),
(21, 'K0038', 21),
(22, 'K0039', 22),
(23, 'K0040', 23),
(24, 'MG0030', 24),
(25, 'MG0031', 25),
(26, 'MG0032', 26),
(27, 'P0017', 27),
(28, 'P0018', 28),
(29, 'P0019', 29),
(30, 'P0020', 30),
(31, 'P0021', 31),
(32, 'P0022', 32),
(33, 'P0023', 33),
(34, 'P0024', 34),
(35, 'P0025', 35),
(36, 'P0026', 36),
(37, 'R0005', 37),
(38, 'R0006', 38),
(39, 'R0009', 39),
(40, 'R0010', 1),
(41, 'R0011', 2),
(42, 'R0041', 3),
(43, 'R0042', 4),
(44, 'R0043', 5),
(45, 'R0044', 6);

-- --------------------------------------------------------

--
-- 表的结构 `class_offering`
--

DROP TABLE IF EXISTS `class_offering`;
CREATE TABLE IF NOT EXISTS `class_offering` (
  `ClassOfferingID` int(10) NOT NULL AUTO_INCREMENT,
  `ClassID` int(10) NOT NULL,
  `InstructorID` int(10) NOT NULL,
  `ClubID` int(10) NOT NULL,
  `Year` year(4) NOT NULL DEFAULT '2018',
  `Session` int(10) NOT NULL,
  `ClassSize` int(10) NOT NULL DEFAULT '30',
  PRIMARY KEY (`ClassOfferingID`),
  KEY `ClassID` (`ClassID`),
  KEY `InstructorID` (`InstructorID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class_offering`
--

INSERT INTO `class_offering` (`ClassOfferingID`, `ClassID`, `InstructorID`, `ClubID`, `Year`, `Session`, `ClassSize`) VALUES
(1, 1, 14, 5, 0000, 3, 30),
(2, 2, 8, 6, 0000, 1, 30),
(3, 3, 5, 7, 0000, 2, 30),
(4, 4, 6, 8, 0000, 2, 30),
(5, 5, 1, 5, 0000, 1, 30),
(6, 6, 19, 6, 0000, 3, 30),
(7, 7, 24, 6, 0000, 3, 30),
(8, 8, 18, 3, 0000, 1, 30),
(9, 9, 7, 7, 0000, 2, 30),
(10, 1, 12, 7, 0000, 3, 30),
(11, 2, 23, 6, 0000, 2, 30),
(12, 3, 17, 8, 0000, 3, 30),
(13, 4, 3, 1, 0000, 2, 30),
(14, 5, 7, 3, 0000, 2, 30),
(15, 6, 5, 6, 0000, 3, 30),
(16, 7, 17, 3, 0000, 1, 30),
(17, 8, 12, 4, 0000, 3, 30),
(18, 9, 23, 4, 0000, 3, 30),
(19, 1, 12, 1, 0000, 2, 30),
(20, 2, 6, 8, 0000, 3, 30),
(21, 3, 20, 6, 0000, 3, 30),
(22, 4, 3, 2, 0000, 1, 30),
(23, 5, 18, 8, 0000, 1, 30),
(24, 6, 6, 5, 0000, 3, 30),
(25, 7, 6, 3, 0000, 2, 30),
(26, 8, 15, 6, 0000, 3, 30),
(27, 9, 8, 1, 0000, 1, 30),
(28, 1, 2, 4, 0000, 1, 30),
(29, 2, 6, 2, 0000, 3, 30),
(30, 3, 7, 7, 0000, 2, 30),
(31, 4, 22, 5, 0000, 1, 30),
(32, 5, 24, 6, 0000, 2, 30),
(33, 6, 5, 3, 0000, 2, 30),
(34, 7, 11, 7, 0000, 1, 30),
(35, 8, 23, 7, 0000, 2, 30),
(36, 9, 17, 6, 0000, 3, 30),
(37, 1, 21, 4, 0000, 1, 30),
(38, 2, 22, 2, 0000, 3, 30),
(39, 3, 5, 7, 0000, 2, 30);

-- --------------------------------------------------------

--
-- 表的结构 `class_only_member`
--

DROP TABLE IF EXISTS `class_only_member`;
CREATE TABLE IF NOT EXISTS `class_only_member` (
  `MemberCode` varchar(10) NOT NULL,
  `ClassOnlyFeePerWeek` int(10) NOT NULL DEFAULT '15',
  `ClassOnlyWeeks` int(10) DEFAULT NULL,
  PRIMARY KEY (`MemberCode`),
  KEY `MemberCode` (`MemberCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class_only_member`
--

INSERT INTO `class_only_member` (`MemberCode`, `ClassOnlyFeePerWeek`, `ClassOnlyWeeks`) VALUES
('AC0001', 15, 4),
('AC0012', 15, 4),
('AC0045', 15, 4),
('E0007', 15, 4),
('E0029', 15, 5),
('K0016', 15, 5),
('K0038', 15, 5),
('K0039', 15, 5),
('MG0031', 15, 5),
('P0018', 15, 6),
('P0020', 15, 6),
('P0024', 15, 6),
('P0025', 15, 6),
('R0005', 15, 6),
('R0010', 15, 8),
('R0042', 15, 8),
('R0043', 15, 8);

-- --------------------------------------------------------

--
-- 表的结构 `club`
--

DROP TABLE IF EXISTS `club`;
CREATE TABLE IF NOT EXISTS `club` (
  `ClubID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `State` varchar(30) NOT NULL,
  `PostCode` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  PRIMARY KEY (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `club`
--

INSERT INTO `club` (`ClubID`, `Name`, `Address`, `State`, `PostCode`, `Phone`) VALUES
(1, 'Rydalmere', '19 Cecil Street', 'NSW', '2116', '(02) 9728 2259'),
(2, 'Parramatta', '29 Woodlands Avenue', 'NSW', '2150', '(02) 9060 5217'),
(3, 'Essendon', '7 Creedon Street', 'VIC', '3040', '(03) 9660 9673'),
(4, 'Kingston', '68 Yarra Street', 'TAS', '3364', '(03) 5350 9880'),
(5, 'Mt Gravatt', '37 Kintyre Street', 'QLD', '4122', '(07) 3073 6573'),
(6, 'Robina', '60 Treasure Island Avenue', 'QLD', '4226', '(07) 5695 9771'),
(7, 'Adelaide City', '28 Begley Street', 'SA', '5000', '(08) 8202 6233'),
(8, 'Kingsway', '40 Foreshore Road', 'WA', '6065', '(08) 9430 3472');

-- --------------------------------------------------------

--
-- 替换视图以便查看 `club_timetable`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `club_timetable`;
CREATE TABLE IF NOT EXISTS `club_timetable` (
`Day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday')
,`StartTime` time
,`EndTime` time
,`ClassName` varchar(20)
,`FirstName` varchar(20)
,`LastName` varchar(20)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `counting_clubs_members`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `counting_clubs_members`;
CREATE TABLE IF NOT EXISTS `counting_clubs_members` (
`ClubName` varchar(30)
,`ClubState` varchar(30)
,`FirstName` varchar(20)
,`LastName` varchar(20)
,`MemberNumber` bigint(21)
,`CLASS_ONLY_MEMBER_Number` bigint(21)
,`ALL_ACCESS_MEMBER_Number` bigint(21)
);

-- --------------------------------------------------------

--
-- 表的结构 `facility`
--

DROP TABLE IF EXISTS `facility`;
CREATE TABLE IF NOT EXISTS `facility` (
  `FacilityID` int(10) NOT NULL AUTO_INCREMENT,
  `FacilityName` varchar(20) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FacilityID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `facility`
--

INSERT INTO `facility` (`FacilityID`, `FacilityName`, `Description`) VALUES
(1, '24-hours gym', NULL),
(2, 'swimming pool', NULL),
(3, 'sauna', NULL),
(4, 'kids playroom', NULL),
(5, 'outdoor training par', NULL),
(6, 'cycle studio', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `FACILITY_DETAILS`
--

DROP TABLE IF EXISTS `FACILITY_DETAILS`;
CREATE TABLE IF NOT EXISTS `FACILITY_DETAILS` (
  `FacilityDetailsID` int(10) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(10) NOT NULL,
  `BoughtTime` date DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `ClubID` int(10) NOT NULL,
  `Manufacturer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FacilityDetailsID`),
  KEY `FacilityID` (`FacilityID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `FACILITY_DETAILS`
--

INSERT INTO `FACILITY_DETAILS` (`FacilityDetailsID`, `FacilityID`, `BoughtTime`, `Price`, `ClubID`, `Manufacturer`) VALUES
(1, 4, '2012-08-20', 4000, 1, NULL),
(2, 2, '2012-08-20', 4020, 2, NULL),
(3, 4, '2012-11-15', 4021, 3, NULL),
(4, 4, '2012-11-15', 4022, 4, NULL),
(5, 5, '2012-08-20', 3023, 5, NULL),
(6, 4, '2012-11-15', 3024, 6, NULL),
(7, 1, '2012-11-15', 3025, 7, NULL),
(8, 4, '2012-08-20', 3026, 8, NULL),
(9, 5, '2012-11-15', 3028, 1, NULL),
(10, 5, '2012-11-15', 3029, 2, NULL),
(11, 4, '2012-08-20', 4030, 3, NULL),
(12, 5, '2012-08-20', 4031, 4, NULL),
(13, 6, '2012-11-15', 4032, 5, NULL),
(14, 2, '2012-11-15', 4033, 6, NULL),
(15, 3, '2012-08-20', 4034, 7, NULL),
(16, 5, '2012-08-20', 4035, 8, NULL);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `kids_playroom_owning_club`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `kids_playroom_owning_club`;
CREATE TABLE IF NOT EXISTS `kids_playroom_owning_club` (
`Name` varchar(30)
,`State` varchar(30)
,`Phone` varchar(20)
);

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `ManagerID` int(10) NOT NULL AUTO_INCREMENT,
  `ClubID` int(10) NOT NULL,
  `Salary` float DEFAULT '1500',
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `PostCode` varchar(20) DEFAULT NULL,
  `EmployDate` date DEFAULT NULL,
  `Status` enum('Inactive','Active','On Leave') NOT NULL,
  PRIMARY KEY (`ManagerID`),
  KEY `FK` (`ClubID`),
  KEY `ClubID` (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`ManagerID`, `ClubID`, `Salary`, `FirstName`, `LastName`, `Email`, `Phone`, `Birthday`, `Address`, `City`, `State`, `PostCode`, `EmployDate`, `Status`) VALUES
(1, 1, 1500, 'David', 'Burrell', 'david.burrell@mail.com', '0451 413 230', '1981-07-13', '16 Cecil Street', 'MELROSE PARK', 'NSW', '2114', '2014-12-26', 'Active'),
(2, 2, 1500, 'Kai', 'Hogarth', 'kai.hogarth@mail.com', '0439 586 907', '1989-09-27', '89 Village Drive', 'CABRAMATTA', 'NSW', '2166', '2014-12-27', 'Active'),
(3, 3, 1500, 'Eliza', 'Oride', 'eliza.oride@mail.com', '0483 828 965', '1984-02-03', '92 Begley Street', 'ADELAIDE', 'SA', '5000', '2014-12-28', 'Active'),
(4, 4, 1500, 'Maddison', 'Beak', 'maddison.beak@fitclub.com', '0493 246 635', '1985-01-16', '13 Ross Street', 'MERMAID BEACH', 'QLD', '4218', '2014-12-28', 'Inactive'),
(5, 5, 1500, 'Bianca', 'Wekey', 'bianca.wekey@mail.com', '0470 609 437', '1980-03-12', '58 Savages Road', 'EIGHT MILE PLAINS', 'QLD', '4113', '2014-12-29', 'Active'),
(6, 6, 1500, 'Jonathan', 'Mullaly', 'jonathan.mullaly@mail.com', '0459 292 559', '1984-06-22', '36 Bayfield Street', 'RHEBAN', 'TAS', '7190', '2014-12-30', 'Active'),
(7, 7, 1500, 'Eden', 'Smythe', 'eden.smythe@mail.com', '0486 168 444', '1989-02-03', '54 Creedon Street', 'BRUNSWICK NORTH', 'VIC', '3056', '2014-12-31', 'Active'),
(8, 8, 1500, 'Elizabeth', 'McNamara', 'elizabeth.mcnamara@mail.com', '0426 275 511', '1987-08-12', '23 Foreshore Road', 'JOONDANNA', 'WA', '6060', '2015-01-01', 'Inactive');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `MemberCode` varchar(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `ClubID` int(10) NOT NULL,
  `TainerID` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `MemberType` enum('all-access','class-only') DEFAULT NULL,
  `RegisterDate` date DEFAULT NULL,
  `Fee` float DEFAULT NULL,
  `Status` enum('Inactive','Active','On Leave') NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `PostCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MemberCode`),
  KEY `FK` (`ClubID`,`TainerID`),
  KEY `ClubID` (`ClubID`),
  KEY `TainerID` (`TainerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`MemberCode`, `FirstName`, `LastName`, `ClubID`, `TainerID`, `Email`, `Phone`, `MemberType`, `RegisterDate`, `Fee`, `Status`, `Birthday`, `Address`, `City`, `State`, `PostCode`) VALUES
('AC0001', 'Ella', 'Cook', 7, 12, 'ella.cook@mail.com', '0415 088 044', 'all-access', '2016-05-28', NULL, 'Active', '1993-01-26', '673-4905 Donec Road', 'Spresiano', 'SA', '1028'),
('AC0002', 'Indi', 'Innes', 7, 13, 'indi.innes@mail.com', '0415 234 573', 'class-only', '2016-02-11', NULL, 'Active', '1995-03-19', '831 Non Avenue', 'Kortrijk', 'SA', '1120'),
('AC0003', 'Collette', 'Dudley', 7, 14, 'collette.dudley@mail.com', '0415 265 800', 'class-only', '2017-01-04', NULL, 'Active', '1993-08-18', '6176 Nec Rd.', 'Bicester', 'SA', '1639'),
('AC0004', 'Bronte', 'Connor', 7, 15, 'bronte.connor@mail.com', '0415 496 955', 'class-only', '2014-02-08', NULL, 'Active', '1996-07-25', '5515 Rutrum Street', 'Lublin', 'SA', '1765'),
('AC0012', 'Hannah', 'Roy', 7, 16, 'hannah.roy@mail.com', '0415 775 765', 'all-access', '2016-06-01', NULL, 'Active', '1991-05-31', '7531 Hymenaeos. Rd.', 'Rankweil', 'SA', '5121'),
('AC0013', 'Hu', 'Thompson', 7, 17, 'hu.thompson@mail.com', '0415 131 096', 'class-only', '2015-05-24', NULL, 'Active', '1997-09-04', '7566 At, Av.', 'Alto Hospicio', 'SA', '5971'),
('AC0033', 'Peggy', 'Stanley', 7, 18, 'peggy.stanley@mail.com', '0415 714 286', 'class-only', '2015-04-29', NULL, 'Inactive', '1991-07-07', 'Ap #489-5714 Purus. St.', 'Alert Bay', 'SA', '5341'),
('AC0034', 'Rebekah', 'Riley', 7, 19, 'rebekah.riley@mail.com', '0415 067 644', 'class-only', '2016-12-23', NULL, 'Active', '1998-09-15', 'Ap #618-7162 Id, St.', 'Price', 'SA', '5369'),
('AC0045', 'Bob', 'Brittany', 7, 20, 'bob.brittany@mail.com', '0415 723 190', 'all-access', '2013-12-16', NULL, 'Active', '1998-08-21', 'P.O. Box 120, 3134 At Avenue', 'Forchtenstein', 'SA', '5666'),
('E0007', 'Colina', 'Cannes', 3, 21, 'colina.cannes@mail.com', '0415 579 026', 'all-access', '2013-09-08', NULL, 'Active', '1991-01-24', '613-3725 Natoque St.', 'Red Deer', 'VIC', '3564'),
('E0008', 'Justine', 'Jetty', 3, 22, 'justine.jetty@mail.com', '0415 482 199', 'class-only', '2015-05-05', NULL, 'Inactive', '1995-02-25', '9120 Ut Ave', 'Mühlheim am Main', 'VIC', '3936'),
('E0027', 'Kimberley', 'Kerr', 3, 23, 'kimberley.kerr@mail.com', '0415 394 622', 'class-only', '2018-05-18', NULL, 'Active', '1999-08-08', 'Ap #814-3340 Risus. Ave', 'Portsmouth', 'VIC', '3079'),
('E0028', 'Lauren', 'Carlin', 3, 24, 'lauren.carlin@mail.com', '0415 609 075', 'class-only', '2015-06-26', NULL, 'Active', '1996-12-13', 'Ap #668-384 Arcu. St.', 'Heidenheim', 'VIC', '3850'),
('E0029', 'Lucas', 'Morse', 3, 1, 'lucas.morse@mail.com', '0415 861 965', 'all-access', '2015-10-18', NULL, 'Active', '1998-07-29', 'Ap #110-3658 Sit Av.', 'Honolulu', 'VIC', '3990'),
('K0014', 'Cat', 'Cinchilla', 8, 2, 'cat.cinchilla@mail.com', '0415 329 570', 'class-only', '2014-09-15', NULL, 'Active', '1997-05-14', '585-4400 Libero. Rd.', 'Curaco de Vélez', 'WA', '6699'),
('K0015', 'Bliss', 'Brown', 4, 3, 'bliss.brown@mail.com', '0415 133 547', 'class-only', '2013-08-13', NULL, 'On Leave', '1995-11-03', '4892 Commodo Road', 'Stendal', 'TAS', '7512'),
('K0016', 'Georgia', 'Quigley', 4, 4, 'georgia.quigley@mail.com', '0415 442 456', 'all-access', '2017-11-12', NULL, 'Active', '1991-03-30', '7517 Euismod St.', 'Arauco', 'TAS', '7873'),
('K0035', 'Ronnie', 'Wand', 8, 5, 'ronnie.wand@mail.com', '0415 493 139', 'class-only', '2014-01-09', NULL, 'Active', '1994-12-03', '983-9568 Quisque St.', 'Nieuwmunster', 'WA', '6247'),
('K0036', 'Sally', 'Sandman', 8, 6, 'sally.sandman@mail.com', '0415 240 109', 'class-only', '2016-12-27', NULL, 'Active', '1991-01-19', '938-1116 Primis Street', 'Castanhal', 'WA', '6606'),
('K0037', 'Sandy', 'Landy', 8, 7, 'sandy.landy@mail.com', '0415 076 091', 'class-only', '2015-04-01', NULL, 'Active', '1991-05-28', '958-9958 Et St.', 'Santa Bárbara', 'WA', '6904'),
('K0038', 'Serra', 'Land', 4, 8, 'serra.land@mail.com', '0415 439 261', 'all-access', '2015-12-20', NULL, 'Active', '1994-08-08', 'P.O. Box 100, 1262 Lectus. Avenue', 'Beerse', 'TAS', '7341'),
('K0039', 'Singing', 'Sue', 4, 9, 'singing.sue@mail.com', '0415 189 210', 'all-access', '2017-04-10', NULL, 'Active', '2001-03-21', 'Ap #642-628 Felis. Rd.', 'San Rafael', 'TAS', '7946'),
('K0040', 'Special', 'Harmon', 4, 10, 'special.harmon@mail.com', '0415 386 823', 'class-only', '2018-04-01', NULL, 'Active', '1991-12-13', 'Ap #726-3521 Montes, St.', 'Matagami', 'TAS', '7984'),
('MG0030', 'Maddy', 'Smith', 5, 11, 'maddy.smith@mail.com', '0415 996 347', 'class-only', '2015-11-13', NULL, 'Active', '1993-04-09', 'Ap #310-3654 Vel St.', 'WanfercŽe-Baulet', 'QLD', '4221'),
('MG0031', 'Mannie', 'Minx', 5, 12, 'mannie.minx@mail.com', '0415 230 233', 'all-access', '2015-12-28', NULL, 'Active', '1997-10-31', 'Ap #454-980 Quam Road', 'Gravelbourg', 'QLD', '4556'),
('MG0032', 'Natalie', 'North', 5, 13, 'natalie.north@mail.com', '0415 827 188', 'class-only', '2013-03-30', NULL, 'Active', '1997-07-27', 'Ap #673-3582 Litora Road', 'Rishra', 'QLD', '4905'),
('P0017', 'Bob', 'Brown', 2, 14, 'bob.brown@mail.com', '0415 696 122', 'class-only', '2016-02-13', NULL, 'Active', '2001-12-19', '4974 Ullamcorper. St.', 'Huntley', 'NSW', '2303'),
('P0018', 'India', 'Woods', 2, 15, 'india.woods@mail.com', '0415 727 415', 'all-access', '2015-03-05', NULL, 'Active', '1992-07-01', '8464 Eu, Avenue', 'Wanzele', 'NSW', '2425'),
('P0019', 'Cate', 'Crown', 2, 16, 'cate.crown@mail.com', '0415 336 747', 'class-only', '2016-06-18', NULL, 'Active', '2001-12-31', '5950 Vestibulum St.', 'Cantalupo in Sabina', 'NSW', '2220'),
('P0020', 'Emma', 'Patterson', 2, 17, 'emma.patterson@mail.com', '0415 117 691', 'all-access', '2015-06-26', NULL, 'Active', '1991-10-24', '7266 Mauris Ave', 'Traiguén', 'NSW', '2017'),
('P0021', 'Betina', 'Black', 2, 18, 'betina.black@mail.com', '0415 291 024', 'class-only', '2014-05-09', NULL, 'Active', '1992-10-25', '9225 Libero. Rd.', 'Halifax', 'NSW', '2134'),
('P0022', 'Jenny', 'Jubes', 2, 19, 'jenny.jubes@mail.com', '0415 639 716', 'class-only', '2014-03-19', NULL, 'Active', '2002-08-17', '8786 Maecenas Avenue', 'Fumal', 'NSW', '2222'),
('P0023', 'Francesca', 'Hill', 2, 20, 'francesca.hill@mail.com', '0415 361 193', 'class-only', '2013-09-23', NULL, 'Active', '1993-11-05', '7348 Sed St.', 'Liévin', 'NSW', '2302'),
('P0024', 'Dane', 'Potter', 2, 21, 'dane.potter@mail.com', '0415 218 972', 'all-access', '2014-07-30', NULL, 'Active', '1993-10-18', '6335 Metus. Street', 'Spoleto', 'NSW', '2572'),
('P0025', 'Kathy', 'Kenny', 2, 22, 'kathy.kenny@mail.com', '0415 697 935', 'all-access', '2013-03-12', NULL, 'Active', '1998-03-25', 'Ap #748-5967 Non, Rd.', 'Giugliano in Campani', 'NSW', '2222'),
('P0026', 'Ken', 'Stuart', 2, 23, 'ken.stuart@mail.com', '0415 035 497', 'class-only', '2015-10-11', NULL, 'Inactive', '1995-07-12', '976-9856 Et Street', 'Beaumont', 'NSW', '2233'),
('R0005', 'Betty', 'Blue', 1, 24, 'betty.blue@mail.com', '0423 777 555', 'all-access', '2013-02-07', NULL, 'Active', '1999-02-09', '12 Potter Avenue', 'Pottsville', 'NSW', '2433'),
('R0006', 'Jazmin', 'Slater', 1, 1, 'jazmin.slater@mail.com', '0415 956 858', 'class-only', '2015-01-24', NULL, 'Active', '2000-09-17', '8770 Pharetra Road', 'Oranienburg', 'NSW', '2956'),
('R0009', 'Emily', 'Davies', 6, 2, 'emily.davies@mail.com', '0415 573 236', 'class-only', '2015-11-10', NULL, 'Active', '1992-05-15', '7096 Malesuada Rd.', 'Doetinchem', 'QLD', '4053'),
('R0010', 'Jenny', 'Myles', 6, 3, 'jenny.myles@mail.com', '0415 904 871', 'all-access', '2017-01-07', NULL, 'Active', '1993-09-02', '908-8505 Facilisis Avenue', 'Boston', 'QLD', '4404'),
('R0011', 'Brittany', 'Barratt', 6, 4, 'brittany.barratt@mail.com', '0415 488 077', 'class-only', '2014-04-14', NULL, 'Active', '2002-03-05', '528-4851 Ut, Rd.', 'Goulburn', 'QLD', '4406'),
('R0041', 'Sue', 'Simpson', 1, 5, 'sue.simpson@mail.com', '0415 937 104', 'class-only', '2013-07-05', NULL, 'Active', '1992-03-07', 'Ap #226-7354 Porttitor Rd.', 'Campinas', 'NSW', '2201'),
('R0042', 'Tony', 'Ratcliffe', 1, 6, 'tony.ratcliffe@mail.com', '0415 349 532', 'all-access', '2017-04-07', NULL, 'Active', '1991-08-12', 'Ap #958-523 Vitae Street', 'Hualpén', 'NSW', '2230'),
('R0043', 'Zorita', 'Kim', 1, 7, 'zorita.kim@mail.com', '0415 729 127', 'all-access', '2015-01-10', NULL, 'Active', '1998-03-29', 'Ap #690-9016 Lectus. Road', 'GŽrouville', 'NSW', '2052'),
('R0044', 'Barry', 'White', 1, 8, 'barry.white@mail.com', '0415 257 351', 'class-only', '2014-09-13', NULL, 'On Leave', '1994-09-27', 'Ap #203-955 Sagittis Rd.', 'Alness', 'NSW', '2220');

-- --------------------------------------------------------

--
-- 替换视图以便查看 `members_statistic`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `members_statistic`;
CREATE TABLE IF NOT EXISTS `members_statistic` (
`ClubName` varchar(30)
,`State` varchar(30)
,`MemberNumber` bigint(21)
,`Active_Member_Number` bigint(21)
,`Inactive_Member_Number` bigint(21)
,`On_Leave_Member_Number` bigint(21)
);

-- --------------------------------------------------------

--
-- 表的结构 `personal_trained_enrolment`
--

DROP TABLE IF EXISTS `personal_trained_enrolment`;
CREATE TABLE IF NOT EXISTS `personal_trained_enrolment` (
  `PersonalTrainedEnrolmentID` int(10) NOT NULL AUTO_INCREMENT,
  `MemberCode` varchar(10) NOT NULL,
  `PersonalTrainerID` int(10) NOT NULL,
  `TrainingTimes` int(10) NOT NULL,
  `PersonalTrainedFee` int(10) NOT NULL,
  PRIMARY KEY (`PersonalTrainedEnrolmentID`),
  KEY `PersonalTraiinerID` (`PersonalTrainerID`),
  KEY `PersonalTrainerID` (`PersonalTrainerID`),
  KEY `MemberCode` (`MemberCode`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `personal_trained_enrolment`
--

INSERT INTO `personal_trained_enrolment` (`PersonalTrainedEnrolmentID`, `MemberCode`, `PersonalTrainerID`, `TrainingTimes`, `PersonalTrainedFee`) VALUES
(1, 'E0007', 1, 3, 50),
(2, 'E0008', 1, 3, 47),
(3, 'E0027', 1, 3, 56),
(4, 'E0028', 19, 3, 80),
(5, 'MG0030', 3, 2, 69),
(6, 'MG0031', 3, 2, 44),
(7, 'R0010', 14, 3, 41),
(8, 'AC0004', 23, 3, 60),
(9, 'AC0012', 23, 2, 62),
(10, 'AC0013', 23, 4, 61),
(11, 'R0006', 7, 2, 66),
(12, 'R0041', 7, 3, 76),
(13, 'P0019', 18, 3, 62),
(14, 'P0023', 18, 3, 46),
(15, 'AC0034', 10, 3, 53),
(16, 'K0035', 18, 2, 66),
(17, 'K0015', 11, 4, 54),
(18, 'AC0004', 17, 4, 47),
(19, 'AC0013', 11, 3, 45);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `personal_trainers`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `personal_trainers`;
CREATE TABLE IF NOT EXISTS `personal_trainers` (
`ClubName` varchar(30)
,`FirstName` varchar(20)
,`LastName` varchar(20)
,`State` varchar(30)
,`MemberNumber` bigint(21)
);

-- --------------------------------------------------------

--
-- 表的结构 `specialization`
--

DROP TABLE IF EXISTS `specialization`;
CREATE TABLE IF NOT EXISTS `specialization` (
  `SpecializationID` int(10) NOT NULL AUTO_INCREMENT,
  `SpecializationName` varchar(20) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SpecializationID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `specialization`
--

INSERT INTO `specialization` (`SpecializationID`, `SpecializationName`, `Description`) VALUES
(1, 'body building', NULL),
(2, 'conditioning', NULL),
(3, 'corrective exercise', NULL),
(4, 'nutrition', NULL),
(5, 'performance enhancem', NULL),
(6, 'senior fitness', NULL),
(7, 'weight loss', NULL),
(8, 'woman fitness', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `trainer`
--

DROP TABLE IF EXISTS `trainer`;
CREATE TABLE IF NOT EXISTS `trainer` (
  `TrainerID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `ClubID` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `PostCode` varchar(20) DEFAULT NULL,
  `EmployDate` date DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`TrainerID`),
  KEY `CLUB_FK` (`ClubID`),
  KEY `ClubID` (`ClubID`),
  KEY `ClubID_2` (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `trainer`
--

INSERT INTO `trainer` (`TrainerID`, `FirstName`, `LastName`, `ClubID`, `Email`, `Phone`, `Birthday`, `Address`, `City`, `State`, `PostCode`, `EmployDate`, `Salary`, `Status`) VALUES
(1, 'Tommy', 'Tanny', 3, 'tommy.tanny@mail.com', '0415 328 722', '1991-10-29', '3459 Orci Avenue', 'Konin', 'QLD', '5199', '2016-05-20', NULL, 'Inactive'),
(2, 'Innes', 'Indy', 4, 'innes.indy@mail.com', '0415 243 270', '1989-07-28', '241-8201 Eu Street', 'Gjoa Haven', 'NSW', '2796', '2013-04-20', NULL, 'Active'),
(3, 'Jammin', 'Juice', 5, 'jammin.juice@mail.com', '0415 184 363', '1989-08-28', '254-7049 Pede. Street', 'Chaitén', 'NSW', '2994', '2016-01-16', NULL, 'Active'),
(4, 'Therese', 'Tong', 6, 'therese.tong@mail.com', '0415 781 343', '1989-08-21', '3672 Augue, Street', 'Uberaba', 'NSW', '2826', '2015-03-31', NULL, 'Active'),
(5, 'Saint', 'Helen', 7, 'saint.helen@mail.com', '0415 986 775', '1991-04-26', '295 A Rd.', 'Auburn', 'QLD', '5672', '2013-11-06', NULL, 'Active'),
(6, 'Jonathan', 'Singh', 8, 'jonathan.singh@mail.com', '0415 783 240', '1989-12-16', '177-1765 Nunc Av.', 'Rauco', 'TAS', '7211', '2016-11-10', NULL, 'On Leave'),
(7, 'Boogy', 'Bermy', 1, 'boogy.bermy@mail.com', '0415 581 322', '1989-05-27', '454-180 Ridiculus Avenue', 'Los Angeles', 'TAS', '7031', '2017-07-06', NULL, 'Active'),
(8, 'Bill', 'Brown', 2, 'bill.brown@mail.com', '0415 163 940', '1989-11-19', '485-4275 Donec Rd.', 'Rae Lakes', 'TAS', '7479', '2013-02-20', NULL, 'Active'),
(9, 'Rowie', 'Roundtree', 1, 'rowie.roundtree@mail.com', '0415 175 638', '1989-05-26', '292-1554 Tempor Road', 'Gorzów Wielkopolski', 'TAS', '7663', '2017-07-13', NULL, 'Active'),
(10, 'Leonie', 'Sera', 2, 'leonie.sera@mail.com', '0415 027 992', '1991-03-16', '3025 Luctus Road', 'Andernach', 'TAS', '7417', '2018-08-29', NULL, 'Active'),
(11, 'Benjamin', 'Yang', 3, 'benjamin.yang@mail.com', '0415 330 183', '1990-04-25', '4816 Mauris St.', 'Beigem', 'WA', '6906', '2017-03-28', NULL, 'Active'),
(12, 'Cool', 'Cat', 4, 'cool.cat@mail.com', '0415 003 922', '1993-10-16', '2380 Ut St.', 'Hervey Bay', 'WA', '6528', '2018-07-14', NULL, 'Active'),
(13, 'Keith', 'Kenyan', 5, 'keith.kenyan@mail.com', '0415 742 477', '1989-05-30', '263-5742 Enim. St.', 'Lake Cowichan', 'WA', '6317', '2014-05-17', NULL, 'Active'),
(14, 'Nelly', 'Newzie', 6, 'nelly.newzie@mail.com', '0415 993 093', '1992-11-08', '1875 Nec Road', 'Leamington', 'WA', '6097', '2015-06-21', NULL, 'Active'),
(15, 'Susan', 'Scotty', 7, 'susan.scotty@mail.com', '0415 676 292', '1990-03-25', '2037 Risus Road', 'Hulshout', 'WA', '6599', '2015-12-06', NULL, 'Inactive'),
(16, 'Trina', 'Toga', 8, 'trina.toga@mail.com', '0415 165 402', '1989-03-09', '378-7271 Amet Rd.', 'Bundaberg', 'WA', '6782', '2018-02-03', NULL, 'Active'),
(17, 'Peter', 'Parker', 1, 'peter.parker@mail.com', '0415 778 660', '1993-04-10', '2790 Facilisis Rd.', 'Francavilla in Sinni', 'VIC', '3759', '2013-11-15', NULL, 'Active'),
(18, 'Jennifer', 'Brown', 2, 'jennifer.brown@mail.com', '0411 234567', '1993-03-24', '3/73 Mauris Avenue', 'Evans Head', 'NSW', '2473', '2017-04-22', NULL, 'Active'),
(19, 'Island', 'Man', 3, 'island.man@mail.com', '0415 281 118', '1991-01-30', '245-5949 Vehicula St.', 'Sant Angelo a Fasane', 'NSW', '2652', '2013-02-22', NULL, 'Active'),
(20, 'Steven', 'Singh', 4, 'steven.singh@mail.com', '0415 171 372', '1989-03-21', '3347 Euismod Ave', 'Quibby City', 'NSW', '2242', '2013-09-30', NULL, 'Active'),
(21, 'Suth', 'Stevens', 5, 'suth.stevens@mail.com', '0415 359 574', '1993-08-30', '345-3924 Fringilla Av.', 'Dufftown', 'NSW', '2451', '2013-09-16', NULL, 'Active'),
(22, 'Tommy', 'Taboggin', 6, 'tommy.taboggin@mail.com', '0415 093 551', '1991-02-15', '431-2939 Lorem, Rd.', 'Pune', 'NSW', '2234', '2018-02-11', NULL, 'Active'),
(23, 'Thomas', 'Grimes', 7, 'thomas.grimes@mail.com', '0415 742 123', '1989-09-13', '11 Treasure Island Avenue', 'Robina', 'QLD', '4226', '2016-03-19', NULL, 'Active'),
(24, 'Noddy', 'North', 8, 'noddy.north@mail.com', '0415 853 575', '1990-03-13', '271-5702 Consequat, Rd.', 'Sulzbach', 'NSW', '2035', '2018-01-14', NULL, 'Active');

-- --------------------------------------------------------

--
-- 替换视图以便查看 `trainers_specialised_weight_loss`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `trainers_specialised_weight_loss`;
CREATE TABLE IF NOT EXISTS `trainers_specialised_weight_loss` (
`FirstName` varchar(20)
,`LastName` varchar(20)
,`ClubName` varchar(30)
,`Email` varchar(50)
,`Phone` varchar(20)
,`Address` varchar(50)
,`City` varchar(20)
,`State` varchar(20)
,`PostCode` varchar(20)
);

-- --------------------------------------------------------

--
-- 表的结构 `trainer_specialization`
--

DROP TABLE IF EXISTS `trainer_specialization`;
CREATE TABLE IF NOT EXISTS `trainer_specialization` (
  `TrainerSpecializationID` int(10) NOT NULL AUTO_INCREMENT,
  `TrainerID` int(10) NOT NULL,
  `SpecializationID` int(10) NOT NULL,
  PRIMARY KEY (`TrainerSpecializationID`),
  KEY `TrainerID` (`TrainerID`),
  KEY `SpecializationID` (`SpecializationID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `trainer_specialization`
--

INSERT INTO `trainer_specialization` (`TrainerSpecializationID`, `TrainerID`, `SpecializationID`) VALUES
(1, 1, 7),
(2, 2, 8),
(3, 3, 1),
(4, 4, 2),
(5, 5, 3),
(6, 6, 4),
(7, 7, 5),
(8, 8, 6),
(9, 9, 7),
(10, 10, 8),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5),
(16, 16, 6),
(17, 17, 7),
(18, 18, 8),
(19, 19, 1),
(20, 20, 2),
(21, 21, 3),
(22, 22, 4),
(23, 23, 5),
(24, 24, 6),
(25, 1, 7),
(26, 2, 8),
(27, 3, 7),
(28, 4, 7),
(29, 5, 1),
(30, 6, 2),
(31, 7, 3),
(32, 8, 4),
(33, 9, 5),
(34, 10, 6),
(35, 11, 7),
(36, 12, 8),
(37, 13, 7),
(38, 14, 1),
(39, 15, 2),
(40, 16, 3),
(41, 17, 4),
(42, 18, 5),
(43, 19, 6),
(44, 20, 7),
(45, 21, 8),
(46, 22, 1),
(47, 23, 2),
(48, 24, 3);

-- --------------------------------------------------------

--
-- 视图结构 `club_timetable`
--
DROP TABLE IF EXISTS `club_timetable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `club_timetable`  AS  select `class_details`.`Day` AS `Day`,`class_details`.`StartTime` AS `StartTime`,`class_details`.`EndTime` AS `EndTime`,`class`.`ClassName` AS `ClassName`,`trainer`.`FirstName` AS `FirstName`,`trainer`.`LastName` AS `LastName` from (((`class_details` join `class_offering`) join `class`) join `trainer`) where ((`class_details`.`ClassOfferingID` = `class_offering`.`ClassOfferingID`) and (`class_offering`.`ClassID` = `class`.`ClassID`) and (`class_offering`.`InstructorID` = `trainer`.`TrainerID`)) order by `class_details`.`Day`,`class_details`.`StartTime` ;

-- --------------------------------------------------------

--
-- 视图结构 `counting_clubs_members`
--
DROP TABLE IF EXISTS `counting_clubs_members`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `counting_clubs_members`  AS  select `club`.`Name` AS `ClubName`,`club`.`State` AS `ClubState`,`manager`.`FirstName` AS `FirstName`,`manager`.`LastName` AS `LastName`,count(`member`.`MemberCode`) AS `MemberNumber`,count(((`member`.`MemberType` = 'class-only') or NULL)) AS `CLASS_ONLY_MEMBER_Number`,count(((`member`.`MemberType` = 'all-access') or NULL)) AS `ALL_ACCESS_MEMBER_Number` from ((`club` join `manager`) join `member`) where ((`club`.`ClubID` = `manager`.`ClubID`) and (`club`.`ClubID` = `member`.`ClubID`)) group by `club`.`ClubID` order by `club`.`State` ;

-- --------------------------------------------------------

--
-- 视图结构 `kids_playroom_owning_club`
--
DROP TABLE IF EXISTS `kids_playroom_owning_club`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `kids_playroom_owning_club`  AS  select distinct `club`.`Name` AS `Name`,`club`.`State` AS `State`,`club`.`Phone` AS `Phone` from (`club` join (`FACILITY_DETAILS` join `facility` on((`FACILITY_DETAILS`.`FacilityID` = `facility`.`FacilityID`))) on((`club`.`ClubID` = `FACILITY_DETAILS`.`ClubID`))) where (`facility`.`FacilityName` = 'kids playroom') order by `club`.`State` ;

-- --------------------------------------------------------

--
-- 视图结构 `members_statistic`
--
DROP TABLE IF EXISTS `members_statistic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `members_statistic`  AS  select `club`.`Name` AS `ClubName`,`club`.`State` AS `State`,count(`member`.`MemberCode`) AS `MemberNumber`,count(((`member`.`Status` = 'Active') or NULL)) AS `Active_Member_Number`,count(((`member`.`Status` = 'Inactive') or NULL)) AS `Inactive_Member_Number`,count(((`member`.`Status` = 'On Leave') or NULL)) AS `On_Leave_Member_Number` from (`club` join `member` on((`member`.`ClubID` = `club`.`ClubID`))) group by `club`.`ClubID` order by `club`.`State` ;

-- --------------------------------------------------------

--
-- 视图结构 `personal_trainers`
--
DROP TABLE IF EXISTS `personal_trainers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `personal_trainers`  AS  select `club`.`Name` AS `ClubName`,`trainer`.`FirstName` AS `FirstName`,`trainer`.`LastName` AS `LastName`,`club`.`State` AS `State`,count(`personal_trained_enrolment`.`MemberCode`) AS `MemberNumber` from (`club` join (`trainer` join `personal_trained_enrolment` on((`personal_trained_enrolment`.`PersonalTrainerID` = `trainer`.`TrainerID`))) on((`club`.`ClubID` = `trainer`.`ClubID`))) group by `trainer`.`TrainerID` order by `club`.`State`,count(`personal_trained_enrolment`.`MemberCode`) ;

-- --------------------------------------------------------

--
-- 视图结构 `trainers_specialised_weight_loss`
--
DROP TABLE IF EXISTS `trainers_specialised_weight_loss`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zyi16`@`localhost` SQL SECURITY DEFINER VIEW `trainers_specialised_weight_loss`  AS  select `trainer`.`FirstName` AS `FirstName`,`trainer`.`LastName` AS `LastName`,`club`.`Name` AS `ClubName`,`trainer`.`Email` AS `Email`,`trainer`.`Phone` AS `Phone`,`trainer`.`Address` AS `Address`,`trainer`.`City` AS `City`,`trainer`.`State` AS `State`,`trainer`.`PostCode` AS `PostCode` from (`club` join (`trainer` join (`trainer_specialization` join `specialization` on((`trainer_specialization`.`SpecializationID` = `specialization`.`SpecializationID`))) on((`trainer_specialization`.`TrainerID` = `trainer`.`TrainerID`))) on((`trainer`.`ClubID` = `club`.`ClubID`))) where ((`trainer`.`Status` = 'Active') and (`specialization`.`SpecializationName` = 'weight loss')) order by `trainer`.`LastName` ;

--
-- 限制导出的表
--

--
-- 限制表 `all_access_member`
--
ALTER TABLE `all_access_member`
  ADD CONSTRAINT `ALL_ACCESS_MEMBER_ibfk_1` FOREIGN KEY (`MemberCode`) REFERENCES `member` (`MemberCode`) ON UPDATE CASCADE;

--
-- 限制表 `class_details`
--
ALTER TABLE `class_details`
  ADD CONSTRAINT `CLASS_DETAILS_ibfk_1` FOREIGN KEY (`ClassOfferingID`) REFERENCES `class_offering` (`ClassOfferingID`) ON UPDATE CASCADE;

--
-- 限制表 `class_member_enrolment`
--
ALTER TABLE `class_member_enrolment`
  ADD CONSTRAINT `CLASS_MEMBER_ENROLMENT_ibfk_1` FOREIGN KEY (`ClassOfferingID`) REFERENCES `class_offering` (`ClassOfferingID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CLASS_MEMBER_ENROLMENT_ibfk_2` FOREIGN KEY (`MemberCode`) REFERENCES `member` (`MemberCode`) ON UPDATE CASCADE;

--
-- 限制表 `class_offering`
--
ALTER TABLE `class_offering`
  ADD CONSTRAINT `CLASS_OFFERING_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `CLASS_OFFERING_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `class` (`ClassID`) ON UPDATE CASCADE;

--
-- 限制表 `class_only_member`
--
ALTER TABLE `class_only_member`
  ADD CONSTRAINT `CLASS_ONLY_MEMBER_ibfk_1` FOREIGN KEY (`MemberCode`) REFERENCES `member` (`MemberCode`) ON UPDATE CASCADE;

--
-- 限制表 `FACILITY_DETAILS`
--
ALTER TABLE `FACILITY_DETAILS`
  ADD CONSTRAINT `FACILITY_DETAILS_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FACILITY_DETAILS_ibfk_2` FOREIGN KEY (`FacilityID`) REFERENCES `facility` (`FacilityID`) ON UPDATE CASCADE;

--
-- 限制表 `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `MANAGER_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`) ON UPDATE CASCADE;

--
-- 限制表 `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `MEMBER_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `MEMBER_ibfk_2` FOREIGN KEY (`TainerID`) REFERENCES `trainer` (`TrainerID`) ON UPDATE CASCADE;

--
-- 限制表 `personal_trained_enrolment`
--
ALTER TABLE `personal_trained_enrolment`
  ADD CONSTRAINT `PERSONAL_TRAINED_ENROLMENT_ibfk_1` FOREIGN KEY (`MemberCode`) REFERENCES `member` (`MemberCode`) ON UPDATE CASCADE,
  ADD CONSTRAINT `PERSONAL_TRAINED_ENROLMENT_ibfk_2` FOREIGN KEY (`PersonalTrainerID`) REFERENCES `trainer` (`TrainerID`) ON UPDATE CASCADE;

--
-- 限制表 `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `TRAINER_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`) ON UPDATE CASCADE;

--
-- 限制表 `trainer_specialization`
--
ALTER TABLE `trainer_specialization`
  ADD CONSTRAINT `TRAINER_SPECIALIZATION_ibfk_1` FOREIGN KEY (`TrainerID`) REFERENCES `trainer` (`TrainerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `TRAINER_SPECIALIZATION_ibfk_2` FOREIGN KEY (`SpecializationID`) REFERENCES `specialization` (`SpecializationID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
