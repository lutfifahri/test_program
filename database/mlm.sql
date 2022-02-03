-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 08:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 5.6.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(220) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` varchar(220) NOT NULL,
  `id_upline` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `alamat`, `no_telpon`, `id_upline`) VALUES
(1, 'Lutfi Fahri', 'Jl.Kawat I gg Mussolah', '085833003458', 1),
(13, 'Sity Dwi Yushpika', 'Jl.Panca Budi', '08765765765', 2),
(14, 'Nandang Pratiwi', 'jl.Pertiwi No 15', '0828382567', 6),
(15, 'Adi Pratama', 'jl.Sebelah Kanan No.1', '0821635761', 5),
(17, 'Faisal Al fasih', 'jl.Kawat III', '082835285', 7),
(18, 'Jidan Armana', 'Jl.Kawat IV', '0828365675', 9),
(19, 'Cindi Pratiwi', 'jl.bilal no.12', '08237875878', 3),
(22, 'Andi Sanjaya', 'jl.yosudarso', '082357657', 1),
(23, 'Novita Sari', 'jl.kartini no.89', '0823452765477', 2),
(25, 'Agung Pratama', 'jl.pancing', '08287626487', 3),
(26, 'Jilan Syahrani', 'Jl.Kawat II', '0823476287', 5),
(27, 'Hariono Ashari', 'jl.pancabudi', '0823487876', 8),
(28, 'Rizal Armando', 'jl.mustofa', '084365765', 9),
(29, 'Aldri yandi', 'jl.marelan', '08238647876', 6),
(30, 'Yumna', 'jl.kawat I', '083276876', 7),
(31, 'Ela Ismalia', 'jl.mabar', '082458787', 8),
(32, 'Wahyu Pratiwi', 'jl.mabar no.2', '082387687', 10);

-- --------------------------------------------------------

--
-- Table structure for table `upline`
--

CREATE TABLE `upline` (
  `id_upline` int(11) NOT NULL,
  `downline` varchar(225) NOT NULL,
  `upline` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upline`
--

INSERT INTO `upline` (`id_upline`, `downline`, `upline`) VALUES
(1, 'Joko Widiyanto', 'Rizky Afandy'),
(2, 'Joko Widiyanto', 'M. Rifky Pratama'),
(3, 'Ardiyansyah', 'Nia Syafrina'),
(4, 'Ardiyansyah', 'Agil Wardana'),
(5, 'Bambang Ashari', 'Aqsa Revana'),
(6, 'Bambang Ashari', 'Chairuriza'),
(7, 'Rizal Syahdani', 'Candra Gunawan'),
(8, 'Rizal Syahdani', 'Novita Sari'),
(9, 'Hamdan Pramono', 'Iqbal Hanafi'),
(10, 'Hamdan Pramono', 'Darma Pangestu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upline`
--
ALTER TABLE `upline`
  ADD PRIMARY KEY (`id_upline`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `upline`
--
ALTER TABLE `upline`
  MODIFY `id_upline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
