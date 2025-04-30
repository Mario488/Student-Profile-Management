-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2025 at 12:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentprofileandmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `AccountEmail` varchar(100) DEFAULT NULL,
  `AccountPassword` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AccountID`, `StudentID`, `AccountEmail`, `AccountPassword`) VALUES
(1, 1, 'john.doe@example.com', 'password123'),
(2, 2, 'jane.smith@example.com', 'password123'),
(3, 3, 'michael.johnson@example.com', 'password123'),
(4, 4, 'emily.davis@example.com', 'password123'),
(5, 5, 'david.wilson@example.com', 'password123'),
(6, 6, 'sarah.brown@example.com', 'password123'),
(7, 7, 'james.jones@example.com', 'password123'),
(8, 8, 'jessica.garcia@example.com', 'password123'),
(9, 9, 'daniel.martinez@example.com', 'password123'),
(10, 10, 'laura.rodriguez@example.com', 'password123'),
(11, 11, 'matthew.lee@example.com', 'password123'),
(12, 12, 'patricia.hernandez@example.com', 'password123'),
(13, 13, 'joshua.lopez@example.com', 'password123'),
(14, 14, 'angela.gonzalez@example.com', 'password123'),
(15, 15, 'brian.wilson@example.com', 'password123'),
(16, 16, 'megan.anderson@example.com', 'password123'),
(17, 17, 'kevin.thomas@example.com', 'password123'),
(18, 18, 'samantha.taylor@example.com', 'password123'),
(19, 19, 'ryan.moore@example.com', 'password123'),
(20, 20, 'ashley.jackson@example.com', 'password123'),
(21, 21, 'jacob.white@example.com', 'password123'),
(22, 22, 'olivia.harris@example.com', 'password123'),
(23, 23, 'ethan.martin@example.com', 'password123'),
(24, 24, 'sophia.thompson@example.com', 'password123'),
(25, 25, 'alexander.garcia@example.com', 'password123'),
(26, 26, 'isabella.martinez@example.com', 'password123'),
(27, 27, 'william.robinson@example.com', 'password123'),
(28, 28, 'mia.clark@example.com', 'password123'),
(29, 29, 'daniel.lewis@example.com', 'password123'),
(30, 30, 'charlotte.lee@example.com', 'password123'),
(31, 31, 'james.walker@example.com', 'password123'),
(32, 32, 'amelia.hall@example.com', 'password123'),
(33, 33, 'benjamin.allen@example.com', 'password123'),
(34, 34, 'harper.young@example.com', 'password123'),
(35, 35, 'lucas.king@example.com', 'password123'),
(36, 36, 'evelyn.wright@example.com', 'password123'),
(37, 37, 'henry.scott@example.com', 'password123'),
(38, 38, 'ella.green@example.com', 'password123'),
(39, 39, 'sebastian.adams@example.com', 'password123'),
(40, 40, 'avery.baker@example.com', 'password123'),
(41, 41, 'owen.gonzalez@example.com', 'password123'),
(42, 42, 'scarlett.nelson@example.com', 'password123'),
(43, 43, 'elijah.carter@example.com', 'password123'),
(44, 44, 'grace.mitchell@example.com', 'password123'),
(45, 45, 'isaac.perez@example.com', 'password123'),
(46, 46, 'chloe.roberts@example.com', 'password123'),
(47, 47, 'mason.turner@example.com', 'password123'),
(48, 48, 'lily.phillips@example.com', 'password123'),
(49, 49, 'logan.campbell@example.com', 'password123'),
(50, 50, 'sofia.parker@example.com', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CollegeID` int(11) NOT NULL,
  `CollegeName` varchar(100) DEFAULT NULL,
  `CollegeDean` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`CollegeID`, `CollegeName`, `CollegeDean`) VALUES
