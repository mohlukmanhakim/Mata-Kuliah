-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2019 pada 05.46
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pencarian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kodeadmin` varchar(6) NOT NULL,
  `namaadmin` varchar(50) NOT NULL,
  `passwordadmin` varchar(30) NOT NULL,
  `leveladmin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`kodeadmin`, `namaadmin`, `passwordadmin`, `leveladmin`) VALUES
('ADM001', 'ADMIN', 'ADMIN', 'ADMIN'),
('ADM002', 'USER', 'USER', 'USER'),
('adm003', 'lukman', 'lukman', 'lukman'),
('hakim', 'sopo', 'hakim', 'hakim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_input`
--

CREATE TABLE `tbl_input` (
  `judul` varchar(50) NOT NULL,
  `kategori` enum('Kendaraan','Elektronik','Aksesoris','Dokumen','Lain-lain') NOT NULL,
  `tempatpenemuan` text NOT NULL,
  `tglpenemuan` date NOT NULL,
  `nohp` int(12) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_input`
--

INSERT INTO `tbl_input` (`judul`, `kategori`, `tempatpenemuan`, `tglpenemuan`, `nohp`, `detail`) VALUES
('sopo', 'Elektronik', 'bali', '2019-05-04', 2147483647, 'brebre');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inputan`
--

CREATE TABLE `tbl_inputan` (
  `nomor` varchar(6) NOT NULL,
  `judul` text NOT NULL,
  `kategori` enum('Kendaraan','Elektronik','Aksesoris','Dokumen','Lainlain') NOT NULL,
  `tempatpenemuan` text NOT NULL,
  `tglpenemuan` date NOT NULL,
  `nohp` int(12) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inputan`
--

INSERT INTO `tbl_inputan` (`nomor`, `judul`, `kategori`, `tempatpenemuan`, `tglpenemuan`, `nohp`, `detail`) VALUES
('NMR001', 'aku nemu hp opo', 'Elektronik', 'k', '2001-05-18', 897765667, 'test');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kodeadmin`);

--
-- Indeks untuk tabel `tbl_inputan`
--
ALTER TABLE `tbl_inputan`
  ADD PRIMARY KEY (`nomor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
