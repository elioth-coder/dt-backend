-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 03:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dt`
--

-- --------------------------------------------------------

--
-- Table structure for table `document_trail`
--

CREATE TABLE `document_trail` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `purpose` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `program` varchar(10) DEFAULT NULL,
  `quantity` tinyint(4) NOT NULL,
  `action_needed` varchar(60) NOT NULL,
  `office` varchar(60) NOT NULL,
  `date_forwarded` date NOT NULL,
  `date_returned` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `middle_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `employment_status` varchar(120) NOT NULL,
  `field_specialization` varchar(120) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `college` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `first_name`, `middle_name`, `last_name`, `employment_status`, `field_specialization`, `degree`, `college`, `photo`) VALUES
(8, 'Christian Peña', 'Christian', 'Bolisay', 'Peña', 'Contractual, Full Time Lecturer, NSTP Coordinator', 'Computer Programming, Web System Design/Analysis', 'MSIT', 'CICT', ''),
(9, 'Pamela Amor Andres', 'Pamela Amor', 'M', 'Andres', 'Permanent, Full Time Lecturer, RET Coordinator-COED', 'Educational Management, English Language', 'LPT', 'COED', ''),
(10, 'Edward Mansibang', 'Edward', 'M', 'Mansibang', 'Permanent, Full Time Lecturer, RET Coordinator-CICT', 'Programming, Networking, Web System Design Development', 'LPT', 'CICT', ''),
(11, 'Kevin Dalangin', 'Kevin', 'Padolina', 'Dalangin', 'Contractual, Part Time Lecturer, LSC Adviser, Campus Papayahagan Adviser', 'English Language Teaching', 'MAED, LPT', 'COED', ''),
(12, 'Albert Bulawat', 'Albert', 'Cadiz', 'Bulawat', 'Permanent, College Department Head, Program Head-BSED', 'English Language and Literature, Research Studies', 'EdD', 'COED', ''),
(13, 'Thelma Caballero', 'Thelma', 'G', 'Caballero', 'Contractual, Part Time Lecturer', 'General/Professional Education, Guidance & Counselling', 'EdD', 'COED', ''),
(14, 'Marilyn Policarpio', 'Marilyn', 'L', 'Policarpio', 'Contractual, Part Time Lecturer', 'Math & Engineering', 'LPT', 'COED', ''),
(15, 'Leodigaria Bolisay', 'Leodigaria', 'G', 'Bolisay', 'Contractual, Full Time Lecturer, Campus Guidance Counselor, Internship Supervisor', 'General Education, Prof Ed, Guidance Counselor', 'MAED, LPT', 'COED', ''),
(16, 'John Philip Fermin', 'John Philip', 'C', 'Fermin', 'Contractual, Part Time Lecturer, Program Head-BEED', 'General Education, Research, Prof Ed., Management', 'PhD', 'COED', ''),
(17, 'Eva De Leon', 'Eva', 'E', 'De Leon', 'Contractual, Part Time Lecturer', 'General Science', 'MAED, LPT', 'COED', ''),
(18, 'John Michael Razon', 'John Michael', 'R', 'Razon', 'Contractual, Part Time Lecturer', 'Physical Education, Health & Music', 'LPT', 'COED', ''),
(19, 'Mark Reinielle Bernabe', 'Mark Reinielle', 'B', 'Bernabe', 'Contractual, Part Time Lecturer', 'Music, Arts, Physical Education & Health', 'MAED, LPT', 'COED', ''),
(20, 'Mary Ann Barlis', 'Mary Ann', 'D', 'Barlis', 'Contractual, Part Time Lecturer', 'Mathematics, General Education', 'LPT', 'COED', ''),
(21, 'Josephine Gonzales', 'Josephine', 'G', 'Gonzales', 'Contractual, Part Time Lecturer', 'Interactive English Language Teaching, Management', 'MAED, LPT', 'COED', ''),
(22, 'Evangeline Ortiz', 'Evangeline', 'C', 'Ortiz', 'Contractual, Full Time Lecturer', 'English Language Teaching', 'MAED, LPT', 'COED', ''),
(23, 'Mauricio Rivera', 'Mauricio', 'R', 'Rivera', 'Contractual, Part Time Lecturer', 'Physical Education, Health & Music', 'LPT', 'COED', ''),
(24, 'Juana Caballero', 'Juana', 'S', 'Caballero', 'Contractual, Full Time Lecturer', 'Filipino', 'MAED, LPT', 'COED', ''),
(25, 'Noilan Atendido', 'Noilan', 'C', 'Atendido', 'Contractual, Part Time Lecturer', 'Mathematics, Economics, Business Management', 'MAED, LPT', 'COED', ''),
(26, 'June Jerico Ortiz', 'June Jerico', 'C', 'Ortiz', 'Contractual, Part Time Lecturer', 'General Science', 'LPT', 'COED', ''),
(27, 'Jennifer Bulawit', 'Jennifer', 'Ranoy', 'Bulawit', 'Contractual, Part Time Lecturer, Program Head-BSBA', 'Educational Management/Business Administration', 'EdD, MBA, LPT', 'CMBT', ''),
(28, 'Ralph Gregor Padolina', 'Ralph Gregor', 'V', 'Padolina', 'Contractual, Full Time Lecturer, RET Coordinator-CMBT, OJT Coordinator', 'Mathematics', '', 'CMBT', ''),
(29, 'Rey Ann Pajarillaga', 'Rey Ann', 'D', 'Pajarillaga', 'Contractual Part Time Lecturer', 'Marketing Management', '', 'CMBT', ''),
(30, 'Raul Coros', 'Raul', 'M', 'Coros', 'Contractual, Part Time Lecturer', 'Social Studies, English', 'MAED, LPT', 'CMBT', ''),
(31, 'Jenina Clarisse Bote', 'Jenina Clarisse', 'A', 'Bote', 'Contractual, Full Time Lecturer', 'Marketing Management', '', 'CMBT', ''),
(32, 'Jerome Mangulabnan', 'Jerome', 'G', 'Mangulabnan', 'Contractual, Full Time Lecturer, Alumni Coordinator, OJT Coordinator', 'Computer Programming, Web System Design/Analysis', '', 'CICT', ''),
(33, 'Jodell Bulaclac', 'Jodell', 'R', 'Bulaclac', 'Contractual, Part Time Lecturer', 'Computer Programming, Web System Design/Analysis', 'MSIT', 'CICT', ''),
(34, 'Venancio Tabije', 'Venancio', 'R', 'Tabije', 'Contractual, Part Time Lecturer', 'Business Administration, Law, Political Science', 'PhD, LLB, MBA, LPT', 'CMBT', ''),
(35, 'Cris Norman Olipas', 'Cris Norman', 'C', 'Olipas', 'Contractual Part Time Lecturer', 'Web Systems Technologist', 'EdD', 'CICT', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `building` varchar(60) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `building`, `photo`) VALUES
(16, 'ROOM 1', 'BUILDING 1', ''),
(17, 'ROOM 2', 'BUILDING 1', ''),
(18, 'ROOM 3', 'BUILDING 1', ''),
(19, 'ROOM 4', 'BUILDING 1', ''),
(20, 'COMLAB 1', 'BUILDING 1', ''),
(21, 'ROOM A', 'BUILDING 2', ''),
(22, 'ROOM B', 'BUILDING 2', ''),
(23, 'ROOM C', 'BUILDING 2', ''),
(24, 'ROOM D', 'BUILDING 2', ''),
(25, 'ROOM F', 'BUILDING 2', ''),
(26, 'ROOM G', 'BUILDING 2', ''),
(27, 'ROOM H', 'BUILDING 2', ''),
(28, 'ROOM I', 'BUILDING 2', ''),
(29, 'ROOM J', 'BUILDING 2', ''),
(30, 'GYMNASIUM', 'GYMNASIUM', '');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `day_of_week` varchar(15) NOT NULL,
  `section` varchar(15) NOT NULL,
  `room` varchar(25) NOT NULL DEFAULT 'ROOM 1',
  `start_time` varchar(15) NOT NULL,
  `end_time` varchar(15) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `color` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `day_of_week`, `section`, `room`, `start_time`, `end_time`, `subject_id`, `teacher_id`, `semester_id`, `color`) VALUES
