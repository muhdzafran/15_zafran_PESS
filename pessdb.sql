-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 08:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(12, 'QX2222B', '2022-01-07 22:54:49', NULL, NULL),
(13, 'QX1111A', '2022-05-20 10:54:13', NULL, '2021-05-27 14:24:34'),
(14, 'QX3333C', '2022-05-20 14:38:09', NULL, NULL),
(14, 'QX5555E', '2022-05-20 14:38:09', NULL, NULL),
(14, 'QX6666F', '2022-05-20 14:38:09', NULL, NULL),
(14, 'QX7777G', '2022-05-20 14:38:09', NULL, NULL),
(14, 'QX8888H', '2022-05-20 14:38:09', NULL, NULL),
(15, 'QX9999I', '2022-05-20 14:38:25', NULL, NULL),
(16, 'QX1111A', '2022-05-27 14:22:58', NULL, '2021-05-27 14:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(2, 'cindy', '91234567', '030', 'hougang', 'help', '2', '2014-04-26 01:26:58'),
(3, 'cindy', '98989898', '040', 'sengkang', 'dfdfdfd', '3', '2014-05-21 03:41:33'),
(8, 'peter', '1234567', '030', 'sengkang', 'l', '3', '2015-02-14 07:09:39'),
(9, 'ginee', 's1234566a', '020', 'amk', 'dfd', '3', '2015-02-15 07:02:56'),
(10, 'cindy', '12345678', '010', 'amk', 'd', '3', '2015-02-15 07:05:30'),
(11, 'Sam Ho', '81234567', '030', 'ang mo kio', 'urgent\r\ncome quitk', '3', '0000-00-00 00:00:00'),
(12, 'aa', 'bb', '010', 'cc', '123', '2', '2021-01-07 14:54:49'),
(13, 'Vincent', '91234567', '010', 'Tampines St 23', 'aaa', '2', '2021-05-20 02:54:13'),
(14, 'Vincent', '91234567', '010', 'Tampines St 23', 'abc', '2', '2021-05-20 06:38:09'),
(15, 'Vincent', '91234567', '010', 'Tampines St 23', 'dsdf', '2', '2021-05-20 06:38:25'),
(16, 'Vincent', '91234567', '010', 'Tampines St 23', 'blah blah', '3', '2021-05-27 06:24:34'),
(17, 'sex', 'sex', '010', 'sex', '', '1', '2022-05-24 14:04:56'),
(18, 'sex', 'sex', '010', 'sex', 'cum', '1', '2022-05-24 14:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violence'),
('050', 'Fallen\r\nTree'),
('060', 'Traffic\r\nAccident'),
('070', 'Loan\r\nShark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1123V', '1'),
('QX2222B', '1'),
('QX3333C', '1'),
('QX4444P', '1'),
('QX5555E', '1'),
('QX6666F', '1'),
('QX7777G', '1'),
('QX8888H', '1'),
('QX9999I', '1'),
('QX1111A', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