(1, 'College of Information and Computing Sciences', 'Dr. Aliah Mercedes'),
(2, 'College of Engineering and Technology', 'Dr. John Smith'),
(3, 'College of Arts and Humanities', 'Dr. Emily Johnson'),
(4, 'College of Business Administration', 'Dr. Michael Brown'),
(5, 'College of Natural Sciences', 'Dr. Sarah Davis'),
(6, 'College of Health Sciences', 'Dr. David Wilson'),
(7, 'College of Education', 'Dr. Jessica Garcia'),
(8, 'College of Social Sciences', 'Dr. Daniel Martinez'),
(9, 'College of Law', 'Dr. Laura Rodriguez'),
(10, 'College of Agriculture', 'Dr. James Lee'),
(11, 'College of Architecture', 'Dr. Karen Walker'),
(12, 'College of Music', 'Dr. Robert Hall'),
(13, 'College of Nursing', 'Dr. Patricia Young'),
(14, 'College of Pharmacy', 'Dr. Charles Allen'),
(15, 'College of Veterinary Medicine', 'Dr. Linda King'),
(16, 'College of Public Health', 'Dr. Joseph Wright'),
(17, 'College of Communication', 'Dr. Barbara Scott'),
(18, 'College of Information Technology', 'Dr. William Green'),
(19, 'College of Environmental Studies', 'Dr. Elizabeth Adams'),
(20, 'College of Performing Arts', 'Dr. Christopher Baker'),
(21, 'College of Linguistics', 'Dr. Nancy Gonzalez'),
(22, 'College of Mathematics', 'Dr. Anthony Nelson'),
(23, 'College of Physics', 'Dr. Margaret Carter'),
(24, 'College of Chemistry', 'Dr. Steven Mitchell'),
(25, 'College of Geology', 'Dr. Susan Perez'),
(26, 'College of Statistics', 'Dr. Timothy Roberts'),
(27, 'College of Data Science', 'Dr. Angela Turner'),
(28, 'College of Cybersecurity', 'Dr. Kevin Phillips'),
(29, 'College of Robotics', 'Dr. Jessica Campbell'),
(30, 'College of Artificial Intelligence', 'Dr. Brian Parker'),
(31, 'College of Game Design', 'Dr. Michelle Evans'),
(32, 'College of Fashion Design', 'Dr. Eric Edwards'),
(33, 'College of Culinary Arts', 'Dr. Amy Collins'),
(34, 'College of Sports Management', 'Dr. Jason Stewart'),
(35, 'College of Hospitality Management', 'Dr. Rebecca Sanchez'),
(36, 'College of International Relations', 'Dr. Mark Morris'),
(37, 'College of Urban Studies', 'Dr. Laura Rogers'),
(38, 'College of Marine Biology', 'Dr. Charles Reed'),
(39, 'College of Forensic Science', 'Dr. Lisa Cook'),
(40, 'College of Criminology', 'Dr. Matthew Morgan'),
(41, 'College of Archaeology', 'Dr. Sarah Bell'),
(42, 'College of Anthropology', 'Dr. Joshua Murphy'),
(43, 'College of Sociology', 'Dr. Emily Rivera'),
(44, 'College of Psychology', 'Dr. Daniel Cooper'),
(45, 'College of Philosophy', 'Dr. Michelle Richardson'),
(46, 'College of Theology', 'Dr. Brian Cox'),
(47, 'College of History', 'Dr. Angela Howard'),
(48, 'College of Literature', 'Dr. Kevin Ward'),
(49, 'College of Graphic Design', 'Dr. Jennifer Torres'),
(50, 'College of Film Studies', 'Dr. Thomas Peterson'),
(51, 'College of Digital Media', 'Dr. Rachel Hughes'),
(52, 'College of Creative Writing', 'Dr. Steven Price'),
(53, 'College of Visual Arts', 'Dr. Laura Bennett'),
(54, 'College of Interior Design', 'Dr. Eric Wood'),
(55, 'College of Art History', 'Dr. Amy James'),
(56, 'College of Cultural Studies', 'Dr. Brian Kelly');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptID` int(11) NOT NULL,
  `CollegeID` int(11) DEFAULT NULL,
  `DeptName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptID`, `CollegeID`, `DeptName`) VALUES
(1, 1, 'Department of Computer Science'),
(2, 1, 'Department of Software Engineering'),
(3, 1, 'Department of Data Science'),
(4, 1, 'Department of Cybersecurity'),
(5, 1, 'Department of Information Systems'),
(6, 2, 'Department of Civil Engineering'),
(7, 2, 'Department of Mechanical Engineering'),
(8, 2, 'Department of Electrical Engineering'),
(9, 2, 'Department of Chemical Engineering'),
(10, 2, 'Department of Industrial Engineering'),
(11, 3, 'Department of History'),
(12, 3, 'Department of Philosophy'),
(13, 3, 'Department of Literature'),
(14, 3, 'Department of Linguistics'),
(15, 3, 'Department of Cultural Studies'),
(16, 4, 'Department of Business Management'),
(17, 4, 'Department of Marketing'),
(18, 4, 'Department of Finance'),
(19, 4, 'Department of Accounting'),
(20, 4, 'Department of Human Resources'),
(21, 5, 'Department of Biology'),
(22, 5, 'Department of Chemistry'),
(23, 5, 'Department of Physics'),
(24, 5, 'Department of Environmental Science'),
(25, 5, 'Department of Marine Biology'),
(26, 6, 'Department of Nursing'),
(27, 6, 'Department of Pharmacy'),
(28, 6, 'Department of Public Health'),
(29, 6, 'Department of Health Administration'),
(30, 6, 'Department of Occupational Therapy'),
(31, 7, 'Department of Education'),
(32, 7, 'Department of Special Education'),
(33, 7, 'Department of Educational Leadership'),
(34, 7, 'Department of Curriculum Studies'),
(35, 7, 'Department of Adult Education'),
(36, 8, 'Department of Sociology'),
(37, 8, 'Department of Psychology'),
(38, 8, 'Department of Criminology'),
(39, 8, 'Department of Social Work'),
(40, 8, 'Department of Anthropology'),
(41, 9, 'Department of Law'),
(42, 9, 'Department of International Law'),
(43, 9, 'Department of Criminal Law'),
(44, 9, 'Department of Corporate Law'),
(45, 9, 'Department of Environmental Law'),
(46, 10, 'Department of Fine Arts'),
(47, 10, 'Department of Music'),
(48, 10, 'Department of Theater'),
(49, 10, 'Department of Dance'),
(50, 10, 'Department of Graphic Design');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `InstructID` int(11) NOT NULL,
  `DeptID` int(11) DEFAULT NULL,
  `InstructFirstName` varchar(50) DEFAULT NULL,
  `InstructLastName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`InstructID`, `DeptID`, `InstructFirstName`, `InstructLastName`) VALUES