(23, 'MONDAY', 'BSIT - 1A', 'COMLAB 1', '08:00 AM', '01:30 PM', 6, 44, 13, 'teal'),
(29, 'MONDAY', 'BSED-ENG - 1A', 'ROOM A', '08:00 AM', '11:00 AM', 103, 45, 13, 'orange'),
(30, 'THURSDAY', 'BSED-ENG - 3A', 'ROOM D', '10:00 AM', '01:00 PM', 139, 47, 13, 'lime'),
(31, 'TUESDAY', 'BSED-ENG - 2A', 'ROOM F', '08:00 AM', '11:00 AM', 124, 47, 13, 'orange'),
(32, 'SATURDAY', 'BSIT - 1B', 'ROOM 3', '09:00 AM', '12:00 NN', 20, 47, 13, 'red'),
(33, 'SATURDAY', 'BSIT - 2A', 'GYMNASIUM', '01:00 PM', '04:00 PM', 28, 47, 13, 'orange'),
(35, 'WEDNESDAY', 'BSBA - 2A', 'ROOM 2', '08:00 AM', '11:00 AM', 76, 48, 13, 'amber'),
(38, 'TUESDAY', 'BSIT - 3A', 'COMLAB 2', '08:00 AM', '01:30 PM', 38, 44, 13, 'orange'),
(39, 'WEDNESDAY', 'BSIT - 3A', 'COMLAB 2', '10:30 AM', '04:30 PM', 41, 44, 13, 'amber'),
(40, 'THURSDAY', 'BSIT - 1A', 'COMLAB 2', '08:00 AM', '01:30 PM', 15, 44, 13, 'red'),
(41, 'FRIDAY', 'BSIT - 4A', 'COMLAB 2', '02:00 PM', '07:30 PM', 48, 44, 13, 'green'),
(120, 'MONDAY', 'BSIT - 1A', 'COMLAB 1', '08:00 AM', '01:30 PM', 6, 92, 19, 'teal'),
(122, 'WEDNESDAY', 'BSIT - 3A', 'COMLAB 2', '10:30 AM', '04:30 PM', 41, 92, 19, 'amber'),
(123, 'THURSDAY', 'BSIT - 1A', 'COMLAB 2', '08:00 AM', '01:30 PM', 15, 92, 19, 'red'),
(124, 'FRIDAY', 'BSIT - 4A', 'COMLAB 2', '02:00 PM', '07:30 PM', 48, 92, 19, 'green'),
(125, 'MONDAY', 'BSED-ENG - 1A', 'ROOM A', '08:00 AM', '11:00 AM', 103, 93, 19, 'orange'),
(126, 'THURSDAY', 'BSED-ENG - 3A', 'ROOM D', '10:00 AM', '01:00 PM', 139, 95, 19, 'lime'),
(127, 'TUESDAY', 'BSED-ENG - 2A', 'ROOM F', '08:00 AM', '11:00 AM', 124, 95, 19, 'orange'),
(128, 'SATURDAY', 'BSIT - 1B', 'ROOM 3', '09:00 AM', '12:00 NN', 20, 95, 19, 'red'),
(129, 'SATURDAY', 'BSIT - 2A', 'GYMNASIUM', '01:00 PM', '04:00 PM', 28, 95, 19, 'orange'),
(130, 'WEDNESDAY', 'BSBA - 2A', 'ROOM 2', '08:00 AM', '11:00 AM', 76, 96, 19, 'amber');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `semester` enum('1st','2nd','Summer') NOT NULL,
  `academic_year` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `title`, `semester`, `academic_year`) VALUES
