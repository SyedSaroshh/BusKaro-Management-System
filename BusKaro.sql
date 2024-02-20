-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 08:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kk`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_ID` varchar(255) NOT NULL,
  `Manager_ID` varchar(255) NOT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `LicensePlate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_ID`, `Manager_ID`, `Model`, `Capacity`, `LicensePlate`) VALUES
('BBH1', 'BH1', 'Coaster', 23, 'Bk-105'),
('BBH2', 'BH2', 'Coaster', 23, 'Bk-106'),
('BBH3', 'BH2', 'Coaster', 23, 'Bk-107'),
('BBH4', 'BH3', 'Hiace', 23, 'Bk-108'),
('BCU1', 'BMG1', 'Coaster', 30, 'BK-100'),
('BCU2', 'BMG2', 'Coaster', 30, 'BK-101'),
('BCU3', 'BMG3', 'Coaster', 30, 'BK-102'),
('BCU4', 'BMG3', 'Coaster', 30, 'BK-103'),
('BCU5', 'BMG4', 'Hiace', 15, 'BK-104'),
('BNU1', 'MNU1', 'Hiace', 23, 'Bk-109'),
('BNU2', 'MNU2', 'Hiace', 23, 'Bk-110'),
('BNU3', 'MNU3', 'Hiace', 23, 'Bk-111'),
('BNU4', 'MNU4', 'Coaster', 30, 'Bk-112'),
('BQU1', 'MQU1', 'Coaster', 30, 'Bk-113'),
('BQU2', 'MQU2', 'Coaster', 30, 'Bk-114'),
('BQU3', 'MQU3', 'Coaster', 30, 'Bk-115');

-- --------------------------------------------------------

--
-- Table structure for table `busroute`
--

CREATE TABLE `busroute` (
  `Route_ID` varchar(255) NOT NULL,
  `Manager_ID` varchar(255) DEFAULT NULL,
  `StartingPoint` varchar(255) DEFAULT NULL,
  `Distance` int(11) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busroute`
--

INSERT INTO `busroute` (`Route_ID`, `Manager_ID`, `StartingPoint`, `Distance`, `Destination`) VALUES
('IB1', 'MIB1', 'Islamabad', 100, 'Bahria University'),
('IB2', 'MIB2', 'Islamabad', 200, 'Bahria University'),
('IC1', 'MCI1', 'Islamabad', 50, 'CUST'),
('IC2', 'MCI1', 'Islamabad', 150, 'CUST'),
('IQB1', 'MQB2', 'Islamaba', 100, 'Quaid e Azam University'),
('RB1', 'MRB1', 'Rawalpindi', 150, 'Bahria University'),
('RB2', 'MRB1', 'Rawalpindi', 100, 'Bahria University'),
('RB3', 'MRB2', 'Rawalpindi', 100, 'Bahria University'),
('RC1', 'MCR1', 'Rawalpindi', 100, 'CUST'),
('RC2', 'MCR1', 'Rawalpindi', 150, 'CUST'),
('RC3', 'MCR2', 'Rawalpindi', 100, 'CUST'),
('RN1', 'MN1', 'Rawalpindi', 100, 'NUST'),
('RN2', 'MN2', 'Rawalpindi', 150, 'NUST'),
('RQB1', 'MQB1', 'Rawalpindi', 200, 'Quaid e Azam University'),
('RQB2', 'MQB1', 'Rawalpindi', 200, 'Quaid e Azam University');

-- --------------------------------------------------------

--
-- Table structure for table `busschedule`
--

CREATE TABLE `busschedule` (
  `Schedule_ID` varchar(255) NOT NULL,
  `Bus_ID` varchar(255) DEFAULT NULL,
  `Route_ID` varchar(255) DEFAULT NULL,
  `Manager_ID` varchar(255) DEFAULT NULL,
  `DepartureTime` varchar(255) DEFAULT NULL,
  `ArrivalTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busschedule`
--

INSERT INTO `busschedule` (`Schedule_ID`, `Bus_ID`, `Route_ID`, `Manager_ID`, `DepartureTime`, `ArrivalTime`) VALUES
('S-IC1', 'BCU1', 'IC1', 'MCI1', '1:30PM', '7:30AM'),
('S-RB1', 'BBH1', 'RB1', 'MRB1', '1:30PM', '7:00AM'),
('S-RB2', 'BBH2', 'RB2', 'MRB1', '1:30PM', '7:00AM'),
('S-RB3', 'BBH3', 'RB3', 'MRB2', '3:30PM', '7:00AM'),
('S-RB4', 'BBH3', 'RB3', 'MRB2', '5:30PM', '7:00AM'),
('S-RC1', 'BCU2', 'RC2', 'MCR1', '3:30PM', '7:00AM'),
('S-RC2', 'BCU3', 'RC3', 'MCR2', '5:30PM', '7:00AM'),
('S-RC3', 'BCU4', 'RC3', 'MCR2', '5:30PM', '7:00AM'),
('S-RC4', 'BCU5', 'RC3', 'MCR2', '5:30PM', '7:00AM'),
('S-RN1', 'BNU1', 'RN1', 'MN1', '1:30PM', '7:00AM'),
('S-RN2', 'BNU2', 'RN2', 'MN2', '3:30PM', '7:00AM'),
('S-RN3', 'BNU3', 'RN2', 'MN2', '3:30PM', '7:00AM'),
('S-RN4', 'BNU4', 'RN2', 'MN2', '5:30PM', '7:00AM'),
('S-RQB1', 'RQ1', 'RBQ1', 'MQB1', '1:30PM', '7:00AM'),
('S-RQB2', 'RQ2', 'RBQ2', 'MQB2', '3:30PM', '7:00AM'),
('S-RQB3', 'RQ3', 'RBQ2', 'MQB2', '5:30PM', '7:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driver_ID` varchar(255) NOT NULL,
  `Manager_ID` varchar(255) NOT NULL,
  `DName` varchar(255) DEFAULT NULL,
  `DCNIC` varchar(255) DEFAULT NULL,
  `DContact_Info` varchar(255) DEFAULT NULL,
  `DLicenseno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Driver_ID`, `Manager_ID`, `DName`, `DCNIC`, `DContact_Info`, `DLicenseno`) VALUES
