-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 06:30 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artgallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(10) NOT NULL,
  `aname` varchar(225) NOT NULL,
  `ph` varchar(10) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `aname`, `ph`, `email`) VALUES
(1, 'Veekas', '9456778823', 'veekas@gmail.com'),
(2, 'A.Das', '9888123451', 'adas@gmail.com'),
(3, 'Lakshaya', '9253686712', 'lakshaya@gmail.com'),
(4, 'KC Paliya', '9000156781', 'paliyakc@gmail.com'),
(5, 'Deepika Parashar', '8976342135', 'deepikap@gmail.com'),
(6, 'Rahul Jain', '7895612345', 'jainrahul@gmail.com'),
(7, 'Moti Lal', '7894123415', 'mlal@gmail.com'),
(8, 'Suraj Kumar', '9734578961', 'skumar@gmail.com'),
(9, 'Lalit Singh', '9073037888', 'singhlalit@gmail.com'),
(10, 'Anita Kohli', '9734598961', 'akohli@gmail.com'),
(11, 'RS Agarwal', '7685423415', 'rsagarwal@gmail.com'),
(12, 'Rohini', '8965473214', 'rohini@gmail.com'),
(13, 'Prateek Agarwal', '7023368884', 'pagarwal@gmail.com'),
(14, 'Yash Raj', '9056783241', 'yashr@gmail.com'),
(15, 'Aditi Agarwal', '9413858889', 'agarwalanju468@gmail.com'),
(16, 'Aditi Khemka', '7073037888', 'aditikhemka03@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

CREATE TABLE `artwork` (
  `id` int(10) NOT NULL,
  `arname` varchar(225) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`id`, `arname`, `price`) VALUES
(1, 'After Rain Bliss', '10000'),
(2, 'The Sparrow', '6000'),
(3, 'AUTUMN COUPLE', '11000'),
(4, 'Moment Of Raindrops', '15000'),
(5, 'Ganesha', '9000'),
(6, 'The Cool Chimp', '18000'),
(7, 'Radha-Krishna', '25000'),
(8, 'Vintage Wall', '8000'),
(9, 'Weaver', '9000'),
(10, 'The Horses', '12000'),
(11, 'The Shiva', '20000'),
(12, 'Enchanted Garden', '17000'),
(13, 'Confusion Colors', '13000'),
(14, 'Gautum Buddha', '10000'),
(15, 'London Telephone Booth', '21000'),
(16, 'The Flower', '12000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `a_id` int(10) NOT NULL,
  `address` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `payment` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `zip` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `a_id`, `address`, `city`, `payment`, `state`, `zip`) VALUES
(1, 'Aditi Khemka', 1, 'Geeta Bhawan,petch Area', 'Bhilwara', 'CASH ON DELIVERY', 'Rajasthan', '311001'),
(3, 'Aakansha', 1, 'talwandi', 'kota', 'CASH ON DELIVERY', 'Rajasthan', '311020'),
(4, 'Aakansha', 4, 'talwandi', 'kota', 'CASH ON DELIVERY', 'Rajasthan', '311020'),
(5, 'Vatasal Singh', 8, 'iit roorke', 'Roorke', 'CASH ON DELIVERY', 'Uttrakhand', '311029'),
(6, 'Aarushi', 10, 'Vaishali Nagar', 'Ajmer', 'CASH ON DELIVERY', 'Rajasthan', '312020'),
(7, 'Aarushi', 12, 'Vaishali Nagar', 'Ajmer', 'CASH ON DELIVERY', 'Rajasthan', '312020'),
(9, 'Aditi Khemka', 7, 'Geeta Bhawan,petch Area', 'Bhilwara', 'CASH ON DELIVERY', 'Rajasthan', '311001'),
(10, 'yukta', 11, 'sector 45', 'Noida', 'CASH ON DELIVERY', 'UP', '300167'),
(11, 'yukta', 6, 'sector 45', 'Noida', 'CASH ON DELIVERY', 'UP', '300167'),
(12, 'Aditi Khemka', 13, 'Geeta Bhawan,petch Area', 'Bhilwara', 'CASH ON DELIVERY', 'Rajasthan', '311001'),
(33, 'Yukta', 9, 'sector 45', 'Noida', 'CASH ON DELIVERY', 'UP', '300167'),
(34, 'Aditi Khemka', 5, 'Geeta Bhawan,petch Area', 'Bhilwara', 'CASH ON DELIVERY', 'Rajasthan', '311001'),
(35, 'Vatasal Singh', 4, 'iit roorke', 'Roorke', 'CASH ON DELIVERY', 'Uttrakhand', '311029'),
(36, 'yukta', 2, 'sector 45', 'Noida', 'CASH ON DELIVERY', 'UP', '300167'),
(37, 'Rohit', 15, 'Andheri,WEST', 'Mumbai', 'CASH ON DELIVERY', 'Maharashtra', '321456'),
(38, 'Aditi Khemka', 3, 'sector 45', 'Noida', 'CASH ON DELIVERY', 'UP', '300167'),
(39, 'Rohit', 9, 'Andheri,WEST', 'Mumbai', 'CASH ON DELIVERY', 'Maharashtra', '321456'),
(40, 'Bhawana', 4, 'mody university', 'lakshmangrah', 'CASH ON DELIVERY', 'Rajasthan', '332311'),
(41, 'Aditi Khemka', 6, 'mody university', 'lakshmangrah', 'CASH ON DELIVERY', 'Rajasthan', '332311'),
(42, 'prateek', 6, 'Geeta Bhawan,petch Area', 'Bhilwara', 'CASH ON DELIVERY', 'Rajasthan', '311001'),
(43, 'samridhi', 1, 'mody university', 'lakshmangrah', 'CASH ON DELIVERY', 'Rajasthan', '332311'),
(44, 'Aadita', 3, 'mody university', 'lakshmangrah', 'CASH ON DELIVERY', 'Rajasthan', '332311'),
(45, 'abc', 11, 'Vaishali Nagar', 'Ajmer', 'CASH ON DELIVERY', 'Rajasthan', '312020');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `ph` varchar(10) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `ph`, `email`) VALUES
(1, 'Aditi Khemka', 'aditi', '7073037888', 'aditik@gmail.com'),
(2, 'Vatasal Singh', 'vatsala', '9456778823', 'vatsala@gmail.com'),
(3, 'Aakansha', '123', '9034526172', 'aakansha@gmail.com'),
(4, 'Aarushi', '1234', '9462255264', 'aarushi@gmail.com'),
(5, 'Yukta', 'yukta', '9456778823', 'yukta@gmail.com'),
(6, 'Rohit', 'rohit', '7896454321', 'rohit@gmail.com'),
(7, 'Bhawana', 'bhawana', '8890946969', 'bhawana@gmail.com'),
(8, 'prateek', 'prateek', '7023368884', 'prateek@gmail.com'),
(9, 'samridhi', 'samridhi', '9979706570', 'sam@gmail.com'),
(10, 'Aadita', 'aadita', '9888123451', 'aadita@gmail.com'),
(11, 'abc', 'abc', '1244545678', 'veekas@gmail.com'),
(12, 'Anju', 'anju', '7023388860', 'anju@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artwork`
--
ALTER TABLE `artwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`a_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `artwork`
--
ALTER TABLE `artwork`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artwork`
--
ALTER TABLE `artwork`
  ADD CONSTRAINT `artwork_ibfk_1` FOREIGN KEY (`id`) REFERENCES `artist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