(13, 'FOR PAPAYA', '1st', '2024-2025'),
(19, 'TESTING', '1st', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `semester_teacher`
--

CREATE TABLE `semester_teacher` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `research` varchar(60) DEFAULT NULL,
  `extension` varchar(60) DEFAULT NULL,
  `consultation` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester_teacher`
--

INSERT INTO `semester_teacher` (`id`, `semester_id`, `personnel_id`, `research`, `extension`, `consultation`) VALUES
(44, 13, 8, 'Research 1', 'Extension Project Leonor', '8:00 AM-9:00 PM - FRIDAY'),
(45, 13, 9, '', '', ''),
(46, 13, 10, '', '', ''),
(47, 13, 11, '', '', ''),
(48, 13, 27, '', '', ''),
(49, 13, 12, NULL, NULL, NULL),
(50, 13, 13, NULL, NULL, NULL),
(51, 13, 14, NULL, NULL, NULL),
(92, 19, 8, 'Research 1', 'Extension Project Leonor', '8:00 AM-9:00 PM - FRIDAY'),
(93, 19, 9, '', '', ''),
(94, 19, 10, '', '', ''),
(95, 19, 11, '', '', ''),
(96, 19, 27, '', '', ''),
(97, 19, 12, '', '', ''),
(98, 19, 13, '', '', ''),
(99, 19, 14, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signatory`
--

CREATE TABLE `signatory` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `college` varchar(10) NOT NULL,
  `document` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signatory`
--

INSERT INTO `signatory` (`id`, `content`, `college`, `document`) VALUES
(1, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Noted: </h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. ARNOLD P. DELA CRUZ</h3>\r\n      <i style=\"margin-left: 10px\">Dean, CICT</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 45%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'CICT', 'FACULTY PROGRAM'),
(2, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 28%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">ALBERT C. BULAWAT, EdD</h3>\r\n      <i style=\"margin-left: 10px\">College Department Head</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 26%\">\r\n      <h4>Noted by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 46%\">\r\n      <h4>&nbsp;</h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 28%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. ANGELICA O. CORTEZ</h3>\r\n      <i style=\"margin-left: 10px\">Dean, COED</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 72%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 28%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 72%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'COED', 'FACULTY PROGRAM'),
(4, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Noted: </h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. ARNOLD P. DELA CRUZ</h3>\r\n      <i style=\"margin-left: 10px\">Dean, CICT</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 45%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'CICT', 'STUDENT PROGRAM'),
(5, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 50%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">ALBERT C. BULAWAT, EdD</h3>\r\n      <i style=\"margin-left: 10px\">College Department Head</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 50%\">\r\n      <h4>Recommending Approval: </h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 50%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 50%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>\r\n', 'NONE', 'ROOM UTILIZATION'),
(6, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 28%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">ALBERT C. BULAWAT, EdD</h3>\r\n      <i style=\"margin-left: 10px\">College Department Head</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 26%\">\r\n      <h4>Noted by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 46%\">\r\n      <h4>&nbsp;</h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 28%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. ANGELICA O. CORTEZ</h3>\r\n      <i style=\"margin-left: 10px\">Dean, COED</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 72%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 28%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 72%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'COED', 'STUDENT PROGRAM'),
(7, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Noted: </h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. MARILOU P. PASCUAL</h3>\r\n      <i style=\"margin-left: 10px\">Dean, CMBT</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 45%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'CMBT', 'FACULTY PROGRAM'),
(8, '<div class=\"w-full text-xs\">\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Prepared by:</h4>\r\n      <h3 class=\"font-bold\">GERARDA R. RIVERA, DPA</h3>\r\n      <i style=\"margin-left: 10px\">College Administrator</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Noted: </h4>\r\n      <h3 class=\"font-bold\">ATTY. ERIC G. CLAUDIO, Ph.D.</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of International & Domestic Linkages</i><br />\r\n      <i style=\"margin-left: 10px\">Director Off-Campus, Southern Ext. Campuses</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full py-1\">\r\n    <section style=\"width: 45%\">\r\n      <h4>Recommending Approval:</h4>\r\n      <h3 class=\"font-bold\">DR. MARILOU P. PASCUAL</h3>\r\n      <i style=\"margin-left: 10px\">Dean, CMBT</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Verified by:</h4>\r\n      <h3 class=\"font-bold\">DR. MELISSA BELINDA P. FARONILO, RPm, RPsy</h3>\r\n      <i style=\"margin-left: 10px\">Director, Office of Admission and Registration</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n  <div class=\"flex w-full justify-center py-1\">\r\n    <section style=\"width: 45%;\" class=\"flex-1 relative\">\r\n\r\n    </section>\r\n    <section style=\"width: 55%\">\r\n      <h4>Approved by:</h4>\r\n      <h3 class=\"font-bold\">DR. FELICIANA P. JACOBA</h3>\r\n      <i style=\"margin-left: 10px\">Vice President for Academic Affairs</i><br />\r\n      <i style=\"margin-left: 10px\">Date Signed: ________</i>\r\n    </section>\r\n  </div>\r\n</div>', 'CMBT', 'STUDENT PROGRAM');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `title` varchar(120) NOT NULL,
  `units` tinyint(2) NOT NULL,
  `lec` tinyint(2) NOT NULL,
  `lab` tinyint(2) NOT NULL,
  `hours_week` tinyint(2) NOT NULL,
  `pre_req` varchar(100) NOT NULL,
  `year_level` tinyint(4) NOT NULL,
  `semester` enum('1st','2nd','Summer') NOT NULL,
  `program` varchar(15) NOT NULL,
  `major` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `code`, `title`, `units`, `lec`, `lab`, `hours_week`, `pre_req`, `year_level`, `semester`, `program`, `major`) VALUES
(5, 'CC-100', 'INTRODUCTION TO COMPUTING', 3, 3, 0, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(6, 'CC-101', 'COMPUTER PROGRAMMING 1, FUNDAMENTALS', 3, 2, 3, 5, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(7, 'IT-NET01', 'NETWORKING 1, FUNDAMENTALS', 3, 2, 3, 5, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(8, 'GE 04', 'MATHEMATICS IN THE MODERN WORLD', 3, 3, 0, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(9, 'FIL 1', 'KONTEKSWALISADONG KOMUNIKASYON SA FILIPINO (KOMFIL)', 3, 3, 0, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(10, 'GE 07', 'SCIENCE, TECHNOLOGY AND SOCIETY', 3, 3, 0, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(11, 'PE 1', 'ADVANCED GYMNASTICS', 2, 0, 3, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(12, 'NSTP 11', 'NATIONAL SERVICE TRAINING PROGRAM 1', 3, 0, 3, 3, '', 1, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(13, 'CC-102', 'COMPUTER PROGRAMMING 2, INTERMEDIATE', 3, 2, 3, 5, 'CC-100, CC-101', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(14, 'IT-NET02', 'NETWORKING 2, ADVANCED', 3, 2, 3, 5, 'CC-100, IT-NET01', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(15, 'IT-WS01', 'WEB SYSTEMS AND TECHNOLOGIES 1', 3, 2, 3, 5, 'CC-100, CC-101, IT NET01', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(16, 'GE 01', 'UNDERSTANDING THE SELF', 3, 3, 0, 3, '', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(17, 'GE 02', 'MGA BABASAHIN HINGGIL SA KASAYSAYAN NG NG PILIPINAS', 3, 3, 0, 3, '', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(18, 'FIL 2', 'FILIPINO SA IBAT-IBANG DISIPLINA (FILDIS)', 3, 3, 0, 3, 'FIL 1', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(19, 'PE 2', 'RHYTHMIC ACTIVITIES FOLKDANCE/SOCIAL DANCES', 2, 0, 3, 3, 'PE 1', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(20, 'NSTP 12', 'NATIONAL SERVICE TRAINING PROGRAM 2', 3, 0, 3, 3, 'NSTP 11', 1, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(21, 'CC 103', 'DATA STRUCTURES AND ALGORITHM', 3, 2, 3, 5, 'CC-102, IT-WS01', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(22, 'IT -PF01', 'OBJECT-ORIENTED PROGRAMMING 1', 3, 2, 3, 5, 'CC-102, IT-WS01', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(23, 'IT-WS02', 'WEB SYSTEMS AND TECHNOLOGIES 2', 3, 2, 3, 5, 'CC-102, IT-WS01, IT-NET02', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(24, 'IT-MS01', 'DISCRETE MATHEMATICS', 3, 3, 0, 3, 'CC-100', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(25, 'GE 06', 'ART APPRECIATION', 3, 3, 0, 3, '', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(26, 'GE 08', 'ETHICS', 3, 3, 0, 3, '', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(27, 'FIL 3', 'DALUMAT NG/SA FILIPINO (DALUMAT FIL)', 3, 3, 0, 3, 'FIL 2', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(28, 'PE 3', 'ADVANCED INDIVIDUAL & DUAL SPORTS', 2, 0, 3, 3, 'PE 2', 2, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(29, 'CC-104', 'INFORMATION MANAGEMENT', 3, 2, 3, 5, 'CC-103, IT-PF01', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(30, 'CC-105', 'APPLICATIONS DEVELOPMENT AND EMERGING TECHNOLOGIES', 3, 2, 3, 5, 'CC-103, IT-PF01, IT-WS02', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(31, 'IT-PF02', 'OBJECT-ORIENTED PROGRAMMING 2', 3, 2, 3, 5, 'CC-103, IT-PF01', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(32, 'IT-HCI01', 'INTRODUCTION TO HUMAN COMPUTER INTERACTION', 3, 2, 3, 5, 'CC-103, IT-PF01, IT-WS02', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(33, 'IT-MS02', 'QUANTITATIVE METHODS', 3, 3, 0, 3, 'IT-MS01', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(34, 'GE 03', 'THE CONTEMPORARY WORLD', 3, 3, 0, 3, '', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(35, 'GE 09', 'RIZAL\'S LIFE AND WORKS', 3, 3, 0, 3, '', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(36, 'PE 4', 'ADVANCED TEAM SPORTS', 2, 0, 3, 3, 'PE 3', 2, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(37, 'IT-IM01', 'ADVANCED DATABASE SYSTEMS', 3, 2, 3, 5, 'CC-104, CC-105, IT-PF02', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(38, 'IT-IPT01', 'INTEGRATIVE PROGRAMMING AND TECHNOLOGIES 1', 3, 2, 3, 5, 'CC-104, CC-105, IT-PF02, IT-HCI01', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(39, 'IT -SA01', 'SYSTEMS ADMINISTRATION AND MAINTENANCE', 3, 3, 3, 6, 'CC-104, CC-105, IT-PF02, IT-HCI01', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(40, 'IT-IAS01', 'INFORMATION ASSURANCE AND SECURITY 1', 3, 2, 3, 5, 'CC-104, CC-105, IT-PF02, IT-HCI01', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(41, 'IT-IPT02', 'MOBILE APPLICATION DEVELOPMENT', 3, 2, 3, 5, 'CC-104, CC-105, IT-PF02, IT-HCI01', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(42, 'ELP', 'ENGLISH FOR INFORMATION TECHNOLOGIST', 3, 3, 0, 3, '', 3, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(43, 'IT-IAS02', 'INFORMATION ASSURANCE AND SECURITY 2', 3, 2, 3, 5, 'IT-IAS01, IT-SA01', 3, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(44, 'IT-CAP01', 'CAPSTONE PROJECT AND RESEARCH 1', 3, 3, 0, 3, 'IT-IM01, IT-IPT01, IT-SA01, IT-IAS01, IT-IPT02', 3, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(45, 'IT-WS03', 'WEB SYSTEMS AND TECHNOLOGIES 3', 3, 2, 3, 5, 'IT-WS02, IT-IPT01, IT-IPT02', 3, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(46, 'IT-WS04', 'WEB SYSTEMS VULNERABILITIES', 3, 2, 3, 5, 'IT-WS02, IT-IPT01, IT-IAS01', 3, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(47, 'IT-WS05', 'WEB SECURITY', 3, 2, 3, 5, 'IT-NET01, IT-WS02, IT-IPT01, IT-IAS01', 3, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(48, 'IT-SIA01', 'SYSTEMS INTEGRATION AND ARCHITECTURE', 3, 2, 3, 5, 'IT-IPT02, IT-IAS02', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(49, 'IT-SP01', 'SOCIAL AND PROFESSIONAL ISSUES', 3, 3, 0, 3, '4TH YEAR, ALL CC-XXX', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(50, 'IT-CAP02', 'CAPSTONE PROJECT AND RESEARCH 2', 3, 3, 0, 3, 'IT-CAP01', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(51, 'IT-WS06', 'WEB DIGITAL MEDIA', 3, 3, 0, 3, 'IT-IPT02, IT-WS03', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(52, 'IT-WS07', 'MOBILE APPLICATION TECHNOLOGY', 3, 2, 3, 5, 'IT-IPT02, IT-WS03', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(53, 'IT-SW01', 'SEMINARS AND WORKSHOPS', 2, 0, 3, 3, '4TH YEAR, ALL CC-XXX', 4, '1st', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(54, 'IT-OJT101', 'PRACTICUM (OJT), 32HRS/WEEK, MIN. 486 HRS', 6, 0, 32, 32, 'ALL CC-XXX, ALL IT-XXX', 4, '2nd', 'BSIT', 'WEB SYSTEMS TECHNOLGY'),
(55, 'GE 1', 'UNDERSTANDING THE SELF', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(56, 'GE 2', 'READINGS IN THE PHILIPPINE HISTORY', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(57, 'GE 3', 'THE CONTEMPORARY WORLD', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(58, 'GE 4', 'MATHEMATICS IN THE MODERN WORLD', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(59, 'GE 5', 'PURPOSIVE COMMUNICATION', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(60, 'GE-FIL 1', 'KONTEKSWALISADONG KOMUNIKASYON SA FILIPINO (KOMFIL)', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(61, 'BA CORE 1', 'BASIC MICROECONOMICS', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(62, 'PE 1', 'ADVANCED GYMNASTICS', 2, 2, 0, 2, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(63, 'NSTP 1', 'ROTC/CWTS/LTS', 3, 3, 0, 3, '', 1, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(64, 'BA CORE 2', 'GOOD GOVERNANCE AND SOCIAL RESPONSIBILITY', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(65, 'GE 6', 'ART APPRECIATION', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(66, 'GE 7', 'SCIENCE, TECHNOLOGY AND SOCIETY', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(67, 'GE 8', 'ETHICS', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(68, 'GE-FIL 2', 'FILIPINO SA IBAT-IBANG DISIPLINA (FILDIS)', 3, 3, 0, 3, 'GE-FIL 1', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(69, 'ELECTIVE 1', 'PERSONAL FINANCE', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(70, 'PE 2', 'RHYTHMIC ACTIVITIES FOLKDANCE/SOCIAL DANCES', 2, 2, 0, 2, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(71, 'NSTP 2', 'ROTC/CWTS/LTS', 3, 3, 0, 3, '', 1, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(72, 'GE 9', 'THE LIFE AND WORKS OF JOSE RIZAL', 3, 3, 0, 3, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(73, 'GE-FIL 3', 'DALUMAT NG/SA FILIPINO (DALUMAT FIL)', 3, 3, 0, 3, 'GE-FIL 2', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(74, 'BA CORE 3', 'BUSINESS LAW (OBLIGATION AND CONTRACTS)', 3, 3, 0, 3, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(75, 'BA CORE 4', 'TAXATION (INCOME TAXATION)', 3, 3, 0, 3, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(76, 'BA CORE 5', 'HUMAN RESOURCE MANAGEMENT', 3, 3, 0, 3, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(77, 'PROF 1', 'BUSINESS COMMUNICATION II', 3, 3, 0, 3, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(78, 'PE 3', 'ADVANCED INDIVIDUAL & DUAL SPORTS', 2, 2, 0, 2, '', 2, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(79, 'ELP', 'ENGLISH FOR BUSINESS ADMINISTRATORS', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(80, 'ELECTIVE 2', 'DIRECT MARKETING', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(81, 'ELECTIVE 3', 'CONSUMER BEHAVIOR', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(82, 'PROF 2', 'SERVICE CULTURE', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(83, 'BA CORE 6', 'INTERNATIONAL TRADE AND AGREEMENTS', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(84, 'CBMEC 1', 'STRATEGIC MANAGEMENT', 3, 3, 0, 3, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(85, 'PE 4', 'ADVANCED TEAM SPORTS', 2, 2, 0, 2, '', 2, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(86, 'PROF 3', 'FUNDAMENTALS OF BUSINESS PROCESS OUTSOURCING 101', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(87, 'PROF 4', 'PRINCIPLES OF SYSTEMS THINKING', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(88, 'BA CORE 7', 'BUSINESS RESEARCH', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(89, 'ELECTIVE 4', 'SALES MANAGEMENT', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(90, 'ELECTIVE 5', 'INTERNATIONAL MARKETING', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(91, 'ELECTIVE 6', 'SERVICES MARKETING', 3, 3, 0, 3, '', 3, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(92, 'CBMEC 2', 'OPERATIONS MANAGEMENT (TQM)', 3, 3, 0, 3, 'CBMEC 1', 3, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(93, 'ELECTIVE 7', 'STRATEGIC MARKETING MANAGEMENT', 3, 3, 0, 3, '', 3, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(94, 'ELECTIVE 8', 'E-COMMERCE AND INTERNET MARKETING', 3, 3, 0, 3, 'ELECTIVE 5', 3, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(95, 'PROF 5', 'PROFESSIONAL SALESMANSHIP', 3, 3, 0, 3, '', 3, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(96, 'PROF 6', 'PRICING STRATEGY', 3, 3, 0, 3, '', 3, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(97, 'PROF 7', 'PRODUCT MANAGEMENT', 3, 3, 0, 3, 'PROF 5', 4, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(98, 'PROF 8', 'FUNDAMENTALS OF BUSINESS PROCESS OUTSOURCING 102', 3, 3, 0, 3, 'PROF 3', 4, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(99, 'ELECTIVE 9', 'COOPERATIVE MARKETING', 3, 3, 0, 3, '', 4, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(100, 'ELECTIVE 10', 'ENVIRONMENTAL MARKETING', 3, 3, 0, 3, '', 4, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(101, 'BA CORE 8', 'THESIS/FEASIBILITY STUDY', 3, 3, 0, 3, 'BA CORE 7', 4, '1st', 'BSBA', 'SERVICE MANAGEMENT'),
(102, 'SMINTRN', 'ON-THE-JOB TRAINING (600 HOURS)', 6, 0, 6, 6, 'ALL ACADEMIC SUBJECTS', 4, '2nd', 'BSBA', 'SERVICE MANAGEMENT'),
(103, 'FIL 1', 'KONTEKSWALISADONG KOMUNIKASYON SA FILIPINO (KOMFIL)', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(104, 'NSTP 1', 'NATIONAL SERVICE TRAINING PROGRAM 1', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(105, 'PE 1', 'ADVANCED GYMNASTICS AND PHYSICAL FITNESS', 2, 2, 0, 2, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(106, 'GEN ED 1', 'UNDERSTANDING THE SELF', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(107, 'GEN ED 2', 'READINGS IN THE PHILIPPINE HISTORY', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(108, 'GEN ED 4', 'MATH IN THE MODERN WORLD', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(109, 'GEN ED 5', 'PURPOSIVE COMMUNICATION', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(110, 'PROF ED 1', 'THE TEACHING PROFESSION', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(111, 'PROF ED 2', 'THE CHILD AND ADOLESCENT LEARNER AND LEARNING PRINCIPLES', 3, 3, 0, 3, '', 1, '1st', 'BSED-ENG', 'ENGLISH'),
(112, 'FIL 2', 'FILIPINO SA IBAT-IBANG DISIPLINA (FILDIS)', 3, 3, 0, 3, 'FIL 1', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(113, 'NSTP 2', 'NATIONAL SERVICE TRAINING PROGRAM 2', 3, 3, 0, 3, 'NSTP 1', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(114, 'PE 2', 'RHYTHMIC ACTIVITIES', 2, 2, 0, 2, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(115, 'PROF ED 3', 'FACILITATING LEARNER - CENTERED TEACHING: THE LEARNER CENTERED APPROACHES', 3, 3, 0, 3, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(116, 'SEE 1', 'INTRODUCTION TO LINGUISTICS', 3, 3, 0, 3, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(117, 'SEE 2', 'LANGUAGE, CULTURE AND SOCIETY', 3, 3, 0, 3, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(118, 'SEE 3', 'PRINCIPLES AND THEORIES OF LANGUAGE ACQUISITION AND LEARNING', 3, 3, 0, 3, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(119, 'SEE 4', 'MYTHOLOGY AND FOLKLORE', 3, 3, 0, 3, '', 1, '2nd', 'BSED-ENG', 'ENGLISH'),
(120, 'PE 3', 'INDIVIDUAL AND TEAM SPORTS', 2, 2, 0, 2, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(121, 'GEN ED 10', 'READING VISUAL ARTS', 3, 3, 0, 3, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(122, 'PROF ED 4', 'TECHNOLOGY FOR TEACHING AND LEARNING 1', 3, 3, 0, 3, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(123, 'PROF ED 5', 'THE TEACHER AND THE SCHOOL CURRICULUM', 3, 3, 0, 3, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(124, 'SEE 5', 'STRUCTURE OF ENGLISH', 3, 3, 0, 3, 'SEE 1', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(125, 'SEE 6', 'LANGUAGE PROGRAMS AND POLICIES IN MULTILINGUAL SOCIETIES', 3, 3, 0, 3, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(126, 'SEE 7', 'SURVEY OF PHILIPPINE LITERATURE IN ENGLISH', 3, 3, 0, 3, '', 2, '1st', 'BSED-ENG', 'ENGLISH'),
(127, 'PE 4', 'TEAM SPORTS', 2, 2, 0, 2, '', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(128, 'PROF ED 7', 'BUILDING AND ENHANCING NEW LITERACIES ACROSS THE CURRICULUM WITH EMPHASIS ON THE 21ST CENTURY SKILLS', 3, 3, 0, 3, 'PROF ED 5', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(129, 'PROF ED 8', 'ASSESSMENT IN LEARNING 2', 3, 3, 0, 3, 'PROF ED 6', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(130, 'PROF ED 9', 'FOUNDATION OF SPECIAL AND INCLUSIVE EDUCATION', 3, 3, 0, 3, 'PROF ED 2', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(131, 'SEE 8', ' SURVEY OF AFRO-ASIAN LITERATURE', 3, 3, 0, 3, 'SEE 7', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(132, 'SEE 9', 'TEACHING AND ASSESSMENT OF GRAMMAR', 3, 3, 0, 3, 'SEE 5', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(133, 'SEE 10', 'TEACHING AND ASSESSMENT OF THE MACROSKILLS', 3, 3, 0, 3, 'SEE 2, SEE 3', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(134, 'SEE 11', 'STYLISTICS AND DISCOURSE ANALYSIS', 3, 3, 0, 3, 'SEE 1,  SEE 2', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(135, 'SEE 12', 'CONTEMPORARY, POPULAR AND EMERGENT LITERATURE', 3, 3, 0, 3, '', 2, '2nd', 'BSED-ENG', 'ENGLISH'),
(136, 'PROF ED 10', 'THE TEACHER AND THE COMMUNITY, SCHOOL CULTURE AND ORGANIZATIONAL LEADERSHIP', 3, 3, 0, 3, 'PROF ED 1', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(137, 'PROF ED 11', 'METHODS OF RESEARCH (RESEARCH I)', 3, 3, 0, 3, 'PROF ED 6', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(138, 'SEE 13', 'TECHNOLOGY FOR TEACHING AND LEARNING 2 (TECHNOLOGY IN LANGUAGE EDUCATION)', 3, 3, 0, 3, 'PROF ED 4, PROF ED 8', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(139, 'SEE 14', 'SURVEY OF ENGLISH AND AMERICAN LITERATURE', 3, 3, 0, 3, '', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(140, 'SEE 15', 'LANGUAGE LEARNING MATERIALS DEVELOPMENT', 3, 3, 0, 3, 'PROF ED 4', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(141, 'SEE 16', 'SPEECH AND THEATER ARTS', 3, 3, 0, 3, 'SEE 10', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(142, 'SEE 17', 'TECHNICAL WRITING', 3, 3, 0, 3, 'SEE 5', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(143, 'SEE 18', 'FOREIGN LANGUAGE', 3, 3, 0, 3, 'SEE 1, SEE 2', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(144, 'SEE 19', 'TEACHING AND ASSESSMENT OF LITERATURE STUDIES', 3, 3, 0, 3, 'SEE 7, SEE 8, SEE 12, SEE 14', 3, '1st', 'BSED-ENG', 'ENGLISH'),
(145, 'SEE 20', 'LANGUAGE EDUCATION RESEARCH', 3, 3, 0, 3, 'PROF ED 11', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(146, 'SEE 21', 'LITERARY CRITICISM', 3, 3, 0, 3, 'SEE 7, SEE 8, SEE 12, SEE 14', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(147, 'SEE 22', 'CHILDREN AND ADOLESCENT LITERATURE', 3, 3, 0, 3, 'SEE 4, SEE 7, SEE 8, SEE 12, SEE 14', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(148, 'SEE 23', 'CAMPUS JOURNALISM', 3, 3, 0, 3, 'SEE 17', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(149, 'SEE 24', 'REMEDIAL INSTRUCTION IN ENGLISH', 3, 3, 0, 3, 'SEE 9, SEE 10', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(150, 'ELP', 'ENGLISH FOR TEACHERS', 3, 3, 0, 3, '', 3, '2nd', 'BSED-ENG', 'ENGLISH'),
(151, 'GEN ED 3', 'THE CONTEMPORARY WORLD', 3, 3, 0, 3, '', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(152, 'GEN ED 6', 'ART APPRECIATION', 3, 3, 0, 3, '', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(153, 'GEN ED 7', 'SCIENCE, TECHNOLOGY AND SOCIETY', 3, 3, 0, 3, '', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(154, 'GEN ED 8', 'ETHICS', 3, 3, 0, 3, '', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(155, 'GEN ED 9', 'LIFE AND WORKS OF RIZAL', 3, 3, 0, 3, '', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(156, 'PROF ED 12', 'FIELD STUDY 1', 3, 0, 3, 3, 'ALL PROF. EDUC AND MAJOR SUBJECTS', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(157, 'PROF ED 13', 'FIELD STUDY 2', 3, 0, 3, 3, 'ALL PROF. EDUC AND MAJOR SUBJECTS', 4, '1st', 'BSED-ENG', 'ENGLISH'),
(158, 'PROF ED 14', 'TEACHING INTERNSHIP (LOCAL AND INTERNATIONAL)', 6, 0, 40, 40, 'PROF ED 12, PROF ED 13', 4, '2nd', 'BSED-ENG', 'ENGLISH'),
(159, 'CA', 'COURSE AUDIT', 3, 6, 0, 6, '', 4, '2nd', 'BSED-ENG', 'ENGLISH'),
(160, 'FIL 1', 'KONTEKSWALISADONG KOMUNIKASYON SA FILIPINO (KOMFIL)', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(161, 'NSTP 1', 'NATIONAL SERVICE TRAINING PROGRAM 1', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(162, 'PE 1', 'ADVANCED GYMNASTICS AND PHYSICAL FITNESS', 2, 2, 0, 2, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(163, 'GEN ED 1', 'UNDERSTANDING THE SELF', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(164, 'GEN ED 2', 'READINGS IN THE PHILIPPINE HISTORY', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(165, 'GEN ED 4', 'MATH IN THE MODERN WORLD', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(166, 'GEN ED 5', 'PURPOSIVE COMMUNICATION', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(167, 'PROF ED 1', 'THE TEACHING PROFESSION', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(168, 'PROF ED 2', 'THE CHILD AND ADOLESCENT LEARNER AND LEARNING PRINCIPLES', 3, 3, 0, 3, '', 1, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(169, 'FIL 2', 'FILIPINO SA IBAT-IBANG DISIPLINA (FILDIS)', 3, 3, 0, 3, 'FIL 1', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(170, 'NSTP 2', 'NATIONAL SERVICE TRAINING PROGRAM 2', 3, 3, 0, 3, 'NSTP 1', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(171, 'PE 2', 'RHYTHMIC ACTIVITIES', 2, 2, 0, 2, '', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(172, 'PROF ED 3', 'FACILITATING LEARNER - CENTERED TEACHING', 3, 3, 0, 3, '', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(173, 'EED 1', 'GOOD MANNERS AND RIGHT CONDUCT (EDUKASYON SA PAGPAPAKATAO)', 3, 3, 0, 3, '', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(174, 'EED 2', 'CONTENT AND PEDAGOGY FOR THE MOTHER-TONGUE', 3, 3, 0, 3, '', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(175, 'EED 3', 'TEACHING ENGLISH IN THE ELEMENTARY GRADES (LANGUAGE ARTS)', 3, 3, 0, 3, '', 1, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(176, 'PE 3', 'INDIVIDUAL AND DUAL SPORTS', 2, 2, 0, 2, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(177, 'FIL 3', 'DALUMAT NG/SA FILIPINO (DALUMAT FIL)', 3, 3, 0, 3, 'FIL 2', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(178, 'PROF ED 4', 'TECHNOLOGY FOR TEACHING AND LEARNING 1', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(179, 'PROF ED 5', 'THE TEACHER AND THE SCHOOL CURRICULUM', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(180, 'PROF ED 6', 'ASSESSMENT IN LEARNING 1', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(181, 'EED 4', 'TEACHING MATH IN THE PRIMARY GRADES', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(182, 'EED 5', 'TEACHING SCIENCE IN THE PRIMARY GRADES (BIOLOGY AND CHEMISTRY)', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(183, 'EED 6', 'TEACHING SOCIAL STUDIES IN PRIMARY GRADES (PHILIPPINE HISTORY AND GOVERNMENT)', 3, 3, 0, 3, '', 2, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(184, 'PE 4', 'TEAM SPORTS', 2, 2, 0, 2, '', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(185, 'PROF ED 7', 'BUILDING AND ENHANCING NEW LITERACIES ACROSS THE CURRICULUM', 3, 3, 0, 3, 'PROF ED 5', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(186, 'PROF ED 8', 'ASSESSMENT IN LEARNING 2', 3, 3, 0, 3, 'PROF ED 6', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(187, 'PROF ED 9', 'FOUNDATION OF SPECIAL AND INCLUSIVE EDUCATION', 3, 3, 0, 3, 'PROF ED 2', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(188, 'EED 7', 'PAGTUTURO NG FILIPINO SA ELEMENTARYA 1 - ESTRUKTURA AT GAMIT NG WIKANG FILIPINO', 3, 3, 0, 3, 'FIL 3', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(189, 'EED 8', 'TEACHING P3 AND HEALTH IN THE ELEMENTARY GRADES', 3, 3, 0, 3, '', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(190, 'EED 9', 'TEACHING MATH IN THE INTERMEDIATE GRADES', 3, 3, 0, 3, 'EED 4', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(191, 'EED 10', 'EDUKASYONG PANTAHAN AT PANGKABUHAYAN 1', 3, 3, 0, 3, '', 2, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(192, 'PROF ED 10', 'THE TEACHER AND THE COMMUNITY, SCHOOL CULTURE AND ORGANIZATIONAL LEADERSHIP', 3, 3, 0, 3, 'PROF ED 1', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(193, 'EED-ELEC 1', 'TEACHING MULTI-GRADE CLASSES', 3, 3, 0, 3, '', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(194, 'EED 12', 'TECHNOLOGY FOR TEACHING AND LEARNING 2 (TECHNOLOGY FOR TEACHING AND LEARNING IN ELEMENTARY GRADES)', 3, 3, 0, 3, 'PROF ED 4', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(195, 'EED 13', 'PAGTUTURO NG FILIPINO SA ELEMENTARYA 2 - PANITIKAN NG PILIPINAS', 3, 3, 0, 3, '', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(196, 'EED 14', 'TEACHING MUSIC IN THE ELEMENTARY GRADES', 3, 3, 0, 3, 'GEN ED 2', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(197, 'EED 15', 'TEACHING LITERACY IN THE ELEMENTARY GRADES THROUGH LITERATURE', 3, 3, 0, 3, '', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(198, 'EED 19', 'RESEARCH IN EDUCATION 1: METHODS OF RESEARCH', 3, 3, 0, 3, '', 3, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(199, 'EED 16', 'TEACHING SCIENCE IN THE INTERMEDIATE GRADES (PHYSICS, EARTH AND SPACE SCIENCE)', 3, 3, 0, 3, '', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(200, 'EED 11', 'TEACHING ARTS IN THE ELEMENTARY GRADES', 3, 3, 0, 3, 'EED 10', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(201, 'EED 17', 'ENTREPRENEURSHIP', 3, 3, 0, 3, '', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(202, 'EED 18', 'TEACHING SOCIAL STUDIES IN INTERMEDIATE GRADES (CULTURE AND GEOGRAPHY)', 3, 3, 0, 3, 'GEN ED 2', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(203, 'EED 20', 'RESEARCH IN EDUCATION 2: UNDERGRADUATE THESIS', 3, 3, 0, 3, '', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(204, 'ELP', 'ENGLISH FOR TEACHERS', 3, 3, 0, 3, '', 3, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(205, 'GEN ED 3', 'THE CONTEMPORARY WORLD', 3, 3, 0, 3, '', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(206, 'GEN ED 6', 'ART APPRECIATION', 3, 3, 0, 3, '', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(207, 'GEN ED 7', 'SCIENCE, TECHNOLOGY AND SOCIETY', 3, 3, 0, 3, '', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(208, 'GEN ED 8', 'ETHICS', 3, 3, 0, 3, '', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(209, 'GEN ED 9', 'LIFE AND WORKS OF RIZAL', 3, 3, 0, 3, '', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(210, 'PROF ED 11', 'FIELD STUDY 1', 3, 3, 0, 3, 'ALL PROF. EDUC AND MAJOR SUBJECTS', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(211, 'PROF ED 12', 'FIELD STUDY 2', 3, 3, 0, 3, 'ALL PROF. EDUC AND MAJOR SUBJECTS', 4, '1st', 'BEED', 'ELEMENTARY EDUCATION'),
(212, 'PROF ED 13', 'TEACHING INTERNSHIP (LOCAL AND INTERNATIONAL)', 6, 0, 40, 40, 'PROF ED 11, PROF ED 12', 4, '2nd', 'BEED', 'ELEMENTARY EDUCATION'),
(213, 'CA', 'COURSE AUDIT', 3, 6, 0, 6, '', 4, '2nd', 'BEED', 'ELEMENTARY EDUCATION');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `deadline` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submission_assigned`
--

CREATE TABLE `submission_assigned` (
  `id` int(11) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submission_file`
--

CREATE TABLE `submission_file` (
  `id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `submission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submission_file_status`
--

CREATE TABLE `submission_file_status` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `assigned_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `dt_submitted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `photo`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document_trail`
--
ALTER TABLE `document_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `schedule_ibfk_3` (`semester_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_teacher`
--
ALTER TABLE `semester_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnel_id` (`personnel_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `signatory`
--
ALTER TABLE `signatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_assigned`
--
ALTER TABLE `submission_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_id` (`personnel_id`),
  ADD KEY `submission_assigned_ibfk_2` (`submission_id`);

--
-- Indexes for table `submission_file`
--
ALTER TABLE `submission_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_file_ibfk_1` (`submission_id`);

--
-- Indexes for table `submission_file_status`
--
ALTER TABLE `submission_file_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_file_status_ibfk_2` (`file_id`),
  ADD KEY `assigned_id` (`assigned_id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document_trail`
--
ALTER TABLE `document_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `semester_teacher`
--
ALTER TABLE `semester_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `signatory`
--
ALTER TABLE `signatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `submission_assigned`
--
ALTER TABLE `submission_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `submission_file`
--
ALTER TABLE `submission_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `submission_file_status`
--
ALTER TABLE `submission_file_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `semester_teacher` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semester_teacher`
--
ALTER TABLE `semester_teacher`
  ADD CONSTRAINT `semester_teacher_ibfk_1` FOREIGN KEY (`personnel_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `semester_teacher_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_assigned`
--
ALTER TABLE `submission_assigned`
  ADD CONSTRAINT `submission_assigned_ibfk_1` FOREIGN KEY (`personnel_id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `submission_assigned_ibfk_2` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_file`
--
ALTER TABLE `submission_file`
  ADD CONSTRAINT `submission_file_ibfk_1` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submission_file_status`
--
ALTER TABLE `submission_file_status`
  ADD CONSTRAINT `submission_file_status_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `submission_file` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submission_file_status_ibfk_3` FOREIGN KEY (`assigned_id`) REFERENCES `submission_assigned` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submission_file_status_ibfk_4` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
