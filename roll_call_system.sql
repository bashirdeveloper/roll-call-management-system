-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 02:22 PM
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
-- Database: `roll_call_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `date`, `status`) VALUES
(64, 1, '2024-10-21', 'present'),
(65, 2, '2024-10-21', 'absent'),
(66, 3, '2024-10-21', 'present'),
(67, 4, '2024-10-21', 'absent'),
(68, 5, '2024-10-21', 'absent'),
(69, 6, '2024-10-21', 'present'),
(70, 7, '2024-10-21', 'present'),
(71, 8, '2024-10-21', 'absent'),
(72, 9, '2024-10-21', 'present'),
(73, 10, '2024-10-21', 'present'),
(74, 11, '2024-10-21', 'present'),
(75, 12, '2024-10-21', 'present'),
(76, 13, '2024-10-21', 'absent'),
(77, 14, '2024-10-21', 'present'),
(78, 15, '2024-10-21', 'absent'),
(79, 16, '2024-10-21', 'present'),
(80, 17, '2024-10-21', 'absent'),
(81, 18, '2024-10-21', 'absent'),
(82, 19, '2024-10-21', 'present'),
(83, 20, '2024-10-21', 'present'),
(84, 21, '2024-10-21', 'present'),
(85, 22, '2024-10-21', 'absent'),
(86, 23, '2024-10-21', 'absent'),
(87, 24, '2024-10-21', 'present'),
(88, 25, '2024-10-21', 'present'),
(89, 26, '2024-10-21', 'present'),
(90, 27, '2024-10-21', 'absent'),
(91, 1, '2024-10-26', 'present'),
(92, 2, '2024-10-26', 'present'),
(93, 3, '2024-10-26', 'present'),
(94, 4, '2024-10-26', 'present'),
(95, 5, '2024-10-26', 'absent'),
(96, 6, '2024-10-26', 'present'),
(97, 7, '2024-10-26', 'present'),
(98, 8, '2024-10-26', 'present'),
(99, 9, '2024-10-26', 'present'),
(100, 10, '2024-10-26', 'absent'),
(101, 11, '2024-10-26', 'present'),
(102, 12, '2024-10-26', 'present'),
(103, 13, '2024-10-26', 'present'),
(104, 14, '2024-10-26', 'present'),
(105, 15, '2024-10-26', 'present'),
(106, 16, '2024-10-26', 'present'),
(107, 17, '2024-10-26', 'present'),
(108, 18, '2024-10-26', 'present'),
(109, 19, '2024-10-26', 'present'),
(110, 20, '2024-10-26', 'present'),
(111, 21, '2024-10-26', 'present'),
(112, 22, '2024-10-26', 'present'),
(113, 23, '2024-10-26', 'absent'),
(114, 24, '2024-10-26', 'present'),
(115, 25, '2024-10-26', 'present'),
(116, 26, '2024-10-26', 'present'),
(117, 27, '2024-10-26', 'present'),
(118, 1, '2024-11-24', 'present'),
(119, 2, '2024-11-24', 'present'),
(120, 3, '2024-11-24', 'present'),
(121, 4, '2024-11-24', 'present'),
(122, 5, '2024-11-24', 'present'),
(123, 6, '2024-11-24', 'present'),
(124, 7, '2024-11-24', 'present'),
(125, 8, '2024-11-24', 'present'),
(126, 9, '2024-11-24', 'present'),
(127, 10, '2024-11-24', 'present'),
(128, 11, '2024-11-24', 'present'),
(129, 12, '2024-11-24', 'present'),
(130, 13, '2024-11-24', 'present'),
(131, 14, '2024-11-24', 'present'),
(132, 15, '2024-11-24', 'present'),
(133, 16, '2024-11-24', 'present'),
(134, 17, '2024-11-24', 'present'),
(135, 18, '2024-11-24', 'present'),
(136, 19, '2024-11-24', 'present'),
(137, 20, '2024-11-24', 'present'),
(138, 21, '2024-11-24', 'present'),
(139, 22, '2024-11-24', 'present'),
(140, 23, '2024-11-24', 'present'),
(141, 24, '2024-11-24', 'present'),
(142, 25, '2024-11-24', 'present'),
(143, 26, '2024-11-24', 'present'),
(144, 27, '2024-11-24', 'present'),
(145, 28, '2024-11-24', 'present'),
(146, 29, '2024-11-24', 'present'),
(147, 30, '2024-11-24', 'present'),
(148, 31, '2024-11-24', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance2`
--

