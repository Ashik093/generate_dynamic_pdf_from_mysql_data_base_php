-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2019 at 05:06 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arik`
--
CREATE DATABASE IF NOT EXISTS `arik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arik`;

-- --------------------------------------------------------

--
-- Table structure for table `rtplan`
--

CREATE TABLE `rtplan` (
  `name` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `leave_st` varchar(50) NOT NULL,
  `cash` varchar(50) NOT NULL,
  `vahical` varchar(50) NOT NULL,
  `parents` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtplan`
--

INSERT INTO `rtplan` (`name`, `id`, `leave_st`, `cash`, `vahical`, `parents`) VALUES
('kjhgfd', '15', 'kjhgf', 'ef', 'wer', 'wer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rtplan`
--
ALTER TABLE `rtplan`
  ADD PRIMARY KEY (`id`);
--
-- Database: `baiust_hall`
--
CREATE DATABASE IF NOT EXISTS `baiust_hall` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `baiust_hall`;

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `title`, `author`, `description`, `date`, `pic`) VALUES
(2, 'Lift', 'Provost', 'Time schedule of Lift', '2019-07-21 05:59:57', 'notice_picture/5d33ff5cc2043.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_17_c`
--

CREATE TABLE `tbl_17_c` (
  `building_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `bed_no` varchar(255) NOT NULL,
  `std_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_17_c`
--

INSERT INTO `tbl_17_c` (`building_no`, `room_no`, `bed_no`, `std_id`) VALUES
('1', '101', 'C', NULL),
('1', '102', 'A', NULL),
('1', '102', 'B', NULL),
('1', '102', 'C', NULL),
('1', '103', 'A', NULL),
('1', '103', 'B', NULL),
('1', '103', 'C', NULL),
('1', '103', 'D', NULL),
('1', '104', 'A', NULL),
('1', '104', 'B', NULL),
('1', '105', 'A', NULL),
('1', '105', 'B', NULL),
('2', '202', 'A', NULL),
('2', '202', 'B', NULL),
('2', '202', 'C', NULL),
('2', '202', 'D', NULL),
('2', '203', 'A', NULL),
('2', '203', 'B', NULL),
('2', '203', 'C', NULL),
('2', '203', 'D', NULL),
('2', '204', 'A', NULL),
('2', '204', 'B', NULL),
('2', '204', 'C', NULL),
('2', '204', 'D', NULL),
('2', '205', 'A', NULL),
('2', '205', 'B', NULL),
('2', '205', 'C', NULL),
('2', '205', 'D', NULL),
('2', '206', 'A', NULL),
('2', '206', 'B', NULL),
('3', '301', 'A', NULL),
('3', '301', 'B', NULL),
('3', '301', 'C', NULL),
('3', '302', 'A', NULL),
('3', '302', 'B', NULL),
('3', '303', 'A', NULL),
('3', '303', 'B', NULL),
('3', '304', 'A', NULL),
('3', '304', 'B', NULL),
('3', '305', 'A', NULL),
('3', '305', 'B', NULL),
('3', '301', 'D', NULL),
('3', '304', 'C', NULL),
('3', '304', 'D', NULL),
('3', '305', 'C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_login`
--

CREATE TABLE `tbl_admin_login` (
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_login`
--

INSERT INTO `tbl_admin_login` (`user_name`, `password`) VALUES
('admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assistant_provost`
--

CREATE TABLE `tbl_assistant_provost` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `phn_num` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_assistant_provost`
--

INSERT INTO `tbl_assistant_provost` (`id`, `name`, `position`, `description`, `phn_num`, `pic`) VALUES
(1, 'Mohammad Robaitul Islam Bhuiyan', 'Lecturer, Dept. of CSE', 'BSc in CSE(CUET)\r\n\r\nPast Experiences:  Lecturer, City University, Dhaka.\r\n\r\nResearch Area:  Digital Image Processing, Object detection and classification.', 'Email: robayetcuet11@gmail.com', 'management_picture/5d33f1b34ca90.jpg'),
(2, ' Mahfuz Ullah,', 'Lecturer, Dept. of EEE', 'Past Experience: Lecturer, World University of Bangladesh, Dhaka, Bangladesh\r\n\r\nResearch area: Multi-user Wireless Communication, Cognitive Radio, Adaptive Modulation Techniques,\r\n\r\nSpread Spectrum analysis techniques, Microwave attenuation due to Sand Storm/Snow fall etc.\r\nTeaching Areas:                       \r\n\r\nSignal and system\r\n\r\nCommunication', 'Email: mahfuz@baiust.edu.bd', 'management_picture/5d33f2e7a74e5.jpg'),
(3, ' Imtiaz Ahmed Sajal', 'Lecturer & Programme Coordinator , Dept. Of LAW', 'Imtiaz Ahmed Sajal is currently serving as a Lecturer in Law at the Bangladesh Army International University of Science and Technology (BAIUST), Cumilla Cantonment. After completing higher secondary education, he chose to study Law at the countryâ€™s pioneering law schoolâ€“ Department of Law, University of Dhaka, Bangladesh. From the very beginning of his journey at the University of Dhaka, ', '01520100723', 'management_picture/5d33f360e99b2.JPG'),
(4, 'SHAHRUKH HOSSAIN RIAN', 'Lecturer (Part-TIme) ,Dept OF EEE', 'B.Sc. in Electrical and Electronics Engineering Bangladesh Army International University of Science and Technology (BAIUST), Cumilla, Bangladesh .\r\nResearch area: Communication and Signal processing\r\n\r\nTeaching Area: Communication, Renewable Energy', '+8801521208832', 'management_picture/5d33f4c611d3d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hr`
--

CREATE TABLE `tbl_hr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `phn_num` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_male_hall_1`
--

CREATE TABLE `tbl_male_hall_1` (
  `floor_no` varchar(255) NOT NULL,
  `flat_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `bed_no` varchar(255) NOT NULL,
  `std_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_male_hall_1`
--

INSERT INTO `tbl_male_hall_1` (`floor_no`, `flat_no`, `room_no`, `bed_no`, `std_id`) VALUES
('9', '8(A)', '3', 'A', NULL),
('9', '8(A)', '3', 'B', NULL),
('9', '8(A)', '3', 'C', NULL),
('9', '8(B)', '1', 'B', 1103011),
('9', '8(B)', '2', 'A', 1103028),
('9', '8(B)', '2', 'B', NULL),
('9', '8(B)', '3', 'A', NULL),
('9', '8(B)', '3', 'B', NULL),
('9', '8(B)', '3', 'C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_std_ca`
--

CREATE TABLE `tbl_new_std_ca` (
  `std_id` int(11) NOT NULL,
  `ca_division` varchar(255) NOT NULL,
  `ca_district` varchar(255) NOT NULL,
  `ca_upazilla` varchar(255) NOT NULL,
  `ca_po` varchar(255) NOT NULL,
  `ca_village` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_new_std_ca`
--

INSERT INTO `tbl_new_std_ca` (`std_id`, `ca_division`, `ca_district`, `ca_upazilla`, `ca_po`, `ca_village`) VALUES
(2101003, 'Cumilla', 'Cumilla', 'Cumilla', 'Nazira Bazar', 'Nazira Bazar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_std_guardian_info`
--

CREATE TABLE `tbl_new_std_guardian_info` (
  `std_id` int(11) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `guardian_phone` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_new_std_guardian_info`
--

INSERT INTO `tbl_new_std_guardian_info` (`std_id`, `father_name`, `mother_name`, `contact_no`, `guardian_name`, `relation`, `guardian_phone`, `picture`) VALUES
(2101003, 'Nazrul Islam', 'Alif Laila', '01535145199', 'Nazrul Islam', 'Father', '01535145199', '2101003.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_std_info`
--

CREATE TABLE `tbl_new_std_info` (
  `id` int(11) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_session` varchar(255) NOT NULL,
  `std_dept` varchar(255) NOT NULL,
  `std_level` int(11) NOT NULL,
  `std_term` int(11) NOT NULL,
  `std_gender` varchar(255) NOT NULL,
  `std_phone` varchar(255) NOT NULL,
  `std_email` varchar(255) NOT NULL,
  `std_religion` varchar(255) NOT NULL,
  `std_nationality` varchar(255) NOT NULL,
  `std_dob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_new_std_info`
--

INSERT INTO `tbl_new_std_info` (`id`, `std_name`, `std_id`, `std_session`, `std_dept`, `std_level`, `std_term`, `std_gender`, `std_phone`, `std_email`, `std_religion`, `std_nationality`, `std_dob`) VALUES
(6, 'Tamzid Islam Zarir', 2101003, 'Spring-2016', 'CE', 4, 1, 'Male', '01535145199', 'tamzidzarir48@gmail.com', 'Islam', 'Bangladeshi', '1996-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_std_pa`
--

CREATE TABLE `tbl_new_std_pa` (
  `std_id` int(11) NOT NULL,
  `pa_division` varchar(255) NOT NULL,
  `pa_district` varchar(255) NOT NULL,
  `pa_upazilla` varchar(255) NOT NULL,
  `pa_po` varchar(255) NOT NULL,
  `pa_village` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_new_std_pa`
--

INSERT INTO `tbl_new_std_pa` (`std_id`, `pa_division`, `pa_district`, `pa_upazilla`, `pa_po`, `pa_village`) VALUES
(2101003, 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provost`
--

CREATE TABLE `tbl_provost` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `phn_num` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provost`
--

INSERT INTO `tbl_provost` (`id`, `name`, `position`, `description`, `phn_num`, `pic`) VALUES
(2, 'Professor Brigadier General K M Salzar Hossain, ndc, psc (Retd)', 'Vice Chancellor, BAIUST', 'Bangladesh Army International University of Science and Technology (BAIUST) has stepped into 4th year. The 1st batches will be graduating within a year. At this time, I consider myself blessed to be appointed as the 2nd Vice Chancellor of BAIUST. However, the blessing has its allied responsibilities also. The responsibilities of preparing educated future leaders with sound technical/administrative education, gradually developing BAIUST as a true Center of Excellence in research and education, building strong ethical values within faculty members and students, all contributing towards national development. With the blessings from Almighty Allah and sincere assistance from all, I truly believe that BAIUST will remain committed in transforming its VISION and MISSION statements into reality. Soon, the BAIUST graduates will be proud of their institution, in sha Allah. ', '01XXXXXXXXX', 'management_picture/5d33f0473cd10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide_show`
--

CREATE TABLE `tbl_slide_show` (
  `id` int(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slide_show`
--

INSERT INTO `tbl_slide_show` (`id`, `pic`, `title`) VALUES
(8, 'slide_show_picture/5d1fa4484f66e.jpg', '1'),
(9, 'slide_show_picture/5d1fa44f30d50.jpg', '2'),
(10, 'slide_show_picture/5d1fa455c787c.jpg', '3'),
(11, 'slide_show_picture/5d1fa45b5b83f.jpg', '4'),
(12, 'slide_show_picture/5d1fa46a8d28f.jpg', '5'),
(13, 'slide_show_picture/5d1fa470a4867.jpg', '6'),
(14, 'slide_show_picture/5d1fa4766aad4.jpg', '7'),
(18, 'slide_show_picture/5d1fb3ffcb503.jpg', '8'),
(19, 'slide_show_picture/5d1fb4160ff7b.jpg', '9');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `phn_num` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_ca`
--

CREATE TABLE `tbl_std_ca` (
  `std_id` int(11) NOT NULL,
  `ca_division` varchar(255) NOT NULL,
  `ca_district` varchar(255) NOT NULL,
  `ca_upazilla` varchar(255) NOT NULL,
  `ca_po` varchar(255) NOT NULL,
  `ca_village` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_ca`
--

INSERT INTO `tbl_std_ca` (`std_id`, `ca_division`, `ca_district`, `ca_upazilla`, `ca_po`, `ca_village`) VALUES
(1103011, 'Cumilla', 'Cumilla', 'Cumilla', 'Cumilla', 'Mirpur'),
(1103028, 'Dhaka', 'Narayangong', 'Shiddirgong', 'Sanarpar', 'Nimaikashari. H-117 . R-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_guardian_info`
--

CREATE TABLE `tbl_std_guardian_info` (
  `std_id` int(11) DEFAULT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `guardian_phone` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_guardian_info`
--

INSERT INTO `tbl_std_guardian_info` (`std_id`, `father_name`, `mother_name`, `contact_no`, `guardian_name`, `relation`, `guardian_phone`, `picture`) VALUES
(1103011, 'Mahbob Hasan', 'Nurjahan Begum', '01731309060', 'Mahbob Hasan', 'Father', '01731309060', '1103011.jpeg'),
(1103028, 'Md.Golam Rabbani', 'Moslema Rabbani', '01536079676', 'Md. Golam Rabbani', 'Father', '01536079676', '1103028.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_info`
--

CREATE TABLE `tbl_std_info` (
  `id` int(11) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_session` varchar(255) NOT NULL,
  `std_dept` varchar(255) NOT NULL,
  `std_level` int(11) NOT NULL,
  `std_term` int(11) NOT NULL,
  `std_gender` varchar(255) NOT NULL,
  `std_phone` varchar(255) NOT NULL,
  `std_email` varchar(255) NOT NULL,
  `std_religion` varchar(255) NOT NULL,
  `std_nationality` varchar(255) NOT NULL,
  `std_dob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_info`
--

INSERT INTO `tbl_std_info` (`id`, `std_name`, `std_id`, `std_session`, `std_dept`, `std_level`, `std_term`, `std_gender`, `std_phone`, `std_email`, `std_religion`, `std_nationality`, `std_dob`) VALUES
(3, 'Rafid Mahboob', 1103011, 'Spring-2016', 'CSE', 4, 1, 'Male', '01731309060', 'rafid@baiust.edu.bd', 'Islam', 'Bangladeshi', '1998-03-24'),
(4, 'M.A.Monyeem', 1103028, 'Spring-2016', 'CSE', 4, 1, 'Male', '01517096422', 'monyeem@baiust.edu.bd', 'Islam', 'Bangladeshi', '1998-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_login`
--

CREATE TABLE `tbl_std_login` (
  `std_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_login`
--

INSERT INTO `tbl_std_login` (`std_id`, `user_name`, `password`) VALUES
(1103011, '1103011', '1103011'),
(1103028, '1103028', '1103028');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_pa`
--

CREATE TABLE `tbl_std_pa` (
  `std_id` int(11) NOT NULL,
  `pa_division` varchar(255) NOT NULL,
  `pa_district` varchar(255) NOT NULL,
  `pa_upazilla` varchar(255) NOT NULL,
  `pa_po` varchar(255) NOT NULL,
  `pa_village` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_pa`
--

INSERT INTO `tbl_std_pa` (`std_id`, `pa_division`, `pa_district`, `pa_upazilla`, `pa_po`, `pa_village`) VALUES
(1103011, 'Cumilla', 'Cumilla', 'Cumilla', 'Cumilla', 'Mirpur'),
(1103028, 'Dhaka', 'Norshingdi', 'Norshingdi', 'Santanpara', 'Kandapara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_17_c`
--
ALTER TABLE `tbl_17_c`
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `tbl_admin_login`
--
ALTER TABLE `tbl_admin_login`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `tbl_assistant_provost`
--
ALTER TABLE `tbl_assistant_provost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hr`
--
ALTER TABLE `tbl_hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_male_hall_1`
--
ALTER TABLE `tbl_male_hall_1`
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `tbl_new_std_ca`
--
ALTER TABLE `tbl_new_std_ca`
  ADD KEY `std_id` (`std_id`) USING BTREE;

--
-- Indexes for table `tbl_new_std_guardian_info`
--
ALTER TABLE `tbl_new_std_guardian_info`
  ADD KEY `std_id` (`std_id`) USING BTREE;

--
-- Indexes for table `tbl_new_std_info`
--
ALTER TABLE `tbl_new_std_info`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_new_std_pa`
--
ALTER TABLE `tbl_new_std_pa`
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `tbl_provost`
--
ALTER TABLE `tbl_provost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slide_show`
--
ALTER TABLE `tbl_slide_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_std_ca`
--
ALTER TABLE `tbl_std_ca`
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `tbl_std_guardian_info`
--
ALTER TABLE `tbl_std_guardian_info`
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `tbl_std_info`
--
ALTER TABLE `tbl_std_info`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_std_login`
--
ALTER TABLE `tbl_std_login`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `tbl_std_pa`
--
ALTER TABLE `tbl_std_pa`
  ADD KEY `std_id` (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_assistant_provost`
--
ALTER TABLE `tbl_assistant_provost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_hr`
--
ALTER TABLE `tbl_hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_new_std_info`
--
ALTER TABLE `tbl_new_std_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_provost`
--
ALTER TABLE `tbl_provost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_slide_show`
--
ALTER TABLE `tbl_slide_show`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_std_info`
--
ALTER TABLE `tbl_std_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_17_c`
--
ALTER TABLE `tbl_17_c`
  ADD CONSTRAINT `tbl_17_c_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_male_hall_1`
--
ALTER TABLE `tbl_male_hall_1`
  ADD CONSTRAINT `tbl_male_hall_1_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_new_std_ca`
--
ALTER TABLE `tbl_new_std_ca`
  ADD CONSTRAINT `tbl_new_std_ca_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_new_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_new_std_guardian_info`
--
ALTER TABLE `tbl_new_std_guardian_info`
  ADD CONSTRAINT `tbl_new_std_guardian_info_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_new_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_new_std_pa`
--
ALTER TABLE `tbl_new_std_pa`
  ADD CONSTRAINT `tbl_new_std_pa_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_new_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_std_ca`
--
ALTER TABLE `tbl_std_ca`
  ADD CONSTRAINT `tbl_std_ca_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_std_guardian_info`
--
ALTER TABLE `tbl_std_guardian_info`
  ADD CONSTRAINT `tbl_std_guardian_info_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_std_pa`
--
ALTER TABLE `tbl_std_pa`
  ADD CONSTRAINT `tbl_std_pa_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `tbl_std_info` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `cgpa`
--
CREATE DATABASE IF NOT EXISTS `cgpa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cgpa`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `user_name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_l3t1`
--

CREATE TABLE `tbl_student_l3t1` (
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cse_301` varchar(255) NOT NULL,
  `cse_302` varchar(255) NOT NULL,
  `cse_303` varchar(255) NOT NULL,
  `cse_304` varchar(255) NOT NULL,
  `cse_305` varchar(255) NOT NULL,
  `cse_306` varchar(255) NOT NULL,
  `cse_307` varchar(255) NOT NULL,
  `cse_308` varchar(255) NOT NULL,
  `cse_309` varchar(255) NOT NULL,
  `cgpa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student_l3t1`
--

INSERT INTO `tbl_student_l3t1` (`name`, `id`, `dept`, `level`, `term`, `gender`, `phone`, `password`, `cse_301`, `cse_302`, `cse_303`, `cse_304`, `cse_305`, `cse_306`, `cse_307`, `cse_308`, `cse_309`, `cgpa`) VALUES
('Rakibul islam', '1103066', 'cse', '3', '1', '1', '017855622555', '1103066', '80', '76', '50', '89', '65', '71', '66', '88', '60', '3.48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_l3t1`
--
ALTER TABLE `tbl_student_l3t1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_fileupload`
--
CREATE DATABASE IF NOT EXISTS `db_fileupload` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_fileupload`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_my_blog`
--
CREATE DATABASE IF NOT EXISTS `db_my_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_my_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(5, 'BAN VS IND 1st T20 Match', 'Bangladesh has lost in first t20 \r\nmatch against India.', 1),
(6, 'SL VS IND', 'INDIA has lost in their first game against Srilanka.', 1),
(8, 'This is the best cricket ground', 'We all know that T stadium is the biggest cricket ground in the world.', 1),
(9, 'jhgghjk', 'sdfghdgh,\r\nlkjytghjk,', 1),
(10, 'sdfghjkl', 'wertfdsdfgfdsdfgd', 1),
(11, 'sdfghjkl', 'wertfdsdfgfdsdfgd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_my_blog`
--

CREATE TABLE `tbl_my_blog` (
  `blog_id` int(5) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `blog_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_my_blog`
--

INSERT INTO `tbl_my_blog` (`blog_id`, `blog_title`, `author_name`, `blog_description`, `publication_status`) VALUES
(8, 'lorem', 'ashik', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(9, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(10, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(11, 'lorem', 'ashik', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(12, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(13, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(14, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(15, 'lorem', 'ashik', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(16, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(17, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(18, 'lorem', 'ashik', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(19, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(20, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(21, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(22, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(23, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(24, 'lorem', 'lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(25, 'fffffffffffff', 'ffffffffff', 'ffffffffffffff', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_my_blog`
--
ALTER TABLE `tbl_my_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_my_blog`
--
ALTER TABLE `tbl_my_blog`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `db_std`
--
CREATE DATABASE IF NOT EXISTS `db_std` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_std`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(100) NOT NULL,
  `a_username` varchar(100) NOT NULL,
  `a_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `a_username`, `a_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studemt`
--

CREATE TABLE `tbl_studemt` (
  `std_name` varchar(50) NOT NULL,
  `std_id` int(40) NOT NULL,
  `std_age` varchar(10) NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `std_dept` varchar(10) NOT NULL,
  `std_phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `imglink` varchar(100) NOT NULL,
  `l1t1` varchar(5) NOT NULL,
  `l1t2` varchar(5) NOT NULL,
  `l2t1` varchar(5) NOT NULL,
  `l2t2` varchar(5) NOT NULL,
  `l3t1` varchar(5) NOT NULL,
  `l3t2` varchar(5) NOT NULL,
  `l4t1` varchar(5) NOT NULL,
  `l4t2` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_studemt`
--

INSERT INTO `tbl_studemt` (`std_name`, `std_id`, `std_age`, `gender`, `std_dept`, `std_phone`, `email`, `password`, `imglink`, `l1t1`, `l1t2`, `l2t1`, `l2t2`, `l3t1`, `l3t2`, `l4t1`, `l4t2`) VALUES
('showrav', 1103043, '21', 1, 'cse', '015962266', 'mh@gmail.com', '1103043', 'student/1103043.jpg', '3.56', '3.15', '3.49', '3.58', '--', '--', '--', '--'),
('Tafsir Hauque Arnob', 1103080, '21', 1, 'CSE', '01832788635', 'tharnob@gmail.com', '1103080', 'student/1103080.jpg', '3.00', '3.12', '3.19', '3.29', '--', '--', '--', '--'),
('Md Ashikur Rahman', 1103093, '21', 1, 'cse', '01786598613', 'mdashikurrahman18@gmail.com', 'ASHIK', 'student/1103093.jpg', '3.19', '3.19', '3.43', '3.47', '--', '--', '--', '--');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_studemt`
--
ALTER TABLE `tbl_studemt`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_student_managment`
--
CREATE DATABASE IF NOT EXISTS `db_student_managment` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_student_managment`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(5) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `email_address`, `phone_number`) VALUES
(2, 'Md Ashikur Rahman', 'mdashikurrahman18@gmail.com', '01786598619'),
(3, 'Rawnak Jahan Naima', 'naima@gmail.com', '01729878747'),
(4, 'sgsggs', 'sshhsh@gmail.com', '01455555'),
(5, 'addada', 'naima@gmail.com', '578885');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `job_viva`
--
CREATE DATABASE IF NOT EXISTS `job_viva` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `job_viva`;
--
-- Database: `laravel_5_7`
--
CREATE DATABASE IF NOT EXISTS `laravel_5_7` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_5_7`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `CategoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_05_095534_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Ashikur Rahman', 'mdashikurrahman18@gmail.com', NULL, '$2y$10$xlHsZlrFFJgLzkvIEvN6duCnfKq892A62JkF5aFycHrRBABqP3L5.', NULL, '2019-06-03 21:53:38', '2019-06-03 21:53:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravel_zk_suvro`
--
CREATE DATABASE IF NOT EXISTS `laravel_zk_suvro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_zk_suvro`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_ip`, `product_id`, `product_quantity`, `created_at`, `updated_at`) VALUES
(8, '127.0.0.1', 6, 1, '2019-07-19 11:36:55', NULL),
(9, '127.0.0.1', 1, 1, '2019-07-19 11:58:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `menu`, `created_at`, `updated_at`) VALUES
(7, 'Man', 1, '2019-06-21 18:23:13', NULL),
(8, 'Women', 1, '2019-06-21 18:30:01', NULL),
(9, 'Child', 0, '2019-06-21 18:30:07', NULL),
(10, 'Home App', 1, '2019-06-21 18:37:35', '2019-06-29 05:44:24'),
(11, 'Office', 0, '2019-06-21 18:37:43', '2019-06-29 05:44:42'),
(12, 'Stationary', 1, '2019-06-21 18:38:35', NULL),
(13, 'Sports', 1, '2019-06-22 12:17:41', NULL),
(14, 'Shoe', 0, '2019-06-22 12:18:07', NULL),
(15, 'Brand', 0, '2019-06-29 13:47:52', '2019-06-29 13:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `subject`, `message`, `read_status`, `created_at`, `updated_at`) VALUES
(1, 'Md Ashkur', 'Rahman', 'Goood', 'hi, how r u', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_06_21_160526_create_categories_table', 3),
(7, '2019_06_12_095502_create_products_table', 4),
(8, '2019_06_24_212211_create_contacts_table', 5),
(10, '2019_06_29_180908_create_carts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user2@gmail.com', '$2y$10$Uh/G/7m2b04Nh3NOJd9XWOp1cnsbIJ2GkthRjVjqxXGTNr.48jAEK', '2019-06-24 14:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `products_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `quantity_alert` int(11) NOT NULL,
  `products_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_product_image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `products_name`, `category_id`, `products_description`, `products_price`, `products_quantity`, `quantity_alert`, `products_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pro 1', 8, 'ddddd445', 4555, 52, 5, 'default_product_image.jpg', NULL, '2019-07-19 11:58:50', NULL),
(2, 'erre', 9, '4555', 555, 452, 45, '2.jpg', NULL, '2019-06-21 18:54:45', NULL),
(3, 'ddd', 8, 'eee', 55, 87, 4, '3.jpg', NULL, '2019-06-21 19:10:09', NULL),
(4, 'aaaa', 10, 'eeeeeeee', 788, 65, 8, '4.jpg', NULL, '2019-06-21 19:10:32', NULL),
(5, 'eeerrtt', 11, 'rrr', 5446, 8787, 65, '5.jpg', NULL, '2019-06-21 19:10:57', NULL),
(6, 'ggggg', 12, 'gggggggg', 466, 88, 7878, '6.jpg', NULL, '2019-06-21 19:11:23', NULL),
(7, 'Hhahahha', 7, 'jgjjgjgjg', 54545, 87778, 655, 'default_product_image.jpg', NULL, NULL, NULL),
(8, 'ja issa', 12, 'jjgjjgjg', 454, 78, 10, '8.jpg', NULL, '2019-06-22 10:59:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Ashikur Rahman', 'mdashikurrahman18@gmail.com', NULL, '$2y$10$aNp/i.zPisPz9Zh.2D.BWu3aND9qH1rSmWK7.34U0jW.YoDVfE6Ke', '9PtcCC5WJ1YAmeCUPEpuYIIzJ3eRIOoIqkhQdqcxyySzIINY53ALMGGChdC6', '2019-06-11 14:15:25', '2019-06-11 14:15:25'),
(2, 'User2', 'user2@gmail.com', NULL, '$2y$10$hGYn2FuCk.7rWkS2C.E/jOxSPM5q7attq1mbLzqztBHhz2a9OH86C', NULL, '2019-06-12 00:34:23', '2019-06-12 00:34:23'),
(3, 'User3', 'user3@gmail.com', NULL, '$2y$10$LJS4XOY2VXPAqZ5D.Zlg6ujHyJpaln5z11RSEu.ecqdZu4E0fwXe.', 'Qx50quxxw8ZNGOD4SEvviPbePmaxU5TVXogyb3FHSOc8LHwlPK7134aKFIkE', '2019-06-12 00:35:04', '2019-06-24 13:59:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `nasim_practice`
--
CREATE DATABASE IF NOT EXISTS `nasim_practice` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nasim_practice`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email_addr` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(255) NOT NULL DEFAULT 'avatar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `fname`, `lname`, `email_addr`, `user_pwd`, `date`, `img`) VALUES
(49, 'Rownak', 'jahan', 'ww@gmail.com', 'erff', '2019-03-28 12:19:46', 'avatar_default.png'),
(50, 'Md Ashikur', 'Rahman', 'ww@gmail.com', 'erff', '2019-03-28 12:19:58', 'avatar_default.png'),
(52, 'ashik', 'rahman', 'ww@gmail.com', 'erff', '2019-04-21 11:33:46', 'avatar_default.png'),
(53, 'Shaqur', 'Rahman', 'shafiqur@gmail.com', '123456', '2019-05-01 09:42:03', 'avatar_default.png'),
(54, 'Mahinur Rashid', 'Shakil', 'mahin@gmail.com', 'shakil', '2019-07-29 14:30:28', '5d3f0304816e7.jpg'),
(55, 'Showrab', 'Nath', 'showrab@nath.com', 'showeab', '2019-07-29 15:22:58', 'avatar_default.png'),
(56, 'Hassan', 'Imam', 'hassan@imam.com', 'hassa', '2019-07-29 15:23:31', 'avatar_default.png'),
(57, 'Rafid', 'Mahboob', 'rafid@mahboob.com', 'rafid', '2019-07-29 15:24:04', 'avatar_default.png'),
(58, 'M Shakhawat', 'Hossain', 'shakawat@shako.com', 'shako', '2019-07-29 15:24:39', 'avatar_default.png'),
(59, 'New', 'User', 'ww@gmail.com', 'erff', '2019-07-30 10:24:59', ''),
(60, 'New2222222', 'User', 'ww@gmail.com', 'erff', '2019-07-30 10:25:28', 'avatar_default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_std\",\"table\":\"tbl_studemt\"},{\"db\":\"nasim_practice\",\"table\":\"tbl_user\"},{\"db\":\"db_student_managment\",\"table\":\"tbl_student\"},{\"db\":\"cgpa\",\"table\":\"tbl_student_l3t1\"},{\"db\":\"cgpa\",\"table\":\"tbl_admin\"},{\"db\":\"baiust_hall\",\"table\":\"tbl_std_info\"},{\"db\":\"baiust_hall\",\"table\":\"tbl_admin_login\"},{\"db\":\"baiust_hall\",\"table\":\"tbl_new_std_pa\"},{\"db\":\"baiust_hall\",\"table\":\"notice_board\"},{\"db\":\"baiust_hall\",\"table\":\"tbl_male_hall_1\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-05-29 05:13:23', '{\"collation_connection\":\"utf8mb4_unicode_ci\",\"SendErrorReports\":\"always\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `php_oop`
--
CREATE DATABASE IF NOT EXISTS `php_oop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php_oop`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std`
--

CREATE TABLE `tbl_std` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std`
--

INSERT INTO `tbl_std` (`id`, `name`, `dept`, `age`) VALUES
(1, 'ashik', 'cse', '21'),
(3, 'rafi', 'cse', '23'),
(4, 'sourav', 'cse', '22'),
(5, 'shakil', 'dba', '21'),
(6, 'emon', 'cse', '22'),
(7, 'arik', 'cse', '21'),
(9, 'nasir', 'cse', '21'),
(11, 'parvez', 'eee', '21'),
(13, 'rafid', 'cse', '21'),
(15, 'fahim', 'cse', '22'),
(17, 'ankur', 'cse', '21'),
(20, 'fuad', 'ce', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_std`
--
ALTER TABLE `tbl_std`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_std`
--
ALTER TABLE `tbl_std`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `try_images`
--
CREATE DATABASE IF NOT EXISTS `try_images` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `try_images`;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(1, 0x474946383961f1010e02f7ff003465b37387893252a7e82c2bdeb116443a74d56f4ca07b4399c675bac87973ae93efb219d9ca4936b9d70c76510157a852668e4c568e848459e14537006ab5cdac19c1b06d64748b489556afa11eb5a03388bc6f9bb984359c9830864c7f9326168a7ae2a9200072bc4fb5c70196daed1c24327396cc8a5b9bc788007ac3c6a72a4595a2bea32ec7d16530439e48aebb0083cb812a61184b6843a8af73c5a6db563f5b94940e5953288f8062c7ea1e45721a449c8ba48655bbd2819225a5c38387c5972189759e9d21f6b915008cd32d9aba0061af363b9058a9d9d1ab2523747a9fa06b6f8d281c646d1451603ba2a3aad285adcd824b99c27e986883b88f2da7c4b1bc65e3b21e2caab9436ab600a1e34ab9bd0fa5db288eb32f86a9d91e2f829a87094ea220507693ae85d9ae22395d992979a35bb5ac2d4896b35e59d627333f789c908066bdd5755eada293cd93a596522f58972846869fcf8b429da87ea674358d9aaba02368bda85bbbb1253a97223d985ea19a7f8b5e265a81389cb2009ce02e319240c8f4293695114aa01e609e169bcd0f72b22737961f409aedb614bea71cfede89146d36bfa71b106f37437d2f407e305f882b30793269cef6a09c2062872afdc021247234ffeec4fee6a7337731207435fffbf1fff3d3fff7e2fed56b8e9823718c27909723fecd4dfdc43052822c4f832d36327bfdc93fc8972e93724afed15cfed97a5e4d66fee2983cabe1feeab63ba2db50446d398fcf2b348c3db5e77860583ebeedd5a0271b8369ad843c3a98d530b0c5ba8e35377cc33573bc8569513885c9253b811081686b565f223f7c2f3a9803663f0670450c703e11545b3cc2e80761472838872099975ba15d5cc1de2e958caad17c3f458f72ae661c938b107b5c17774228a4ae66a761227e47249ea27db56ac79d63919827ebc32d4883be392f8b8b9626b6264561bae9145f5f4babc0c0a7223b398a38a7bc979928e2c63b0d6950167eb5bf7c5d2298c10b7ebd5ebde41e6da2dcaf1fd2ad5322afd4584d800b92cfb1c475292983b6d881fdbc12056839016a3affffff21f904010000ff002c00000000f1010e020008ff00ff091c48b0a0c18308132a5cc8b021424f8c224a9c48b1a2c58b18336adcc8b1a3c78f20438a1c49b2a4c991b11caa5cc9b2a5cb973063ca6ce8e912bf9b3873eadcc9b3a7cf9f40830a1d4ab4a8d1a348932a5dca54a9a69950a34a9d4ab5eac19a4db36addcab5abd7af60c30e7d6ab5acd9b368a76215cbb6addbb770e3ca259bb6aeddbb78d7caddcbb7afdfbf71e9e21d4cb8304cbd3817295eccb8b1e3c790234b9e4cb9b2e5cb98336bdeccb9b3e7cf9815ed146cb8b4e9d30211df94e4afb5ebd7b063cb9e4dbbb6eddbb873ebdecdbbb7efdfc0830bdf3d49b44ed2a8932b3fab9a1febe1d0a34b9f4ebdbaf5ebd867171fbdbcbb77b536753effcf4ebebcf9f3e8d393df7efcbbfbf72c9b8f574fbfbefdfbf8b3b3cf891cbefffff2e527e080041668a06bfbe1d4df7f0c7617e081104628e184d12578d3820d6658da831476e8e18720b666213f186a68a25d1c86a8e28a2cde37628927c668558a2dd668e38dd5bd28e38e68d188e38f4006a99b8e3c1609de4ef309a9e4924c8a681c7f464629938f4d5669658d444aa9a54a545ee9e5971e66b9e5980f8597539260a6a966846292e9e63f5daea962068fc869639b6f6a19a79d1f72c2cf077c62f9a482798eb967a0074e02db07fca880688b78162ae3a18f16f8410575b646003f2c9c822001958639e88592164969a8037e70053a22f2338406df38ffa908aa1d465a2a83a7d29adf078ac0ea0f13fcf4ca2a278a2842066c8f70a26b81b6defa5eaecba227c97c8caac0021319f0b380062a4c52013f49b0e0da23bca219ad7dcd3aeba09938997bee7da12882ce7391f0430fb79bbecac2b7afded11aaf8a5c91e9bbf9a5ab2e6ad0125cde248db270c724f5beaac14d120fc10f19b07aebaa0aeb283ca0c1071b96b0c7e45530840a1a24c168a31a58dcab068a48fcedc62cb84b727a20879c17bbabdd4ca024aeb2a0010b165f31b1b61a687085d149508c32ab3e173c2a893a273772d4b63111c96f9bbeccc2028de29434192c347d13ca35ff962cd6d0e55cb55957b34d5b718ad6b6756ca7dcf432cc16dfff94741257e09444d219c83689b2b65550b7dcc1b9fd365571333e9b2298d6f62d3d778c734aa68bdc6474d24ffe2d78d22a6cd25a241f6430f3ddb40931abe4c239fe385491c31e9b10fc54ae9dab83979d81e638ddab011962737bd3e043df2149b63891a1c238b6e12e84edb14f0de3ec51d54efd6b79e73e706c40f39e34b7811f3f7cf12af0f339cc3a5d2174acb5e1ce8fa7db03273bf62d695fbf6b9b7adf3a4e4340ded09260b12410cf6fe41b1a19fae639a1b1001ddfbbdd4d40b53ffb590f7f33e299732a389c95f96f361e14dff816183a6ea58c81ea13dad0be1141d8c8ef4f1cb42077302815fdc5f0114fd29d6cc2871345a02c692c28a10aff06e5bef1b1607af1eb610b6338a40bd27026366422b070a2c3d84ca27f3dfce101f9413a9c14717c49b0993f1ef14218325186ed79e2613428c633ea666637511c6d1ec1bc9cf8d06c5c4c590ac737c0c5c9e61170e40705ddf89bfba931356c24e4701866473fc6860953cb09e95468443ad5e68a3a619d227b63c82746519121ecd9dc02a9133ef2510580aacd294695ca4d16d2898764c82737d9399d84c236a748dd077699ba46f1f203e3f0011396f89a50f26311aeacde0c639990596e12903b59043167c3090220733774dc0901a699ccdc74f26dce74e58814a1c9ea44028b3d7464377df3cd90853399233263758c192c75ae939db064269c1279ff4fe9c47311888b0e2748a9377bf69393f93ce43bef194f45b4513790e489220c7a50842e538d0bede7407b6249e070a2963ba940402bbac884e22fa307cda64499f01b7adea4a324ad90491f875292baf4981495cd397dd2ca98fa73a63aab694c2311c99b7c809bade1441db5594e9fcaf4a25513aa4f552a519b3d22143f0905529d8a462881939f5ccdce2a7d52817292aba8826c2aba46babf76f248aa81f2d656cf43c69f2ca26e9240eb9fe66a9e4710008931746b8ce01aa8ce0176409120684e8480ce68b2153fd0e4474e6127580d11964f3cbca581226a1402a8f53e913da61b2b8b2bb09e1187673ad04789a2889e12a88cfcf8ecf6480b9f4fff98f68c58d509fd0c3456a0001442b015ed68a7969242954227ae65a29f6e1282741aa8ae41f9ad8172abad03e044b6dbab974e3e21a94ce864906e0469016ed1c3c7da87b34339eacf70b28059a0026c8224246c19712b52888790dde3c72af4a10febc691afd8d1d8513c2b201eb697bfe415650c978b934b74e2569ff8ae1bfd7a9305a082bffad80515414bdda468d54539b90586f5d1dcf83211b6d7d3122874c252267a50c41846452e707258f34c42514be5495973ac4df32eec4930c6708237c84106dfa414078bb01d011c352c5e78c432c68966cf73132168b727adec2d4feefa2dec52673fc11831864bac0826930ca4a43a182390cbc42bfb42ffccfa98057c896c1ee308a1c354742455ed48d49b78593aa1dd059cf9eb5f7eb4b87e57be492a74d609769599897574059ce57c5d1bbff0526c9e8d966f825e33ab0d8e821eb42b70b2cd0ae63813555b736a6f689c100c7ac81315eba6a67893fccab1368f006928402a840c2ce2cfc281a32a06ad8ff7e264b25833323f48f1b646e704bc15a4f57ee10c6b4fe366b571a4ae1080955cda40b2ac3da4f587adf3c25c3c19ceaac0c9a1eb075b54bf4dd5ed3ae3cc165080416bf8bfd4c9ab2de1b8b6dd7062127544af2091dd9b729f5bccc1c049e12aa8ec453f4ec9a43ea39b897d6fe14627b8b55edd6fdaa5d887ee86d6071ef42c486d6d82a1187b2bff5e750c5f588c4147b9cad0d9b34ea42904e9f646110438059e171b1d03cf82d8a828716c39f8089d20197b10bfc93559cddc83c758e8ddc6a6620bfa539fd4d8373ce4c7cf89ed0b9c441d76a14c71a9525e6926f270da939eb3c763c32826d03aa43eeeea4eb4ba4b7ce224c8704eb8d2998e93a39f542757df9f78893df2b2ef6665bbe6094ca7135add7e6be94dbc3bb1e3acc418669d1ff4a5a17d731277db31921fc32636ac09ee9a537c5ee08a587775ae3af7994d3937c4c209dae11c74c357109d0e7e622c6ce946eab69cd87a17e45cebfa815ab636319d97ce29b05881179e13d86304f5e4f5d175a3b65927ad38e4712bcf44d4f223044e1f71ffc5abf84738ea9b1fbdfe757ac8152c1e16dffab609f4f4870c79536ff7909ab8ef19797880e9579f1f0b471b214400b4967cd8c109cb174721b45bb35147e6367994162c25a730cac60ab1e46c1b165e38b1752e376330471b68867ef2a37a38a337f915474974130f08741e383fb8a513ee7648647713a427370c167a40277424e81a21383f90b483e701349ed558fcf03f4d377d15f77a1c34287e774849877e84f462d3178174b628336780e5f1089bb369b9331b3e377f19687669c44c9ba73713e83114a62de137628547837f243fad052102566b3bc45e1c2872f0a50858c83868967bfa947f2ac744f9d57f604875da31218f2009bb644f27286993fff7722e7846ca060afa3410ec52018a04528e3879ab40724bb21f78376885a6841c84679e508902d10a3a518336681cb9307dfc357e67982840068bc510866734280e878a4f488a6af2016bd752381166b0986e1ff82369c80fa136790590877bc838274835a8281065182c81a25dadf58cbcd13f16068b9018782b227fb0d882c1c8384be587d3088838c1806a424a56561d20458cd3676c0a261dd8e001f8988fd8115a6f068b85068efb5374394189d3281018f85276f276395101e5183d38f18ab0a80fc5306791e81bcae001d0500d1b8000fbd0911ef9911db9011b000d18e001d0514677486c73068431b73cfca08d42a29031589033c80fb3b822b1fff77dffd7431f0093e08313e0e78d3b997abd810d18500d1c09924ab99420b901da6092beb1670b108a696788d2c1094c80665f772581d48405e95d81f82591a60f057000145965d0171b57167210287400c8644699944c399774e991dd8001cad01b3b8513cb287a9e381c58a958afb326ca967d054910db87826972657d890ab7e09671d490fbf17b93770b73a608ec581bca80017259979ee999d50095ba015d2ab886185668f5c71b93c00453176f6b124adc759803a18a9c072669d88d70e60a3ba937ea751ba1258fc45668c7b487d8500dd3f099c8999c088001bca16521909262668cfce08bb63109a1408437e10bb750002586896b824ebb289b70ffc26260e241c00967657996e8375920d597b45771f2641bc5999cf4499fd3000d79e94d70c496b427746b679dd8c90fda796e43c68a38f27937f10ae289980bf925371891c5f698d1e42ee5368f2de850b8319ff5b90f1710081eeaa111b0a14b390dcc991bb9668710386739750a8cc5130b30a0b4075f00c92478169b0bfa0ff076133eb92220059dd3a79bdad49badc1432bd881ce751bd0709c221a011ffaa122ca9408209ab7f142fc2966d58637aee3a2bb4099c18913370922e079a303f1842c0924fc07a1e869963b21048ab2963eca5f902852b7e1019db9a11c3006789aa74f3a97dd909f538aa2c4d6898a998859ba130bb0a5685a005e072608ff2a8d62fa0fa9d0a055e27d5a87a62e27a133f7249b487b2d487eb1a10cdab0a7a2baa1d320a529a88693f77f19c063cc75009b8aa6d5076d5582670ff6a8fff00a3ab1a31ff2760b307b963a6240ca1354297e548454db50a7a34a9f517001d43006f4a90d7e7aaa452a6690b8132170006f0aa1a3568f551248cc66abe319964a227021f0aabfca5fe99913ee2966b2681b18a0a4c92aa201f0a110f003ca890db85147eb8a6154a882ab90adbf5a62a9b924caa6a0e0fa0f89098057429ad9596fe74aad128a83af565eb6510df509061190b11aabb1ce2aa263400d1e7a0401909ca5ea9b7034acfc758bfc900bc1e0b00f2b6a2d68a02ba290366aabb4ffe9a55e925839d1ab2f9b9ba6497956291bcad00d17dba4467b01a2baac1f1a011dfb99255a1b39496f93e70a2edbb3d42a9c55c82481149eb6ea09ba0526e46aae56db9fae391bca80ac75090646dba4111005c9fab11f0a06c9f9b4b4915f1039b6685a0c6e796b93aa13067bb0ffc02e33aa240c2ba0558bb723f67fd4d91a67ab945180a74c39066bfba14760aff1aab48160b9c8590db7415de789b8b437945b192497778a80fb0f33389860a2b3ece5ab88abb21627b41cd9020cc0006dd0911d1aa24ac9014730b91edab49fc9039e3906485b9f9c8b6bdc78b8a02b641469735752465e09aebb9713328b2361bbbcf4a887b4d1b8fbc00037d102fbffc0031eca014b1900010001196bb4239b9c1d4a0d721baf2049b73a8513fdb8bc185600d2192c65ba24836298a7db0999b62685eb0bcafbb08556a672e9bdfcd00251d0bbc5fb993f00b9c9a9b61feabef0fb91f22b413721b6631b0c14b9785ed2a8c575baff508d03bbba81c4b356bbadb11b1b16eb910adc02101008d4e0b6170c92e2bbb64c7bc3fb60aab09193128bb7b3d082c192995e124a243c10b89a135f5a2302970b1c1c91d219771800920abc04817004e4cbc31ec9bbbe1b083b4c9f9aab94d380af02881351fcab822a654dac22816481491caeebf82885bb0b3f4b6cb0fb751ea09431ccc520d9c05fbcb45bfc99d4b0be4b8900d18a2cc6ff11c40feb0a6e496076229038f1b749cc2e8bab26ac5b619f3b7d64464cca00af30fcbd7e0c9263c0a4819cb9c899c31060c34aa90db5e141693c8f582ba472128da61bc733e89da1c22b3901c5103a643643b47c2ccaa30c921cd0a1be6bc89e99c3603cc820e9c3e3621cf5fbab7abb90d52b241d16bda7ab8e37d1c638a2543a61c7c53841b451c54bd9c7c5ac943f80cc4d7a04acfc995e9cc5c24bc6895c4c3851c08f3894fb0b2681449071fc0f4fd890398b4e0bb0c9fcc5c2eef2c94c89ce1fb9ce117001013006ef7cb901d0bb1efabef4c901a61c08caec91c72b1b0ce6ba93e7c139e1bc8122c969f6cf089b13971c28bccc5c93776f8f261bc2ff7ccec4fc91ecbcb41730cff01b0501400dbabba151b0d1abac94d0dc1acce36a1189bf7624d055128d358bcb921a2dd5949dc4a6a837419d7b3c970ced91203bb96dcbc5635c9f5130c3bfab940850b7680c8babf0c1de8c23d9acd203c1cd36f92efd23d2fa107c3eb6014c19053fd0d5fbc0015feccce95c9f1d7a044c99c1ae611cfbca5f43fc6c46fc28fd2cd702f184914dc76b3d68251680b061cea47c0147c003809dd34dfac0852da21760da1f390df5dc1ab9b5009cc8d26f8d8c6328d7093bba7c925f6bd886ee82acc88cd880fdd56b3bd67549d8971b013cfdc71d6901090092d0b03b37f1a6b09b966b9268fc70cb72cd0a257d2e2ba3d470ffe65f33ddd94bf9d548dbd5823db9aa5d97926bc1178ccc17c0ca09600127500335500225e00d20390db4611c84889eb6a72b21740994adc43a712eb534cd23e681e0c8d7c6fca1e4dbd5a4fda1c95d975120dc853cd11edba4d4f00e353000f6fde1f66d014aa9d8fe203f770b67f085db7c8266703ce060796cd1621c9b8cd559db1a5b0d92f34ac31dd9d5c2ade1f419e1477001c49d9c156eb4e400e2487ec85e8813a6597d9cad2b83927903fe0fe4a92b0c26b643b6442f0c92a6bcbe5d8da7e68bbe0e9c9ce7edbb1700bcc999e31f2a0e315002e4900606e0e1f63d014c09cd0cc6a52326a8b21a2a8d3a93945d8d835bcb3841718a091bcab0943ffff0a1960bd8a3bad15f8ce69e99e8be2b0e8170e41f6e004cf9d1b071d7c4c6c2b38d239757ab537eb35d08e02a486c25d66d9efd91391ed48cbea76afec51020af5fdce62520e7983ea2ad2d3f8c0ca7ff1d2a1dc6b5944dd7cb524bfb4ae36a55d31f69ca18fdea22fa0316fdc535fca46310ed1f5a00f63d000610e273a9d8b43679a91e2d68e6cf53eeb53941dd5e22e38306bb428be8810001c9edec1b6ad6810ce9caeae8e2f005f6ed0ddb5e02f9c0a7f37b13f85c7d278c287e3be50451e5a172e58326a8bafc1aabee917e3dcc0bdcd33ffdc51dfda4ec6ce935b00f1370eb74a9dfb28113788e617aa7ba0b0f83083f10d5d8d26a925fc4668c81ffb7e59e29ef4fca03f4beb417cc034760eb13d0dcfb6001224e97d03c3378cdc2bada24d128ea083f83057f239110f5523ff5bf54f5b574e22316eeb101ca7569f37bbace165db937bc04d93ef4c8f9dcb161ec9337c7b41242da4cd94bac372bb26b8a01168dfdebdb409f5e3faa188bd1f1da06727e02f5b901b2b132bdce5f1eb8085a73cd4ab2542dbef22faea32ad2835db1c9481f1b11dff5377ddaf05bdf25d0f11b2a1b53e4dd70069f25bd08bb14f59f2e21e824e52b0fc0e73ef94c910baa50fbb66ffb07b00a05ccc2b211aac9b9f79cff91656ddc1d7902730ef4f5b90d6a39e87e491415b008a1008c9190f414a21323bcf2819b132a5e20b5ffa40ab7e00ae01ffee17fc72fabe7b2c1e0c8d9c7284005543006ed8fa7437edac89cf11650f64f9ac157669a05b00abe0010aa16f02358d0e0c183041665f8c024d2247f11254ea458d1e2458c19354e9c74d0d33f9021458e2459d2e449942955ae64d992252983a136cea45933e32282abf4ede4d9d3e74fa0417bae22b8c8e2b47d49952e65ba8f01c116fb8c3c781086d08e3d880234e5dad5ebd7a463028d0d14e187d236034a943801f62bb48a8f0aba12eab380ab5bab76a9ca85d0af5f458b24d9245cb8e6a9832e152f66dcd8f16390ad0c1a355cd9b2449cfc74d6e5dcf9e7aea21595b9e5b1f429bfa8148c4cb58ab5b45bd8b19352233bf6c8ffeb1a6b6bc8e6bac1e25ccf4251b92ab66a952a557f117eb8dcdcf20783a9204fa75edd3a4a46061539e75e33f3e6e0e18526e7c79ca287af502040300d158a08d5acaf8ee15dbf6b80dab52fbc5b3b2001ec005e63cab78a80132f38575c0966155f043ac8bcee22d428038348b9ee420c33542c938324f4d0a2ef0e14d127f2209408bdae38288410f6943aad052044806fb5aa0889022c284ce0e32cfb9ae220bfda0a58ab040b60132b1030b8b28800828219f1c959fa2aef432a29ca8c204634d4724b2efff1e4a048aaa432c427472cb12268baa2823513da430d881452989135b7f8a8718d247b542a0220c712e78bb5d2888dcf408eb8912910732affd34c824c14d3c3835ee972524aa903f3510fc95c54bc33294a932b3e547ba04d17a102028638e79cc7ad43a67ae02a342ee0b13efcfa0c849cb5c8e1c0c8dab642b4224d370dae534c213528934a9355d6a5520c72b4d8cb8215b6b3824e41b32b376634c3cd16ce2002553955dbf62b2a2810f555ac10318b2b0b6a28b229dafa8c61ad2f04042bdeb122686a1b60159d76d846a1953092833e59f660844b82a9209904764eda7f852a284c4fbb8213be71937af10c12be4515be15c0fa434651c30823dd3c974a40ad126af86fa928080d12d012d8880d0c209bf2a05fcd22f68c58879b23d8a0848b2e1a94c9826e2e3355567105159f252688e2893e6dffea5439bde0760b403a0657043ed2830106925dbdaa0cae721bb2e59795aad54f9a058ded6db20e556a672bfd8d7abc80956e0eba824a317af065b32b8832bf0dbbb2a00554392098a7f7d667e26bb99ae3db14b42e15b52d7aa9a28a2242ef828aaff0f0b86caa08a18f296ffa535bb7b6f7e1e188b1702d618239789379acd5efe6193cc97f023af1c20027c842c2939f54930e892f6cf1bf4268fa16baa6a5bce2aebcee82db1eabf09aec191f58a3a995d72ad21b964b18c080b67fa066de12d49835b62868af9b29bc278238f89d8677de3b8380427903dc12870cf23fc24c42121f58049394639010f86215c598c593a4f42cab35a56b33c8dde6a262ff1f2e68e17be132020a9a3281b51860292748dffada90140bd0ec5df5c1195974f63bfe01c57f08dcc8e2b24440205ee84b0681080f0bf388483021148b50c4030d920b09baa200009b12f6b8b2853734e5453d7a833d44883939858c292758cb04b882be210de0040940215bf4b40f42e98b29cac0a1e466a1200639a820cf3262469a581049055190d5b9541f2f83c40f08017a0f54c52e9c06351df6ad6af5d9a29e68c0051290606cf180025312d09f197af21d2dd4cd1bf771245f2de537042986b012641ce438519286d4c8419035485c3ee620d6a265773811890f64a002b2244850c8d3b089a04836957ce319b8f02d379c702d6df94a020cd0c2d8fff5280247985f5256c98fea796638c539005f88f997c1f4b296c7ca653b19930a67a9934a933845301d889070f6e400a1390f25a162caa440e10cf8e8a0520c5046a6f0e0025cb1a6f900ba0f30a44c2908888b81809297bd84e09c08090c431c5244796664680531983b4dfa927886f451915820139b0414a2f0037112c1863f51f3d0ae58a03fb1e3001ad46537957903a75d21d044460ac99fb862a3045188103e2089487042a5851929414e7a55952c8c20c89ceaa332b38b8b16c42236fde05095c2c6692e050a2b4ac44f1f7a016ac8461b15414c3183120ce5546011a1f8c02922f188ae3aa7aafcc06a614d2299c3051653800b0150944a10c05204ff01bc61a659f771d09631c50c356aebbade7881b1a4122c18a808e0722114d0f043111ff84024a8a65809198f1fd2316c6d4362387ec2964a75e5075279828aeb4da41b94fda765f7a153f5c56e052523445b8fb0ab1ed5b05040f54afe2442217ef8422817d4ad98648b3cdbd616b732ed2e95e442907cf26420fc6042e56253491bd8200001e85d8fca5702a12a050f24e4ac1e9e6b1fe98e65a16ea1234586d9b3a054abbc54fa6e786dfb0aed2cf8430e041e4fc823848a28d32d1ca8e4549a2b5afba84d854a0102e6c2f7aa44f8d75e6e39527ebad9148a16889541792c3fa42a610909c120ac70706d0d28561c4748c7fc50054c993a56b7a0a00c11ffa8a417580362deb42eb94bc1a48999bb8301c78603f6cb8f1cbd528d8a8c748a40c1ab6a832c211ff6d8b03f26c899bbc304822c0028c528486427b201b028c008cdad64a8a662034fc6e6bea1dcc71baafcb1734974c35c06527d9b425a8a004ece4149ed4cdd1c2d83fc50cd5765333f2e2dd88254d027c025082f278201b0b8830255814371a93023409f75006a5cc31a56bc14117385065f44f42148c79b0003e9d64b29b0fe08a2dda070f7d34bcbf4a6b1dae96537a720b7008a94304c916d80850a2958751f8a3b07b251206c4a696309be100334c46ac564bc9d5776edb51474c184f6c1577e14cd941853a4204e4a70a9a38de98268dad9ee1c62ff4140fa6fc264e60040d9273f086091c97ea508dcf6f64d9382b9715f766df48ac111e2aa947cb08cd04cc183160041843f7432ba7dba3753203d11de8e39a905b931c20b734f7e0472e0262da4cd6d120a829cf6277426c8c123a20db0803b055328ee3eaa00cda4487900164803cd74930f72a7152c5bd0421e005a6f24b9051b15197263ef4a90edf8bc30b6dcf9497baef69948a22041592f57235253b09c01064cb7f83eb6d0b1685a8065429dc121eea186b5b90bb366844d16011ae096e37b49045938a5730b779ab0bdedee7c3be631f28821831328a97d784522be1430a4120a86a843d3e7000420cc01ad251871115045817ba42f8dd9342ebcc6ff127997d3d5a23f51b6e767a2f9cde7b2f3c6a7c82970ce6f9f109d1f46f707aa978282072402bafb0042ebfb8e6b8426051f98d39a37caedc6de7f050c4700fe52a6516c8994bd2e0a66fe46909ffc412ebffe8fc06e9ca1ff93f5ba368a400aa578b507401ba5b082a6530a761b8017da8739e0b582b20014da8da488020868bfb98900ea628a17eb8ab9a28847f8a3ca732c9aab3ffb6327fcc325fd333e49f823825005996338b4b33389c8a07dc896078835a758c0e302a5a5b824129881a6b080975132ffda3efba08238d88341f032531a3b8a903b82103532033214cc88fb5b41206a41b8e384c55980ff0b8a592888749a08652040a59801117800ffe8aaacfba226b5da0295e30aecbb8a24b40f28b00174714228ab0f30ab0807123acb2b0a1bcc427d53412e0c222ff4392680c1ecf2adba208fd2b3a2808207111897ca6aa311e30d056895aad8013de040dea002500cc53de0a6280cb369ab8b32433b5343c489d8c245549e46fcb74908c3560a8f5b3043d150c3a498037c009b1eec3bb5613cde700339a19193410347f30a28f803feeac32c738b2800aa40cc1b7e98b4ba70058d6218594cc482b8a55a24a05b5c36d9e287039044cff8c64a9c24a6780322100128a824a9e33db0301d449b8a35e840af30042b739593d9830f6c8a9849a5f76345bda90b54f00583a800ea43415a2cc7c13947378b84ff03238810482f5ef445d36b0a1a5087628c0ac173a8fa9803781381435080fac0034dda47aa38996aec8a98098454820b9e590076148a60582fd56aaf709c488a2c1a8bc4b147003a8358c74571478bd030a6789138d4933cd09e79ab0fef3131117095421836982114e8ca37a32a880aeb8c2831880c3844e613caa14498a25cb048c0b95cb0c232e9458238c389403aae789136b2c01e81024c3a83377a83aeb1b243b0813a4c9178f132eb928803d3c9116938b47badb454c4b5ac488390cc4f03bd8318cb32f94645404b65383d37593c7c940d1a70bc37ca83c144951538ccfbe032e80ac12914cb3271059fe407bbf33cb5ac4c65694bd83a05489441ff9fa9b1dcf4070d6b01e4640782a8810998807a404ee88c4ee99c4eeaacce1658022bb04ee49c8119a08315c807ed84ce25d08fa4004b8918418ddc94867cc89ad34dcae4cd84f1cdaee284fedbc631fc17f2e007ccf407ab0187a5fa4f000d50bf200b6ab89169e017b22b885ddc9457542dbb84bb838805f8349a4e434b1c7b4483f08519f49902582f02b0503cdb07ff1450122d5162220be87ab9b08cc18829cb82384bcf4bb3094d1868bb343034880558d0e08929dcb488d0740a066080110d81202d52233d52244dd2235d822968d23e78520990003850522aadd2200dada490cd8940cf6ddc50f5844c87dbcf6893d1193d981a3db374f4859d3c10ff54b80528da2efac33635ac2ccbaa029844317f7ca34068916ca488febbcf692986dbe4a36523d33255963395b049c8487ed848612906876c45a09885f55284f694886d20403a35aba7fb98aca48a3528483d214504803f898033160d1e54c84f7ea8804b2dd4663bd4658985e6c1b1c551ca32998503b8cd3893cb9e78c50ab808146903e47cc0deeb05eda10305a84a1a8242ae28558be888385b535f2d930655845884d5821020595596f1b2b4f2a2427ea0b627298060f8c6bfc885354d2d7e10408ab0bef45b8a2dc80320002805684244f80a688d0b18e4c89d208a1038002f15915940d776b5d0206bb06e4d966f3d332e2d41f1b885484d880fe004ffa454c7a0400529612f6105c6783525285080793019acf08a7d15c18ce44c7d90bea00b86810d0f546057878b481c53d885a594863db321e346cf70855de055d5128283cb481ded094af5c88ac8d48f7da390a58343389793212a53c58c8200ab4905da63bb8535f50c414da94bb3d99bed12ad6ad78b54d0ce28805530d8177dd08898843f5a8097ad317ec8564c15cda5958d53b9d330e08a3ea588d05357a0d0d81785c4aa2ddaf0280056655b091357ab0adb49195b42ed2e0742b6c07553bfa8002678d58910d7220b0aba542d9a558610bd5bbcc54a515995e0bb88d00b81359d580c7b0449a84fc639806aed0c5273b8651b2cc77d5caf4dd88260c7ff6290d982508450a0d9045d489ff85c45305e1c342bd1f1022f30031328030870d6a500821152491b60560440508b08bd05a85d7de0d1609d084e6002462d8810588597a5c1a9c9dd83e884dde5925db2d17de3095d555b821002bad58847b8277fdd093055dc88f000bbc5a9970c9f66f40a2018cc227003664d8a6e98daf8631cf195becfbc088bc5b982c88560d8da9d28c3cb73b3f31ac7f9dd12f90c29ec62dd60d8d887940484dd0869ddc6ad955902f60765c04bb3faa238299916b11c3c404da69886c5dcd22b095f32f449e39588491002c2cd5abe2108cd0db2dd3ce1c728b8a2fb34c6450802088529b60954cdaebae0d11ec50803362b20c083ff3328822e081f1ee48d6aa0e08878848c44e2c0ddd81bb68853083d1cdd85a295bec8c53148d4392bbe8e4475b32756042110d3caf8d3baf85c7e80518cc0008f1d2a14a0023ef835d9d88022e608180c01f1d507d7350cd85da446a55d7d4005778c615b8dd542be0ee639a065e3e30c80e10fe1527e08657db8059f84c88c500668a864d26d0a22d68830e607c00d0af26d8ef34d5f8d9cd83c6ee56d7de50bc9d94feb0802c8dc95525f103e5ab48b666016e6afa88278e88215b0011e78c6d8e064ffadcf5dd85a0c66659b988450e0e0c4b239b0a5e6e9409a7b5eb625ceb1fb65481796e48cc080d1750b645dc693b1deaf98866af05e8c784b8350d9ff1056e20f8904273e887fae5983101c7dae0ec80dc7e6e052c7ec0c30558468be3b6d386020a603773082302015b7e8060c90e32de5e30508609ee0d1e28c90d8dd5fb5d3dd8fa68e4be85d912e8cfe335ca1e8dac3f9626c33e8d8f80105604993ad869aa6891734085500e19d50e51ac414d895e7209b6182f888a1868c143eea88e02dca0d8ef58c09b14e260ca806966ee80dd0060c90429a88843004d4a0903e77556bcba8e2b34e894e736ac1b60892e6eabfbecdd58aeb8ac0060ff00068a86ccbb66c0c98eccae0eb83104ef19858464eec99c039812b6cc588652c14ed9948ea3241053055ad8aed23ce8620a53e5b0f55edca581c6e35edc518affff2c56d8d606b612980892d8845761ed84ddf05a068cf78c540066e8bb8587e002fde760956304be8ce88c5fe17576055a6d26687c168c25d6ec6ee8c8d45ecec3ed5c4a86ec568963d4aef8b60ede1145e82c0dc8dbe8c53a8678420ef7f1161f2826f8d18ac92626f96a85f0087b982686bced0d8102057ce28805df50b02100249b8ef990026534666078f18c804ca03576cc2267090e8340b17eced16a78d5ddff29658e5088c50f8a8bdae272170e6d9d5659fb0f151f34cc8866e482c6d1137090893e50ff787d0f3eb9f10dc83e06fdb6571625288457872287729590ad8da0edcb41d57f190be0c18f24429081efbf194e0e71186ef91ea5cdb75e1ff24df85f64daa7232d1fdf68560c0f19e408555b8cd0def0cd0e6f248eb68304f097802c70fffdf385bf39ed8d80a40a24552f303519072c25a27ca85a6290642b772acbdf3bae850a6da71d5e62d8290df3e37898348e9c4be5823f709763d7489986d83d8059d26cb57320e588775ea899cd6aef38360544be7c9f7d6f388e08410676f12fff0320f8e53474b4ee0e3186cf51c5a705b9f8c3061dc5c372683e3f588e8f14f2f89204fedf416f42ef50c76cd600d467622abf265070a08e7d545782dc65576fced673d5f9c2fbf7691b86e774f6f52f7f6e1dde847f880e02c77cf2800fa4e778b10573bee0c1ef5702e97ad4b90f79128ea5d27f38230f3ffbaf8f612dff73f626e7fd707face80d0267839f76ad5d274c11e2cb366f84f30f06d7720b8ed0c8a5f3b8288f68cef1f831002f4f607e329f86e7c515e2f6182d004860709d4862c00bf588cd7f87c2f0c5f47af988f6202a8f90aee55cfc8733d67d4dd9677316f55009f614244ada3a7aab93b5ce4087bb11f7be428759f882970dd08f0c57154f050913f6ae9f6688677efad02f08cb4f196370cc6128fd776229ee58c98fa6d9b58fbce706e3de7747e18f04f3f7983e85fd1361e8ccf7bc3183289ef0c47570e72ef891aab0cc2e78cfc2c71b5e6797ef07979cf76a1cf6eade70cc9571ce47d6486612dd88f7dd67220abed8c1a7bfb88e87ca1f0efffb44f6f468df74fa7f7fa86efbb1fe3ae1fec970f0f2911fc8b40ca92a696f7e57c0b06fc8240f8a1378885977787affbec369eda0f2bb4037d10577acff0ef944e7a2cf78c389dfce9170e1d1f72c42f7930efb4d03e6a68f7dce3b78c910a8fd40208458ffc112c68b060057efc7ce96be8f0e1c35c0a3f1cac68f1a01085fc16cc8208d195c60c1747922c69f224ca942afd6954c8e81fcc983267d2ac69f326ce9c3a77f2ec39b3554b452b87122d6a94a4a496ab3cde6a79ea6841260a1778acaa0fd5028542504a5588ca2a44550a4341f597716a47ab05b22a8c54f62ddcb81533b44ce5f32edebc7af7f22cd552a4dcc0828726d5b8eb61538d92e0ff8652a80a2cc4c4fc38a1e4a43118648707142e7a7b76635a88c1d84e1c6cfab4c9ae1a3ff16dedfa35ec989f5af25b8cfa366e7fa714196e28b976dc450a0f64761882b34ae1fc7215d7b74a6105b89f393e2c20562301b7b9b79fb6dc5253ecf0e2c7df7c459b32f7f47227f156b8ebb76db8ed311707a930fec9c2fc0a142fa631ee7469dd421a3fa10ca41e827111d0122be439f8606ca9b4145d82151ec51e6df7c9f58846ae34b78b4242a9c4a142f441661f3f077aa6d102aef8d2527616ca7854632d7502218e39fad4096d4cccf8a34a18b684df5b9168f45566a86844d64a74f11342714ab625d767b465a02290599a34096de0e9f82598346942ffdb245a9a399290c005d61555c53da7107a2a9da251686069f41495b42982e7997d5ed49e42a084396898acc0e827a2056148245c1f38d6dc71fc0036547bc46526113f1405f6d995897a5a509597103a6a8eb431f9699f93300a97729642e69f427cae741694995da769608bec892aaa73b69409a9c18e170b6ddaf17a6c590bf2b354662ff2438051462a544c669bf1d399608f6089ac9fb4b5222cb8b001a59188dc9a4b54879915a011ae44297b18646f627b2ebd4539a9905de1eabb975f1a6d552fc02549bb5f666f4e46e35499491630c328e9a7106bfb4adcd36c43367cb141fa15c7d6bf4671a9d02d27fe8731c90779a7919713ab8c93792d6d5bff72bd8ef2f3186492196b94b20c81b5ee9430c39c90460dae3c744d866a44a1cf012b072f58d7415b966a485aa5d1cd49375ca342a212bd754c97b474aad5f42acbac5a1af958d6c921831569bb61073cb042c0724d7426c5ba5d6fba60592b105c40d36cd5ad775f4cdb4b730fcd086d829ffb31c15661a5555cfaf1671588d72aceb0720a9162f8d0a4fc7539b7bef253b34665c245223f267a242fe800aba610e72bf7d8fab132330716a648c3e5e4ed552d4cfbe2b4c91dbbbe75b7643af09e3a19c22d523f348b6281e957e74328267f2ea0fc144e7cb888937bfda7406be44bf30f55cef7869596ad10f2e0a37a2f3f9b731faee721b99fa8f8b4e512ff4c018f173818ad1c820a57ac6217d7e9d9fd3ef53a7ecc2f5cb4695b02b5c40926e4af25913a986044674002cd2e829e625cdc1a182c4fd8cd83889a600535322fc1642f43d8599509b544381192aa65238b61a21e2109f8a969305883d1223e2089aae1b04f99e387d0683828a321a7889fd2215dca35182e296211a16042245ee64444c92c6b4a2454bfc6b2455e3da27d83d1e2183f05377e44ec8b3ae29153d228c7399e09750a89851bbf643c8dc4898e7efc238294e5923ceac87b2102242213991bf8c98f901062a2e51429c949c6a58bfcd09a231f14c64c51b2939e24ca1adb9849f1c0f14e9f2c48336e200363382310ae74a5317470030f3663ff95b578252c75e084669cb22276e4071e47399e3dc2e993b51c062e9389cb5ac88097c943c6325aa94c65d64296bd2c8820b527ccf1d850219d842632a729ce40d4c299c90be738a9d9cc5e1e3189db14574b5688c85ade329de25c86fb9a514f7b2ad39a9eb464bede099bfa412e91cdd0013fc7a983915c83180e7d28b71afa50878ee4060915a731664949d1c14ea0b0f11abb10890c19ecf3a2b81c06322e020241b0b4a52c65462f9e718d3e39c01a5868804b5d8a8591c8c0a4d33486391309427e78c2a3af29a11f9b214d9f2e33a806490633722a554130231bc4f89103b881d3a9e61404234127535f894f49d2269846dd0b3131e847b086351063ffb50816b8cad5063c23190902412fe43a5566d8d522fa6ceb2bcb29c96c6eefac7919534b00d953c0ba72a12ad5ab5c99c10d077007045b85ac54777a118b3236102855e411056558bd18921fba93236719fb598b4015b391adeb6d2ceb5ab97af5228b65ac6311f9c3468ef62ea08867524b1a56c15e24aeb38dac354c438ccb4e9516b2c02c33287b11b686f5ad7fb464297a9b178272928ed465aa750f620da9ca4216b4386e4b1b30d3b824231b90e5050066db8b91fc95b1c4fde31ab58b974d42d089b7056c6e2be280a8e6f4bccfe5c573592a80e70a0317727d065c404060bdc282a500a8306493bbd9ce7a36a5f8a58d28f5ab13a48e31b5805dadff45f22a5558f08216c200002e64810b5b08c016b200862df4aadea3b417bd8200c031a02b5d8bfcb7ad01a6a3f044cc935222708bf505ec7d2b325ebdf2e2180208849565c10b2cff42103616042c1cec5266687828d760ae4b79a157609c17b2f3fd2a87c32bc7b22a79276945a309bfeb53391764c090b5850b80218c5f0003170268b13004818b0a0323c139cd465f53b252aed218c38100464e81d165cc96b9224f6e6b94e598bfc2d6d92669956391c37ae483a8d8b53116c48d5dca6205e758aa0d18b249dc2b570008a0a5b038744b71710c35bb76bd1631715b512cc72392bad4624a5c8939acec833c23cd8ef6b58c310ce640fc62d6c010b4308eff018b6bb79419c61e4932d02c555e681b162e70014b71c1ebe3368024a966eaaab7083f773a9b26a595670c3f3d5ca71ae41a695e348b13cdd26ff3a2cb9a86f52f6801804008a0e2df1e34579951db8b3840dd7afd4520602c08600840e4c785309c3bcbe7225a92b7fd9ec9bfc7a86793ae9c20cc95058b65e1025b000000348e37d0a58a8b5f1c83d762e6058ebb7a916b4c58ae6296f731daece39c9efb2002676aa89dd8f297db645c4d2ce2bd7d9aef82543ba7b0c8b10b8e11f240249ae7c416042da4de529e9f77dcaf96eac60bc274d7c697c6c3def4d45d5aef8a4adbc363c42ed76bc25db09910d9619d76c1a90c0c58fc8217c29005c8d90e00ff5ed45a16b5cee9313e2fd5371ba4ec98fdc59505306e01487dd62e7581c2f58a72db7278ec26cc6fe267c2ddfede0f19c2c53ac10de271aec20200bfe0f995e7ed6531e714002e8045a2b5ec52d293fdb8e3f635a6151c64977adeb5574d39636b1e41dce73e26bb2fa231e24c126e041ecc7077417c4bce559d879ca5a2a73e414cef635b309f166f6fa9ce69db5c459aa7fd9e4f65ddedd146f9c9c4f9c550d89994edf90331b45f4ba1def10582dcb994f1d18283011e4be19f3fe81f05c29a30889ebcc51764710349381e53419e0791df024a4848355ee1a1dbf0f9182d141d4b95202d08a0200883a6a1604b81a008fa9879b1942c08c0f3e554af61ffd6f7d15e6745a0fb84d202c2046dc84aef19a049216041b01f05da4206fea0c41d830736d82f34584e11e1087e9bac09a1a2851e6635000156c4cc5d94f8b94f92552189dd4ffaa91c494ce0d4d942090221b909c296b94013f6202e141a57a9e1080ac2b0291ad1699bf261563690c4d51d60f025501e2ee01e82cf035e5404a61b7af1022fcc9829929c965d5ba5d9dda101c0e5c5def45544114e1d2dc0df31b8409bf19cb81d57de55040bfad43038512796df27264f309a940b168471cd968c19e285fd822cc4570fba1f13065a20e8a2e8cd22b53d22dc91a1a3d1c219dac2ff41165fd91b87c940111563ee1d23edf85e677121414cda7181618b09ffc009965caf89a3d96d5af1455d798d1e2d8e208d719b0f5a5839429666811f60699409b163e2b963ebf461f891446b059ea10d42c9e522db351adc25e40e66632f7263e951a02c58992d14df54812464fda2d569e145c963f24024d749e4e58462424961337a237c911c34ea95ceb900f37de040b69f0058d9220ea59715a26b9d23e175d6303ee4af54e13fd8a4e024e3452de33c7aa3d025da5142d68c096437ee9f822921530259fb2d241432963a7a104dbe1c4869c8f5c0a37d6d22415c2457729f129e172e9cd736ca9523a2170aca5b134a15105260a759441d269443bacfc98450153660f2502460dd61abb9168b65a0bc1d242c60d885a59d7c49ffd9d409da2daa9e5c5d9952ce567461224c26944c5e0e0c969f64d20e4ef293144ed9713d978d1d5f4bf9a44b0d25fc61204ba9d9a14de336822020a217a01d03239a1d3e7a5924ba5bfd85e60a4a5b02c566eecd26e860654269a53ff8197a65262d4c5ec9fd02ec196285151f251e9a9a4da3fbb19e581a4472e625228a99cee142a0e182bcc9a25e256645d4a63db525f86067e269a7e220c352819a5d12c465fad821165d2e9e616f6ae6c8559c2b09c02f78e01056c47c72e5e4b9d4b7951c30a0a46ae29a62725863020f81721d244d0ae820941f92046eb61f00e0d8f1f1c251921c2d98e6ba655fcf09e55421275786a5acfd828359a82efad8e0d1ff576bf2d36bbacdeb60d202c65ceb3841ed950478e625120243c809e15ff6e64112e5417468fb9da400fe28972669dcf9d8ec6d185482cfd6e5852768022380022990422b30422cdc08a174822680820c660d9eeee95d50e9e534430d92c40df224003c972c0843afd9422030652372e890861bf36523c525984a4e5dd5fd673a5e4f9cf6842780c22665082b0c4f8e740223c4a50b058aaae6443749d1dd20683c2e68086ae9548121dc755935061ba5926441902905ee284b819c3084e9d42d2943b6558a5ecebef5442670d7ab6a04298418796482ab56abb5626b4d9cdae5c06845964483eaaa06c21886fa1c4b495c6aa6a1a58e202e5cde79ede89585ffa1d9d92b579944266ea1e1810eb3ed4427781db7d2c62514d58320d6c0bad02be8445af551d85869149e043d9a6b4e411daf4d2a9825a99bbdab4922e1ba5e985c299c797e697c5667671903f010964e7842a0262cc11aecb0b86cb58a164e58e5c5202a54f6ebfa716579f9e022725f867a197c0a432a56ea983ea23db264bc3dd78e9e57c9c11b64c9214a00683a09e8e5bc654c78c2b66a8423f880d7fa4025649346142c79b890228c022460423ff4032698c228886da0e4046dc010c9d86a5daac4723da29a9d226fc25aaf8ddb116a1f2dd802a1a96b90722cc5ba14d1e5187e7ea41b4a1533b4e9492c263f3d6bd83c263fc4ea4c74c2a93e8b25acff2ddb4282e86e0224384286a44c6c100b6df88029f84006384206b02ee85a02dc361b03b604ef918cb856265180c04efa98bc46dc348ae3819927e0d9980bfc42cf611a530a69e2f6a52d9023dcf59dfce99835cce149ec6b4cea6cd8ac684c40123f288228ac6d23f880d82a4225f8006df0db6b082cfac26df8fa4023f44323544286782b4c4012c0950cc4e2168fc956fb55d931e4629049dc8e6e232d68aaa0659fbb1e6de202c02da624ac9161d44ed65170273fa1ace244294ea495226cc2da8a420bd1463649e940c9ac42100008f78328acef4d94d669950cce46e13258ae4ad4d4a2521aeb615e97515c36b294004a272286a9f36ae98e0a0312bbff9879f15f6465c3a7ae442a9154a80ace6ee104777df0dada2f0a438c786c7188ac300fe1afeade10cc2003e50aa30e2c03ae92c4356443d3359fc9addbbbb900b7096dc50299e136b07c9a2b711a1ab0e91516b8644a44316572982bd970c984d64d30193ff840087bb142a0ae6ba45550c46e06886d05906ff64872d6da2cbdecae2127532d18830c207249f86e730103bb7d298671e08fd9ab20b66b116b69126aa8ad5d2f51348313e8408286f232712fccd0c6c29a5a50cc6f23648f2398c2fcf6c326f090467c4b6c74534b3832e8f6032464d3e7f683160f924dccadcf2c832f2714299b32c73dc365155fcfb99847ca957b9a97bce1abb01204b14effddaf655fc3b52b5539f150e8b20e3469386bb0d560aee6c6446939c2da5a424b54423583ee36b784cbb5c66f65c8282cb42687c4daaaafb5de44cb325ec3686f3853531aaff141a072053e9fcffdf1543558c809a297492360226ee0f11c2ca8a2f5622f4920c30df0f2479b9413840d47f1039fd644694d743f60f4b35034f9be6a78b4ac46980252f7c32870ed45b704cdd244444347c998f14e3f5e29df30374c98e7399f5fa2f4c25d99dac55f7ce5713c4be0083a575a27dd5461c11366af1314f256279448d3cb0f65d74d8c313f1874514b355223b40bc1ac6bbc2a6053f436037643db2e4c20ac37e9ee5d43993f9d443200b097299cdbc122f76dff59470642bce2eb2ca3172ec017d2b1a464992826ca402f4ff645390330374c3be144c56884da1a353f38f5426fc20847326c507248a86d35b7b04628342664cf40c30409b50411d50b38bbb67d55b649e0954bd942d40983b1ca1a19aa9d00bc18a58eb66b099a201cdaf6d91a6c652f6b43b7fffa8c30e784ab6600dbd246254002fd424243670834bb86346748ecfac0dbd2062434420505754db86aee728b47abb76b4af71fb6daa219dfc3816cb01d25db05ae1e0febd4f15a341e640308b25fa5b78277564f97cc1a19b6e2c9772338b3cc06546b802f0a57022654105fdf84fe5ecc1987383f39c33a99441b03ebd9f52a13c7db953daad1ee71204affb8e079f84180138e87725ed74e4b98b05067080188420ac92c6c74aecb2a828ab3ef4c48339e1d0bd53679772e436c1b8403e89aa2b9dbf1552f121e254b82b76b0564929f444e93b92fc336c9e48f97cf845f43b20b25f78e003ab73a7627c711c060309e1fa00eac3131b4dab8c19700e2a8b20a829c2ba99217043238416b2ffa7a37cc2f0d336d137ab58a3a5a91faab0a7ad7b444c79c4b827b7a58659449e4edc7123992bfb403b71f99e96b3fc3fa47dfe1b13c0c51ed8496272cfcf243559316b9000a01dc77b566cf4e5c75f8028c5dfbba213b83999f327345af846e6cae4fdd795754b55bfbad360cfccc784e3051d71e7b88c0b8e9a67054e3ff8b6ba87bbc2b042660c27f9bed7cd73b8bf73599d0cb982793331803c117bcc113bcaf33d399fb4332981e2c082786ead5a5bb996a1f4434f9fa301cbcc68f3b3f4565c0644fb2bf30b9ac2d24f880239cfcc9c72e7d33f33413b64210785e84910f60424b10757d8bc2d75ac20af7c3bb233bc09a8aab67b00ec88013dc4013e802d2e340072c3dd3377d070401d2eb423bdcc00d38810ce88031f8b3212b3c4938808a75a612f2e785cb33a697c4c52b38c1cb4029df4033447d10383ddc3f3dd22b01d5ab3d2b0568c0fcb459e5043109f75333744b60c2264ce55ed4766ef7c3bd28c232fffddab684a9e304243d0db7b47635c940132841073cc108f4ff002574bee77f3ee887fee78fc0083c4107e0802e98c3325c7da78732d78f843510986fe2ba91cf1637d874419cfd568f32d1df802ebc7d07907e0e88bee86f3ef1e7c008ccc0e92bc12e7fd793f749a8f40493e936e3374242af2da018fa4ef8f5fc42424b8c2fe3b3bc46a8ba4c40363f6021aad49333e84013d881e6f740e92f7dd4a7c43544fdd2cf00e9137ff27740ea0384131dce0215347810614285816ac940e60f62c488c97a09b2781123c65e122112cbf8f16203621c392e23b810654a86c664dc5022edc9881c9468d6a4d463c48b0e1d82e8f249122844073e71ec7c31a2874e25628619bc11146a54a953a9727ca4885f567ea0fe75f5fa15ffecbf525a7df4337b16ad591f5af94132eb482babb073e9fe63a495c0590278d3f6ed67896dddb09dd8f21352157162c5119df8b123ad83345d0ea00ed515646766cd9b25ff8498ec728719236cd2cc3182a739194d55b636586b59546bcc4066dcc8d1636d8cd99241bd61cc7570673a96bd7c11adf44d9d382647f4a9abe866e93b3beb8a1afa893413621677f73e5552e15882c382d2eac82fda4658b3a257abb51479f2a4b466380b58aba5f46747694d25ff2b56d852e491ef0cfc2e19ca8082ae83a366aa299a11249c50a6e4923b0db50e74b9c69fa144eba1b46866c0a189d58253c999a782baa601dd2cba4da2675c14841910a06a468713531aceff9c20e800d1a60879e27028c88e42ce429b30a450c2d2707a424305394af0c02a0d5c84ad4b00fcea15ad14d9efbdfcce3285ad4eb69ceb12ad44416bafacf20213aeac5a39f39f580a93c4ca3c17d3a5419c66d8e939c5aef109b30647403244d482e05017698e53f21c1275a8454785746826a864b27111c68864d4ad010e839281d24a1132a609256600d234d4744990cf17585552c29d98f30c31cba29bb0031ca4d413d8aa38296c4e3a33616b93fdd6e3ebac46d81a8f4eaf3c61cbadb3d612733fb63489364dad2a08165c9218e4c9ba70252ab28343931be1091cae71208827661571bb934c654806a8acd1ad53883e05a997de80bac15e536bd1a1ff890ee61df19a6430ab9056283734f7dc4623f395e28cfd09a5304fa2fd872dfdd2bb362b91f5d28a918fbbd284adb49675733f48d8f298ce560a8b446360931138e7eb7088a9b4d33474585e9b5eb0c30fd64c1d0653a040a0eda37efdf937a36c824246867b1912c384191ea444445f1dc061064469ea6106c978ee3953b683bd8aadff3e4e45ab51d27b999f37d1ca402b5254fec7e6ac2ae88b647e4c4e4b94c0a2fda4b0c3dc7e9ced6b7e9e959211a46998ecaf7b40bae013f305ea1aa8316a8024aa2fe22628820d16638d176cb2fc5d1c5ef81aecb4cb851cf79ec3d35665f3da1b39e4be12cf4a4b95e9ceca6e97d9cb3bbd4afa565940b638c99dff7a8df924ada61c5ef0f59aa2cf46bad41399065df48b48da34231b49c2da54395a877086208836bb8727e4af1e7f8ddb24feef2eb5f20b6f7a438bccb442b368058f70084c4b05b452ac681d8b2d8ecbdf0483753d9bf4a003ef72544d7ae00539e80836e4cb08492a8211d491a4194a73cd304c700e0e3e2176ae7be1fd2858c360ed0e657f9b9656929596c21d0e2dbc7b20b200b83c4534a22fcffadb58d852201b3ed14af142543460980cd9d5e41c26e85c4a74f0108e8060841c29a145ac469265844f25b58883141ed4036938c001d26095f6300645897042084eb4636218c8964ffc0d64d83a0b269627c00536f063fee3c797d2839fac9465807efffc1bcbd8f2813d5ef23b71c41ed8aa78454ae4400a1f5c61d324f2b41791645f1639214772e41af701c98d7094e30b6f87497f30012ba1b02555225118ae00923e59a9445a9ca7956af9a53f59911b9da2c70ff7a4677f8ac0045a4856bc250e687abba4ca2408f0013ddad18a5ea309151d908c595202096bd862426aa12289240304cf585b4440608d5f4104192a44c91a674245cc6dd272f7c4e423b0a4159c69132a7dd4ca1f0119387e0cee2c9b60cb33fde2487e7c8c89fc80647ac8a495619e856f59f11b2029a915092234a16ec2d32e8320ce9be020411d404e0ec28186d6c4e640cd58e7416ab10610e56006d669694db637cf5d9e6279592110ff4a4982c3acfc92a42d3b4b9cb2724cbf48542b99a01361b4620a30f583aa6d395956520648b114269b4c2509c7d8528183b2549c40b58e2ec4298532a8e473de69061a13e28270cc64043075804ccf0653b5fae311212d0c3f3270d888ec2f2b0c05e40eab6a168b7e144ccb7b059deca41524828980bfeb87b3b402ada8b2a5b18e8d482f17cb8f507c139356946134606a451021210b5cf4ce0df87a103448e1934fa04c1064184bd54622a98b4d2b5399e04bb37aa55bfc585323a239cdaf52552e67ba0bccbeda8f6296ac1fa1e587640199d1acbcf5b08f806c610880de5d9af3a733a0cc356640897264a1b705d1c1629681120120a17238f0873991ffe34fd52296adadcddb241c0b37493ef71fc1e4c7300bb75130912c3e6792b07dba8bb7236218c27562ef8113ac60d7c27697dd036c10062c8d68d0f418964a4c7f159205240095320e10e70b587c607f70d3c42756ad10881562bbe005abdced6e47237ba6e8aea9bbfd189e30159b5d084b382b963c2c6b832c38061f1607a4a12d4482209370c41821fba5ca0d6a5c8e6848a337ba10339c7d0c910f045911ee652a978967a61077b63dd48af268950820ca8a75d00a5d640e437ce8452e579beaedf280be7c58073c210739e8406f740c6384e4f5467cfd6f6021820310bda096079e84a2179b01143395d59b3532e35acbe141efafacf229293f066d16fff1b245ab4676685616a1d612b36511c9556aa51d6b6a4df726191d90476e0f82d3a0ecf520ff0d6aa95fdc0181aab6b94166429def1c37234377b1d2ec753f143b52f93814a2bd4e6661fc1ce24e44372be346e829144c80477042b194ae335d9fdd62dc1ec49d1cc9a7415c8004f972bb0702ae73443851d020175bd58b0df6b9b19c1528f77aca1705d0f1f891bc5ee32d2b193e37a0950ae93d3a78b19576aab726dea1274463d3a59682000a520b524aa495c70887b7b98dea9a474412ca56b0be1dcb6a079e7bbbde5ab7af67062005f69ac959b1f2b99b29386d06bc921c997956563a71f8e6dc1f38a86920120e91bd3a231c7610581044f4ed0327ff76d28561364acb0d9f7a9f1b823c9cba59842898c0f3a387530ff8d38d7cefc268f992fc6eedb74842e4c250fee8697763447a1c94574144173a31eac4d79b77cca394cf59d9f8b9ffd1750baf9baa50ad8b22193978941b70e58bd5730d61ae77a0a43e2b2e9f38d93a2f151da33df34857700556ad60c8473ab98c37b2221f3a78fef8473ecda4e8d4b39e8abf1bb9eb8b7cf504c16ed2a0009f1fbbaf399fecfe19c88c3ef9e5d7e58f959e7e945a3ce5df0ff127f09df8c15b543e32eaf5148f2da40fc23ac1bc1eca8e244fc15eabf25a4bfd8e2ed538e2f3922f2860aebd2422dc16cbdfb4a9ef0a88f5bc82e434cafa0609d80483abb2c2ab4a70b4ff92cab4cecdd10ce38938a1fef0a2ecfc61eccecb0277304f24cf013902ffd862fe3069ec642d04876dfbac6f79726d2e58eeb35830eb2e81bca66fb16e307f82d0c40840083e80d5bc8407bfb04a3ee014828206152c02276812926beb006f40ac8b05c12a2e0423ea0ca904e78d1f9689f57c872dced06d3630efbaeca4c05010f52407c5efe5d6ab14f40fc2f8efea5810c4ea62c3deb05914cd009fab13467091f60e77ca30dd2cef0f0d711043514fca2f2b52eb891e81d52e01f7ce6d04314b12c56b0abfe2c92431a25c3004ff8111d9a203ab070bf3cd1f90ea0f154113459118bba3f7d8620c9fa8fcb6e516f5f0a19e5012492b2b5ef02b0ecdaaff24d1a254f1160f4f70c62f67fc10d9220215276d1186b1181d6b1224e10316811d85ef4018b03014c11d73c713192d04774d11fc8f16718d2e768d1689296e14f1b976ad1b3751e9e45122c6b13042210342e103ccf11c996a128440d9f8d03b8e4d2b306e82eaf1a96ef11f1c0d8868f1bbdc0d2ce0ed1fd543d1d650d816ebf4d8a60b7d912338512b9e2f220fec145e5207c145d25a8be9aae70395c9237311794e122d428e2e48cee4889290d842f6cecd19b3221035e627eb232830d21bf52412e6b126bfa3e2ba8c26b152c110b27ac6cefb6ef112db6add56b0bbc46b15bba2114ff2d79831049f52067b6612c272fce011262986b52a8009b4722bff11230d27ed2bf50423bd8e7ac852209f6b0409001abf0a30ae315bb4422ebde2f0f4f1ab4cc1111eb3910aa3321b0f1319eb2af30427ad50035b2d638e310324613403132a0673d24c315c70b230bf71b1b4b119070433f76313b0c215e1442b9af21f686fddf0c3d6beeabbb2e233ed2d342ba0350d442159d21c4b4f23c385144b31195db32a8e9125d97108c3e52e150c22cd8523f90137e7b23024535996c70dc164def0b02bb4afd72e6bd092931f96f3009bf3390da43c95aa27edacb5aa3358c071b104543ba3e23a1521142c1258a6b220d9a63ccf330f0b2324c1046f06b0a214e72b0470d00a67c206ad11580d3f2db13901b34a0a316f24617aff26e13a65135860d3c40cf4408162585aab3673a6175d0b426fb32d0fb0e32a1432bd24ca30e104bd2205f9412dc1c43e7ff3ab42d433cd323485516380ec130be33ff50427516b46a7e2304dd36d6412ad34263ab542424193424b50a180342d96f02b9cb0bbec13439b94d584d347d32d3bcde5110e33eff65331f4f4f1b6542ab0302a218740f34c6338a10b4ba1479fcb13f0cd705830b4e20d38b5ee2be6b049c10e88206137fbc249d98215161390e8921fbc34584ea1f4bc325cd00f0b6f1450fd41d958956df0cfd5a654d9ca320463c151d514804c011a154b3d7d083ebe22129585d52c01134cc1073240a1925459c2ea0e6311c2447550dfc64fff59325cb8b3bd160b561d2b12d43114d8911fb6352a266f82e04611eed45c72d056598ffac06bddfa280344619a885498d6f2c1fe6116ef86d514a1fef2b13e0ba34c43ac5d1f3463f068d29cd33a219040c55530bdf303242112c6335c02f44a5a4b084c54634e6111f8f43b0e13144055653ae129fd75ddecf3a144e1bbda13800acd1ad30313b2342c3735819ef41e5b4b4a73068f0e926117834065702a77962a1c9441c930124ee103d67111ae14080b943f4dac02d8710b8ff6612596a908aab5e8f4b93e01132b40663b73d298b42ff8f11ffcf1aa6a90031d21037c4057d3c2a23a32041b9527ddc668d97111428135cd0546bda4407eb6415b8b6affa18262a3020b15c140f432184301633109b95a6b44cd2a131c7533070f1246c1595b2b72f76324bbc224fba237dbca07c46b144c01125476ea3a376ea0d5acb4b6d63816a15e3219319254bda33f0d843aa5e2300fe454f34e116277977af61256cfc8a2cea36871135016270940668df21f90925393aa029088c9e890055f166081f700459500fe16a50ed314b17068aba2172b361ea5c2411337280cb74a819682ac76b152615101a9133aee51074f1438f32c202159e31148d93290dc956dbde5b3142b29fd82599bd46499900ae3b6e6d06fa920c27b81a50b65143148512a72f07babb24a170b5d6d697117eb6343f071e3b16bf5f519bf0a12926b80ffcf425b2eb33333e0b3a411d100886f3e6ed0424ea440f66342b840cdf7e5940ebd1e584f02d73bca372ad06f8379d66c838c00102a4f15cc08a18e25ed574eeba3bba89788fa22f688733f0ec7916a8f73156a84fbe28401961aebd44e7d8c14bfd31f80384f5a4b8d154368a3223cffb44a3821149258c17897829a6fb1143504e377b152f85feb26ca1ae1bbe2f43de573d0140b6cff22a91c73ea3ab5006f5178518b7529a86777f1b1740f2cb5d5408c582a6cf44599e068bd931d7397b16cc941f9e1536fd55115a180072deb0ea7122a418aa5ec43d363de4ac1a1a47765bb0a995a8b86e5ad7ddff76f32210195ea8831296f51eb6e2102023bf94eff3e5994c795697b06516df692f878b19ed8de864d7048b7d7f627293b0a7963e696150a14584e9cfba28bfbc28ae3f1963333b92ec19b0f30fc329287f107664b91355beb92a1a2672f98241ea19aa1020b25f85a4fd58e1e6195ddf76d935990b18e59cc6229c9c2f6b4e548d7d62c14eb38c3abfee274d030a17249017549ca51fd539baa35effa36e60e44888362701fe7769f281272b712cdaa921729964b5690e0b0301ca19dbdb6c948eea349787ec3a43ed893163dd43ccb386be5577008fa71d02f8381657671f79aa1a2a6d9c6416d08e014ac14ac97514353a86991aa9ed086bda4a7fde2bb32cca1bcd842b1e2859dd50748a69125b7f45a995dff531a2a035a4cf178d280257c0fa4b0a1c241b5d74a4aaf257db2fe5a0187a365a749f01fa5ea2dc80285076d798ae5d0da3a2d36e1a33601b260196fdcb0113220af3bcc642f01aa53379f555a199d8f0950b930087babbf23aba1c28277d493f3e7a6c59aaccdca139a338c7b8da9ad8504e3b9e4a22ceb362ea3523b43db2a5948e69944db7fadcf14948daf57ceaff386aacda567f94123272114689b1f8025a687d86f8bb8b5f4d84a4c55c1f63958c25ac11038c4267b14e679f0a8ea37db73798afbbbac0970bc44bfd1624991086faac5128c68a80bb9fcecf98fc119d9e43b58e6381e518cbc7317bd176b5a1363a0e5f8a02bfc14cadbc4d41758ff9a58c14c1a849399007ef50ded1048a72c098b2838abf12df723e43ece91dcc33e5d98164541d9549cf53221344d0ab0ab644c91312abab0b1bfc3c267b24ad04f8fdd584f5659c1143a673ea0fe2ea171ffa61324bce40adcfae8f5a7cdc27463184c2c6a15336ac6f7836fce79acda42923d4e292b971fec1bc25ea1bb15c19b70474f5d9424d29b9a174b691503fd6055d9b0dcd03f11617147125019b25d99035dfc1fedd09956b0110ae7a8d343a154ce2b84b7b8cdc290a171c7cf7c9128bd0417bc8f831b7ec15ca9fadc6d1e4112c0ae8101f7b60f64b7ab84ca05f7d60de4c94d2c8f7007be53dc9855e613a43abfff31d3fb4811324064e63c0bffc53cc9f8e19e69ad5e59707f2a21a92e97289b85143f98f58e3d0bdd5b27673d2b96592204fd3be258d77b7d690b43d11563d20800ddf93247f9a1145a1b7e279b6b4f52d5393059a03ddd423d3915b1ebc4dc2f422bb32d7a14f6a7027c00e1c1c4144a0fc2577cdc7347d6a942dd2fb2b548930303d5ddbf03950980dc832512eebde2592f1692591144faffba4c3f1ac1d27531d4c97c2be8e2f05c7e52e3512d675ea93c1b447d3e15589da492d9062f69e3bbe3b00f8414af32a16d9bbd84e0bb0fe4e44dec121821b2e944dc17ebac4f32eb4c4c642081d621bed79293d549ee882477f27a48e0cf94785f12144edacb19a1bbf306d66be8d7c55b4fffb0b0c9bbc3417977d7f364d633e0684f81c24f1466e33ec25b8b00807ef0f62703e6d507922bf11a01122c4174a7cee649322c764de7dd7ab16c59d4bbd0119c35d4bb0bc86f13ebff98ee4d8ccf8fdce4431ca6437e3154152ad0b7d00fecd1834cf14350cf5b8becbb9dc9b64fb9259505cd9e3c322aedd3d2edcda2c7ad4b92dbdcfa0cb9b54aa1cbe7beee15e16227e8d08398c3f544e996b91715db961c9ab67b7fc88dbeebbbbd1fe6ad80e79ca3bf6af3758d2d3e7f66e19cea1a116f4e3fca000252057e040bf22395e99fc2850c1b3a7ca8b013a34b062bf21312c99fc68d1c3b7afc0832a4c649a10818fc203265c74916f9a15409d39f90968aff26799c699140cc9d3c7b8ae4144a51cb82a03e413c8a74a127522d0998ea0735aad4a954ab4e75541052554c420956b00a966a25830993fe2b555011a6b0561d6568347560414b55c71214c5366f554b5d2bb2326a363043891487f25b24c9a7e294a784087db99863a4964c227b6449f303277f8f4e2d1a9ad8b2e8d191701a2e2a38f5bf4fa068fa80ab373655ac04e956f56170adeca9900c9212acc960a5dd603719cc607554411f5037e9266eb511ee96a85507266c981f810f8f468f3e95d1fba996e1bdfbfb9c3dbb4ef3ec774a927b1ab0f5a49d5a0dadf41cba6cbbfc1c45efab957efdd04650598131959580524d47507e52c1c75c3f95288297ff82546192414b9730d2c97c6675f20a5ad90961537b26f2f40179ed71d2577a169577628c1a71f2418b165dd28a7c1e42849d458e6c62e16ea21814e06c09ea678941aca89689415f05c9df70551957d0538d14e4086c4146050981066dd8e18e4869924a7a1548d29d8c6a7694a24569b227898b2d85b6a689a764981d98621ed563450414b9a5545a4e756541040c1a158180cad6488b3a06d6da72411218a19105ad35644140062a952526ddc8e19e476582a0618a6054e79ae85514639c7212a4c829a9b207d4a78695a289a83c4ed4946d9c76aac8a662398968a305211a1b9e043132df2785f1a39685ca1154a9549912845c3fb6faf7eb54a2d84810ffaeba42c4dab3436db7d9acedad6aa88c91d83ae29bea2ef6c87b2eb262e0b80bf5699022af751b5523761d5a95b18602ca5fb6c499625029615af78a41dc0a9824411347557182bd1dd91cc0d281cb0fae0feb1b51882e2226efbc8b45f2c1078b2c62d2226b4ac26e5a193091b2ca3c35e6228e8feacb6f5aff021cd5b5fd59c570458ef8e003bcc232da62bed69529a98006f353613f8d4c5bd02850f1478054638d826c901f6b182ac90cc5c28a8ba7c2a873dc8a454237dde9cadd53ad2e8aacf6bebc5ae46fd900c3c74fb59dbae8eb6ecaf203ca9e9e54f434710cf253810f19d8f864a1b54505f6a2810a3c949e7d2bf4492be69eab19deaaafae66ffbd849f2635c94117841fd156714524d2206f0e5dc6218fec2123c42ac8df5015c0766dd85f572425d19814ff25233f93ccb69c88b18e7df62b9b965d2a9a004f326b86d56e3b5849c32af8f33e7aaed726518f4b3541cdebc7b5459568696b84d0f3c3feafea0f559dd1fd0344f1331589b487c004768446f01a4a2972244085642252801b5af9306109a6f9e02951a9dfc5a8d20853304d14916314e15aa12f67192471d081c4e2f89101406d0c5a70d9dfc54ac8a9b3b50421115488274ce7a20ae04c81445c9d245e08c058f4f01f9a28554502573ea880ce4fbe229cd7a8620a0711cf20a9009f988263101ceea611902823b2f8c31cfef4c55749aa80ff1673e883dd796f89ffa89e8b8420ab22ea315540d91d17bfd74310892827162c9ffb0cf316adb58883521ccb938264b44b78a26f14a461f934c78fffc1f053caeb47c62814c54688a28105d9d0f464f78a02a2ee6e7b6ce5685cb73708f6b05ce762e105fd6831a8cc105abac1047ce6a79f5df223577deb44011f09b06b55823f15b856857c57384f46d193a4244aecfaf6c3d3b5e47aaeeca64f26e1987b2971894d348c2318394da810884290186545ae38b9af98a245c884ce210b824201aa9076b6db5641def22945c0059a74c14d05fac7a92e19c67b5e549b26da961e45848295deac68471ec184d7b5a414af68680a193148fb89d19069795afdf8ffa74e27314f707a6904bc52b1c42619c4705b12a6fc3c2929df29822eb8bb4b3a357923504c72899f00e9c9d064d1a496a66742a5a31d5df3c674722d6b51991cb7ae56115b8e91700ea32318e7d2adfd49894018ecd7a68a87d06e49a79a0461281d27e8b60326758f1865eb1f3d3aaed285b42215d06a14f3a3a8aa78695354320801461a1b2f49928e0aa9243ffc0a1d4cdeb41f33ac844e37b54b60a6d3935eaac8259aba44020611a97345e052d3e3b3d096737c69255a973a39208e49051306b9623f8c96480b41ef9a1184a8a63855bfe6a1717850814fb4367ba151f891a3a724992740a1cd27cab5b478abab8b4841cc1ec602ba86218028585a3eff06558a40b69d0a7f2e8627aa0a087ad965ec000b18ac849aa479b4f50a716f3b53b080378796d0a8920019c8d566e74c39a3ee9a4e9b9d52486f893fdc2bf35a1bc56b1d976bb095caf91421a8836e097acc72ef60e08bd831266e72b4d3d2d52a6c61286e7613ca35cc67c7394b2066e7541435b08960991e56c0589fa91cf077911b165b49c977ead5a5418806bdc679b8219d30577c3d062e60d60f9d53096891a36809247e09143b16a0800dc34d1bb3079cb80cd98223f8891e9b6a14213664e476a995ab3d592a33fce0862ba2e42537c4134e6e3371a0194da914f6685681260120eb3c77deaa15bc4da18c4d3551318b8666e29ca59a114965206bff6d5a64930a81b8154f44f1a7bc7736489ef5bce73e776b9e2bb45483c052cd436bba1f9b98509eb84c4e270e25037994f44e685466053757549e60842a2dd2d7fd4ef35b8665647d37e752c316c96851d54f92517d143e6755ad58d92916f35be8ecfc68d6fd3085ad5dcc65bceea974d1352c777c9d924868b922d88d602c5ae160be8aa2da9aee2cb6744361b80cda2b8e8017a9153445a2601b29da6e75b72c51c268a32f3ab63a6867111dca2cdfeb15c3ded39787822a7873c4ba7992a5da3af1d07617a499fc462e24ae685358e1e56a1102345f73f8ba532ffc210d2fc895013639c84e2e4002f10a544451894c6fb6111a4f4f2a18adcf471b8f4eff92e64438bbd75e7d65a215c746f6bec95d1585a25442e6c4c48575b309b61e5c40bec4f3cecdf209556ab65bcf2674c1faf2414fc5b92bfe6ab9ed987e6e17b382e3c5245344536760cfa016b4297c052b548ea5af83dd2a78874a4f61d8a29d12a8796b3d0e8463734f7cbefd3aaacc2dd116e788a84e4ed6b7b19fdfcb676ebb16a414e956db73ef08375792fc561d4da1264091ef2766c012ca06fbd0a1c2a0c3bece4b8b22e3e765c3978a647df47c52a51b6de7ef422a3227b6ac262827df1c1ff8d7224f8f85ba53234833515d8f562f33bef2fafbe0fb6914cf07b283ae76d5fcf583c4124b27ffa74f7d48e15873f6700de4140bd25d8ce43b0d34ff77e486419723274fa7091d27184f35148a80780a246fa875666292098e0779362379e0b717048062c7875397426be3877108073d8b1580aa611fdb4634d2e12396771c2f3431db425956448254f172e36711a530788d2618ec961ed3853df6827562f2099ad00aba36603e507fb38609b6c242f89728585234e0423000d3760d335431a81a5fc54fb683095ec22dc5b316623776bbe42b6cf88305137baf7210ada00963681d28277f04b108bd26378ff001b2c7384688149f400a21e824a3600ac5377990b01615471528386845928616d182c4010936d24564e8213de715afa71fa6f0296b5177f3d3251343201526647318161854098468101db62399e0ff5be7b27eb3d27e79d2811e225366c2888e0876a22417cce13b80b235c2c139863215aca61d99b81bfca7739ea81a71f7444ac7293e5021724828cde170459316aea81718340a42b82cba8284a6f26ea9024ee9212ebaf28b43e108a25085c6d722dcc2835a134716a11b57a35e02a37d66e36f00488de8e758fcb07674474556a14688b24b53810948e7088e300a96208a51b409195470e9418ba2c28733260435c61e91503316f17e5a67871590011b7491e9d408fea63cbe2342bbd33c0c2250e9b4899ea58705b92311c3572d491c18826c8b527734753efc1030fb832df5682198000996638e2dd191e3120b5258112169224c183a01849276a8349540ff8fc208309d553995227b2df21cb69290d96811a4707e3c191899703a8a808d09e56f8e5024f5832cf5d31c65667a6ad54ea3e06f5ec90f53a92fb7971d19907b8a2109b2273a7d138f84f9444b63094c292056a54536f78c57d33c470994b1118606914f70392e9d20857fe95a9da53c9c591595777903c62919e9031b29992b9701b66298e1f33743b1088b19138d996004d99504416b1a298b3e467723c89a566180be3239cf411b9d964c3672095d469aba223c7e6299bb418a60b57fb931890681175eb2536bb1094df34f51410049174cb54910044099c24220b97972260366be1912c06918a4609da3138f20149883991e34a51f4c471b59f3492c65ff34a4b69cb496019f99172fd9966f799dd691090e269d586682ea999e53117a02b54bc7139e37596e699174c21873e6340a61d91605419fa3a3097dd89b30a19f4371928cf59f6ce19450e92204ca9dd0d349a316165a3815cf394dce388b151a419d708befb99dbba11bbe733f82d622ccb1385105098ca494c3a76c29ea152b098989e5a27a5695d931a32051a3d441816a93a3bbb109ccd6123e9a1798300a6ca51b94c2162818307db19641229415510a3ba9a47d130bda94a1d3f4428a50094cf3425f81490d4815b85497463614a3f099f3896da4929814750ab2c7951ed6a6b101094a59358c022420d34c5a82a7435a7945fa8ce503a7a249a183eaff8452f827c8b58f110524bb242c9b307c557194a4d4725e8a2d93ea6a2ffa5656591042d01d24e96226876abf6867d1d15f3d0a9aa230105f513c04c06654a12c0a03167a2a45d0081d9708a88648ab24f30ada849a7f97ab2d51019b323962032b9560522b476b756a746c41ac861290ad778e6fa7a917386ffcf0980b27ad731a7803aaa3d85a11661746563139fb45a49bc57ffcd00ab39aaee82885dfb75959d622046041c9271598c3a13e15152cd682bb546695d05a0c82aca0aaaca7a1b11194b0606109026a28395baa1eaaaf2d81176a49672e4b6bb59517e26a3b90404aa580ae1b3b3aebea237ec6294e19a6de726496073d4f326852cb1b06a1ff4386916c123ba63138b0e9f1a902cb8517829eea611bab1a303fdb1496da0f5c836174fa2952022f9e039052d415b77a415a96b14ebb709fd0a40471a88f6810e87435b6513f2ca78957fbb517483e0818b06478a186f117d478b35c52b03beb693d0b15e3f33475d74037094d54e5290421afac175ee0920a4d2bb8dae560def683b6f285257a2c50514d8eab170f1930a99b1e8e3062634b8d9a703a3c5490372b4ab2784eae4653f3465342785829d52f13798fc8d59d9e15b3b1eb5ef501af4fba254613af50a12c52327037d7bb573b15d51a513eb016300b9712411097209cd427adb55666fdd13f6e8b3194b36f5c534ff8653fe8f49a4341ae02b2ff098399b9dc1b834bd1120f0a7e9d950146c34114f6423f0784ea0b843a9b83c4cb936956b37a16992e32b98205ba5aa325bb747f86457c532284e3164a4ac9b40c5c90c61ba762994305db4942cb7478228abe0b16cf93bf1e4cc33b37c217f8af5771c291ea73de8aaffaf5aef203be111ac5f3bbbd458c6df25b419317abe056774f1342b201c443bab61c89c5a377c47c45aefccb904f7c382a98b28beaa165c4b50a127d1671b6671c8388d82bc3c8be709c3c1632c679610a1c8cb17abc7065ca5ac4c1c6c0eab54c4c2dfd1091013579c04b6fb08bc808db7507388c4fa98d51011f8786c35ca2c1a0d9620e04ad992c40cfa572de35cab115c979f1ff8dcbf89e4874c035e55fefa8cad719a32d8197ae5877ffd4c2bb31c8bbc1b30b4578bb7c98f8961d44ab208d5c15df9ac1a682c100e386d1a3cc833a3bfafb834a5b76625ccae55ac62d910a8c20a8d91c97cc0cb63f36294b4c15be832cd5f4ab2e3798078bced7e9bdbe3cc541c262a48461e05c109c626eb8f440fd79cffbb25d90a708ddca29d00c42891b9e8632823829a0797cd0a4293efa3c876ffa4bc41cce16d2c3a8c50a1378d1ffe009af30b3f56aacfae1d0aea659b4a5a8751c24d76c6a6b5ad2d498d1eb03ccd87ac0c5fc394d9760b597c94fc85d33c69ee5d3d2560b2b61376b7f8c67367dd31f7c90ef79cbe2e8d3bf12d22e920aa040ffd2dc7bd2c0e736473d4d493d5b100d7e96fcd4518dc539bd90e228aa1f5d83032d2797c00a8c900921ac679f100b8c90d286c588fde6ce55011f55bd259da7a66a8dc86cdd2f49ecd6a41cd0b3769e51f925a4c0089a80c94bfa8151a8889127d38142d69d22d69a46a7bb63d1884dc38a6da2103a6b57bd74a600b7af520aa4d00a8c100b9900d5d6f10999a0098c000a89489815f0d724f8d93f586bf161dae88cdaffb4cf51c4daa26d09e5e89e064b0aa450d78c60dd9980ddd9adddda6dddd63ddd7d1dbcc1288ec35dc9026a4ac77dd1db4c3984bd59cdddc996739cd12ddf390196cb3d96810d7ecbeb406983de259d7e50d5d89405d7e248463e50ff09863cdf92e908f51de0261ccbe258dc0e54bffd7dcf86771ff65d5303dee092fc948229d9096e314b438faa1dc1f8ad69c7bc43974de1ca6c8bdd35cc24e8de1b0e84909041063e91b4194437bea83e5099182edc26fe53a77cd82b4ee4ab2175fd62af30aee132cee44c4ede4483e243c8df455ee41f693c2fae6931dee45beed64f3eb542de96064de545dee292ebe379a1e55caee63ffee02e19e59e55da633ee645257fde45e21efdd86baee701eee508bcb015e156722ee86392d219b0d233bde47baee880dde660a8681ac278832ee947a157a692e4499be88baee9630de491f5e6800e60932eea4961813931d18192e69baeeaddd2e76c616e2577ffcea32eeb0f91667d18b6a89ee9abaeeb9edde97981bfd9a163b32eec4c52d4bb86e5ed99e7bbaeecd8d7eb56d1cfdd93ccc32eeda9f150e911da8f9becd374e7bbded90dddec82f6da43d80ab13eede57e88974613d79ebed91e45d04291dbbee6d251097251e28dce16cf8e6e626eeefb9e140d66d4874ea9c4895cb963791bd4ed5b4e62672ea6f63e25e16e9213ceef11dfef472e7cc73ecd02bf59044f76eccee501ca0fc0446272cae90ccf250eef17a12ef129bf23099d1e5c6a15a91e241adf2252713914a915f4a8f0af5846905036af931f3a3879d02cd75887d72a6ff40ec1f23ee620306f21f01120d0141575670a831c9106ae8d075fa40df4ffcb9fab8c5b5811415faa599d1da410ed476ff6ba92f4ddc5d04cffcc47d259e0f89e021ef752a4650470a7e0a208f30c4242582d279549270b206047291c7d2f287ff6874f95606dd47c895c8115cc48a9bb4d7c2d572584ba612691d308519935fcd73c58d2c4e486e0ff55f4884ffa13df875fdff809c27fde38710c026a601b156ef334c563e8a3fab050713eb662f9043143e00a6408fe62a52ffc0c86ee43f1fb09f229cab23c86bbfc81061fa927c9fd9535e299a5604ea275575e521af09b57b404a139ff3c6b3afb402a3efce5ef214f58b81ccfecbc7f3e1903157d71a755a3f154a1c109176814e6c4b9ab393f0ba200c14f60bf0a02f96dea97ff50e142860d1d3e64e8c8a04152af3efdc39851e3468e1d3d7e041952e44892254d9e449952e54a962d5d628c05aad4447e106dde7ce8c320a44a02334032d8cf92c10c0a250a349570622588131b12304820e1517ea31a023598b49f414743058ac2eaa85fcfaf38cd9e9d4a5153a7976dddbe851b57ee5cba75476a728a566f439d48b362ad9961a7c28990d27235dc702226865e05229c68c9a122833e1216e447a011e5cc618512dd1bba215546764d9f469d5af56ad61833e515bdb72f3fb2520137325861e1e284a668f2738470f7e085980a6f251ed120d37e54fbcd26cb7453d4d8d549b7c69e5dfb76eea75f07adae7736547e96013b969c703af8ff84b3230f1798183e3fc313b52a1728b6df28839b36d3b4ac1fcef8612cbcbdaeeb2e41051764b0c1ef0632f02cf704620c30c1f8516421c0325cc89401b3222cb910e313b03287a82aeab9c1c832b13983d28bf02c041ba4b1461b6f7cebc19a62c449149af403acc5841cd36fa1462c214f20a99412b11fe306a3aac885302baf37139f240e3a1e6534a8341cbf04334c3135d271cb9b82e4273d34f96964a1d9a4349245fa98247121c70854d1a00215c2edc58400b36aace3fa016c49336d9a714c45176534bb320f7d28480e09a5893985f813284087faac7350a3a87372a2141572afcd7e38d50f4b3c4fcd0d5244bb6c345659679deb515719da84caff40299d48b84f334da8914af60c95384f3f13922ada4cf57139f80c754e214be4bbf5445869c5365b6d4bb2b55a8620b164cf20e17411292bf9c9c00748444972d24131915311539dfc10b80fe59d92bd4dc0f216ad44b70538606dbbedf7a14644a9442218479c53d0df844cb20247eae5e7be211f3648115fd3aa60d482f5fa576091475694e08ff7e2ad448ca554f637452c5668932427728458f54e8e2d649277e699469371d60b12f9301965e6cc343dcce5616d326514471c497763a00dd4b967abaf7614b6a9636c4468486c1ed287a79ff641ddadcf4eda4bacd7667bb59fd1863bee7eab6ebb6ebbdbd2d18779e5e6bbef2d91bcf66ec1076f4947ff812a91da6fc517bfa9111f8c569b70c9271fc970ae16663cf3cc79c23872ca3f073da34e18b904634546015b73d5b73e92cadf40b92874d967d724158c81c37c75ddfbdda4128a05ba8491d867275ef64c40b9fdf4c477673ec2835da729154d8aa7bef84f189909e30a44d9bb79eff732e5428c41f1a47af3a98f8595dbd185f97bf71dda6494df052ae515b6cec7df7aec93afa4fdf7bdc7c4e3d6078a4ce4cf80e64bdffa1481b8ff350f13a2805ef4ec77400a9aaf13afb01dfffcd740b93d308213b9442bca5741129ecf13adc89ee9fad73d0e4e2d7e467b5d2c4a3843031eaf74ebcb802852d7425735c214be5b1f3f58b1161a16f18031b9e1ed08ff300a53b0908711da840f3e489321decf88573c222892783b4798ed89d5d95706e637912a62d18c25cc040a83981f2f7ef126611ca3412e51c633d671869e780529d628900a8cc212cbe3a00fc5b6477e94a21532b463228dd88998a4708d8ef0232057870948f8200330bc1d2b2ca2484e9e118facd8e21a3be6035348126d941485d30849114614b093af4ce42743b947024092945ffb58d72a29b629069114ad84653061f9094db42283abfccdd3d2553653784d6810d9843377e98384390293ab2c85265d294c6e723313af00c53191394e72629315adb46237d5b9ce7f7842138c208523cb394f425e8214ad784526d2c94e7ef613239ec804235a410a3571d2939ca520052818118b6dfad3a10ffd482632f14e4680821417a5672a2efa4b46e4539f100569485f225192967478225d5b4000003b);
INSERT INTO `images` (`id`, `image`) VALUES
(2, 0x474946383961f1010e02f7ff003465b37387893252a7e82c2bdeb116443a74d56f4ca07b4399c675bac87973ae93efb219d9ca4936b9d70c76510157a852668e4c568e848459e14537006ab5cdac19c1b06d64748b489556afa11eb5a03388bc6f9bb984359c9830864c7f9326168a7ae2a9200072bc4fb5c70196daed1c24327396cc8a5b9bc788007ac3c6a72a4595a2bea32ec7d16530439e48aebb0083cb812a61184b6843a8af73c5a6db563f5b94940e5953288f8062c7ea1e45721a449c8ba48655bbd2819225a5c38387c5972189759e9d21f6b915008cd32d9aba0061af363b9058a9d9d1ab2523747a9fa06b6f8d281c646d1451603ba2a3aad285adcd824b99c27e986883b88f2da7c4b1bc65e3b21e2caab9436ab600a1e34ab9bd0fa5db288eb32f86a9d91e2f829a87094ea220507693ae85d9ae22395d992979a35bb5ac2d4896b35e59d627333f789c908066bdd5755eada293cd93a596522f58972846869fcf8b429da87ea674358d9aaba02368bda85bbbb1253a97223d985ea19a7f8b5e265a81389cb2009ce02e319240c8f4293695114aa01e609e169bcd0f72b22737961f409aedb614bea71cfede89146d36bfa71b106f37437d2f407e305f882b30793269cef6a09c2062872afdc021247234ffeec4fee6a7337731207435fffbf1fff3d3fff7e2fed56b8e9823718c27909723fecd4dfdc43052822c4f832d36327bfdc93fc8972e93724afed15cfed97a5e4d66fee2983cabe1feeab63ba2db50446d398fcf2b348c3db5e77860583ebeedd5a0271b8369ad843c3a98d530b0c5ba8e35377cc33573bc8569513885c9253b811081686b565f223f7c2f3a9803663f0670450c703e11545b3cc2e80761472838872099975ba15d5cc1de2e958caad17c3f458f72ae661c938b107b5c17774228a4ae66a761227e47249ea27db56ac79d63919827ebc32d4883be392f8b8b9626b6264561bae9145f5f4babc0c0a7223b398a38a7bc979928e2c63b0d6950167eb5bf7c5d2298c10b7ebd5ebde41e6da2dcaf1fd2ad5322afd4584d800b92cfb1c475292983b6d881fdbc12056839016a3affffff21f904010000ff002c00000000f1010e020008ff00ff091c48b0a0c18308132a5cc8b021424f8c224a9c48b1a2c58b18336adcc8b1a3c78f20438a1c49b2a4c991b11caa5cc9b2a5cb973063ca6ce8e912bf9b3873eadcc9b3a7cf9f40830a1d4ab4a8d1a348932a5dca54a9a69950a34a9d4ab5eac19a4db36addcab5abd7af60c30e7d6ab5acd9b368a76215cbb6addbb770e3ca259bb6aeddbb78d7caddcbb7afdfbf71e9e21d4cb8304cbd3817295eccb8b1e3c790234b9e4cb9b2e5cb98336bdeccb9b3e7cf9815ed146cb8b4e9d30211df94e4afb5ebd7b063cb9e4dbbb6eddbb873ebdecdbbb7efdfc0830bdf3d49b44ed2a8932b3fab9a1febe1d0a34b9f4ebdbaf5ebd867171fbdbcbb77b536753effcf4ebebcf9f3e8d393df7efcbbfbf72c9b8f574fbfbefdfbf8b3b3cf891cbefffff2e527e080041668a06bfbe1d4df7f0c7617e081104628e184d12578d3820d6658da831476e8e18720b666213f186a68a25d1c86a8e28a2cde37628927c668558a2dd668e38dd5bd28e38e68d188e38f4006a99b8e3c1609de4ef309a9e4924c8a681c7f464629938f4d5669658d444aa9a54a545ee9e5971e66b9e5980f8597539260a6a966846292e9e63f5daea962068fc869639b6f6a19a79d1f72c2cf077c62f9a482798eb967a0074e02db07fca880688b78162ae3a18f16f8410575b646003f2c9c822001958639e88592164969a8037e70053a22f2338406df38ffa908aa1d465a2a83a7d29adf078ac0ea0f13fcf4ca2a278a2842066c8f70a26b81b6defa5eaecba227c97c8caac0021319f0b380062a4c52013f49b0e0da23bca219ad7dcd3aeba09938997bee7da12882ce7391f0430fb79bbecac2b7afded11aaf8a5c91e9bbf9a5ab2e6ad0125cde248db270c724f5beaac14d120fc10f19b07aebaa0aeb283ca0c1071b96b0c7e45530840a1a24c168a31a58dcab068a48fcedc62cb84b727a20879c17bbabdd4ca024aeb2a0010b165f31b1b61a687085d149508c32ab3e173c2a893a273772d4b63111c96f9bbeccc2028de29434192c347d13ca35ff962cd6d0e55cb55957b34d5b718ad6b6756ca7dcf432cc16dfff94741257e09444d219c83689b2b65550b7dcc1b9fd365571333e9b2298d6f62d3d778c734aa68bdc6474d24ffe2d78d22a6cd25a241f6430f3ddb40931abe4c239fe385491c31e9b10fc54ae9dab83979d81e638ddab011962737bd3e043df2149b63891a1c238b6e12e84edb14f0de3ec51d54efd6b79e73e706c40f39e34b7811f3f7cf12af0f339cc3a5d2174acb5e1ce8fa7db03273bf62d695fbf6b9b7adf3a4e4340ded09260b12410cf6fe41b1a19fae639a1b1001ddfbbdd4d40b53ffb590f7f33e299732a389c95f96f361e14dff816183a6ea58c81ea13dad0be1141d8c8ef4f1cb42077302815fdc5f0114fd29d6cc2871345a02c692c28a10aff06e5bef1b1607af1eb610b6338a40bd27026366422b070a2c3d84ca27f3dfce101f9413a9c14717c49b0993f1ef14218325186ed79e2613428c633ea666637511c6d1ec1bc9cf8d06c5c4c590ac737c0c5c9e61170e40705ddf89bfba931356c24e4701866473fc6860953cb09e95468443ad5e68a3a619d227b63c82746519121ecd9dc02a9133ef2510580aacd294695ca4d16d2898764c82737d9399d84c236a748dd077699ba46f1f203e3f0011396f89a50f26311aeacde0c639990596e12903b59043167c3090220733774dc0901a699ccdc74f26dce74e58814a1c9ea44028b3d7464377df3cd90853399233263758c192c75ae939db064269c1279ff4fe9c47311888b0e2748a9377bf69393f93ce43bef194f45b4513790e489220c7a50842e538d0bede7407b6249e070a2963ba940402bbac884e22fa307cda64499f01b7adea4a324ad90491f875292baf4981495cd397dd2ca98fa73a63aab694c2311c99b7c809bade1441db5594e9fcaf4a25513aa4f552a519b3d22143f0905529d8a462881939f5ccdce2a7d52817292aba8826c2aba46babf76f248aa81f2d656cf43c69f2ca26e9240eb9fe66a9e4710008931746b8ce01aa8ce0176409120684e8480ce68b2153fd0e4474e6127580d11964f3cbca581226a1402a8f53e913da61b2b8b2bb09e1187673ad04789a2889e12a88cfcf8ecf6480b9f4fff98f68c58d509fd0c3456a0001442b015ed68a7969242954227ae65a29f6e1282741aa8ae41f9ad8172abad03e044b6dbab974e3e21a94ce864906e0469016ed1c3c7da87b34339eacf70b28059a0026c8224246c19712b52888790dde3c72af4a10febc691afd8d1d8513c2b201eb697bfe415650c978b934b74e2569ff8ae1bfd7a9305a082bffad80515414bdda468d54539b90586f5d1dcf83211b6d7d3122874c252267a50c41846452e707258f34c42514be5495973ac4df32eec4930c6708237c84106dfa414078bb01d011c352c5e78c432c68966cf73132168b727adec2d4feefa2dec52673fc11831864bac0826930ca4a43a182390cbc42bfb42ffccfa98057c896c1ee308a1c354742455ed48d49b78593aa1dd059cf9eb5f7eb4b87e57be492a74d609769599897574059ce57c5d1bbff0526c9e8d966f825e33ab0d8e821eb42b70b2cd0ae63813555b736a6f689c100c7ac81315eba6a67893fccab1368f006928402a840c2ce2cfc281a32a06ad8ff7e264b25833323f48f1b646e704bc15a4f57ee10c6b4fe366b571a4ae1080955cda40b2ac3da4f587adf3c25c3c19ceaac0c9a1eb075b54bf4dd5ed3ae3cc165080416bf8bfd4c9ab2de1b8b6dd7062127544af2091dd9b729f5bccc1c049e12aa8ec453f4ec9a43ea39b897d6fe14627b8b55edd6fdaa5d887ee86d6071ef42c486d6d82a1187b2bff5e750c5f588c4147b9cad0d9b34ea42904e9f646110438059e171b1d03cf82d8a828716c39f8089d20197b10bfc93559cddc83c758e8ddc6a6620bfa539fd4d8373ce4c7cf89ed0b9c441d76a14c71a9525e6926f270da939eb3c763c32826d03aa43eeeea4eb4ba4b7ce224c8704eb8d2998e93a39f542757df9f78893df2b2ef6665bbe6094ca7135add7e6be94dbc3bb1e3acc418669d1ff4a5a17d731277db31921fc32636ac09ee9a537c5ee08a587775ae3af7994d3937c4c209dae11c74c357109d0e7e622c6ce946eab69cd87a17e45cebfa815ab636319d97ce29b05881179e13d86304f5e4f5d175a3b65927ad38e4712bcf44d4f223044e1f71ffc5abf84738ea9b1fbdfe757ac8152c1e16dffab609f4f4870c79536ff7909ab8ef19797880e9579f1f0b471b214400b4967cd8c109cb174721b45bb35147e6367994162c25a730cac60ab1e46c1b165e38b1752e376330471b68867ef2a37a38a337f915474974130f08741e383fb8a513ee7648647713a427370c167a40277424e81a21383f90b483e701349ed558fcf03f4d377d15f77a1c34287e774849877e84f462d3178174b628336780e5f1089bb369b9331b3e377f19687669c44c9ba73713e83114a62de137628547837f243fad052102566b3bc45e1c2872f0a50858c83868967bfa947f2ac744f9d57f604875da31218f2009bb644f27286993fff7722e7846ca060afa3410ec52018a04528e3879ab40724bb21f78376885a6841c84679e508902d10a3a518336681cb9307dfc357e67982840068bc510866734280e878a4f488a6af2016bd752381166b0986e1ff82369c80fa136790590877bc838274835a8281065182c81a25dadf58cbcd13f16068b9018782b227fb0d882c1c8384be587d3088838c1806a424a56561d20458cd3676c0a261dd8e001f8988fd8115a6f068b85068efb5374394189d3281018f85276f276395101e5183d38f18ab0a80fc5306791e81bcae001d0500d1b8000fbd0911ef9911db9011b000d18e001d0514677486c73068431b73cfca08d42a29031589033c80fb3b822b1fff77dffd7431f0093e08313e0e78d3b997abd810d18500d1c09924ab99420b901da6092beb1670b108a696788d2c1094c80665f772581d48405e95d81f82591a60f057000145965d0171b57167210287400c8644699944c399774e991dd8001cad01b3b8513cb287a9e381c58a958afb326ca967d054910db87826972657d890ab7e09671d490fbf17b93770b73a608ec581bca80017259979ee999d50095ba015d2ab886185668f5c71b93c00453176f6b124adc759803a18a9c072669d88d70e60a3ba937ea751ba1258fc45668c7b487d8500dd3f099c8999c088001bca16521909262668cfce08bb63109a1408437e10bb750002586896b824ebb289b70ffc26260e241c00967657996e8375920d597b45771f2641bc5999cf4499fd3000d79e94d70c496b427746b679dd8c90fda796e43c68a38f27937f10ae289980bf925371891c5f698d1e42ee5368f2de850b8319ff5b90f1710081eeaa111b0a14b390dcc991bb9668710386739750a8cc5130b30a0b4075f00c92478169b0bfa0ff076133eb92220059dd3a79bdad49badc1432bd881ce751bd0709c221a011ffaa122ca9408209ab7f142fc2966d58637aee3a2bb4099c18913370922e079a303f1842c0924fc07a1e869963b21048ab2963eca5f902852b7e1019db9a11c3006789aa74f3a97dd909f538aa2c4d6898a998859ba130bb0a5685a005e072608ff2a8d62fa0fa9d0a055e27d5a87a62e27a133f7249b487b2d487eb1a10cdab0a7a2baa1d320a529a88693f77f19c063cc75009b8aa6d5076d5582670ff6a8fff00a3ab1a31ff2760b307b963a6240ca1354297e548454db50a7a34a9f517001d43006f4a90d7e7aaa452a6690b8132170006f0aa1a3568f551248cc66abe319964a227021f0aabfca5fe99913ee2966b2681b18a0a4c92aa201f0a110f003ca890db85147eb8a6154a882ab90adbf5a62a9b924caa6a0e0fa0f89098057429ad9596fe74aad128a83af565eb6510df509061190b11aabb1ce2aa263400d1e7a0401909ca5ea9b7034acfc758bfc900bc1e0b00f2b6a2d68a02ba290366aabb4ffe9a55e925839d1ab2f9b9ba6497956291bcad00d17dba4467b01a2baac1f1a011dfb99255a1b39496f93e70a2edbb3d42a9c55c82481149eb6ea09ba0526e46aae56db9fae391bca80ac75090646dba4111005c9fab11f0a06c9f9b4b4915f1039b6685a0c6e796b93aa13067bb0ffc02e33aa240c2ba0558bb723f67fd4d91a67ab945180a74c39066bfba14760aff1aab48160b9c8590db7415de789b8b437945b192497778a80fb0f33389860a2b3ece5ab88abb21627b41cd9020cc0006dd0911d1aa24ac9014730b91edab49fc9039e3906485b9f9c8b6bdc78b8a02b641469735752465e09aebb9713328b2361bbbcf4a887b4d1b8fbc00037d102fbffc0031eca014b1900010001196bb4239b9c1d4a0d721baf2049b73a8513fdb8bc185600d2192c65ba24836298a7db0999b62685eb0bcafbb08556a672e9bdfcd00251d0bbc5fb993f00b9c9a9b61feabef0fb91f22b413721b6631b0c14b9785ed2a8c575baff508d03bbba81c4b356bbadb11b1b16eb910adc02101008d4e0b6170c92e2bbb64c7bc3fb60aab09193128bb7b3d082c192995e124a243c10b89a135f5a2302970b1c1c91d219771800920abc04817004e4cbc31ec9bbbe1b083b4c9f9aab94d380af02881351fcab822a654dac22816481491caeebf82885bb0b3f4b6cb0fb751ea09431ccc520d9c05fbcb45bfc99d4b0be4b8900d18a2cc6ff11c40feb0a6e496076229038f1b749cc2e8bab26ac5b619f3b7d64464cca00af30fcbd7e0c9263c0a4819cb9c899c31060c34aa90db5e141693c8f582ba472128da61bc733e89da1c22b3901c5103a643643b47c2ccaa30c921cd0a1be6bc89e99c3603cc820e9c3e3621cf5fbab7abb90d52b241d16bda7ab8e37d1c638a2543a61c7c53841b451c54bd9c7c5ac943f80cc4d7a04acfc995e9cc5c24bc6895c4c3851c08f3894fb0b2681449071fc0f4fd890398b4e0bb0c9fcc5c2eef2c94c89ce1fb9ce117001013006ef7cb901d0bb1efabef4c901a61c08caec91c72b1b0ce6ba93e7c139e1bc8122c969f6cf089b13971c28bccc5c93776f8f261bc2ff7ccec4fc91ecbcb41730cff01b0501400dbabba151b0d1abac94d0dc1acce36a1189bf7624d055128d358bcb921a2dd5949dc4a6a837419d7b3c970ced91203bb96dcbc5635c9f5130c3bfab940850b7680c8babf0c1de8c23d9acd203c1cd36f92efd23d2fa107c3eb6014c19053fd0d5fbc0015feccce95c9f1d7a044c99c1ae611cfbca5f43fc6c46fc28fd2cd702f184914dc76b3d68251680b061cea47c0147c003809dd34dfac0852da21760da1f390df5dc1ab9b5009cc8d26f8d8c6328d7093bba7c925f6bd886ee82acc88cd880fdd56b3bd67549d8971b013cfdc71d6901090092d0b03b37f1a6b09b966b9268fc70cb72cd0a257d2e2ba3d470ffe65f33ddd94bf9d548dbd5823db9aa5d97926bc1178ccc17c0ca09600127500335500225e00d20390db4611c84889eb6a72b21740994adc43a712eb534cd23e681e0c8d7c6fca1e4dbd5a4fda1c95d975120dc853cd11edba4d4f00e353000f6fde1f66d014aa9d8fe203f770b67f085db7c8266703ce060796cd1621c9b8cd559db1a5b0d92f34ac31dd9d5c2ade1f419e1477001c49d9c156eb4e400e2487ec85e8813a6597d9cad2b83927903fe0fe4a92b0c26b643b6442f0c92a6bcbe5d8da7e68bbe0e9c9ce7edbb1700bcc999e31f2a0e315002e4900606e0e1f63d014c09cd0cc6a52326a8b21a2a8d3a93945d8d835bcb3841718a091bcab0943ffff0a1960bd8a3bad15f8ce69e99e8be2b0e8170e41f6e004cf9d1b071d7c4c6c2b38d239757ab537eb35d08e02a486c25d66d9efd91391ed48cbea76afec51020af5fdce62520e7983ea2ad2d3f8c0ca7ff1d2a1dc6b5944dd7cb524bfb4ae36a55d31f69ca18fdea22fa0316fdc535fca46310ed1f5a00f63d000610e273a9d8b43679a91e2d68e6cf53eeb53941dd5e22e38306bb428be8810001c9edec1b6ad6810ce9caeae8e2f005f6ed0ddb5e02f9c0a7f37b13f85c7d278c287e3be50451e5a172e58326a8bafc1aabee917e3dcc0bdcd33ffdc51dfda4ec6ce935b00f1370eb74a9dfb28113788e617aa7ba0b0f83083f10d5d8d26a925fc4668c81ffb7e59e29ef4fca03f4beb417cc034760eb13d0dcfb6001224e97d03c3378cdc2bada24d128ea083f83057f239110f5523ff5bf54f5b574e22316eeb101ca7569f37bbace165db937bc04d93ef4c8f9dcb161ec9337c7b41242da4cd94bac372bb26b8a01168dfdebdb409f5e3faa188bd1f1da06727e02f5b901b2b132bdce5f1eb8085a73cd4ab2542dbef22faea32ad2835db1c9481f1b11dff5377ddaf05bdf25d0f11b2a1b53e4dd70069f25bd08bb14f59f2e21e824e52b0fc0e73ef94c910baa50fbb66ffb07b00a05ccc2b211aac9b9f79cff91656ddc1d7902730ef4f5b90d6a39e87e491415b008a1008c9190f414a21323bcf2819b132a5e20b5ffa40ab7e00ae01ffee17fc72fabe7b2c1e0c8d9c7284005543006ed8fa7437edac89cf11650f64f9ac157669a05b00abe0010aa16f02358d0e0c183041665f8c024d2247f11254ea458d1e2458c19354e9c74d0d33f9021458e2459d2e449942955ae64d992252983a136cea45933e32282abf4ede4d9d3e74fa0417bae22b8c8e2b47d49952e65ba8f01c116fb8c3c781086d08e3d880234e5dad5ebd7a463028d0d14e187d236034a943801f62bb48a8f0aba12eab380ab5bab76a9ca85d0af5f458b24d9245cb8e6a9832e152f66dcd8f16390ad0c1a355cd9b2449cfc74d6e5dcf9e7aea21595b9e5b1f429bfa8148c4cb58ab5b45bd8b19352233bf6c8ffeb1a6b6bc8e6bac1e25ccf4251b92ab66a952a557f117eb8dcdcf20783a9204fa75edd3a4a46061539e75e33f3e6e0e18526e7c79ca287af502040300d158a08d5acaf8ee15dbf6b80dab52fbc5b3b2001ec005e63cab78a80132f38575c0966155f043ac8bcee22d428038348b9ee420c33542c938324f4d0a2ef0e14d127f2209408bdae38288410f6943aad052044806fb5aa0889022c284ce0e32cfb9ae220bfda0a58ab040b60132b1030b8b28800828219f1c959fa2aef432a29ca8c204634d4724b2efff1e4a048aaa432c427472cb12268baa2823513da430d881452989135b7f8a8718d247b542a0220c712e78bb5d2888dcf408eb8912910732affd34c824c14d3c3835ee972524aa903f3510fc95c54bc33294a932b3e547ba04d17a102028638e79cc7ad43a67ae02a342ee0b13efcfa0c849cb5c8e1c0c8dab642b4224d370dae534c213528934a9355d6a5520c72b4d8cb8215b6b3824e41b32b376634c3cd16ce2002553955dbf62b2a2810f555ac10318b2b0b6a28b229dafa8c61ad2f04042bdeb122686a1b60159d76d846a1953092833e59f660844b82a9209904764eda7f852a284c4fbb8213be71937af10c12be4515be15c0fa434651c30823dd3c974a40ad126af86fa928080d12d012d8880d0c209bf2a05fcd22f68c58879b23d8a0848b2e1a94c9826e2e3355567105159f252688e2893e6dffea5439bde0760b403a0657043ed2830106925dbdaa0cae721bb2e59795aad54f9a058ded6db20e556a672bfd8d7abc80956e0eba824a317af065b32b8832bf0dbbb2a00554392098a7f7d667e26bb99ae3db14b42e15b52d7aa9a28a2242ef828aaff0f0b86caa08a18f296ffa535bb7b6f7e1e188b1702d618239789379acd5efe6193cc97f023af1c20027c842c2939f54930e892f6cf1bf4268fa16baa6a5bce2aebcee82db1eabf09aec191f58a3a995d72ad21b964b18c080b67fa066de12d49835b62868af9b29bc278238f89d8677de3b8380427903dc12870cf23fc24c42121f58049394639010f86215c598c593a4f42cab35a56b33c8dde6a262ff1f2e68e17be132020a9a3281b51860292748dffada90140bd0ec5df5c1195974f63bfe01c57f08dcc8e2b24440205ee84b0681080f0bf388483021148b50c4030d920b09baa200009b12f6b8b2853734e5453d7a833d44883939858c292758cb04b882be210de0040940215bf4b40f42e98b29cac0a1e466a1200639a820cf3262469a581049055190d5b9541f2f83c40f08017a0f54c52e9c06351df6ad6af5d9a29e68c0051290606cf180025312d09f197af21d2dd4cd1bf771245f2de537042986b012641ce438519286d4c8419035485c3ee620d6a265773811890f64a002b2244850c8d3b089a04836957ce319b8f02d379c702d6df94a020cd0c2d8fff5280247985f5256c98fea796638c539005f88f997c1f4b296c7ca653b19930a67a9934a933845301d889070f6e400a1390f25a162caa440e10cf8e8a0520c5046a6f0e0025cb1a6f900ba0f30a44c2908888b81809297bd84e09c08090c431c5244796664680531983b4dfa927886f451915820139b0414a2f0037112c1863f51f3d0ae58a03fb1e3001ad46537957903a75d21d044460ac99fb862a3045188103e2089487042a5851929414e7a55952c8c20c89ceaa332b38b8b16c42236fde05095c2c6692e050a2b4ac44f1f7a016ac8461b15414c3183120ce5546011a1f8c02922f188ae3aa7aafcc06a614d2299c3051653800b0150944a10c05204ff01bc61a659f771d09631c50c356aebbade7881b1a4122c18a808e0722114d0f043111ff84024a8a65809198f1fd2316c6d4362387ec2964a75e5075279828aeb4da41b94fda765f7a153f5c56e052523445b8fb0ab1ed5b05040f54afe2442217ef8422817d4ad98648b3cdbd616b732ed2e95e442907cf26420fc6042e56253491bd8200001e85d8fca5702a12a050f24e4ac1e9e6b1fe98e65a16ea1234586d9b3a054abbc54fa6e786dfb0aed2cf8430e041e4fc823848a28d32d1ca8e4549a2b5afba84d854a0102e6c2f7aa44f8d75e6e39527ebad9148a16889541792c3fa42a610909c120ac70706d0d28561c4748c7fc50054c993a56b7a0a00c11ffa8a417580362deb42eb94bc1a48999bb8301c78603f6cb8f1cbd528d8a8c748a40c1ab6a832c211ff6d8b03f26c899bbc304822c0028c528486427b201b028c008cdad64a8a662034fc6e6bea1dcc71baafcb1734974c35c06527d9b425a8a004ece4149ed4cdd1c2d83fc50cd5765333f2e2dd88254d027c025082f278201b0b8830255814371a93023409f75006a5cc31a56bc14117385065f44f42148c79b0003e9d64b29b0fe08a2dda070f7d34bcbf4a6b1dae96537a720b7008a94304c916d80850a2958751f8a3b07b251206c4a696309be100334c46ac564bc9d5776edb51474c184f6c1577e14cd941853a4204e4a70a9a38de98268dad9ee1c62ff4140fa6fc264e60040d9273f086091c97ea508dcf6f64d9382b9715f766df48ac111e2aa947cb08cd04cc183160041843f7432ba7dba3753203d11de8e39a905b931c20b734f7e0472e0262da4cd6d120a829cf6277426c8c123a20db0803b055328ee3eaa00cda4487900164803cd74930f72a7152c5bd0421e005a6f24b9051b15197263ef4a90edf8bc30b6dcf9497baef69948a22041592f57235253b09c01064cb7f83eb6d0b1685a8065429dc121eea186b5b90bb366844d16011ae096e37b49045938a5730b779ab0bdedee7c3be631f28821831328a97d784522be1430a4120a86a843d3e7000420cc01ad251871115045817ba42f8dd9342ebcc6ff127997d3d5a23f51b6e767a2f9cde7b2f3c6a7c82970ce6f9f109d1f46f707aa978282072402bafb0042ebfb8e6b8426051f98d39a37caedc6de7f050c4700fe52a6516c8994bd2e0a66fe46909ffc412ebffe8fc06e9ca1ff93f5ba368a400aa578b507401ba5b082a6530a761b8017da8739e0b582b20014da8da488020868bfb98900ea628a17eb8ab9a28847f8a3ca732c9aab3ffb6327fcc325fd333e49f823825005996338b4b33389c8a07dc896078835a758c0e302a5a5b824129881a6b080975132ffda3efba08238d88341f032531a3b8a903b82103532033214cc88fb5b41206a41b8e384c55980ff0b8a592888749a08652040a59801117800ffe8aaacfba226b5da0295e30aecbb8a24b40f28b00174714228ab0f30ab0807123acb2b0a1bcc427d53412e0c222ff4392680c1ecf2adba208fd2b3a2808207111897ca6aa311e30d056895aad8013de040dea002500cc53de0a6280cb369ab8b32433b5343c489d8c245549e46fcb74908c3560a8f5b3043d150c3a498037c009b1eec3bb5613cde700339a19193410347f30a28f803feeac32c738b2800aa40cc1b7e98b4ba70058d6218594cc482b8a55a24a05b5c36d9e287039044cff8c64a9c24a6780322100128a824a9e33db0301d449b8a35e840af30042b739593d9830f6c8a9849a5f76345bda90b54f00583a800ea43415a2cc7c13947378b84ff03238810482f5ef445d36b0a1a5087628c0ac173a8fa9803781381435080fac0034dda47aa38996aec8a98098454820b9e590076148a60582fd56aaf709c488a2c1a8bc4b147003a8358c74571478bd030a6789138d4933cd09e79ab0fef3131117095421836982114e8ca37a32a880aeb8c2831880c3844e613caa14498a25cb048c0b95cb0c232e9458238c389403aae789136b2c01e81024c3a83377a83aeb1b243b0813a4c9178f132eb928803d3c9116938b47badb454c4b5ac488390cc4f03bd8318cb32f94645404b65383d37593c7c940d1a70bc37ca83c144951538ccfbe032e80ac12914cb3271059fe407bbf33cb5ac4c65694bd83a05489441ff9fa9b1dcf4070d6b01e4640782a8810998807a404ee88c4ee99c4eeaacce1658022bb04ee49c8119a08315c807ed84ce25d08fa4004b8918418ddc94867cc89ad34dcae4cd84f1cdaee284fedbc631fc17f2e007ccf407ab0187a5fa4f000d50bf200b6ab89169e017b22b885ddc9457542dbb84bb838805f8349a4e434b1c7b4483f08519f49902582f02b0503cdb07ff1450122d5162220be87ab9b08cc18829cb82384bcf4bb3094d1868bb343034880558d0e08929dcb488d0740a066080110d81202d52233d52244dd2235d822968d23e78520990003850522aadd2200dada490cd8940cf6ddc50f5844c87dbcf6893d1193d981a3db374f4859d3c10ff54b80528da2efac33635ac2ccbaa029844317f7ca34068916ca488febbcf692986dbe4a36523d33255963395b049c8487ed848612906876c45a09885f55284f694886d20403a35aba7fb98aca48a3528483d214504803f898033160d1e54c84f7ea8804b2dd4663bd4658985e6c1b1c551ca32998503b8cd3893cb9e78c50ab808146903e47cc0deeb05eda10305a84a1a8242ae28558be888385b535f2d930655845884d5821020595596f1b2b4f2a2427ea0b627298060f8c6bfc885354d2d7e10408ab0bef45b8a2dc80320002805684244f80a688d0b18e4c89d208a1038002f15915940d776b5d0206bb06e4d966f3d332e2d41f1b885484d880fe004ffa454c7a0400529612f6105c6783525285080793019acf08a7d15c18ce44c7d90bea00b86810d0f546057878b481c53d885a594863db321e346cf70855de055d5128283cb481ded094af5c88ac8d48f7da390a58343389793212a53c58c8200ab4905da63bb8535f50c414da94bb3d99bed12ad6ad78b54d0ce28805530d8177dd08898843f5a8097ad317ec8564c15cda5958d53b9d330e08a3ea588d05357a0d0d81785c4aa2ddaf0280056655b091357ab0adb49195b42ed2e0742b6c07553bfa8002678d58910d7220b0aba542d9a558610bd5bbcc54a515995e0bb88d00b81359d580c7b0449a84fc639806aed0c5273b8651b2cc77d5caf4dd88260c7ff6290d982508450a0d9045d489ff85c45305e1c342bd1f1022f30031328030870d6a500821152491b60560440508b08bd05a85d7de0d1609d084e6002462d8810588597a5c1a9c9dd83e884dde5925db2d17de3095d555b821002bad58847b8277fdd093055dc88f000bbc5a9970c9f66f40a2018cc227003664d8a6e98daf8631cf195becfbc088bc5b982c88560d8da9d28c3cb73b3f31ac7f9dd12f90c29ec62dd60d8d887940484dd0869ddc6ad955902f60765c04bb3faa238299916b11c3c404da69886c5dcd22b095f32f449e39588491002c2cd5abe2108cd0db2dd3ce1c728b8a2fb34c6450802088529b60954cdaebae0d11ec50803362b20c083ff3328822e081f1ee48d6aa0e08878848c44e2c0ddd81bb68853083d1cdd85a295bec8c53148d4392bbe8e4475b32756042110d3caf8d3baf85c7e80518cc0008f1d2a14a0023ef835d9d88022e608180c01f1d507d7350cd85da446a55d7d4005778c615b8dd542be0ee639a065e3e30c80e10fe1527e08657db8059f84c88c500668a864d26d0a22d68830e607c00d0af26d8ef34d5f8d9cd83c6ee56d7de50bc9d94feb0802c8dc95525f103e5ab48b666016e6afa88278e88215b0011e78c6d8e064ffadcf5dd85a0c66659b988450e0e0c4b239b0a5e6e9409a7b5eb625ceb1fb65481796e48cc080d1750b645dc693b1deaf98866af05e8c784b8350d9ff1056e20f8904273e887fae5983101c7dae0ec80dc7e6e052c7ec0c30558468be3b6d386020a603773082302015b7e8060c90e32de5e30508609ee0d1e28c90d8dd5fb5d3dd8fa68e4be85d912e8cfe335ca1e8dac3f9626c33e8d8f80105604993ad869aa6891734085500e19d50e51ac414d895e7209b6182f888a1868c143eea88e02dca0d8ef58c09b14e260ca806966ee80dd0060c90429a88843004d4a0903e77556bcba8e2b34e894e736ac1b60892e6eabfbecdd58aeb8ac0060ff00068a86ccbb66c0c98eccae0eb83104ef19858464eec99c039812b6cc588652c14ed9948ea3241053055ad8aed23ce8620a53e5b0f55edca581c6e35edc518affff2c56d8d606b612980892d8845761ed84ddf05a068cf78c540066e8bb8587e002fde760956304be8ce88c5fe17576055a6d26687c168c25d6ec6ee8c8d45ecec3ed5c4a86ec568963d4aef8b60ede1145e82c0dc8dbe8c53a8678420ef7f1161f2826f8d18ac92626f96a85f0087b982686bced0d8102057ce28805df50b02100249b8ef990026534666078f18c804ca03576cc2267090e8340b17eced16a78d5ddff29658e5088c50f8a8bdae272170e6d9d5659fb0f151f34cc8866e482c6d1137090893e50ff787d0f3eb9f10dc83e06fdb6571625288457872287729590ad8da0edcb41d57f190be0c18f24429081efbf194e0e71186ef91ea5cdb75e1ff24df85f64daa7232d1fdf68560c0f19e408555b8cd0def0cd0e6f248eb68304f097802c70fffdf385bf39ed8d80a40a24552f303519072c25a27ca85a6290642b772acbdf3bae850a6da71d5e62d8290df3e37898348e9c4be5823f709763d7489986d83d8059d26cb57320e588775ea899cd6aef38360544be7c9f7d6f388e08410676f12fff0320f8e53474b4ee0e3186cf51c5a705b9f8c3061dc5c372683e3f588e8f14f2f89204fedf416f42ef50c76cd600d467622abf265070a08e7d545782dc65576fced673d5f9c2fbf7691b86e774f6f52f7f6e1dde847f880e02c77cf2800fa4e778b10573bee0c1ef5702e97ad4b90f79128ea5d27f38230f3ffbaf8f612dff73f626e7fd707face80d0267839f76ad5d274c11e2cb366f84f30f06d7720b8ed0c8a5f3b8288f68cef1f831002f4f607e329f86e7c515e2f6182d004860709d4862c00bf588cd7f87c2f0c5f47af988f6202a8f90aee55cfc8733d67d4dd9677316f55009f614244ada3a7aab93b5ce4087bb11f7be428759f882970dd08f0c57154f050913f6ae9f6688677efad02f08cb4f196370cc6128fd776229ee58c98fa6d9b58fbce706e3de7747e18f04f3f7983e85fd1361e8ccf7bc3183289ef0c47570e72ef891aab0cc2e78cfc2c71b5e6797ef07979cf76a1cf6eade70cc9571ce47d6486612dd88f7dd67220abed8c1a7bfb88e87ca1f0efffb44f6f468df74fa7f7fa86efbb1fe3ae1fec970f0f2911fc8b40ca92a696f7e57c0b06fc8240f8a1378885977787affbec369eda0f2bb4037d10577acff0ef944e7a2cf78c389dfce9170e1d1f72c42f7930efb4d03e6a68f7dce3b78c910a8fd40208458ffc112c68b060057efc7ce96be8f0e1c35c0a3f1cac68f1a01085fc16cc8208d195c60c1747922c69f224ca942afd6954c8e81fcc983267d2ac69f326ce9c3a77f2ec39b3554b452b87122d6a94a4a496ab3cde6a79ea6841260a1778acaa0fd5028542504a5588ca2a44550a4341f597716a47ab05b22a8c54f62ddcb81533b44ce5f32edebc7af7f22cd552a4dcc0828726d5b8eb61538d92e0ff8652a80a2cc4c4fc38a1e4a43118648707142e7a7b76635a88c1d84e1c6cfab4c9ae1a3ff16dedfa35ec989f5af25b8cfa366e7fa714196e28b976dc450a0f64761882b34ae1fc7215d7b74a6105b89f393e2c20562301b7b9b79fb6dc5253ecf0e2c7df7c459b32f7f47227f156b8ebb76db8ed311707a930fec9c2fc0a142fa631ee7469dd421a3fa10ca41e827111d0122be439f8606ca9b4145d82151ec51e6df7c9f58846ae34b78b4242a9c4a142f441661f3f077aa6d102aef8d2527616ca7854632d7502218e39fad4096d4cccf8a34a18b684df5b9168f45566a86844d64a74f11342714ab625d767b465a02290599a34096de0e9f82598346942ffdb245a9a399290c005d61555c53da7107a2a9da251686069f41495b42982e7997d5ed49e42a084396898acc0e827a2056148245c1f38d6dc71fc0036547bc46526113f1405f6d995897a5a509597103a6a8eb431f9699f93300a97729642e69f427cae741694995da769608bec892aaa73b69409a9c18e170b6ddaf17a6c590bf2b354662ff2438051462a544c669bf1d399608f6089ac9fb4b5222cb8b001a59188dc9a4b54879915a011ae44297b18646f627b2ebd4539a9905de1eabb975f1a6d552fc02549bb5f666f4e46e35499491630c328e9a7106bfb4adcd36c43367cb141fa15c7d6bf4671a9d02d27fe8731c90779a7919713ab8c93792d6d5bff72bd8ef2f3186492196b94b20c81b5ee9430c39c90460dae3c744d866a44a1cf012b072f58d7415b966a485aa5d1cd49375ca342a212bd754c97b474aad5f42acbac5a1af958d6c921831569bb61073cb042c0724d7426c5ba5d6fba60592b105c40d36cd5ad775f4cdb4b730fcd086d829ffb31c15661a5555cfaf1671588d72aceb0720a9162f8d0a4fc7539b7bef253b34665c245223f267a242fe800aba610e72bf7d8fab132330716a648c3e5e4ed552d4cfbe2b4c91dbbbe75b7643af09e3a19c22d523f348b6281e957e74328267f2ea0fc144e7cb888937bfda7406be44bf30f55cef7869596ad10f2e0a37a2f3f9b731faee721b99fa8f8b4e512ff4c018f173818ad1c820a57ac6217d7e9d9fd3ef53a7ecc2f5cb4695b02b5c40926e4af25913a986044674002cd2e829e625cdc1a182c4fd8cd83889a600535322fc1642f43d8599509b544381192aa65238b61a21e2109f8a969305883d1223e2089aae1b04f99e387d0683828a321a7889fd2215dca35182e296211a16042245ee64444c92c6b4a2454bfc6b2455e3da27d83d1e2183f05377e44ec8b3ae29153d228c7399e09750a89851bbf643c8dc4898e7efc238294e5923ceac87b2102242213991bf8c98f901062a2e51429c949c6a58bfcd09a231f14c64c51b2939e24ca1adb9849f1c0f14e9f2c48336e200363382310ae74a5317470030f3663ff95b578252c75e084669cb22276e4071e47399e3dc2e993b51c062e9389cb5ac88097c943c6325aa94c65d64296bd2c8820b527ccf1d850219d842632a729ce40d4c299c90be738a9d9cc5e1e3189db14574b5688c85ade329de25c86fb9a514f7b2ad39a9eb464bede099bfa412e91cdd0013fc7a983915c83180e7d28b71afa50878ee4060915a731664949d1c14ea0b0f11abb10890c19ecf3a2b81c06322e020241b0b4a52c65462f9e718d3e39c01a5868804b5d8a8591c8c0a4d33486391309427e78c2a3af29a11f9b214d9f2e33a806490633722a554130231bc4f89103b881d3a9e61404234127535f894f49d2269846dd0b3131e847b086351063ffb50816b8cad5063c23190902412fe43a5566d8d522fa6ceb2bcb29c96c6eefac7919534b00d953c0ba72a12ad5ab5c99c10d077007045b85ac54777a118b3236102855e411056558bd18921fba93236719fb598b4015b391adeb6d2ceb5ab97af5228b65ac6311f9c3468ef62ea08867524b1a56c15e24aeb38dac354c438ccb4e9516b2c02c33287b11b686f5ad7fb464297a9b178272928ed465aa750f620da9ca4216b4386e4b1b30d3b824231b90e5050066db8b91fc95b1c4fde31ab58b974d42d089b7056c6e2be280a8e6f4bccfe5c573592a80e70a0317727d065c404060bdc282a500a8306493bbd9ce7a36a5f8a58d28f5ab13a48e31b5805dadff45f22a5558f08216c200002e64810b5b08c016b200862df4aadea3b417bd8200c031a02b5d8bfcb7ad01a6a3f044cc935222708bf505ec7d2b325ebdf2e2180208849565c10b2cff42103616042c1cec5266687828d760ae4b79a157609c17b2f3fd2a87c32bc7b22a79276945a309bfeb53391764c090b5850b80218c5f0003170268b13004818b0a0323c139cd465f53b252aed218c38100464e81d165cc96b9224f6e6b94e598bfc2d6d92669956391c37ae483a8d8b53116c48d5dca6205e758aa0d18b249dc2b570008a0a5b038744b71710c35bb76bd1631715b512cc72392bad4624a5c8939acec833c23cd8ef6b58c310ce640fc62d6c010b4308eff018b6bb79419c61e4932d02c555e681b162e70014b71c1ebe3368024a966eaaab7083f773a9b26a595670c3f3d5ca71ae41a695e348b13cdd26ff3a2cb9a86f52f6801804008a0e2df1e34579951db8b3840dd7afd4520602c08600840e4c785309c3bcbe7225a92b7fd9ec9bfc7a86793ae9c20cc95058b65e1025b000000348e37d0a58a8b5f1c83d762e6058ebb7a916b4c58ae6296f731daece39c9efb2002676aa89dd8f297db645c4d2ce2bd7d9aef82543ba7b0c8b10b8e11f240249ae7c416042da4de529e9f77dcaf96eac60bc274d7c697c6c3def4d45d5aef8a4adbc363c42ed76bc25db09910d9619d76c1a90c0c58fc8217c29005c8d90e00ff5ed45a16b5cee9313e2fd5371ba4ec98fdc59505306e01487dd62e7581c2f58a72db7278ec26cc6fe267c2ddfede0f19c2c53ac10de271aec20200bfe0f995e7ed6531e714002e8045a2b5ec52d293fdb8e3f635a6151c64977adeb5574d39636b1e41dce73e26bb2fa231e24c126e041ecc7077417c4bce559d879ca5a2a73e414cef635b309f166f6fa9ce69db5c459aa7fd9e4f65ddedd146f9c9c4f9c550d89994edf90331b45f4ba1def10582dcb994f1d18283011e4be19f3fe81f05c29a30889ebcc51764710349381e53419e0791df024a4848355ee1a1dbf0f9182d141d4b95202d08a0200883a6a1604b81a008fa9879b1942c08c0f3e554af61ffd6f7d15e6745a0fb84d202c2046dc84aef19a049216041b01f05da4206fea0c41d830736d82f34584e11e1087e9bac09a1a2851e6635000156c4cc5d94f8b94f92552189dd4ffaa91c494ce0d4d942090221b909c296b94013f6202e141a57a9e1080ac2b0291ad1699bf261563690c4d51d60f025501e2ee01e82cf035e5404a61b7af1022fcc9829929c965d5ba5d9dda101c0e5c5def45544114e1d2dc0df31b8409bf19cb81d57de55040bfad43038512796df27264f309a940b168471cd968c19e285fd822cc4570fba1f13065a20e8a2e8cd22b53d22dc91a1a3d1c219dac2ff41165fd91b87c940111563ee1d23edf85e677121414cda7181618b09ffc009965caf89a3d96d5af1455d798d1e2d8e208d719b0f5a5839429666811f60699409b163e2b963ebf461f891446b059ea10d42c9e522db351adc25e40e66632f7263e951a02c58992d14df54812464fda2d569e145c963f24024d749e4e58462424961337a237c911c34ea95ceb900f37de040b69f0058d9220ea59715a26b9d23e175d6303ee4af54e13fd8a4e024e3452de33c7aa3d025da5142d68c096437ee9f822921530259fb2d241432963a7a104dbe1c4869c8f5c0a37d6d22415c2457729f129e172e9cd736ca9523a2170aca5b134a15105260a759441d269443bacfc98450153660f2502460dd61abb9168b65a0bc1d242c60d885a59d7c49ffd9d409da2daa9e5c5d9952ce567461224c26944c5e0e0c969f64d20e4ef293144ed9713d978d1d5f4bf9a44b0d25fc61204ba9d9a14de336822020a217a01d03239a1d3e7a5924ba5bfd85e60a4a5b02c566eecd26e860654269a53ff8197a65262d4c5ec9fd02ec196285151f251e9a9a4da3fbb19e581a4472e625228a99cee142a0e182bcc9a25e256645d4a63db525f86067e269a7e220c352819a5d12c465fad821165d2e9e616f6ae6c8559c2b09c02f78e01056c47c72e5e4b9d4b7951c30a0a46ae29a62725863020f81721d244d0ae820941f92046eb61f00e0d8f1f1c251921c2d98e6ba655fcf09e55421275786a5acfd828359a82efad8e0d1ff576bf2d36bbacdeb60d202c65ceb3841ed950478e625120243c809e15ff6e64112e5417468fb9da400fe28972669dcf9d8ec6d185482cfd6e5852768022380022990422b30422cdc08a174822680820c660d9eeee95d50e9e534430d92c40df224003c972c0843afd9422030652372e890861bf36523c525984a4e5dd5fd673a5e4f9cf6842780c22665082b0c4f8e740223c4a50b058aaae6443749d1dd20683c2e68086ae9548121dc755935061ba5926441902905ee284b819c3084e9d42d2943b6558a5ecebef5442670d7ab6a04298418796482ab56abb5626b4d9cdae5c06845964483eaaa06c21886fa1c4b495c6aa6a1a58e202e5cde79ede89585ffa1d9d92b579944266ea1e1810eb3ed4427781db7d2c62514d58320d6c0bad02be8445af551d85869149e043d9a6b4e411daf4d2a9825a99bbdab4922e1ba5e985c299c797e697c5667671903f010964e7842a0262cc11aecb0b86cb58a164e58e5c5202a54f6ebfa716579f9e022725f867a197c0a432a56ea983ea23db264bc3dd78e9e57c9c11b64c9214a00683a09e8e5bc654c78c2b66a8423f880d7fa4025649346142c79b890228c022460423ff4032698c228886da0e4046dc010c9d86a5daac4723da29a9d226fc25aaf8ddb116a1f2dd802a1a96b90722cc5ba14d1e5187e7ea41b4a1533b4e9492c263f3d6bd83c263fc4ea4c74c2a93e8b25acff2ddb4282e86e0224384286a44c6c100b6df88029f84006384206b02ee85a02dc361b03b604ef918cb856265180c04efa98bc46dc348ae3819927e0d9980bfc42cf611a530a69e2f6a52d9023dcf59dfce99835cce149ec6b4cea6cd8ac684c40123f288228ac6d23f880d82a4225f8006df0db6b082cfac26df8fa4023f44323544286782b4c4012c0950cc4e2168fc956fb55d931e4629049dc8e6e232d68aaa0659fbb1e6de202c02da624ac9161d44ed65170273fa1ace244294ea495226cc2da8a420bd1463649e940c9ac42100008f78328acef4d94d669950cce46e13258ae4ad4d4a2521aeb615e97515c36b294004a272286a9f36ae98e0a0312bbff9879f15f6465c3a7ae442a9154a80ace6ee104777df0dada2f0a438c786c7188ac300fe1afeade10cc2003e50aa30e2c03ae92c4356443d3359fc9addbbbb900b7096dc50299e136b07c9a2b711a1ab0e91516b8644a44316572982bd970c984d64d30193ff840087bb142a0ae6ba45550c46e06886d05906ff64872d6da2cbdecae2127532d18830c207249f86e730103bb7d298671e08fd9ab20b66b116b69126aa8ad5d2f51348313e8408286f232712fccd0c6c29a5a50cc6f23648f2398c2fcf6c326f090467c4b6c74534b3832e8f6032464d3e7f683160f924dccadcf2c832f2714299b32c73dc365155fcfb99847ca957b9a97bce1abb01204b14effddaf655fc3b52b5539f150e8b20e3469386bb0d560aee6c6446939c2da5a424b54423583ee36b784cbb5c66f65c8282cb42687c4daaaafb5de44cb325ec3686f3853531aaff141a072053e9fcffdf1543558c809a297492360226ee0f11c2ca8a2f5622f4920c30df0f2479b9413840d47f1039fd644694d743f60f4b35034f9be6a78b4ac46980252f7c32870ed45b704cdd244444347c998f14e3f5e29df30374c98e7399f5fa2f4c25d99dac55f7ce5713c4be0083a575a27dd5461c11366af1314f256279448d3cb0f65d74d8c313f1874514b355223b40bc1ac6bbc2a6053f436037643db2e4c20ac37e9ee5d43993f9d443200b097299cdbc122f76dff59470642bce2eb2ca3172ec017d2b1a464992826ca402f4ff645390330374c3be144c56884da1a353f38f5426fc20847326c507248a86d35b7b04628342664cf40c30409b50411d50b38bbb67d55b649e0954bd942d40983b1ca1a19aa9d00bc18a58eb66b099a201cdaf6d91a6c652f6b43b7fffa8c30e784ab6600dbd246254002fd424243670834bb86346748ecfac0dbd2062434420505754db86aee728b47abb76b4af71fb6daa219dfc3816cb01d25db05ae1e0febd4f15a341e640308b25fa5b78277564f97cc1a19b6e2c9772338b3cc06546b802f0a57022654105fdf84fe5ecc1987383f39c33a99441b03ebd9f52a13c7db953daad1ee71204affb8e079f84180138e87725ed74e4b98b05067080188420ac92c6c74aecb2a828ab3ef4c48339e1d0bd53679772e436c1b8403e89aa2b9dbf1552f121e254b82b76b0564929f444e93b92fc336c9e48f97cf845f43b20b25f78e003ab73a7627c711c060309e1fa00eac3131b4dab8c19700e2a8b20a829c2ba99217043238416b2ffa7a37cc2f0d336d137ab58a3a5a91faab0a7ad7b444c79c4b827b7a58659449e4edc7123992bfb403b71f99e96b3fc3fa47dfe1b13c0c51ed8496272cfcf243559316b9000a01dc77b566cf4e5c75f8028c5dfbba213b83999f327345af846e6cae4fdd795754b55bfbad360cfccc784e3051d71e7b88c0b8e9a67054e3ff8b6ba87bbc2b042660c27f9bed7cd73b8bf73599d0cb982793331803c117bcc113bcaf33d399fb4332981e2c082786ead5a5bb996a1f4434f9fa301cbcc68f3b3f4565c0644fb2bf30b9ac2d24f880239cfcc9c72e7d33f33413b64210785e84910f60424b10757d8bc2d75ac20af7c3bb233bc09a8aab67b00ec88013dc4013e802d2e340072c3dd3377d070401d2eb423bdcc00d38810ce88031f8b3212b3c4938808a75a612f2e785cb33a697c4c52b38c1cb4029df4033447d10383ddc3f3dd22b01d5ab3d2b0568c0fcb459e5043109f75333744b60c2264ce55ed4766ef7c3bd28c232fffddab684a9e304243d0db7b47635c940132841073cc108f4ff002574bee77f3ee887fee78fc0083c4107e0802e98c3325c7da78732d78f843510986fe2ba91cf1637d874419cfd568f32d1df802ebc7d07907e0e88bee86f3ef1e7c008ccc0e92bc12e7fd793f749a8f40493e936e3374242af2da018fa4ef8f5fc42424b8c2fe3b3bc46a8ba4c40363f6021aad49333e84013d881e6f740e92f7dd4a7c43544fdd2cf00e9137ff27740ea0384131dce0215347810614285816ac940e60f62c488c97a09b2781123c65e122112cbf8f16203621c392e23b810654a86c664dc5022edc9881c9468d6a4d463c48b0e1d82e8f249122844073e71ec7c31a2874e25628619bc11146a54a953a9727ca4885f567ea0fe75f5fa15ffecbf525a7df4337b16ad591f5af94132eb482babb073e9fe63a495c0590278d3f6ed67896dddb09dd8f21352157162c5119df8b123ad83345d0ea00ed515646766cd9b25ff8498ec728719236cd2cc3182a739194d55b636586b59546bcc4066dcc8d1636d8cd99241bd61cc7570673a96bd7c11adf44d9d382647f4a9abe866e93b3beb8a1afa893413621677f73e5552e15882c382d2eac82fda4658b3a257abb51479f2a4b466380b58aba5f46747694d25ff2b56d852e491ef0cfc2e19ca8082ae83a366aa299a11249c50a6e4923b0db50e74b9c69fa144eba1b46866c0a189d58253c999a782baa601dd2cba4da2675c14841910a06a468713531aceff9c20e800d1a60879e27028c88e42ce429b30a450c2d2707a424305394af0c02a0d5c84ad4b00fcea15ad14d9efbdfcce3285ad4eb69ceb12ad44416bafacf20213aeac5a39f39f580a93c4ca3c17d3a5419c66d8e939c5aef109b30647403244d482e05017698e53f21c1275a8454785746826a864b27111c68864d4ad010e839281d24a1132a609256600d234d4744990cf17585552c29d98f30c31cba29bb0031ca4d413d8aa38296c4e3a33616b93fdd6e3ebac46d81a8f4eaf3c61cbadb3d612733fb63489364dad2a08165c9218e4c9ba70252ab28343931be1091cae71208827661571bb934c654806a8acd1ad53883e05a997de80bac15e536bd1a1ff890ee61df19a6430ab9056283734f7dc4623f395e28cfd09a5304fa2fd872dfdd2bb362b91f5d28a918fbbd284adb49675733f48d8f298ce560a8b446360931138e7eb7088a9b4d33474585e9b5eb0c30fd64c1d0653a040a0eda37efdf937a36c824246867b1912c384191ea444445f1dc061064469ea6106c978ee3953b683bd8aadff3e4e45ab51d27b999f37d1ca402b5254fec7e6ac2ae88b647e4c4e4b94c0a2fda4b0c3dc7e9ced6b7e9e959211a46998ecaf7b40bae013f305ea1aa8316a8024aa2fe22628820d16638d176cb2fc5d1c5ef81aecb4cb851cf79ec3d35665f3da1b39e4be12cf4a4b95e9ceca6e97d9cb3bbd4afa565940b638c99dff7a8df924ada61c5ef0f59aa2cf46bad41399065df48b48da34231b49c2da54395a877086208836bb8727e4af1e7f8ddb24feef2eb5f20b6f7a438bccb442b368058f70084c4b05b452ac681d8b2d8ecbdf0483753d9bf4a003ef72544d7ae00539e80836e4cb08492a8211d491a4194a73cd304c700e0e3e2176ae7be1fd2858c360ed0e657f9b9656929596c21d0e2dbc7b20b200b83c4534a22fcffadb58d852201b3ed14af142543460980cd9d5e41c26e85c4a74f0108e8060841c29a145ac469265844f25b58883141ed4036938c001d26095f6300645897042084eb4636218c8964ffc0d64d83a0b269627c00536f063fee3c797d2839fac9465807efffc1bcbd8f2813d5ef23b71c41ed8aa78454ae4400a1f5c61d324f2b41791645f1639214772e41af701c98d7094e30b6f87497f30012ba1b02555225118ae00923e59a9445a9ca7956af9a53f59911b9da2c70ff7a4677f8ac0045a4856bc250e687abba4ca2408f0013ddad18a5ea309151d908c595202096bd862426aa12289240304cf585b4440608d5f4104192a44c91a674245cc6dd272f7c4e423b0a4159c69132a7dd4ca1f0119387e0cee2c9b60cb33fde2487e7c8c89fc80647ac8a495619e856f59f11b2029a915092234a16ec2d32e8320ce9be020411d404e0ec28186d6c4e640cd58e7416ab10610e56006d669694db637cf5d9e6279592110ff4a4982c3acfc92a42d3b4b9cb2724cbf48542b99a01361b4620a30f583aa6d395956520648b114269b4c2509c7d8528183b2549c40b58e2ec4298532a8e473de69061a13e28270cc64043075804ccf0653b5fae311212d0c3f3270d888ec2f2b0c05e40eab6a168b7e144ccb7b059deca41524828980bfeb87b3b402ada8b2a5b18e8d482f17cb8f507c139356946134606a451021210b5cf4ce0df87a103448e1934fa04c1064184bd54622a98b4d2b5399e04bb37aa55bfc585323a239cdaf52552e67ba0bccbeda8f6296ac1fa1e587640199d1acbcf5b08f806c610880de5d9af3a733a0cc356640897264a1b705d1c1629681120120a17238f0873991ffe34fd52296adadcddb241c0b37493ef71fc1e4c7300bb75130912c3e6792b07dba8bb7236218c27562ef8113ac60d7c27697dd036c10062c8d68d0f418964a4c7f159205240095320e10e70b587c607f70d3c42756ad10881562bbe005abdced6e47237ba6e8aea9bbfd189e30159b5d084b382b963c2c6b832c38061f1607a4a12d4482209370c41821fba5ca0d6a5c8e6848a337ba10339c7d0c910f045911ee652a978967a61077b63dd48af268950820ca8a75d00a5d640e437ce8452e579beaedf280be7c58073c210739e8406f740c6384e4f5467cfd6f6021820310bda096079e84a2179b01143395d59b3532e35acbe141efafacf229293f066d16fff1b245ab4676685616a1d612b36511c9556aa51d6b6a4df726191d90476e0f82d3a0ecf520ff0d6aa95fdc0181aab6b94166429def1c37234377b1d2ec753f143b52f93814a2bd4e6661fc1ce24e44372be346e829144c80477042b194ae335d9fdd62dc1ec49d1cc9a7415c8004f972bb0702ae73443851d020175bd58b0df6b9b19c1528f77aca1705d0f1f891bc5ee32d2b193e37a0950ae93d3a78b19576aab726dea1274463d3a59682000a520b524aa495c70887b7b98dea9a474412ca56b0be1dcb6a079e7bbbde5ab7af67062005f69ac959b1f2b99b29386d06bc921c997956563a71f8e6dc1f38a86920120e91bd3a231c7610581044f4ed0327ff76d28561364acb0d9f7a9f1b823c9cba59842898c0f3a387530ff8d38d7cefc268f992fc6eedb74842e4c250fee8697763447a1c94574144173a31eac4d79b77cca394cf59d9f8b9ffd1750baf9baa50ad8b22193978941b70e58bd5730d61ae77a0a43e2b2e9f38d93a2f151da33df34857700556ad60c8473ab98c37b2221f3a78fef8473ecda4e8d4b39e8abf1bb9eb8b7cf504c16ed2a0009f1fbbaf399fecfe19c88c3ef9e5d7e58f959e7e945a3ce5df0ff127f09df8c15b543e32eaf5148f2da40fc23ac1bc1eca8e244fc15eabf25a4bfd8e2ed538e2f3922f2860aebd2422dc16cbdfb4a9ef0a88f5bc82e434cafa0609d80483abb2c2ab4a70b4ff92cab4cecdd10ce38938a1fef0a2ecfc61eccecb0277304f24cf013902ffd862fe3069ec642d04876dfbac6f79726d2e58eeb35830eb2e81bca66fb16e307f82d0c40840083e80d5bc8407bfb04a3ee014828206152c02276812926beb006f40ac8b05c12a2e0423ea0ca904e78d1f9689f57c872dced06d3630efbaeca4c05010f52407c5efe5d6ab14f40fc2f8efea5810c4ea62c3deb05914cd009fab13467091f60e77ca30dd2cef0f0d711043514fca2f2b52eb891e81d52e01f7ce6d04314b12c56b0abfe2c92431a25c3004ff8111d9a203ab070bf3cd1f90ea0f154113459118bba3f7d8620c9fa8fcb6e516f5f0a19e5012492b2b5ef02b0ecdaaff24d1a254f1160f4f70c62f67fc10d9220215276d1186b1181d6b1224e10316811d85ef4018b03014c11d73c713192d04774d11fc8f16718d2e768d1689296e14f1b976ad1b3751e9e45122c6b13042210342e103ccf11c996a128440d9f8d03b8e4d2b306e82eaf1a96ef11f1c0d8868f1bbdc0d2ce0ed1fd543d1d650d816ebf4d8a60b7d912338512b9e2f220fec145e5207c145d25a8be9aae70395c9237311794e122d428e2e48cee4889290d842f6cecd19b3221035e627eb232830d21bf52412e6b126bfa3e2ba8c26b152c110b27ac6cefb6ef112db6add56b0bbc46b15bba2114ff2d79831049f52067b6612c272fce011262986b52a8009b4722bff11230d27ed2bf50423bd8e7ac852209f6b0409001abf0a30ae315bb4422ebde2f0f4f1ab4cc1111eb3910aa3321b0f1319eb2af30427ad50035b2d638e310324613403132a0673d24c315c70b230bf71b1b4b119070433f76313b0c215e1442b9af21f686fddf0c3d6beeabbb2e233ed2d342ba0350d442159d21c4b4f23c385144b31195db32a8e9125d97108c3e52e150c22cd8523f90137e7b23024535996c70dc164def0b02bb4afd72e6bd092931f96f3009bf3390da43c95aa27edacb5aa3358c071b104543ba3e23a1521142c1258a6b220d9a63ccf330f0b2324c1046f06b0a214e72b0470d00a67c206ad11580d3f2db13901b34a0a316f24617aff26e13a65135860d3c40cf4408162585aab3673a6175d0b426fb32d0fb0e32a1432bd24ca30e104bd2205f9412dc1c43e7ff3ab42d433cd323485516380ec130be33ff50427516b46a7e2304dd36d6412ad34263ab542424193424b50a180342d96f02b9cb0bbec13439b94d584d347d32d3bcde5110e33eff65331f4f4f1b6542ab0302a218740f34c6338a10b4ba1479fcb13f0cd705830b4e20d38b5ee2be6b049c10e88206137fbc249d98215161390e8921fbc34584ea1f4bc325cd00f0b6f1450fd41d958956df0cfd5a654d9ca320463c151d514804c011a154b3d7d083ebe22129585d52c01134cc1073240a1925459c2ea0e6311c2447550dfc64fff59325cb8b3bd160b561d2b12d43114d8911fb6352a266f82e04611eed45c72d056598ffac06bddfa280344619a885498d6f2c1fe6116ef86d514a1fef2b13e0ba34c43ac5d1f3463f068d29cd33a219040c55530bdf303242112c6335c02f44a5a4b084c54634e6111f8f43b0e13144055653ae129fd75ddecf3a144e1bbda13800acd1ad30313b2342c3735819ef41e5b4b4a73068f0e926117834065702a77962a1c9441c930124ee103d67111ae14080b943f4dac02d8710b8ff6612596a908aab5e8f4b93e01132b40663b73d298b42ff8f11ffcf1aa6a90031d21037c4057d3c2a23a32041b9527ddc668d97111428135cd0546bda4407eb6415b8b6affa18262a3020b15c140f432184301633109b95a6b44cd2a131c7533070f1246c1595b2b72f76324bbc224fba237dbca07c46b144c01125476ea3a376ea0d5acb4b6d63816a15e3219319254bda33f0d843aa5e2300fe454f34e116277977af61256cfc8a2cea36871135016270940668df21f90925393aa029088c9e890055f166081f700459500fe16a50ed314b17068aba2172b361ea5c2411337280cb74a819682ac76b152615101a9133aee51074f1438f32c202159e31148d93290dc956dbde5b3142b29fd82599bd46499900ae3b6e6d06fa920c27b81a50b65143148512a72f07babb24a170b5d6d697117eb6343f071e3b16bf5f519bf0a12926b80ffcf425b2eb33333e0b3a411d100886f3e6ed0424ea440f66342b840cdf7e5940ebd1e584f02d73bca372ad06f8379d66c838c00102a4f15cc08a18e25ed574eeba3bba89788fa22f688733f0ec7916a8f73156a84fbe28401961aebd44e7d8c14bfd31f80384f5a4b8d154368a3223cffb44a3821149258c17897829a6fb1143504e377b152f85feb26ca1ae1bbe2f43de573d0140b6cff22a91c73ea3ab5006f5178518b7529a86777f1b1740f2cb5d5408c582a6cf44599e068bd931d7397b16cc941f9e1536fd55115a180072deb0ea7122a418aa5ec43d363de4ac1a1a47765bb0a995a8b86e5ad7ddff76f32210195ea8831296f51eb6e2102023bf94eff3e5994c795697b06516df692f878b19ed8de864d7048b7d7f627293b0a7963e696150a14584e9cfba28bfbc28ae3f1963333b92ec19b0f30fc329287f107664b91355beb92a1a2672f98241ea19aa1020b25f85a4fd58e1e6195ddf76d935990b18e59cc6229c9c2f6b4e548d7d62c14eb38c3abfee274d030a17249017549ca51fd539baa35effa36e60e44888362701fe7769f281272b712cdaa921729964b5690e0b0301ca19dbdb6c948eea349787ec3a43ed893163dd43ccb386be5577008fa71d02f8381657671f79aa1a2a6d9c6416d08e014ac14ac97514353a86991aa9ed086bda4a7fde2bb32cca1bcd842b1e2859dd50748a69125b7f45a995dff531a2a035a4cf178d280257c0fa4b0a1c241b5d74a4aaf257db2fe5a0187a365a749f01fa5ea2dc80285076d798ae5d0da3a2d36e1a33601b260196fdcb0113220af3bcc642f01aa53379f555a199d8f0950b930087babbf23aba1c28277d493f3e7a6c59aaccdca139a338c7b8da9ad8504e3b9e4a22ceb362ea3523b43db2a5948e69944db7fadcf14948daf57ceaff386aacda567f94123272114689b1f8025a687d86f8bb8b5f4d84a4c55c1f63958c25ac11038c4267b14e679f0a8ea37db73798afbbbac0970bc44bfd1624991086faac5128c68a80bb9fcecf98fc119d9e43b58e6381e518cbc7317bd176b5a1363a0e5f8a02bfc14cadbc4d41758ff9a58c14c1a849399007ef50ded1048a72c098b2838abf12df723e43ece91dcc33e5d98164541d9549cf53221344d0ab0ab644c91312abab0b1bfc3c267b24ad04f8fdd584f5659c1143a673ea0fe2ea171ffa61324bce40adcfae8f5a7cdc27463184c2c6a15336ac6f7836fce79acda42923d4e292b971fec1bc25ea1bb15c19b70474f5d9424d29b9a174b691503fd6055d9b0dcd03f11617147125019b25d99035dfc1fedd09956b0110ae7a8d343a154ce2b84b7b8cdc290a171c7cf7c9128bd0417bc8f831b7ec15ca9fadc6d1e4112c0ae8101f7b60f64b7ab84ca05f7d60de4c94d2c8f7007be53dc9855e613a43abfff31d3fb4811324064e63c0bffc53cc9f8e19e69ad5e59707f2a21a92e97289b85143f98f58e3d0bdd5b27673d2b96592204fd3be258d77b7d690b43d11563d20800ddf93247f9a1145a1b7e279b6b4f52d5393059a03ddd423d3915b1ebc4dc2f422bb32d7a14f6a7027c00e1c1c4144a0fc2577cdc7347d6a942dd2fb2b548930303d5ddbf03950980dc832512eebde2592f1692591144faffba4c3f1ac1d27531d4c97c2be8e2f05c7e52e3512d675ea93c1b447d3e15589da492d9062f69e3bbe3b00f8414af32a16d9bbd84e0bb0fe4e44dec121821b2e944dc17ebac4f32eb4c4c642081d621bed79293d549ee882477f27a48e0cf94785f12144edacb19a1bbf306d66be8d7c55b4fffb0b0c9bbc3417977d7f364d633e0684f81c24f1466e33ec25b8b00807ef0f62703e6d507922bf11a01122c4174a7cee649322c764de7dd7ab16c59d4bbd0119c35d4bb0bc86f13ebff98ee4d8ccf8fdce4431ca6437e3154152ad0b7d00fecd1834cf14350cf5b8becbb9dc9b64fb9259505cd9e3c322aedd3d2edcda2c7ad4b92dbdcfa0cb9b54aa1cbe7beee15e16227e8d08398c3f544e996b91715db961c9ab67b7fc88dbeebbbbd1fe6ad80e79ca3bf6af3758d2d3e7f66e19cea1a116f4e3fca000252057e040bf22395e99fc2850c1b3a7ca8b013a34b062bf21312c99fc68d1c3b7afc0832a4c649a10818fc203265c74916f9a15409d39f90968aff26799c699140cc9d3c7b8ae4144a51cb82a03e413c8a74a127522d0998ea0735aad4a954ab4e75541052554c420956b00a966a25830993fe2b555011a6b0561d6568347560414b55c71214c5366f554b5d2bb2326a363043891487f25b24c9a7e294a784087db99863a4964c227b6449f303277f8f4e2d1a9ad8b2e8d191701a2e2a38f5bf4fa068fa80ab373655ac04e956f56170adeca9900c9212acc960a5dd603719cc607554411f5037e9266eb511ee96a85507266c981f810f8f468f3e95d1fba996e1bdfbfb9c3dbb4ef3ec774a927b1ab0f5a49d5a0dadf41cba6cbbfc1c45efab957efdd04650598131959580524d47507e52c1c75c3f95288297ff82546192414b9730d2c97c6675f20a5ad90961537b26f2f40179ed71d2577a169577628c1a71f2418b165dd28a7c1e42849d458e6c62e16ea21814e06c09ea678941aca89689415f05c9df70551957d0538d14e4086c4146050981066dd8e18e4869924a7a1548d29d8c6a7694a24569b227898b2d85b6a689a764981d98621ed563450414b9a5545a4e756541040c1a158180cad6488b3a06d6da72411218a19105ad35644140062a952526ddc8e19e476582a0618a6054e79ae85514639c7212a4c829a9b207d4a78695a289a83c4ed4946d9c76aac8a662398968a305211a1b9e043132df2785f1a39685ca1154a9549912845c3fb6faf7eb54a2d84810ffaeba42c4dab3436db7d9acedad6aa88c91d83ae29bea2ef6c87b2eb262e0b80bf5699022af751b5523761d5a95b18602ca5fb6c499625029615af78a41dc0a9824411347557182bd1dd91cc0d281cb0fae0feb1b51882e2226efbc8b45f2c1078b2c62d2226b4ac26e5a193091b2ca3c35e6228e8feacb6f5aff021cd5b5fd59c570458ef8e003bcc232da62bed69529a98006f353613f8d4c5bd02850f1478054638d826c901f6b182ac90cc5c28a8ba7c2a873dc8a454237dde9cadd53ad2e8aacf6bebc5ae46fd900c3c74fb59dbae8eb6ecaf203ca9e9e54f434710cf253810f19d8f864a1b54505f6a2810a3c949e7d2bf4492be69eab19deaaafae66ffbd849f2635c94117841fd156714524d2206f0e5dc6218fec2123c42ac8df5015c0766dd85f572425d19814ff25233f93ccb69c88b18e7df62b9b965d2a9a004f326b86d56e3b5849c32af8f33e7aaed726518f4b3541cdebc7b5459568696b84d0f3c3feafea0f559dd1fd0344f1331589b487c004768446f01a4a2972244085642252801b5af9306109a6f9e02951a9dfc5a8d20853304d14916314e15aa12f67192471d081c4e2f89101406d0c5a70d9dfc54ac8a9b3b50421115488274ce7a20ae04c81445c9d245e08c058f4f01f9a28554502573ea880ce4fbe229cd7a8620a0711cf20a9009f988263101ceea611902823b2f8c31cfef4c55749aa80ff1673e883dd796f89ffa89e8b8420ab22ea315540d91d17bfd74310892827162c9ffb0cf316adb58883521ccb938264b44b78a26f14a461f934c78fffc1f053caeb47c62814c54688a28105d9d0f464f78a02a2ee6e7b6ce5685cb73708f6b05ce762e105fd6831a8cc105abac1047ce6a79f5df223577deb44011f09b06b55823f15b856857c57384f46d193a4244aecfaf6c3d3b5e47aaeeca64f26e1987b2971894d348c2318394da810884290186545ae38b9af98a245c884ce210b824201aa9076b6db5641def22945c0059a74c14d05fac7a92e19c67b5e549b26da961e45848295deac68471ec184d7b5a414af68680a193148fb89d19069795afdf8ffa74e27314f707a6904bc52b1c42619c4705b12a6fc3c2929df29822eb8bb4b3a357923504c72899f00e9c9d064d1a496a66742a5a31d5df3c674722d6b51991cb7ae56115b8e91700ea32318e7d2adfd49894018ecd7a68a87d06e49a79a0461281d27e8b60326758f1865eb1f3d3aaed285b42215d06a14f3a3a8aa78695354320801461a1b2f49928e0aa9243ffc0a1d4cdeb41f33ac844e37b54b60a6d3935eaac8259aba44020611a97345e052d3e3b3d096737c69255a973a39208e49051306b9623f8c96480b41ef9a1184a8a63855bfe6a1717850814fb4367ba151f891a3a724992740a1cd27cab5b478abab8b4841cc1ec602ba86218028585a3eff06558a40b69d0a7f2e8627aa0a087ad965ec000b18ac849aa479b4f50a716f3b53b080378796d0a8920019c8d566e74c39a3ee9a4e9b9d52486f893fdc2bf35a1bc56b1d976bb095caf91421a8836e097acc72ef60e08bd831266e72b4d3d2d52a6c61286e7613ca35cc67c7394b2066e7541435b08960991e56c0589fa91cf077911b165b49c977ead5a5418806bdc679b8219d30577c3d062e60d60f9d53096891a36809247e09143b16a0800dc34d1bb3079cb80cd98223f8891e9b6a14213664e476a995ab3d592a33fce0862ba2e42537c4134e6e3371a0194da914f6685681260120eb3c77deaa15bc4da18c4d3551318b8666e29ca59a114965206bff6d5a64930a81b8154f44f1a7bc7736489ef5bce73e776b9e2bb45483c052cd436bba1f9b98509eb84c4e270e25037994f44e685466053757549e60842a2dd2d7fd4ef35b8665647d37e752c316c96851d54f92517d143e6755ad58d92916f35be8ecfc68d6fd3085ad5dcc65bceea974d1352c777c9d924868b922d88d602c5ae160be8aa2da9aee2cb6744361b80cda2b8e8017a9153445a2601b29da6e75b72c51c268a32f3ab63a6867111dca2cdfeb15c3ded39787822a7873c4ba7992a5da3af1d07617a499fc462e24ae685358e1e56a1102345f73f8ba532ffc210d2fc895013639c84e2e4002f10a544451894c6fb6111a4f4f2a18adcf471b8f4eff92e64438bbd75e7d65a215c746f6bec95d1585a25442e6c4c48575b309b61e5c40bec4f3cecdf209556ab65bcf2674c1faf2414fc5b92bfe6ab9ed987e6e17b382e3c5245344536760cfa016b4297c052b548ea5af83dd2a78874a4f61d8a29d12a8796b3d0e8463734f7cbefd3aaacc2dd116e788a84e4ed6b7b19fdfcb676ebb16a414e956db73ef08375792fc561d4da1264091ef2766c012ca06fbd0a1c2a0c3bece4b8b22e3e765c3978a647df47c52a51b6de7ef422a3227b6ac262827df1c1ff8d7224f8f85ba53234833515d8f562f33bef2fafbe0fb6914cf07b283ae76d5fcf583c4124b27ffa74f7d48e15873f6700de4140bd25d8ce43b0d34ff77e486419723274fa7091d27184f35148a80780a246fa875666292098e0779362379e0b717048062c7875397426be3877108073d8b1580aa611fdb4634d2e12396771c2f3431db425956448254f172e36711a530788d2618ec961ed3853df6827562f2099ad00aba36603e507fb38609b6c242f89728585234e0423000d3760d335431a81a5fc54fb683095ec22dc5b316623776bbe42b6cf88305137baf7210ada00963681d28277f04b108bd26378ff001b2c7384688149f400a21e824a3600ac5377990b01615471528386845928616d182c4010936d24564e8213de715afa71fa6f0296b5177f3d3251343201526647318161854098468101db62399e0ff5be7b27eb3d27e79d2811e225366c2888e0876a22417cce13b80b235c2c139863215aca61d99b81bfca7739ea81a71f7444ac7293e5021724828cde170459316aea81718340a42b82cba8284a6f26ea9024ee9212ebaf28b43e108a25085c6d722dcc2835a134716a11b57a35e02a37d66e36f00488de8e758fcb07674474556a14688b24b53810948e7088e300a96208a51b409195470e9418ba2c28733260435c61e91503316f17e5a67871590011b7491e9d408fea63cbe2342bbd33c0c2250e9b4899ea58705b92311c3572d491c18826c8b527734753efc1030fb832df5682198000996638e2dd191e3120b5258112169224c183a01849276a8349540ff8fc208309d553995227b2df21cb69290d96811a4707e3c191899703a8a808d09e56f8e5024f5832cf5d31c65667a6ad54ea3e06f5ec90f53a92fb7971d19907b8a2109b2273a7d138f84f9444b63094c292056a54536f78c57d33c470994b1118606914f70392e9d20857fe95a9da53c9c591595777903c62919e9031b29992b9701b66298e1f33743b1088b19138d996004d99504416b1a298b3e467723c89a566180be3239cf411b9d964c3672095d469aba223c7e6299bb418a60b57fb931890681175eb2536bb1094df34f51410049174cb54910044099c24220b97972260366be1912c06918a4609da3138f20149883991e34a51f4c471b59f3492c65ff34a4b69cb496019f99172fd9966f799dd691090e269d586682ea999e53117a02b54bc7139e37596e699174c21873e6340a61d91605419fa3a3097dd89b30a19f4371928cf59f6ce19450e92204ca9dd0d349a316165a3815cf394dce388b151a419d708befb99dbba11bbe733f82d622ccb1385105098ca494c3a76c29ea152b098989e5a27a5695d931a32051a3d441816a93a3bbb109ccd6123e9a1798300a6ca51b94c2162818307db19641229415510a3ba9a47d130bda94a1d3f4428a50094cf3425f81490d4815b85497463614a3f099f3896da4929814750ab2c7951ed6a6b101094a59358c022420d34c5a82a7435a7945fa8ce503a7a249a183eaff8452f827c8b58f110524bb242c9b307c557194a4d4725e8a2d93ea6a2ffa5656591042d01d24e96226876abf6867d1d15f3d0a9aa230105f513c04c06654a12c0a03167a2a45d0081d9708a88648ab24f30ada849a7f97ab2d51019b323962032b9560522b476b756a746c41ac861290ad778e6fa7a917386ffcf0980b27ad731a7803aaa3d85a11661746563139fb45a49bc57ffcd00ab39aaee82885dfb75959d622046041c9271598c3a13e15152cd682bb546695d05a0c82aca0aaaca7a1b11194b0606109026a28395baa1eaaaf2d81176a49672e4b6bb59517e26a3b90404aa580ae1b3b3aebea237ec6294e19a6de726496073d4f326852cb1b06a1ff4386916c123ba63138b0e9f1a902cb8517829eea611bab1a303fdb1496da0f5c836174fa2952022f9e039052d415b77a415a96b14ebb709fd0a40471a88f6810e87435b6513f2ca78957fbb517483e0818b06478a186f117d478b35c52b03beb693d0b15e3f33475d74037094d54e5290421afac175ee0920a4d2bb8dae560def683b6f285257a2c50514d8eab170f1930a99b1e8e3062634b8d9a703a3c5490372b4ab2784eae4653f3465342785829d52f13798fc8d59d9e15b3b1eb5ef501af4fba254613af50a12c52327037d7bb573b15d51a513eb016300b9712411097209cd427adb55666fdd13f6e8b3194b36f5c534ff8653fe8f49a4341ae02b2ff098399b9dc1b834bd1120f0a7e9d950146c34114f6423f0784ea0b843a9b83c4cb936956b37a16992e32b98205ba5aa325bb747f86457c532284e3164a4ac9b40c5c90c61ba762994305db4942cb7478228abe0b16cf93bf1e4cc33b37c217f8af5771c291ea73de8aaffaf5aef203be111ac5f3bbbd458c6df25b419317abe056774f1342b201c443bab61c89c5a377c47c45aefccb904f7c382a98b28beaa165c4b50a127d1671b6671c8388d82bc3c8be709c3c1632c679610a1c8cb17abc7065ca5ac4c1c6c0eab54c4c2dfd1091013579c04b6fb08bc808db7507388c4fa98d51011f8786c35ca2c1a0d9620e04ad992c40cfa572de35cab115c979f1ff8dcbf89e4874c035e55fefa8cad719a32d8197ae5877ffd4c2bb31c8bbc1b30b4578bb7c98f8961d44ab208d5c15df9ac1a682c100e386d1a3cc833a3bfafb834a5b76625ccae55ac62d910a8c20a8d91c97cc0cb63f36294b4c15be832cd5f4ab2e3798078bced7e9bdbe3cc541c262a48461e05c109c626eb8f440fd79cffbb25d90a708ddca29d00c42891b9e8632823829a0797cd0a4293efa3c876ffa4bc41cce16d2c3a8c50a1378d1ffe009af30b3f56aacfae1d0aea659b4a5a8751c24d76c6a6b5ad2d498d1eb03ccd87ac0c5fc394d9760b597c94fc85d33c69ee5d3d2560b2b61376b7f8c67367dd31f7c90ef79cbe2e8d3bf12d22e920aa040ffd2dc7bd2c0e736473d4d493d5b100d7e96fcd4518dc539bd90e228aa1f5d83032d2797c00a8c900921ac679f100b8c90d286c588fde6ce55011f55bd259da7a66a8dc86cdd2f49ecd6a41cd0b3769e51f925a4c0089a80c94bfa8151a8889127d38142d69d22d69a46a7bb63d1884dc38a6da2103a6b57bd74a600b7af520aa4d00a8c100b9900d5d6f10999a0098c000a89489815f0d724f8d93f586bf161dae88cdaffb4cf51c4daa26d09e5e89e064b0aa450d78c60dd9980ddd9adddda6dddd63ddd7d1dbcc1288ec35dc9026a4ac77dd1db4c3984bd59cdddc996739cd12ddf390196cb3d96810d7ecbeb406983de259d7e50d5d89405d7e248463e50ff09863cdf92e908f51de0261ccbe258dc0e54bffd7dcf86771ff65d5303dee092fc948229d9096e314b438faa1dc1f8ad69c7bc43974de1ca6c8bdd35cc24e8de1b0e84909041063e91b4194437bea83e5099182edc26fe53a77cd82b4ee4ab2175fd62af30aee132cee44c4ede4483e243c8df455ee41f693c2fae6931dee45beed64f3eb542de96064de545dee292ebe379a1e55caee63ffee02e19e59e55da633ee645257fde45e21efdd86baee701eee508bcb015e156722ee86392d219b0d233bde47baee880dde660a8681ac278832ee947a157a692e4499be88baee9630de491f5e6800e60932eea4961813931d18192e69baeeaddd2e76c616e2577ffcea32eeb0f91667d18b6a89ee9abaeeb9edde97981bfd9a163b32eec4c52d4bb86e5ed99e7bbaeecd8d7eb56d1cfdd93ccc32eeda9f150e911da8f9becd374e7bbded90dddec82f6da43d80ab13eede57e88974613d79ebed91e45d04291dbbee6d251097251e28dce16cf8e6e626eeefb9e140d66d4874ea9c4895cb963791bd4ed5b4e62672ea6f63e25e16e9213ceef11dfef472e7cc73ecd02bf59044f76eccee501ca0fc0446272cae90ccf250eef17a12ef129bf23099d1e5c6a15a91e241adf2252713914a915f4a8f0af5846905036af931f3a3879d02cd75887d72a6ff40ec1f23ee620306f21f01120d0141575670a831c9106ae8d075fa40df4ffcb9fab8c5b5811415faa599d1da410ed476ff6ba92f4ddc5d04cffcc47d259e0f89e021ef752a4650470a7e0a208f30c4242582d279549270b206047291c7d2f287ff6874f95606dd47c895c8115cc48a9bb4d7c2d572584ba612691d308519935fcd73c58d2c4e486e0ff55f4884ffa13df875fdff809c27fde38710c026a601b156ef334c563e8a3fab050713eb662f9043143e00a6408fe62a52ffc0c86ee43f1fb09f229cab23c86bbfc81061fa927c9fd9535e299a5604ea275575e521af09b57b404a139ff3c6b3afb402a3efce5ef214f58b81ccfecbc7f3e1903157d71a755a3f154a1c109176814e6c4b9ab393f0ba200c14f60bf0a02f96dea97ff50e142860d1d3e64e8c8a04152af3efdc39851e3468e1d3d7e041952e44892254d9e449952e54a962d5d628c05aad4447e106dde7ce8c320a44a02334032d8cf92c10c0a250a349570622588131b12304820e1517ea31a023598b49f414743058ac2eaa85fcfaf38cd9e9d4a5153a7976dddbe851b57ee5cba75476a728a566f439d48b362ad9961a7c28990d27235dc702226865e05229c68c9a122833e1216e447a011e5cc618512dd1bba215546764d9f469d5af56ad61833e515bdb72f3fb2520137325861e1e284a668f2738470f7e085980a6f251ed120d37e54fbcd26cb7453d4d8d549b7c69e5dfb76eea75f07adae7736547e96013b969c703af8ff84b3230f1798183e3fc313b52a1728b6df28839b36d3b4ac1fcef8612cbcbdaeeb2e41051764b0c1ef0632f02cf704620c30c1f8516421c0325cc89401b3222cb910e313b03287a82aeab9c1c832b13983d28bf02c041ba4b1461b6f7cebc19a62c449149af403acc5841cd36fa1462c214f20a99412b11fe306a3aac885302baf37139f240e3a1e6534a8341cbf04334c3135d271cb9b82e4273d34f96964a1d9a4349245fa98247121c70854d1a00215c2edc58400b36aace3fa016c49336d9a714c45176534bb320f7d28480e09a5893985f813284087faac7350a3a87372a2141572afcd7e38d50f4b3c4fcd0d5244bb6c345659679deb515719da84caff40299d48b84f334da8914af60c95384f3f13922ada4cf57139f80c754e214be4bbf5445869c5365b6d4bb2b55a8620b164cf20e17411292bf9c9c00748444972d24131915311539dfc10b80fe59d92bd4dc0f216ad44b70538606dbbedf7a14644a9442218479c53d0df844cb20247eae5e7be211f3648115fd3aa60d482f5fa576091475694e08ff7e2ad448ca554f637452c5668932427728458f54e8e2d649277e699469371d60b12f9301965e6cc343dcce5616d326514471c497763a00dd4b967abaf7614b6a9636c4468486c1ed287a79ff641ddadcf4eda4bacd7667bb59fd1863bee7eab6ebb6ebbdbd2d18779e5e6bbef2d91bcf66ec1076f4947ff812a91da6fc517bfa9111f8c569b70c9271fc970ae16663cf3cc79c23872ca3f073da34e18b904634546015b73d5b73e92cadf40b92874d967d724158c81c37c75ddfbdda4128a05ba8491d867275ef64c40b9fdf4c477673ec2835da729154d8aa7bef84f189909e30a44d9bb79eff732e5428c41f1a47af3a98f8595dbd185f97bf71dda6494df052ae515b6cec7df7aec93afa4fdf7bdc7c4e3d6078a4ce4cf80e64bdffa1481b8ff350f13a2805ef4ec77400a9aaf13afb01dfffcd740b93d308213b9442bca5741129ecf13adc89ee9fad73d0e4e2d7e467b5d2c4a3843031eaf74ebcb802852d7425735c214be5b1f3f58b1161a16f18031b9e1ed08ff300a53b0908711da840f3e489321decf88573c222892783b4798ed89d5d95706e637912a62d18c25cc040a83981f2f7ef126611ca3412e51c633d671869e780529d628900a8cc212cbe3a00fc5b6477e94a21532b463228dd88998a4708d8ef0232057870948f8200330bc1d2b2ca2484e9e118facd8e21a3be6035348126d941485d30849114614b093af4ce42743b947024092945ffb58d72a29b629069114ad84653061f9094db42283abfccdd3d2553653784d6810d9843377e98384390293ab2c85265d294c6e723313af00c53191394e72629315adb46237d5b9ce7f7842138c208523cb394f425e8214ad784526d2c94e7ef613239ec804235a410a3571d2939ca520052818118b6dfad3a10ffd482632f14e4680821417a5672a2efa4b46e4539f100569485f225192967478225d5b4000003b);
INSERT INTO `images` (`id`, `image`) VALUES
(3, 0x474946383961f1010e02f7ff003465b37387893252a7e82c2bdeb116443a74d56f4ca07b4399c675bac87973ae93efb219d9ca4936b9d70c76510157a852668e4c568e848459e14537006ab5cdac19c1b06d64748b489556afa11eb5a03388bc6f9bb984359c9830864c7f9326168a7ae2a9200072bc4fb5c70196daed1c24327396cc8a5b9bc788007ac3c6a72a4595a2bea32ec7d16530439e48aebb0083cb812a61184b6843a8af73c5a6db563f5b94940e5953288f8062c7ea1e45721a449c8ba48655bbd2819225a5c38387c5972189759e9d21f6b915008cd32d9aba0061af363b9058a9d9d1ab2523747a9fa06b6f8d281c646d1451603ba2a3aad285adcd824b99c27e986883b88f2da7c4b1bc65e3b21e2caab9436ab600a1e34ab9bd0fa5db288eb32f86a9d91e2f829a87094ea220507693ae85d9ae22395d992979a35bb5ac2d4896b35e59d627333f789c908066bdd5755eada293cd93a596522f58972846869fcf8b429da87ea674358d9aaba02368bda85bbbb1253a97223d985ea19a7f8b5e265a81389cb2009ce02e319240c8f4293695114aa01e609e169bcd0f72b22737961f409aedb614bea71cfede89146d36bfa71b106f37437d2f407e305f882b30793269cef6a09c2062872afdc021247234ffeec4fee6a7337731207435fffbf1fff3d3fff7e2fed56b8e9823718c27909723fecd4dfdc43052822c4f832d36327bfdc93fc8972e93724afed15cfed97a5e4d66fee2983cabe1feeab63ba2db50446d398fcf2b348c3db5e77860583ebeedd5a0271b8369ad843c3a98d530b0c5ba8e35377cc33573bc8569513885c9253b811081686b565f223f7c2f3a9803663f0670450c703e11545b3cc2e80761472838872099975ba15d5cc1de2e958caad17c3f458f72ae661c938b107b5c17774228a4ae66a761227e47249ea27db56ac79d63919827ebc32d4883be392f8b8b9626b6264561bae9145f5f4babc0c0a7223b398a38a7bc979928e2c63b0d6950167eb5bf7c5d2298c10b7ebd5ebde41e6da2dcaf1fd2ad5322afd4584d800b92cfb1c475292983b6d881fdbc12056839016a3affffff21f904010000ff002c00000000f1010e020008ff00ff091c48b0a0c18308132a5cc8b021424f8c224a9c48b1a2c58b18336adcc8b1a3c78f20438a1c49b2a4c991b11caa5cc9b2a5cb973063ca6ce8e912bf9b3873eadcc9b3a7cf9f40830a1d4ab4a8d1a348932a5dca54a9a69950a34a9d4ab5eac19a4db36addcab5abd7af60c30e7d6ab5acd9b368a76215cbb6addbb770e3ca259bb6aeddbb78d7caddcbb7afdfbf71e9e21d4cb8304cbd3817295eccb8b1e3c790234b9e4cb9b2e5cb98336bdeccb9b3e7cf9815ed146cb8b4e9d30211df94e4afb5ebd7b063cb9e4dbbb6eddbb873ebdecdbbb7efdfc0830bdf3d49b44ed2a8932b3fab9a1febe1d0a34b9f4ebdbaf5ebd867171fbdbcbb77b536753effcf4ebebcf9f3e8d393df7efcbbfbf72c9b8f574fbfbefdfbf8b3b3cf891cbefffff2e527e080041668a06bfbe1d4df7f0c7617e081104628e184d12578d3820d6658da831476e8e18720b666213f186a68a25d1c86a8e28a2cde37628927c668558a2dd668e38dd5bd28e38e68d188e38f4006a99b8e3c1609de4ef309a9e4924c8a681c7f464629938f4d5669658d444aa9a54a545ee9e5971e66b9e5980f8597539260a6a966846292e9e63f5daea962068fc869639b6f6a19a79d1f72c2cf077c62f9a482798eb967a0074e02db07fca880688b78162ae3a18f16f8410575b646003f2c9c822001958639e88592164969a8037e70053a22f2338406df38ffa908aa1d465a2a83a7d29adf078ac0ea0f13fcf4ca2a278a2842066c8f70a26b81b6defa5eaecba227c97c8caac0021319f0b380062a4c52013f49b0e0da23bca219ad7dcd3aeba09938997bee7da12882ce7391f0430fb79bbecac2b7afded11aaf8a5c91e9bbf9a5ab2e6ad0125cde248db270c724f5beaac14d120fc10f19b07aebaa0aeb283ca0c1071b96b0c7e45530840a1a24c168a31a58dcab068a48fcedc62cb84b727a20879c17bbabdd4ca024aeb2a0010b165f31b1b61a687085d149508c32ab3e173c2a893a273772d4b63111c96f9bbeccc2028de29434192c347d13ca35ff962cd6d0e55cb55957b34d5b718ad6b6756ca7dcf432cc16dfff94741257e09444d219c83689b2b65550b7dcc1b9fd365571333e9b2298d6f62d3d778c734aa68bdc6474d24ffe2d78d22a6cd25a241f6430f3ddb40931abe4c239fe385491c31e9b10fc54ae9dab83979d81e638ddab011962737bd3e043df2149b63891a1c238b6e12e84edb14f0de3ec51d54efd6b79e73e706c40f39e34b7811f3f7cf12af0f339cc3a5d2174acb5e1ce8fa7db03273bf62d695fbf6b9b7adf3a4e4340ded09260b12410cf6fe41b1a19fae639a1b1001ddfbbdd4d40b53ffb590f7f33e299732a389c95f96f361e14dff816183a6ea58c81ea13dad0be1141d8c8ef4f1cb42077302815fdc5f0114fd29d6cc2871345a02c692c28a10aff06e5bef1b1607af1eb610b6338a40bd27026366422b070a2c3d84ca27f3dfce101f9413a9c14717c49b0993f1ef14218325186ed79e2613428c633ea666637511c6d1ec1bc9cf8d06c5c4c590ac737c0c5c9e61170e40705ddf89bfba931356c24e4701866473fc6860953cb09e95468443ad5e68a3a619d227b63c82746519121ecd9dc02a9133ef2510580aacd294695ca4d16d2898764c82737d9399d84c236a748dd077699ba46f1f203e3f0011396f89a50f26311aeacde0c639990596e12903b59043167c3090220733774dc0901a699ccdc74f26dce74e58814a1c9ea44028b3d7464377df3cd90853399233263758c192c75ae939db064269c1279ff4fe9c47311888b0e2748a9377bf69393f93ce43bef194f45b4513790e489220c7a50842e538d0bede7407b6249e070a2963ba940402bbac884e22fa307cda64499f01b7adea4a324ad90491f875292baf4981495cd397dd2ca98fa73a63aab694c2311c99b7c809bade1441db5594e9fcaf4a25513aa4f552a519b3d22143f0905529d8a462881939f5ccdce2a7d52817292aba8826c2aba46babf76f248aa81f2d656cf43c69f2ca26e9240eb9fe66a9e4710008931746b8ce01aa8ce0176409120684e8480ce68b2153fd0e4474e6127580d11964f3cbca581226a1402a8f53e913da61b2b8b2bb09e1187673ad04789a2889e12a88cfcf8ecf6480b9f4fff98f68c58d509fd0c3456a0001442b015ed68a7969242954227ae65a29f6e1282741aa8ae41f9ad8172abad03e044b6dbab974e3e21a94ce864906e0469016ed1c3c7da87b34339eacf70b28059a0026c8224246c19712b52888790dde3c72af4a10febc691afd8d1d8513c2b201eb697bfe415650c978b934b74e2569ff8ae1bfd7a9305a082bffad80515414bdda468d54539b90586f5d1dcf83211b6d7d3122874c252267a50c41846452e707258f34c42514be5495973ac4df32eec4930c6708237c84106dfa414078bb01d011c352c5e78c432c68966cf73132168b727adec2d4feefa2dec52673fc11831864bac0826930ca4a43a182390cbc42bfb42ffccfa98057c896c1ee308a1c354742455ed48d49b78593aa1dd059cf9eb5f7eb4b87e57be492a74d609769599897574059ce57c5d1bbff0526c9e8d966f825e33ab0d8e821eb42b70b2cd0ae63813555b736a6f689c100c7ac81315eba6a67893fccab1368f006928402a840c2ce2cfc281a32a06ad8ff7e264b25833323f48f1b646e704bc15a4f57ee10c6b4fe366b571a4ae1080955cda40b2ac3da4f587adf3c25c3c19ceaac0c9a1eb075b54bf4dd5ed3ae3cc165080416bf8bfd4c9ab2de1b8b6dd7062127544af2091dd9b729f5bccc1c049e12aa8ec453f4ec9a43ea39b897d6fe14627b8b55edd6fdaa5d887ee86d6071ef42c486d6d82a1187b2bff5e750c5f588c4147b9cad0d9b34ea42904e9f646110438059e171b1d03cf82d8a828716c39f8089d20197b10bfc93559cddc83c758e8ddc6a6620bfa539fd4d8373ce4c7cf89ed0b9c441d76a14c71a9525e6926f270da939eb3c763c32826d03aa43eeeea4eb4ba4b7ce224c8704eb8d2998e93a39f542757df9f78893df2b2ef6665bbe6094ca7135add7e6be94dbc3bb1e3acc418669d1ff4a5a17d731277db31921fc32636ac09ee9a537c5ee08a587775ae3af7994d3937c4c209dae11c74c357109d0e7e622c6ce946eab69cd87a17e45cebfa815ab636319d97ce29b05881179e13d86304f5e4f5d175a3b65927ad38e4712bcf44d4f223044e1f71ffc5abf84738ea9b1fbdfe757ac8152c1e16dffab609f4f4870c79536ff7909ab8ef19797880e9579f1f0b471b214400b4967cd8c109cb174721b45bb35147e6367994162c25a730cac60ab1e46c1b165e38b1752e376330471b68867ef2a37a38a337f915474974130f08741e383fb8a513ee7648647713a427370c167a40277424e81a21383f90b483e701349ed558fcf03f4d377d15f77a1c34287e774849877e84f462d3178174b628336780e5f1089bb369b9331b3e377f19687669c44c9ba73713e83114a62de137628547837f243fad052102566b3bc45e1c2872f0a50858c83868967bfa947f2ac744f9d57f604875da31218f2009bb644f27286993fff7722e7846ca060afa3410ec52018a04528e3879ab40724bb21f78376885a6841c84679e508902d10a3a518336681cb9307dfc357e67982840068bc510866734280e878a4f488a6af2016bd752381166b0986e1ff82369c80fa136790590877bc838274835a8281065182c81a25dadf58cbcd13f16068b9018782b227fb0d882c1c8384be587d3088838c1806a424a56561d20458cd3676c0a261dd8e001f8988fd8115a6f068b85068efb5374394189d3281018f85276f276395101e5183d38f18ab0a80fc5306791e81bcae001d0500d1b8000fbd0911ef9911db9011b000d18e001d0514677486c73068431b73cfca08d42a29031589033c80fb3b822b1fff77dffd7431f0093e08313e0e78d3b997abd810d18500d1c09924ab99420b901da6092beb1670b108a696788d2c1094c80665f772581d48405e95d81f82591a60f057000145965d0171b57167210287400c8644699944c399774e991dd8001cad01b3b8513cb287a9e381c58a958afb326ca967d054910db87826972657d890ab7e09671d490fbf17b93770b73a608ec581bca80017259979ee999d50095ba015d2ab886185668f5c71b93c00453176f6b124adc759803a18a9c072669d88d70e60a3ba937ea751ba1258fc45668c7b487d8500dd3f099c8999c088001bca16521909262668cfce08bb63109a1408437e10bb750002586896b824ebb289b70ffc26260e241c00967657996e8375920d597b45771f2641bc5999cf4499fd3000d79e94d70c496b427746b679dd8c90fda796e43c68a38f27937f10ae289980bf925371891c5f698d1e42ee5368f2de850b8319ff5b90f1710081eeaa111b0a14b390dcc991bb9668710386739750a8cc5130b30a0b4075f00c92478169b0bfa0ff076133eb92220059dd3a79bdad49badc1432bd881ce751bd0709c221a011ffaa122ca9408209ab7f142fc2966d58637aee3a2bb4099c18913370922e079a303f1842c0924fc07a1e869963b21048ab2963eca5f902852b7e1019db9a11c3006789aa74f3a97dd909f538aa2c4d6898a998859ba130bb0a5685a005e072608ff2a8d62fa0fa9d0a055e27d5a87a62e27a133f7249b487b2d487eb1a10cdab0a7a2baa1d320a529a88693f77f19c063cc75009b8aa6d5076d5582670ff6a8fff00a3ab1a31ff2760b307b963a6240ca1354297e548454db50a7a34a9f517001d43006f4a90d7e7aaa452a6690b8132170006f0aa1a3568f551248cc66abe319964a227021f0aabfca5fe99913ee2966b2681b18a0a4c92aa201f0a110f003ca890db85147eb8a6154a882ab90adbf5a62a9b924caa6a0e0fa0f89098057429ad9596fe74aad128a83af565eb6510df509061190b11aabb1ce2aa263400d1e7a0401909ca5ea9b7034acfc758bfc900bc1e0b00f2b6a2d68a02ba290366aabb4ffe9a55e925839d1ab2f9b9ba6497956291bcad00d17dba4467b01a2baac1f1a011dfb99255a1b39496f93e70a2edbb3d42a9c55c82481149eb6ea09ba0526e46aae56db9fae391bca80ac75090646dba4111005c9fab11f0a06c9f9b4b4915f1039b6685a0c6e796b93aa13067bb0ffc02e33aa240c2ba0558bb723f67fd4d91a67ab945180a74c39066bfba14760aff1aab48160b9c8590db7415de789b8b437945b192497778a80fb0f33389860a2b3ece5ab88abb21627b41cd9020cc0006dd0911d1aa24ac9014730b91edab49fc9039e3906485b9f9c8b6bdc78b8a02b641469735752465e09aebb9713328b2361bbbcf4a887b4d1b8fbc00037d102fbffc0031eca014b1900010001196bb4239b9c1d4a0d721baf2049b73a8513fdb8bc185600d2192c65ba24836298a7db0999b62685eb0bcafbb08556a672e9bdfcd00251d0bbc5fb993f00b9c9a9b61feabef0fb91f22b413721b6631b0c14b9785ed2a8c575baff508d03bbba81c4b356bbadb11b1b16eb910adc02101008d4e0b6170c92e2bbb64c7bc3fb60aab09193128bb7b3d082c192995e124a243c10b89a135f5a2302970b1c1c91d219771800920abc04817004e4cbc31ec9bbbe1b083b4c9f9aab94d380af02881351fcab822a654dac22816481491caeebf82885bb0b3f4b6cb0fb751ea09431ccc520d9c05fbcb45bfc99d4b0be4b8900d18a2cc6ff11c40feb0a6e496076229038f1b749cc2e8bab26ac5b619f3b7d64464cca00af30fcbd7e0c9263c0a4819cb9c899c31060c34aa90db5e141693c8f582ba472128da61bc733e89da1c22b3901c5103a643643b47c2ccaa30c921cd0a1be6bc89e99c3603cc820e9c3e3621cf5fbab7abb90d52b241d16bda7ab8e37d1c638a2543a61c7c53841b451c54bd9c7c5ac943f80cc4d7a04acfc995e9cc5c24bc6895c4c3851c08f3894fb0b2681449071fc0f4fd890398b4e0bb0c9fcc5c2eef2c94c89ce1fb9ce117001013006ef7cb901d0bb1efabef4c901a61c08caec91c72b1b0ce6ba93e7c139e1bc8122c969f6cf089b13971c28bccc5c93776f8f261bc2ff7ccec4fc91ecbcb41730cff01b0501400dbabba151b0d1abac94d0dc1acce36a1189bf7624d055128d358bcb921a2dd5949dc4a6a837419d7b3c970ced91203bb96dcbc5635c9f5130c3bfab940850b7680c8babf0c1de8c23d9acd203c1cd36f92efd23d2fa107c3eb6014c19053fd0d5fbc0015feccce95c9f1d7a044c99c1ae611cfbca5f43fc6c46fc28fd2cd702f184914dc76b3d68251680b061cea47c0147c003809dd34dfac0852da21760da1f390df5dc1ab9b5009cc8d26f8d8c6328d7093bba7c925f6bd886ee82acc88cd880fdd56b3bd67549d8971b013cfdc71d6901090092d0b03b37f1a6b09b966b9268fc70cb72cd0a257d2e2ba3d470ffe65f33ddd94bf9d548dbd5823db9aa5d97926bc1178ccc17c0ca09600127500335500225e00d20390db4611c84889eb6a72b21740994adc43a712eb534cd23e681e0c8d7c6fca1e4dbd5a4fda1c95d975120dc853cd11edba4d4f00e353000f6fde1f66d014aa9d8fe203f770b67f085db7c8266703ce060796cd1621c9b8cd559db1a5b0d92f34ac31dd9d5c2ade1f419e1477001c49d9c156eb4e400e2487ec85e8813a6597d9cad2b83927903fe0fe4a92b0c26b643b6442f0c92a6bcbe5d8da7e68bbe0e9c9ce7edbb1700bcc999e31f2a0e315002e4900606e0e1f63d014c09cd0cc6a52326a8b21a2a8d3a93945d8d835bcb3841718a091bcab0943ffff0a1960bd8a3bad15f8ce69e99e8be2b0e8170e41f6e004cf9d1b071d7c4c6c2b38d239757ab537eb35d08e02a486c25d66d9efd91391ed48cbea76afec51020af5fdce62520e7983ea2ad2d3f8c0ca7ff1d2a1dc6b5944dd7cb524bfb4ae36a55d31f69ca18fdea22fa0316fdc535fca46310ed1f5a00f63d000610e273a9d8b43679a91e2d68e6cf53eeb53941dd5e22e38306bb428be8810001c9edec1b6ad6810ce9caeae8e2f005f6ed0ddb5e02f9c0a7f37b13f85c7d278c287e3be50451e5a172e58326a8bafc1aabee917e3dcc0bdcd33ffdc51dfda4ec6ce935b00f1370eb74a9dfb28113788e617aa7ba0b0f83083f10d5d8d26a925fc4668c81ffb7e59e29ef4fca03f4beb417cc034760eb13d0dcfb6001224e97d03c3378cdc2bada24d128ea083f83057f239110f5523ff5bf54f5b574e22316eeb101ca7569f37bbace165db937bc04d93ef4c8f9dcb161ec9337c7b41242da4cd94bac372bb26b8a01168dfdebdb409f5e3faa188bd1f1da06727e02f5b901b2b132bdce5f1eb8085a73cd4ab2542dbef22faea32ad2835db1c9481f1b11dff5377ddaf05bdf25d0f11b2a1b53e4dd70069f25bd08bb14f59f2e21e824e52b0fc0e73ef94c910baa50fbb66ffb07b00a05ccc2b211aac9b9f79cff91656ddc1d7902730ef4f5b90d6a39e87e491415b008a1008c9190f414a21323bcf2819b132a5e20b5ffa40ab7e00ae01ffee17fc72fabe7b2c1e0c8d9c7284005543006ed8fa7437edac89cf11650f64f9ac157669a05b00abe0010aa16f02358d0e0c183041665f8c024d2247f11254ea458d1e2458c19354e9c74d0d33f9021458e2459d2e449942955ae64d992252983a136cea45933e32282abf4ede4d9d3e74fa0417bae22b8c8e2b47d49952e65ba8f01c116fb8c3c781086d08e3d880234e5dad5ebd7a463028d0d14e187d236034a943801f62bb48a8f0aba12eab380ab5bab76a9ca85d0af5f458b24d9245cb8e6a9832e152f66dcd8f16390ad0c1a355cd9b2449cfc74d6e5dcf9e7aea21595b9e5b1f429bfa8148c4cb58ab5b45bd8b19352233bf6c8ffeb1a6b6bc8e6bac1e25ccf4251b92ab66a952a557f117eb8dcdcf20783a9204fa75edd3a4a46061539e75e33f3e6e0e18526e7c79ca287af502040300d158a08d5acaf8ee15dbf6b80dab52fbc5b3b2001ec005e63cab78a80132f38575c0966155f043ac8bcee22d428038348b9ee420c33542c938324f4d0a2ef0e14d127f2209408bdae38288410f6943aad052044806fb5aa0889022c284ce0e32cfb9ae220bfda0a58ab040b60132b1030b8b28800828219f1c959fa2aef432a29ca8c204634d4724b2efff1e4a048aaa432c427472cb12268baa2823513da430d881452989135b7f8a8718d247b542a0220c712e78bb5d2888dcf408eb8912910732affd34c824c14d3c3835ee972524aa903f3510fc95c54bc33294a932b3e547ba04d17a102028638e79cc7ad43a67ae02a342ee0b13efcfa0c849cb5c8e1c0c8dab642b4224d370dae534c213528934a9355d6a5520c72b4d8cb8215b6b3824e41b32b376634c3cd16ce2002553955dbf62b2a2810f555ac10318b2b0b6a28b229dafa8c61ad2f04042bdeb122686a1b60159d76d846a1953092833e59f660844b82a9209904764eda7f852a284c4fbb8213be71937af10c12be4515be15c0fa434651c30823dd3c974a40ad126af86fa928080d12d012d8880d0c209bf2a05fcd22f68c58879b23d8a0848b2e1a94c9826e2e3355567105159f252688e2893e6dffea5439bde0760b403a0657043ed2830106925dbdaa0cae721bb2e59795aad54f9a058ded6db20e556a672bfd8d7abc80956e0eba824a317af065b32b8832bf0dbbb2a00554392098a7f7d667e26bb99ae3db14b42e15b52d7aa9a28a2242ef828aaff0f0b86caa08a18f296ffa535bb7b6f7e1e188b1702d618239789379acd5efe6193cc97f023af1c20027c842c2939f54930e892f6cf1bf4268fa16baa6a5bce2aebcee82db1eabf09aec191f58a3a995d72ad21b964b18c080b67fa066de12d49835b62868af9b29bc278238f89d8677de3b8380427903dc12870cf23fc24c42121f58049394639010f86215c598c593a4f42cab35a56b33c8dde6a262ff1f2e68e17be132020a9a3281b51860292748dffada90140bd0ec5df5c1195974f63bfe01c57f08dcc8e2b24440205ee84b0681080f0bf388483021148b50c4030d920b09baa200009b12f6b8b2853734e5453d7a833d44883939858c292758cb04b882be210de0040940215bf4b40f42e98b29cac0a1e466a1200639a820cf3262469a581049055190d5b9541f2f83c40f08017a0f54c52e9c06351df6ad6af5d9a29e68c0051290606cf180025312d09f197af21d2dd4cd1bf771245f2de537042986b012641ce438519286d4c8419035485c3ee620d6a265773811890f64a002b2244850c8d3b089a04836957ce319b8f02d379c702d6df94a020cd0c2d8fff5280247985f5256c98fea796638c539005f88f997c1f4b296c7ca653b19930a67a9934a933845301d889070f6e400a1390f25a162caa440e10cf8e8a0520c5046a6f0e0025cb1a6f900ba0f30a44c2908888b81809297bd84e09c08090c431c5244796664680531983b4dfa927886f451915820139b0414a2f0037112c1863f51f3d0ae58a03fb1e3001ad46537957903a75d21d044460ac99fb862a3045188103e2089487042a5851929414e7a55952c8c20c89ceaa332b38b8b16c42236fde05095c2c6692e050a2b4ac44f1f7a016ac8461b15414c3183120ce5546011a1f8c02922f188ae3aa7aafcc06a614d2299c3051653800b0150944a10c05204ff01bc61a659f771d09631c50c356aebbade7881b1a4122c18a808e0722114d0f043111ff84024a8a65809198f1fd2316c6d4362387ec2964a75e5075279828aeb4da41b94fda765f7a153f5c56e052523445b8fb0ab1ed5b05040f54afe2442217ef8422817d4ad98648b3cdbd616b732ed2e95e442907cf26420fc6042e56253491bd8200001e85d8fca5702a12a050f24e4ac1e9e6b1fe98e65a16ea1234586d9b3a054abbc54fa6e786dfb0aed2cf8430e041e4fc823848a28d32d1ca8e4549a2b5afba84d854a0102e6c2f7aa44f8d75e6e39527ebad9148a16889541792c3fa42a610909c120ac70706d0d28561c4748c7fc50054c993a56b7a0a00c11ffa8a417580362deb42eb94bc1a48999bb8301c78603f6cb8f1cbd528d8a8c748a40c1ab6a832c211ff6d8b03f26c899bbc304822c0028c528486427b201b028c008cdad64a8a662034fc6e6bea1dcc71baafcb1734974c35c06527d9b425a8a004ece4149ed4cdd1c2d83fc50cd5765333f2e2dd88254d027c025082f278201b0b8830255814371a93023409f75006a5cc31a56bc14117385065f44f42148c79b0003e9d64b29b0fe08a2dda070f7d34bcbf4a6b1dae96537a720b7008a94304c916d80850a2958751f8a3b07b251206c4a696309be100334c46ac564bc9d5776edb51474c184f6c1577e14cd941853a4204e4a70a9a38de98268dad9ee1c62ff4140fa6fc264e60040d9273f086091c97ea508dcf6f64d9382b9715f766df48ac111e2aa947cb08cd04cc183160041843f7432ba7dba3753203d11de8e39a905b931c20b734f7e0472e0262da4cd6d120a829cf6277426c8c123a20db0803b055328ee3eaa00cda4487900164803cd74930f72a7152c5bd0421e005a6f24b9051b15197263ef4a90edf8bc30b6dcf9497baef69948a22041592f57235253b09c01064cb7f83eb6d0b1685a8065429dc121eea186b5b90bb366844d16011ae096e37b49045938a5730b779ab0bdedee7c3be631f28821831328a97d784522be1430a4120a86a843d3e7000420cc01ad251871115045817ba42f8dd9342ebcc6ff127997d3d5a23f51b6e767a2f9cde7b2f3c6a7c82970ce6f9f109d1f46f707aa978282072402bafb0042ebfb8e6b8426051f98d39a37caedc6de7f050c4700fe52a6516c8994bd2e0a66fe46909ffc412ebffe8fc06e9ca1ff93f5ba368a400aa578b507401ba5b082a6530a761b8017da8739e0b582b20014da8da488020868bfb98900ea628a17eb8ab9a28847f8a3ca732c9aab3ffb6327fcc325fd333e49f823825005996338b4b33389c8a07dc896078835a758c0e302a5a5b824129881a6b080975132ffda3efba08238d88341f032531a3b8a903b82103532033214cc88fb5b41206a41b8e384c55980ff0b8a592888749a08652040a59801117800ffe8aaacfba226b5da0295e30aecbb8a24b40f28b00174714228ab0f30ab0807123acb2b0a1bcc427d53412e0c222ff4392680c1ecf2adba208fd2b3a2808207111897ca6aa311e30d056895aad8013de040dea002500cc53de0a6280cb369ab8b32433b5343c489d8c245549e46fcb74908c3560a8f5b3043d150c3a498037c009b1eec3bb5613cde700339a19193410347f30a28f803feeac32c738b2800aa40cc1b7e98b4ba70058d6218594cc482b8a55a24a05b5c36d9e287039044cff8c64a9c24a6780322100128a824a9e33db0301d449b8a35e840af30042b739593d9830f6c8a9849a5f76345bda90b54f00583a800ea43415a2cc7c13947378b84ff03238810482f5ef445d36b0a1a5087628c0ac173a8fa9803781381435080fac0034dda47aa38996aec8a98098454820b9e590076148a60582fd56aaf709c488a2c1a8bc4b147003a8358c74571478bd030a6789138d4933cd09e79ab0fef3131117095421836982114e8ca37a32a880aeb8c2831880c3844e613caa14498a25cb048c0b95cb0c232e9458238c389403aae789136b2c01e81024c3a83377a83aeb1b243b0813a4c9178f132eb928803d3c9116938b47badb454c4b5ac488390cc4f03bd8318cb32f94645404b65383d37593c7c940d1a70bc37ca83c144951538ccfbe032e80ac12914cb3271059fe407bbf33cb5ac4c65694bd83a05489441ff9fa9b1dcf4070d6b01e4640782a8810998807a404ee88c4ee99c4eeaacce1658022bb04ee49c8119a08315c807ed84ce25d08fa4004b8918418ddc94867cc89ad34dcae4cd84f1cdaee284fedbc631fc17f2e007ccf407ab0187a5fa4f000d50bf200b6ab89169e017b22b885ddc9457542dbb84bb838805f8349a4e434b1c7b4483f08519f49902582f02b0503cdb07ff1450122d5162220be87ab9b08cc18829cb82384bcf4bb3094d1868bb343034880558d0e08929dcb488d0740a066080110d81202d52233d52244dd2235d822968d23e78520990003850522aadd2200dada490cd8940cf6ddc50f5844c87dbcf6893d1193d981a3db374f4859d3c10ff54b80528da2efac33635ac2ccbaa029844317f7ca34068916ca488febbcf692986dbe4a36523d33255963395b049c8487ed848612906876c45a09885f55284f694886d20403a35aba7fb98aca48a3528483d214504803f898033160d1e54c84f7ea8804b2dd4663bd4658985e6c1b1c551ca32998503b8cd3893cb9e78c50ab808146903e47cc0deeb05eda10305a84a1a8242ae28558be888385b535f2d930655845884d5821020595596f1b2b4f2a2427ea0b627298060f8c6bfc885354d2d7e10408ab0bef45b8a2dc80320002805684244f80a688d0b18e4c89d208a1038002f15915940d776b5d0206bb06e4d966f3d332e2d41f1b885484d880fe004ffa454c7a0400529612f6105c6783525285080793019acf08a7d15c18ce44c7d90bea00b86810d0f546057878b481c53d885a594863db321e346cf70855de055d5128283cb481ded094af5c88ac8d48f7da390a58343389793212a53c58c8200ab4905da63bb8535f50c414da94bb3d99bed12ad6ad78b54d0ce28805530d8177dd08898843f5a8097ad317ec8564c15cda5958d53b9d330e08a3ea588d05357a0d0d81785c4aa2ddaf0280056655b091357ab0adb49195b42ed2e0742b6c07553bfa8002678d58910d7220b0aba542d9a558610bd5bbcc54a515995e0bb88d00b81359d580c7b0449a84fc639806aed0c5273b8651b2cc77d5caf4dd88260c7ff6290d982508450a0d9045d489ff85c45305e1c342bd1f1022f30031328030870d6a500821152491b60560440508b08bd05a85d7de0d1609d084e6002462d8810588597a5c1a9c9dd83e884dde5925db2d17de3095d555b821002bad58847b8277fdd093055dc88f000bbc5a9970c9f66f40a2018cc227003664d8a6e98daf8631cf195becfbc088bc5b982c88560d8da9d28c3cb73b3f31ac7f9dd12f90c29ec62dd60d8d887940484dd0869ddc6ad955902f60765c04bb3faa238299916b11c3c404da69886c5dcd22b095f32f449e39588491002c2cd5abe2108cd0db2dd3ce1c728b8a2fb34c6450802088529b60954cdaebae0d11ec50803362b20c083ff3328822e081f1ee48d6aa0e08878848c44e2c0ddd81bb68853083d1cdd85a295bec8c53148d4392bbe8e4475b32756042110d3caf8d3baf85c7e80518cc0008f1d2a14a0023ef835d9d88022e608180c01f1d507d7350cd85da446a55d7d4005778c615b8dd542be0ee639a065e3e30c80e10fe1527e08657db8059f84c88c500668a864d26d0a22d68830e607c00d0af26d8ef34d5f8d9cd83c6ee56d7de50bc9d94feb0802c8dc95525f103e5ab48b666016e6afa88278e88215b0011e78c6d8e064ffadcf5dd85a0c66659b988450e0e0c4b239b0a5e6e9409a7b5eb625ceb1fb65481796e48cc080d1750b645dc693b1deaf98866af05e8c784b8350d9ff1056e20f8904273e887fae5983101c7dae0ec80dc7e6e052c7ec0c30558468be3b6d386020a603773082302015b7e8060c90e32de5e30508609ee0d1e28c90d8dd5fb5d3dd8fa68e4be85d912e8cfe335ca1e8dac3f9626c33e8d8f80105604993ad869aa6891734085500e19d50e51ac414d895e7209b6182f888a1868c143eea88e02dca0d8ef58c09b14e260ca806966ee80dd0060c90429a88843004d4a0903e77556bcba8e2b34e894e736ac1b60892e6eabfbecdd58aeb8ac0060ff00068a86ccbb66c0c98eccae0eb83104ef19858464eec99c039812b6cc588652c14ed9948ea3241053055ad8aed23ce8620a53e5b0f55edca581c6e35edc518affff2c56d8d606b612980892d8845761ed84ddf05a068cf78c540066e8bb8587e002fde760956304be8ce88c5fe17576055a6d26687c168c25d6ec6ee8c8d45ecec3ed5c4a86ec568963d4aef8b60ede1145e82c0dc8dbe8c53a8678420ef7f1161f2826f8d18ac92626f96a85f0087b982686bced0d8102057ce28805df50b02100249b8ef990026534666078f18c804ca03576cc2267090e8340b17eced16a78d5ddff29658e5088c50f8a8bdae272170e6d9d5659fb0f151f34cc8866e482c6d1137090893e50ff787d0f3eb9f10dc83e06fdb6571625288457872287729590ad8da0edcb41d57f190be0c18f24429081efbf194e0e71186ef91ea5cdb75e1ff24df85f64daa7232d1fdf68560c0f19e408555b8cd0def0cd0e6f248eb68304f097802c70fffdf385bf39ed8d80a40a24552f303519072c25a27ca85a6290642b772acbdf3bae850a6da71d5e62d8290df3e37898348e9c4be5823f709763d7489986d83d8059d26cb57320e588775ea899cd6aef38360544be7c9f7d6f388e08410676f12fff0320f8e53474b4ee0e3186cf51c5a705b9f8c3061dc5c372683e3f588e8f14f2f89204fedf416f42ef50c76cd600d467622abf265070a08e7d545782dc65576fced673d5f9c2fbf7691b86e774f6f52f7f6e1dde847f880e02c77cf2800fa4e778b10573bee0c1ef5702e97ad4b90f79128ea5d27f38230f3ffbaf8f612dff73f626e7fd707face80d0267839f76ad5d274c11e2cb366f84f30f06d7720b8ed0c8a5f3b8288f68cef1f831002f4f607e329f86e7c515e2f6182d004860709d4862c00bf588cd7f87c2f0c5f47af988f6202a8f90aee55cfc8733d67d4dd9677316f55009f614244ada3a7aab93b5ce4087bb11f7be428759f882970dd08f0c57154f050913f6ae9f6688677efad02f08cb4f196370cc6128fd776229ee58c98fa6d9b58fbce706e3de7747e18f04f3f7983e85fd1361e8ccf7bc3183289ef0c47570e72ef891aab0cc2e78cfc2c71b5e6797ef07979cf76a1cf6eade70cc9571ce47d6486612dd88f7dd67220abed8c1a7bfb88e87ca1f0efffb44f6f468df74fa7f7fa86efbb1fe3ae1fec970f0f2911fc8b40ca92a696f7e57c0b06fc8240f8a1378885977787affbec369eda0f2bb4037d10577acff0ef944e7a2cf78c389dfce9170e1d1f72c42f7930efb4d03e6a68f7dce3b78c910a8fd40208458ffc112c68b060057efc7ce96be8f0e1c35c0a3f1cac68f1a01085fc16cc8208d195c60c1747922c69f224ca942afd6954c8e81fcc983267d2ac69f326ce9c3a77f2ec39b3554b452b87122d6a94a4a496ab3cde6a79ea6841260a1778acaa0fd5028542504a5588ca2a44550a4341f597716a47ab05b22a8c54f62ddcb81533b44ce5f32edebc7af7f22cd552a4dcc0828726d5b8eb61538d92e0ff8652a80a2cc4c4fc38a1e4a43118648707142e7a7b76635a88c1d84e1c6cfab4c9ae1a3ff16dedfa35ec989f5af25b8cfa366e7fa714196e28b976dc450a0f64761882b34ae1fc7215d7b74a6105b89f393e2c20562301b7b9b79fb6dc5253ecf0e2c7df7c459b32f7f47227f156b8ebb76db8ed311707a930fec9c2fc0a142fa631ee7469dd421a3fa10ca41e827111d0122be439f8606ca9b4145d82151ec51e6df7c9f58846ae34b78b4242a9c4a142f441661f3f077aa6d102aef8d2527616ca7854632d7502218e39fad4096d4cccf8a34a18b684df5b9168f45566a86844d64a74f11342714ab625d767b465a02290599a34096de0e9f82598346942ffdb245a9a399290c005d61555c53da7107a2a9da251686069f41495b42982e7997d5ed49e42a084396898acc0e827a2056148245c1f38d6dc71fc0036547bc46526113f1405f6d995897a5a509597103a6a8eb431f9699f93300a97729642e69f427cae741694995da769608bec892aaa73b69409a9c18e170b6ddaf17a6c590bf2b354662ff2438051462a544c669bf1d399608f6089ac9fb4b5222cb8b001a59188dc9a4b54879915a011ae44297b18646f627b2ebd4539a9905de1eabb975f1a6d552fc02549bb5f666f4e46e35499491630c328e9a7106bfb4adcd36c43367cb141fa15c7d6bf4671a9d02d27fe8731c90779a7919713ab8c93792d6d5bff72bd8ef2f3186492196b94b20c81b5ee9430c39c90460dae3c744d866a44a1cf012b072f58d7415b966a485aa5d1cd49375ca342a212bd754c97b474aad5f42acbac5a1af958d6c921831569bb61073cb042c0724d7426c5ba5d6fba60592b105c40d36cd5ad775f4cdb4b730fcd086d829ffb31c15661a5555cfaf1671588d72aceb0720a9162f8d0a4fc7539b7bef253b34665c245223f267a242fe800aba610e72bf7d8fab132330716a648c3e5e4ed552d4cfbe2b4c91dbbbe75b7643af09e3a19c22d523f348b6281e957e74328267f2ea0fc144e7cb888937bfda7406be44bf30f55cef7869596ad10f2e0a37a2f3f9b731faee721b99fa8f8b4e512ff4c018f173818ad1c820a57ac6217d7e9d9fd3ef53a7ecc2f5cb4695b02b5c40926e4af25913a986044674002cd2e829e625cdc1a182c4fd8cd83889a600535322fc1642f43d8599509b544381192aa65238b61a21e2109f8a969305883d1223e2089aae1b04f99e387d0683828a321a7889fd2215dca35182e296211a16042245ee64444c92c6b4a2454bfc6b2455e3da27d83d1e2183f05377e44ec8b3ae29153d228c7399e09750a89851bbf643c8dc4898e7efc238294e5923ceac87b2102242213991bf8c98f901062a2e51429c949c6a58bfcd09a231f14c64c51b2939e24ca1adb9849f1c0f14e9f2c48336e200363382310ae74a5317470030f3663ff95b578252c75e084669cb22276e4071e47399e3dc2e993b51c062e9389cb5ac88097c943c6325aa94c65d64296bd2c8820b527ccf1d850219d842632a729ce40d4c299c90be738a9d9cc5e1e3189db14574b5688c85ade329de25c86fb9a514f7b2ad39a9eb464bede099bfa412e91cdd0013fc7a983915c83180e7d28b71afa50878ee4060915a731664949d1c14ea0b0f11abb10890c19ecf3a2b81c06322e020241b0b4a52c65462f9e718d3e39c01a5868804b5d8a8591c8c0a4d33486391309427e78c2a3af29a11f9b214d9f2e33a806490633722a554130231bc4f89103b881d3a9e61404234127535f894f49d2269846dd0b3131e847b086351063ffb50816b8cad5063c23190902412fe43a5566d8d522fa6ceb2bcb29c96c6eefac7919534b00d953c0ba72a12ad5ab5c99c10d077007045b85ac54777a118b3236102855e411056558bd18921fba93236719fb598b4015b391adeb6d2ceb5ab97af5228b65ac6311f9c3468ef62ea08867524b1a56c15e24aeb38dac354c438ccb4e9516b2c02c33287b11b686f5ad7fb464297a9b178272928ed465aa750f620da9ca4216b4386e4b1b30d3b824231b90e5050066db8b91fc95b1c4fde31ab58b974d42d089b7056c6e2be280a8e6f4bccfe5c573592a80e70a0317727d065c404060bdc282a500a8306493bbd9ce7a36a5f8a58d28f5ab13a48e31b5805dadff45f22a5558f08216c200002e64810b5b08c016b200862df4aadea3b417bd8200c031a02b5d8bfcb7ad01a6a3f044cc935222708bf505ec7d2b325ebdf2e2180208849565c10b2cff42103616042c1cec5266687828d760ae4b79a157609c17b2f3fd2a87c32bc7b22a79276945a309bfeb53391764c090b5850b80218c5f0003170268b13004818b0a0323c139cd465f53b252aed218c38100464e81d165cc96b9224f6e6b94e598bfc2d6d92669956391c37ae483a8d8b53116c48d5dca6205e758aa0d18b249dc2b570008a0a5b038744b71710c35bb76bd1631715b512cc72392bad4624a5c8939acec833c23cd8ef6b58c310ce640fc62d6c010b4308eff018b6bb79419c61e4932d02c555e681b162e70014b71c1ebe3368024a966eaaab7083f773a9b26a595670c3f3d5ca71ae41a695e348b13cdd26ff3a2cb9a86f52f6801804008a0e2df1e34579951db8b3840dd7afd4520602c08600840e4c785309c3bcbe7225a92b7fd9ec9bfc7a86793ae9c20cc95058b65e1025b000000348e37d0a58a8b5f1c83d762e6058ebb7a916b4c58ae6296f731daece39c9efb2002676aa89dd8f297db645c4d2ce2bd7d9aef82543ba7b0c8b10b8e11f240249ae7c416042da4de529e9f77dcaf96eac60bc274d7c697c6c3def4d45d5aef8a4adbc363c42ed76bc25db09910d9619d76c1a90c0c58fc8217c29005c8d90e00ff5ed45a16b5cee9313e2fd5371ba4ec98fdc59505306e01487dd62e7581c2f58a72db7278ec26cc6fe267c2ddfede0f19c2c53ac10de271aec20200bfe0f995e7ed6531e714002e8045a2b5ec52d293fdb8e3f635a6151c64977adeb5574d39636b1e41dce73e26bb2fa231e24c126e041ecc7077417c4bce559d879ca5a2a73e414cef635b309f166f6fa9ce69db5c459aa7fd9e4f65ddedd146f9c9c4f9c550d89994edf90331b45f4ba1def10582dcb994f1d18283011e4be19f3fe81f05c29a30889ebcc51764710349381e53419e0791df024a4848355ee1a1dbf0f9182d141d4b95202d08a0200883a6a1604b81a008fa9879b1942c08c0f3e554af61ffd6f7d15e6745a0fb84d202c2046dc84aef19a049216041b01f05da4206fea0c41d830736d82f34584e11e1087e9bac09a1a2851e6635000156c4cc5d94f8b94f92552189dd4ffaa91c494ce0d4d942090221b909c296b94013f6202e141a57a9e1080ac2b0291ad1699bf261563690c4d51d60f025501e2ee01e82cf035e5404a61b7af1022fcc9829929c965d5ba5d9dda101c0e5c5def45544114e1d2dc0df31b8409bf19cb81d57de55040bfad43038512796df27264f309a940b168471cd968c19e285fd822cc4570fba1f13065a20e8a2e8cd22b53d22dc91a1a3d1c219dac2ff41165fd91b87c940111563ee1d23edf85e677121414cda7181618b09ffc009965caf89a3d96d5af1455d798d1e2d8e208d719b0f5a5839429666811f60699409b163e2b963ebf461f891446b059ea10d42c9e522db351adc25e40e66632f7263e951a02c58992d14df54812464fda2d569e145c963f24024d749e4e58462424961337a237c911c34ea95ceb900f37de040b69f0058d9220ea59715a26b9d23e175d6303ee4af54e13fd8a4e024e3452de33c7aa3d025da5142d68c096437ee9f822921530259fb2d241432963a7a104dbe1c4869c8f5c0a37d6d22415c2457729f129e172e9cd736ca9523a2170aca5b134a15105260a759441d269443bacfc98450153660f2502460dd61abb9168b65a0bc1d242c60d885a59d7c49ffd9d409da2daa9e5c5d9952ce567461224c26944c5e0e0c969f64d20e4ef293144ed9713d978d1d5f4bf9a44b0d25fc61204ba9d9a14de336822020a217a01d03239a1d3e7a5924ba5bfd85e60a4a5b02c566eecd26e860654269a53ff8197a65262d4c5ec9fd02ec196285151f251e9a9a4da3fbb19e581a4472e625228a99cee142a0e182bcc9a25e256645d4a63db525f86067e269a7e220c352819a5d12c465fad821165d2e9e616f6ae6c8559c2b09c02f78e01056c47c72e5e4b9d4b7951c30a0a46ae29a62725863020f81721d244d0ae820941f92046eb61f00e0d8f1f1c251921c2d98e6ba655fcf09e55421275786a5acfd828359a82efad8e0d1ff576bf2d36bbacdeb60d202c65ceb3841ed950478e625120243c809e15ff6e64112e5417468fb9da400fe28972669dcf9d8ec6d185482cfd6e5852768022380022990422b30422cdc08a174822680820c660d9eeee95d50e9e534430d92c40df224003c972c0843afd9422030652372e890861bf36523c525984a4e5dd5fd673a5e4f9cf6842780c22665082b0c4f8e740223c4a50b058aaae6443749d1dd20683c2e68086ae9548121dc755935061ba5926441902905ee284b819c3084e9d42d2943b6558a5ecebef5442670d7ab6a04298418796482ab56abb5626b4d9cdae5c06845964483eaaa06c21886fa1c4b495c6aa6a1a58e202e5cde79ede89585ffa1d9d92b579944266ea1e1810eb3ed4427781db7d2c62514d58320d6c0bad02be8445af551d85869149e043d9a6b4e411daf4d2a9825a99bbdab4922e1ba5e985c299c797e697c5667671903f010964e7842a0262cc11aecb0b86cb58a164e58e5c5202a54f6ebfa716579f9e022725f867a197c0a432a56ea983ea23db264bc3dd78e9e57c9c11b64c9214a00683a09e8e5bc654c78c2b66a8423f880d7fa4025649346142c79b890228c022460423ff4032698c228886da0e4046dc010c9d86a5daac4723da29a9d226fc25aaf8ddb116a1f2dd802a1a96b90722cc5ba14d1e5187e7ea41b4a1533b4e9492c263f3d6bd83c263fc4ea4c74c2a93e8b25acff2ddb4282e86e0224384286a44c6c100b6df88029f84006384206b02ee85a02dc361b03b604ef918cb856265180c04efa98bc46dc348ae3819927e0d9980bfc42cf611a530a69e2f6a52d9023dcf59dfce99835cce149ec6b4cea6cd8ac684c40123f288228ac6d23f880d82a4225f8006df0db6b082cfac26df8fa4023f44323544286782b4c4012c0950cc4e2168fc956fb55d931e4629049dc8e6e232d68aaa0659fbb1e6de202c02da624ac9161d44ed65170273fa1ace244294ea495226cc2da8a420bd1463649e940c9ac42100008f78328acef4d94d669950cce46e13258ae4ad4d4a2521aeb615e97515c36b294004a272286a9f36ae98e0a0312bbff9879f15f6465c3a7ae442a9154a80ace6ee104777df0dada2f0a438c786c7188ac300fe1afeade10cc2003e50aa30e2c03ae92c4356443d3359fc9addbbbb900b7096dc50299e136b07c9a2b711a1ab0e91516b8644a44316572982bd970c984d64d30193ff840087bb142a0ae6ba45550c46e06886d05906ff64872d6da2cbdecae2127532d18830c207249f86e730103bb7d298671e08fd9ab20b66b116b69126aa8ad5d2f51348313e8408286f232712fccd0c6c29a5a50cc6f23648f2398c2fcf6c326f090467c4b6c74534b3832e8f6032464d3e7f683160f924dccadcf2c832f2714299b32c73dc365155fcfb99847ca957b9a97bce1abb01204b14effddaf655fc3b52b5539f150e8b20e3469386bb0d560aee6c6446939c2da5a424b54423583ee36b784cbb5c66f65c8282cb42687c4daaaafb5de44cb325ec3686f3853531aaff141a072053e9fcffdf1543558c809a297492360226ee0f11c2ca8a2f5622f4920c30df0f2479b9413840d47f1039fd644694d743f60f4b35034f9be6a78b4ac46980252f7c32870ed45b704cdd244444347c998f14e3f5e29df30374c98e7399f5fa2f4c25d99dac55f7ce5713c4be0083a575a27dd5461c11366af1314f256279448d3cb0f65d74d8c313f1874514b355223b40bc1ac6bbc2a6053f436037643db2e4c20ac37e9ee5d43993f9d443200b097299cdbc122f76dff59470642bce2eb2ca3172ec017d2b1a464992826ca402f4ff645390330374c3be144c56884da1a353f38f5426fc20847326c507248a86d35b7b04628342664cf40c30409b50411d50b38bbb67d55b649e0954bd942d40983b1ca1a19aa9d00bc18a58eb66b099a201cdaf6d91a6c652f6b43b7fffa8c30e784ab6600dbd246254002fd424243670834bb86346748ecfac0dbd2062434420505754db86aee728b47abb76b4af71fb6daa219dfc3816cb01d25db05ae1e0febd4f15a341e640308b25fa5b78277564f97cc1a19b6e2c9772338b3cc06546b802f0a57022654105fdf84fe5ecc1987383f39c33a99441b03ebd9f52a13c7db953daad1ee71204affb8e079f84180138e87725ed74e4b98b05067080188420ac92c6c74aecb2a828ab3ef4c48339e1d0bd53679772e436c1b8403e89aa2b9dbf1552f121e254b82b76b0564929f444e93b92fc336c9e48f97cf845f43b20b25f78e003ab73a7627c711c060309e1fa00eac3131b4dab8c19700e2a8b20a829c2ba99217043238416b2ffa7a37cc2f0d336d137ab58a3a5a91faab0a7ad7b444c79c4b827b7a58659449e4edc7123992bfb403b71f99e96b3fc3fa47dfe1b13c0c51ed8496272cfcf243559316b9000a01dc77b566cf4e5c75f8028c5dfbba213b83999f327345af846e6cae4fdd795754b55bfbad360cfccc784e3051d71e7b88c0b8e9a67054e3ff8b6ba87bbc2b042660c27f9bed7cd73b8bf73599d0cb982793331803c117bcc113bcaf33d399fb4332981e2c082786ead5a5bb996a1f4434f9fa301cbcc68f3b3f4565c0644fb2bf30b9ac2d24f880239cfcc9c72e7d33f33413b64210785e84910f60424b10757d8bc2d75ac20af7c3bb233bc09a8aab67b00ec88013dc4013e802d2e340072c3dd3377d070401d2eb423bdcc00d38810ce88031f8b3212b3c4938808a75a612f2e785cb33a697c4c52b38c1cb4029df4033447d10383ddc3f3dd22b01d5ab3d2b0568c0fcb459e5043109f75333744b60c2264ce55ed4766ef7c3bd28c232fffddab684a9e304243d0db7b47635c940132841073cc108f4ff002574bee77f3ee887fee78fc0083c4107e0802e98c3325c7da78732d78f843510986fe2ba91cf1637d874419cfd568f32d1df802ebc7d07907e0e88bee86f3ef1e7c008ccc0e92bc12e7fd793f749a8f40493e936e3374242af2da018fa4ef8f5fc42424b8c2fe3b3bc46a8ba4c40363f6021aad49333e84013d881e6f740e92f7dd4a7c43544fdd2cf00e9137ff27740ea0384131dce0215347810614285816ac940e60f62c488c97a09b2781123c65e122112cbf8f16203621c392e23b810654a86c664dc5022edc9881c9468d6a4d463c48b0e1d82e8f249122844073e71ec7c31a2874e25628619bc11146a54a953a9727ca4885f567ea0fe75f5fa15ffecbf525a7df4337b16ad591f5af94132eb482babb073e9fe63a495c0590278d3f6ed67896dddb09dd8f21352157162c5119df8b123ad83345d0ea00ed515646766cd9b25ff8498ec728719236cd2cc3182a739194d55b636586b59546bcc4066dcc8d1636d8cd99241bd61cc7570673a96bd7c11adf44d9d382647f4a9abe866e93b3beb8a1afa893413621677f73e5552e15882c382d2eac82fda4658b3a257abb51479f2a4b466380b58aba5f46747694d25ff2b56d852e491ef0cfc2e19ca8082ae83a366aa299a11249c50a6e4923b0db50e74b9c69fa144eba1b46866c0a189d58253c999a782baa601dd2cba4da2675c14841910a06a468713531aceff9c20e800d1a60879e27028c88e42ce429b30a450c2d2707a424305394af0c02a0d5c84ad4b00fcea15ad14d9efbdfcce3285ad4eb69ceb12ad44416bafacf20213aeac5a39f39f580a93c4ca3c17d3a5419c66d8e939c5aef109b30647403244d482e05017698e53f21c1275a8454785746826a864b27111c68864d4ad010e839281d24a1132a609256600d234d4744990cf17585552c29d98f30c31cba29bb0031ca4d413d8aa38296c4e3a33616b93fdd6e3ebac46d81a8f4eaf3c61cbadb3d612733fb63489364dad2a08165c9218e4c9ba70252ab28343931be1091cae71208827661571bb934c654806a8acd1ad53883e05a997de80bac15e536bd1a1ff890ee61df19a6430ab9056283734f7dc4623f395e28cfd09a5304fa2fd872dfdd2bb362b91f5d28a918fbbd284adb49675733f48d8f298ce560a8b446360931138e7eb7088a9b4d33474585e9b5eb0c30fd64c1d0653a040a0eda37efdf937a36c824246867b1912c384191ea444445f1dc061064469ea6106c978ee3953b683bd8aadff3e4e45ab51d27b999f37d1ca402b5254fec7e6ac2ae88b647e4c4e4b94c0a2fda4b0c3dc7e9ced6b7e9e959211a46998ecaf7b40bae013f305ea1aa8316a8024aa2fe22628820d16638d176cb2fc5d1c5ef81aecb4cb851cf79ec3d35665f3da1b39e4be12cf4a4b95e9ceca6e97d9cb3bbd4afa565940b638c99dff7a8df924ada61c5ef0f59aa2cf46bad41399065df48b48da34231b49c2da54395a877086208836bb8727e4af1e7f8ddb24feef2eb5f20b6f7a438bccb442b368058f70084c4b05b452ac681d8b2d8ecbdf0483753d9bf4a003ef72544d7ae00539e80836e4cb08492a8211d491a4194a73cd304c700e0e3e2176ae7be1fd2858c360ed0e657f9b9656929596c21d0e2dbc7b20b200b83c4534a22fcffadb58d852201b3ed14af142543460980cd9d5e41c26e85c4a74f0108e8060841c29a145ac469265844f25b58883141ed4036938c001d26095f6300645897042084eb4636218c8964ffc0d64d83a0b269627c00536f063fee3c797d2839fac9465807efffc1bcbd8f2813d5ef23b71c41ed8aa78454ae4400a1f5c61d324f2b41791645f1639214772e41af701c98d7094e30b6f87497f30012ba1b02555225118ae00923e59a9445a9ca7956af9a53f59911b9da2c70ff7a4677f8ac0045a4856bc250e687abba4ca2408f0013ddad18a5ea309151d908c595202096bd862426aa12289240304cf585b4440608d5f4104192a44c91a674245cc6dd272f7c4e423b0a4159c69132a7dd4ca1f0119387e0cee2c9b60cb33fde2487e7c8c89fc80647ac8a495619e856f59f11b2029a915092234a16ec2d32e8320ce9be020411d404e0ec28186d6c4e640cd58e7416ab10610e56006d669694db637cf5d9e6279592110ff4a4982c3acfc92a42d3b4b9cb2724cbf48542b99a01361b4620a30f583aa6d395956520648b114269b4c2509c7d8528183b2549c40b58e2ec4298532a8e473de69061a13e28270cc64043075804ccf0653b5fae311212d0c3f3270d888ec2f2b0c05e40eab6a168b7e144ccb7b059deca41524828980bfeb87b3b402ada8b2a5b18e8d482f17cb8f507c139356946134606a451021210b5cf4ce0df87a103448e1934fa04c1064184bd54622a98b4d2b5399e04bb37aa55bfc585323a239cdaf52552e67ba0bccbeda8f6296ac1fa1e587640199d1acbcf5b08f806c610880de5d9af3a733a0cc356640897264a1b705d1c1629681120120a17238f0873991ffe34fd52296adadcddb241c0b37493ef71fc1e4c7300bb75130912c3e6792b07dba8bb7236218c27562ef8113ac60d7c27697dd036c10062c8d68d0f418964a4c7f159205240095320e10e70b587c607f70d3c42756ad10881562bbe005abdced6e47237ba6e8aea9bbfd189e30159b5d084b382b963c2c6b832c38061f1607a4a12d4482209370c41821fba5ca0d6a5c8e6848a337ba10339c7d0c910f045911ee652a978967a61077b63dd48af268950820ca8a75d00a5d640e437ce8452e579beaedf280be7c58073c210739e8406f740c6384e4f5467cfd6f6021820310bda096079e84a2179b01143395d59b3532e35acbe141efafacf229293f066d16fff1b245ab4676685616a1d612b36511c9556aa51d6b6a4df726191d90476e0f82d3a0ecf520ff0d6aa95fdc0181aab6b94166429def1c37234377b1d2ec753f143b52f93814a2bd4e6661fc1ce24e44372be346e829144c80477042b194ae335d9fdd62dc1ec49d1cc9a7415c8004f972bb0702ae73443851d020175bd58b0df6b9b19c1528f77aca1705d0f1f891bc5ee32d2b193e37a0950ae93d3a78b19576aab726dea1274463d3a59682000a520b524aa495c70887b7b98dea9a474412ca56b0be1dcb6a079e7bbbde5ab7af67062005f69ac959b1f2b99b29386d06bc921c997956563a71f8e6dc1f38a86920120e91bd3a231c7610581044f4ed0327ff76d28561364acb0d9f7a9f1b823c9cba59842898c0f3a387530ff8d38d7cefc268f992fc6eedb74842e4c250fee8697763447a1c94574144173a31eac4d79b77cca394cf59d9f8b9ffd1750baf9baa50ad8b22193978941b70e58bd5730d61ae77a0a43e2b2e9f38d93a2f151da33df34857700556ad60c8473ab98c37b2221f3a78fef8473ecda4e8d4b39e8abf1bb9eb8b7cf504c16ed2a0009f1fbbaf399fecfe19c88c3ef9e5d7e58f959e7e945a3ce5df0ff127f09df8c15b543e32eaf5148f2da40fc23ac1bc1eca8e244fc15eabf25a4bfd8e2ed538e2f3922f2860aebd2422dc16cbdfb4a9ef0a88f5bc82e434cafa0609d80483abb2c2ab4a70b4ff92cab4cecdd10ce38938a1fef0a2ecfc61eccecb0277304f24cf013902ffd862fe3069ec642d04876dfbac6f79726d2e58eeb35830eb2e81bca66fb16e307f82d0c40840083e80d5bc8407bfb04a3ee014828206152c02276812926beb006f40ac8b05c12a2e0423ea0ca904e78d1f9689f57c872dced06d3630efbaeca4c05010f52407c5efe5d6ab14f40fc2f8efea5810c4ea62c3deb05914cd009fab13467091f60e77ca30dd2cef0f0d711043514fca2f2b52eb891e81d52e01f7ce6d04314b12c56b0abfe2c92431a25c3004ff8111d9a203ab070bf3cd1f90ea0f154113459118bba3f7d8620c9fa8fcb6e516f5f0a19e5012492b2b5ef02b0ecdaaff24d1a254f1160f4f70c62f67fc10d9220215276d1186b1181d6b1224e10316811d85ef4018b03014c11d73c713192d04774d11fc8f16718d2e768d1689296e14f1b976ad1b3751e9e45122c6b13042210342e103ccf11c996a128440d9f8d03b8e4d2b306e82eaf1a96ef11f1c0d8868f1bbdc0d2ce0ed1fd543d1d650d816ebf4d8a60b7d912338512b9e2f220fec145e5207c145d25a8be9aae70395c9237311794e122d428e2e48cee4889290d842f6cecd19b3221035e627eb232830d21bf52412e6b126bfa3e2ba8c26b152c110b27ac6cefb6ef112db6add56b0bbc46b15bba2114ff2d79831049f52067b6612c272fce011262986b52a8009b4722bff11230d27ed2bf50423bd8e7ac852209f6b0409001abf0a30ae315bb4422ebde2f0f4f1ab4cc1111eb3910aa3321b0f1319eb2af30427ad50035b2d638e310324613403132a0673d24c315c70b230bf71b1b4b119070433f76313b0c215e1442b9af21f686fddf0c3d6beeabbb2e233ed2d342ba0350d442159d21c4b4f23c385144b31195db32a8e9125d97108c3e52e150c22cd8523f90137e7b23024535996c70dc164def0b02bb4afd72e6bd092931f96f3009bf3390da43c95aa27edacb5aa3358c071b104543ba3e23a1521142c1258a6b220d9a63ccf330f0b2324c1046f06b0a214e72b0470d00a67c206ad11580d3f2db13901b34a0a316f24617aff26e13a65135860d3c40cf4408162585aab3673a6175d0b426fb32d0fb0e32a1432bd24ca30e104bd2205f9412dc1c43e7ff3ab42d433cd323485516380ec130be33ff50427516b46a7e2304dd36d6412ad34263ab542424193424b50a180342d96f02b9cb0bbec13439b94d584d347d32d3bcde5110e33eff65331f4f4f1b6542ab0302a218740f34c6338a10b4ba1479fcb13f0cd705830b4e20d38b5ee2be6b049c10e88206137fbc249d98215161390e8921fbc34584ea1f4bc325cd00f0b6f1450fd41d958956df0cfd5a654d9ca320463c151d514804c011a154b3d7d083ebe22129585d52c01134cc1073240a1925459c2ea0e6311c2447550dfc64fff59325cb8b3bd160b561d2b12d43114d8911fb6352a266f82e04611eed45c72d056598ffac06bddfa280344619a885498d6f2c1fe6116ef86d514a1fef2b13e0ba34c43ac5d1f3463f068d29cd33a219040c55530bdf303242112c6335c02f44a5a4b084c54634e6111f8f43b0e13144055653ae129fd75ddecf3a144e1bbda13800acd1ad30313b2342c3735819ef41e5b4b4a73068f0e926117834065702a77962a1c9441c930124ee103d67111ae14080b943f4dac02d8710b8ff6612596a908aab5e8f4b93e01132b40663b73d298b42ff8f11ffcf1aa6a90031d21037c4057d3c2a23a32041b9527ddc668d97111428135cd0546bda4407eb6415b8b6affa18262a3020b15c140f432184301633109b95a6b44cd2a131c7533070f1246c1595b2b72f76324bbc224fba237dbca07c46b144c01125476ea3a376ea0d5acb4b6d63816a15e3219319254bda33f0d843aa5e2300fe454f34e116277977af61256cfc8a2cea36871135016270940668df21f90925393aa029088c9e890055f166081f700459500fe16a50ed314b17068aba2172b361ea5c2411337280cb74a819682ac76b152615101a9133aee51074f1438f32c202159e31148d93290dc956dbde5b3142b29fd82599bd46499900ae3b6e6d06fa920c27b81a50b65143148512a72f07babb24a170b5d6d697117eb6343f071e3b16bf5f519bf0a12926b80ffcf425b2eb33333e0b3a411d100886f3e6ed0424ea440f66342b840cdf7e5940ebd1e584f02d73bca372ad06f8379d66c838c00102a4f15cc08a18e25ed574eeba3bba89788fa22f688733f0ec7916a8f73156a84fbe28401961aebd44e7d8c14bfd31f80384f5a4b8d154368a3223cffb44a3821149258c17897829a6fb1143504e377b152f85feb26ca1ae1bbe2f43de573d0140b6cff22a91c73ea3ab5006f5178518b7529a86777f1b1740f2cb5d5408c582a6cf44599e068bd931d7397b16cc941f9e1536fd55115a180072deb0ea7122a418aa5ec43d363de4ac1a1a47765bb0a995a8b86e5ad7ddff76f32210195ea8831296f51eb6e2102023bf94eff3e5994c795697b06516df692f878b19ed8de864d7048b7d7f627293b0a7963e696150a14584e9cfba28bfbc28ae3f1963333b92ec19b0f30fc329287f107664b91355beb92a1a2672f98241ea19aa1020b25f85a4fd58e1e6195ddf76d935990b18e59cc6229c9c2f6b4e548d7d62c14eb38c3abfee274d030a17249017549ca51fd539baa35effa36e60e44888362701fe7769f281272b712cdaa921729964b5690e0b0301ca19dbdb6c948eea349787ec3a43ed893163dd43ccb386be5577008fa71d02f8381657671f79aa1a2a6d9c6416d08e014ac14ac97514353a86991aa9ed086bda4a7fde2bb32cca1bcd842b1e2859dd50748a69125b7f45a995dff531a2a035a4cf178d280257c0fa4b0a1c241b5d74a4aaf257db2fe5a0187a365a749f01fa5ea2dc80285076d798ae5d0da3a2d36e1a33601b260196fdcb0113220af3bcc642f01aa53379f555a199d8f0950b930087babbf23aba1c28277d493f3e7a6c59aaccdca139a338c7b8da9ad8504e3b9e4a22ceb362ea3523b43db2a5948e69944db7fadcf14948daf57ceaff386aacda567f94123272114689b1f8025a687d86f8bb8b5f4d84a4c55c1f63958c25ac11038c4267b14e679f0a8ea37db73798afbbbac0970bc44bfd1624991086faac5128c68a80bb9fcecf98fc119d9e43b58e6381e518cbc7317bd176b5a1363a0e5f8a02bfc14cadbc4d41758ff9a58c14c1a849399007ef50ded1048a72c098b2838abf12df723e43ece91dcc33e5d98164541d9549cf53221344d0ab0ab644c91312abab0b1bfc3c267b24ad04f8fdd584f5659c1143a673ea0fe2ea171ffa61324bce40adcfae8f5a7cdc27463184c2c6a15336ac6f7836fce79acda42923d4e292b971fec1bc25ea1bb15c19b70474f5d9424d29b9a174b691503fd6055d9b0dcd03f11617147125019b25d99035dfc1fedd09956b0110ae7a8d343a154ce2b84b7b8cdc290a171c7cf7c9128bd0417bc8f831b7ec15ca9fadc6d1e4112c0ae8101f7b60f64b7ab84ca05f7d60de4c94d2c8f7007be53dc9855e613a43abfff31d3fb4811324064e63c0bffc53cc9f8e19e69ad5e59707f2a21a92e97289b85143f98f58e3d0bdd5b27673d2b96592204fd3be258d77b7d690b43d11563d20800ddf93247f9a1145a1b7e279b6b4f52d5393059a03ddd423d3915b1ebc4dc2f422bb32d7a14f6a7027c00e1c1c4144a0fc2577cdc7347d6a942dd2fb2b548930303d5ddbf03950980dc832512eebde2592f1692591144faffba4c3f1ac1d27531d4c97c2be8e2f05c7e52e3512d675ea93c1b447d3e15589da492d9062f69e3bbe3b00f8414af32a16d9bbd84e0bb0fe4e44dec121821b2e944dc17ebac4f32eb4c4c642081d621bed79293d549ee882477f27a48e0cf94785f12144edacb19a1bbf306d66be8d7c55b4fffb0b0c9bbc3417977d7f364d633e0684f81c24f1466e33ec25b8b00807ef0f62703e6d507922bf11a01122c4174a7cee649322c764de7dd7ab16c59d4bbd0119c35d4bb0bc86f13ebff98ee4d8ccf8fdce4431ca6437e3154152ad0b7d00fecd1834cf14350cf5b8becbb9dc9b64fb9259505cd9e3c322aedd3d2edcda2c7ad4b92dbdcfa0cb9b54aa1cbe7beee15e16227e8d08398c3f544e996b91715db961c9ab67b7fc88dbeebbbbd1fe6ad80e79ca3bf6af3758d2d3e7f66e19cea1a116f4e3fca000252057e040bf22395e99fc2850c1b3a7ca8b013a34b062bf21312c99fc68d1c3b7afc0832a4c649a10818fc203265c74916f9a15409d39f90968aff26799c699140cc9d3c7b8ae4144a51cb82a03e413c8a74a127522d0998ea0735aad4a954ab4e75541052554c420956b00a966a25830993fe2b555011a6b0561d6568347560414b55c71214c5366f554b5d2bb2326a363043891487f25b24c9a7e294a784087db99863a4964c227b6449f303277f8f4e2d1a9ad8b2e8d191701a2e2a38f5bf4fa068fa80ab373655ac04e956f56170adeca9900c9212acc960a5dd603719cc607554411f5037e9266eb511ee96a85507266c981f810f8f468f3e95d1fba996e1bdfbfb9c3dbb4ef3ec774a927b1ab0f5a49d5a0dadf41cba6cbbfc1c45efab957efdd04650598131959580524d47507e52c1c75c3f95288297ff82546192414b9730d2c97c6675f20a5ad90961537b26f2f40179ed71d2577a169577628c1a71f2418b165dd28a7c1e42849d458e6c62e16ea21814e06c09ea678941aca89689415f05c9df70551957d0538d14e4086c4146050981066dd8e18e4869924a7a1548d29d8c6a7694a24569b227898b2d85b6a689a764981d98621ed563450414b9a5545a4e756541040c1a158180cad6488b3a06d6da72411218a19105ad35644140062a952526ddc8e19e476582a0618a6054e79ae85514639c7212a4c829a9b207d4a78695a289a83c4ed4946d9c76aac8a662398968a305211a1b9e043132df2785f1a39685ca1154a9549912845c3fb6faf7eb54a2d84810ffaeba42c4dab3436db7d9acedad6aa88c91d83ae29bea2ef6c87b2eb262e0b80bf5699022af751b5523761d5a95b18602ca5fb6c499625029615af78a41dc0a9824411347557182bd1dd91cc0d281cb0fae0feb1b51882e2226efbc8b45f2c1078b2c62d2226b4ac26e5a193091b2ca3c35e6228e8feacb6f5aff021cd5b5fd59c570458ef8e003bcc232da62bed69529a98006f353613f8d4c5bd02850f1478054638d826c901f6b182ac90cc5c28a8ba7c2a873dc8a454237dde9cadd53ad2e8aacf6bebc5ae46fd900c3c74fb59dbae8eb6ecaf203ca9e9e54f434710cf253810f19d8f864a1b54505f6a2810a3c949e7d2bf4492be69eab19deaaafae66ffbd849f2635c94117841fd156714524d2206f0e5dc6218fec2123c42ac8df5015c0766dd85f572425d19814ff25233f93ccb69c88b18e7df62b9b965d2a9a004f326b86d56e3b5849c32af8f33e7aaed726518f4b3541cdebc7b5459568696b84d0f3c3feafea0f559dd1fd0344f1331589b487c004768446f01a4a2972244085642252801b5af9306109a6f9e02951a9dfc5a8d20853304d14916314e15aa12f67192471d081c4e2f89101406d0c5a70d9dfc54ac8a9b3b50421115488274ce7a20ae04c81445c9d245e08c058f4f01f9a28554502573ea880ce4fbe229cd7a8620a0711cf20a9009f988263101ceea611902823b2f8c31cfef4c55749aa80ff1673e883dd796f89ffa89e8b8420ab22ea315540d91d17bfd74310892827162c9ffb0cf316adb58883521ccb938264b44b78a26f14a461f934c78fffc1f053caeb47c62814c54688a28105d9d0f464f78a02a2ee6e7b6ce5685cb73708f6b05ce762e105fd6831a8cc105abac1047ce6a79f5df223577deb44011f09b06b55823f15b856857c57384f46d193a4244aecfaf6c3d3b5e47aaeeca64f26e1987b2971894d348c2318394da810884290186545ae38b9af98a245c884ce210b824201aa9076b6db5641def22945c0059a74c14d05fac7a92e19c67b5e549b26da961e45848295deac68471ec184d7b5a414af68680a193148fb89d19069795afdf8ffa74e27314f707a6904bc52b1c42619c4705b12a6fc3c2929df29822eb8bb4b3a357923504c72899f00e9c9d064d1a496a66742a5a31d5df3c674722d6b51991cb7ae56115b8e91700ea32318e7d2adfd49894018ecd7a68a87d06e49a79a0461281d27e8b60326758f1865eb1f3d3aaed285b42215d06a14f3a3a8aa78695354320801461a1b2f49928e0aa9243ffc0a1d4cdeb41f33ac844e37b54b60a6d3935eaac8259aba44020611a97345e052d3e3b3d096737c69255a973a39208e49051306b9623f8c96480b41ef9a1184a8a63855bfe6a1717850814fb4367ba151f891a3a724992740a1cd27cab5b478abab8b4841cc1ec602ba86218028585a3eff06558a40b69d0a7f2e8627aa0a087ad965ec000b18ac849aa479b4f50a716f3b53b080378796d0a8920019c8d566e74c39a3ee9a4e9b9d52486f893fdc2bf35a1bc56b1d976bb095caf91421a8836e097acc72ef60e08bd831266e72b4d3d2d52a6c61286e7613ca35cc67c7394b2066e7541435b08960991e56c0589fa91cf077911b165b49c977ead5a5418806bdc679b8219d30577c3d062e60d60f9d53096891a36809247e09143b16a0800dc34d1bb3079cb80cd98223f8891e9b6a14213664e476a995ab3d592a33fce0862ba2e42537c4134e6e3371a0194da914f6685681260120eb3c77deaa15bc4da18c4d3551318b8666e29ca59a114965206bff6d5a64930a81b8154f44f1a7bc7736489ef5bce73e776b9e2bb45483c052cd436bba1f9b98509eb84c4e270e25037994f44e685466053757549e60842a2dd2d7fd4ef35b8665647d37e752c316c96851d54f92517d143e6755ad58d92916f35be8ecfc68d6fd3085ad5dcc65bceea974d1352c777c9d924868b922d88d602c5ae160be8aa2da9aee2cb6744361b80cda2b8e8017a9153445a2601b29da6e75b72c51c268a32f3ab63a6867111dca2cdfeb15c3ded39787822a7873c4ba7992a5da3af1d07617a499fc462e24ae685358e1e56a1102345f73f8ba532ffc210d2fc895013639c84e2e4002f10a544451894c6fb6111a4f4f2a18adcf471b8f4eff92e64438bbd75e7d65a215c746f6bec95d1585a25442e6c4c48575b309b61e5c40bec4f3cecdf209556ab65bcf2674c1faf2414fc5b92bfe6ab9ed987e6e17b382e3c5245344536760cfa016b4297c052b548ea5af83dd2a78874a4f61d8a29d12a8796b3d0e8463734f7cbefd3aaacc2dd116e788a84e4ed6b7b19fdfcb676ebb16a414e956db73ef08375792fc561d4da1264091ef2766c012ca06fbd0a1c2a0c3bece4b8b22e3e765c3978a647df47c52a51b6de7ef422a3227b6ac262827df1c1ff8d7224f8f85ba53234833515d8f562f33bef2fafbe0fb6914cf07b283ae76d5fcf583c4124b27ffa74f7d48e15873f6700de4140bd25d8ce43b0d34ff77e486419723274fa7091d27184f35148a80780a246fa875666292098e0779362379e0b717048062c7875397426be3877108073d8b1580aa611fdb4634d2e12396771c2f3431db425956448254f172e36711a530788d2618ec961ed3853df6827562f2099ad00aba36603e507fb38609b6c242f89728585234e0423000d3760d335431a81a5fc54fb683095ec22dc5b316623776bbe42b6cf88305137baf7210ada00963681d28277f04b108bd26378ff001b2c7384688149f400a21e824a3600ac5377990b01615471528386845928616d182c4010936d24564e8213de715afa71fa6f0296b5177f3d3251343201526647318161854098468101db62399e0ff5be7b27eb3d27e79d2811e225366c2888e0876a22417cce13b80b235c2c139863215aca61d99b81bfca7739ea81a71f7444ac7293e5021724828cde170459316aea81718340a42b82cba8284a6f26ea9024ee9212ebaf28b43e108a25085c6d722dcc2835a134716a11b57a35e02a37d66e36f00488de8e758fcb07674474556a14688b24b53810948e7088e300a96208a51b409195470e9418ba2c28733260435c61e91503316f17e5a67871590011b7491e9d408fea63cbe2342bbd33c0c2250e9b4899ea58705b92311c3572d491c18826c8b527734753efc1030fb832df5682198000996638e2dd191e3120b5258112169224c183a01849276a8349540ff8fc208309d553995227b2df21cb69290d96811a4707e3c191899703a8a808d09e56f8e5024f5832cf5d31c65667a6ad54ea3e06f5ec90f53a92fb7971d19907b8a2109b2273a7d138f84f9444b63094c292056a54536f78c57d33c470994b1118606914f70392e9d20857fe95a9da53c9c591595777903c62919e9031b29992b9701b66298e1f33743b1088b19138d996004d99504416b1a298b3e467723c89a566180be3239cf411b9d964c3672095d469aba223c7e6299bb418a60b57fb931890681175eb2536bb1094df34f51410049174cb54910044099c24220b97972260366be1912c06918a4609da3138f20149883991e34a51f4c471b59f3492c65ff34a4b69cb496019f99172fd9966f799dd691090e269d586682ea999e53117a02b54bc7139e37596e699174c21873e6340a61d91605419fa3a3097dd89b30a19f4371928cf59f6ce19450e92204ca9dd0d349a316165a3815cf394dce388b151a419d708befb99dbba11bbe733f82d622ccb1385105098ca494c3a76c29ea152b098989e5a27a5695d931a32051a3d441816a93a3bbb109ccd6123e9a1798300a6ca51b94c2162818307db19641229415510a3ba9a47d130bda94a1d3f4428a50094cf3425f81490d4815b85497463614a3f099f3896da4929814750ab2c7951ed6a6b101094a59358c022420d34c5a82a7435a7945fa8ce503a7a249a183eaff8452f827c8b58f110524bb242c9b307c557194a4d4725e8a2d93ea6a2ffa5656591042d01d24e96226876abf6867d1d15f3d0a9aa230105f513c04c06654a12c0a03167a2a45d0081d9708a88648ab24f30ada849a7f97ab2d51019b323962032b9560522b476b756a746c41ac861290ad778e6fa7a917386ffcf0980b27ad731a7803aaa3d85a11661746563139fb45a49bc57ffcd00ab39aaee82885dfb75959d622046041c9271598c3a13e15152cd682bb546695d05a0c82aca0aaaca7a1b11194b0606109026a28395baa1eaaaf2d81176a49672e4b6bb59517e26a3b90404aa580ae1b3b3aebea237ec6294e19a6de726496073d4f326852cb1b06a1ff4386916c123ba63138b0e9f1a902cb8517829eea611bab1a303fdb1496da0f5c836174fa2952022f9e039052d415b77a415a96b14ebb709fd0a40471a88f6810e87435b6513f2ca78957fbb517483e0818b06478a186f117d478b35c52b03beb693d0b15e3f33475d74037094d54e5290421afac175ee0920a4d2bb8dae560def683b6f285257a2c50514d8eab170f1930a99b1e8e3062634b8d9a703a3c5490372b4ab2784eae4653f3465342785829d52f13798fc8d59d9e15b3b1eb5ef501af4fba254613af50a12c52327037d7bb573b15d51a513eb016300b9712411097209cd427adb55666fdd13f6e8b3194b36f5c534ff8653fe8f49a4341ae02b2ff098399b9dc1b834bd1120f0a7e9d950146c34114f6423f0784ea0b843a9b83c4cb936956b37a16992e32b98205ba5aa325bb747f86457c532284e3164a4ac9b40c5c90c61ba762994305db4942cb7478228abe0b16cf93bf1e4cc33b37c217f8af5771c291ea73de8aaffaf5aef203be111ac5f3bbbd458c6df25b419317abe056774f1342b201c443bab61c89c5a377c47c45aefccb904f7c382a98b28beaa165c4b50a127d1671b6671c8388d82bc3c8be709c3c1632c679610a1c8cb17abc7065ca5ac4c1c6c0eab54c4c2dfd1091013579c04b6fb08bc808db7507388c4fa98d51011f8786c35ca2c1a0d9620e04ad992c40cfa572de35cab115c979f1ff8dcbf89e4874c035e55fefa8cad719a32d8197ae5877ffd4c2bb31c8bbc1b30b4578bb7c98f8961d44ab208d5c15df9ac1a682c100e386d1a3cc833a3bfafb834a5b76625ccae55ac62d910a8c20a8d91c97cc0cb63f36294b4c15be832cd5f4ab2e3798078bced7e9bdbe3cc541c262a48461e05c109c626eb8f440fd79cffbb25d90a708ddca29d00c42891b9e8632823829a0797cd0a4293efa3c876ffa4bc41cce16d2c3a8c50a1378d1ffe009af30b3f56aacfae1d0aea659b4a5a8751c24d76c6a6b5ad2d498d1eb03ccd87ac0c5fc394d9760b597c94fc85d33c69ee5d3d2560b2b61376b7f8c67367dd31f7c90ef79cbe2e8d3bf12d22e920aa040ffd2dc7bd2c0e736473d4d493d5b100d7e96fcd4518dc539bd90e228aa1f5d83032d2797c00a8c900921ac679f100b8c90d286c588fde6ce55011f55bd259da7a66a8dc86cdd2f49ecd6a41cd0b3769e51f925a4c0089a80c94bfa8151a8889127d38142d69d22d69a46a7bb63d1884dc38a6da2103a6b57bd74a600b7af520aa4d00a8c100b9900d5d6f10999a0098c000a89489815f0d724f8d93f586bf161dae88cdaffb4cf51c4daa26d09e5e89e064b0aa450d78c60dd9980ddd9adddda6dddd63ddd7d1dbcc1288ec35dc9026a4ac77dd1db4c3984bd59cdddc996739cd12ddf390196cb3d96810d7ecbeb406983de259d7e50d5d89405d7e248463e50ff09863cdf92e908f51de0261ccbe258dc0e54bffd7dcf86771ff65d5303dee092fc948229d9096e314b438faa1dc1f8ad69c7bc43974de1ca6c8bdd35cc24e8de1b0e84909041063e91b4194437bea83e5099182edc26fe53a77cd82b4ee4ab2175fd62af30aee132cee44c4ede4483e243c8df455ee41f693c2fae6931dee45beed64f3eb542de96064de545dee292ebe379a1e55caee63ffee02e19e59e55da633ee645257fde45e21efdd86baee701eee508bcb015e156722ee86392d219b0d233bde47baee880dde660a8681ac278832ee947a157a692e4499be88baee9630de491f5e6800e60932eea4961813931d18192e69baeeaddd2e76c616e2577ffcea32eeb0f91667d18b6a89ee9abaeeb9edde97981bfd9a163b32eec4c52d4bb86e5ed99e7bbaeecd8d7eb56d1cfdd93ccc32eeda9f150e911da8f9becd374e7bbded90dddec82f6da43d80ab13eede57e88974613d79ebed91e45d04291dbbee6d251097251e28dce16cf8e6e626eeefb9e140d66d4874ea9c4895cb963791bd4ed5b4e62672ea6f63e25e16e9213ceef11dfef472e7cc73ecd02bf59044f76eccee501ca0fc0446272cae90ccf250eef17a12ef129bf23099d1e5c6a15a91e241adf2252713914a915f4a8f0af5846905036af931f3a3879d02cd75887d72a6ff40ec1f23ee620306f21f01120d0141575670a831c9106ae8d075fa40df4ffcb9fab8c5b5811415faa599d1da410ed476ff6ba92f4ddc5d04cffcc47d259e0f89e021ef752a4650470a7e0a208f30c4242582d279549270b206047291c7d2f287ff6874f95606dd47c895c8115cc48a9bb4d7c2d572584ba612691d308519935fcd73c58d2c4e486e0ff55f4884ffa13df875fdff809c27fde38710c026a601b156ef334c563e8a3fab050713eb662f9043143e00a6408fe62a52ffc0c86ee43f1fb09f229cab23c86bbfc81061fa927c9fd9535e299a5604ea275575e521af09b57b404a139ff3c6b3afb402a3efce5ef214f58b81ccfecbc7f3e1903157d71a755a3f154a1c109176814e6c4b9ab393f0ba200c14f60bf0a02f96dea97ff50e142860d1d3e64e8c8a04152af3efdc39851e3468e1d3d7e041952e44892254d9e449952e54a962d5d628c05aad4447e106dde7ce8c320a44a02334032d8cf92c10c0a250a349570622588131b12304820e1517ea31a023598b49f414743058ac2eaa85fcfaf38cd9e9d4a5153a7976dddbe851b57ee5cba75476a728a566f439d48b362ad9961a7c28990d27235dc702226865e05229c68c9a122833e1216e447a011e5cc618512dd1bba215546764d9f469d5af56ad61833e515bdb72f3fb2520137325861e1e284a668f2738470f7e085980a6f251ed120d37e54fbcd26cb7453d4d8d549b7c69e5dfb76eea75f07adae7736547e96013b969c703af8ff84b3230f1798183e3fc313b52a1728b6df28839b36d3b4ac1fcef8612cbcbdaeeb2e41051764b0c1ef0632f02cf704620c30c1f8516421c0325cc89401b3222cb910e313b03287a82aeab9c1c832b13983d28bf02c041ba4b1461b6f7cebc19a62c449149af403acc5841cd36fa1462c214f20a99412b11fe306a3aac885302baf37139f240e3a1e6534a8341cbf04334c3135d271cb9b82e4273d34f96964a1d9a4349245fa98247121c70854d1a00215c2edc58400b36aace3fa016c49336d9a714c45176534bb320f7d28480e09a5893985f813284087faac7350a3a87372a2141572afcd7e38d50f4b3c4fcd0d5244bb6c345659679deb515719da84caff40299d48b84f334da8914af60c95384f3f13922ada4cf57139f80c754e214be4bbf5445869c5365b6d4bb2b55a8620b164cf20e17411292bf9c9c00748444972d24131915311539dfc10b80fe59d92bd4dc0f216ad44b70538606dbbedf7a14644a9442218479c53d0df844cb20247eae5e7be211f3648115fd3aa60d482f5fa576091475694e08ff7e2ad448ca554f637452c5668932427728458f54e8e2d649277e699469371d60b12f9301965e6cc343dcce5616d326514471c497763a00dd4b967abaf7614b6a9636c4468486c1ed287a79ff641ddadcf4eda4bacd7667bb59fd1863bee7eab6ebb6ebbdbd2d18779e5e6bbef2d91bcf66ec1076f4947ff812a91da6fc517bfa9111f8c569b70c9271fc970ae16663cf3cc79c23872ca3f073da34e18b904634546015b73d5b73e92cadf40b92874d967d724158c81c37c75ddfbdda4128a05ba8491d867275ef64c40b9fdf4c477673ec2835da729154d8aa7bef84f189909e30a44d9bb79eff732e5428c41f1a47af3a98f8595dbd185f97bf71dda6494df052ae515b6cec7df7aec93afa4fdf7bdc7c4e3d6078a4ce4cf80e64bdffa1481b8ff350f13a2805ef4ec77400a9aaf13afb01dfffcd740b93d308213b9442bca5741129ecf13adc89ee9fad73d0e4e2d7e467b5d2c4a3843031eaf74ebcb802852d7425735c214be5b1f3f58b1161a16f18031b9e1ed08ff300a53b0908711da840f3e489321decf88573c222892783b4798ed89d5d95706e637912a62d18c25cc040a83981f2f7ef126611ca3412e51c633d671869e780529d628900a8cc212cbe3a00fc5b6477e94a21532b463228dd88998a4708d8ef0232057870948f8200330bc1d2b2ca2484e9e118facd8e21a3be6035348126d941485d30849114614b093af4ce42743b947024092945ffb58d72a29b629069114ad84653061f9094db42283abfccdd3d2553653784d6810d9843377e98384390293ab2c85265d294c6e723313af00c53191394e72629315adb46237d5b9ce7f7842138c208523cb394f425e8214ad784526d2c94e7ef613239ec804235a410a3571d2939ca520052818118b6dfad3a10ffd482632f14e4680821417a5672a2efa4b46e4539f100569485f225192967478225d5b4000003b);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `zend_course`
--
CREATE DATABASE IF NOT EXISTS `zend_course` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zend_course`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Md Ashikur Rahman', 'mdashikurrahman@gmail.com', '123456'),
(2, 'Naima', 'naima@gmail.com', '58963'),
(3, 'Naima', 'naima@gmail.com', '58963'),
(4, 'Naima', 'naima@gmail.com', '58963'),
(5, 'Naima', 'naima@gmail.com', '58963'),
(6, 'Naima', 'naima@gmail.com', '58963'),
(7, 'ashik', 'ashik@gmail.com', '4578');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
