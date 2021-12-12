-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 10:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree_cutting_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `Customer_ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Othernames` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `added_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tb`
--

CREATE TABLE `employee_tb` (
  `Employee_ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Dep_unit` varchar(255) NOT NULL,
  `Job_title` varchar(255) NOT NULL,
  `Salary` float NOT NULL,
  `Wage` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_tb`
--

INSERT INTO `employee_tb` (`Employee_ID`, `Firstname`, `Lastname`, `Date_of_Birth`, `Address`, `Department`, `Dep_unit`, `Job_title`, `Salary`, `Wage`, `date_added`) VALUES
(1, 'empFirstname', 'empLastname', '0000-00-00', 'Employee Address. Ashesi.', 'Heavy Duty Dept.', 'Tractors unit', 'Supervisory agent', 10000, 100, '2021-12-11 21:37:59'),
(2, 'Test', 'TestLastname', '2021-12-08', 'Some new Address', 'Mounting Department', 'Tree Mounting unit', 'Tree mounter', 5000, 50, '2021-12-08 21:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `Equipment_ID` int(11) NOT NULL,
  `EquipmentName` varchar(255) NOT NULL,
  `Equipment_Type` varchar(255) NOT NULL,
  `Instock` int(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `repair_tb`
--

CREATE TABLE `repair_tb` (
  `RepairID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Repair_description` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Charge` float NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `Repair_TItile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services_tb`
--

CREATE TABLE `services_tb` (
  `ServiceID` int(11) NOT NULL,
  `ServiceType` varchar(255) NOT NULL,
  `ServiceCharge` varchar(255) NOT NULL,
  `ServiceDescription` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `AvailableRegions` varchar(255) NOT NULL,
  `added_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treeservice_blog`
--

CREATE TABLE `treeservice_blog` (
  `BlogPost_ID` int(11) NOT NULL,
  `Post_Title` varchar(255) NOT NULL,
  `Post_Content` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `User_ID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`User_ID`, `email`, `password`, `Employee_ID`, `created_at`) VALUES
(1, 'admin@admin.com', 'admin', 1, '2021-12-11'),
(2, 'user@user.com', 'user', 2, '2021-12-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `employee_tb`
--
ALTER TABLE `employee_tb`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`Equipment_ID`);

--
-- Indexes for table `repair_tb`
--
ALTER TABLE `repair_tb`
  ADD PRIMARY KEY (`RepairID`);

--
-- Indexes for table `treeservice_blog`
--
ALTER TABLE `treeservice_blog`
  ADD PRIMARY KEY (`BlogPost_ID`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