CREATE TABLE `attendance2` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance2`
--

INSERT INTO `attendance2` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2024-10-23', 'present'),
(2, 2, '2024-10-23', 'present'),
(3, 3, '2024-10-23', 'present'),
(4, 4, '2024-10-23', 'present'),
(5, 5, '2024-10-23', 'present'),
(6, 6, '2024-10-23', 'present'),
(7, 7, '2024-10-23', 'present'),
(8, 8, '2024-10-23', 'present'),
(9, 9, '2024-10-23', 'present'),
(10, 10, '2024-10-23', 'present'),
(11, 11, '2024-10-23', 'present'),
(12, 12, '2024-10-23', 'present'),
(13, 13, '2024-10-23', 'present'),
(14, 14, '2024-10-23', 'present'),
(15, 15, '2024-10-23', 'present'),
(16, 16, '2024-10-23', 'present'),
(17, 17, '2024-10-23', 'present'),
(18, 18, '2024-10-23', 'present'),
(19, 19, '2024-10-23', 'present'),
(20, 20, '2024-10-23', 'present'),
(21, 21, '2024-10-23', 'present'),
(22, 1, '2024-10-24', 'absent'),
(23, 2, '2024-10-24', 'present'),
(24, 3, '2024-10-24', 'absent'),
(25, 4, '2024-10-24', 'absent'),
(26, 5, '2024-10-24', 'present'),
(27, 6, '2024-10-24', 'present'),
(28, 7, '2024-10-24', 'present'),
(29, 8, '2024-10-24', 'present'),
(30, 9, '2024-10-24', 'present'),
(31, 10, '2024-10-24', 'present'),
(32, 11, '2024-10-24', 'absent'),
(33, 12, '2024-10-24', 'present'),
(34, 13, '2024-10-24', 'present'),
(35, 14, '2024-10-24', 'present'),
(36, 15, '2024-10-24', 'present'),
(37, 16, '2024-10-24', 'present'),
(38, 17, '2024-10-24', 'present'),
(39, 18, '2024-10-24', 'absent'),
(40, 19, '2024-10-24', 'present'),
(41, 20, '2024-10-24', 'present'),
(42, 21, '2024-10-24', 'absent'),
(43, 22, '2024-10-24', 'present'),
(44, 23, '2024-10-24', 'present'),
(45, 24, '2024-10-24', 'absent'),
(46, 25, '2024-10-24', 'present'),
(47, 22, '2024-10-23', 'present'),
(48, 23, '2024-10-23', 'present'),
(49, 24, '2024-10-23', 'present'),
(50, 25, '2024-10-23', 'present'),
(51, 26, '2024-10-23', 'present'),
(52, 27, '2024-10-23', 'present'),
(53, 1, '2024-11-04', 'absent'),
(54, 2, '2024-11-04', 'absent'),
(55, 3, '2024-11-04', 'absent'),
(56, 4, '2024-11-04', 'absent'),
(57, 5, '2024-11-04', 'absent'),
(58, 6, '2024-11-04', 'absent'),
(59, 7, '2024-11-04', 'absent'),
(60, 8, '2024-11-04', 'absent'),
(61, 9, '2024-11-04', 'absent'),
(62, 10, '2024-11-04', 'absent'),
(63, 11, '2024-11-04', 'absent'),
(64, 12, '2024-11-04', 'absent'),
(65, 13, '2024-11-04', 'absent'),
(66, 14, '2024-11-04', 'absent'),
(67, 15, '2024-11-04', 'present'),
(68, 16, '2024-11-04', 'absent'),
(69, 17, '2024-11-04', 'present'),
(70, 18, '2024-11-04', 'present'),
(71, 19, '2024-11-04', 'present'),
(72, 20, '2024-11-04', 'present'),
(73, 21, '2024-11-04', 'present'),
(74, 1, '2024-11-20', 'present'),
(75, 2, '2024-11-20', 'present'),
(76, 3, '2024-11-20', 'present'),
(77, 4, '2024-11-20', 'present'),
(78, 5, '2024-11-20', 'present'),
(79, 6, '2024-11-20', 'present'),
(80, 7, '2024-11-20', 'present'),
(81, 8, '2024-11-20', 'present'),
(82, 9, '2024-11-20', 'present'),
(83, 10, '2024-11-20', 'present'),
(84, 11, '2024-11-20', 'present'),
(85, 12, '2024-11-20', 'present'),
(86, 13, '2024-11-20', 'present'),
(87, 14, '2024-11-20', 'present'),
(88, 15, '2024-11-20', 'present'),
(89, 16, '2024-11-20', 'present'),
(90, 17, '2024-11-20', 'present'),
(91, 18, '2024-11-20', 'present'),
(92, 19, '2024-11-20', 'present'),
(93, 20, '2024-11-20', 'present'),
(94, 21, '2024-11-20', 'present'),
(95, 22, '2024-11-20', 'absent'),
(96, 1, '2024-12-15', 'present'),
(97, 2, '2024-12-15', 'absent'),
(98, 3, '2024-12-15', 'present'),
(99, 4, '2024-12-15', 'present'),
(100, 5, '2024-12-15', 'present'),
(101, 6, '2024-12-15', 'present'),
(102, 7, '2024-12-15', 'present'),
(103, 8, '2024-12-15', 'present'),
(104, 9, '2024-12-15', 'present'),
(105, 10, '2024-12-15', 'present'),
(106, 11, '2024-12-15', 'present'),
(107, 12, '2024-12-15', 'present'),
(108, 13, '2024-12-15', 'present'),
(109, 14, '2024-12-15', 'present'),
(110, 15, '2024-12-15', 'present'),
(111, 16, '2024-12-15', 'absent'),
(112, 17, '2024-12-15', 'present'),
(113, 18, '2024-12-15', 'absent'),
(114, 19, '2024-12-15', 'present'),
(115, 20, '2024-12-15', 'absent'),
(116, 21, '2024-12-15', 'present'),
(117, 22, '2024-12-15', 'present'),
(118, 23, '2024-12-15', 'present'),
(119, 24, '2024-12-15', 'present'),
(120, 25, '2024-12-15', 'present'),
(121, 26, '2024-12-15', 'present'),
(122, 27, '2024-12-15', 'present'),
(123, 28, '2024-12-15', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance3`
--

