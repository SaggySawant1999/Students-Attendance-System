-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2020 at 05:37 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendancesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(25) DEFAULT NULL,
  `admin_email` varchar(25) DEFAULT NULL,
  `admin_password` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'sagar', 'sagar@gmail.com', 'sagar');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE IF NOT EXISTS `attendance_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_id` int(11) DEFAULT NULL,
  `enroll_id` int(11) DEFAULT NULL,
  `attendance_status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lecture_id` (`lecture_id`),
  KEY `enroll_id` (`enroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `attendance_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE IF NOT EXISTS `faculty_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(25) DEFAULT NULL,
  `faculty_email` varchar(25) DEFAULT NULL,
  `faculty_contact` varchar(12) DEFAULT NULL,
  `faculty_password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faculty_contact` (`faculty_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `faculty_name`, `faculty_email`, `faculty_contact`, `faculty_password`) VALUES
(1, 'any', 'sagar@gmail.com', '13456789', 'root'),
(2, 'sagar', 'sagar@gmail.com', '123456', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subjects`
--

CREATE TABLE IF NOT EXISTS `faculty_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `faculty_subjects`
--


-- --------------------------------------------------------

--
-- Table structure for table `lecture_details`
--

CREATE TABLE IF NOT EXISTS `lecture_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_date` date DEFAULT NULL,
  `lecture_from` time DEFAULT NULL,
  `lecture_from_admin` time DEFAULT NULL,
  `lecture_till` time DEFAULT NULL,
  `lecture_till_admin` time DEFAULT NULL,
  `total_lectures` decimal(4,2) DEFAULT NULL,
  `total_lectures_admin` decimal(4,2) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `academic_year` varchar(10) NOT NULL,
  `div_name` varchar(8) NOT NULL,
  `lecture_status` varchar(10) DEFAULT NULL,
  `confirm_status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lecture_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `stream_details`
--

CREATE TABLE IF NOT EXISTS `stream_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `stream_details`
--

INSERT INTO `stream_details` (`id`, `stream_name`) VALUES
(1, 'B.Sc-IT'),
(2, 'BMS'),
(3, 'BAF'),
(4, 'Junior College');

-- --------------------------------------------------------

--
-- Table structure for table `students_details`
--

CREATE TABLE IF NOT EXISTS `students_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_year` varchar(7) NOT NULL,
  `stream_id` int(11) DEFAULT NULL,
  `std_name` varchar(60) DEFAULT NULL,
  `prn_no` int(16) DEFAULT NULL,
  `std_gender` char(1) DEFAULT NULL,
  `std_contact` varchar(12) DEFAULT NULL,
  `std_email` varchar(40) DEFAULT NULL,
  `std_pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `students_details`
--

INSERT INTO `students_details` (`id`, `reg_year`, `stream_id`, `std_name`, `prn_no`, `std_gender`, `std_contact`, `std_email`, `std_pass`) VALUES
(3, '2020', 1, 'sawant sagar balkrushna ', 123456, 'M', '1234567', 'sagar@gmail.com', 'sagar'),
(4, '2020', 1, 'sawant sagar balkrushna ', 123456789, 'M', '12345678', 'sawant@gmail.com', 'sagar');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrollment`
--

CREATE TABLE IF NOT EXISTS `student_enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) DEFAULT NULL,
  `stream_id` int(20) NOT NULL,
  `academic_year` varchar(8) DEFAULT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  `div_name` varchar(8) NOT NULL,
  `roll_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `std_id` (`std_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student_enrollment`
--


-- --------------------------------------------------------

--
-- Table structure for table `subject_details`
--

CREATE TABLE IF NOT EXISTS `subject_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(60) DEFAULT NULL,
  `stream_id` int(11) DEFAULT NULL,
  `class_name` varchar(15) DEFAULT NULL,
  `semester_name` varchar(15) DEFAULT NULL,
  `active_status` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `subject_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE IF NOT EXISTS `teacher_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `stream` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `contact` int(10) NOT NULL,
  `subject_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`id`, `name`, `email`, `stream`, `gender`, `contact`, `subject_name`, `password`) VALUES
(7, 'Ashish Shinde', 'sagar@gmail.com', 'null', 'M', 123456, 'Java', 'root');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD CONSTRAINT `attendance_details_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_details` (`id`),
  ADD CONSTRAINT `attendance_details_ibfk_2` FOREIGN KEY (`enroll_id`) REFERENCES `student_enrollment` (`id`);

--
-- Constraints for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD CONSTRAINT `faculty_subjects_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_details` (`id`),
  ADD CONSTRAINT `faculty_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject_details` (`id`);

--
-- Constraints for table `lecture_details`
--
ALTER TABLE `lecture_details`
  ADD CONSTRAINT `lecture_details_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_details` (`id`),
  ADD CONSTRAINT `lecture_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject_details` (`id`);

--
-- Constraints for table `students_details`
--
ALTER TABLE `students_details`
  ADD CONSTRAINT `students_details_ibfk_1` FOREIGN KEY (`stream_id`) REFERENCES `stream_details` (`id`);

--
-- Constraints for table `student_enrollment`
--
ALTER TABLE `student_enrollment`
  ADD CONSTRAINT `student_enrollment_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `students_details` (`id`);

--
-- Constraints for table `subject_details`
--
ALTER TABLE `subject_details`
  ADD CONSTRAINT `subject_details_ibfk_1` FOREIGN KEY (`stream_id`) REFERENCES `stream_details` (`id`);
