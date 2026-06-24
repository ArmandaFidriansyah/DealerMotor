-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2026 pada 19.41
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
-- Database: `dealermotor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_unit`
--

CREATE TABLE `penjualan_unit` (
  `no_rangka` varchar(30) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `pembeli` varchar(100) NOT NULL,
  `harga` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_unit`
--

INSERT INTO `penjualan_unit` (`no_rangka`, `tipe`, `pembeli`, `harga`) VALUES
('0877', 'Honda Scoopy', 'madun', 20000000.00),
('22222', 'Honda Beat', 'ARMANDA FIDRIANSYAH', 15000000.00),
('5678', 'Honda Beat', 'bagus', 17500000.00),
('9000', 'Honda Vario 160', 'bin', 16900000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `no_rangka` varchar(20) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `pembeli` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `kembalian` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`no_transaksi`, `tanggal`, `no_rangka`, `tipe`, `pembeli`, `harga`, `bayar`, `kembalian`) VALUES
('TRX0001', '2026-06-22', '0877', 'Honda Scoopy', 'madun', 20000000, 21500000, 1500000),
('TRX0002', '2026-06-22', '9000', 'Honda Vario 160', 'bintang', 16900000, 17000000, 100000),
('TRX0003', '2026-06-22', '5678', 'Honda Beat', 'bagus', 17500000, 18000000, 500000),
('TRX0004', '2026-06-22', '9000', 'Honda Vario 160', 'bin', 16900000, 18000000, 1100000),
('TRX0005', '2026-06-24', '22222', 'Honda Beat', 'ARMANDA FIDRIANSYAH', 15000000, 20000000, 5000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penjualan_unit`
--
ALTER TABLE `penjualan_unit`
  ADD PRIMARY KEY (`no_rangka`);

--
-- Indeks untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
