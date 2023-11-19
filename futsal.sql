-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221113.0eded7bb43
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 04:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_lapangan`
--

CREATE TABLE `tabel_lapangan` (
  `id` int(11) NOT NULL,
  `id_lapangan` int(11) DEFAULT NULL,
  `nama_lapangan` varchar(25) DEFAULT NULL,
  `jenis_lapangan` varchar(25) DEFAULT NULL,
  `harga_normal` int(11) DEFAULT NULL,
  `harga_weekend` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pemesanan`
--

CREATE TABLE `tabel_pemesanan` (
  `id` int(11) NOT NULL,
  `id_lapangan` int(11) DEFAULT NULL,
  `nama_penyewa` varchar(50) DEFAULT NULL,
  `tanggal_sewa` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_sewa`
--

CREATE TABLE `tabel_sewa` (
  `id` int(11) NOT NULL,
  `nama_penyewa` varchar(25) DEFAULT NULL,
  `tanggal_sewa` date DEFAULT NULL,
  `hari_sewa` varchar(10) DEFAULT NULL,
  `metode_bayar` varchar(25) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `durasi_sewa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_lapangan`
--
ALTER TABLE `tabel_lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pemesanan`
--
ALTER TABLE `tabel_pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_sewa`
--
ALTER TABLE `tabel_sewa`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