CREATE TABLE `attendance3` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance3`
--

INSERT INTO `attendance3` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2024-10-24', 'present'),
(2, 2, '2024-10-24', 'present'),
(3, 3, '2024-10-24', 'present'),
(4, 4, '2024-10-24', 'present'),
(5, 5, '2024-10-24', 'present'),
(6, 6, '2024-10-24', 'present'),
(7, 7, '2024-10-24', 'present'),
(8, 8, '2024-10-24', 'present'),
(9, 9, '2024-10-24', 'absent'),
(10, 10, '2024-10-24', 'present'),
(11, 11, '2024-10-24', 'present'),
(12, 12, '2024-10-24', 'absent'),
(13, 13, '2024-10-24', 'present'),
(14, 14, '2024-10-24', 'absent'),
(15, 15, '2024-10-24', 'present'),
(16, 16, '2024-10-24', 'present'),
(17, 17, '2024-10-24', 'present'),
(18, 18, '2024-10-24', 'present'),
(19, 19, '2024-10-24', 'present'),
(20, 20, '2024-10-24', 'present'),
(21, 21, '2024-10-24', 'absent'),
(22, 22, '2024-10-24', 'present'),
(23, 1, '2024-11-04', 'present'),
(24, 2, '2024-11-04', 'present'),
(25, 3, '2024-11-04', 'present'),
(26, 4, '2024-11-04', 'present'),
(27, 5, '2024-11-04', 'present'),
(28, 6, '2024-11-04', 'present'),
(29, 7, '2024-11-04', 'present'),
(30, 8, '2024-11-04', 'present'),
(31, 9, '2024-11-04', 'present'),
(32, 10, '2024-11-04', 'present'),
(33, 11, '2024-11-04', 'present'),
(34, 12, '2024-11-04', 'present'),
(35, 13, '2024-11-04', 'present'),
(36, 14, '2024-11-04', 'present'),
(37, 15, '2024-11-04', 'present'),
(38, 16, '2024-11-04', 'present'),
(39, 17, '2024-11-04', 'present'),
(40, 18, '2024-11-04', 'present'),
(41, 19, '2024-11-04', 'present'),
(42, 20, '2024-11-04', 'present'),
(43, 21, '2024-11-04', 'present'),
(44, 22, '2024-11-04', 'present'),
(45, 1, '2024-11-20', 'present'),
(46, 2, '2024-11-20', 'present'),
(47, 3, '2024-11-20', 'present'),
(48, 4, '2024-11-20', 'present'),
(49, 5, '2024-11-20', 'present'),
(50, 6, '2024-11-20', 'present'),
(51, 7, '2024-11-20', 'present'),
(52, 8, '2024-11-20', 'present'),
(53, 9, '2024-11-20', 'present'),
(54, 10, '2024-11-20', 'present'),
(55, 11, '2024-11-20', 'present'),
(56, 12, '2024-11-20', 'present'),
(57, 13, '2024-11-20', 'present'),
(58, 14, '2024-11-20', 'present'),
(59, 15, '2024-11-20', 'present'),
(60, 16, '2024-11-20', 'present'),
(61, 17, '2024-11-20', 'present'),
(62, 18, '2024-11-20', 'present'),
(63, 19, '2024-11-20', 'present'),
(64, 20, '2024-11-20', 'present'),
(65, 21, '2024-11-20', 'present'),
(66, 22, '2024-11-20', 'present'),
(67, 1, '2024-11-23', 'present'),
(68, 2, '2024-11-23', 'present'),
(69, 3, '2024-11-23', 'absent'),
(70, 4, '2024-11-23', 'present'),
(71, 5, '2024-11-23', 'present'),
(72, 6, '2024-11-23', 'present'),
(73, 7, '2024-11-23', 'present'),
(74, 8, '2024-11-23', 'present'),
(75, 9, '2024-11-23', 'absent'),
(76, 10, '2024-11-23', 'present'),
(77, 11, '2024-11-23', 'present'),
(78, 12, '2024-11-23', 'present'),
(79, 13, '2024-11-23', 'present'),
(80, 14, '2024-11-23', 'present'),
(81, 15, '2024-11-23', 'present'),
(82, 16, '2024-11-23', 'present'),
(83, 17, '2024-11-23', 'present'),
(84, 18, '2024-11-23', 'present'),
(85, 19, '2024-11-23', 'present'),
(86, 20, '2024-11-23', 'absent'),
(87, 21, '2024-11-23', 'present'),
(88, 22, '2024-11-23', 'present'),
(89, 1, '2024-11-24', 'present'),
(90, 2, '2024-11-24', 'present'),
(91, 3, '2024-11-24', 'present'),
(92, 4, '2024-11-24', 'present'),
(93, 5, '2024-11-24', 'present'),
(94, 6, '2024-11-24', 'present'),
(95, 7, '2024-11-24', 'present'),
(96, 8, '2024-11-24', 'present'),
(97, 9, '2024-11-24', 'present'),
(98, 10, '2024-11-24', 'present'),
(99, 11, '2024-11-24', 'present'),
(100, 12, '2024-11-24', 'present'),
(101, 13, '2024-11-24', 'present'),
(102, 14, '2024-11-24', 'present'),
(103, 15, '2024-11-24', 'present'),
(104, 16, '2024-11-24', 'present'),
(105, 17, '2024-11-24', 'present'),
(106, 18, '2024-11-24', 'present'),
(107, 19, '2024-11-24', 'present'),
(108, 20, '2024-11-24', 'present'),
(109, 21, '2024-11-24', 'present'),
(110, 22, '2024-11-24', 'present'),
(111, 23, '2024-11-24', 'present'),
(112, 1, '2024-11-25', 'present'),
(113, 2, '2024-11-25', 'present'),
(114, 3, '2024-11-25', 'present'),
(115, 4, '2024-11-25', 'present'),
(116, 5, '2024-11-25', 'present'),
(117, 6, '2024-11-25', 'present'),
(118, 7, '2024-11-25', 'present'),
(119, 8, '2024-11-25', 'present'),
(120, 9, '2024-11-25', 'present'),
(121, 10, '2024-11-25', 'present'),
(122, 11, '2024-11-25', 'present'),
(123, 12, '2024-11-25', 'present'),
(124, 13, '2024-11-25', 'present'),
(125, 14, '2024-11-25', 'present'),
(126, 15, '2024-11-25', 'present'),
(127, 16, '2024-11-25', 'present'),
(128, 17, '2024-11-25', 'present'),
(129, 18, '2024-11-25', 'present'),
(130, 19, '2024-11-25', 'present'),
(131, 20, '2024-11-25', 'present'),
(132, 21, '2024-11-25', 'present'),
(133, 22, '2024-11-25', 'present'),
(134, 23, '2024-11-25', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance4`
--