(1, 1, 'John', 'Smith'),
(2, 1, 'Jane', 'Doe'),
(3, 1, 'Michael', 'Johnson'),
(4, 1, 'Emily', 'Davis'),
(5, 1, 'David', 'Wilson'),
(6, 1, 'Sarah', 'Brown'),
(7, 1, 'James', 'Jones'),
(8, 1, 'Jessica', 'Garcia'),
(9, 1, 'Daniel', 'Martinez'),
(10, 1, 'Laura', 'Rodriguez'),
(11, 2, 'Matthew', 'Lee'),
(12, 2, 'Patricia', 'Hernandez'),
(13, 2, 'Joshua', 'Lopez'),
(14, 2, 'Angela', 'Gonzalez'),
(15, 2, 'Brian', 'Wilson'),
(16, 2, 'Megan', 'Anderson'),
(17, 2, 'Kevin', 'Thomas'),
(18, 2, 'Samantha', 'Taylor'),
(19, 2, 'Ryan', 'Moore'),
(20, 2, 'Ashley', 'Jackson'),
(21, 3, 'Jacob', 'White'),
(22, 3, 'Olivia', 'Harris'),
(23, 3, 'Ethan', 'Martin'),
(24, 3, 'Sophia', 'Thompson'),
(25, 3, 'Alexander', 'Garcia'),
(26, 3, 'Isabella', 'Martinez'),
(27, 3, 'William', 'Robinson'),
(28, 3, 'Mia', 'Clark'),
(29, 3, 'Daniel', 'Lewis'),
(30, 3, 'Charlotte', 'Lee'),
(31, 4, 'James', 'Walker'),
(32, 4, 'Amelia', 'Hall'),
(33, 4, 'Benjamin', 'Allen'),
(34, 4, 'Harper', 'Young'),
(35, 4, 'Lucas', 'King'),
(36, 4, 'Evelyn', 'Wright'),
(37, 4, 'Henry', 'Scott'),
(38, 4, 'Ella', 'Green'),
(39, 4, 'Sebastian', 'Adams'),
(40, 4, 'Avery', 'Baker'),
(41, 5, 'Owen', 'Gonzalez'),
(42, 5, 'Scarlett', 'Nelson'),
(43, 5, 'Elijah', 'Carter'),
(44, 5, 'Grace', 'Mitchell'),
(45, 5, 'Isaac', 'Perez'),
(46, 5, 'Chloe', 'Roberts'),
(47, 5, 'Mason', 'Turner'),
(48, 5, 'Lily', 'Phillips'),
(49, 5, 'Logan', 'Campbell'),
(50, 5, 'Sofia', 'Parker'),
(51, 6, 'Daniel', 'Adams'),
(52, 6, 'Victoria', 'Bennett'),
(53, 6, 'Matthew', 'Carter'),
(54, 6, 'Natalie', 'Dixon'),
(55, 6, 'Samuel', 'Evans'),
(56, 6, 'Zoe', 'Foster'),
(57, 6, 'Gabriel', 'Graham'),
(58, 6, 'Nora', 'Hughes'),
(59, 6, 'Isaiah', 'James'),
(60, 6, 'Maya', 'Kelley');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `ManageID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `InstructorID` int(11) DEFAULT NULL,
  `ScheduleID` int(11) DEFAULT NULL,
  `ManageEnrolDate` date DEFAULT NULL,
  `ManageStatus` enum('Enrolled','Dropped','Failed','Passed') DEFAULT NULL,
  `ManageGrade` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`ManageID`, `StudentID`, `SubjectID`, `InstructorID`, `ScheduleID`, `ManageEnrolDate`, `ManageStatus`, `ManageGrade`) VALUES
(103, 1, 1, 1, 1, '2024-06-01', 'Passed', 1.00),
(104, 1, 2, 1, 2, '2024-06-01', 'Passed', 1.25),
(105, 1, 3, 2, 3, '2024-06-01', 'Passed', 1.50),
(106, 1, 4, 2, 4, '2024-06-01', 'Passed', 1.75),
(107, 1, 5, 3, 5, '2024-06-01', 'Passed', 2.00),
(108, 1, 6, 3, 6, '2024-06-01', 'Passed', 2.25),
(109, 1, 98, 4, 7, '2025-01-13', 'Enrolled', NULL),
(110, 1, 60, 4, 8, '2024-06-01', 'Passed', 2.75),
(111, 1, 70, 1, 9, '2025-01-13', 'Enrolled', NULL),
(112, 1, 90, 1, 10, '2025-01-14', 'Enrolled', NULL),
(113, 1, 89, 2, 11, '2025-01-14', 'Dropped', NULL),
(114, 1, 91, 2, 4, '2025-01-14', 'Enrolled', NULL),
(115, 1, 89, 3, 5, '2025-01-14', 'Enrolled', NULL),
(116, 1, 38, 3, 6, '2025-01-14', 'Enrolled', NULL),
(117, 1, 80, 4, 7, '2025-01-14', 'Enrolled', NULL),
(118, 2, 8, 4, 8, '2023-06-02', 'Passed', 2.75),
(119, 2, 1, 1, 1, '2023-06-03', 'Passed', 1.00),
(120, 2, 2, 1, 2, '2023-06-03', 'Passed', 1.25),
(121, 2, 3, 2, 3, '2023-06-03', 'Passed', 1.50),
(122, 2, 4, 2, 4, '2023-06-03', 'Passed', 1.75),
(123, 2, 5, 3, 5, '2023-06-03', 'Passed', 2.00),
(124, 2, 6, 3, 6, '2023-06-03', 'Failed', 5.00),
(125, 2, 7, 4, 7, '2024-01-12', 'Passed', 2.50),
(126, 2, 8, 4, 8, '2024-01-13', 'Passed', 2.75),
(127, 2, 70, 1, 1, '2024-01-13', 'Passed', 1.00),
(128, 2, 62, 1, 2, '2024-01-13', 'Passed', 1.25),
(129, 2, 91, 2, 3, '2024-01-13', 'Passed', 1.50),
(130, 2, 92, 2, 4, '2025-01-13', 'Enrolled', NULL),
(131, 2, 93, 3, 5, '2025-06-12', 'Enrolled', NULL),
(132, 2, 94, 3, 6, '2025-06-13', 'Enrolled', NULL),
(133, 2, 95, 4, 7, '2025-06-13', 'Enrolled', 0.00),
(134, 2, 96, 4, 8, '2025-06-04', 'Enrolled', 2.75),
(135, 3, 1, 1, 1, '2023-06-05', 'Passed', 1.00),
(136, 3, 2, 1, 2, '2023-06-05', 'Passed', 1.25),
(137, 4, 3, 2, 3, '2023-01-05', 'Passed', 1.50),
(138, 4, 4, 2, 4, '2023-01-05', 'Passed', 1.75),
(139, 5, 5, 3, 5, '2023-01-05', 'Passed', 2.00),
(140, 5, 6, 3, 6, '2023-01-05', 'Passed', 2.25),
(141, 5, 7, 4, 7, '2023-01-05', 'Passed', 2.50),
(142, 5, 8, 4, 8, '2023-01-05', 'Passed', 2.75),
(143, 6, 1, 1, 1, '2023-01-06', 'Passed', 1.00),
(144, 6, 2, 1, 2, '2023-01-06', 'Enrolled', NULL),
(145, 6, 3, 2, 3, '2023-01-06', 'Passed', 1.50),
(146, 6, 4, 2, 4, '2023-01-06', 'Passed', 1.75),
(147, 6, 5, 3, 5, '2023-01-06', 'Passed', 2.00),
(148, 6, 6, 3, 6, '2023-01-06', 'Dropped', 0.00),
(149, 6, 7, 4, 7, '2023-01-06', 'Passed', 2.50),
(150, 6, 8, 4, 8, '2023-01-06', 'Passed', 2.75),
(151, 7, 1, 1, 1, '2023-01-07', 'Passed', 1.00),
(152, 7, 2, 1, 2, '2023-01-07', 'Passed', 1.25),
(153, 7, 3, 2, 3, '2023-01-07', 'Passed', 1.50),
(154, 7, 4, 2, 4, '2023-01-07', 'Passed', 1.75),
(155, 7, 5, 3, 5, '2023-01-07', 'Passed', 2.00),
(156, 7, 6, 3, 6, '2023-01-07', 'Passed', 2.25),
(157, 7, 7, 4, 7, '2023-01-07', 'Failed', 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` int(11) NOT NULL,
  `DeptID` int(11) DEFAULT NULL,
  `ProgramName` varchar(100) DEFAULT NULL,
  `ProgramDurationInYears` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgramID`, `DeptID`, `ProgramName`, `ProgramDurationInYears`) VALUES
(1, 1, 'Bachelor of Science in Computer Science', 4),
(2, 1, 'Bachelor of Science in Software Engineering', 4),
(3, 1, 'Bachelor of Science in Information Technology', 4),
(4, 1, 'Bachelor of Science in Cybersecurity', 4),
(5, 1, 'Bachelor of Science in Data Science', 4),
(6, 2, 'Bachelor of Science in Civil Engineering', 4),
(7, 2, 'Bachelor of Science in Mechanical Engineering', 4),
(8, 2, 'Bachelor of Science in Electrical Engineering', 4),
(9, 2, 'Bachelor of Science in Chemical Engineering', 4),
(10, 2, 'Bachelor of Science in Industrial Engineering', 4),
(11, 3, 'Bachelor of Arts in History', 4),
(12, 3, 'Bachelor of Arts in Philosophy', 4),
(13, 3, 'Bachelor of Arts in Literature', 4),
(14, 3, 'Bachelor of Arts in Linguistics', 4),
(15, 3, 'Bachelor of Arts in Cultural Studies', 4),
(16, 4, 'Bachelor of Business Administration', 4),
(17, 4, 'Bachelor of Science in Marketing', 4),
(18, 4, 'Bachelor of Science in Finance', 4),
(19, 4, 'Bachelor of Science in Accounting', 4),
(20, 4, 'Bachelor of Science in Human Resources', 4),
(21, 5, 'Bachelor of Science in Biology', 4),
(22, 5, 'Bachelor of Science in Chemistry', 4),
(23, 5, 'Bachelor of Science in Physics', 4),
(24, 5, 'Bachelor of Science in Environmental Science', 4),
(25, 5, 'Bachelor of Science in Marine Biology', 4),
(26, 6, 'Bachelor of Science in Nursing', 4),
(27, 6, 'Bachelor of Science in Pharmacy', 4),
(28, 6, 'Bachelor of Science in Public Health', 4),
(29, 6, 'Bachelor of Science in Health Administration', 4),
(30, 6, 'Bachelor of Science in Occupational Therapy', 4),
(31, 7, 'Bachelor of Education', 4),
(32, 7, 'Bachelor of Arts in Special Education', 4),
(33, 7, 'Bachelor of Arts in Curriculum Studies', 4),
(34, 7, 'Bachelor of Arts in Adult Education', 4),
(35, 7, 'Bachelor of Arts in Educational Leadership', 4),
(36, 8, 'Bachelor of Arts in Sociology', 4),
(37, 8, 'Bachelor of Arts in Psychology', 4),
(38, 8, 'Bachelor of Arts in Criminology', 4),
(39, 8, 'Bachelor of Arts in Social Work', 4),
(40, 8, 'Bachelor of Arts in Anthropology', 4),
(41, 9, 'Bachelor of Laws (LLB)', 4),
(42, 9, 'Bachelor of Arts in International Law', 4),
(43, 9, 'Bachelor of Arts in Criminal Law', 4),
(44, 9, 'Bachelor of Arts in Corporate Law', 4),
(45, 9, 'Bachelor of Arts in Environmental Law', 4),
(46, 10, 'Bachelor of Fine Arts', 4),
(47, 10, 'Bachelor of Music', 4),
(48, 10, 'Bachelor of Arts in Theater', 4),
(49, 10, 'Bachelor of Arts in Dance', 4),
(50, 10, 'Bachelor of Arts in Graphic Design', 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomID` int(11) NOT NULL,
  `RoomNum` varchar(5) DEFAULT NULL,
  `RoomBuilding` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomID`, `RoomNum`, `RoomBuilding`) VALUES
(1, '101', 'Main Building'),
(2, '102', 'Main Building'),
(3, '103', 'Main Building'),
(4, '104', 'Main Building'),
(5, '105', 'Main Building'),
(6, '201', 'Science Building'),
(7, '202', 'Science Building'),
(8, '203', 'Science Building'),
(9, '204', 'Science Building'),
(10, '205', 'Science Building'),
(11, '301', 'Engineering Building'),
(12, '302', 'Engineering Building'),
(13, '303', 'Engineering Building'),
(14, '304', 'Engineering Building'),
(15, '305', 'Engineering Building'),
(16, '401', 'Arts Building'),
(17, '402', 'Arts Building'),
(18, '403', 'Arts Building'),
(19, '404', 'Arts Building'),
(20, '405', 'Arts Building'),
(21, '501', 'Business Building'),
(22, '502', 'Business Building'),
(23, '503', 'Business Building'),
(24, '504', 'Business Building'),
(25, '505', 'Business Building'),
(26, '601', 'Library'),
(27, '602', 'Library'),
(28, '603', 'Library'),
(29, '604', 'Library'),
(30, '605', 'Library'),
(31, '701', 'Health Sciences Building'),
(32, '702', 'Health Sciences Building'),
(33, '703', 'Health Sciences Building'),
(34, '704', 'Health Sciences Building'),
(35, '705', 'Health Sciences Building'),
(36, '801', 'Gymnasium'),
(37, '802', 'Gymnasium'),
(38, '803', 'Gymnasium'),
(39, '804', 'Gymnasium'),
(40, '805', 'Gymnasium'),
(41, '901', 'Auditorium'),
(42, '902', 'Auditorium'),
(43, '903', 'Auditorium'),
(44, '904', 'Auditorium'),
(45, '905', 'Auditorium'),
(46, '1001', 'Annex Building'),
(47, '1002', 'Annex Building'),
(48, '1003', 'Annex Building'),
(49, '1004', 'Annex Building'),
(50, '1005', 'Annex Building');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `SchedID` int(11) NOT NULL,
  `RoomID` int(11) DEFAULT NULL,
  `SchedTime` time DEFAULT NULL,
  `SchedDay` varchar(20) DEFAULT NULL,
  `SchedCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`SchedID`, `RoomID`, `SchedTime`, `SchedDay`, `SchedCode`) VALUES
