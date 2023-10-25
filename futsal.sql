-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221113.0eded7bb43
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2022 pada 16.42
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

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
-- Struktur dari tabel `tabel_lapangan`
--

CREATE TABLE `tabel_lapangan` (
  `id` int(11) NOT NULL,
  `id_lapangan` int(11) DEFAULT NULL,
  `nama_lapangan` varchar(25) DEFAULT NULL,
  `jenis_lapangan` varchar(25) DEFAULT NULL,
  `harga_normal` int(11) DEFAULT NULL,
  `harga_weekend` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_lapangan`
--

INSERT INTO `tabel_lapangan` (`id`, `id_lapangan`, `nama_lapangan`, `jenis_lapangan`, `harga_normal`, `harga_weekend`) VALUES
(1, 100, 'Zary Futsal', 'Rumput Sintetis', 80000, 100000),
(2, 101, 'Lapangan belakang', 'Vinyl', 90000, 100000),
(3, 102, 'Lapangan depan', 'Karpet Plastik', 70000, 100000),
(4, 103, 'Lapangan Kiri', 'Parquet', 85000, 100000),
(5, 104, 'Lapangan Kanan', 'Taraflex', 75000, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemesanan`
--

CREATE TABLE `tabel_pemesanan` (
  `id` int(11) NOT NULL,
  `id_lapangan` int(11) DEFAULT NULL,
  `nama_penyewa` varchar(50) DEFAULT NULL,
  `tanggal_sewa` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pemesanan`
--

INSERT INTO `tabel_pemesanan` (`id`, `id_lapangan`, `nama_penyewa`, `tanggal_sewa`, `status`) VALUES
(1, 100, 'Raditya', '2022-11-10', 'Lunas'),
(2, 101, 'Aryan', '2022-11-08', 'Lunas'),
(3, 102, 'Heru Prawira', '2022-11-05', 'Lunas'),
(4, 103, 'Budi Pramana', '2022-11-06', 'Belum Lunas'),
(5, 104, 'Raihan', '2022-11-01', 'Lunas'),
(6, 104, 'Andi', '2022-11-11', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sewa`
--

CREATE TABLE `tabel_sewa` (
  `id` int(11) NOT NULL,
  `nama_penyewa` varchar(25) DEFAULT NULL,
  `tanggal_sewa` date DEFAULT NULL,
  `hari_sewa` varchar(10) DEFAULT NULL,
  `metode_bayar` varchar(25) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `jenis_lapangan` varchar(25) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `durasi_sewa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_sewa`
--

INSERT INTO `tabel_sewa` (`id`, `nama_penyewa`, `tanggal_sewa`, `hari_sewa`, `metode_bayar`, `status`, `jenis_lapangan`, `harga`, `durasi_sewa`) VALUES
(1, 'Raditya', '2022-11-10', 'Kamis', 'Kas', 'Lunas', 'Vinyl', 90000, 1),
(2, 'Aryan', '2022-11-08', 'Selasa', 'QRIS', 'Lunas', 'Parquet', 85000, 1),
(3, 'Heru Prawira', '2022-11-05', 'Sabtu', 'QRIS', 'Lunas', 'Rumput Sintetis', 200000, 2),
(4, 'Budi Pramana', '2022-11-06', 'Minggu', 'Kas', 'Belum Lunas', 'Taraflex', 100000, 1),
(5, 'Raihan', '2022-11-01', 'Selasa', 'Kas', 'Lunas', 'Rumput Sintetis', 160000, 2),
(6, 'Andi', '2022-11-11', 'Jumat', 'Kas', 'Lunas', 'Parquet', 85000, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_lapangan`
--
ALTER TABLE `tabel_lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_pemesanan`
--
ALTER TABLE `tabel_pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_sewa`
--
ALTER TABLE `tabel_sewa`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
