-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 07:40 PM
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
-- Database: `eportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` bigint(20) NOT NULL,
  `description` varchar(256) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `description`, `user_id`, `type`, `date`, `time`, `status`) VALUES
(2, 'asdasd', 39, 'Events', '2024-08-29', '11:57:00', 0),
(3, 'Mag gagala', 39, 'ToDo', '2024-08-29', '23:01:00', 0),
(6, 'asdasd', 39, 'ToDo', '2024-09-07', '12:45:00', 0),
(8, 'asdasd', 1, 'ToDo', '2024-08-23', '13:58:00', 0),
(9, 'zxczx', 1, 'ToDo', '2024-08-30', '01:00:00', 0),
(10, 'asd', 1, 'Events', '2024-08-30', '13:59:00', 0),
(11, 'ngfnf', 1, 'Events', '2024-09-12', '22:12:00', 0),
(14, 'test', 44, 'Events', '2024-10-24', '21:36:00', 0),
(15, 'tes', 44, 'Events', '2024-10-09', '21:37:00', 0),
(16, 'tesz', 44, 'ToDo', '2024-10-23', '21:37:00', 0),
(18, 'fdf', 44, 'ToDo', '2024-10-16', '09:38:00', 0),
(21, 'test', 43, 'Events', '2024-10-10', '22:06:00', 0),
(22, 'asd', 43, 'ToDo', '2024-10-10', '22:06:00', 0),
(23, 'test', 43, 'Events', '2024-10-10', '22:07:00', 0),
(24, 'aasd', 43, 'ToDo', '2024-10-10', '10:08:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_details`
--

CREATE TABLE `college_details` (
  `college_id` bigint(20) NOT NULL,
  `college_name` varchar(256) NOT NULL,
  `college_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_details`
--

INSERT INTO `college_details` (`college_id`, `college_name`, `college_image`, `status`) VALUES
(13, 'college g', '66b48f109e683-doctor.png', 0),
(14, 'college B', '66b48f109e683-doctor.png', 0),
(15, 'new college', '66ed213b44b9a-greens.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_officers`
--

CREATE TABLE `college_officers` (
  `id` bigint(20) NOT NULL,
  `college_id` bigint(20) NOT NULL,
  `college_secretary_id` bigint(20) NOT NULL,
  `college_dean_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_officers`
--

INSERT INTO `college_officers` (`id`, `college_id`, `college_secretary_id`, `college_dean_id`, `status`) VALUES
(4, 14, 21, 20, 0),
(5, 13, 1, 23, 0),
(6, 15, 43, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `college_user_added`
--

CREATE TABLE `college_user_added` (
  `id` bigint(20) NOT NULL,
  `college_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_user_added`
--

INSERT INTO `college_user_added` (`id`, `college_id`, `user_id`, `status`) VALUES
(1, 15, 46, 0),
(2, 15, 47, 0),
(3, 15, 48, 0),
(4, 15, 49, 0),
(5, 15, 50, 0),
(6, 15, 51, 0),
(7, 15, 52, 0),
(8, 15, 53, 0),
(9, 15, 54, 0),
(10, 15, 55, 0),
(11, 15, 56, 0),
(12, 15, 57, 0),
(13, 15, 59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `college_id` bigint(20) NOT NULL,
  `secretary_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `image`, `department_id`, `college_id`, `secretary_id`, `status`) VALUES
(1, 'tite si ibonss', '66bc9898d50ad-1879x1056-The-Wolf-Among-Us-Wallpaper-HD-Wolf-Wallpaper.pro_-1536x863.jpg', 5, 13, 24, 0),
(2, 'course 2', '66bc98700ea38-asdczxczxkdkqjwkejqwelkqmweblqwmebqlwemqwne.jpg', 5, 13, 24, 0),
(3, 'Programming', '66bd8ba4c7556-a.jpg', 6, 13, 24, 0),
(4, 'Web Development', '66c0bc43897e0-bg1.png', 6, 13, 24, 0),
(5, 'course 2', '66c6eedad3c20-unnamed.png', 7, 14, 40, 0),
(6, 'new course new college', '66ed3cef0c01e-plant4.png', 8, 15, 46, 0),
(7, 'c1', '6703d593cd76a-logo_chicken.png', 9, 15, 51, 0),
(8, 'zzzzxc', '672e1921aaed1-bg.jpg', 9, 15, 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `credential_added`
--

CREATE TABLE `credential_added` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `file_type` text NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credential_added`
--

INSERT INTO `credential_added` (`id`, `user_id`, `title`, `description`, `image`, `file_type`, `date`, `status`) VALUES
(3, 53, 'gg', 'asdasd', '66ed9969717df-gg.jpg', 'image/jpeg', '2024-09-18', 0),
(5, 53, 'asd', 'q', '66ed99cac587f-gg.jpg', 'image/jpeg', '2024-09-05', 0),
(6, 51, 'qqqqqqqq', 'qqqq', '66edb24207f65-gg.jpg', 'image/jpeg', '2024-09-05', 0),
(8, 52, 'zxc', 'zxc', '66edb4299f005-sample_pdf.pdf', 'application/pdf', '2024-09-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `current_year_sem`
--

CREATE TABLE `current_year_sem` (
  `id` bigint(20) NOT NULL,
  `college_id` bigint(20) NOT NULL,
  `current_sem` varchar(256) NOT NULL,
  `current_year` varchar(256) NOT NULL,
  `current_status` varchar(256) NOT NULL DEFAULT 'current'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_year_sem`
--

INSERT INTO `current_year_sem` (`id`, `college_id`, `current_sem`, `current_year`, `current_status`) VALUES
(8, 13, '1st Semester', '2024-2025', 'current'),
(12, 14, '1st Semester', '2025-2026', 'history'),
(16, 14, '1st Semester', '2025-2026', 'history'),
(17, 14, '1st Semester', '2025-2026', 'history'),
(18, 14, '2nd Semester', '2025-2026', 'history'),
(19, 14, '1st Semester', '2026-2027', 'history'),
(20, 14, '1st Semester', '2024-2025', 'history'),
(21, 14, '2nd Semester', '2024-2025', 'current'),
(22, 15, '1st Semester', '2027-2028', 'history'),
(23, 15, '2nd Semester', '2027-2028', 'history'),
(24, 15, '1st Semester', '2028-2029', 'history'),
(25, 15, '2nd Semester', '2028-2029', 'history'),
(26, 15, '1st Semester', '2029-2030', 'history'),
(27, 15, '2nd Semester', '2029-2030', 'history'),
(28, 15, '1st Semester', '2030-2031', 'current');

-- --------------------------------------------------------

--
-- Table structure for table `deparment_section`
--

CREATE TABLE `deparment_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `yearlevel` varchar(256) NOT NULL,
  `semester` varchar(256) NOT NULL,
  `schoolyear` varchar(256) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deparment_section`
--

INSERT INTO `deparment_section` (`id`, `name`, `yearlevel`, `semester`, `schoolyear`, `department_id`, `status`) VALUES
(1, 'kjkjhzxczxc', '2nd Year', '1st Semester', '2024-2025', 6, 0),
(2, 'bsit3-1', '1st Year', '1st Semester', '2024-2025', 6, 0),
(3, 'BSIT 2A', '2nd Year', '1st Semester', '2024-2025', 6, 0),
(4, 'BSIT 1A', '1st Year', '1st Semester', '2024-2025', 6, 0),
(5, 'BSCS 3A', '3rd Year', '1st Semester', '2024-2025', 6, 0),
(6, 'asdasd', '2nd Year', '2nd Semester', '2024-2025', 6, 0),
(7, 'test section new', '1st Year', '1st Semester', '2027-2028', 8, 0),
(8, 'gname', '2nd Year', '1st Semester', '2027-2028', 8, 0),
(9, 'testerzxzz', '3rd Year', '1st Semester', '2027-2028', 9, 0),
(10, 'mike test', '1st Year', '1st Semester', '2027-2028', 9, 0),
(11, 'zxc', '1st Year', '1st Semester', '2027-2028', 9, 0),
(12, '3-A', '3rd Year', '1st Semester', '2027-2028', 9, 0),
(13, 'ggggggggggg', '2nd Year', '1st Semester', '2027-2028', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department_details`
--

CREATE TABLE `department_details` (
  `id` int(11) NOT NULL,
  `department_name` varchar(256) NOT NULL,
  `department_code` varchar(256) NOT NULL,
  `department_dean` bigint(20) NOT NULL,
  `department_secretary` bigint(20) NOT NULL,
  `department_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `depatment_college` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_details`
--

INSERT INTO `department_details` (`id`, `department_name`, `department_code`, `department_dean`, `department_secretary`, `department_image`, `status`, `depatment_college`) VALUES
(5, 'Bachelor of science in information technology', 'BSIT', 23, 25, '66b50111b760a-bgg1.png', 0, 13),
(6, 'Bachelor of Science in information system', 'BSIS', 22, 24, '66b4db01bd739-bg122.png', 0, 13),
(7, 'dep 2', 'dep 2', 41, 40, '66c6e9ff83486-c.jpg', 0, 14),
(8, 'z', 'Zxx', 45, 46, '66ed295ab7f93-greens.jpg', 0, 15),
(9, 'new department 2', 'NEW_DEPARTMENT_2', 56, 55, '66ed78494e3b3-icons9.png', 0, 15),
(10, 'testing', 'test', 59, 57, '672b68f6b4372-bg.jpg', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `department_faculty`
--

CREATE TABLE `department_faculty` (
  `id` bigint(20) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_faculty`
--

INSERT INTO `department_faculty` (`id`, `department_id`, `faculty_id`, `status`) VALUES
(1, 6, 36, 0),
(2, 6, 38, 0),
(3, 6, 39, 0),
(4, 7, 42, 0),
(5, 8, 47, 0),
(6, 8, 48, 0),
(7, 9, 53, 0),
(8, 9, 54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject`
--

CREATE TABLE `faculty_subject` (
  `id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `sy` varchar(256) NOT NULL,
  `sem` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject`
--

INSERT INTO `faculty_subject` (`id`, `faculty_id`, `subject_id`, `sy`, `sem`, `status`) VALUES
(18, 38, 3, '2025-2026', '1st Semester', 0),
(19, 38, 4, '2025-2026', '1st Semester', 0),
(25, 42, 5, '2025-2026', '1st Semester', 0),
(28, 48, 6, '2025-2026', '1st Semester', 0),
(31, 47, 6, '2027-2028', '1st Semester', 0),
(33, 47, 6, '2028-2029', '1st Semester', 0),
(37, 47, 6, '2030-2031', '1st Semester', 0),
(39, 54, 7, '2030-2031', '1st Semester', 0),
(40, 53, 7, '2030-2031', '1st Semester', 0),
(41, 53, 8, '2030-2031', '1st Semester', 0),
(42, 54, 8, '2030-2031', '1st Semester', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject_section`
--

CREATE TABLE `faculty_subject_section` (
  `id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `sy` varchar(256) NOT NULL,
  `sem` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subject_section`
--

INSERT INTO `faculty_subject_section` (`id`, `faculty_id`, `section_id`, `subject_id`, `sy`, `sem`, `status`) VALUES
(3, 39, 3, 4, '2024-2025', '1st Semester', 0),
(4, 39, 4, 4, '2024-2025', '1st Semester', 0),
(8, 39, 3, 3, '2024-2025', '1st Semester', 0),
(10, 38, 3, 3, '2024-2025', '1st Semester', 0),
(11, 38, 4, 3, '2024-2025', '1st Semester', 0),
(12, 38, 5, 3, '2024-2025', '1st Semester', 0),
(13, 38, 3, 4, '2024-2025', '1st Semester', 0),
(14, 38, 4, 4, '2024-2025', '1st Semester', 0),
(18, 48, 7, 6, '2024-2025', '1st Semester', 0),
(19, 47, 7, 6, '2024-2025', '1st Semester', 0),
(21, 47, 7, 6, '2027-2028', '1st Semester', 0),
(27, 47, 7, 6, '2028-2029', '1st Semester', 0),
(47, 54, 10, 7, '2030-2031', '1st Semester', 0),
(53, 54, 11, 8, '2030-2031', '1st Semester', 0),
(54, 53, 10, 8, '2030-2031', '1st Semester', 0),
(56, 53, 12, 8, '2030-2031', '1st Semester', 0),
(57, 53, 10, 7, '2030-2031', '1st Semester', 0),
(58, 53, 11, 7, '2030-2031', '1st Semester', 0),
(59, 53, 12, 7, '2030-2031', '1st Semester', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_uploads`
--

CREATE TABLE `faculty_uploads` (
  `id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `file` text NOT NULL,
  `datetime_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `semester` varchar(256) NOT NULL,
  `year` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_uploads`
--

INSERT INTO `faculty_uploads` (`id`, `faculty_id`, `subject_id`, `upload_id`, `section_id`, `file`, `datetime_created`, `status`, `semester`, `year`) VALUES
(13, 39, 3, 1, 3, '66c1ecc42a6c5-66bf07b5b2473-CAP_1_Group___3_-_Information-Guide-for-BulSU-Bustos-Students_FINAL.pdf', '2024-08-18 20:44:52', 0, '1st Semester', '2024-2025'),
(14, 39, 3, 4, 5, '66c1eccbea391-CAP_1_Group___3_-_Information-Guide-for-BulSU-Bustos-Students_FINAL.pdf', '2024-08-18 20:44:59', 0, '1st Semester', '2024-2025'),
(15, 39, 4, 3, 3, '66c1eef8a65d4-CAP_1_Group___3_-_Information-Guide-for-BulSU-Bustos-Students_FINAL.pdf', '2024-08-18 20:54:16', 0, '1st Semester', '2024-2025'),
(16, 39, 4, 2, 4, '66c1ef007cc8d-sample.pdf', '2024-08-18 20:54:24', 0, '1st Semester', '2024-2025'),
(17, 38, 3, 1, 4, '66c21df941e09-for-revise.pdf', '2024-08-19 00:14:49', 0, '1st Semester', '2024-2025'),
(18, 38, 3, 4, 3, '66c21e02e8031-CAP_1_Group___3_-_Information-Guide-for-BulSU-Bustos-Students_FINAL.pdf', '2024-08-19 00:14:58', 0, '1st Semester', '2024-2025'),
(19, 39, 3, 3, 3, '66c22c6e3e338-comment-new__1_.pdf', '2024-08-19 01:16:30', 0, '1st Semester', '2024-2025'),
(20, 39, 3, 2, 3, '66c22c74ebdb0-comment-new.pdf', '2024-08-19 01:16:36', 0, '1st Semester', '2024-2025'),
(21, 39, 3, 2, 5, '66c22c7e25c01-for-revise.pdf', '2024-08-19 01:16:46', 0, '1st Semester', '2024-2025'),
(22, 38, 4, 1, 4, '66c24769c0fb3-CAPSTONE-PROJECT-PROPOSAL-FILE-medyo-final.pdf', '2024-08-19 03:11:37', 0, '1st Semester', '2024-2025'),
(23, 38, 4, 2, 3, '66c2477c615d9-comment.pdf', '2024-08-19 03:11:56', 0, '1st Semester', '2024-2025'),
(24, 38, 3, 1, 3, '66c2f2b7a1aa8-for-revise.pdf', '2024-08-19 15:22:31', 0, '1st Semester', '2024-2025'),
(25, 38, 3, 1, 5, '66c2f2c61b0ff-for-revise.pdf', '2024-08-19 15:22:46', 0, '1st Semester', '2024-2025'),
(26, 47, 6, 3, 7, '66ed4636a16dc-kapepongtsa.pdf', '2024-09-20 17:53:58', 0, '1st Semester', '2027-2028'),
(29, 48, 6, 14, 7, '66ed4c6fc1390-invoicesample.pdf', '2024-09-20 18:14:19', 0, '1st Semester', '2027-2028'),
(31, 48, 6, 14, 7, '66ed4e1a7a744-User-Interface.pdf', '2024-09-20 18:25:28', 0, '2nd Semester', '2027-2028'),
(32, 47, 6, 14, 7, '66ed628a64f36-sample_pdf.pdf', '2024-09-20 19:54:50', 0, '2nd Semester', '2027-2028'),
(33, 47, 6, 11, 7, '66ed67b0c1836-User-Interface.pdf', '2024-09-20 20:16:48', 0, '2nd Semester', '2027-2028'),
(34, 54, 8, 6, 11, '673671c8302bc-sample_pdf.pdf', '2024-11-15 05:55:20', 0, '1st Semester', '2030-2031'),
(35, 54, 8, 3, 11, '67367445c85db-sample_pdf.pdf', '2024-11-15 06:05:57', 0, '1st Semester', '2030-2031'),
(36, 54, 8, 1, 11, '673674608ff98-sample_pdf.pdf', '2024-11-15 06:06:24', 0, '1st Semester', '2030-2031'),
(37, 54, 8, 10, 11, '6736746a0eee5-sample_pdf.pdf', '2024-11-15 06:06:34', 0, '1st Semester', '2030-2031'),
(38, 54, 8, 12, 11, '67367470d5fe3-sample_pdf.pdf', '2024-11-15 06:06:40', 0, '1st Semester', '2030-2031'),
(39, 54, 8, 15, 11, '673674769732b-sample_pdf.pdf', '2024-11-15 06:06:46', 0, '1st Semester', '2030-2031'),
(40, 54, 8, 2, 11, '6736747d7445f-sample_pdf.pdf', '2024-11-15 06:06:53', 0, '1st Semester', '2030-2031'),
(41, 54, 8, 4, 11, '67367482a17ff-sample_pdf.pdf', '2024-11-15 06:06:58', 0, '1st Semester', '2030-2031'),
(42, 54, 8, 8, 11, '673674880a8a4-sample_pdf.pdf', '2024-11-15 06:07:04', 0, '1st Semester', '2030-2031'),
(43, 54, 8, 11, 11, '67367490629cd-sample_pdf.pdf', '2024-11-15 06:07:12', 0, '1st Semester', '2030-2031'),
(44, 54, 8, 14, 11, '6737611386f60-invoicesample.pdf', '2024-11-15 06:07:20', 0, '1st Semester', '2030-2031'),
(45, 54, 7, 3, 10, '6736751418000-sample_pdf.pdf', '2024-11-15 06:09:24', 0, '1st Semester', '2030-2031'),
(46, 54, 7, 1, 10, '6736751949228-sample_pdf.pdf', '2024-11-15 06:09:29', 0, '1st Semester', '2030-2031'),
(47, 54, 7, 6, 10, '6736751e9344f-sample_pdf.pdf', '2024-11-15 06:09:34', 0, '1st Semester', '2030-2031'),
(48, 54, 7, 10, 10, '673675237dd26-sample_pdf.pdf', '2024-11-15 06:09:39', 0, '1st Semester', '2030-2031'),
(49, 54, 7, 12, 10, '67367528d9ef7-sample_pdf.pdf', '2024-11-15 06:09:44', 0, '1st Semester', '2030-2031'),
(50, 54, 7, 15, 10, '6736752eed22a-sample_pdf.pdf', '2024-11-15 06:09:50', 0, '1st Semester', '2030-2031'),
(51, 54, 7, 2, 10, '6736753c12756-sample_pdf.pdf', '2024-11-15 06:10:04', 0, '1st Semester', '2030-2031'),
(52, 54, 7, 4, 10, '67367542d6339-sample_pdf.pdf', '2024-11-15 06:10:10', 0, '1st Semester', '2030-2031'),
(53, 54, 7, 8, 10, '67378456df402-Modules_Quiz.pdf', '2024-11-15 18:26:46', 0, '1st Semester', '2030-2031'),
(60, 54, 7, 11, 10, '673784685cbee-kapepongtsa.pdf', '2024-11-16 01:27:04', 0, '1st Semester', '2030-2031'),
(61, 54, 7, 14, 10, '673784744f355-kapepongtsa.pdf', '2024-11-16 01:27:16', 0, '1st Semester', '2030-2031'),
(62, 53, 7, 3, 10, '67378c32bde25-kapepongtsa.pdf', '2024-11-16 02:00:18', 0, '1st Semester', '2030-2031'),
(63, 53, 8, 4, 10, '67378c950d579-kapepongtsa.pdf', '2024-11-16 02:01:57', 0, '1st Semester', '2030-2031'),
(64, 53, 7, 1, 10, '67378f4935429-kapepongtsa.pdf', '2024-11-16 02:13:29', 0, '1st Semester', '2030-2031'),
(65, 53, 8, 3, 12, '67378fe51a5cd-kapepongtsa.pdf', '2024-11-16 02:16:05', 0, '1st Semester', '2030-2031');

-- --------------------------------------------------------

--
-- Table structure for table `for_uploads`
--

CREATE TABLE `for_uploads` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL DEFAULT 'file.png',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `for_uploads`
--

INSERT INTO `for_uploads` (`id`, `name`, `image`, `status`) VALUES
(1, 'Attendance Sheets', 'file.png', 0),
(2, 'Grading Sheets', 'file.png', 0),
(3, 'Class Records', 'file.png', 0),
(4, 'Lab Module', 'file.png', 0),
(6, 'Student Outputs', 'file.png', 0),
(8, 'Lab Reports', 'file.png', 0),
(10, 'Exam Results Discussion', 'file.png', 0),
(11, 'Exam with TOS', 'file.png', 0),
(12, 'Consultation Slips', 'file.png', 0),
(14, 'Syllabus Acceptance', 'file.png', 0),
(15, 'Lecture Module', 'file.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `resume_upload`
--

CREATE TABLE `resume_upload` (
  `id` bigint(20) NOT NULL,
  `faculty_id` bigint(20) NOT NULL,
  `file` text NOT NULL,
  `file_type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume_upload`
--

INSERT INTO `resume_upload` (`id`, `faculty_id`, `file`, `file_type`, `status`) VALUES
(2, 36, '66edb3a90cb8b-sample_pdf.pdf', 'application/pdf', 0),
(3, 51, '66edb3a90cb8b-sample_pdf.pdf', 'application/pdf', 0),
(4, 52, '66edb3a90cb8b-sample_pdf.pdf', 'application/pdf', 0),
(5, 54, '6703d62007863-kapepongtsa.pdf', 'application/pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` bigint(20) NOT NULL,
  `code` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `secretary_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `code`, `name`, `image`, `secretary_id`, `course_id`, `status`) VALUES
(1, 'tsi', 'Programming fundamentals', '66bcbf7fb0563-deaftalk.png', 24, 2, 0),
(2, 'OOP', 'Object-oriented programming', '66bcbfb9c10b8-bg1.png', 24, 2, 0),
(3, 'CSS - 1', 'Cascading Style Sheet', '66c0bc7fc2a31-doctor.png', 24, 4, 0),
(4, 'BSIT-3-2', 'Computer programming', '66c0bc911e960-clip.png', 24, 3, 0),
(5, 'subject code', 'Subject Name', '66c6eef67379f-Gemini_Generated_Image_ab0ppxab0ppxab0p.jpeg', 40, 5, 0),
(6, 'subject_new_code', 'subject new', '66ed3d0f2b9ed-OIP.png', 46, 6, 0),
(7, 'sub1', 'sub1', '6703d5a00ef79-logo_chicken.png', 51, 7, 0),
(8, 'qqq', 'casd', '672e19382530d-462571929_841428821217793_6869436032257337556_n.jpg', 55, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `employment_id` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` varchar(256) NOT NULL DEFAULT 'faculty',
  `added` int(11) NOT NULL DEFAULT 0,
  `type` varchar(256) DEFAULT NULL,
  `verification_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employment_id`, `email`, `password`, `status`, `role`, `added`, `type`, `verification_code`) VALUES
(1, '1234', 'admin@admin', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'college_secretary', 0, 'Regular', ''),
(20, '321', 'bob@gmail.com', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'college_dean', 1, 'Regular', ''),
(21, '123', 'secretary@secretary', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'college_secretary', 1, 'Contractual', ''),
(22, '12345', 'depdean@dean', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'department_chairperson', 1, 'Contractual', ''),
(23, '123456', 'chairperson@chairperson', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'department_chairperson', 1, 'Regular', ''),
(24, '111', 'dep@secretary', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'department_secretary', 1, 'Regular', ''),
(25, '007', 'gancho@gmail.com', '$2y$10$g.el9OIenXwuNHAMlbKLWugBuEb5syJ/XFKej8wLdklsQ7lacaxg2', 0, 'college_dean', 1, 'Contractual', ''),
(36, '9876123', 'asdas123@gmail.com', '$2y$10$42Bhb3baxvUqrjuxvQhA2.T2TlrBWPKrYrAGv7H0JFp1gvExGBl/O', 0, 'faculty', 0, 'Regular', ''),
(38, '123123', 'facultyname@gmail.com', '$2y$10$iSK3VkOVNhqeGFzLGREoZe0teAGFGAo9vKBVZo8pCSgo3YdMHHhUC', 0, 'faculty', 0, 'Regular', ''),
(39, '6123123', 'dummy1stapador@gmail.com', '$2y$10$t6Qz6kjb7b./UJNyC8wfqOKhc1zV4xP.s0aTXbKqTBEdFWehfHITq', 0, 'faculty', 0, 'Regular', ''),
(40, '9873454', 'tt@gmail.com', '$2y$10$OoP6YLwsrCWH/7/7KTJYYOdGCCP8/evMeu2aufkVtyCWG1hPlcTfi', 0, 'department_secretary', 1, 'Regular', ''),
(41, '723423423', 'gg@gmail.com', '$2y$10$mRvRfoMFyg5yHB.2ozoLS.gcFnDE7voDrmIkItI91WLQ64e1PQOze', 0, 'department_chairperson', 1, 'Regular', ''),
(42, '7123123', 't@gmail.com', '$2y$10$uNx8h1l/IvBZDKXkN/DQpehoxdqPYsttUM18WgimbTHRPNX8UfW1C', 0, 'faculty', 0, 'Regular', ''),
(43, '00000', 'new_college_secretary@gmail.com', '$2y$10$BVeZHdC0jBtsu9xPZvCyiOJmQjfhOFHpoOVlvdfhtS7Vqy.WF3O1S', 0, 'college_secretary', 1, 'Regular', ''),
(44, '11111', 'new_college_chairperson@gmail.com', '$2y$10$w77FSL.rJCKnmGO5x8WVhOjrMdqIC1ndtbaY.987fc0YpMnuRc0wy', 0, 'college_dean', 1, 'Regular', ''),
(45, '22222', '22222@gmail.com', '$2y$10$pOg/fNVDVUOd/MC6laEtYeY/rHRgjDOANrJUfsd7xVtoPn7g2uL0q', 0, 'department_chairperson', 1, 'Regular', ''),
(46, '33333', '33333@gmail.com', '$2y$10$pOg/fNVDVUOd/MC6laEtYeY/rHRgjDOANrJUfsd7xVtoPn7g2uL0q', 1, 'department_secretary', 1, 'Regular', ''),
(47, '44444', '44444@gmail.com', '$2y$10$2n75eyPGkx1fwEKVbjpNkuzQGlxW92lu9sFj3Cv3gd9Ls7nLgQIKe', 0, 'faculty', 0, 'Contractual', ''),
(48, '55555', '55555@gmail.com', '$2y$10$tacpGFZYG6mw/MInSO4XpODs6k6CdZc35HaastXrdh7hfAewW1NH.', 0, 'faculty', 0, 'Regular', ''),
(49, '66666', 'new_college_secretary2@gmail.com', '$2y$10$.vyZpAWTjoSmWQZ/oWpBjuhtaCEo8Aftd9chNL5GQ3tkqZTqte3LS', 0, 'college_secretary', 0, 'Regular', ''),
(50, '77777', 'new_college_chairperson2@gmail.com', '$2y$10$IWrJkQRUzuZ0YKmKA5KLveHU0c9U1stsIBCc1txY6f8GM3/GNVOPa', 0, 'college_dean', 0, 'Regular', ''),
(51, '88888', '88888@gmail.com', '$2y$10$G4hhYltzsCQ31Q41N7bsQOp0WLEtFHE9eQRP.foxBilXyTo.3Gx4a', 1, 'department_secretary', 1, 'Regular', ''),
(52, '99999', '99999@gmail.com', '$2y$10$QHwes2tYat0Gd8qxj1KEnOtmjpSmH09SQ0UCJ/mM8sK8wAc8JOZda', 0, 'department_chairperson', 1, 'Regular', ''),
(53, '10101', '10101@gmail.com', '$2y$10$VPPr6sgOtyV14WxgFfT8cOFLOIXze5K.jR4nils7A2slL4oV4L6pm', 0, 'faculty', 0, 'Regular', ''),
(54, '20202', '20202@gmail.com', '$2y$10$FFlXfy.5.OOW8HGY61u1.exMIHE1bZoTmTa8b9XEt7mJdAHv33H0.', 0, 'faculty', 0, 'Regular', ''),
(55, '9191919191', '9191919191@gmail.com', '$2y$10$pmOqnNUiU67Bl1SN9MrMPuSSd1Xodt/6RT2EXG4rUZmipgP.FCeY.', 0, 'department_secretary', 1, 'Regular', ''),
(56, '5555123123', '5555123123@gmail.com', '$2y$10$iW6lAmT52QuxoqkaFgReje.i4P1QYy2vb78CJO9v3mo1TZesdc9Zy', 0, 'department_chairperson', 1, 'Regular', ''),
(57, '765412312', '765412312@cvsu.edu.ph', '$2y$10$IcabV2VRjVIuvgzhZHJvNuVIlE.ew36K1WNwl6T3vYWupzW4fWf4q', 0, 'department_secretary', 1, 'Regular', ''),
(59, '7234234234', '7234234234@cvsu.edu.ph', '$2y$10$I9X/eQgH5yic9HOngocWIOY5wFbNYSGeSwNfTvvwVTUe4CbHsTOiS', 0, 'department_chairperson', 1, 'Regular', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `birthday` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `specialization` varchar(256) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `address`, `birthday`, `phone`, `specialization`, `image`) VALUES
(20, 'Bob Joe', 'Tondo Manila', '2013-06-27', '09876543654', 'Programming', '66b37ad18c234-asdczxczxkdkqjwkejqwelkqmweblqwmebqlwemqwne.jpg'),
(21, 'secretary', 'address', '2024-08-07', '09123091822', 'Cashier', '66b465b4e893a-1879x1056-The-Wolf-Among-Us-Wallpaper-HD-Wolf-Wallpaper.pro_-1536x863.jpg'),
(22, 'asd', 'sad', '2024-08-12', '0987654322', 'Teacher', '66b46918ddc0a-micon.jfif'),
(23, 'chairperson', 'address', '2024-07-29', '0987654321', 'maupo', '66b46aa967e66-asdczxczxkdkqjwkejqwelkqmweblqwmebqlwemqwne.jpg'),
(24, 'department sssecretary', 'address', '2024-08-28', '098765432', 'magsulat', '66b46ad0bbac0-8be718cbbfe66f9b16d26691d3862621.jpg'),
(25, 'gancho', 'poiuytre', '2024-08-14', '0987654323', 'gangster', '66b46f6f5e36f-plant4.png'),
(36, 'tesasdas', 'sitio batong bakal', '2024-08-01', '09865432123', 'teaching', '66bd97ce4c5eb-a.jpg'),
(38, 'faculty is the name', 'j street', '2010-07-18', '09812312371', 'web development', '66c17ebc28a96-deaftalk.png'),
(39, 'faculty lang ako', 'yyy', '1997-06-25', '09234234223', 'programming', '66c183846e5cb-about.png'),
(40, 'tt', 'address', '2000-07-07', '091237182311', 'test', '66c6e97aa204e-unnamed.png'),
(41, 'chairperson 2', 'asdasd', '1995-02-16', '09182937192', 'qwe', '66c6e9c88c1fc-Gemini_Generated_Image_ab0ppxab0ppxab0p.jpeg'),
(42, 'tt', 'asd', '2024-08-08', '0987654321', 'a', '66c6f0c5744d5-oefk25h3.jpg'),
(43, 'New College Faculty Secretary', 'hatdog', '2024-09-10', '09126235532', 'matulog', '66ed1f7b93fda-gg.jpg'),
(44, 'new college chairperson', 'gg', '2024-09-04', '09123456789', 'kumain', '66ed2007ee47f-teacher.png'),
(45, 'new dep chperson', 'zxc', '2024-09-04', '09123456789', 'z', '66ed25c5b9d3c-stop.png'),
(46, '333333', '333333', '2024-09-11', '333333', '333333', '66ed28f7e9085-icons7.png'),
(47, 'New Facultyqqq', 'tester', '2024-09-04', '091283091111', 'Testeraaa', 'profile_66edc219508e53.51485454.png'),
(48, '55555', '55555', '2024-09-04', '55555', '55555', '66ed39deb52d6-asdczxczxkdkqjwkejqwelkqmweblqwmebqlwemqwne.jpg'),
(49, 'new college secretary 2', 'b', '2024-09-10', '09123456789', 'a', '66ed776e111c4-gg.jpg'),
(50, 'new college chairperson 2', 'b', '2024-09-03', '09123456789', 'a', '66ed779b14bf6-gg.jpg'),
(51, '88888z', 'b', '2024-09-11', '091234567882', 'Az', 'profile_66edc076a8bd07.68084030.jpg'),
(52, 'ako si pandoy', 'gf', '2024-09-04', '09182397162', '123123', 'profile_66edc109d01069.64163698.png'),
(53, '10101', 'a', '2024-09-02', '09123571823', 'z', '66ed7cc91c625-greens.jpg'),
(54, '20202', 'basd', '2024-09-10', '0912320202', 'a', '66ed7ce9e3a8c-book.jpg'),
(55, '9191919191', 'tester', '2024-10-18', '0912345678', 'tester', '6705369da816d-logo_chicken.png'),
(56, '5555123123', 'zxc', '2024-10-05', '09876541231', 'aa', '6705526e98ed3-bg.jpg'),
(57, '765412312', '765412312', '2024-10-30', '765412312', '765412312', '672b683767e0e-bg.jpg'),
(59, '7234234234', '7234234234', '2024-11-01', '7234234234', '7234234234', '672b687026f3d-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_details`
--
ALTER TABLE `college_details`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `college_officers`
--
ALTER TABLE `college_officers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`),
  ADD KEY `user_id` (`college_secretary_id`),
  ADD KEY `college_dean_id` (`college_dean_id`);

--
-- Indexes for table `college_user_added`
--
ALTER TABLE `college_user_added`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credential_added`
--
ALTER TABLE `credential_added`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_year_sem`
--
ALTER TABLE `current_year_sem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `deparment_section`
--
ALTER TABLE `deparment_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_details`
--
ALTER TABLE `department_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depatment_college` (`depatment_college`),
  ADD KEY `department_dean` (`department_dean`),
  ADD KEY `department_secretary` (`department_secretary`);

--
-- Indexes for table `department_faculty`
--
ALTER TABLE `department_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subject_section`
--
ALTER TABLE `faculty_subject_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_uploads`
--
ALTER TABLE `faculty_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `for_uploads`
--
ALTER TABLE `for_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_upload`
--
ALTER TABLE `resume_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `employment_id` (`employment_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `college_details`
--
ALTER TABLE `college_details`
  MODIFY `college_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `college_officers`
--
ALTER TABLE `college_officers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `college_user_added`
--
ALTER TABLE `college_user_added`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `credential_added`
--
ALTER TABLE `credential_added`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `current_year_sem`
--
ALTER TABLE `current_year_sem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `deparment_section`
--
ALTER TABLE `deparment_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department_details`
--
ALTER TABLE `department_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department_faculty`
--
ALTER TABLE `department_faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `faculty_subject_section`
--
ALTER TABLE `faculty_subject_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `faculty_uploads`
--
ALTER TABLE `faculty_uploads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `for_uploads`
--
ALTER TABLE `for_uploads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `resume_upload`
--
ALTER TABLE `resume_upload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `college_officers`
--
ALTER TABLE `college_officers`
  ADD CONSTRAINT `college_officers_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college_details` (`college_id`),
  ADD CONSTRAINT `college_officers_ibfk_2` FOREIGN KEY (`college_secretary_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `college_officers_ibfk_3` FOREIGN KEY (`college_dean_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `current_year_sem`
--
ALTER TABLE `current_year_sem`
  ADD CONSTRAINT `current_year_sem_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college_officers` (`college_id`);

--
-- Constraints for table `department_details`
--
ALTER TABLE `department_details`
  ADD CONSTRAINT `department_details_ibfk_1` FOREIGN KEY (`depatment_college`) REFERENCES `college_details` (`college_id`),
  ADD CONSTRAINT `department_details_ibfk_2` FOREIGN KEY (`department_dean`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `department_details_ibfk_3` FOREIGN KEY (`department_secretary`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