CREATE TABLE `attendance4` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance4`
--

INSERT INTO `attendance4` (`id`, `student_id`, `date`, `status`) VALUES
(59, 1, '2024-11-20', 'present'),
(60, 2, '2024-11-20', 'present'),
(61, 3, '2024-11-20', 'present'),
(62, 4, '2024-11-20', 'present'),
(63, 5, '2024-11-20', 'present'),
(64, 6, '2024-11-20', 'present'),
(65, 7, '2024-11-20', 'present'),
(66, 8, '2024-11-20', 'present'),
(67, 9, '2024-11-20', 'present'),
(68, 10, '2024-11-20', 'present'),
(69, 11, '2024-11-20', 'present'),
(70, 12, '2024-11-20', 'present'),
(71, 13, '2024-11-20', 'present'),
(72, 14, '2024-11-20', 'present'),
(73, 15, '2024-11-20', 'present'),
(74, 16, '2024-11-20', 'present'),
(75, 17, '2024-11-20', 'present'),
(76, 18, '2024-11-20', 'present'),
(77, 19, '2024-11-20', 'present'),
(78, 20, '2024-11-20', 'present'),
(79, 21, '2024-11-20', 'present'),
(80, 22, '2024-11-20', 'present'),
(81, 23, '2024-11-20', 'present'),
(82, 24, '2024-11-20', 'present'),
(83, 25, '2024-11-20', 'present'),
(84, 26, '2024-11-20', 'present'),
(85, 27, '2024-11-20', 'present'),
(88, 1, '2024-11-22', 'present'),
(89, 2, '2024-11-22', 'present'),
(90, 3, '2024-11-22', 'present'),
(91, 4, '2024-11-22', 'present'),
(92, 5, '2024-11-22', 'present'),
(93, 6, '2024-11-22', 'present'),
(94, 7, '2024-11-22', 'present'),
(95, 8, '2024-11-22', 'present'),
(96, 9, '2024-11-22', 'present'),
(97, 10, '2024-11-22', 'present'),
(98, 11, '2024-11-22', 'present'),
(99, 12, '2024-11-22', 'present'),
(100, 13, '2024-11-22', 'present'),
(101, 14, '2024-11-22', 'present'),
(102, 15, '2024-11-22', 'present'),
(103, 16, '2024-11-22', 'present'),
(104, 17, '2024-11-22', 'present'),
(105, 18, '2024-11-22', 'present'),
(106, 19, '2024-11-22', 'present'),
(107, 20, '2024-11-22', 'present'),
(108, 21, '2024-11-22', 'present'),
(109, 22, '2024-11-22', 'present'),
(110, 23, '2024-11-22', 'present'),
(111, 24, '2024-11-22', 'present'),
(112, 25, '2024-11-22', 'present'),
(113, 26, '2024-11-22', 'present'),
(114, 27, '2024-11-22', 'present'),
(117, 1, '2024-11-25', 'present'),
(118, 2, '2024-11-25', 'present'),
(119, 3, '2024-11-25', 'present'),
(120, 4, '2024-11-25', 'present'),
(121, 5, '2024-11-25', 'present'),
(122, 6, '2024-11-25', 'present'),
(123, 7, '2024-11-25', 'present'),
(124, 8, '2024-11-25', 'present'),
(125, 9, '2024-11-25', 'present'),
(126, 10, '2024-11-25', 'present'),
(127, 11, '2024-11-25', 'present'),
(128, 12, '2024-11-25', 'present'),
(129, 13, '2024-11-25', 'present'),
(130, 14, '2024-11-25', 'present'),
(131, 15, '2024-11-25', 'present'),
(132, 16, '2024-11-25', 'present'),
(133, 17, '2024-11-25', 'present'),
(134, 18, '2024-11-25', 'present'),
(135, 19, '2024-11-25', 'present'),
(136, 20, '2024-11-25', 'present'),
(137, 21, '2024-11-25', 'present'),
(138, 22, '2024-11-25', 'present'),
(139, 23, '2024-11-25', 'present'),
(140, 24, '2024-11-25', 'present'),
(141, 25, '2024-11-25', 'absent'),
(142, 26, '2024-11-25', 'present'),
(143, 27, '2024-11-25', 'present'),
(144, 28, '2024-11-25', 'present'),
(145, 29, '2024-11-25', 'present'),
(146, 30, '2024-11-25', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `attendance5`
--

CREATE TABLE `attendance5` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance5`
--

