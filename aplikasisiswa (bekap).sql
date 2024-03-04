-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2024 pada 19.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasisiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `id` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`id`, `nama`, `password`, `akses`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rpl`
--

CREATE TABLE `rpl` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rpl`
--

INSERT INTO `rpl` (`Nis`, `Nama`, `No`, `Tanggal`, `Keterangan`) VALUES
(1, 'Fajar', 1, '2024-03-30', 'HADIR'),
(10, 'anak rpl', 1, '2024-03-02', 'SAKIT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Nis` varchar(20) NOT NULL,
  `Nama` text NOT NULL,
  `No` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Nis`, `Nama`, `No`, `Tanggal`, `keterangan`) VALUES
('01', 'FAJAR', 0, '0000-00-00', 'HADIR'),
('02', 'ARJUNA', 0, '1970-01-01', 'IZIN'),
('03', 'RAYHAN', 0, '1970-01-01', 'HADIR'),
('04', 'FADIO', 0, '0000-00-00', ''),
('05', 'ERIK', 0, '0000-00-00', ''),
('06', 'ANTON', 0, '0000-00-00', ''),
('07', 'FAREZA', 0, '0000-00-00', ''),
('08', 'RANGGA', 0, '0000-00-00', ''),
('09', 'ANDY ', 0, '0000-00-00', ''),
('1', 'FAJAR', 1, '2024-03-03', 'IZIN'),
('10', 'MAUDI', 0, '0000-00-00', ''),
('101', 'CAH SARPON', 0, '1970-01-01', 'HADIR'),
('11', 'ADIT YA', 0, '0000-00-00', ''),
('110', 'AMAIMAS', 0, '1970-01-01', 'SAKIT'),
('12', 'RAFLI', 0, '0000-00-00', ''),
('200', 'SONTOLOYO', 0, '2024-03-02', 'HADIR'),
('300', 'AUTAN', 0, '2026-12-01', 'IZIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbo`
--

CREATE TABLE `tbo` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbo`
--

INSERT INTO `tbo` (`Nis`, `Nama`, `No`, `Tanggal`, `Keterangan`) VALUES
(4, 'MUKIDI', 4, '2024-07-24', 'IZIN'),
(10, 'Anak Tbo', 1, '2024-03-22', 'HADIR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsm`
--

CREATE TABLE `tbsm` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbsm`
--

INSERT INTO `tbsm` (`Nis`, `Nama`, `No`, `Tanggal`, `Keterangan`) VALUES
(5, 'JANGKRIK', 8, '2024-03-17', 'SAKIT'),
(10, 'anak TBsm', 1, '2024-03-11', 'IZIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkr`
--

CREATE TABLE `tkr` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tkr`
--

INSERT INTO `tkr` (`Nis`, `Nama`, `No`, `Tanggal`, `Keterangan`) VALUES
(8, 'Capek', 19, '2024-03-27', 'IZIN'),
(10, 'cah tkr', 1, '2024-03-22', 'HADIR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nama_lengkap` varchar(25) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rpl`
--
ALTER TABLE `rpl`
  ADD PRIMARY KEY (`Nis`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Nis`);

--
-- Indeks untuk tabel `tbo`
--
ALTER TABLE `tbo`
  ADD PRIMARY KEY (`Nis`);

--
-- Indeks untuk tabel `tbsm`
--
ALTER TABLE `tbsm`
  ADD PRIMARY KEY (`Nis`);

--
-- Indeks untuk tabel `tkr`
--
ALTER TABLE `tkr`
  ADD PRIMARY KEY (`Nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