(1, 1, '10:00:00', 'MW', 'Aa'),
(2, 1, '11:00:00', 'MW', 'Bb'),
(3, 1, '12:00:00', 'MW', 'Cc'),
(4, 1, '13:00:00', 'MW', 'Dd'),
(5, 1, '14:00:00', 'MW', 'Ee'),
(6, 2, '10:00:00', 'TTH', 'Ff'),
(7, 2, '11:00:00', 'TTH', 'Gg'),
(8, 2, '12:00:00', 'TTH', 'Hh'),
(9, 2, '13:00:00', 'TTH', 'Ii'),
(10, 2, '14:00:00', 'TTH', 'Jj'),
(11, 3, '10:00:00', 'MW', 'Aa'),
(12, 3, '11:00:00', 'MW', 'Bb'),
(13, 3, '12:00:00', 'MW', 'Cc'),
(14, 3, '13:00:00', 'MW', 'Dd'),
(15, 3, '14:00:00', 'MW', 'Ee'),
(16, 4, '10:00:00', 'TTH', 'Ff'),
(17, 4, '11:00:00', 'TTH', 'Gg'),
(18, 4, '12:00:00', 'TTH', 'Hh'),
(19, 4, '13:00:00', 'TTH', 'Ii'),
(20, 4, '14:00:00', 'TTH', 'Jj'),
(21, 5, '10:00:00', 'FS', 'Kk'),
(22, 5, '11:00:00', 'FS', 'Ll'),
(23, 5, '12:00:00', 'FS', 'Mm'),
(24, 5, '13:00:00', 'FS', 'Nn'),
(25, 5, '14:00:00', 'FS', 'Oo'),
(26, 6, '10:00:00', 'MW', 'Aa'),
(27, 6, '11:00:00', 'MW', 'Bb'),
(28, 6, '12:00:00', 'MW', 'Cc'),
(29, 6, '13:00:00', 'MW', 'Dd'),
(30, 6, '14:00:00', 'MW', 'Ee'),
(31, 7, '10:00:00', 'TTH', 'Ff'),
(32, 7, '11:00:00', 'TTH', 'Gg'),
(33, 7, '12:00:00', 'TTH', 'Hh'),
(34, 7, '13:00:00', 'TTH', 'Ii'),
(35, 7, '14:00:00', 'TTH', 'Jj'),
(36, 8, '10:00:00', 'FS', 'Kk'),
(37, 8, '11:00:00', 'FS', 'Ll'),
(38, 8, '12:00:00', 'FS', 'Mm'),
(39, 8, '13:00:00', 'FS', 'Nn'),
(40, 8, '14:00:00', 'FS', 'Oo'),
(41, 9, '10:00:00', 'MW', 'Aa'),
(42, 9, '11:00:00', 'MW', 'Bb'),
(43, 9, '12:00:00', 'MW', 'Cc'),
(44, 9, '13:00:00', 'MW', 'Dd'),
(45, 9, '14:00:00', 'MW', 'Ee'),
(46, 10, '10:00:00', 'TTH', 'Ff'),
(47, 10, '11:00:00', 'TTH', 'Gg'),
(48, 10, '12:00:00', 'TTH', 'Hh'),
(49, 10, '13:00:00', 'TTH', 'Ii'),
(50, 10, '14:00:00', 'TTH', 'Jj');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudID` int(11) NOT NULL,
  `StudFirstName` varchar(50) DEFAULT NULL,
  `StudLastName` varchar(50) DEFAULT NULL,
  `StudDateOfBirth` date DEFAULT NULL,
  `StudGender` enum('Male','Female','Other') DEFAULT NULL,
  `StudEmail` varchar(100) DEFAULT NULL,
  `StudContactNumber` varchar(12) DEFAULT NULL,
  `StudAddress` varchar(200) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `StudAcademicStatus` enum('Regular','Irregular') DEFAULT NULL,
  `StudAcademicYear` enum('Freshmen','Sophomore','Junior','Senior') DEFAULT NULL,
  `StudeIDNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudID`, `StudFirstName`, `StudLastName`, `StudDateOfBirth`, `StudGender`, `StudEmail`, `StudContactNumber`, `StudAddress`, `ProgramID`, `StudAcademicStatus`, `StudAcademicYear`, `StudeIDNum`) VALUES
(1, 'John', 'Doe', '2000-05-27', 'Male', 'john.doe@example.com', '1234567890', '123 Main St, Cityville', 1, 'Regular', 'Freshmen', 20230383),
(2, 'Jane', 'Smith', '2000-05-27', 'Female', 'jane.smith@example.com', '1234567891', '456 Elm St, Townsville', 2, 'Regular', 'Sophomore', 20230384),
(3, 'Michael', 'Johnson', '2000-05-27', 'Male', 'michael.johnson@example.com', '1234567892', '789 Oak St, Villagetown', 3, 'Regular', 'Junior', 20230385),
(4, 'Emily', 'Davis', '2000-05-27', 'Female', 'emily.davis@example.com', '1234567893', '101 Pine St, Hamlet', 4, 'Regular', 'Senior', 20230386),
(5, 'David', 'Wilson', '2000-05-27', 'Male', 'david.wilson@example.com', '1234567894', '202 Maple St, Cityville', 5, 'Regular', 'Freshmen', 20230387),
(6, 'Sarah', 'Brown', '2000-05-27', 'Female', 'sarah.brown@example.com', '1234567895', '303 Cedar St, Townsville', 6, 'Regular', 'Sophomore', 20230388),
(7, 'James', 'Jones', '2000-05-27', 'Male', 'james.jones@example.com', '1234567896', '404 Birch St, Villagetown', 7, 'Regular', 'Junior', 20230389),
(8, 'Jessica', 'Garcia', '2000-05-27', 'Female', 'jessica.garcia@example.com', '1234567897', '505 Walnut St, Hamlet', 8, 'Regular', 'Senior', 20230390),
(9, 'Daniel', 'Martinez', '2000-05-27', 'Male', 'daniel.martinez@example.com', '1234567898', '606 Chestnut St, Cityville', 9, 'Regular', 'Freshmen', 20230391),
(10, 'Laura', 'Rodriguez', '2000-05-27', 'Female', 'laura.rodriguez@example.com', '1234567899', '707 Spruce St, Townsville', 10, 'Regular', 'Sophomore', 20230392),
(11, 'Matthew', 'Lee', '2000-05-27', 'Male', 'matthew.lee@example.com', '1234567800', '808 Fir St, Villagetown', 1, 'Regular', 'Junior', 20230393),
(12, 'Patricia', 'Hernandez', '2000-05-27', 'Female', 'patricia.hernandez@example.com', '1234567801', '909 Ash St, Hamlet', 2, 'Regular', 'Senior', 20230394),
(13, 'Joshua', 'Lopez', '2000-05-27', 'Male', 'joshua.lopez@example.com', '1234567802', '1010 Willow St, Cityville', 3, 'Regular', 'Freshmen', 20230395),
(14, 'Angela', 'Gonzalez', '2000-05-27', 'Female', 'angela.gonzalez@example.com', '1234567803', '1111 Poplar St, Townsville', 4, 'Regular', 'Sophomore', 20230396),
(15, 'Brian', 'Wilson', '2000-05-27', 'Male', 'brian.wilson@example.com', '1234567804', '1212 Sycamore St, Villagetown', 5, 'Regular', 'Junior', 20230397),
(16, 'Megan', 'Anderson', '2000-05-27', 'Female', 'megan.anderson@example.com', '1234567805', '1313 Hickory St, Hamlet', 6, 'Regular', 'Senior', 20230398),
(17, 'Kevin', 'Thomas', '2000-05-27', 'Male', 'kevin.thomas@example.com', '1234567806', '1414 Redwood St, Cityville', 7, 'Regular', 'Freshmen', 20230399),
(18, 'Samantha', ' Taylor', '2000-05-27', 'Female', 'samantha.taylor@example.com', '1234567807', '1515 Fir St, Townsville', 8, 'Regular', 'Sophomore', 20230400),
(19, 'Ryan', 'Moore', '2000-05-27', 'Male', 'ryan.moore@example.com', '1234567808', '1616 Cedar St, Villagetown', 9, 'Regular', 'Junior', 20230401),
(20, 'Ashley', 'Jackson', '2000-05-27', 'Female', 'ashley.jackson@example.com', '1234567809', '1717 Maple St, Hamlet', 10, 'Regular', 'Senior', 20230402),
(21, 'Jacob', 'White', '2000-05-27', 'Male', 'jacob.white@example.com', '1234567810', '1818 Oak St, Cityville', 1, 'Regular', 'Freshmen', 20230403),
(22, 'Olivia', 'Harris', '2000-05-27', 'Female', 'olivia.harris@example.com', '1234567811', '1919 Pine St, Townsville', 2, 'Regular', 'Sophomore', 20230404),
(23, 'Ethan', 'Martin', '2000-05-27', 'Male', 'ethan.martin@example.com', '1234567812', '2020 Birch St, Villagetown', 3, 'Regular', 'Junior', 20230405),
(24, 'Sophia', 'Thompson', '2000-05-27', 'Female', 'sophia.thompson@example.com', '1234567813', '2121 Chestnut St, Hamlet', 4, 'Regular', 'Senior', 20230406),
(25, 'Alexander', 'Garcia', '2000-05-27', 'Male', 'alexander.garcia@example.com', '1234567814', '2222 Walnut St, Cityville', 5, 'Regular', 'Freshmen', 20230407),
(26, 'Isabella', 'Martinez', '2000-05-27', 'Female', 'isabella.martinez@example.com', '1234567815', '2323 Spruce St, Townsville', 6, 'Regular', 'Sophomore', 20230408),
(27, 'William', 'Robinson', '2000-05-27', 'Male', 'william.robinson@example.com', '1234567816', '2424 Fir St, Villagetown', 7, 'Regular', 'Junior', 20230409),
(28, 'Mia', 'Clark', '2000-05-27', 'Female', 'mia.clark@example.com', '1234567817', '2525 Ash St, Hamlet', 8, 'Regular', 'Senior', 20230410),
(29, 'Daniel', 'Lewis', '2000-05-27', 'Male', 'daniel.lewis@example.com', '1234567818', '2626 Willow St, Cityville', 9, 'Regular', 'Freshmen', 20230411),
(30, 'Charlotte', 'Lee', '2000-05-27', 'Female', 'charlotte.lee@example.com', '1234567819', '2727 Poplar St, Townsville', 10, 'Regular', 'Sophomore', 20230412),
(31, 'James', 'Walker', '2000-05-27', 'Male', 'james.walker@example.com', '1234567820', '2828 Sycamore St, Villagetown', 1, 'Regular', 'Junior', 20230413),
(32, 'Amelia', 'Hall', '2000-05-27', 'Female', 'amelia.hall@example.com', '1234567821', '2929 Maple St, Hamlet', 2, 'Regular', 'Senior', 20230414),
(33, 'Benjamin', 'Allen', '2000-05-27', 'Male', 'benjamin.allen@example.com', '1234567822', '3030 Oak St, Cityville', 3, 'Regular', 'Freshmen', 20230415),
(34, 'Harper', 'Young', '2000-05-27', 'Female', 'harper.young@example.com', '1234567823', '3131 Pine St, Townsville', 4, 'Regular', 'Sophomore', 20230416),
(35, 'Lucas', 'King', '2000-05-27', 'Male', 'lucas.king@example.com', '1234567824', '3232 Birch St, Villagetown', 5, 'Regular', 'Junior', 20230417),
(36, 'Evelyn', 'W right', '2000-05-27', 'Female', 'evelyn.wright@example.com', '1234567825', '3333 Chestnut St, Hamlet', 6, 'Regular', 'Senior', 20230418),
(37, 'Henry', 'Scott', '2000-05-27', 'Male', 'henry.scott@example.com', '1234567826', '3434 Walnut St, Cityville', 7, 'Regular', 'Freshmen', 20230419),
(38, 'Ella', 'Green', '2000-05-27', 'Female', 'ella.green@example.com', '1234567827', '3535 Spruce St, Townsville', 8, 'Regular', 'Sophomore', 20230420),
(39, 'Sebastian', 'Adams', '2000-05-27', 'Male', 'sebastian.adams@example.com', '1234567828', '3636 Fir St, Villagetown', 9, 'Regular', 'Junior', 20230421),
(40, 'Avery', 'Baker', '2000-05-27', 'Female', 'avery.baker@example.com', '1234567829', '3737 Ash St, Hamlet', 10, 'Regular', 'Senior', 20230422),
(41, 'Owen', 'Gonzalez', '2000-05-27', 'Male', 'owen.gonzalez@example.com', '1234567830', '3838 Willow St, Cityville', 1, 'Regular', 'Freshmen', 20230423),
(42, 'Scarlett', 'Nelson', '2000-05-27', 'Female', 'scarlett.nelson@example.com', '1234567831', '3939 Poplar St, Townsville', 2, 'Regular', 'Sophomore', 20230424),
(43, 'Elijah', 'Carter', '2000-05-27', 'Male', 'elijah.carter@example.com', '1234567832', '4040 Sycamore St, Villagetown', 3, 'Regular', 'Junior', 20230425),
(44, 'Grace', 'Mitchell', '2000-05-27', 'Female', 'grace.mitchell@example.com', '1234567833', '4141 Maple St, Hamlet', 4, 'Regular', 'Senior', 20230426),
(45, 'Isaac', 'Perez', '2000-05-27', 'Male', 'isaac.perez@example.com', '1234567834', '4242 Oak St, Cityville', 5, 'Regular', 'Freshmen', 20230427),
(46, 'Chloe', 'Roberts', '2000-05-27', 'Female', 'chloe.roberts@example.com', '1234567835', '4343 Pine St, Townsville', 6, 'Regular', 'Sophomore', 20230428),
(47, 'Mason', 'Turner', '2000-05-27', 'Male', 'mason.turner@example.com', '1234567836', '4444 Birch St, Villagetown', 7, 'Regular', 'Junior', 20230429),
(48, 'Lily', 'Phillips', '2000-05-27', 'Female', 'lily.phillips@example.com', '1234567837', '4545 Chestnut St, Hamlet', 8, 'Regular', 'Senior', 20230430),
(49, 'Logan', 'Campbell', '2000-05-27', 'Male', 'logan.campbell@example.com', '1234567838', '4646 Walnut St, Cityville', 9, 'Regular', 'Freshmen', 20230431),
(50, 'Sofia', 'Parker', '2000-05-27', 'Female', 'sofia.parker@example.com', '1234567839', '4747 Spruce St, Townsville', 10, 'Regular', 'Sophomore', 20230432);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjID` int(11) NOT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `SubjName` varchar(100) DEFAULT NULL,
  `SubjCode` varchar(20) DEFAULT NULL,
  `SubjUnits` int(11) DEFAULT NULL,
  `SubjSemester` enum('First Sem','Second Sem','Summer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjID`, `ProgramID`, `SubjName`, `SubjCode`, `SubjUnits`, `SubjSemester`) VALUES
(1, 1, 'Introduction to Computer Science', 'CS101', 3, 'First Sem'),
(2, 1, 'Data Structures', 'CS102', 3, 'First Sem'),
(3, 1, 'Algorithms', 'CS201', 3, 'Second Sem'),
(4, 1, 'Database Management Systems', 'CS202', 3, 'Second Sem'),
(5, 1, 'Software Engineering', 'CS301', 3, 'First Sem'),
(6, 1, 'Web Development', 'CS302', 3, 'Second Sem'),
(7, 1, 'Mobile App Development', 'CS303', 3, 'Summer'),
(8, 1, 'Operating Systems', 'CS304', 3, 'First Sem'),
(9, 1, 'Computer Networks', 'CS305', 3, 'Second Sem'),
(10, 1, 'Artificial Intelligence', 'CS306', 3, 'Summer'),
(11, 2, 'Engineering Mathematics', 'ENG101', 3, 'First Sem'),
(12, 2, 'Fluid Mechanics', 'ENG102', 3, 'First Sem'),
(13, 2, 'Thermodynamics', 'ENG201', 3, 'Second Sem'),
(14, 2, 'Structural Analysis', 'ENG202', 3, 'Second Sem'),
(15, 2, 'Engineering Ethics', 'ENG301', 3, 'First Sem'),
(16, 2, 'Materials Science', 'ENG302', 3, 'Second Sem'),
(17, 2, 'Electrical Circuits', 'ENG303', 3, 'Summer'),
(18, 2, 'Control Systems', 'ENG304', 3, 'First Sem'),
(19, 2, 'Engineering Mechanics', 'ENG305', 3, 'Second Sem'),
(20, 2, 'Project Management', 'ENG306', 3, 'Summer'),
(21, 3, 'General Chemistry', 'CHE101', 3, 'First Sem'),
(22, 3, 'Organic Chemistry', 'CHE102', 3, 'First Sem'),
(23, 3, 'Physical Chemistry', 'CHE201', 3, 'Second Sem'),
(24, 3, 'Analytical Chemistry', 'CHE202', 3, 'Second Sem'),
(25, 3, 'Biochemistry', 'CHE301', 3, 'First Sem'),
(26, 3, 'Inorganic Chemistry', 'CHE302', 3, 'Second Sem'),
(27, 3, 'Environmental Chemistry', 'CHE303', 3, 'Summer'),
(28, 3, 'Chemical Engineering Principles', 'CHE304', 3, 'First Sem'),
(29, 3, 'Laboratory Techniques', 'CHE305', 3, 'Second Sem'),
(30, 3, 'Chemistry of Materials', 'CHE306', 3, 'Summer'),
(31, 4, 'Principles of Marketing', 'MKT101', 3, 'First Sem'),
(32, 4, 'Financial Accounting', 'ACC101', 3, 'First Sem'),
(33, 4, 'Business Law', 'BUS101', 3, 'Second Sem'),
(34, 4, 'Management Principles', 'MGT101', 3, 'Second Sem'),
(35, 4, 'Human Resource Management', 'HRM101', 3, 'First Sem'),
(36, 4, 'Consumer Behavior', 'MKT102', 3, 'Second Sem'),
(37, 4, 'Digital Marketing', 'MKT201', 3, 'Summer'),
(38, 4, 'Business Communication', 'BUS201', 3, 'First Sem'),
(39, 4, 'Entrepreneurship', 'ENT101', 3, 'Second Sem'),
(40, 4, 'Operations Management', 'MGT201', 3, 'Summer'),
(41, 5, 'Introduction to Biology', 'BIO101', 3, 'First Sem'),
(42, 5, 'Genetics', 'BIO102', 3, 'First Sem'),
(43, 5, 'Ecology', 'BIO201', 3, 'Second Sem'),
(44, 5, 'Microbiology', 'BIO202', 3, 'Second Sem'),
(45, 5, 'Cell Biology', 'BIO301', 3, 'First Sem'),
(46, 5, 'Evolutionary Biology', 'BIO302', 3, 'Second Sem'),
(47, 5, 'Plant Biology', 'BIO303', 3, 'Summer'),
(48, 5, 'Animal Physiology', 'BIO304', 3, 'First Sem'),
(49, 5, 'Biostatistics', 'BIO305', 3, 'Second Sem'),
(50, 5, 'Marine Biology', 'BIO306', 3, 'Summer'),
(51, 6, 'Introduction to Philosophy', 'PHI101', 3, 'First Sem'),
(52, 6, 'Ethics', 'PHI102', 3, 'Second Sem'),
(53, 6, 'World History', 'HIS101', 3, 'First Sem'),
(54, 6, 'Modern History', 'HIS102', 3, 'Second Sem'),
(55, 6, 'Introduction to Psychology', 'PSY101', 3, 'First Sem'),
(56, 6, 'Sociology Basics', 'SOC101', 3, 'Second Sem'),
(57, 6, 'Cultural Anthropology', 'ANT101', 3, 'Summer'),
(58, 6, 'Introduction to Literature', 'LIT101', 3, 'First Sem'),
(59, 6, 'Creative Writing', 'LIT102', 3, 'Second Sem'),
(60, 6, 'Public Speaking', 'COM101', 3, 'Summer'),
(61, 7, 'Spanish Language I', 'SPA101', 3, 'First Sem'),
(62, 7, 'Spanish Language II', 'SPA102', 3, 'Second Sem'),
(63, 7, 'French Language I', 'FRE101', 3, 'First Sem'),
(64, 7, 'French Language II', 'FRE102', 3, 'Second Sem'),
(65, 7, 'Introduction to Music', 'MUS101', 3, 'First Sem'),
(66, 7, 'Art Appreciation', 'ART101', 3, 'Second Sem'),
(67, 7, 'Film Studies', 'FIL101', 3, 'Summer'),
(68, 7, 'Introduction to Theater', 'THE101', 3, 'First Sem'),
(69, 7, 'Dance Techniques', 'DAN101', 3, 'Second Sem'),
(70, 7, 'History of Music', 'MUS201', 3, 'Summer'),
(71, 8, 'Introduction to Gender Studies', 'GEN101', 3, 'First Sem'),
(72, 8, 'Environmental Studies', 'ENV101', 3, 'Second Sem'),
(73, 8, 'Media Studies', 'MED101', 3, 'First Sem'),
(74, 8, 'Philosophy of Science', 'PHI201', 3, 'Second Sem'),
(75, 8, 'Comparative Politics', 'POL101', 3, 'First Sem'),
(76, 8, 'International Relations', 'POL201', 3, 'Second Sem'),
(77, 8, 'History of Ideas', 'HIS201', 3, 'Summer'),
(78, 8, 'Introduction to Logic', 'LOG101', 3, 'First Sem'),
(79, 8, 'Creative Arts', 'ART201', 3, 'Second Sem'),
(80, 8, 'Cultural Studies', 'CUL101', 3, 'Summer'),
(81, 9, 'Introduction to Business Ethics', 'BUS202', 3, 'First Sem'),
(82, 9, 'Social Responsibility', 'BUS203', 3, 'Second Sem'),
(83, 9, 'Introduction to Nonprofit Management', 'NPM101', 3, 'First Sem'),
(84, 9, 'Fundamentals of Public Relations', 'PR101', 3, 'Second Sem'),
(85, 9, 'Digital Media and Society', 'MED201', 3, 'Summer'),
(86, 9, 'Introduction to Marketing Research', 'MKT202', 3, 'First Sem'),
(87, 9, 'Consumer Psychology', 'PSY201', 3, 'Second Sem'),
(88, 9, 'Event Planning', 'EVT101', 3, 'Summer'),
(89, 9, 'Introduction to E-commerce', 'ECO101', 3, 'First Sem'),
(90, 9, 'Business Analytics', 'BUS204', 3, 'Second Sem'),
(91, 10, 'Introduction to Graphic Design', 'DES101', 3, 'First Sem'),
(92, 10, 'Photography Basics', 'PHO101', 3, 'Second Sem'),
(93, 10, 'Web Design Fundamentals', 'WEB101', 3, 'First Sem'),
(94, 10, 'Fashion Design', 'FAS101', 3, 'Second Sem'),
(95, 10, 'Interior Design Basics', 'INT101', 3, 'Summer'),
(96, 10, 'Art History II', 'ART102', 3, 'First Sem'),
(97, 10, 'Digital Illustration', 'DES102', 3, 'Second Sem'),
(98, 10, '3D Modeling', 'DES201', 3, 'Summer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CollegeID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptID`),
  ADD KEY `CollegeID` (`CollegeID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`InstructID`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`ManageID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubjectID` (`SubjectID`),
  ADD KEY `InstructorID` (`InstructorID`),
  ADD KEY `ScheduleID` (`ScheduleID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgramID`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`SchedID`),
  ADD KEY `RoomID` (`RoomID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudID`),
  ADD KEY `ProgramID` (`ProgramID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjID`),
  ADD KEY `ProgramID` (`ProgramID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CollegeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DeptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `InstructID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `ManageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `ProgramID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `RoomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `SchedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`);

--
-- Constraints for table `management`
--
ALTER TABLE `management`
  ADD CONSTRAINT `management_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudID`),
  ADD CONSTRAINT `management_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjID`),
  ADD CONSTRAINT `management_ibfk_3` FOREIGN KEY (`InstructorID`) REFERENCES `instructor` (`InstructID`),
  ADD CONSTRAINT `management_ibfk_4` FOREIGN KEY (`ScheduleID`) REFERENCES `schedule` (`SchedID`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ProgramID`) REFERENCES `program` (`ProgramID`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`ProgramID`) REFERENCES `program` (`ProgramID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