('DBH1', 'MBH1', 'Sarosh', '66101-2546110-9', '03115185710', 'L2313466'),
('DBH2', 'MBH2', 'Ahmed', '66101-2546110-1', '03115185701', 'L2313467'),
('DCU1', 'MCU1', 'Rafay', '66101-2546110-6', '03115185716', 'L2313464'),
('DCU2', 'MCU1', 'Rauf', '66101-2546110-7', '03115185717', 'L2313463'),
('DCU3', 'MCU2', 'Ahmed', '66101-2546110-8', '03115185718', 'L2313465'),
('DNU1', 'MNU1', 'Rauf', '66101-2546110-2', '03115185702', 'L2313468'),
('DNU2', 'MNU2', 'Sarosh', '66101-2546110-3', '03115185703', 'L2313469'),
('DQI1', 'MQI1', 'Raahim', '66101-2546110-4', '03115185704', 'L2313470'),
('DQI2', 'MQI1', 'Hassaan', '66101-2546111-6', '03115185705', 'L2313471');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Contact_Info` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Manager_ID` varchar(255) NOT NULL,
  `Student_ID` varchar(255) DEFAULT NULL,
  `Bus_ID` varchar(255) DEFAULT NULL,
  `Route_ID` varchar(255) DEFAULT NULL,
  `Schedule_ID` varchar(255) DEFAULT NULL,
  `Driver_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Registration_ID` varchar(255) NOT NULL,
  `Student_ID` varchar(255) DEFAULT NULL,
  `Manager_ID` varchar(255) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Fee` int(11) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` varchar(255) NOT NULL,
  `Uni_ID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Contact_Info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `Uni_ID` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`Uni_ID`, `Name`, `Location`) VALUES
('BH', 'Bahria University ', 'Islamabad'),
('CU', 'Capital University Of Science And Technology', 'Islamabad'),
('NU', 'National University of Science and Technology', 'Islamabad'),
('QI', 'Quaid e Azam University', 'Islamabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_ID`),
  ADD UNIQUE KEY `LicensePlate` (`LicensePlate`);

--
-- Indexes for table `busroute`
--
ALTER TABLE `busroute`
  ADD PRIMARY KEY (`Route_ID`);

--
-- Indexes for table `busschedule`
--
ALTER TABLE `busschedule`
  ADD PRIMARY KEY (`Schedule_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_ID`),
  ADD UNIQUE KEY `DLicenseno` (`DLicenseno`),
  ADD UNIQUE KEY `DCNIC` (`DCNIC`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Registration_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`Uni_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
