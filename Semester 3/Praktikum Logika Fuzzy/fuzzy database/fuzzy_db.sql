-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 03:14 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuzzy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_emp`
--

CREATE TABLE `tb_emp` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `usia` tinyint(2) DEFAULT NULL,
  `masakerja` tinyint(2) DEFAULT NULL,
  `gaji` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_emp`
--

INSERT INTO `tb_emp` (`id`, `nama`, `usia`, `masakerja`, `gaji`) VALUES
(1, 'Anik', 30, 6, 750000),
(2, 'Yudi', 48, 17, 1255000),
(3, 'Inawati', 36, 14, 1500000),
(4, 'Rudi', 37, 4, 1040000),
(5, 'Riska', 42, 12, 950000),
(6, 'Aman', 39, 13, 1600000),
(7, 'Dudi', 37, 5, 1250000),
(8, 'Rini', 32, 1, 550000),
(9, 'Ratih', 35, 3, 735000),
(10, 'Panjul', 25, 2, 860000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelompok`
--

CREATE TABLE `tb_kelompok` (
  `id` int(10) NOT NULL,
  `nama_kelompok` varchar(25) DEFAULT NULL,
  `field_akses` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelompok`
--

INSERT INTO `tb_kelompok` (`id`, `nama_kelompok`, `field_akses`) VALUES
(1, 'Umur', 'usia'),
(2, 'Masa Kerja', 'masakerja'),
(3, 'Gaji', 'gaji');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id` int(10) NOT NULL,
  `nama_kriteria` varchar(30) DEFAULT NULL,
  `bawah` float(10,2) DEFAULT NULL,
  `tengah` float(10,2) DEFAULT NULL,
  `atas` float(10,2) DEFAULT NULL,
  `kelompok` tinyint(2) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id`, `nama_kriteria`, `bawah`, `tengah`, `atas`, `kelompok`, `keterangan`) VALUES
(1, 'Muda', 0.00, 30.00, 40.00, 1, 'Darah Muda'),
(2, 'Parobaya', 35.00, 45.00, 50.00, 1, NULL),
(3, 'Tua', 40.00, 50.00, 99.00, 1, NULL),
(4, 'Baru', 0.00, 5.00, 15.00, 2, NULL),
(5, 'Lama', 10.00, 25.00, 99.00, 2, NULL),
(6, 'Rendah', 0.00, 300000.00, 800000.00, 3, NULL),
(7, 'Sedang', 500000.00, 1000000.00, 1500000.00, 3, NULL),
(8, 'Tinggi', 1000000.00, 2000000.00, 100000000.00, 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_emp`
--
ALTER TABLE `tb_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelompok`
--
ALTER TABLE `tb_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_emp`
--
ALTER TABLE `tb_emp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_kelompok`
--
ALTER TABLE `tb_kelompok`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
