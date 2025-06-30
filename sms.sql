-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jan 09, 2025 at 07:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` varchar(10) NOT NULL,
  `year` int(5) NOT NULL,
  `programme` varchar(10) NOT NULL,
  `module1` varchar(100) DEFAULT NULL,
  `module2` varchar(100) DEFAULT NULL,
  `module3` varchar(100) DEFAULT NULL,
  `module4` varchar(100) DEFAULT NULL,
  `module5` varchar(100) DEFAULT NULL,
  `module6` varchar(100) DEFAULT NULL,
  `module7` varchar(100) DEFAULT NULL,
  `module8` varchar(100) DEFAULT NULL,
  `module9` varchar(100) DEFAULT NULL,
  `module10` varchar(100) DEFAULT NULL,
  `module11` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `year`, `programme`, `module1`, `module2`, `module3`, `module4`, `module5`, `module6`, `module7`, `module8`, `module9`, `module10`, `module11`) VALUES
('C01', 2024, 'DSE', 'Introduction to Computer Science', 'Mathematics for Computing', 'Computer Technology', 'Object-Oriented Programming', 'Database Management Systems', 'Computer Architecture and Networks', 'GUI Application Development', 'Operating Systems', 'Enterprise Application Development-1', 'Web Application Development', 'Software Engineering'),
('C02', 2024, 'DNE', 'Electronics and Computer Organization', 'Introduction to Computer Science', 'Mathematics for Computing', 'Routing and Switching Essentials', 'Database Management Systems', 'Scaling Networks', 'System Essentials', 'Connecting Networks', 'Fundamentals of Electronics', 'Data Communication ', 'Computer Technology'),
('C03', 2024, 'DCSD', 'Introduction to Computer Science', 'Mathematics for Computing', 'Introduction to IOT', 'System Analysis and Design', 'SEO & Digital Marketing', 'Business Communication Skills', 'Programming Fundamentals', 'Computer Technology', 'Electronics and Computer Organization', 'Computer Architecture and Networks', 'Creative Thinking & Problem Solving'),
('C04', 2025, 'DSE', 'Introduction to Computer Science', 'Mathematics for Computing', 'Programming Fundamentals', 'Object-Oriented Programming', 'Object-Oriented Programming', 'Computer Technology', 'Database Management Systems', 'Computer Architecture and Networks', 'GUI Application Development', 'Operating Systems', 'Web Application Development');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturerID` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `branch` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturerID`, `firstName`, `lastName`, `email`, `mobile`, `address`, `age`, `title`, `module`, `qualification`, `branch`) VALUES
('L01', 'chandula', 'rajapaksha', 'chandula@gmail.com', '783535689', '227D 1st Flr Galle Road, 03, Colombo', 31, 'Mrs', 'Object-Oriented Programming', 'PHD', 'Colombo'),
('L02', 'Pawithra', 'rajapaksha', 'pawithra@gmail.com', '783535689', '227D 1st Flr Galle Road, 03, Colombo', 31, 'Mrs', 'Object-Oriented Programming', 'PHD', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `userName`, `password`) VALUES
('A01', 'admin1', '123');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultID` varchar(7) NOT NULL,
  `studentID` varchar(5) NOT NULL,
  `year` int(11) NOT NULL,
  `programme` varchar(10) NOT NULL,
  `module1` varchar(100) NOT NULL,
  `result1` decimal(3,2) NOT NULL,
  `module2` varchar(100) NOT NULL,
  `result2` decimal(3,2) NOT NULL,
  `module3` varchar(100) NOT NULL,
  `result3` decimal(3,2) NOT NULL,
  `module4` varchar(100) NOT NULL,
  `result4` decimal(3,2) NOT NULL,
  `module5` varchar(100) NOT NULL,
  `result5` decimal(3,2) NOT NULL,
  `module6` varchar(100) NOT NULL,
  `result6` decimal(3,2) NOT NULL,
  `module7` varchar(100) NOT NULL,
  `result7` decimal(3,2) NOT NULL,
  `module8` varchar(100) NOT NULL,
  `result8` decimal(3,2) NOT NULL,
  `module9` varchar(100) NOT NULL,
  `result9` decimal(3,2) NOT NULL,
  `module10` varchar(100) NOT NULL,
  `result10` decimal(3,2) NOT NULL,
  `module11` varchar(100) NOT NULL,
  `result11` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultID`, `studentID`, `year`, `programme`, `module1`, `result1`, `module2`, `result2`, `module3`, `result3`, `module4`, `result4`, `module5`, `result5`, `module6`, `result6`, `module7`, `result7`, `module8`, `result8`, `module9`, `result9`, `module10`, `result10`, `module11`, `result11`) VALUES
('R01', 'S01', 2024, 'DNE', 'Electronics and Computer Organization', 4.00, 'Introduction to Computer Science', 4.00, 'Mathematics for Computing', 4.00, 'Routing and Switching Essentials', 4.00, 'Database Management Systems', 4.00, 'Scaling Networks', 4.00, 'System Essentials', 4.00, 'Connecting Networks', 4.00, 'Fundamentals of Electronics', 4.00, 'Fundamentals of Electronics', 3.30, 'Computer Technology', 3.80),
('R02', 'S02', 2024, 'DSE', 'Introduction to Computer Science', 3.30, 'Mathematics for Computing', 3.80, 'Computer Technology', 4.00, 'Object-Oriented Programming', 4.00, 'Database Management Systems', 4.00, 'Computer Architecture and Networks', 2.20, 'GUI Application Development', 2.00, 'Operating Systems', 3.30, 'Enterprise Application Development-1', 2.10, 'Enterprise Application Development-1', 2.20, 'Software Engineering', 3.80),
('R03', 'S03', 2024, 'DCSD', 'Introduction to Computer Science', 2.20, 'Mathematics for Computing', 1.00, 'Introduction to IOT', 1.10, 'System Analysis and Design', 2.20, 'SEO & Digital Marketing', 3.30, 'Business Communication Skills', 4.00, 'Programming Fundamentals', 2.00, 'Computer Technology', 1.10, 'Electronics and Computer Organization', 3.30, 'Electronics and Computer Organization', 2.10, 'Creative Thinking & Problem Solving', 4.00),
('R04', 'S04', 2024, 'DSE', 'Introduction to Computer Science', 2.20, 'Mathematics for Computing', 3.30, 'Computer Technology', 3.80, 'Object-Oriented Programming', 2.00, 'Database Management Systems', 2.00, 'Computer Architecture and Networks', 4.00, 'GUI Application Development', 1.10, 'Operating Systems', 1.80, 'Enterprise Application Development-1', 1.30, 'Enterprise Application Development-1', 4.00, 'Software Engineering', 4.00),
('R05', 'S05', 2024, 'DNE', 'Electronics and Computer Organization', 3.30, 'Introduction to Computer Science', 4.00, 'Mathematics for Computing', 4.00, 'Routing and Switching Essentials', 2.10, 'Database Management Systems', 2.20, 'Scaling Networks', 3.10, 'System Essentials', 2.80, 'Connecting Networks', 1.00, 'Fundamentals of Electronics', 1.00, 'Fundamentals of Electronics', 1.80, 'Computer Technology', 2.80),
('R06', 'S06', 2024, 'DCSD', 'Introduction to Computer Science', 3.80, 'Mathematics for Computing', 3.80, 'Introduction to IOT', 3.80, 'System Analysis and Design', 3.10, 'SEO & Digital Marketing', 4.00, 'Business Communication Skills', 3.30, 'Programming Fundamentals', 2.00, 'Computer Technology', 1.00, 'Electronics and Computer Organization', 3.00, 'Electronics and Computer Organization', 4.00, 'Creative Thinking & Problem Solving', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `title` varchar(10) NOT NULL,
  `programme` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `parentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstName`, `lastName`, `email`, `age`, `address`, `title`, `programme`, `branch`, `mobile`, `parentName`) VALUES
('S01', 'desan', 'dinsanda', 'desandinsanad@gmail.com', 21, '353/1, Pitipana South, Homagama', 'Mr', 'DNE', 'Colombo', '0787645778', 'Sujith'),
('S02', 'denura', 'minulaka', 'denura.minulaka@gmail.com', 21, '353/1, Pitipana south, Homagama', 'Mr', 'DSE', 'Galle', '0785467443', 'Kanthi'),
('S03', 'Liana', 'Zulfik', 'lianazulfik@gmail.com', 19, '165 Galle Road, 04 Colombo', 'Mrs', 'DCSD', 'Rajagiriya', '0768634995', 'Malik'),
('S04', 'hasindu', 'eshan', 'hasindu@gmail.com', 21, 'No D127, Nivasipura, Kotugoda', 'Mr', 'DSE', 'Galle', '0775677239', 'Nirmala'),
('S05', 'senan', 'thnuka', 'senanthenuka@gmail.com', 22, 'No 105/1, Wewalduwa Rd, Kelaniya', 'Mr', 'DNE', 'Matara', '0715582309', 'Kamal'),
('S06', 'jeewantha', 'perera', 'jeewanthaperera@gmail.com', 20, 'No 65/16, Sooriya Paluwa, Kadawatha.', 'Mr', 'DCSD', 'Kandy', '0763874590', 'Nimal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `stdID_fk` (`studentID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD UNIQUE KEY `UC_student` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
