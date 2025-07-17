-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2025 at 02:48 PM
-- Server version: 8.0.42-0ubuntu0.24.04.2
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccsd_directory_java`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint NOT NULL,
  `division` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dial_extension` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `location_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `division`, `department`, `position`, `name`, `phone`, `dial_extension`, `fax`, `location_code`, `address`, `created_at`) VALUES
(1, 'Board of School Trustees', 'District A', 'Member, Board of School Trustees', 'Emily Stevens', '799-5841', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(2, 'Board of School Trustees', 'District B', 'Member, Board of School Trustees', 'Lydia Dominguez', '799-5842', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(3, 'Board of School Trustees', 'District C', 'Clerk, Board of School Trustees', 'Tameka Henry', '799-5843', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(4, 'Board of School Trustees', 'District D', 'Vice-President, Board of School Trustees', 'Brenda Zamora', '799-5844', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(5, 'Board of School Trustees', 'District E', 'Member, Board of School Trustees', 'Lorena Biassotti', '799-5845', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(6, 'Board of School Trustees', 'District F', 'President, Board of School Trustees', 'Irene Bustamante Adams', '799-5846', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(7, 'Board of School Trustees', 'District G', 'Member, Board of School Trustees', 'Linda P. Cavazos', '799-5847', NULL, '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(8, 'Board of School Trustees', 'City of Henderson', 'Member, Board of School Trustees', 'Ramona Esparza-Stoffergan', '799-1072', NULL, NULL, NULL, NULL, '2025-07-16 23:34:40'),
(9, 'Board of School Trustees', 'City of Las Vegas', 'Member, Board of School Trustees', 'Adam Johnson', '799-1072', NULL, NULL, NULL, NULL, '2025-07-16 23:34:40'),
(10, 'Board of School Trustees', 'City of North Las Vegas', 'Member, Board of School Trustees', 'Isaac Barron', '799-1072', NULL, NULL, NULL, NULL, '2025-07-16 23:34:40'),
(11, 'Board of School Trustees', 'Clark County', 'Member, Board of School Trustees', 'Lisa Satory', '799-1072', NULL, NULL, NULL, NULL, '2025-07-16 23:34:40'),
(12, 'Board of School Trustees', 'School Board Office', 'Director', 'Katelyn Taylor', '799-1072', '0015-5281', '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(13, 'Board of School Trustees', 'School Board Office', 'Administrative Secretary II', 'Lisa Chrascynski', '799-1072', '0015-5279', '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(14, 'Board of School Trustees', 'School Board Office', 'Administrative Secretary II', 'Nora Horth', '799-1072', '0015-5276', '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(15, 'Board of School Trustees', 'School Board Office', 'Administrative Secretary II', 'Rita Mouanthes', '799-1072', '0015-5278', '799-0257', '002', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(16, 'Academic Unit', 'Teacher Leadership Department', 'Director II', 'Tilson Crew', '799-6499', '0110-5930', '799-1097', '186', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(17, 'Academic Unit', 'Teacher Leadership Department', 'Coordinator III', 'Alexandra Bittelli', '799-6499', '0110-5140', '799-1097', '186', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(18, 'Academic Unit', 'Teacher Leadership Department', 'Coordinator III', 'Amanda Gift', '799-6499', '0110-5140', '799-1097', '186', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(19, 'Academic Unit', 'Teacher Leadership Department', 'Coordinator III', 'Emily Hopson', '799-6499', '0110-5140', '799-1097', '186', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(20, 'Academic Unit', 'Teacher Leadership Department', 'Administrative Secretary I', 'Maricela Solis', '799-6499', '0110-5026', '799-1097', '186', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(21, 'Academic Unit', 'Employee Onboarding and Development Department', 'Director II', 'Jennifer Varrato', '799-1092', '0110-5301', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(22, 'Academic Unit', 'Employee Onboarding and Development Department', 'Secretary III', 'Alicia V. Perez', '799-1092', '0110-5302', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(23, 'Academic Unit', 'Employee Onboarding and Development Department', 'Coordinator IV', 'Jessica Bouchie', '799-1092', '0110-5306', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(24, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Jennifer F. Rios', '799-1092', '0110-5317', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(25, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Tiffany Romero', '799-1092', '0110-5320', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(26, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Cazandra Uy', '799-1092', '0110-5310', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(27, 'Academic Unit', 'Employee Onboarding and Development Department', 'Coordinator IV', 'Jennifer Fisk', '799-1092', '0110-5303', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(28, 'Academic Unit', 'Employee Onboarding and Development Department', 'Secretary III', 'Cynthia Walker', '799-1092', '0110-5304', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(29, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Lisa M. Davis', '799-1092', '0110-5311', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(30, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Megan Scalise', '799-1092', '0110-5316', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(31, 'Academic Unit', 'Employee Onboarding and Development Department', 'Project Facilitator', 'Mandy Yeoman', '799-1092', '0110-5319', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(32, 'Academic Unit', 'Employee Onboarding and Development Department', 'Staff Trainer Supervisor', 'Lillian Mares', '799-1092', '0110-5314', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(33, 'Academic Unit', 'Employee Onboarding and Development Department', 'Secretary II', 'Enrique Meza', '799-1092', '0110-5307', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(34, 'Academic Unit', 'Employee Onboarding and Development Department', 'Staff Trainer', 'Veronica Arellano', '799-1092', '0110-5309', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(35, 'Academic Unit', 'Employee Onboarding and Development Department', 'Staff Trainer', 'Maria Gonzalez-Mata', '799-1092', '0110-5313', '799-1097', '036', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(36, 'Academic Unit', 'Professional Learning Education Department', 'Director I', 'Brian Lenze', '799-1921', '0110-5121', '799-1097', '013', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(37, 'Academic Unit', 'Professional Learning Education Department', 'Project Facilitator', 'Monica McCall', '799-1921', '0110-5131', '799-1097', '013', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(38, 'Academic Unit', 'Professional Learning Education Department', 'Administrative Secretary I', 'Danielle McCullough', '799-1921', '0110-5132', '799-1097', '013', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(39, 'Academic Unit', 'Professional Learning Education Department', 'Office Specialist II', 'Joanie Mares', '799-1921', '0110-5130', '799-1097', '013', '3950 S. Pecos-McLeod, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(40, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Assistant Superintendent', 'Dr. Samuel Scavella', '799-6484', NULL, '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(41, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Administrative Secretary III', 'Cecilia Torres', '799-6484', '0015-5856', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(42, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Director II', 'Ornithia Diaz', '799-6484', '0015-5853', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(43, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Secretary III', 'Melissia Avant', '799-6484', '0015-5845', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(44, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Coordinator IV', 'Andrew O\'Reilly', '799-6484', '0015-5855', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(45, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Coordinator IV', 'Jay Fair', '799-6484', '0015-5033', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(46, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Coordinator IV', 'Laronica Maurer', '799-6484', '0015-5034', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(47, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Coordinator IV', 'Dr. Duane Mantanona', '799-6484', '0015-5030', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(48, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Counselor', 'Alexander Paris', '799-6484', '0015-5037', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(49, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Counselor', 'TBD', '799-6484', NULL, '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(50, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Secretary II', 'Aimee Vargas', '799-6484', '0015-5031', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(51, 'Academic Unit', 'Safe and Respectful Learning Environments and Opportunities Division', 'Student Success Advocate', 'TBD', '799-6484', '0015-5038', '799-7946', '004', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(52, 'Academic Unit', 'Indian Education Opportunities Program', 'Coordinator', 'Richard Savage', '799-0203 x5152', '0059-5152', '799-1082', '782', '4212 Eucalyptus Avenue, Las Vegas, NV 89121, Bldg. 8', '2025-07-16 23:34:40'),
(53, 'Academic Unit', 'Indian Education Opportunities Program', 'Office Specialist II', 'M Ache Martinez', '799-0203 x5191', '0059-5191', '799-1082', '782', '4212 Eucalyptus Avenue, Las Vegas, NV 89121, Bldg. 8', '2025-07-16 23:34:40'),
(54, 'Academic Unit', 'Indian Education Opportunities Program', 'Student Success Advocate', 'Regina Britt', '799-0203 x5179', '0059-5179', '799-1082', '782', '4212 Eucalyptus Avenue, Las Vegas, NV 89121, Bldg. 8', '2025-07-16 23:34:40'),
(55, 'Academic Unit', 'Indian Education Opportunities Program', 'Student Success Advocate', 'Sandra Lee', '799-0203 x5153', '0059-5153', '799-1082', '782', '4212 Eucalyptus Avenue, Las Vegas, NV 89121, Bldg. 8', '2025-07-16 23:34:40'),
(56, 'Academic Unit', 'Multi-Tiered System of Supports Department (MTSS)', 'Director II, (MTSS)', 'Brandi March', '799-5875', '0015-5523', '799-8851', '796', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(57, 'Academic Unit', 'Multi-Tiered System of Supports Department (MTSS)', 'Coordinator IV, (MTSS)', 'Deanna Peterson', '799-5875', '0015-5524', '799-8851', '796', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(58, 'Academic Unit', 'Multi-Tiered System of Supports Department (MTSS)', 'Coordinator IV, (MTSS)', 'Darlen Orr', '799-5875', '0015-5530', '799-8851', '796', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(59, 'Academic Unit', 'Multi-Tiered System of Supports Department (MTSS)', 'Administrative Secretary I', 'Mirzeyjen Hughes', '799-5875', '0015-5291', '799-8851', '796', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(60, 'Education Services Division', 'Education Services Division', 'Associate Superintendent', 'Kevin McPartlin', '855-9765', '0190-5201', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(61, 'Education Services Division', 'Education Services Division', 'Administrative Secretary III', 'Lori Gitter', '855-9765', '0190-5201', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(62, 'Education Services Division', 'Education Services Division', 'Administrative Secretary III', 'Prudence Kowalski', '799-5346', '0015-5357', '799-5199', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(63, 'Education Services Division', 'Education Services Division', 'Data Research - Behavior Analyst', 'Rosalind Middleton', '799-5346', '0015-5288', '799-5199', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(64, 'Education Services Division', 'Education Services Division', 'Administrative Secretary II, SafeVoice', 'Frances Harris-Uzan', '799-8630', '0190-5213', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(65, 'Education Services Division', 'Education Services Division', 'Administrative Secretary I', 'Fatima Cortez', '855-9765', '0190-5207', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(66, 'Education Services Division', 'Education Services Division', 'Office Specialist II', 'Wendy Williams', '855-9765', '0190-5210', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(67, 'Education Services Division', 'Wraparound Services Department', 'Director II', 'Christopher Merritt', '799-0761', '0190-5218', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(68, 'Education Services Division', 'Wraparound Services Department', 'Administrative Secretary I', 'La Tangella Douglass', '799-0761', '0190-5217', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(69, 'Education Services Division', 'Wraparound Services Department', 'School Social Worker Liaison', 'Christine Wolf', '799-0761', '0190-5223', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(70, 'Education Services Division', 'Wraparound Services Department', 'School Social Worker Liaison', 'Niki Maloff', '799-0761', '0190-5222', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(71, 'Education Services Division', 'Wraparound Services Department', 'School Social Worker Liaison', 'Stephanie Jolin', '799-0761', '0190-5224', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(72, 'Education Services Division', 'Wraparound Services Department', 'School Social Worker Liaison', 'Joni Schmidt', '799-0761', '0190-5226', '799-0113', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building D)', '2025-07-16 23:34:40'),
(73, 'Education Services Division', 'Department of Due Process/Home Schooling', 'Coordinator IV', 'Kuldip Mangat', '799-8630', '0190-5211', '799-8663', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building C)', '2025-07-16 23:34:40'),
(74, 'Education Services Division', 'Department of Due Process/Home Schooling', 'Administrative Secretary I', 'Rogelio Solorzano Dones', '799-8630', '0190-5216', '799-8663', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building C)', '2025-07-16 23:34:40'),
(75, 'Education Services Division', 'Department of Due Process/Home Schooling', 'Interpreter', 'Laura Gonzalez', '855-9765', '0190-5202', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building C)', '2025-07-16 23:34:40'),
(76, 'Education Services Division', 'Department of Due Process/Home Schooling', 'Office Specialist II', 'TBD', '799-8630', '0190-5294', '799-8663', '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building C)', '2025-07-16 23:34:40'),
(77, 'Education Services Division', 'Department of Due Process/Home Schooling', 'Office Specialist II (Home School)', 'Christina Pimentel', '799-8630', '0190-5294', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building C)', '2025-07-16 23:34:40'),
(78, 'Education Services Division', 'Department of Safe and Drug Free Schools', 'Coordinator III', 'Rosa O\'Bannon', '799-8411', '0671-5252', NULL, '671', '3311 E. Flamingo Road, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(79, 'Education Services Division', 'Department of Safe and Drug Free Schools', 'Administrative Secretary I', 'Tiffany Steinhiber', '799-8411', '0671-5251', NULL, '671', '3311 E. Flamingo Road, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(80, 'Education Services Division', 'Foster Care Department', 'Coordinator III', 'Gregory Holloway', '799-1196', '0190-5351', NULL, '190', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building A)', '2025-07-16 23:34:40'),
(81, 'Education Services Division', 'Foster Care Department', 'Information Processor', 'Cecilia Caray', '799-1196', '0190-5350', NULL, '190', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building A)', '2025-07-16 23:34:40'),
(82, 'Education Services Division', 'Office of Chronic Absenteeism', 'Director II', 'Danielle Jones', '799-8630', '0190-5361', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(83, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Coordinator III', 'Mollie Fulwilder', '799-8630', '0190-5362', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(84, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Senior Attendance Officer', 'Wanitza Esparoza', '799-0150', '0190-5363', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(85, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Office Specialist II', 'Maria Hernandez', '799-8630', '0190-5370', NULL, '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(86, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Office Specialist II', 'Samad Khan', '799-8630', '0190-5365', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(87, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Office Specialist II', 'Susan Mochizaki', '799-8630', '0190-5371', NULL, '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(88, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Dispatcher', 'Ivan Aranda', '799-8640', '0190-5369', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(89, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Dispatcher', 'Gisell Castillo', '799-8640', '0190-5367', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(90, 'Education Services Division', 'Office of Attendance Enforcement/Shared Housing Department', 'Dispatcher', 'Katherine Hernandez', '799-8640', '0190-5366', '799-8639', '128', '4294 Channel 10 Drive, Las Vegas, NV 89119', '2025-07-16 23:34:40'),
(91, 'Education Services Division', 'Pupil Personnel Services Department', 'Coordinator III', 'Reece Bethel', '799-8630', '0190-5212', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(92, 'Education Services Division', 'Pupil Personnel Services Department', 'Secretary III', 'Courtney Brown', '855-9775', '0190-5227', NULL, '151', '4294 Channel 10 Drive, Las Vegas, NV 89119 (Building B)', '2025-07-16 23:34:40'),
(93, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Director III', 'Pamela Sloan', '799-8493', '0015-5121', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(94, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Administrative Secretary I', 'Susan Hrisca', '799-8493', '0015-5125', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(95, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Director I, Secondary Athletic Eligibility', 'Jonathon Grande', '799-8493', '0015-5122', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(96, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Administrative Secretary I', 'Kristyna Weller', '799-8493', '0015-5126', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(97, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Director I, MS Athletics & Title IX', 'Doug Wilbur', '799-8493', '0015-5124', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(98, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Administrative Secretary I', 'Holly Austin', '799-8493', '0015-5132', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(99, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Director I, HS Athletics', 'Xavier Antheaume', '799-8493', '0015-5123', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(100, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Administrative Secretary I', 'Vicki Perez', '799-8493', '0015-5127', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(101, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Accountant', 'Matthew McCormick', '855-9752', '0015-5131', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(102, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Director, Student Activities', 'Kristin Grimm', '799-8474', '0015-5128', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(103, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Administrative Secretary I', 'Lisa Ruiz', '799-8474', '0015-5130', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(104, 'Education Services Division', 'Secondary Student Athletics and Activities', 'Project Facilitator', 'Stephanie Stoner', '799-8474', '0015-5129', NULL, '112', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(105, 'Regions', 'Region 1', 'Region Superintendent', 'Lindsay Tomlinson', '799-0648', '0103-5601', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(106, 'Regions', 'Region 1', 'Administrative Secretary III', 'Miriam Martinez', '799-0648', '0103-5602', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(107, 'Regions', 'Region 1', 'School Associate Superintendent', 'Maurice Perkins', '799-0648', '0103-5600', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(108, 'Regions', 'Region 1', 'School Associate Superintendent', 'Hilary Malloy', '799-0648', '0103-5610', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(109, 'Regions', 'Region 1', 'Administrative Secretary II', 'Maria Serrato-Flores', '799-0648', '0103-5608', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(110, 'Regions', 'Region 1', 'School Associate Superintendent', 'Louis Markowitz', '799-0648', '0103-5607', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(111, 'Regions', 'Region 1', 'School Associate Superintendent', 'Rebecca Tschinkel', '799-0648', '0103-5611', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(112, 'Regions', 'Region 1', 'Administrative Secretary II', 'Michelle Flippen', '799-0648', '0103-5604', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(113, 'Regions', 'Region 1', 'School Associate Superintendent', 'Andrea Womack', '799-0648', '0103-5603', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(114, 'Regions', 'Region 1', 'School Associate Superintendent', 'Scarlett Perryman', '799-0648', '0103-5605', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(115, 'Regions', 'Region 1', 'Administrative Secretary II', 'Diana McAllister', '799-0648', '0103-5606', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(116, 'Regions', 'Region 1', 'Coordinator IV', 'Gerold \"Jerry\" Petrosky', '799-0648', '0103-5643', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(117, 'Regions', 'Region 1', 'ESD Director II', 'Robert Kowalski', '799-0648', '0103-5613', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(118, 'Regions', 'Region 1', 'Administrative Secretary', 'Marisela (Mari) Gonzalez', '799-0648', '0103-5614', '799-0677', '084', '5240 Goldfield St., North Las Vegas, NV 89031', '2025-07-16 23:34:40'),
(119, 'Regions', 'Region 2', 'Region Superintendent', 'Dr. Reece Oswell', '799-2939', '0106-5602', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(120, 'Regions', 'Region 2', 'Administrative Secretary III', 'Tina Bueno', '799-2939', '0106-5602', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(121, 'Regions', 'Region 2', 'School Associate Superintendent', 'Shawn Helland', '799-2939', '0106-5604', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(122, 'Regions', 'Region 2', 'School Associate Superintendent', 'Gregory Mitzel', '799-2939', '0106-5613', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(123, 'Regions', 'Region 2', 'Administrative Secretary II', 'Susan Upalte', '799-2939', '0106-5604', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(124, 'Regions', 'Region 2', 'School Associate Superintendent', 'Monica Lang', '799-2939', '0106-5606', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(125, 'Regions', 'Region 2', 'School Associate Superintendent', 'Melissa Roehm', '799-2939', '0106-5603', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(126, 'Regions', 'Region 2', 'Administrative Secretary II', 'Lucia Rodriguez', '799-2939', '0106-5606', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(127, 'Regions', 'Region 2', 'School Associate Superintendent', 'Anna Hurst', '799-2939', '0106-5621', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(128, 'Regions', 'Region 2', 'School Associate Superintendent', 'Lynn Walker', '799-2939', '0106-5630', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(129, 'Regions', 'Region 2', 'Administrative Secretary II', 'Alma Lule', '799-2939', '0106-5463', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(130, 'Regions', 'Region 2', 'Coordinator IV', 'Margaret (Meg) McKee', '799-2939', '0106-5607', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(131, 'Regions', 'Region 2', 'ESD Director II', 'Paul Hernandez', '799-2939', '0106-5616', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(132, 'Regions', 'Region 2', 'Administrative Secretary I', 'Kelli Porter', '799-2939', '0106-5617', '799-1220', '106', '2298 Vegas Valley Dr., Las Vegas, NV 89169', '2025-07-16 23:34:40'),
(133, 'Regions', 'Region 3', 'Region Superintendent', 'TBD', '799-0059', '0107-5601', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(134, 'Regions', 'Region 3', 'Administrative Secretary III', 'Lesley Raymer', '799-0059', '0107-5602', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(135, 'Regions', 'Region 3', 'School Associate Superintendent', 'Robert Solomon', '799-0059', '0107-5604', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(136, 'Regions', 'Region 3', 'School Associate Superintendent', 'Mikie Young', '799-0059', '0107-5605', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(137, 'Regions', 'Region 3', 'Administrative Secretary II', 'Joanna Garcia', '799-0059', '0107-5606', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(138, 'Regions', 'Region 3', 'School Associate Superintendent', 'Emily Petosa', '799-0059', '0107-5603', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(139, 'Regions', 'Region 3', 'School Associate Superintendent', 'Ronnie Guzzon', '799-0059', '0107-5608', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(140, 'Regions', 'Region 3', 'Administrative Secretary II', 'Armida Soderberg', '799-0059', '0107-5650', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(141, 'Regions', 'Region 3', 'School Associate Superintendent', 'TBD', '799-0059', '0107-5626', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(142, 'Regions', 'Region 3', 'School Associate Superintendent', 'Kortney Smith', '799-0059', '0107-5627', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(143, 'Regions', 'Region 3', 'Administrative Secretary II', 'Diane Siriegel', '799-0059', '0107-5628', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(144, 'Regions', 'Region 3', 'Coordinator IV', 'Deneen Vaughn', '799-0059', '0107-5607', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(145, 'Regions', 'Region 3', 'Educational Services, Director II', 'Matthew Henne', '799-0989', '0107-5621', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(146, 'Regions', 'Region 3', 'Administrative Secretary', 'Kim Bassett', '799-0989', '0107-5620', NULL, '107', '5708 Mountain Vista St., Las Vegas, NV 89120', '2025-07-16 23:34:40'),
(147, 'Regions', 'The Transformation Network', 'Region Superintendent', 'Barry Bosacker', '799-5868', '0015-5141', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(148, 'Regions', 'The Transformation Network', 'Administrative Secretary III', 'Jenn Brodersen', '799-5868', '0015-5141', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(149, 'Regions', 'The Transformation Network', 'School Associate Superintendent', 'Rebecca Lucero', '799-5868', '0015-5141', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(150, 'Regions', 'The Transformation Network', 'Leadership Coach', 'Mitchelle Bain', '799-5868', '0015-5145', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(151, 'Regions', 'The Transformation Network', 'Leadership Coach', 'Kimberly Conway', '799-5868', '0015-5146', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(152, 'Regions', 'The Transformation Network', 'Leadership Coach', 'Genaro Hernandez', '799-5868', '0015-5148', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(153, 'Regions', 'The Transformation Network', 'Leadership Coach', 'Heidi Hoshikawa', '799-5868', '0015-5144', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(154, 'Regions', 'The Transformation Network', 'Leadership Coach', 'Anthony White', '799-5868', '0015-5147', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(155, 'Regions', 'The Transformation Network', 'Coordinator IV', 'Timothy Jessesky', '799-5868', '0015-5149', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(156, 'Regions', 'The Transformation Network', 'ELLD Coordinator IV', 'Christina Jones', '799-5868', '0015-5140', NULL, '199', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(157, 'Student Services Division', 'Student Services Division', 'Chief of Health and Student Services', 'Dr. Monica Cortez', '799-5471', NULL, '799-5043', '135', '4170 McLeod Dr., Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(158, 'Student Services Division', 'Student Services Division', 'Executive Assistant, Administrative Secretary IV', 'Janice Lucero', '799-5471', '0591-5777', '799-5043', '135', '4170 McLeod Dr., Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(159, 'Student Services Division', 'Student Services Division', 'Executive Assistant, Administrative Secretary IV', 'Nancy Applegard', '799-5471', '0591-5743', '799-5043', '135', '4170 McLeod Dr., Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(160, 'Student Services Division', 'Health Services and School Support', 'Executive Director', 'Dr. Diane Lewis', '799-0812', NULL, NULL, '135', '4170 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(161, 'Student Services Division', 'Health Services and School Support', 'Administrative Secretary II', 'Diane Jones', '799-0812', '0591-5722', NULL, '135', '4170 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(162, 'Student Services Division', 'Employee Occupational Health Strategy', 'Director', 'Jennifer Budzinski', '799-2702', NULL, NULL, '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(163, 'Student Services Division', 'Employee Occupational Health Strategy', 'Secretary III', 'Marci Wenzell', '799-2702', '0485-5346', NULL, '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(164, 'Student Services Division', 'Health Services', 'Director/Chief Nurse, Health Services', 'Sheri McPartlin', '799-7443', '0485-5338', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(165, 'Student Services Division', 'Health Services', 'Secretary III', 'Candra Baylor', '799-7443', '0485-5344', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(166, 'Student Services Division', 'Health Services', 'Secretary III', 'Diane Horrocks', '799-7443', '0485-5343', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(167, 'Student Services Division', 'Health Services', 'Office Specialist II', 'Mary Ann Collado', '799-7443', '0485-5341', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(168, 'Student Services Division', 'Health Services', 'Office Specialist II', 'Jamie Carner', '799-7443', '0485-5347', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(169, 'Student Services Division', 'Health Services', 'Office Specialist II', 'Susan Lindsay', '799-7443', '0485-5342', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(170, 'Student Services Division', 'Health Services', 'Director', 'Eric Enriquez', '799-7443', '0485-5330', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(171, 'Student Services Division', 'Health Services', 'Director', 'Karen Stratford', '799-7443', '0485-5159', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(172, 'Student Services Division', 'Health Services', 'Director', 'Christine Forsberg', '799-7443', '0485-5155', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(173, 'Student Services Division', 'Health Services', 'Director', 'Karen Fossile', '799-4558', '0102-5337', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(174, 'Student Services Division', 'Health Services', 'Director', 'Tonda Neitz', '799-4558', '0102-5332', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(175, 'Student Services Division', 'Health Services', 'Director', 'Andrew Rodriguez', '799-7443', '0485-5160', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(176, 'Student Services Division', 'Health Services', 'Director', 'Heather Strasser', '799-7443', '0485-5158', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(177, 'Student Services Division', 'Health Services', 'Director', 'Erin Williams', '799-7443', '0485-5329', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(178, 'Student Services Division', 'Health Services', 'Coordinator, AED', 'TBD', '799-7443', '0485-5156', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(179, 'Student Services Division', 'School-Based Health and Provider Relations', 'Coordinator', 'Lori Baumann', '799-7443', '0485-5332', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(180, 'Student Services Division', 'School-Based Health and Provider Relations', 'Secretary III', 'Janet Mullaney', '799-7443', '0485-5345', '799-8671', '700', 'Dr. Beth Howe Center, 3636 S. Pecos-McLeod Interconnect, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(181, 'Office of the Superintendent', 'Office of the Superintendent', 'Superintendent of Schools', 'Jhone Ebert', '799-5310', '0015-5519', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(182, 'Office of the Superintendent', 'Office of the Superintendent', 'Executive Director', 'Rosanne Richards', '799-5310', '0015-5563', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(183, 'Office of the Superintendent', 'Office of the Superintendent', 'Executive Manager/Director II', 'Carmen West', '799-5310', '0015-5519', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(184, 'Office of the Superintendent', 'Office of the Superintendent', 'Director I', 'Brianna Mills', '799-5310', '0015-5564', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(185, 'Office of the Superintendent', 'Office of the Superintendent', 'Executive Assistant', 'Angela Register', '799-5310', '0015-5501', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(186, 'Office of the Superintendent', 'Office of the Superintendent', 'Executive Assistant', 'Veronica Rivera', '799-5310', '0015-5517', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(187, 'Office of the Superintendent', 'Administrative Center', 'Special Assistant to the Superintendent/Liaison to the Board of Trustees', 'Joe Caruso', '799-5330', '0015-5569', '799-8851', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(188, 'Office of the Superintendent', 'Administrative Center', 'Administrative Secretary II', 'Larissa Pumo', '799-5330', '0015-5568', '799-8851', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(189, 'Office of the Superintendent', 'Administrative Center', 'Secretary III', 'Denise Anderson', '799-2273', '0015-5507', '799-8851', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(190, 'Office of the Superintendent', 'Administrative Center', 'Secretary III', 'TJ Abbington', '799-2273', '0015-5155', '799-8851', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(191, 'Office of the Superintendent', 'Administrative Center', 'Security Specialist (Days)', 'Wanda Mitchell', '799-5037', '0015-5508', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(192, 'Office of the Superintendent', 'Administrative Center', 'Security Specialist (Evenings)', 'Daniel Conti', '799-5037', '0015-5508', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(193, 'Office of the Superintendent', 'Administrative Center', 'Technology Specialist', 'Rick Burns', '284-7955', '0015-4015', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(194, 'Office of the Superintendent', 'Administrative Center', 'Head Custodian III', 'Pedro Guzman-Ezquivel', '284-7956', '0015-4014', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(195, 'Office of the Superintendent', 'Administrative Center', 'Custodian (Evenings)', 'TBD', '284-7951', '0015-5045', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(196, 'Office of the Superintendent', 'Administrative Center', 'Custodian (Evenings)', 'Maria Favela', '284-7951', '0015-5045', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(197, 'Office of the Superintendent', 'Administrative Center', 'Custodian (Evenings)', 'Christopher Puschanski', '284-7951', '0015-5045', '799-1082', '015', '5100 W. Sahara Ave., Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(198, 'Office of the Superintendent', 'Internal Audit Department', 'Director II', 'Janette Scott', '799-6360 x5070', '0991-5070', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(199, 'Office of the Superintendent', 'Internal Audit Department', 'Senior Internal Auditor/Coordinator IV', 'Birdie Kaczenski', '799-6360 x5077', '0991-5077', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(200, 'Office of the Superintendent', 'Internal Audit Department', 'Senior Internal Auditor/Coordinator IV', 'Eric Hoch', '799-6360 x5073', '0991-5073', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(201, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Kristina Gilliland', '799-6360 x5081', '0991-5081', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(202, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Andy Bueno', '799-6360 x5072', '0991-5072', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(203, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Brian Frey', '799-6360 x5074', '0991-5074', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(204, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Larry Herdzina', '799-6360 x5079', '0991-5079', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(205, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'TBD', '799-6360 x5078', '0991-5078', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(206, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Adam Mirochnik', '799-6360 x5075', '0991-5075', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(207, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'Walden Galoza', '799-6360 x5085', '0991-5085', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(208, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator III', 'TBD', '799-6360 x5086', '0991-5086', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(209, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator I', 'Angel Ahedlo-Lopez', '799-6360 x5071', '0991-5071', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(210, 'Office of the Superintendent', 'Internal Audit Department', 'Auditor/Coordinator I', 'Cindy Cornejo', '799-6360 x5080', '0991-5080', NULL, '051', '4235 McLeod Drive, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(211, 'Office of the Superintendent', 'Archive Committee', 'Member', 'Rick Watson', '799-5878', '0099-5508', NULL, '051', '4212 Eucalyptus Ave., Building 4, Las Vegas, NV 89121', '2025-07-16 23:34:40'),
(212, 'Office of the Deputy Superintendent of Business Operations', 'Office of the Deputy Superintendent of Business Operations', 'Deputy Superintendent of Business Operations', 'Felicia Gonzales', '799-5879', '0015-5550', NULL, '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(213, 'Office of the Deputy Superintendent of Business Operations', 'Office of the Deputy Superintendent of Business Operations', 'Executive Assistant, Administrative Secretary IV', 'TBD', '799-5879', '0015-5553', NULL, '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(214, 'Office of the Deputy Superintendent of Teaching and Learning', 'Office of the Deputy Superintendent of Teaching and Learning', 'Deputy Superintendent of Teaching and Learning', 'Dr. Jesse Welsh', '799-1236', '0015-5517', '855-3115', '100', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(215, 'Office of the Deputy Superintendent of Teaching and Learning', 'Office of the Deputy Superintendent of Teaching and Learning', 'Chief of Teaching and Learning Initiatives', 'Dr. Deanna Jaskolski', '799-1236', '0015-5550', '855-3115', '100', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(216, 'Office of the Deputy Superintendent of Teaching and Learning', 'Office of the Deputy Superintendent of Teaching and Learning', 'Director II', 'Jennifer Schulz', '799-1236', '0015-5570', '855-3115', '100', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(217, 'Office of the Deputy Superintendent of Teaching and Learning', 'Office of the Deputy Superintendent of Teaching and Learning', 'Executive Assistant, Administrative Secretary IV', 'Jamie M. Brown', '799-1236', '0015-5554', '855-3115', '100', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(218, 'Office of the Deputy Superintendent of Teaching and Learning', 'Office of the Deputy Superintendent of Teaching and Learning', 'Executive Assistant, Administrative Secretary IV', 'Yesenia Palma', '799-1236', '0015-5552', '855-3115', '100', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(219, 'Strategy Unit', 'Strategy Unit', 'Chief Strategy Officer', 'Kellie Kowal-Paul', '799-5310', '0015-5567', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(220, 'Strategy Unit', 'Strategy Unit', 'Director I', 'Peter Esler', '799-5310', '0015-5506', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(221, 'Strategy Unit', 'Strategy Unit', 'Director I, Strategy and Organizational', 'Aaron Franchek', '799-5310', '0015-5505', NULL, '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40'),
(222, 'Strategy Unit', 'Strategy Unit', 'Executive Assistant', 'Veronica Rivera', '799-5310', '0015-5517', '799-5125', '001', '5100 W. Sahara Avenue, Las Vegas, NV 89146', '2025-07-16 23:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_seq`
--

CREATE TABLE `contacts_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts_seq`
--

INSERT INTO `contacts_seq` (`next_val`) VALUES
(201);

-- --------------------------------------------------------

--
-- Table structure for table `contact_seq`
--

CREATE TABLE `contact_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_seq`
--

INSERT INTO `contact_seq` (`next_val`) VALUES
(51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