INSERT INTO `attendance5` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2024-10-25', 'present'),
(2, 2, '2024-10-25', 'present'),
(3, 3, '2024-10-25', 'present'),
(4, 4, '2024-10-25', 'present'),
(5, 5, '2024-10-25', 'present'),
(6, 6, '2024-10-25', 'present'),
(7, 7, '2024-10-25', 'present'),
(8, 8, '2024-10-25', 'present'),
(9, 9, '2024-10-25', 'present'),
(10, 10, '2024-10-25', 'present'),
(11, 11, '2024-10-25', 'present'),
(12, 12, '2024-10-25', 'present'),
(13, 13, '2024-10-25', 'present'),
(14, 14, '2024-10-25', 'present'),
(15, 15, '2024-10-25', 'present'),
(16, 16, '2024-10-25', 'present'),
(17, 17, '2024-10-25', 'present'),
(18, 18, '2024-10-25', 'present'),
(19, 19, '2024-10-25', 'present'),
(20, 20, '2024-10-25', 'present'),
(21, 21, '2024-10-25', 'present'),
(22, 22, '2024-10-25', 'present'),
(23, 23, '2024-10-25', 'present'),
(24, 24, '2024-10-25', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance6`
--

CREATE TABLE `attendance6` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance6`
--

INSERT INTO `attendance6` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2024-10-24', 'present'),
(2, 2, '2024-10-24', 'present'),
(3, 3, '2024-10-24', 'present'),
(4, 4, '2024-10-24', 'absent'),
(5, 5, '2024-10-24', 'present'),
(6, 6, '2024-10-24', 'present'),
(7, 7, '2024-10-24', 'present'),
(8, 8, '2024-10-24', 'present'),
(9, 9, '2024-10-24', 'present'),
(10, 10, '2024-10-24', 'present'),
(11, 11, '2024-10-24', 'present'),
(12, 12, '2024-10-24', 'absent'),
(13, 13, '2024-10-24', 'present'),
(14, 14, '2024-10-24', 'present'),
(15, 15, '2024-10-24', 'present'),
(16, 16, '2024-10-24', 'present'),
(17, 17, '2024-10-24', 'present'),
(18, 18, '2024-10-24', 'absent'),
(19, 19, '2024-10-24', 'present'),
(20, 20, '2024-10-24', 'present'),
(21, 21, '2024-10-24', 'absent'),
(22, 22, '2024-10-24', 'present'),
(23, 23, '2024-10-24', 'present'),
(24, 24, '2024-10-24', 'present'),
(25, 25, '2024-10-24', 'present'),
(26, 26, '2024-10-24', 'present'),
(27, 27, '2024-10-24', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance7`
--

CREATE TABLE `attendance7` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('present','absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance7`
--

INSERT INTO `attendance7` (`id`, `student_id`, `date`, `status`) VALUES
(1, 1, '2024-10-24', 'present'),
(2, 2, '2024-10-24', 'present'),
(3, 3, '2024-10-24', 'present'),
(4, 4, '2024-10-24', 'present'),
(5, 5, '2024-10-24', 'present'),
(6, 6, '2024-10-24', 'present'),
(7, 7, '2024-10-24', 'present'),
(8, 8, '2024-10-24', 'present'),
(9, 9, '2024-10-24', 'present'),
(10, 10, '2024-10-24', 'present'),
(11, 11, '2024-10-24', 'present'),
(12, 12, '2024-10-24', 'present'),
(13, 13, '2024-10-24', 'present'),
(14, 14, '2024-10-24', 'present'),
(15, 15, '2024-10-24', 'present'),
(16, 16, '2024-10-24', 'present'),
(17, 17, '2024-10-24', 'present'),
(18, 18, '2024-10-24', 'present'),
(19, 19, '2024-10-24', 'present'),
(20, 20, '2024-10-24', 'present'),
(21, 21, '2024-10-24', 'present'),
(22, 22, '2024-10-24', 'present'),
(23, 23, '2024-10-24', 'present'),
(24, 24, '2024-10-24', 'present'),
(25, 25, '2024-10-24', 'present'),
(26, 1, '2024-11-20', 'present'),
(27, 2, '2024-11-20', 'present'),
(28, 3, '2024-11-20', 'present'),
(29, 4, '2024-11-20', 'present'),
(30, 5, '2024-11-20', 'present'),
(31, 6, '2024-11-20', 'present'),
(32, 7, '2024-11-20', 'present'),
(33, 8, '2024-11-20', 'present'),
(34, 9, '2024-11-20', 'present'),
(35, 10, '2024-11-20', 'present'),
(36, 11, '2024-11-20', 'present'),
(37, 12, '2024-11-20', 'present'),
(38, 13, '2024-11-20', 'absent'),
(39, 14, '2024-11-20', 'present'),
(40, 15, '2024-11-20', 'present'),
(41, 16, '2024-11-20', 'present'),
(42, 17, '2024-11-20', 'absent'),
(43, 18, '2024-11-20', 'present'),
(44, 19, '2024-11-20', 'present'),
(45, 20, '2024-11-20', 'present'),
(46, 21, '2024-11-20', 'present'),
(47, 22, '2024-11-20', 'present'),
(48, 23, '2024-11-20', 'present'),
(49, 24, '2024-11-20', 'present'),
(50, 25, '2024-11-20', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `primary2`
--

CREATE TABLE `primary2` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary2`
--

INSERT INTO `primary2` (`id`, `first_name`, `last_name`) VALUES
(1, 'ABIAR', 'TONG AKEEN1'),
(2, 'AKEEN', 'TONG AKEEN'),
(3, 'ALAA', 'ZAKARIA ALI'),
(4, 'ARINAITWE', 'KATRINA'),
(5, 'AROP', 'THONCHOL GACH'),
(6, 'ASASIRA', 'GERADINE'),
(7, 'ASIIMWE', 'BALDWIN GONZAGA'),
(8, 'AYEBAZIBWE', 'ANTHONY REAGAN'),
(9, 'BATTE', 'RAMONA BABIRYE'),
(10, 'CALEB', 'GANZA'),
(11, 'CARMEN', 'LUTAAYA'),
(12, 'ERIANNAH', 'ASINGUZA PRISCA'),
(13, 'FRANKA', 'KISTON'),
(14, 'KARUNGI', 'SOPHIE AMANDA'),
(15, 'KATENDE', 'AKRAM'),
(16, 'KAWALYA', 'GUEN NATHANEIL'),
(17, 'KHAYINZA', 'JOSELYNE MASABA'),
(18, 'KLAIN', 'WILLIAMS NAMIREMBE'),
(19, 'LEILAH', 'JAWHARAH KAGIRI'),
(20, 'LILIAN', 'FAVOR NAKAYE'),
(21, 'LUGEMWA', 'DRUSCILLA'),
(22, 'Adam', 'Ruel'),
(23, 'KASIRYE', 'SHAFEEQ'),
(24, 'KASIRYE', 'SHAFEEQ'),
(25, 'KASIRYE', 'SHAFEEQ'),
(26, 'KASIRYE', 'SHAFEEQ'),
(27, 'Adam', 'JOHN'),
(28, 'Adam', 'JOHN');

-- --------------------------------------------------------

--
-- Table structure for table `primary3`
--

CREATE TABLE `primary3` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary3`
--

INSERT INTO `primary3` (`id`, `first_name`, `last_name`) VALUES
(1, 'ERIANNH', 'ASINGUZA PRISCA'),
(2, 'FRANKA', 'KISTON'),
(3, 'KARUNGI', 'SOPHIE AMANDA'),
(5, 'KAWALYA', 'GUEN NATHANEIL'),
(6, 'KHAYINZA', 'JOSELYNE MASABA'),
(7, 'KLAIN', 'WILLIAMS NAMIREMBE'),
(8, 'LEILAH', 'JAWHARAH KAGIRI'),
(9, 'LILIAN', 'FAVOR NAKAYE'),
(10, 'LUGEMWA', 'DRUSCILLA'),
(11, 'MALE', 'ABDALLAH'),
(12, 'MUBIRU', 'BBOSA SAIFULLAH'),
(13, 'MUBIRU', 'ETHAN ELIJAH'),
(14, 'NSUBUGA', 'SHUQRAN BADR'),
(15, 'RAYHAN', 'JOSHUA MUGAGGA'),
(16, 'RUKIA', 'RASHID'),
(17, 'RUNDE', 'DAK'),
(18, 'SEGAWA', 'JOHN MARY'),
(19, 'SWEETIE', 'RAIMA AHMED'),
(20, 'TONGUN', 'JOEL'),
(21, 'TUMWEBAZE', 'BARNETT'),
(22, 'WANI', 'JAMES LAKO NATANA'),
(23, 'KASIRYE', 'SHAFEEQ'),
(24, 'KASIRYE', 'SHAFEEQ'),
(25, 'NKARUBA ', 'BASHIR');

-- --------------------------------------------------------

--
-- Table structure for table `primary4`
--

CREATE TABLE `primary4` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary4`
--

INSERT INTO `primary4` (`id`, `first_name`, `last_name`) VALUES
(1, 'ANAIAH', 'JESSICA MUKASA'),
(2, 'ANGELLA', 'IMIRI ARIYO'),
(3, 'AYAH', 'ZAKARIA ALI'),
(4, 'BARUBAYO', 'GENEI MAWA'),
(5, 'BATTE', 'RODNEY KATO'),
(6, 'CHLOE', 'JANEL KYOBE'),
(7, 'DANOLD', 'NOBLE ARINAITWE'),
(8, 'ELISHEABA', 'ITUNGO'),
(9, 'GIDEON', 'SSERUNKUUMA'),
(10, 'HANNAH', 'YUSUF'),
(11, 'JAAZIEL', 'ENOCK OGWANG'),
(12, 'JOEL', 'TOMBE JAMES APOLLO'),
(13, 'KALUNGI', 'SHARIQUE'),
(14, 'KEBIRUNGI', 'KEILAH SHAMMAH'),
(15, 'KIBIRANGO', 'JASMINE'),
(16, 'KIKATI', 'SHAYAL'),
(17, 'KOBUSINGYE', 'IMMACULATE'),
(18, 'KUNJA', 'MALCOM'),
(19, 'LAIQAH', 'IBRAHIM NAMWIRYA'),
(20, 'MARIAM', 'BIKO ISMAIL'),
(21, 'MATOVU', 'MALIK'),
(22, 'MYLA', 'MUGARURA'),
(23, 'NABAKIIBI', 'LOY ABIGAIL'),
(24, 'NAGAI', 'GENESIS PEACE'),
(25, 'NAMBOGO', 'HUMAYRA'),
(26, 'Adam', 'Ruel'),
(27, 'Adam', 'Ruel'),
(28, 'Adam', 'Ruel'),
(29, 'Adam', 'Ruel'),
(30, 'KARAMBA', 'JOSHUA'),
(31, 'NKARUBA ', 'BASHIR');

-- --------------------------------------------------------

--
-- Table structure for table `primary5`
--

CREATE TABLE `primary5` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary5`
--

INSERT INTO `primary5` (`id`, `first_name`, `last_name`) VALUES
(1, 'ADEL', 'SEMAKULA'),
(2, 'AGUIL', 'AKEEN LUAL'),
(3, 'AINE', 'JANELL KIMBERLY'),
(4, 'BBOSA', 'WYCLIF'),
(5, 'CUBAKA', 'JOSEPH'),
(6, 'EMMANUELLA', 'KISHA NAYEBARE'),
(7, 'GAYLE', 'BAMUTIIRE'),
(8, 'HATIHA', 'NATALIA BONG'),
(9, 'IGALE', 'LORO'),
(10, 'ISRAEL', 'PAUL MUGABI SEBUGUZI'),
(11, 'JOEL', 'ENGOBE LAMANYA SOLOMON'),
(12, 'KIDEN', 'KEVIN JANSUK'),
(13, 'KITIIBWA', 'TENDO'),
(14, 'MARIAL', 'NATHAN DAK'),
(15, 'MAT', 'KHOL'),
(16, 'MUKAMA', 'ADEANA'),
(17, 'MUPUYA', 'JOSEPH MASABA'),
(18, 'MWANGI', 'ASHLEY WANGARE'),
(19, 'MWANJE', 'MERLIN CHARLES'),
(20, 'NAJJINGO', 'HUDAH'),
(21, 'NAJJUMA', 'SHADIA KATENDE'),
(22, 'NALWOGA', 'MARIA LOUISA'),
(23, 'NAMUGALU', 'LORENA'),
(24, 'NAMWANJE', 'AGNES'),
(25, 'MALUK', 'JOHN'),
(26, 'MALUK', 'JOHN'),
(27, 'MALUK', 'JOHN'),
(28, 'MALUK', 'JOHN'),
(29, 'MALUK', 'JOHN'),
(30, 'MALUK', 'JOHN'),
(31, 'KASIRYE', 'SHAFEEQ'),
(32, 'KASIRYE', 'SHAFEEQ'),
(33, 'KASIRYE', 'SHAFEEQ'),
(34, 'KASIRYE', 'SHAFEEQ'),
(35, 'KASIRYE', 'SHAFEEQ'),
(36, 'KASIRYE', 'SHAFEEQ'),
(37, 'KASIRYE', 'SHAFEEQ'),
(38, 'KASIRYE', 'SHAFEEQ'),
(39, 'KASIRYE', 'SHAFEEQ'),
(40, 'KASIRYE', 'SHAFEEQ'),
(41, 'KASIRYE', 'SHAFEEQ');

-- --------------------------------------------------------

--
-- Table structure for table `primary6`
--

CREATE TABLE `primary6` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary6`
--

INSERT INTO `primary6` (`id`, `first_name`, `last_name`) VALUES
(1, 'AFEEF', 'HAFIZ KAAWAASE'),
(2, 'AMIIRA', 'HUSNA MBABAZI'),
(3, 'ANGELLA', 'KADI MITENG'),
(4, 'AROP', 'GODFREY WILLIAM'),
(5, 'BOJJO', 'MARTIN'),
(6, 'HASNA', 'SSETAALA'),
(7, 'HILDE', 'MIDDAY OJJA BOSCO'),
(8, 'KALUNGI', 'AIDEN'),
(9, 'KEISHA', 'RUDU'),
(10, 'LUKYAMUZI', 'CRUZ DANIEL'),
(11, 'MANUELLA', 'NNUSU KIRABO'),
(12, 'MARTINAH', 'SHINE NAHUMUZA'),
(13, 'MUGABI', 'GAYOLA'),
(14, 'MULUNGI', 'STEPHANIE KAMANYE'),
(15, 'NABATANZI', 'SARAH'),
(16, 'NAMITALA', 'HANNAH KAKOMO'),
(17, 'NAMULIIKA', 'ALBA ROSE'),
(18, 'NAMYALO', 'BADRU SHARTRA'),
(19, 'NICOLE', 'NIMUSIIMA'),
(20, 'NYANZI', 'ERIAS MWESIGWA'),
(21, 'PERCY', 'ALIMUNGIZA JOSHUA'),
(22, 'REBEKAH', 'ABIGAIL MASABA'),
(23, 'RYAN', 'MASEMBE'),
(24, 'SSEKALEGA', 'BARNABAS'),
(25, 'SSEMANDA', 'HAKIM SSEMPIJJA'),
(26, 'SULAIMAN', 'MUHAMMAD'),
(27, 'WAISWA', 'MAXWELL'),
(28, 'MALUK', 'JOHN'),
(29, 'MALUK', 'JOHN');

-- --------------------------------------------------------

--
-- Table structure for table `primary7`
--

CREATE TABLE `primary7` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primary7`
--

INSERT INTO `primary7` (`id`, `first_name`, `last_name`) VALUES
(1, 'AINEMBABAZI', 'VIVIAN ENID'),
(2, 'AKIO', 'PROSPER KISTON'),
(3, 'ALEK', 'JUMA KHALIL'),
(4, 'AMADI', 'SAMUEL MUKASA'),
(5, 'ARUHO', 'EVANDER'),
(6, 'BWANIKA', 'RAND'),
(7, 'CHUMO', 'REAGAN'),
(9, 'EVANGELINE', 'NYANGORO'),
(10, 'FARIDAH', 'KAGIRI'),
(11, 'HASHIM', 'KAMULALI'),
(12, 'INEEZA', 'TRACY NSABAMUHIIRWE'),
(13, 'KASULE', 'ALMAH'),
(14, 'KAYITA', 'ALPHA KYAMBADDE'),
(15, 'MAGITAH', 'RASHIDAH TABAN'),
(16, 'MALHUK', 'JOHN'),
(17, 'NAJJUKA', 'HANNAH'),
(18, 'NAMITALA', 'NICOLE KIRABO'),
(19, 'NANTONGO', 'JULIA TENDO'),
(20, 'NUWARINDA', 'SWEETNY MARILYN'),
(21, 'OWEN', 'MAX CHONG'),
(22, 'RYAN', 'ADRIAN LUBAALE'),
(23, 'SALIM', 'ABUBAKAR AHMED'),
(24, 'THON', 'MALEK THON'),
(25, 'YAK', 'RING RIAK'),
(26, 'MALUK', 'JOHN');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`) VALUES
(1, 'John', 'Doe12'),
(2, 'Jane', 'Smith12'),
(3, 'Emily', 'cow'),
(4, 'AARON', 'KATO KATEREGGA'),
(5, 'AIMAN', 'BAGOTH'),
(6, 'AINEMBABAZI', 'MARY LYNETTE'),
(7, 'ARIYO', 'PETER ODUNG123'),
(8, 'AYLAH', 'HAFIZAH SSIMBWA'),
(9, 'BAKUZE', 'NOEL CUBAKA'),
(10, 'DENG', 'JACKSON'),
(11, 'KAAKYO', 'ELSA'),
(12, 'KALUNGI', 'SHALLINE'),
(13, 'KWAGALA', 'FORTUNATE'),
(14, 'KYEYUNE', 'FELICIA IMMACULATE'),
(15, 'KYOGONZA', 'EDRIANAH'),
(16, 'LUGEMWA', 'DARIUS'),
(17, 'MABIRIZI', 'JORUM SEEDS'),
(18, 'MUGABI', 'GILANA'),
(19, 'MUKASA', 'SOLOMON EMMA'),
(20, 'NAAVA', 'HUSNA RASHID'),
(21, 'NAKAYENGA', 'PRINCES PEYTON'),
(22, 'NAMAKULA', 'AMIRA MIMI'),
(23, 'NAMATOVU', 'RANIAH JOWERIA'),
(24, 'PONI', 'PHILLIP'),
(25, 'SABRINA', 'ALUEL AKOT'),
(26, 'SENAY', 'MATEWOS'),
(27, 'WAKABI', 'PAULETTE MARY'),
(28, 'MALUK', 'JOHN'),
(29, 'KASIRYE', 'SHAFEEQ'),
(30, 'KASIRYE', 'SHAFEEQ'),
(31, 'KASIRYE', 'SHAFEEQ1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'e3274be5c857fb42ab72d786e281b4b8', 'admin'),
(2, 'bashir', 'd440aed189a13ff970dac7e7e8f987b2', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance2`
--
ALTER TABLE `attendance2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance3`
--
ALTER TABLE `attendance3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance4`
--
ALTER TABLE `attendance4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance5`
--
ALTER TABLE `attendance5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance6`
--
ALTER TABLE `attendance6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance7`
--
ALTER TABLE `attendance7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `primary2`
--
ALTER TABLE `primary2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary3`
--
ALTER TABLE `primary3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary4`
--
ALTER TABLE `primary4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary5`
--
ALTER TABLE `primary5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary6`
--
ALTER TABLE `primary6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary7`
--
ALTER TABLE `primary7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `attendance2`
--
ALTER TABLE `attendance2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `attendance3`
--
ALTER TABLE `attendance3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `attendance4`
--
ALTER TABLE `attendance4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `attendance5`
--
ALTER TABLE `attendance5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `attendance6`
--
ALTER TABLE `attendance6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attendance7`
--
ALTER TABLE `attendance7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `primary2`
--
ALTER TABLE `primary2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `primary3`
--
ALTER TABLE `primary3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `primary4`
--
ALTER TABLE `primary4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `primary5`
--
ALTER TABLE `primary5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `primary6`
--
ALTER TABLE `primary6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `primary7`
--
ALTER TABLE `primary7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance2`
--
ALTER TABLE `attendance2`
  ADD CONSTRAINT `attendance2_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance3`
--
ALTER TABLE `attendance3`
  ADD CONSTRAINT `attendance3_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance4`
--
ALTER TABLE `attendance4`
  ADD CONSTRAINT `attendance4_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance5`
--
ALTER TABLE `attendance5`
  ADD CONSTRAINT `attendance5_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance6`
--
ALTER TABLE `attendance6`
  ADD CONSTRAINT `attendance6_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance7`
--
ALTER TABLE `attendance7`
  ADD CONSTRAINT `attendance7_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
