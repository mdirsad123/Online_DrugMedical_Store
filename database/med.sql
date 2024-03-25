-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 05:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `med`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customerid`, `date`) VALUES
(23, 7, '2019-07-05 15:21:55'),
(27, 8, '2024-03-22 05:20:17'),
(28, 8, '2024-03-22 05:44:15'),
(29, 10, '2024-03-22 12:00:32'),
(30, 10, '2024-03-22 12:00:41'),
(31, 10, '2024-03-22 12:04:31'),
(32, 10, '2024-03-22 12:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `id` int(10) NOT NULL,
  `cartid` int(10) UNSIGNED NOT NULL,
  `productid` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`id`, `cartid`, `productid`, `quantity`) VALUES
(28, 27, '2', 7),
(29, 27, '1', 2),
(30, 27, '2', 1),
(31, 29, '6', 6),
(32, 29, '2', 1),
(33, 29, '1', 2),
(34, 29, '7', 1),
(35, 29, '8', 1),
(36, 29, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(120) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zipcode` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `zipcode`) VALUES
(1, 'nikhil', 'parasu', 'nikhil.parasu517@gmail.com', 'nikhil', 'Nellore', 'Nellore', '524004'),
(8, 'md', 'irsad', 'mdirsad@gmail.com', '123', 'chembur', 'mumbai', '400070'),
(9, 'md', 'irsad', 'mdirsadtech7305@gmail.com', '123', 'kurla west mumbai maharastra', 'mumbai', '700070'),
(10, 'irsad', 'shaikh', 'irsad@gmail.com', '123', 'kurla', 'mumbai', '400070');

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`name`, `pass`) VALUES
('expert', 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`name`, `pass`) VALUES
('manager', 'manager'),
('Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `med_serial` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `med_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `med_manufacturer` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `med_image` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `med_descr` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `med_price` decimal(6,2) NOT NULL,
  `used_for_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`med_serial`, `med_name`, `med_manufacturer`, `med_image`, `med_descr`, `med_price`, `used_for_id`, `type_id`) VALUES
('1', 'Abbie\'s Pure Maple Syrup', 'irsad', '61no24MTIbL.jpg', 'this is Syrup for child', '30.00', 16, 12),
('2', 'Acetaminophen (Tylenol)', 'Johnson & Johnson', 'img1.jfif', 'Acetaminophen is an analgesic and antipyretic medication used to relieve pain and reduce fever.', '487.00', 17, 13),
('3', 'Amoxicillin', 'Pfizer', 'img2.jfif', 'Amoxicillin is an antibiotic used to treat bacterial infections, including respiratory tract infections and urinary tract infections.', '980.00', 18, 14),
('4', 'Sertraline (Zoloft)', 'Pfizer', 'img3.jfif', 'Sertraline is an antidepressant medication used to treat depression, obsessive-compulsive disorder (OCD), panic disorder, and social anxiety disorder.', '1902.00', 19, 13),
('5', 'Loratadine (Claritin)', 'Bayer', 'img5.jpg', 'Loratadine is an antihistamine used to relieve symptoms of allergies, such as sneezing, runny nose, and itching.', '1253.09', 20, 13),
('6', 'Ranitidine (Zantac)', 'GlaxoSmithKline', 'img6.jpg', 'Ranitidine is an H2 blocker medication used to reduce stomach acid production and treat conditions such as heartburn, acid reflux, and ulcers.', '835.35', 21, 13),
('7', 'Fluoxetine (Prozac)', 'Eli Lilly and Company', 'img7.jpg', 'Fluoxetine is an antidepressant medication belonging to the selective serotonin reuptake inhibitor (SSRI) class, used to treat depression, obsessive-compulsive disorder (OCD), bulimia nervosa, and panic disorder.', '2088.48', 22, 14),
('8', 'Hydrochlorothiazide', 'Teva Pharmaceutical Industries', 'img8.jpg', 'Hydrochlorothiazide is a diuretic medication used to treat high blood pressure (hypertension) and edema (fluid retention) by increasing urine production.', '848.00', 23, 13);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(10) NOT NULL,
  `type_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(12, 'Syrup'),
(13, 'tablets'),
(14, 'capsules');

-- --------------------------------------------------------

--
-- Table structure for table `used_for`
--

CREATE TABLE `used_for` (
  `used_for_id` int(10) UNSIGNED NOT NULL,
  `used_for_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `used_for`
--

INSERT INTO `used_for` (`used_for_id`, `used_for_name`) VALUES
(16, 'blood presser'),
(17, 'Pain relief, fever reduction'),
(18, 'Bacterial infections'),
(19, 'Depression, anxiety disorders'),
(20, 'Allergy relief'),
(21, 'Acid reflux, ulcers'),
(22, 'Depression, OCD, bulimia nervosa, panic disorder'),
(23, 'Hypertension, edema');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_serial`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `used_for`
--
ALTER TABLE `used_for`
  ADD PRIMARY KEY (`used_for_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `used_for`
--
ALTER TABLE `used_for`
  MODIFY `used_for_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
