-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 29, 2024 at 12:24 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u707768463_appspk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_debit_banjarmasin`
--

CREATE TABLE `tbl_debit_banjarmasin` (
  `id_debit_banjarmasin` int(11) NOT NULL,
  `id_sub_banjarmasin` int(11) NOT NULL,
  `no_debit` varchar(30) NOT NULL,
  `tgl_debit_nota` date NOT NULL,
  `customer` varchar(50) NOT NULL,
  `dpp` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `total_debit_nota` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_debit_banjarmasin`
--

INSERT INTO `tbl_debit_banjarmasin` (`id_debit_banjarmasin`, `id_sub_banjarmasin`, `no_debit`, `tgl_debit_nota`, `customer`, `dpp`, `ppn`, `total_debit_nota`, `deskripsi`) VALUES
(6, 3, 'DB001', '2024-01-31', 'Ical', 2000000, 2000, 2002000, ''),
(7, 8, 'DB001', '2024-02-03', 'Ical', 30000, 3000, 33000, ''),
(8, 10, 'DB001', '2024-02-07', 'Ical', 200000, 2000, 202000, ''),
(9, 10, 'DB002', '2024-02-08', 'Ical', 100000, 2000, 102000, ''),
(10, 12, '001/GLM/2024', '2024-02-14', 'PT Smart', 50000000, 5500000, 55500000, ''),
(11, 12, '002/GLM/2024', '2024-02-29', 'PT Smartt', 20000000, 2200000, 22200000, 'Test'),
(12, 12, 'DB001', '2024-02-17', 'Ical', 200000, 2000, 202000, 'Test'),
(13, 13, 'DN-001', '2024-03-10', 'PT ASTRA', 400000000, 44000000, 444000000, 'BA 200 TON '),
(14, 13, 'DN-002', '2024-03-16', 'PT ASTRA', 100000000, 11000000, 111000000, 'BA 100 TON'),
(16, 22, '055', '2024-01-22', 'PT. Trans Kontainer', 6400000, 70400, 6470400, 'Tagihan'),
(17, 22, '055', '2024-01-22', 'PT. Trans Kontainer', 5507098, 0, 5507098, 'Tagihan'),
(18, 20, '054', '2024-01-22', 'PT. Trans Kontainer', 5800000, 63800, 5863800, 'Tagihan'),
(19, 20, '054', '2024-01-22', 'PT. Trans Kontainer', 6005869, 0, 6005869, 'Tagihan'),
(20, 32, '056', '2024-01-22', 'PT. Trans Kontainer', 7800000, 85800, 7885800, 'Tagihan'),
(21, 32, '056', '2024-01-22', 'PT. Trans Kontainer', 6011419, 0, 6011419, 'Tagihan'),
(22, 34, '057', '2024-01-22', 'PT. Trans Kontainer', 1100000, 12100, 1112100, 'Tagihan'),
(23, 37, '058', '2024-01-22', 'PT. Trans Kontainer', 3700000, 40700, 3740700, 'Tagihan'),
(24, 37, '058', '2024-01-22', 'PT. Trans Kontainer', 2881547, 0, 2881547, 'Tagihan'),
(25, 25, '059', '2024-01-22', 'PT. Trans Kontainer', 2200000, 24200, 2224200, 'Tagihan'),
(26, 25, '059', '2024-01-22', 'PT. Trans Kontainer', 4465095, 0, 4465095, 'Tagihan'),
(27, 33, '060', '2024-01-22', 'PT. Trans Kontainer', 4200000, 46200, 4246200, 'Tagihan'),
(28, 33, '060', '2024-01-22', 'PT. Trans Kontainer', 2732918, 0, 2732918, 'Tagihan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_debit_jakarta`
--

CREATE TABLE `tbl_debit_jakarta` (
  `id_debit_jakarta` int(11) NOT NULL,
  `id_sub_jakarta` int(11) NOT NULL,
  `no_debit` varchar(30) NOT NULL,
  `tgl_debit_nota` date NOT NULL,
  `customer` varchar(50) NOT NULL,
  `dpp` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `total_debit_nota` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_debit_jakarta`
--

INSERT INTO `tbl_debit_jakarta` (`id_debit_jakarta`, `id_sub_jakarta`, `no_debit`, `tgl_debit_nota`, `customer`, `dpp`, `ppn`, `total_debit_nota`, `deskripsi`) VALUES
(1, 1, 'DB001', '2024-01-28', 'Ical', 200000, 2000, 202000, ''),
(2, 3, 'DB001', '2024-01-31', 'Ical', 2000000, 2000, 2002000, ''),
(3, 5, 'DN-001', '2024-02-11', 'VALINDO', 50000000, 5500000, 55500000, ''),
(4, 5, 'DN-002', '2024-02-12', 'VALINDO', 50000000, 5500000, 55500000, ''),
(5, 6, 'DN-003', '2024-02-13', 'VALINDO', 50000000, 5500000, 55500000, ''),
(6, 6, 'DN-004', '2024-02-14', 'VALINDO', 50000000, 5500000, 55500000, ''),
(9, 7, 'DN-005', '2024-02-28', 'VALINDO', 150000000, 1500000, 151500000, ''),
(11, 8, 'DB001', '2024-02-08', 'Ical', 11000, 1100, 12100, ''),
(13, 10, 'DN-002', '2024-02-08', 'RJCH', 40000000, 4400000, 44400000, ''),
(14, 9, 'DN-001', '2024-02-08', 'RJCH', 70000000, 7700000, 77700000, ''),
(15, 10, 'DN-003', '2024-02-11', 'RJCH', 40000000, 4400000, 44400000, ''),
(16, 11, 'DN-004', '2024-02-12', 'RJCH', 140000000, 14400000, 154400000, ''),
(17, 52, '010', '2024-02-27', 'Bapak Iwan', 15250000, 0, 15250000, 'Tagihan'),
(18, 37, '011', '2024-02-27', 'Bapak Iwan', 18300000, 0, 18300000, 'Tagihan'),
(19, 55, '012', '2024-02-27', 'Bapak Iwan', 21500000, 0, 21500000, 'Tagihan'),
(20, 77, '006', '2024-01-19', 'PT. Priskila Prima Makmur', 13690500, 150596, 13841096, 'Tagihan'),
(21, 79, '007', '2024-01-19', 'PT. Priskila Prima Makmur', 15500000, 170500, 15670500, 'Tagihan'),
(22, 86, '009', '2024-01-19', 'PT. Priskila Prima Makmur', 14000000, 154000, 14154000, 'Tagihan'),
(23, 84, '038', '2024-01-19', 'PT. Bersaudara ', 11500000, 126500, 11626500, 'Tagihan'),
(24, 81, '044', '2024-01-19', 'PT. Priskila Prima Makmur', 2550000, 28050, 2578050, 'Tagihan'),
(25, 85, '045', '2024-01-19', 'PT. Agritama Mitra Sejati', 16000000, 176000, 16176000, 'Tagihan'),
(26, 87, '046', '2024-01-19', 'PT. Rolimex', 38000000, 418000, 38418000, 'Tagihan'),
(27, 83, '008', '2024-01-19', 'PT. Priskila Prima Makmur', 6725250, 73978, 6799228, 'Tagihan'),
(28, 95, '107', '2024-01-26', 'PT. Priskila Prima Makmur', 18000000, 198000, 18198000, 'Tagihan'),
(29, 96, '097', '2024-01-23', 'PT. Priskila Prima Makmur', 18500000, 203500, 18703500, 'Tagihan'),
(30, 97, '098', '2024-01-23', 'PT. Priskila Prima Makmur', 15500000, 170500, 15670500, 'Tagihan'),
(31, 103, '147', '2024-01-30', 'PT. Rolimex', 19200000, 211200, 19411200, 'Tagihan'),
(32, 110, '245', '2024-02-20', 'PT. Tanto Maju Bersama', 19782394, 217606, 20000000, 'Tagihan'),
(33, 111, '159', '2024-01-30', 'PT. Rolimex', 38000000, 418000, 38418000, 'Tagihan'),
(34, 119, '103', '2024-01-24', 'PT. SKETEK', 5200000, 57200, 5257200, 'Tagihan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(24, 1, 10),
(28, 2, 14),
(29, 2, 15),
(31, 1, 12),
(32, 3, 16),
(33, 3, 22),
(34, 4, 26),
(35, 4, 30),
(36, 5, 34),
(37, 5, 35),
(38, 6, 10),
(41, 6, 12),
(42, 6, 16),
(43, 6, 22),
(44, 6, 26),
(45, 6, 30),
(46, 6, 34),
(47, 6, 35),
(48, 7, 10),
(51, 7, 12),
(52, 7, 16),
(53, 7, 22),
(54, 7, 26),
(55, 7, 30),
(56, 7, 34),
(57, 7, 35),
(58, 6, 2),
(63, 5, 39),
(64, 5, 38),
(65, 3, 39),
(66, 3, 38),
(67, 6, 40),
(68, 1, 40),
(69, 4, 14),
(70, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'KELOLA MENU', 'kelolamenu', 'fa fa-server', 0, 'y'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(3, 'level PENGGUNA', 'userlevel', 'fa fa-users', 0, 'y'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 0, 'y'),
(10, 'Banjarmasin', '-', 'fa fa-archive', 0, 'y'),
(11, 'Induk SPK', 'tbl_spk_banjarmasin', '-', 10, 'y'),
(12, 'Jakarta', '-', 'fa fa-archive', 0, 'y'),
(13, 'Induk SPK', 'tbl_spk_jakarta', '-', 12, 'y'),
(14, 'PROSES PEKERJAAN - BJM', 'tbl_spk_banjarmasin', 'fa fa-location-arrow', 0, 'y'),
(15, 'PROSES PEKERJAAN - JKT', 'tbl_spk_jakarta', 'fa fa-location-arrow', 0, 'y'),
(16, 'APPROVAL SPK - BJM', '-', 'fa fa-check', 0, 'y'),
(17, 'WAITING LIST', 'tbl_sub_banjarmasin/home_wait', '-', 16, 'y'),
(18, 'SUDAH DISETUJUI', 'tbl_sub_banjarmasin/home_acc', '-', 16, 'y'),
(19, 'DIBATALKAN', 'tbl_sub_banjarmasin/home_batal', '-', 16, 'y'),
(20, 'INPUT WAITING LIST', 'tbl_waiting_banjarmasin', '-', 10, 'y'),
(21, 'INPUT WAITING LIST', 'tbl_waiting_jakarta', '-', 12, 'y'),
(22, 'APPROVAL SPK - JKT', '-', 'fa fa-check', 0, 'y'),
(23, 'WAITING LIST', 'tbl_sub_jakarta/home_wait', '-', 22, 'y'),
(24, 'SUDAH DISETUJUI', 'tbl_sub_jakarta/home_acc', '-', 22, 'y'),
(25, 'DIBATALKAN', 'tbl_sub_jakarta/home_batal', '-', 22, 'y'),
(26, 'APPROVAL KASIR - BJM', '-', 'fa fa-check', 0, 'y'),
(27, 'WAITING LIST', 'tbl_sub_banjarmasin/wait_kasir', '-', 26, 'y'),
(28, 'SUDAH DISETUJUI', 'tbl_sub_banjarmasin/home_acc_kasir', '-', 26, 'y'),
(29, 'DIBATALKAN', 'tbl_sub_banjarmasin/home_batal_kasir', '-', 26, 'y'),
(30, 'APPROVAL KASIR - JKT', '-', 'fa fa-check', 0, 'y'),
(31, 'WAITING LIST', 'tbl_sub_jakarta/wait_kasir', '-', 30, 'y'),
(32, 'SUDAH DISETUJUI', 'tbl_sub_jakarta/home_acc_kasir', '-', 30, 'y'),
(33, 'DIBATALKAN', 'tbl_sub_jakarta/home_batal_kasir', '-', 30, 'y'),
(34, 'DEBIT NOTA - BJM', 'tbl_debit_banjarmasin', 'fa fa-money', 0, 'y'),
(35, 'DEBIT NOTA - JKT', 'tbl_debit_jakarta', 'fa fa-money', 0, 'y'),
(36, 'UPDATE PEKERJAAN - BJM', 'tbl_sub_banjarmasin/home_vic', 'fa fa-arrows', 0, 'y'),
(37, 'UPDATE PEKERJAAN - JKT', 'tbl_sub_jakarta/home_vic', 'fa fa-arrows', 0, 'y'),
(38, 'SPK BANJARMASIN', 'tbl_spk_banjarmasin', 'fa fa-table', 0, 'y'),
(39, 'SPK JAKARTA', 'tbl_spk_jakarta', 'fa fa-table', 0, 'y'),
(40, 'DATA VENDOR', 'tbl_vendor', 'fa fa-address-book', 0, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan_banjarmasin`
--

CREATE TABLE `tbl_pekerjaan_banjarmasin` (
  `id_pekerjaan_banjarmasin` int(11) NOT NULL,
  `id_sub_banjarmasin` int(11) NOT NULL,
  `tgl_stuf` date DEFAULT NULL,
  `tgl_selesai_stuf` date DEFAULT NULL,
  `etd_kapal` date DEFAULT NULL,
  `eta_kapal` date DEFAULT NULL,
  `tgl_mulai_doring` date DEFAULT NULL,
  `tgl_selesai_doring` date DEFAULT NULL,
  `tgl_bap` date DEFAULT NULL,
  `jumlah_dikerjakan` int(11) DEFAULT NULL,
  `sisa_belum` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_angkut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pekerjaan_banjarmasin`
--

INSERT INTO `tbl_pekerjaan_banjarmasin` (`id_pekerjaan_banjarmasin`, `id_sub_banjarmasin`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `last_kerja`, `qty`, `unit_angkut`) VALUES
(3, 12, '0000-00-00', '0000-00-00', '2024-02-08', '2024-02-08', '2024-02-10', '0000-00-00', '0000-00-00', 5000, 45000, 'on proses', 'proses', 'Gojo Satoru - 2024-02-08 13:24:30', 50000, 'KAPAL'),
(4, 13, '2024-02-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 100, 900, 'Proses Muat', 'Muat Hari Pertama Klm. Mutiara Hati', 'muhammad - 2024-02-20 07:09:40', 1000, 'Trucking'),
(5, 13, '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 200, 800, 'Proses Muat', 'Muat Hari Ke 2 Klm. Mutiara Hati', 'muhammad - 2024-02-20 07:13:52', 1000, 'Trucking'),
(6, 13, '2024-02-23', '2024-02-23', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Selesai Muat', 'Muat Hari Ke 3 Klm. Mutiara Hati ( Selesai Muat )', 'muhammad - 2024-02-20 07:23:00', 1000, 'Trucking'),
(7, 14, '0000-00-00', '0000-00-00', '2024-02-23', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Kapal ', 'Kapal Klm. Mutiara Hati Tiba Di Port Samarinda', 'muhammad - 2024-02-20 07:27:30', 1000, 'Klm'),
(8, 14, '0000-00-00', '0000-00-00', '2024-02-23', '2024-02-25', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Kapal ', 'Kapal Klm. Mutiara Hati Tiba Di Port Samarinda', 'yasky - 2024-02-20 07:29:02', 1000, 'Klm'),
(9, 14, '0000-00-00', '0000-00-00', '2024-02-23', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Kapal ', 'Kapal Klm. Mutiara Hati Tiba Di Port Samarinda', 'yasky - 2024-02-20 07:29:25', 1000, 'Klm'),
(10, 15, '0000-00-00', '0000-00-00', '2024-02-23', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Kapal Berangkat', 'Kapal Berangkat Dari Port Palu', 'muhammad - 2024-02-20 07:33:05', 1000, 'Klm'),
(11, 15, '0000-00-00', '0000-00-00', '2024-02-23', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'Kapal Tiba', 'Kapal Tiba Port Samarinda', 'muhammad - 2024-02-20 07:33:52', 1000, 'Klm'),
(12, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 100, 900, 'Proses Bongkar', 'Pembongkaran Klm. Mutiara Hati Hari Pertama', 'muhammad - 2024-02-20 07:37:13', 1000, 'Trucking'),
(13, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 200, 800, 'Proses Bongkar', 'Pembongkaran Klm. Mutiara Hati Hari Ke 2', 'muhammad - 2024-02-20 07:37:58', 1000, 'Trucking'),
(14, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 200, 800, 'Proses Bongkar', 'Pembongkaran Klm. Mutiara Hati Hari Ke 2', 'muhammad - 2024-02-20 07:38:00', 1000, 'Trucking'),
(15, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 200, 800, 'Proses Bongkar', 'Pembongkaran Klm. Mutiara Hati Hari Ke 2', 'muhammad - 2024-02-20 07:38:13', 1000, 'Trucking'),
(16, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '2024-02-28', '0000-00-00', 1000, 0, 'Selesai Bongkar', 'Pembongkaran Klm. Mutiara Hati Hari Ke 3 ( Selesai Bongkar )', 'muhammad - 2024-02-20 07:39:58', 1000, 'Trucking'),
(17, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '2024-02-28', '2024-03-07', 1000, 0, 'BAP Klm. Mutiara Hati', '', 'muhammad - 2024-02-20 07:40:44', 1000, 'Trucking'),
(18, 13, '2024-02-23', '2024-02-23', '0000-00-00', '0000-00-00', '2024-02-26', '2024-02-28', '2024-03-07', 1000, 0, 'Selesai Muat', 'Muat Hari Ke 3 Klm. Mutiara Hati ( Selesai Muat )', 'muhammad - 2024-02-20 07:43:15', 1000, 'Trucking'),
(19, 16, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '2024-02-28', '2024-03-08', 1000, 0, 'BAP Klm. Mutiara Hati', '', 'muhammad hafidz anshari - 2024-02-20 07:52:22', 1000, 'Trucking'),
(20, 16, '2024-02-19', '2024-02-20', '2024-02-19', '2024-02-20', '0000-00-00', '0000-00-00', '2024-03-08', 1000, 0, 'BAP Klm. Mutiara Hati', 'Kapal Belum Sandar', 'Yudha Noviansyah - 2024-02-20 08:06:24', 1000, 'Trucking Colt Diesel'),
(21, 16, '2024-02-19', '2024-02-20', '2024-02-19', '2024-02-20', '0000-00-00', '0000-00-00', '2024-03-08', 100, 900, 'BAP Klm. Mutiara Hati', 'Kapal Belum Sandar', 'vic - 2024-02-20 08:07:24', 1000, 'Trucking Colt Diesel'),
(22, 15, '0000-00-00', '0000-00-00', '2024-02-23', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', 100, 900, 'Kapal Tiba', 'Kapal Tiba Port Samarinda', 'vic - 2024-02-20 08:07:43', 1000, 'Klm'),
(23, 15, '0000-00-00', '0000-00-00', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 200, 800, 'proses', 'proses', 'vic - 2024-02-20 08:09:26', 1000, 'Klm'),
(24, 39, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-13', '2024-01-16', '2024-01-24', 44, 0, 'SELESAI', 'SELESAI SUDAH DI TAGIH TGL 01/02/2024', 'Yudha Noviansyah - 2024-02-28 03:52:12', 44, 'Trucking'),
(25, 42, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-17', '2024-01-23', '2024-02-26', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI KANTOR PI)', 'Yudha Noviansyah - 2024-02-28 03:55:16', 220, 'Trucking'),
(26, 45, '2024-01-03', '2024-01-06', '2024-01-11', '2024-01-14', '2024-01-15', '2024-01-23', '2024-01-30', 700, 0, 'SELESAI', 'SELESAI SUDAH DI TAGIH TGL 01/02/2024', 'Yudha Noviansyah - 2024-02-28 03:58:45', 700, 'Klm'),
(27, 23, '2024-01-01', '2024-01-03', '2024-01-04', '2024-01-05', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'KAPAL SELESAI MUAT', 'KAPAL TIBA DI PORT PALU', 'muhammad - 2024-02-28 04:29:02', 850, 'Klm'),
(28, 24, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-08', '2024-01-16', '2024-02-13', 850, 0, 'KAPAL SELESAI BONGKAR', 'BERITA ACARA SUDAH DI TAGIHKAN', 'muhammad - 2024-02-28 04:30:35', 850, 'Trucking'),
(29, 68, '2024-01-17', '2024-01-26', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'SELESAI MUAT', '', 'muhammad - 2024-02-28 04:32:29', 850, 'Trucking'),
(30, 69, '0000-00-00', '0000-00-00', '2024-01-27', '2024-01-31', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'KAPAL BERANGKAT', 'Kapal Tiba Port Samarinda', 'muhammad - 2024-02-28 04:34:09', 850, 'Klm'),
(31, 70, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-01', '2024-02-07', '0000-00-00', 850, 0, 'SELESAI BONGKAR', 'BA MASIH DI KEBUN', 'muhammad - 2024-02-28 04:34:50', 850, 'Trucking / Imbal'),
(32, 79, '2024-01-30', '2024-02-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'SELESAI MUAT', '', 'muhammad - 2024-02-28 04:39:59', 1000, 'Trucking'),
(33, 80, '0000-00-00', '0000-00-00', '2024-02-07', '2024-02-09', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'KAPAL BERANGKAT', 'KAPAL TIBA DI PORT SAMARINDA', 'muhammad - 2024-02-28 04:40:38', 1000, 'Klm'),
(34, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-10', '0000-00-00', '0000-00-00', 92, 908, 'Proses Muat', 'PEMBONGKARAN PERTAMA VIA KAPAL IMBAL DOA MAMA', 'muhammad - 2024-02-28 04:42:25', 1000, 'Trucking / Imbal'),
(35, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-11', '0000-00-00', '0000-00-00', 172, 828, 'Proses Muat', 'PEMBONGKARAN HARI KE 2 VIA KAPAL IMBAL AIR BUNGA 80 TON', 'muhammad - 2024-02-28 04:43:38', 1000, 'Trucking / Imbal'),
(36, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-16', '0000-00-00', '0000-00-00', 272, 728, 'Proses Muat', 'PEMBONGKARAN KE 3 VIA KAPAL IMBAL CAHAYA FATHIAN 100 TON', 'muhammad - 2024-02-28 04:45:42', 1000, 'Trucking / Imbal'),
(37, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-21', '0000-00-00', '0000-00-00', 286, 714, 'Proses Muat', 'PEMBONGKARAN KE 4 VIA TRUCKING 14 TON', 'muhammad - 2024-02-28 04:47:01', 1000, 'Trucking / Imbal'),
(38, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-22', '0000-00-00', '0000-00-00', 407, 593, 'Proses Muat', 'PEMBONGKARAN KE 5 VIA TRUCKING 121 TON', 'muhammad - 2024-02-28 04:48:02', 1000, 'Trucking / Imbal'),
(39, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-23', '0000-00-00', '0000-00-00', 422, 578, 'Proses Muat', 'PEMBONGKARAN KE 6 VIA TRUCKING 15,5 TON', 'muhammad - 2024-02-28 04:49:32', 1000, 'Trucking / Imbal'),
(40, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-23', '0000-00-00', '0000-00-00', 526, 474, 'Proses Bongkar', 'PEMBONGKARAN KE 7 VIA TRUCKING 104 TON', 'muhammad - 2024-02-28 04:50:55', 1000, 'Trucking / Imbal'),
(41, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-25', '0000-00-00', '0000-00-00', 534, 466, 'Proses Bongkar', 'PEMBONGKARAN KE 8 VIA TRUCKING 8 TON', 'muhammad - 2024-02-28 04:52:04', 1000, 'Trucking / Imbal'),
(42, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 548, 452, 'Proses Bongkar', 'PEMBONGKARAN KE 9 VIA TRUCKING 14,5 TON', 'muhammad - 2024-02-28 04:53:01', 1000, 'Trucking / Imbal'),
(43, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 564, 436, 'Proses Bongkar', 'PEMBONGKARAN KE 10 VIA TRUCKING 15,5 TON', 'muhammad - 2024-02-28 04:53:48', 1000, 'Trucking / Imbal'),
(44, 139, '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 50, 500, 'Proses Muat', 'PEMUATAN HARI PERTAMA 50 TON', 'muhammad - 2024-02-28 04:55:34', 550, 'Trucking'),
(45, 139, '2024-02-26', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 150, 400, 'Proses Muat', 'PEMUATAN KE 2 100 TON', 'muhammad - 2024-02-28 04:56:17', 550, 'Trucking'),
(46, 139, '2024-02-27', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 263, 287, 'Proses Muat', 'PEMUATAN KE 3 133,35 TON', 'muhammad - 2024-02-28 04:57:33', 550, 'Trucking'),
(47, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-07', '0000-00-00', '0000-00-00', 70000, 3783500, 'PROSES DOORING', 'DOORING KE 1 70.000 KG TUJUAN PT. PSKY', 'muhammad - 2024-02-28 05:17:41', 3853500, 'Trucking'),
(48, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-12', '0000-00-00', '0000-00-00', 239000, 3614500, 'PROSES DOORING', 'DOORING KE 2 169.000 KG TUJUAN PT. PSKY', 'muhammad - 2024-02-28 05:19:35', 3853500, 'Trucking'),
(49, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-20', '0000-00-00', '0000-00-00', 289000, 3564500, 'PROSES DOORING', 'DOORING KE 3 50.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:20:38', 3853500, 'Trucking'),
(50, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-21', '0000-00-00', '0000-00-00', 339000, 3514500, 'PROSES DOORING', 'DOORING KE 4 50.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:21:22', 3853500, 'Trucking'),
(51, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-22', '0000-00-00', '0000-00-00', 399000, 3454500, 'PROSES DOORING', 'DOORING KE 5 60.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:22:09', 3853500, 'Trucking'),
(52, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-22', '0000-00-00', '0000-00-00', 419000, 3434500, 'PROSES DOORING', 'DOORING KE 5 20.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:23:38', 3853500, 'Trucking'),
(53, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-23', '0000-00-00', '0000-00-00', 479000, 3374500, 'PROSES DOORING', 'DOORING KE 6 60.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:24:27', 3853500, 'Trucking'),
(54, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-24', '0000-00-00', '0000-00-00', 499000, 3354500, 'PROSES DOORING', 'DOORING KE 7 20.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:25:37', 3853500, 'Trucking'),
(55, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-26', '0000-00-00', '0000-00-00', 579000, 3274500, 'PROSES DOORING', 'DOORING KE 8 80.000 KG TUJUAN PT. LTW', 'muhammad - 2024-02-28 05:29:29', 3853500, 'Trucking'),
(56, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-27', '0000-00-00', '0000-00-00', 649000, 3204500, 'PROSES DOORING', 'DOORING KE 10 70.000 KG TUJUAN PT. PSKY', 'muhammad - 2024-02-28 05:31:28', 3853500, 'Trucking'),
(57, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-31', '0000-00-00', '0000-00-00', 879000, 2974500, 'PROSES DOORING', 'DOORING KE 12 230.000 KG TUJUAN PT. MMG', 'muhammad - 2024-02-28 05:35:25', 3853500, 'Trucking'),
(58, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-15', '0000-00-00', '0000-00-00', 72000, 889750, 'PROSES DOORING', 'Dooring Pertama 72 Ton', 'muhammad - 2024-02-28 07:58:03', 961750, 'Trucking'),
(59, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-16', '0000-00-00', '0000-00-00', 142350, 819400, 'PROSES DOORING', 'Dooring Ke 2 70,35 Ton', 'muhammad - 2024-02-28 08:00:20', 961750, 'Trucking'),
(60, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-18', '0000-00-00', '0000-00-00', 222350, 739400, 'PROSES DOORING', 'Dooring Ke 3 80 Ton', 'muhammad - 2024-02-28 08:01:04', 961750, 'Trucking'),
(61, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-11', '0000-00-00', '0000-00-00', 297050, 664700, 'PROSES DOORING', 'Dooring Ke 4 74,7 Ton', 'muhammad - 2024-02-28 08:02:46', 961750, 'Trucking'),
(62, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-12', '0000-00-00', '0000-00-00', 371350, 590400, 'PROSES DOORING', 'Dooring Ke 5 74,3 Ton', 'muhammad - 2024-02-28 08:04:30', 961750, 'Trucking'),
(63, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-14', '0000-00-00', '0000-00-00', 422350, 539400, 'PROSES DOORING', 'Dooring Ke 6 51 Ton', 'muhammad - 2024-02-28 08:05:16', 961750, 'Trucking'),
(64, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '0000-00-00', '0000-00-00', 478000, 483750, 'PROSES DOORING', 'Dooring Ke 7 55,65 Ton', 'muhammad - 2024-02-28 08:06:01', 961750, 'Trucking'),
(65, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-21', '0000-00-00', '0000-00-00', 541600, 420150, 'PROSES DOORING', 'Dooring Ke 8 63,6 Ton', 'muhammad - 2024-02-28 08:06:52', 961750, 'Trucking'),
(66, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-22', '0000-00-00', '0000-00-00', 621350, 340400, 'PROSES DOORING', 'Dooring Ke 9 79,75 Ton', 'muhammad - 2024-02-28 08:08:02', 961750, 'Trucking'),
(67, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-23', '0000-00-00', '0000-00-00', 660100, 301650, 'PROSES DOORING', 'Dooring Ke 10 38,75 Ton', 'muhammad - 2024-02-28 08:10:03', 961750, 'Trucking'),
(68, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 745350, 216400, 'PROSES DOORING', 'Dooring Ke 11 85,25 Ton', 'muhammad - 2024-02-28 08:11:42', 961750, 'Trucking'),
(69, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 822750, 139000, 'PROSES DOORING', 'Dooring Ke 12 77,4 Ton', 'muhammad - 2024-02-28 08:13:30', 961750, 'Trucking'),
(70, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-19', '0000-00-00', '0000-00-00', 88000, 2657850, 'PROSES DOORING', 'Dooring Hari Pertama 88 Ton', 'muhammad - 2024-02-28 08:19:02', 2745850, 'Trucking'),
(71, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-21', '0000-00-00', '0000-00-00', 123600, 2622250, 'PROSES DOORING', 'Dooring Ke 2 35,6 Ton', 'muhammad - 2024-02-28 08:20:17', 2745850, 'Trucking'),
(72, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-31', '0000-00-00', '0000-00-00', 219600, 2526250, 'PROSES DOORING', 'Dooring Ke 3 96 Ton', 'muhammad - 2024-02-28 08:21:12', 2745850, 'Trucking'),
(73, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-28', '0000-00-00', '0000-00-00', 291600, 2454250, 'PROSES DOORING', 'Dooring Ke 4 72 Ton', 'muhammad - 2024-02-28 08:23:50', 2745850, 'Trucking'),
(74, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-29', '0000-00-00', '0000-00-00', 371700, 2374150, 'PROSES DOORING', 'Dooring Ke 5 80,1 Ton', 'muhammad - 2024-02-28 08:24:54', 2745850, 'Trucking'),
(75, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-30', '0000-00-00', '0000-00-00', 393300, 2352550, 'PROSES DOORING', 'Dooring Ke 6 21,6 Ton', 'muhammad - 2024-02-28 08:26:14', 2745850, 'Trucking'),
(76, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-02', '0000-00-00', '0000-00-00', 473300, 2272550, 'PROSES DOORING', 'Dooring Ke 7 80 Ton', 'muhammad - 2024-02-28 08:28:22', 2745850, 'Trucking'),
(77, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-05', '0000-00-00', '0000-00-00', 529300, 2216550, 'PROSES DOORING', 'Dooring Ke 8 56 Ton', 'muhammad - 2024-02-28 08:29:32', 2745850, 'Trucking'),
(78, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-08', '0000-00-00', '0000-00-00', 649300, 2096550, 'PROSES DOORING', 'Dooring Ke 9 120 Ton', 'muhammad - 2024-02-28 08:30:09', 2745850, 'Trucking'),
(79, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-11', '0000-00-00', '0000-00-00', 713300, 2032550, 'PROSES DOORING', 'Dooring Ke 10 64 Ton', 'muhammad - 2024-02-28 08:30:49', 2745850, 'Trucking'),
(80, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-12', '0000-00-00', '0000-00-00', 785300, 1960549, 'PROSES DOORING', 'Dooring Ke 11 72 Ton', 'muhammad - 2024-02-28 08:31:48', 2745849, 'Trucking'),
(81, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-15', '0000-00-00', '0000-00-00', 833300, 1912550, 'PROSES DOORING', 'Dooring Ke 12 48 Ton', 'muhammad - 2024-02-28 08:34:11', 2745850, 'Trucking'),
(82, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-15', '0000-00-00', '0000-00-00', 833300, 1912550, 'PROSES DOORING', 'Dooring Ke 12 48 Ton', 'muhammad - 2024-02-28 08:35:49', 2745850, 'Trucking'),
(83, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-16', '0000-00-00', '0000-00-00', 921300, 1824550, 'PROSES DOORING', 'Dooring Ke 13 88 Ton', 'muhammad - 2024-02-28 09:20:01', 2745850, 'Trucking'),
(84, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-21', '0000-00-00', '0000-00-00', 1049300, 1696550, 'PROSES DOORING', 'Dooring Ke 14 128 Ton', 'muhammad - 2024-02-28 09:20:54', 2745850, 'Trucking'),
(85, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-22', '0000-00-00', '0000-00-00', 1137300, 1608550, 'PROSES DOORING', 'Dooring Ke 15 88 Ton', 'muhammad - 2024-02-28 09:22:32', 2745850, 'Trucking'),
(86, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 1209300, 1536550, 'PROSES DOORING', 'Dooring Ke 16 72 Ton', 'muhammad - 2024-02-28 09:23:15', 2745850, 'Trucking'),
(87, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-27', '0000-00-00', '0000-00-00', 1271300, 1474550, 'PROSES DOORING', 'Dooring Ke 17 62 Ton', 'muhammad - 2024-02-28 09:23:50', 2745850, 'Trucking'),
(88, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-14', '0000-00-00', '0000-00-00', 1343300, 1402550, 'PROSES DOORING', 'Dooring Ke 18 72 Ton', 'muhammad - 2024-02-28 09:24:51', 2745850, 'Trucking'),
(89, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-15', '0000-00-00', '0000-00-00', 1415300, 1330550, 'PROSES DOORING', 'Dooring Ke 19 72 Ton', 'muhammad - 2024-02-28 09:25:35', 2745850, 'Trucking'),
(90, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-18', '0000-00-00', '0000-00-00', 1503300, 1242550, 'PROSES DOORING', 'Dooring Ke 20 88 Ton', 'muhammad - 2024-02-28 09:26:15', 2745850, 'Trucking'),
(91, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-19', '0000-00-00', '0000-00-00', 1587300, 1158550, 'PROSES DOORING', 'Dooring Ke 21 84 Ton', 'muhammad - 2024-02-28 09:28:41', 2745850, 'Trucking'),
(92, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '0000-00-00', '0000-00-00', 1622300, 1123550, 'PROSES DOORING', 'Dooring Ke 22 35 Ton', 'muhammad - 2024-02-28 09:29:18', 2745850, 'Trucking'),
(93, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-23', '0000-00-00', '0000-00-00', 1678300, 1067550, 'PROSES DOORING', 'Dooring Ke 23 56 Ton', 'muhammad - 2024-02-28 09:30:33', 2745850, 'Trucking'),
(94, 63, '0000-00-00', '0000-00-00', '2024-01-22', '2024-01-25', '2024-01-29', '2024-02-02', '2024-02-27', 0, 2, 'SELESAI', '', 'Cunda Raynata - 2024-02-28 10:44:30', 2, 'Trucking'),
(95, 48, '0000-00-00', '0000-00-00', '2024-01-17', '2024-02-20', '2024-01-25', '2024-02-21', '2024-02-27', 0, 2, 'SELESAI', '', 'Cunda Raynata - 2024-02-28 10:52:31', 2, 'Container'),
(96, 38, '0000-00-00', '0000-00-00', '2024-01-11', '2024-01-14', '2024-01-20', '2024-01-31', '2024-02-27', 0, 1, 'SELESAI', '', 'Cunda Raynata - 2024-02-28 10:59:26', 1, 'Trucking'),
(97, 57, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, 'SELESAI', '', 'Cunda Raynata - 2024-02-28 11:20:09', 1, 'Trucking'),
(98, 50, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-18', '2024-01-20', '2024-02-21', 56, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:29:27', 56, 'Trucking'),
(99, 66, '2023-12-26', '2023-12-29', '2024-01-01', '2024-02-04', '2024-01-09', '2024-01-13', '2024-01-22', 560, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:36:38', 560, 'Klm'),
(100, 67, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-09', '2024-01-13', '2024-01-22', 559, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:38:50', 559, 'Trucking'),
(101, 72, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-25', '2024-01-31', '2024-02-26', 110, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:42:03', 110, 'Trucking'),
(102, 73, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-27', '2024-01-29', '2024-02-21', 40, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:44:06', 40, 'Trucking'),
(103, 89, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-01', '2024-02-05', '2024-02-26', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-28 23:46:30', 220, 'Trucking'),
(104, 96, '2024-01-30', '2024-02-01', '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-17', '2024-02-26', 193, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 'Yudha Noviansyah - 2024-02-28 23:50:14', 193, 'Trucking'),
(105, 97, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-06', '2024-02-13', '0000-00-00', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 'Yudha Noviansyah - 2024-02-28 23:51:56', 220, 'Trucking'),
(106, 120, '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-10', '2024-02-12', '2024-02-15', '2024-02-21', 700, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-29 00:09:11', 700, 'Klm'),
(107, 121, '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-10', '2024-02-15', '2024-02-21', '2024-02-27', 700, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MARET)', 'Yudha Noviansyah - 2024-02-29 00:11:28', 700, 'Klm'),
(108, 122, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-11', '2024-02-12', '0000-00-00', 8, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 'Yudha Noviansyah - 2024-02-29 00:14:03', 8, 'Trucking'),
(109, 131, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-22', '0000-00-00', 43, 43507, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 'Yudha Noviansyah - 2024-02-29 00:16:02', 43550, 'Trucking'),
(110, 133, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-24', '2024-02-28', 250, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI KANTOR PI)', 'Yudha Noviansyah - 2024-02-29 00:17:37', 250, 'Trucking'),
(111, 150, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 404, 96, 'BELUM SELESAI', 'BELUM SELESAI', 'Yudha Noviansyah - 2024-02-29 00:29:59', 500, 'Trucking'),
(112, 55, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 869850, 91900, 'PROSES DOORING', 'Dooring Ke 13 47,1 Ton', 'muhammad - 2024-02-29 00:54:09', 961750, 'Trucking'),
(113, 56, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 1762300, 983550, 'PROSES DOORING', 'Dooring Ke 24 84 Ton', 'muhammad - 2024-02-29 00:54:56', 2745850, 'Trucking'),
(114, 86, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 948550, 2904950, 'PROSES DOORING', 'DOORING KE 13 69.550 KG TUJUAN PT. PSKY', 'muhammad - 2024-02-29 00:56:28', 3853500, 'Trucking'),
(115, 81, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 739, 261, 'Proses Bongkar', 'PEMBONGKARAN KE 11 VIA TRUCKING & IMBAL 175,5 TON', 'muhammad - 2024-02-29 00:58:32', 1000, 'Trucking / Imbal'),
(116, 139, '2024-02-28', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 353, 197, 'Proses Muat', 'PEMUATAN KE 4 90 TON', 'muhammad - 2024-02-29 00:59:44', 550, 'Trucking'),
(117, 28, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-02', '2024-01-03', '2024-01-03', 79500, 0, 'SELESAI DOORING', 'SELESAI DOORING ( SUDAH TAGIH )', 'muhammad - 2024-02-29 08:01:00', 79500, 'Trucking');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan_jakarta`
--

CREATE TABLE `tbl_pekerjaan_jakarta` (
  `id_pekerjaan_jakarta` int(11) NOT NULL,
  `id_sub_jakarta` int(11) NOT NULL,
  `tgl_stuf` date DEFAULT NULL,
  `tgl_selesai_stuf` date DEFAULT NULL,
  `etd_kapal` date DEFAULT NULL,
  `eta_kapal` date DEFAULT NULL,
  `tgl_mulai_doring` date DEFAULT NULL,
  `tgl_selesai_doring` date DEFAULT NULL,
  `tgl_bap` date DEFAULT NULL,
  `jumlah_dikerjakan` int(11) DEFAULT NULL,
  `sisa_belum` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit_angkut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pekerjaan_jakarta`
--

INSERT INTO `tbl_pekerjaan_jakarta` (`id_pekerjaan_jakarta`, `id_sub_jakarta`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `last_kerja`, `qty`, `unit_angkut`) VALUES
(1, 9, '2024-02-10', '2024-02-11', '2024-02-12', '2024-02-13', '2024-02-14', '2024-02-15', '2024-02-16', 50, 0, 'done', 'selesai', 'Gojo Satoru - 2024-02-08 13:36:53', 50, 'KAPAL'),
(2, 15, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 50, '', '', 'vic - 2024-02-20 08:42:51', 50, 'KONTAINER'),
(3, 15, '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 50, 'stuff', 'kapal stufing', 'vic - 2024-02-20 08:45:09', 50, 'KONTAINER'),
(4, 15, '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 2, 3, 'proses 2 ', '2 di kerjakan', 'vic - 2024-02-20 08:49:51', 5, 'KONTAINER'),
(5, 15, '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-24', '0000-00-00', 5, 0, 'selai', 'selai', 'vic - 2024-02-20 08:53:17', 5, 'KONTAINER'),
(6, 16, '2024-02-20', '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 500, '', '', 'Andi Arsyad - 2024-02-20 09:05:27', 500, 'container'),
(7, 33, '2024-02-07', '2024-02-08', '2024-02-12', '2024-02-16', '2024-02-17', '2024-02-17', '2024-02-27', 1, 0, 'selesai dooring', 'proses penagihan', 'Andi Arsyad - 2024-02-28 01:37:16', 1, 'Container'),
(8, 32, '2024-02-07', '2024-02-08', '2024-02-10', '2024-02-13', '2024-02-19', '2024-02-22', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 01:42:12', 1, 'Container'),
(9, 31, '2024-02-07', '2024-02-08', '2024-02-09', '2024-02-12', '2024-02-13', '2024-02-13', '2024-02-20', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-28 01:46:33', 1, 'Container'),
(10, 29, '2024-02-06', '2024-02-07', '2024-02-12', '2024-02-16', '2024-02-19', '2024-02-19', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 02:11:23', 1, 'Container'),
(11, 27, '2024-02-06', '2024-02-07', '2024-02-08', '2024-02-16', '2024-02-19', '2024-02-19', '0000-00-00', 0, 320, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 02:16:22', 320, 'Container'),
(12, 26, '2024-02-05', '2024-02-06', '2024-02-06', '2024-02-13', '2024-02-17', '2024-02-17', '2024-02-27', 1, 0, 'selesai dooring', 'proses penagihan', 'Andi Arsyad - 2024-02-28 03:20:58', 1, 'Container'),
(13, 25, '2024-02-05', '2024-02-06', '2024-02-05', '0000-00-00', '2024-02-15', '2024-02-15', '2024-02-20', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-28 03:38:27', 1, 'Container'),
(14, 22, '2024-02-05', '2024-02-05', '2024-02-06', '2024-02-12', '2024-02-17', '2024-02-17', '2024-02-21', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-28 03:46:53', 1, 'Container'),
(15, 21, '2024-02-01', '2024-02-01', '2024-02-05', '2024-02-19', '2024-02-24', '2024-02-24', '0000-00-00', 89, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 04:06:44', 89, 'Container'),
(16, 18, '2024-02-01', '2024-02-02', '2024-02-04', '2024-02-21', '2024-02-26', '2024-02-26', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 04:09:51', 1, 'Container'),
(17, 17, '2024-01-29', '2024-01-30', '2024-01-31', '2024-02-07', '2024-02-09', '2024-02-09', '2024-02-15', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-28 04:22:00', 1, 'Container'),
(18, 75, '2024-01-26', '2024-01-27', '2024-01-28', '2024-02-06', '2024-02-09', '2024-02-12', '0000-00-00', 5200, 0, 'selesai dooring', 'Bap blm kmbali', 'Andi Arsyad - 2024-02-28 04:29:09', 5200, 'Container'),
(19, 64, '2024-02-21', '2024-02-21', '2024-02-22', '2024-02-26', '2024-02-28', '2024-02-29', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 04:42:46', 1, 'Container'),
(20, 62, '2024-02-19', '2024-02-20', '2024-02-20', '2024-02-24', '2024-02-24', '2024-02-24', '0000-00-00', 4, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 04:52:47', 4, 'Container'),
(21, 63, '2024-02-21', '2024-02-21', '2024-02-21', '2024-02-22', '2024-02-22', '2024-02-23', '2024-02-23', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-28 05:02:47', 1, 'Trucking'),
(22, 55, '2024-02-18', '2024-02-19', '2024-02-20', '2024-02-24', '2024-02-28', '2024-02-28', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:25:47', 1, 'Container'),
(23, 54, '2024-02-12', '2024-02-13', '2024-02-20', '2024-02-23', '2024-02-24', '2024-02-26', '0000-00-00', 6, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:28:43', 6, 'Container'),
(24, 52, '2024-02-17', '2024-02-17', '2024-02-19', '2024-02-22', '2024-02-25', '2024-02-25', '0000-00-00', 1, 0, 'selesai dooring', 'sj kembali ke Jkt', 'Andi Arsyad - 2024-02-28 05:32:34', 1, 'Container'),
(25, 51, '2024-02-16', '2024-02-16', '2024-02-17', '2024-02-23', '2024-02-24', '2024-02-27', '0000-00-00', 4, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:40:11', 4, 'Container'),
(26, 45, '2024-02-12', '2024-02-13', '2024-02-14', '2024-02-19', '2024-02-27', '2024-02-27', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:46:30', 1, 'Container'),
(27, 44, '2024-02-15', '0000-00-00', '2024-02-17', '2024-02-21', '2024-02-23', '2024-02-23', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:49:32', 1, 'Container'),
(28, 43, '2024-02-13', '2024-02-13', '2024-02-13', '2024-02-23', '2024-02-23', '2024-02-23', '0000-00-00', 748, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 05:57:07', 748, 'Container'),
(29, 36, '2024-02-11', '2024-02-12', '2024-02-12', '0000-00-00', '2024-02-19', '2024-02-21', '0000-00-00', 3, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-28 06:01:41', 3, 'Container'),
(30, 72, '2024-02-18', '2024-02-18', '2024-02-22', '2024-02-25', '2024-02-27', '2024-02-27', '0000-00-00', 0, 343, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-28 07:07:43', 343, 'Container'),
(31, 19, '2024-01-31', '2024-01-31', '2024-02-02', '2024-02-08', '2024-02-16', '2024-02-16', '2024-02-26', 0, 1758, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-28 09:46:03', 1758, 'Container'),
(32, 71, '2024-02-17', '2024-02-17', '2024-02-21', '2024-02-27', '0000-00-00', '0000-00-00', '0000-00-00', 1192, -1191, '', 'Bl belum di tebus', 'Lutfi Anshari Muhammad - 2024-02-28 09:51:16', 1, 'Container'),
(33, 70, '2024-02-16', '2024-02-16', '2024-02-21', '2024-02-27', '0000-00-00', '0000-00-00', '0000-00-00', 0, 11189, 'blm dooring ', 'Bl belum di tebus', 'Lutfi Anshari Muhammad - 2024-02-28 09:56:22', 11189, 'Container'),
(34, 69, '2024-02-16', '2024-02-16', '2024-02-18', '2024-02-21', '2024-02-25', '2024-02-26', '2024-02-28', 0, 1218, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-28 10:00:25', 1218, 'Container'),
(35, 68, '2024-02-16', '2024-02-16', '2024-02-18', '2024-02-21', '2024-02-28', '0000-00-00', '0000-00-00', 0, 1089, 'proses dooring ', '', 'Lutfi Anshari Muhammad - 2024-02-28 10:02:46', 1089, 'Container'),
(36, 67, '2024-02-15', '2024-02-15', '2024-02-18', '2024-02-21', '2024-02-27', '2024-02-27', '0000-00-00', 0, 1220, 'selesai dooring', 'sj blm kembali ', 'Lutfi Anshari Muhammad - 2024-02-28 10:07:20', 1220, 'Container'),
(37, 66, '2024-02-15', '2024-02-15', '2024-02-18', '2024-02-21', '2024-02-28', '0000-00-00', '0000-00-00', 0, 1360, 'proses dooring ', '', 'Lutfi Anshari Muhammad - 2024-02-28 10:09:47', 1360, 'Container'),
(38, 110, '2024-01-15', '2024-01-16', '2024-02-17', '2024-02-25', '2024-01-27', '2024-02-27', '2024-02-13', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:31:54', 1, 'CONTAINER'),
(39, 112, '2024-01-17', '2024-01-17', '2024-01-18', '2024-01-18', '2024-01-18', '2024-01-19', '2024-02-05', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:35:35', 1, 'TRUCKING'),
(40, 77, '2024-01-02', '2024-01-03', '2024-01-06', '2024-01-08', '2024-01-09', '2024-01-09', '2024-01-17', 833, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:41:34', 833, 'CONTAINER'),
(41, 114, '2023-12-29', '2023-12-30', '2023-12-30', '2024-01-02', '2024-01-02', '2024-01-02', '2024-01-06', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:45:21', 1, 'CONTAINER'),
(42, 81, '2024-01-03', '2024-01-03', '2024-01-03', '2024-01-10', '2024-01-13', '2024-01-13', '2024-01-18', 104, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:49:29', 104, 'CONTAINER'),
(43, 83, '2024-01-03', '2024-01-04', '2024-01-05', '2024-01-09', '2024-01-11', '2024-01-11', '2024-01-17', 308, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 03:56:04', 308, 'CONTAINER'),
(44, 84, '2024-01-04', '2024-01-04', '2024-01-05', '2024-01-09', '2024-01-10', '2024-01-10', '2024-01-11', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 04:07:39', 1, 'CONTAINER'),
(45, 85, '2024-01-04', '2024-01-05', '2024-01-05', '2024-01-11', '2024-01-13', '2024-01-13', '2024-01-18', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 04:26:44', 1, 'CONTAINER'),
(46, 86, '2024-01-04', '2024-01-05', '2024-01-05', '2024-01-09', '2024-01-10', '2024-01-10', '2024-01-16', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 04:29:56', 1, 'CONTAINER'),
(47, 87, '2024-01-05', '2024-01-06', '2024-01-06', '2024-01-13', '2024-01-14', '2024-01-15', '2024-01-18', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 04:40:15', 1, 'CONTAINER'),
(48, 95, '2024-01-10', '2024-01-11', '2024-01-11', '2024-01-17', '2024-01-18', '2024-01-18', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 06:01:32', 1, 'CONTAINER'),
(49, 96, '2024-01-12', '2024-01-13', '2024-01-13', '2024-02-18', '2024-01-19', '2024-01-19', '2024-01-23', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 06:05:10', 1, 'CONTAINER'),
(50, 97, '2024-01-11', '2024-02-12', '2024-02-12', '2024-02-16', '2024-01-17', '2024-01-17', '2024-01-23', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 06:07:58', 1, 'CONTAINER'),
(51, 103, '2024-01-14', '2024-01-15', '2024-01-15', '2024-01-20', '2024-01-21', '2024-01-22', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 06:13:12', 1, 'CONTAINER'),
(52, 108, '2024-01-15', '2024-01-16', '0000-00-00', '2024-01-16', '2024-01-20', '2024-01-20', '0000-00-00', 11, 0, 'selesai dooring', 'sj blm kembali (dikirim ke jkt)', 'Andi Arsyad - 2024-02-29 06:19:32', 11, 'CONTAINER'),
(53, 108, '2024-01-15', '2024-01-16', '0000-00-00', '2024-01-16', '2024-01-20', '2024-01-20', '0000-00-00', 11, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 06:23:04', 11, 'CONTAINER'),
(54, 110, '2024-01-15', '2024-01-16', '2024-02-17', '2024-02-25', '2024-01-27', '2024-02-27', '2024-02-13', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:14:38', 1, 'CONTAINER'),
(55, 111, '2024-01-17', '2024-01-18', '2024-01-23', '2024-01-24', '2024-01-25', '2024-01-25', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:18:44', 1, ''),
(56, 119, '2024-01-18', '2024-01-19', '2024-01-19', '2024-02-22', '2024-01-23', '2024-01-23', '2024-01-24', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:27:56', 1, 'CONTAINER'),
(57, 122, '2024-01-23', '2024-01-24', '2024-01-24', '2024-01-29', '2024-01-30', '2024-01-30', '2024-02-05', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:31:59', 1, 'CONTAINER'),
(58, 123, '2024-01-23', '2024-01-24', '2024-01-24', '2024-01-30', '2024-02-02', '2024-02-02', '2024-02-20', 4, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:35:39', 4, 'CONTAINER'),
(59, 117, '2024-01-17', '2024-01-18', '2024-01-18', '2024-02-23', '2024-01-25', '2024-01-28', '2024-02-06', 15, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:38:42', 15, 'CONTAINER'),
(60, 118, '2024-02-16', '2024-02-17', '2024-02-17', '2024-02-20', '2024-02-20', '2024-02-20', '2024-02-28', 9, 0, 'selesai dooring', 'proses penagihan', 'Andi Arsyad - 2024-02-29 07:49:56', 9, 'CONTAINER'),
(61, 126, '2024-01-24', '2024-01-24', '2024-01-28', '2024-02-03', '2024-01-04', '2024-01-04', '2024-02-15', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 07:56:38', 1, 'CONTAINER'),
(62, 128, '2024-01-23', '2024-01-24', '2024-01-24', '2024-02-28', '2024-01-31', '2024-01-31', '2024-02-13', 735, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 09:49:39', 735, 'CONTAINER'),
(63, 131, '2024-01-25', '2024-01-29', '2024-01-30', '2024-02-06', '2024-02-07', '2024-02-07', '2024-02-19', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 09:52:37', 1, 'CONTAINER'),
(64, 76, '2024-12-28', '2024-12-28', '2024-12-31', '2024-01-01', '2024-01-15', '2024-01-15', '2024-01-17', 0, 472, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-29 09:55:12', 472, 'CONTAINER'),
(65, 132, '2024-01-19', '2024-01-19', '2024-01-20', '2024-02-07', '2024-02-09', '2024-02-12', '0000-00-00', 10, 0, 'selesai dooring', 'Bap blm kmbali', 'Andi Arsyad - 2024-02-29 09:57:44', 10, 'CONTAINER'),
(66, 80, '2024-12-30', '2024-12-30', '2024-01-05', '2024-01-09', '2024-01-17', '2024-01-17', '2024-01-25', 0, 187, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-29 09:59:32', 187, 'CONTAINER'),
(67, 133, '2024-01-20', '2024-02-23', '2024-01-24', '2024-01-30', '2024-02-05', '2024-02-05', '2024-02-11', 2, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 10:01:27', 2, 'CONTAINER'),
(68, 136, '2024-02-27', '2024-01-28', '2024-02-01', '2024-02-07', '2024-02-09', '2024-02-09', '2024-02-21', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 10:04:16', 1, 'CONTAINER'),
(69, 28, '2024-02-05', '2024-02-05', '2024-02-08', '2024-02-11', '2024-02-20', '2024-02-20', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-29 10:05:55', 2, 'Container'),
(70, 138, '2024-01-27', '2024-01-28', '2024-01-29', '2024-02-08', '2024-02-12', '2024-02-12', '0000-00-00', 472, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-29 10:06:32', 472, 'CONTAINER'),
(71, 28, '2024-02-05', '2024-02-05', '2024-02-08', '2024-02-11', '2024-02-23', '2024-02-23', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-29 10:08:24', 2, 'Container'),
(72, 139, '2024-01-25', '2024-01-26', '2024-01-27', '2024-02-12', '2024-02-16', '2024-02-16', '0000-00-00', 17, 0, 'selesai dooring', 'sj blm kembali', 'Andi Arsyad - 2024-02-29 10:09:06', 17, 'CONTAINER'),
(73, 141, '2024-02-03', '2024-02-04', '2024-02-05', '2024-02-08', '2024-02-09', '2024-02-09', '2024-02-16', 1, 0, 'selesai dooring', 'sudah ter DN', 'Andi Arsyad - 2024-02-29 10:11:36', 1, 'CONTAINER'),
(74, 30, '2024-01-30', '2024-01-30', '2024-01-31', '2024-02-03', '2024-02-07', '2024-02-07', '0000-00-00', 0, 363, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-29 10:15:57', 363, 'Container'),
(75, 34, '2024-02-06', '2024-02-06', '2024-02-11', '2024-02-17', '2024-02-24', '2024-02-24', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-29 10:20:58', 2, 'Container'),
(76, 34, '2024-02-06', '2024-02-06', '2024-02-11', '2024-02-17', '2024-02-27', '2024-02-27', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 'Lutfi Anshari Muhammad - 2024-02-29 10:22:09', 2, 'Container'),
(77, 88, '0024-01-05', '2024-01-05', '2024-01-07', '0000-00-00', '2024-01-19', '2024-01-19', '2024-01-29', 0, 1760, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-29 10:26:06', 1760, 'CONTAINER'),
(78, 89, '2024-01-05', '2024-01-05', '2024-01-07', '2024-01-10', '2024-01-11', '2024-01-11', '2024-01-13', 655, 0, 'selesai dooring', 'proses penagihan', 'Lutfi Anshari Muhammad - 2024-02-29 10:30:21', 655, 'CONTAINER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spk_banjarmasin`
--

CREATE TABLE `tbl_spk_banjarmasin` (
  `id_spk_banjarmasin` int(11) NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `no_spk` varchar(20) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nama_kapal` varchar(100) NOT NULL,
  `nilai_spk` int(11) NOT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `id_vendor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_spk_banjarmasin`
--

INSERT INTO `tbl_spk_banjarmasin` (`id_spk_banjarmasin`, `no_po`, `no_spk`, `tgl_spk`, `pelaksana`, `nama_kapal`, `nilai_spk`, `dpp`, `total_payment`, `id_users`, `last_update`, `tgl_debit_nota`, `id_vendor`) VALUES
(18, '-', 'SPK - 001', '2024-01-01', 'CV. ARJUNA', '-', 0, 0, 0, 19, '2024-02-21 05:12:36', NULL, 21),
(19, '-', 'SPK - 002', '2024-01-01', 'CV. ARJUNA', 'KM. Meratus Padang V. 271', 0, 0, 0, 17, '2024-02-21 05:22:06', NULL, 21),
(20, '-', 'SPK - 003', '2024-01-01', 'CV. ARJUNA', 'KM. Intan Daya V. 106', 0, 0, 0, 19, '2024-02-21 05:22:54', NULL, 9),
(21, '-', 'SPK - 004', '2024-01-01', 'CV. ARJUNA', 'KM. Intan Daya V. 106', 0, 0, 0, 19, '2024-02-21 05:25:17', NULL, 21),
(22, 'CAN22001385', 'SPK - 005', '2024-01-04', 'PT. Hartamsa', 'Klm. Mutiara Hati Setia', 0, 0, 0, 19, '2024-02-28 04:26:36', NULL, 10),
(23, '-', 'SPK - 006', '2024-01-05', 'CV. Arjuna', 'KM. Meratus Katingan V. 22', 0, 0, 0, 19, '2024-02-21 08:06:31', NULL, 21),
(24, '-', 'SPK - 007', '2024-01-05', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-21 08:09:20', NULL, 38),
(25, '-', 'SPK - 008', '2024-01-08', 'CV. Arjuna', 'KM. Kisik Mas V. 001', 0, 0, 0, 19, '2024-02-21 08:11:39', NULL, 18),
(26, '-', 'SPK - 009', '2024-01-08', 'CV. Kembar Transport', 'Inland Darat', 0, 0, 0, 19, '2024-02-21 08:14:17', NULL, 11),
(27, '-', 'SPK - 010', '2024-01-08', 'CV. ARJUNA', 'KM. Meratus Padang V. 273', 0, 0, 0, 19, '2024-02-21 08:21:59', NULL, 9),
(28, '-', 'SPK - 011', '2024-01-01', 'GLM BJM OPS', 'KM. INTAN DAYA V. 07', 0, 0, 0, 19, '2024-02-27 11:03:37', NULL, 9),
(29, '-', 'SPK - 012', '2024-01-09', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:06:29', NULL, 39),
(30, '-', 'SPK - 013', '2024-01-09', 'CV. ARJUNA', 'KM. Meratus Padang V. 273', 0, 0, 0, 19, '2024-02-27 11:09:09', NULL, 21),
(31, '-', 'SPK - 014', '2024-01-10', 'CV. ARJUNA', 'KM. MERATUS KAHAYAN V. 23', 0, 0, 0, 19, '2024-02-27 11:11:16', NULL, 21),
(32, '-', 'SPK - 015', '2024-01-10', 'CV. ARJUNA', 'KM. INTAN DAYA V. 107', 0, 0, 0, 19, '2024-02-27 11:13:23', NULL, 21),
(33, '-', 'SPK - 016', '2024-01-11', 'CV. ARJUNA', 'KM. MERATUS LEMBATA V. 274', 0, 0, 0, 19, '2024-02-27 11:15:12', NULL, 21),
(34, '-', 'SPK - 017', '2024-01-11', 'CV. ARJUNA', 'KM. ARMADA SEGARA V. 01', 0, 0, 0, 19, '2024-02-27 11:23:17', NULL, 21),
(35, '-', 'SPK - 018', '2024-01-11', 'CV. ARJUNA', 'KM. MERATUS LEMBATA V. 274', 0, 0, 0, 19, '2024-02-27 11:24:44', NULL, 21),
(36, '-', 'SPK - 019', '2024-01-01', 'GLM BJM OPS', 'KM. Meratus Padang V. 273', 0, 0, 0, 19, '2024-02-27 11:26:14', NULL, 9),
(37, '-', 'SPK - 020', '2024-01-12', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:27:53', NULL, 23),
(38, '-', 'SPK - 021', '2024-01-12', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:29:42', NULL, 16),
(39, '-', 'SPK - 022', '2024-01-12', 'GLM BJM OPS', 'KM. JML ABADI V. 613', 0, 0, 0, 19, '2024-02-27 11:31:25', NULL, 36),
(40, '-', 'SPK - 023', '2024-01-16', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:33:25', NULL, 23),
(41, '-', 'SPK - 024', '2024-01-12', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:36:10', NULL, 40),
(42, '-', 'SPK - 025', '2024-01-15', 'CV. ARJUNA', 'KM. KUALA MAS V. 1', 0, 0, 0, 19, '2024-02-27 11:38:09', NULL, 20),
(43, '-', 'SPK - 026', '2024-01-15', 'CV. Amalia', 'Klm. Bintang Setia Dua', 0, 0, 0, 19, '2024-02-27 11:39:54', NULL, 23),
(44, '-', 'SIK - 001', '2024-01-01', 'GLM BJM OPS', 'KM. MERATUS LEMBATA V. 276', 0, 0, 0, 19, '2024-02-27 11:41:50', NULL, 14),
(45, '-', 'SPK - 027', '2024-01-15', 'CV. ARJUNA', 'KM. ARMADA SERASI V. 1', 0, 0, 0, 19, '2024-02-27 11:43:31', NULL, 21),
(46, '-', 'SPK - 028', '2024-01-01', 'GLM BJM OPS', 'KM. INTAN DAYA 17 V. 108', 0, 0, 0, 19, '2024-02-27 11:45:17', NULL, 9),
(47, '-', 'SPK - 029', '2024-01-01', 'GLM BJM OPS', 'KM. INTAN DAYA 17 V. 108', 0, 0, 0, 19, '2024-02-27 11:47:22', NULL, 27),
(48, '-', 'SPK - 030', '2024-01-18', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 11:49:29', NULL, 23),
(49, '-', 'SPK - 031', '2024-01-18', 'CV. ARJUNA', 'KM. MERATUS SAMPIT V. 24', 0, 0, 0, 19, '2024-02-27 11:51:09', NULL, 21),
(50, '-', 'SPK - 032', '2024-01-18', 'CV. ARJUNA', 'KM. MERATUS SAMPIT V. 24', 0, 0, 0, 19, '2024-02-27 11:52:51', NULL, 21),
(51, '-', 'SPK - 033', '2024-01-18', 'CV. ARJUNA', 'KM. TANTO LANGGENG V. 307', 0, 0, 0, 19, '2024-02-27 11:54:10', NULL, 21),
(52, '-', 'SPK - 034', '2024-01-18', 'CV. ARJUNA', 'KM. RALIANCE V. 272', 0, 0, 0, 19, '2024-02-27 11:55:26', NULL, 21),
(53, '-', 'SPK - 035', '2024-01-01', 'CV. Kembar Transport', 'Inland Darat', 0, 0, 0, 19, '2024-02-28 07:53:56', NULL, 15),
(54, '-', 'SPK - 036', '2024-01-18', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 12:00:13', NULL, 14),
(55, '-', 'SPK - 037', '2024-01-01', 'CV. ARJUNA', 'KM. JML ABADI V. 05', 0, 0, 0, 19, '2024-02-27 12:02:31', NULL, 9),
(56, '-', 'SPK - 038', '2024-01-01', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 108', 0, 0, 0, 19, '2024-02-27 12:05:07', NULL, 21),
(57, '-', 'SPK - 039', '2024-01-19', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 108', 0, 0, 0, 19, '2024-02-27 12:06:37', NULL, 21),
(58, '-', 'SPK - 040', '2024-01-24', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 12:08:24', NULL, 16),
(59, '-', 'SPK - 041', '2024-01-22', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 12:10:21', NULL, 9),
(60, '-', 'SPK - 042', '2024-01-22', 'CV. ARJUNA', 'KM. KUALA MAS V. 3', 0, 0, 0, 19, '2024-02-27 12:12:14', NULL, 20),
(61, '-', 'SPK - 043', '2024-01-25', 'CV. ARJUNA', 'KM. TANTO LANGGENG V. 308', 0, 0, 0, 19, '2024-02-27 12:13:50', NULL, 9),
(62, '-', 'SPK - 044', '2024-01-29', 'CV. ARJUNA', 'KM. MERATUS KATINGAN V. 25', 0, 0, 0, 19, '2024-02-27 12:15:12', NULL, 21),
(63, '-', 'SPK - 045', '2024-01-29', 'CV. ARJUNA', 'KM. MERATUS KATINGAN V. 25', 0, 0, 0, 19, '2024-02-27 12:16:31', NULL, 21),
(64, '-', 'SPK - 046', '2024-01-05', 'PT. Hartamsa', 'Klm. Anugerah Mulia Setia', 0, 0, 0, 19, '2024-02-27 12:18:01', NULL, 23),
(65, 'KED23005287 , KED220', 'SPK - 048', '2024-01-25', 'CV. Dumas', 'Klm. Mutiara Hati Setia', 0, 0, 0, 19, '2024-02-28 04:36:10', NULL, 11),
(66, '-', 'SPK - 049', '2024-01-26', 'CV. ARJUNA', 'KM. TANTO HANDAL V. 367', 0, 0, 0, 19, '2024-02-27 12:26:12', NULL, 21),
(67, '-', 'SPK - 050', '2024-01-25', 'Bpk Aspiansyah', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 12:27:45', NULL, 23),
(68, '-', 'SPK - 051', '2024-01-26', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 12:29:39', NULL, 23),
(69, '-', 'SPK - 052', '2024-01-26', 'CV. ARJUNA', '-', 0, 0, 0, 19, '2024-02-27 12:31:26', NULL, 30),
(70, '-', 'SIK - 002', '2024-01-26', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 109', 0, 0, 0, 19, '2024-02-27 12:33:22', NULL, 9),
(71, '-', 'SIK - 003', '2024-01-27', 'GLM BJM OPS', 'KM. MULI ANIM V. 03', 0, 0, 0, 19, '2024-02-27 12:35:05', NULL, 14),
(72, '-', 'SPK - 053', '2024-01-29', 'PT. YPA', '-', 0, 0, 0, 19, '2024-02-27 12:36:54', NULL, 27),
(73, '-', 'SPK - 054', '2024-01-29', 'CV. ARJUNA', 'KM. MERATUS KAHAYAN V. 26', 0, 0, 0, 19, '2024-02-27 12:38:36', NULL, 21),
(74, 'SAP22001755 , KED220', 'SPK - 055', '2024-01-30', 'CV. Dumas', 'KLM. BUDI SETIA', 0, 0, 0, 19, '2024-02-28 04:36:55', NULL, 11),
(75, '-', 'SIK - 004', '2024-01-30', 'GLM BJM OPS', 'KM. PRATIWI RAYA V. 03', 0, 0, 0, 19, '2024-02-27 12:45:19', NULL, 14),
(76, '-', 'SIK - 005', '2024-01-30', 'GLM BJM OPS', 'KM. MERATUS SAMARINDA V. 283', 0, 0, 0, 19, '2024-02-27 12:46:52', NULL, 14),
(77, '-', 'SPK - 057', '2024-01-30', 'CV. ARJUNA', 'KM. MERATUS SAMARINDA V. 283', 0, 0, 0, 19, '2024-02-27 12:48:29', NULL, 21),
(78, '-', 'SPK - 058', '2024-01-30', 'CV. ARJUNA', 'KM. MERATUS SAMARINDA V. 283', 0, 0, 0, 19, '2024-02-27 12:49:49', NULL, 21),
(79, 'CAN24000012, CAN2400', 'SPK - 059', '2024-01-31', 'CV. Dumas', 'Inland Darat', 0, 0, 0, 19, '2024-02-28 04:59:55', NULL, 11),
(80, '-', 'SIK - 006', '2024-01-31', 'GLM BJM OPS', 'KM. MERATUS KENDARI V. 284', 0, 0, 0, 19, '2024-02-27 12:52:58', NULL, 14),
(81, '-', 'SPK - 060', '2024-01-31', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 109', 0, 0, 0, 19, '2024-02-27 12:54:17', NULL, 21),
(82, '5320053270', 'SPK - 061', '2024-02-01', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:00:01', NULL, 23),
(83, '-', 'SIK - 007', '2024-01-02', 'DIAN', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:02:07', NULL, 25),
(84, '-', 'SPK - 062', '2024-02-02', 'NURMAN', 'KLM. CAHAYA INDAH', 0, 0, 0, 19, '2024-02-27 13:03:36', NULL, 11),
(85, '-', 'SPK - 063', '2024-02-06', 'CV. ARJUNA', 'KM. TANTO LANGGENG V. 309', 0, 0, 0, 19, '2024-02-27 13:06:14', NULL, 21),
(86, '-', 'SPK - 064', '2024-02-06', 'CV. ARJUNA', 'KM. TANTO HANDAL V. 368', 0, 0, 0, 19, '2024-02-27 13:09:40', NULL, 21),
(87, '-', 'SPK - 065', '2024-02-06', 'CV. Kembar Transport', 'KM. MUARA MAS V. 09', 0, 0, 0, 19, '2024-02-27 13:11:48', NULL, 23),
(88, '53200533336', 'SPK - 066', '2024-02-06', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:13:05', NULL, 23),
(89, '-', 'SPK - 067', '2024-02-06', 'GLM BJM OPS', 'KM. ARMADA SEGARA V. 09', 0, 0, 0, 19, '2024-02-27 13:18:01', NULL, 21),
(90, '-', 'SIK - 008', '2024-02-06', 'GLM BJM OPS', 'KM. ORIENTAL PACIFIC V. 03', 0, 0, 0, 19, '2024-02-27 13:15:43', NULL, 14),
(91, '-', 'SPK - 068', '2024-02-16', 'CV. ARJUNA', 'KM. MERATUS KENDARI 1 V . 286', 0, 0, 0, 19, '2024-02-27 13:17:13', NULL, 21),
(92, '-', 'SPK - 069', '2024-02-06', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:18:41', NULL, 16),
(93, '-', 'SIK - 009', '2024-02-06', 'GLM BJM OPS', '-', 0, 0, 0, 19, '2024-02-27 13:19:56', NULL, 15),
(94, '-', 'SPK - 070', '2024-02-16', 'CV. ARJUNA', 'KM. MERATUS SAMPIT V. 27', 0, 0, 0, 19, '2024-02-27 13:21:22', NULL, 21),
(95, '-', 'SPK - 071', '2024-02-16', 'GLM BJM OPS', 'KM. MERATUS SAMPIT V. 27', 0, 0, 0, 19, '2024-02-27 13:22:41', NULL, 21),
(96, '-', 'SPK - 072', '2024-02-16', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 110', 0, 0, 0, 19, '2024-02-27 13:25:17', NULL, 21),
(97, '-', 'SPK - 073', '2024-02-16', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 110', 0, 0, 0, 19, '2024-02-27 13:26:21', NULL, 21),
(98, '-', 'SPK - 074', '2024-02-16', 'GLM BJM OPS', 'KM. MERATUS KATINGAN V. 28', 0, 0, 0, 19, '2024-02-27 13:27:31', NULL, 21),
(99, '-', 'SPK - 075', '2024-02-16', 'GLM BJM OPS', 'KM. TANTO LANGGENG V. 310', 0, 0, 0, 19, '2024-02-27 13:28:42', NULL, 21),
(100, '-', 'SPK - 076', '2024-02-16', 'CV. ARJUNA', 'KM. MERATUS KENDARI V. 288', 0, 0, 0, 19, '2024-02-27 13:29:52', NULL, 21),
(101, '-', 'SIK - 010', '2024-02-06', 'GLM BJM OPS', 'KM. INTAN DAYA 17 V. 110A', 0, 0, 0, 19, '2024-02-27 13:31:10', NULL, 9),
(102, '-', 'SIK - 011', '2024-02-06', 'GLM BJM OPS', 'KM. ICON EFESUS V. 11', 0, 0, 0, 19, '2024-02-27 13:32:18', NULL, 9),
(103, '-', 'SIK - 012', '2024-02-07', 'GLM BJM OPS', '-', 0, 0, 0, 19, '2024-02-27 13:33:37', NULL, 15),
(104, '-', 'SPK - 077', '2024-02-16', 'GLM BJM OPS', 'KM. TANTO LANGGENG V. 310', 0, 0, 0, 19, '2024-02-27 13:35:17', NULL, 21),
(105, '-', 'SIK - 013', '2024-02-12', 'GLM BJM OPS', 'KM. MERATUS SAMARINDA V. 285', 0, 0, 0, 19, '2024-02-27 13:39:40', NULL, 14),
(106, '-', 'SPK - 078', '2024-02-23', 'CV. ARJUNA', 'KM. LAGOA MAS V. 13', 0, 0, 0, 19, '2024-02-27 13:42:11', NULL, 20),
(107, '-', 'SPK - 079', '2024-02-16', 'GLM BJM OPS', 'KM. TANTO HANDAL V. 369', 0, 0, 0, 19, '2024-02-27 13:44:09', NULL, 21),
(108, '-', 'SPK - 080', '2024-02-15', 'CV. ARJUNA', 'KM. LAGUN MAS V. 13', 0, 0, 0, 19, '2024-02-27 13:45:25', NULL, 20),
(109, '-', 'SPK - 081', '2024-02-15', 'CV. ARJUNA', 'KM. BARITO MAS V. 10', 0, 0, 0, 19, '2024-02-27 13:46:56', NULL, 18),
(110, '-', 'SPK - 082', '2024-02-15', 'CV. ARJUNA', 'KM. BARITO MAS V. 10', 0, 0, 0, 19, '2024-02-27 13:48:25', NULL, 18),
(111, '5320053418', 'SPK - 083', '2024-02-13', 'CV. Amalia', 'Klm. Bintang Setia Dua', 0, 0, 0, 19, '2024-02-27 13:50:05', NULL, 23),
(112, '3460270643 & 3460270', 'SPK - 084', '2024-02-13', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:53:04', NULL, 23),
(113, '-', 'SIK - 014', '2024-02-16', 'GLM BJM OPS', 'KM. SPIL RUMI V. 03', 0, 0, 0, 19, '2024-02-27 13:54:25', NULL, 14),
(114, '-', 'SPK - 085', '2024-02-15', 'CV. ARJUNA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 13:55:58', NULL, 9),
(115, '-', 'SPK - 086', '2024-02-16', 'CV. ARJUNA', 'KM. MERATUS SAMARINDA V. 289', 0, 0, 0, 19, '2024-02-27 13:57:39', NULL, 21),
(116, '-', 'SPK - 087', '2024-02-16', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 111', 0, 0, 0, 19, '2024-02-27 13:58:52', NULL, 21),
(117, '-', 'SPK - 088', '2024-02-16', 'CV. ARJUNA', 'KM. SEGARA MAS', 0, 0, 0, 19, '2024-02-27 13:59:55', NULL, 21),
(118, '-', 'SPK - 089', '2024-02-16', 'CV. ARJUNA', 'KM. LAGUN MAS V. 13', 0, 0, 0, 19, '2024-02-27 14:01:01', NULL, 20),
(119, '-', 'SPK - 090', '2024-02-16', 'CV. Kembar Transport', 'KM. MERATUS SAMARINDA V. 289', 0, 0, 0, 19, '2024-02-27 14:02:12', NULL, 13),
(120, '-', 'SPK - 091', '2024-02-20', 'CV. Kembar Transport', 'KM. MERATUS KENDARI 1 V. 290', 0, 0, 0, 19, '2024-02-27 14:04:55', NULL, 13),
(121, '5320053556 & 5320053', 'SPK - 092', '2024-02-19', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 14:07:14', NULL, 23),
(122, '-', 'SPK - 093', '2024-02-20', 'CV. ARJUNA', 'KM. TANTO HANDAL V. 370', 0, 0, 0, 19, '2024-02-27 14:08:56', NULL, 21),
(123, '5320053580', 'SPK - 094', '2024-02-21', 'CV. SATRIA', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 14:10:29', NULL, 23),
(124, '-', 'SIK - 017', '2024-02-15', 'GLM BJM OPS', '-', 0, 0, 0, 19, '2024-02-27 14:13:50', NULL, 9),
(125, '-', 'SIK - 018', '2024-02-21', 'GLM BJM OPS', 'KM. MERATUS KENDARI 1 V. 286', 0, 0, 0, 19, '2024-02-27 14:15:15', NULL, 14),
(126, '-', 'SIK - 019', '2024-02-21', 'GLM BJM OPS', 'KM. INTAN DAYA V. 111', 0, 0, 0, 19, '2024-02-27 14:16:42', NULL, 9),
(127, '-', 'SPK - 095', '2024-02-21', 'CV. ARJUNA', 'KM. MERATUS SAMARINDA V. 291', 0, 0, 0, 19, '2024-02-27 14:18:30', NULL, 21),
(128, '-', 'SPK - 096', '2024-02-21', 'CV. ARJUNA', 'KM. MERATUS SAMARINDA V. 291', 0, 0, 0, 19, '2024-02-27 14:19:41', NULL, 21),
(129, 'CAN22003145, CAN2200', 'SPK - 097', '2024-02-23', 'CV. Dumas', 'KLM. KELUARGA INDAH', 0, 0, 0, 19, '2024-02-28 04:38:22', NULL, 11),
(130, '-', 'SIK  - 020', '2024-02-23', 'GLM BJM OPS', 'KM. INTAN DAYA V. 112', 0, 0, 0, 19, '2024-02-27 14:24:55', NULL, 9),
(131, '-', 'SIK - 021', '2024-02-23', 'GLM BJM OPS', 'KM. MERATUS KENDARI V. 289', 0, 0, 0, 19, '2024-02-27 14:26:02', NULL, 36),
(132, '-', 'SPK - 098', '2024-02-23', 'GLM BJM OPS', '-', 0, 0, 0, 19, '2024-02-27 14:27:17', NULL, 9),
(133, '-', 'SPK - 099', '2024-02-26', 'CV. ARJUNA', 'KM. ARMADA SERASI V. 5', 0, 0, 0, 19, '2024-02-27 14:28:28', NULL, 21),
(134, '-', 'SPK - 100', '2024-02-26', 'CV. ARJUNA', 'KM. ARMADA SERASI V. 5', 0, 0, 0, 19, '2024-02-27 14:29:28', NULL, 21),
(135, '-', 'SPK - 101', '2024-02-26', 'CV. ARJUNA', 'KM. INTAN DAYA 17 V. 112', 0, 0, 0, 19, '2024-02-27 14:30:46', NULL, 21),
(136, '-', 'SPK - 102', '2024-02-26', 'CV. ARJUNA', 'KM. LUMOSO SELAMAT V. 420', 0, 0, 0, 19, '2024-02-27 14:32:06', NULL, 21),
(137, '-', 'SPK - 103', '2024-02-26', 'CV. ARJUNA', 'KM. MERATUS KENDARI 1 V. 292', 0, 0, 0, 19, '2024-02-27 14:33:32', NULL, 21),
(138, '5320053722', 'SPK - 104', '2024-02-27', 'CV. Kembar Transport', 'Inland Darat', 0, 0, 0, 19, '2024-02-27 14:34:57', NULL, 23),
(139, '-', 'SPK -105', '2024-02-27', 'CV. ARJUNA', 'KM. MERATUS SAMPIT V. 30', 0, 0, 0, 19, '2024-02-27 14:36:28', NULL, 21),
(140, '-', 'SPK - 106', '2024-02-27', 'CV. ARJUNA', 'KM. MERATUS KATINGAN V. 31', 0, 0, 0, 19, '2024-02-27 14:37:25', NULL, 21),
(141, '-', 'SPK - 107', '2024-02-27', 'CV. ARJUNA', 'KM. MERATUS KATINGAN V. 31', 0, 0, 0, 19, '2024-02-27 14:38:49', NULL, 21),
(142, '-', 'SPK - 108', '2024-02-28', 'CV. ARJUNA', 'KM. TANTO HANDAL V. 371', 0, 0, 0, 19, '2024-02-28 04:20:45', NULL, 21),
(143, '3460272856, 34602728', 'SPK - 109', '2024-02-29', 'CV. Amalia', 'Inland Darat', 0, 0, 0, 19, '2024-02-29 02:40:48', NULL, 23),
(144, '-', 'SPK - 056', '2024-02-02', 'GLM BJM OPS', 'KM. ARMADA SEGARA V. 03', 0, 0, 0, 19, '2024-02-29 03:05:12', NULL, 21),
(145, '-', 'SIK - 022', '2024-02-29', 'GLM BJM OPS', 'KM. TANTO LANGGENG V. 312', 0, 0, 0, 19, '2024-02-29 05:00:56', NULL, 9),
(146, '5320053727', 'SPK - 110', '2024-02-29', 'CV. SRIKANDI', 'Inland Darat', 0, 0, 0, 19, '2024-02-29 07:03:52', NULL, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spk_jakarta`
--

CREATE TABLE `tbl_spk_jakarta` (
  `id_spk_jakarta` int(11) NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `no_spk` varchar(20) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nama_kapal` varchar(100) NOT NULL,
  `nilai_spk` int(11) NOT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `id_vendor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_spk_jakarta`
--

INSERT INTO `tbl_spk_jakarta` (`id_spk_jakarta`, `no_po`, `no_spk`, `tgl_spk`, `pelaksana`, `nama_kapal`, `nilai_spk`, `dpp`, `total_payment`, `id_users`, `last_update`, `tgl_debit_nota`, `id_vendor`) VALUES
(15, '-', 'SPK  JKT - 001', '2024-01-02', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.106', 0, 0, 0, 18, '2024-02-27 10:10:27', NULL, 27),
(16, '-', 'SPK  JKT - 002', '2024-01-02', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-27 10:11:23', NULL, 26),
(17, '-', 'SPK  JKT - 003', '2024-01-02', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-27 10:12:47', NULL, 26),
(18, '-', 'SPK  JKT - 004', '2024-01-03', 'CV. GUS MAJU', 'KM. M.Malino V.175', 0, 0, 0, 18, '2024-02-29 06:00:19', NULL, 26),
(19, '-', 'SPK  JKT - 005', '2024-01-03', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 01:43:55', NULL, 27),
(20, '-', 'SPK  JKT - 006', '2024-01-03', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-27 10:18:35', NULL, 26),
(21, '-', 'SPK  JKT - 007', '2024-01-03', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-27 10:21:50', NULL, 26),
(22, '-', 'SPK  JKT - 008', '2024-01-04', 'CV. GUS MAJU', 'KM.Armada Segara V.01', 0, 0, 0, 18, '2024-02-27 10:22:45', NULL, 16),
(23, '-', 'SPK  JKT - 009', '2024-01-04', 'CV. GUS MAJU', 'KM. Meratus Medan V.101', 0, 0, 0, 18, '2024-02-27 10:23:45', NULL, 28),
(24, '-', 'SPK  JKT - 010', '2024-01-04', 'CV. GUS MAJU', 'KM. Meratus Lembata V.272', 0, 0, 0, 18, '2024-02-27 10:25:22', NULL, 26),
(25, '-', 'SPK  JKT - 011', '2024-01-06', 'CV. GUS MAJU', 'KM. Icon Corintus V.01', 0, 0, 0, 18, '2024-02-27 10:30:08', NULL, 17),
(26, '-', 'SPK JKT - 069', '2024-02-01', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 2', 0, 0, 0, 19, '2024-02-27 15:04:44', NULL, 32),
(27, '-', 'SPK JKT - 070', '2024-02-02', 'CV. GUS MAJU', 'KM. TITANIUM V. 4', 0, 0, 0, 19, '2024-02-27 15:06:20', NULL, 26),
(28, '-', 'SPK JKT - 071', '2024-02-02', 'CV. GUS MAJU', 'KM. BELIK MAS V. 8', 0, 0, 0, 19, '2024-02-27 15:08:25', NULL, 27),
(29, '-', 'SPK JKT - 072', '2024-02-02', 'CV. GUS MAJU', 'KM. TANTO HORAS V. 63', 0, 0, 0, 19, '2024-02-27 15:10:53', NULL, 27),
(30, '-', 'SPK JKT - 073', '2024-02-02', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-27 15:12:19', NULL, 26),
(31, '-', 'SPK JKT - 074', '2024-02-05', 'CV. GUS MAJU', 'KM. SINAR POMALA V. 15', 0, 0, 0, 19, '2024-02-27 15:14:47', NULL, 28),
(32, '-', 'SPK JKT -  075', '2024-02-05', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-27 15:16:26', NULL, 9),
(33, '-', 'SPK JKT - 076', '2024-02-05', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-27 15:18:46', NULL, 9),
(34, '-', 'SPK JKT - 077', '2024-02-05', 'CV. GUS MAJU', 'KM. JALES MAS V. 9', 0, 0, 0, 19, '2024-02-27 15:22:33', NULL, 41),
(35, '-', 'SPK JKT - 078', '2024-02-05', 'CV. GUS MAJU', 'KM. HILIR MAS V. 9', 0, 0, 0, 19, '2024-02-27 15:23:59', NULL, 38),
(36, '-', 'SPK JKT - 079', '2024-02-05', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-27 15:25:25', NULL, 26),
(37, '-', 'SPK JKT - 080', '2024-02-05', 'CV. GUS MAJU', 'KM. ICON DANIEL V. 10', 0, 0, 0, 19, '2024-02-27 15:27:31', NULL, 27),
(38, '-', 'SPK JKT - 081', '2024-02-05', 'CV. GUS MAJU', 'KM. INTAN DAYA 9 V. 45', 0, 0, 0, 19, '2024-02-27 15:29:32', NULL, 26),
(39, '-', 'SPK JKT - 082', '2024-02-05', 'CV. GUS MAJU', 'KM. ICON DANIEL V. 9', 0, 0, 0, 19, '2024-02-27 15:31:40', NULL, 27),
(40, '-', 'SPK JKT - 083', '2024-02-07', 'CV. GUS MAJU', 'KM. MERATUS SAMARINDA V. 287', 0, 0, 0, 19, '2024-02-27 15:33:20', NULL, 26),
(41, '-', 'SPK JKT - 084', '2024-02-07', 'CV. GUS MAJU', 'KM. ICON EFESUS', 0, 0, 0, 19, '2024-02-27 15:34:56', NULL, 17),
(42, '-', 'SPK JKT - 085', '2024-02-07', 'CV. GUS MAJU', 'KM. ICON EFESUS V. 11', 0, 0, 0, 19, '2024-02-27 15:37:04', NULL, 29),
(43, '-', 'SPK JKT - 087', '2024-02-12', 'CV. GUS MAJU', 'KM. TANTO HEMAT V. 34', 0, 0, 0, 19, '2024-02-28 01:43:58', NULL, 27),
(44, '-', 'SPK JKT - 088', '2024-02-12', 'CV. GUS MAJU', 'KM. ORIENTAL JADE V . 3', 0, 0, 0, 19, '2024-02-28 01:45:19', NULL, 27),
(45, '-', 'SPK JKT - 089', '2024-02-12', 'CV. GUS MAJU', 'KM. SPIL RATNA V. 16', 0, 0, 0, 19, '2024-02-28 01:46:31', NULL, 19),
(46, '-', 'SPK JKT - 090', '2024-02-12', 'CV. GUS MAJU', 'KM. MERATUS GORONTALO V. 95', 0, 0, 0, 19, '2024-02-28 01:49:03', NULL, 32),
(47, '-', 'SPK JKT - 091', '2024-02-13', 'CV. GUS MAJU', 'KM. TANTO HORAS V. 63', 0, 0, 0, 19, '2024-02-28 02:02:26', NULL, 27),
(48, '-', 'SPK JKT - 092', '2024-02-13', 'CV. GUS MAJU', 'KM. ICON DANIEL V. 11', 0, 0, 0, 19, '2024-02-28 02:04:05', NULL, 27),
(49, '-', 'SPK JKT - 093', '2024-02-13', 'CV. GUS MAJU', 'KM. INTAN DAYA V. 111', 0, 0, 0, 19, '2024-02-28 02:05:23', NULL, 27),
(50, '-', 'SPK JKT - 094', '2024-02-13', 'CV. GUS MAJU', 'KM. INTAN DAYA V. 110', 0, 0, 0, 19, '2024-02-28 02:07:53', NULL, 27),
(51, '-', 'SPK JKT - 095', '2024-02-13', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 02:09:26', NULL, 27),
(52, '-', 'SPK JKT - 096', '2024-02-13', 'CV. GUS MAJU', 'KM. ORIENTAL JADE V . 3', 0, 0, 0, 19, '2024-02-28 02:10:45', NULL, 26),
(53, '-', 'SPK JKT - 097', '2024-02-15', 'CV. GUS MAJU', 'KM. ORIENTAL EMERALD V. 3', 0, 0, 0, 19, '2024-02-28 02:12:03', NULL, 26),
(54, '-', 'SPK JKT - 098', '2024-02-15', 'CV. GUS MAJU', 'KM. TASIK MAS V. 12', 0, 0, 0, 19, '2024-02-28 02:13:30', NULL, 17),
(55, '-', 'SPK JKT - 100', '2024-02-15', 'CV. GUS MAJU', 'KM. BELIK MAS V. 13', 0, 0, 0, 19, '2024-02-28 02:15:37', NULL, 27),
(56, '-', 'SPK JKT - 101', '2024-02-15', 'CV. GUS MAJU', 'KM. ICON DANIEL V. 13', 0, 0, 0, 19, '2024-02-28 02:17:03', NULL, 27),
(57, '-', 'SPK JKT - 102', '2024-02-15', 'CV. GUS MAJU', 'KM. TANTO LANGGENG V. 311', 0, 0, 0, 19, '2024-02-28 02:18:20', NULL, 27),
(58, '-', 'SPK JKT - 103', '2024-02-15', 'CV. GUS MAJU', 'KM. ICON DANIEL V. 13', 0, 0, 0, 19, '2024-02-28 02:19:40', NULL, 27),
(59, '-', 'SPK JKT - 104', '2024-02-19', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:21:27', NULL, 27),
(60, '-', 'SPK JKT - 105', '2024-02-19', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 02:26:15', NULL, 22),
(61, '-', 'SPK JKT - 106', '2024-02-19', 'CV. GUS MAJU', 'KM. MERATUS SORONG V. 111', 0, 0, 0, 19, '2024-02-28 02:27:49', NULL, 32),
(62, '-', 'SPK JKT - 107', '2024-02-20', 'CV. GUS MAJU', 'KM. ARMADA SERASI V. 5', 0, 0, 0, 19, '2024-02-28 02:30:20', NULL, 27),
(63, '-', 'SPK JKT  - 108', '2024-02-20', 'CV. GUS MAJU', 'KM. ARMADA SERASI V. 5', 0, 0, 0, 19, '2024-02-28 02:31:33', NULL, 19),
(64, '-', 'SPK JKT - 109', '2024-02-20', 'CV. GUS MAJU', 'KM. ARMADA SERASI V. 5', 0, 0, 0, 19, '2024-02-28 02:33:14', NULL, 32),
(65, '-', 'SPK JKT - 110', '2024-02-20', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:34:29', NULL, 27),
(66, '-', 'SPK JKT  - 111', '2024-02-20', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:35:38', NULL, 27),
(67, '-', 'SPK JKT - 112', '2024-02-20', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:36:52', NULL, 27),
(68, '-', 'SPK JKT  - 113', '2024-02-20', 'CV. GUS MAJU', 'KM. BELIK MAS V. 14', 0, 0, 0, 19, '2024-02-28 02:37:59', NULL, 27),
(69, '-', 'SPK JKT - 114', '2024-02-20', 'CV. GUS MAJU', 'KM. BELIK MAS V. 14', 0, 0, 0, 19, '2024-02-28 02:39:17', NULL, 29),
(70, '-', 'SPK JKT - 115', '2024-02-20', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:40:20', NULL, 27),
(71, '-', 'SPK JKT - 116', '2024-02-20', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:41:17', NULL, 26),
(72, '-', 'SPK JKT - 117', '2024-02-21', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 02:42:32', NULL, 37),
(73, '-', 'SPK JKT - 118', '2024-02-20', 'CV. GUS MAJU', 'KM. MERATUS SAMPIT V. 30', 0, 0, 0, 19, '2024-02-28 02:47:50', NULL, 17),
(74, '-', 'SPK JKT - 119', '2024-02-21', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 02:49:05', NULL, 27),
(75, '-', 'SPK JKT - 120', '2024-02-21', 'CV. ARJUNA', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 07:29:27', NULL, 27),
(76, '-', 'SPK JKT - 121', '2024-02-21', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 02:51:32', NULL, 27),
(77, '-', 'SPK JKT - 122', '2024-02-21', 'CV. ARJUNA', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 07:29:05', NULL, 27),
(78, '-', 'SPK JKT - 123', '2024-02-21', 'CV. GUS MAJU', 'KM. ICON CORINTUS V. 05', 0, 0, 0, 19, '2024-02-28 03:40:28', NULL, 27),
(79, '-', 'SPK JKT - 124', '2024-02-21', 'CV. GUS MAJU', 'KM. PULAU HOKI V. 5', 0, 0, 0, 19, '2024-02-28 03:41:59', NULL, 27),
(80, '-', 'SPK JKT -125', '2024-02-21', 'CV. GUS MAJU', 'KM. PULAU HOKI V. 5', 0, 0, 0, 19, '2024-02-28 03:43:09', NULL, 27),
(81, '-', 'SPK JKT - 126', '2024-02-21', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 03:44:07', NULL, 27),
(82, '-', 'SPK JKT - 127', '2024-02-22', 'CV. GUS MAJU', '-', 0, 0, 0, 19, '2024-02-28 03:46:41', NULL, 42),
(83, '-', 'SPK JKT - 128', '2024-02-22', 'CV. GUS MAJU', 'KM. TANTO TERIMA V. 239', 0, 0, 0, 19, '2024-02-28 03:48:11', NULL, 37),
(84, '-', 'SPK JKT - 129', '2024-02-22', 'CV. GUS MAJU', 'KM. MERATUS LABOAN V. 95', 0, 0, 0, 19, '2024-02-28 03:55:13', NULL, 10),
(85, '-', 'SPK  JKT - 012', '2024-01-08', 'CV. GUS MAJU', 'KM. Hilir Mas V.02', 0, 0, 0, 18, '2024-02-29 01:28:01', NULL, 27),
(86, '-', 'SPK JKT - 013', '2024-01-08', 'CV. GUS MAJU', 'KM. Icon Bravo', 0, 0, 0, 18, '2024-02-29 01:59:03', NULL, 27),
(87, '-', 'SPK JKT - 014', '2024-01-08', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 02:01:28', NULL, 27),
(88, '-', 'SPK  JKT - 015', '2024-01-09', 'CV. GUS MAJU', 'KM. Spil Ratna V.38', 0, 0, 0, 18, '2024-02-29 02:07:40', NULL, 27),
(90, '-', 'SPK  JKT - 016', '2024-01-09', 'CV. GUS MAJU', 'KM. Oriental Jade V.01', 0, 0, 0, 18, '2024-02-29 02:14:44', NULL, 27),
(91, '-', 'SPK  JKT - 017', '2024-01-10', 'CV. GUS MAJU', 'KM. Spil Rahayu V.02', 0, 0, 0, 18, '2024-02-29 02:17:11', NULL, 27),
(92, '-', 'SPK  JKT - 018', '2024-01-10', 'CV. GUS MAJU', 'KM. Kanal Mas V.2', 0, 0, 0, 18, '2024-02-29 02:30:51', NULL, 27),
(93, '-', 'SPK  JKT - 019', '2024-01-10', 'CV. GUS MAJU', 'KM. Teluk Bintuni V.02', 0, 0, 0, 18, '2024-02-29 02:34:04', NULL, 26),
(94, '-', 'SPK  JKT - 020', '2024-01-13', 'CV. GUS MAJU', 'KM. Oriental Emerald V.01', 0, 0, 0, 18, '2024-02-29 02:37:35', NULL, 26),
(95, '-', 'SPK  JKT - 021', '2024-01-12', 'CV. GUS MAJU', 'KM. M.Manado V. 176', 0, 0, 0, 18, '2024-02-29 02:41:27', NULL, 26),
(96, '-', 'SPK  JKT - 022', '2024-01-12', 'CV. GUS MAJU', 'KM. Tanto Langgeng V.307', 0, 0, 0, 18, '2024-02-29 02:43:27', NULL, 27),
(97, '-', 'SPK  JKT - 023', '2024-01-12', 'CV. GUS MAJU', 'KM. Barito Mas V.3', 0, 0, 0, 18, '2024-02-29 02:46:12', NULL, 27),
(98, '-', 'SPK  JKT - 024', '2024-01-15', 'CV. GUS MAJU', 'KM. Spil Ratna V.02', 0, 0, 0, 18, '2024-02-29 02:47:58', NULL, 27),
(99, '-', 'SPK JKT - 025', '2024-01-15', 'CV. GUS MAJU', 'KM. Orietal Diamond V.02', 0, 0, 0, 18, '2024-02-29 02:51:40', NULL, 42),
(100, '-', 'SPK  JKT - 026', '2024-01-15', 'CV. GUS MAJU', 'KM. Orietal Diamond V.02', 0, 0, 0, 18, '2024-02-29 02:54:04', NULL, 42),
(101, '-', 'SPK  JKT - 027', '2024-01-15', 'CV. GUS MAJU', 'KM. Kali Mas V.03', 0, 0, 0, 18, '2024-02-29 02:55:43', NULL, 17),
(102, '-', 'SPK  JKT - 028', '2024-01-16', 'CV. GUS MAJU', 'KM. Barito Mas V.3', 0, 0, 0, 18, '2024-02-29 02:58:16', NULL, 27),
(103, '-', 'SPK  JKT - 029', '2024-01-16', 'CV. GUS MAJU', 'KM. Icon Galatia V.04', 0, 0, 0, 18, '2024-02-29 03:00:37', NULL, 27),
(104, '-', 'SPK  JKT - 030', '2024-01-16', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.108', 0, 0, 0, 18, '2024-02-29 03:04:15', NULL, 27),
(105, '-', 'SPK  JKT - 031', '2024-01-18', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.108', 0, 0, 0, 18, '2024-02-29 03:09:04', NULL, 27),
(106, '-', 'SPK  JKT - 032', '2024-01-18', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.108', 0, 0, 0, 18, '2024-02-29 03:13:37', NULL, 9),
(107, '-', 'SPK  JKT - 033', '2024-01-17', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 03:15:49', NULL, 27),
(108, '-', 'SPK  JKT - 034', '2024-01-18', 'CV. GUS MAJU', 'KM. IconGalatia V.04', 0, 0, 0, 18, '2024-02-29 03:19:19', NULL, 29),
(109, '-', 'SPK  JKT - 035', '2024-01-18', 'CV. GUS MAJU', 'KM. M.Kahayan V.25', 0, 0, 0, 18, '2024-02-29 03:22:58', NULL, 17),
(110, '-', 'SPK  JKT - 036', '2024-01-18', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 03:26:22', NULL, 43),
(111, '-', 'SPK  JKT - 037', '2024-01-18', 'CV. GUS MAJU', 'KM. Kuala Mas V.02', 0, 0, 0, 18, '2024-02-29 03:29:37', NULL, 27),
(112, '-', 'SPK  JKT - 038', '2024-01-18', 'CV. GUS MAJU', 'KM. Kuala MasV.02', 0, 0, 0, 18, '2024-02-29 03:31:19', NULL, 27),
(113, '-', 'SPK  JKT - 039', '2024-02-20', 'CV. GUS MAJU', 'KM. Hilir Mas V.06', 0, 0, 0, 18, '2024-02-29 03:35:55', NULL, 27),
(114, '-', 'SPK  JKT - 040', '2024-01-18', 'CV. GUS MAJU', 'KM. Icon Daniel V.05', 0, 0, 0, 18, '2024-02-29 03:38:08', NULL, 27),
(115, '-', 'SPK  JKT - 041', '2024-12-18', 'CV. GLORIA & YPA', 'KM. M.Larantuka V.93', 0, 0, 0, 18, '2024-02-29 03:41:12', NULL, 10),
(116, '-', 'SPK  JKT - 042', '2024-01-18', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 03:42:28', NULL, 9),
(117, '-', 'SPK  JKT - 043', '2024-01-22', 'CV. GUS MAJU', 'Km. Intan Daya 17 V.110', 0, 0, 0, 18, '2024-02-29 03:49:34', NULL, 33),
(118, '-', 'SPK  JKT - 044', '2024-01-22', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 03:53:02', NULL, 27),
(119, '-', 'SPK  JKT - 045', '2024-01-23', 'CV. GUS MAJU', 'KM. Tanto Langgeng V.308', 0, 0, 0, 18, '2024-02-29 03:57:24', NULL, 27),
(120, '-', 'SPK  JKT - 046', '2024-01-23', 'CV. GUS MAJU', 'KM. Oriental Silver V.01', 0, 0, 0, 18, '2024-02-29 05:09:51', NULL, 26),
(121, '-', 'SPK  JKT - 047', '0004-01-23', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:12:28', NULL, 9),
(122, '-', 'SPK  JKT - 048', '2024-01-23', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:14:37', NULL, 27),
(123, '-', 'SPK  JKT - 049', '2024-01-23', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:16:14', NULL, 27),
(124, '-', 'SPK  JKT - 050', '2024-01-23', 'CV. GUS MAJU', 'KM. Intan Daya V.109', 0, 0, 0, 18, '2024-02-29 05:19:10', NULL, 17),
(125, '-', 'SPK  JKT - 051', '2024-01-24', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:19:47', NULL, 27),
(126, '-', 'SPK  JKT - 052', '2024-01-24', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:21:18', NULL, 26),
(127, '-', 'SPK  JKT - 053', '2024-01-24', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:23:22', NULL, 27),
(128, '-', 'SPK  JKT - 054', '2024-01-25', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:25:00', NULL, 27),
(129, '-', 'SPK  JKT - 055', '2024-01-25', 'CV. GUS MAJU', 'KM. M.Wakatobi V.206', 0, 0, 0, 18, '2024-02-29 05:26:59', NULL, 26),
(130, '-', 'SPK  JKT - 056', '2024-01-25', 'CV. GUS MAJU & YPA', 'KM. M.Laboan Bajo V.094', 0, 0, 0, 18, '2024-02-29 05:28:57', NULL, 10),
(131, '-', 'SPK  JKT - 057', '2024-01-25', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:30:29', NULL, 34),
(132, '-', 'SPK  JKT - 058', '2024-01-29', 'CV. GUS MAJU', 'KM.Izzumi Mas V.08', 0, 0, 0, 18, '2024-02-29 05:32:17', NULL, 27),
(133, '-', 'SPK  JKT - 059', '2024-01-29', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.109', 0, 0, 0, 18, '2024-02-29 05:35:24', NULL, 27),
(134, '-', 'SPK  JKT - 060', '2024-01-29', 'CV. GUS MAJU', 'KM. Icon Corintus V.01', 0, 0, 0, 18, '2024-02-29 05:37:00', NULL, 35),
(135, '-', 'SPK  JKT - 061', '2024-01-29', 'CV. GUS MAJU', 'KM. Hijau Samudera', 0, 0, 0, 18, '2024-02-29 05:39:00', NULL, 27),
(136, '-', 'SPK  JKT - 062', '2024-01-29', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:40:27', NULL, 26),
(137, '-', 'SPK  JKT - 063', '2024-01-29', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:42:16', NULL, 26),
(138, '-', 'SPK  JKT - 064', '2024-01-29', 'CV. GUS MAJU', '-', 0, 0, 0, 18, '2024-02-29 05:43:24', NULL, 27),
(139, '-', 'SPK  JKT - 065', '2024-01-29', 'CV. GUS MAJU', 'KM. M.Kapuas V.188', 0, 0, 0, 18, '2024-02-29 05:45:25', NULL, 26),
(140, '-', 'SPK  JKT - 066', '2024-01-29', 'CV. GUS MAJU', 'KM. M.Medan V.093', 0, 0, 0, 18, '2024-02-29 05:47:04', NULL, 26),
(141, '-', 'SPK  JKT - 067', '2024-01-29', 'CV. GUS MAJU', 'KM. Intan Daya 17 V.109', 0, 0, 0, 18, '2024-02-29 05:48:37', NULL, 27),
(142, '-', 'SPK  JKT - 058', '2024-01-29', 'CV. GLORIA & YPA', 'KM. Meratus Labuan Bajo V. 95', 0, 0, 0, 18, '2024-02-29 05:51:15', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_banjarmasin`
--

CREATE TABLE `tbl_sub_banjarmasin` (
  `id_sub_banjarmasin` int(11) NOT NULL,
  `id_spk_banjarmasin` int(11) NOT NULL,
  `kode_sub` varchar(5) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nilai_spk` int(11) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `jenis_pekerjaan` varchar(50) NOT NULL,
  `item_barang` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_angkut` varchar(50) DEFAULT NULL,
  `tgl_stuf` date DEFAULT NULL,
  `tgl_selesai_stuf` date DEFAULT NULL,
  `etd_kapal` date DEFAULT NULL,
  `eta_kapal` date DEFAULT NULL,
  `tgl_mulai_doring` date DEFAULT NULL,
  `tgl_selesai_doring` date DEFAULT NULL,
  `tgl_bap` date DEFAULT NULL,
  `jumlah_dikerjakan` int(11) DEFAULT NULL,
  `sisa_belum` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_banjarmasin`
--

INSERT INTO `tbl_sub_banjarmasin` (`id_sub_banjarmasin`, `id_spk_banjarmasin`, `kode_sub`, `tgl_spk`, `pelaksana`, `nilai_spk`, `vendor`, `asal`, `tujuan`, `jenis_pekerjaan`, `item_barang`, `qty`, `unit_angkut`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `id_users`, `last_update`, `tgl_debit_nota`, `dpp`, `total_payment`, `last_kerja`, `satuan`) VALUES
(1, 3, 'A', '2024-01-24', 'Ical', 2000000, 'Riyan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 10, 'Kapal', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', 2, 3, 'AAA', 'aa', 1, '2024-01-24 14:07:12', NULL, 0, 0, NULL, ''),
(3, 5, 'AA', '2024-01-24', 'Jidan', 2000000, 'Riyan Ahmad', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 10, 'Kapal', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', 2, 3, 'AAA', 'aa', 1, '0000-00-00 00:00:00', '2024-01-31', 2000000, 151000, NULL, ''),
(6, 3, 'BAB', '2024-01-31', 'Kinda', 120000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 2, 'Kapal', '2024-01-31', '2024-01-31', '2024-01-31', '2024-01-31', '2024-01-31', '2024-01-31', '2024-01-31', 2, 3, 'AAA', 'UIN', 10, '2024-01-31 11:33:28', NULL, 0, 0, NULL, ''),
(7, 3, 'BAC', '2024-01-31', 'Kinda AAI', 120000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 2, 'Kapal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2024-01-31 14:31:10', NULL, 0, 0, NULL, ''),
(8, 9, 'A', '2024-02-01', 'Kinda', 120000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 1, 'Kapal', '0000-00-00', '2024-02-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 10, '2024-02-01 03:30:51', '2024-02-03', 30000, 0, NULL, ''),
(9, 9, 'B', '2024-02-02', 'Kinda Yanto', 30000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 1, 'Kapal', '2024-02-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 3, 2, '', '', 10, '2024-02-02 14:22:06', NULL, 0, 0, NULL, ''),
(10, 10, 'B', '2024-02-02', 'Kinda Yanto', 30000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 4, 'Kapal', '2024-02-03', '2024-02-03', '2024-02-03', '2024-01-01', '2024-02-03', '2024-02-03', '2024-02-03', 2, 2, 'dsadsa', 'ssaas', 10, '2024-02-02 14:42:58', '2024-02-08', 470000, 0, 'Gojo Satoru - 2024-02-08 13:20:11', ''),
(12, 11, 'A', '2024-02-08', 'CV Amalia', 450000000, 'PT Sinar mas Agro Lestari', 'Gresik', 'Samarinda', 'DTD', 'Pupuk', 50000, 'KAPAL', '0000-00-00', '0000-00-00', '2024-02-08', '2024-02-08', '2024-02-10', '0000-00-00', '0000-00-00', 5000, 45000, 'on proses', 'proses', 13, '2024-02-08 07:21:34', '2024-02-17', 40200000, 152000000, 'Gojo Satoru - 2024-02-08 13:24:30', ''),
(13, 14, 'A', '2024-02-20', 'CV. Dumas', 100000000, 'PT. Astra', 'Palu ( Pabrik PT. CAN )', 'Samarinda ( Kebun KED )', 'DTD', 'Pupuk Npk', 1000, 'Trucking', '2024-02-23', '2024-02-23', '0000-00-00', '0000-00-00', '2024-02-26', '2024-02-28', '2024-03-07', 1000, 0, 'Selesai Muat', 'Muat Hari Ke 3 Klm. Mutiara Hati ( Selesai Muat )', 19, '2024-02-20 07:05:25', '2024-03-16', 500000000, 100000000, 'muhammad - 2024-02-20 07:43:15', ''),
(15, 14, 'B', '2024-02-23', 'PT. Hartamsa', 200000000, 'PT. Astra', 'Port Palu', 'Port Samarinda', 'PTP', 'Pupuk Npk', 1000, 'Klm', '0000-00-00', '0000-00-00', '2024-02-24', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 200, 800, 'proses', 'proses', 19, '2024-02-20 07:32:29', NULL, 0, 0, 'vic - 2024-02-20 08:09:26', ''),
(16, 14, 'C', '2024-02-25', 'CV. Amalia', 0, 'PT. Astra', 'Port Samarinda', 'Kebun PT. KED', 'PTD', 'Pupuk Npk', 1000, 'Trucking Colt Diesel', '2024-02-19', '2024-02-20', '2024-02-19', '2024-02-20', '0000-00-00', '0000-00-00', '2024-03-08', 100, 900, 'BAP Klm. Mutiara Hati', 'Kapal Belum Sandar', 19, '2024-02-20 07:36:07', NULL, 0, 0, 'vic - 2024-02-20 08:07:24', ''),
(17, 15, 'A', '2024-02-20', 'PT.AAAA', 50000000, 'VALINDO', 'BANJARMASIN', 'SEMARANG', 'LANSUNG', 'FLORING', 90, 'KAPAL', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 90, '', '', 13, '2024-02-20 09:22:33', NULL, 0, 0, 'yasky - 2024-02-20 09:22:33', ''),
(18, 16, 'A', '2024-02-20', 'Kinda', 120000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 2, 'Kapal', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 15, '2024-02-20 13:54:55', NULL, 0, 0, 'adminGLM - 2024-02-20 13:52:32', 'Kgs'),
(19, 18, 'A', '2024-01-01', 'CV. ARJUNA', 2186812, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Palu', 'PTD', 'Lampu LED', 1, 'Conatiner', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-21 05:14:30', NULL, 0, 2162812, 'muhammad - 2024-02-21 05:14:30', 'Container 20\"'),
(20, 19, 'A', '2024-01-01', 'CV. ARJUNA', 9225869, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-21 05:20:36', '2024-01-22', 11805869, 9164869, 'muhammad - 2024-02-21 05:20:36', 'Container 20\"'),
(21, 20, 'A', '2024-01-01', 'CV. ARJUNA', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-21 05:23:57', NULL, 0, 22209389, 'muhammad - 2024-02-21 05:23:57', 'Container 20\"'),
(22, 21, 'A', '2024-01-01', 'CV. ARJUNA', 9507098, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-21 05:26:34', '2024-01-22', 11907098, 9315456, 'muhammad - 2024-02-21 05:26:34', '2 Container 20\" & 1 Container 40\"'),
(23, 22, 'A', '2024-01-04', 'PT. Hartamsa', 184756000, 'PT. GOAUTAMA', 'Port Bontang', 'Port Palu', 'PTP', 'Pupuk Urea', 850, 'Klm', '2024-01-01', '2024-01-03', '2024-01-04', '2024-01-05', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'KAPAL SELESAI MUAT', 'KAPAL TIBA DI PORT PALU', 19, '2024-02-21 05:29:09', '2024-02-28', 0, 92378000, 'muhammad - 2024-02-28 04:29:02', 'Ton'),
(24, 22, 'B', '2024-01-04', 'Ibu Lidia Dumas', 140250000, 'PT. GOAUTAMA', 'Port Palu', 'Pabrik PT. CAN Palu', 'PTD', 'Pupuk Urea', 850, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-08', '2024-01-16', '2024-02-13', 850, 0, 'KAPAL SELESAI BONGKAR', 'BERITA ACARA SUDAH DI TAGIHKAN', 19, '2024-02-21 05:30:38', NULL, 0, 100000000, 'muhammad - 2024-02-28 04:30:35', 'Ton'),
(25, 23, 'A', '2024-01-05', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-21 08:07:50', '2024-01-22', 6665095, 5995095, 'muhammad - 2024-02-21 08:07:50', 'Container 20\"'),
(26, 24, 'A', '2024-01-05', 'CV. Arjuna', 16250000, 'PT. HARAPAN RIMBA', 'BAMW', 'Sungai Kedang', 'DTD Inland', 'Sparepart', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-21 08:10:37', NULL, 0, 15925000, 'muhammad - 2024-02-21 08:10:37', 'Unit Fuso'),
(27, 25, 'A', '2023-12-08', 'CV. Arjuna', 3573625, 'PT. KENCANA MEGAH', 'Port Banjarmasin', 'Gudang BBS', 'PTD', 'Semen', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-21 08:13:19', NULL, 0, 3543625, 'muhammad - 2024-02-21 08:13:19', 'Container 20\"'),
(28, 26, 'A', '2024-01-08', 'CV. Kembar Transport', 71550000, 'PT. ASTRA', 'PT. SAM', 'PT. STN', 'DTD Inland', 'Pupuk Urea', 79500, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-02', '2024-01-03', '2024-01-03', 79500, 0, 'SELESAI DOORING', 'SELESAI DOORING ( SUDAH TAGIH )', 19, '2024-02-21 08:20:56', NULL, 0, 0, 'muhammad - 2024-02-29 08:01:00', 'Kg'),
(29, 27, 'A', '2024-01-08', 'CV. ARJUNA', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-21 08:23:54', NULL, 0, 22944394, 'muhammad - 2024-02-21 08:23:54', 'Container 20\"'),
(30, 28, 'A', '2024-01-01', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 11:04:57', NULL, 0, 8251389, 'muhammad - 2024-02-27 11:04:57', 'Container 20\"'),
(31, 29, 'A', '2024-01-09', 'CV. ARJUNA', 1862000, 'PT. MAKMUR JAYA EMULSI', 'GUDANG AMP 17', 'KAPUAS & FUZON', 'DTD Inland', 'ASPAL CPHMA', 0, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 11:07:50', NULL, 0, 1862000, 'muhammad - 2024-02-27 11:07:50', 'Ton'),
(32, 30, 'A', '2024-01-09', 'CV. ARJUNA', 9511369, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 11:10:16', '2024-01-22', 13811419, 9150369, 'muhammad - 2024-02-27 11:10:16', 'Container 20\"'),
(33, 31, 'A', '2024-01-10', 'CV. ARJUNA', 5472918, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:12:08', '2024-01-22', 6932918, 5420918, 'muhammad - 2024-02-27 11:12:08', 'Container 20\"'),
(34, 32, 'A', '2024-01-10', 'CV. ARJUNA', 1846075, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 11:14:31', '2024-01-22', 1100000, 1846075, 'muhammad - 2024-02-27 11:14:31', 'Container 20\"'),
(35, 33, 'A', '2024-01-11', 'CV. ARJUNA', 4731547, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:16:03', NULL, 0, 4696547, 'muhammad - 2024-02-27 11:16:03', 'Container 20\"'),
(36, 34, 'A', '2024-02-11', 'CV. ARJUNA', 5936816, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:24:06', NULL, 0, 5885816, 'muhammad - 2024-02-27 11:24:06', 'Container 20\"'),
(37, 35, 'A', '2024-01-11', 'CV. ARJUNA', 8223789, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:25:33', '2024-01-22', 6581547, 9100789, 'muhammad - 2024-02-27 11:25:33', 'Container 20\"'),
(38, 36, 'A', '2024-01-01', 'GLM BJM OPS', 13520000, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '2024-01-11', '2024-01-14', '2024-01-20', '2024-01-31', '2024-02-27', 0, 1, 'SELESAI', '', 32, '2024-02-28 11:00:18', NULL, 0, 20858889, 'Cunda Raynata - 2024-02-28 10:59:26', 'Container 20\"'),
(39, 37, 'A', '2024-01-12', 'CV. Amalia', 19635000, 'PT. PKT', 'GD. BALIKPAPAN', 'GD. PASER', 'DTD Inland', 'Pupuk', 44, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-13', '2024-01-16', '2024-01-24', 44, 0, 'SELESAI', 'SELESAI SUDAH DI TAGIH TGL 01/02/2024', 19, '2024-02-27 11:28:59', NULL, 0, 19536825, 'Yudha Noviansyah - 2024-02-28 03:52:12', 'Ton'),
(40, 38, 'A', '2024-01-12', 'CV. ARJUNA', 900000, 'PT. BERSAUDARA', 'GD. BASIRIH', 'GD. GAMBUT', 'DTD Inland', 'KABEL OPTIK', 150, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 150, '', '', 19, '2024-02-27 11:30:36', NULL, 0, 882000, 'muhammad - 2024-02-27 11:30:36', 'DUS'),
(41, 39, 'A', '2024-01-12', 'GLM BJM OPS', 8757945, 'PT. SENTANA ADIDAYA', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Pupuk', 5, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 5, '', '', 19, '2024-02-27 11:32:32', NULL, 0, 8757945, 'muhammad - 2024-02-27 11:32:32', 'Container 20\"'),
(42, 40, 'A', '2024-01-16', 'CV. Amalia', 44625000, 'PT. PKT', 'GD. BJM KM 21', 'GD. TAPIN II', 'DTD Inland', 'Pupuk', 220, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-17', '2024-01-23', '2024-02-26', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI KANTOR PI)', 19, '2024-02-27 11:34:31', NULL, 0, 44401875, 'Yudha Noviansyah - 2024-02-28 03:55:16', 'Ton'),
(43, 41, 'A', '2024-01-12', 'CV. ARJUNA', 16250000, 'PT. KRUING LESTARI', 'BAMW', 'Sungai Pikan', 'DTD Inland', 'Tipping Trailer', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 11:37:29', NULL, 0, 15925000, 'muhammad - 2024-02-27 11:37:29', 'Unit Fuso'),
(44, 42, 'A', '2024-01-15', 'CV. ARJUNA', 11147250, 'PT. JUI SHIN', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Keramik', 4, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 19, '2024-02-27 11:38:54', NULL, 0, 11003250, 'muhammad - 2024-02-27 11:38:54', 'Container 20\"'),
(45, 43, 'A', '2024-01-15', 'CV. Amalia', 117600000, 'PT. PKT', 'PORT BERAU', 'GD. BERAU', 'PTD', 'Pupuk', 700, 'Klm', '2024-01-03', '2024-01-06', '2024-01-11', '2024-01-14', '2024-01-15', '2024-01-23', '2024-01-30', 700, 0, 'SELESAI', 'SELESAI SUDAH DI TAGIH TGL 01/02/2024', 19, '2024-02-27 11:40:59', NULL, 0, 132012000, 'Yudha Noviansyah - 2024-02-28 03:58:45', 'Ton'),
(46, 44, 'A', '2024-01-01', 'GLM BJM OPS', 10430533, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 5, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 5, '', '', 19, '2024-02-27 11:42:49', NULL, 0, 10430533, 'muhammad - 2024-02-27 11:42:49', 'Container 20\"'),
(47, 45, 'A', '2024-01-15', 'CV. ARJUNA', 11246562, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 4, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 19, '2024-02-27 11:44:21', NULL, 0, 11178562, 'muhammad - 2024-02-27 11:44:21', 'Container 20\"'),
(48, 46, 'A', '2024-01-01', 'GLM BJM OPS', 24388000, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 2, 'Container', '0000-00-00', '0000-00-00', '2024-01-17', '2024-02-20', '2024-01-25', '2024-02-21', '2024-02-27', 0, 2, 'SELESAI', '', 32, '2024-02-28 10:53:34', NULL, 0, 39112396, 'Cunda Raynata - 2024-02-28 10:52:31', 'Container 20\"'),
(49, 47, 'A', '2024-01-01', 'GLM BJM OPS', 7751330, 'PT. PVMI', 'Port Banjarmasin', 'Jakarta', 'PTD', 'Permen', 0, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 11:48:34', NULL, 0, 7751330, 'muhammad - 2024-02-27 11:48:34', 'LCL'),
(50, 48, 'A', '2024-01-18', 'CV. Amalia', 20776000, 'PT. PKT', 'GD. PAGATAN', 'KOTABARU', 'DTD Inland', 'Pupuk', 56, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-18', '2024-01-20', '2024-02-21', 56, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 11:50:21', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-28 23:29:27', 'Ton'),
(51, 49, 'A', '2024-01-18', 'CV. ARJUNA', 4729412, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:52:15', NULL, 0, 4703412, 'muhammad - 2024-02-27 11:52:15', 'Container 20\"'),
(52, 50, 'A', '2024-01-18', 'CV. ARJUNA', 4376755, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 11:53:30', NULL, 0, 4335664, 'muhammad - 2024-02-27 11:53:30', 'Container 20\"'),
(53, 51, 'A', '2024-01-18', 'CV. ARJUNA', 9773633, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 11:54:52', NULL, 0, 10647633, 'muhammad - 2024-02-27 11:54:52', 'Container 20\"'),
(54, 52, 'A', '2024-01-18', 'CV. ARJUNA', 8460207, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 11:56:20', NULL, 0, 8399207, 'muhammad - 2024-02-27 11:56:20', 'Container 20\"'),
(55, 53, 'A', '2024-01-01', 'CV. Kembar Transport', 192350000, 'PT. WILMAR', 'GD. BANJARMASIN', 'KEBUN PT. KAP 2', 'DTD', 'Pupuk', 961750, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 869850, 91900, 'PROSES DOORING', 'Dooring Ke 13 47,1 Ton', 19, '2024-02-28 07:54:26', NULL, 0, 49072291, 'muhammad - 2024-02-29 00:54:09', 'Kg'),
(56, 54, 'A', '2024-01-18', 'CV. Amalia', 576192700, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 2745850, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 1762300, 983550, 'PROSES DOORING', 'Dooring Ke 24 84 Ton', 19, '2024-02-28 08:33:20', NULL, 0, 100000000, 'muhammad - 2024-02-29 00:54:56', 'Kg'),
(57, 55, 'A', '2024-01-01', 'CV. ARJUNA', 6624800, 'PT. SINARMAS', 'SURABAYA', 'BANJARMASIN', 'DTD', '-', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, 'SELESAI', '', 19, '2024-02-27 12:03:37', NULL, 0, 6624800, 'Cunda Raynata - 2024-02-28 11:20:09', 'Container 20\"'),
(58, 56, 'A', '2024-01-19', 'CV. ARJUNA', 4678041, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 12:05:58', NULL, 0, 4652041, 'muhammad - 2024-02-27 12:05:58', 'Container 20\"'),
(59, 57, 'A', '2024-01-19', 'CV. ARJUNA', 2739021, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:07:19', NULL, 0, 2739021, 'muhammad - 2024-02-27 12:07:19', 'Container 20\"'),
(60, 58, 'A', '2024-01-24', 'CV. ARJUNA', 450000, 'PT. BERSAUDARA', 'GD. BASIRIH', 'GAMBUT', 'DTD Inland', 'KABEL OPTIK', 200, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 200, '', '', 19, '2024-02-27 12:09:19', NULL, 0, 441000, 'muhammad - 2024-02-27 12:09:19', 'DUS'),
(61, 59, 'A', '2024-01-24', 'CV. ARJUNA', 4000000, 'PT. SINARMAS', 'SRUM', 'TANAH LAUT', 'DTD Inland', 'MUTASI', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:11:19', NULL, 0, 3920000, 'muhammad - 2024-02-27 12:11:19', 'CDD'),
(62, 60, 'A', '2024-01-22', 'CV. ARJUNA', 5673243, 'PT. JUI SHIN', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Keramik', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 12:13:03', NULL, 0, 5601243, 'muhammad - 2024-02-27 12:13:03', 'Container 20\"'),
(63, 61, 'A', '2024-01-25', 'CV. ARJUNA', 38376000, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 2, 'Trucking', '0000-00-00', '0000-00-00', '2024-01-22', '2024-01-25', '2024-01-29', '2024-02-02', '2024-02-27', 0, 2, 'SELESAI', '', 32, '2024-02-28 10:48:08', NULL, 0, 59506396, 'Cunda Raynata - 2024-02-28 10:44:30', 'Container 20\"'),
(64, 62, 'A', '2024-01-29', 'CV. ARJUNA', 5095299, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 12:15:55', NULL, 0, 5095299, 'muhammad - 2024-02-27 12:15:55', 'Container 20\"'),
(65, 63, 'A', '2024-01-29', 'CV. ARJUNA', 6685299, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 12:17:03', NULL, 0, 19195299, 'muhammad - 2024-02-27 12:17:03', 'Container 20\"'),
(66, 64, 'A', '2024-01-05', 'PT. Hartamsa', 143852800, 'PT. PKT', 'Port Bontang', 'Port Batulicin', 'PTP', 'Pupuk', 560, 'Klm', '2023-12-26', '2023-12-29', '2024-01-01', '2024-02-04', '2024-01-09', '2024-01-13', '2024-01-22', 560, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 12:18:50', NULL, 0, 121926400, 'Yudha Noviansyah - 2024-02-28 23:36:38', 'Ton'),
(67, 64, 'B', '2024-01-08', 'CV. Amalia', 0, 'PT. PKT', 'Port Batulicin', 'GD. Batulicin', 'PTD', 'Pupuk', 559, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-09', '2024-01-13', '2024-01-22', 559, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 12:19:46', NULL, 0, 100000000, 'Yudha Noviansyah - 2024-02-28 23:38:50', 'Ton'),
(68, 65, 'A', '2024-01-25', 'CV. Dumas', 174250000, 'PT. ASTRA', 'Palu ( Pabrik PT. CAN )', 'Port Palu', 'DTP', 'Pupuk Npk', 850, 'Trucking', '2024-01-17', '2024-01-26', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'SELESAI MUAT', '', 19, '2024-02-27 12:22:03', NULL, 0, 155000000, 'muhammad - 2024-02-28 04:32:29', 'Ton'),
(69, 65, 'B', '2024-01-25', 'PT. Hartamsa', 226746000, 'PT. ASTRA', 'Port Palu', 'Port Samarinda', 'PTP', 'Pupuk Npk', 850, 'Klm', '0000-00-00', '0000-00-00', '2024-01-27', '2024-01-31', '0000-00-00', '0000-00-00', '0000-00-00', 850, 0, 'KAPAL BERANGKAT', 'Kapal Tiba Port Samarinda', 19, '2024-02-27 12:22:48', NULL, 0, 113373000, 'muhammad - 2024-02-28 04:34:09', 'Ton'),
(70, 65, 'C', '2024-01-25', 'CV. Amalia', 789440000, 'PT. ASTRA', 'Port Samarinda', 'Kebun PT. KED', 'PTD', 'Pupuk Npk', 850, 'Trucking / Imbal', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-01', '2024-02-07', '0000-00-00', 850, 0, 'SELESAI BONGKAR', 'BA MASIH DI KEBUN', 19, '2024-02-27 12:23:46', NULL, 0, 545000000, 'muhammad - 2024-02-28 04:34:50', 'Ton'),
(71, 66, 'A', '2024-01-26', 'CV. ARJUNA', 2883541, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:26:50', NULL, 0, 2883541, 'muhammad - 2024-02-27 12:26:50', 'Container 20\"'),
(72, 67, 'A', '2024-01-25', 'Bpk Aspiansyah', 45750000, 'PT. PKT', 'GD. KONG EX 2', 'GD. AMPAH', 'DTD Inland', 'Pupuk Npk', 110, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-25', '2024-01-31', '2024-02-26', 110, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 12:28:57', NULL, 0, 44835000, 'Yudha Noviansyah - 2024-02-28 23:42:03', 'Ton'),
(73, 68, 'A', '2024-01-26', 'CV. Amalia', 14840000, 'PT. PKT', 'GD. PAGATAN', 'KOTABARU', 'DTD Inland', 'Pupuk', 40, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-01-27', '2024-01-29', '2024-02-21', 40, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 12:30:32', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-28 23:44:06', 'Ton'),
(74, 69, 'A', '2024-01-26', 'CV. ARJUNA', 29120000, 'PT. MAHAKAM PERSADA SAKTI', 'BALIKPAPAN', 'SAMARINDA', 'DTD', 'CONTAINER EMPTY', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:32:38', NULL, 0, 0, 'muhammad - 2024-02-27 12:32:38', 'Container 20\" & 1 Container 40\"'),
(75, 70, 'A', '2024-01-26', 'CV. ARJUNA', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:33:59', NULL, 0, 28826307, 'muhammad - 2024-02-27 12:33:59', 'Container 20\"'),
(76, 71, 'A', '2024-01-27', 'GLM BJM OPS', 11725000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 175, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 175, '', '', 19, '2024-02-27 12:36:03', NULL, 0, 10795886, 'muhammad - 2024-02-27 12:36:03', 'Ton'),
(77, 72, 'A', '2024-01-29', 'PT. YPA & AGENT', 15750000, 'PT. PVM', 'SURABAYA', 'WAINGAFU', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:37:42', NULL, 0, 0, 'muhammad - 2024-02-27 12:37:42', 'Container 20\"'),
(78, 73, 'A', '2024-01-29', 'CV. ARJUNA', 2090000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 12:39:12', NULL, 0, 6299478, 'muhammad - 2024-02-27 12:39:12', 'Container 20\"'),
(79, 74, 'A', '2024-01-30', 'CV. Dumas', 205000000, 'PT. ASTRA', 'Palu ( Pabrik PT. CAN )', 'Port Palu', 'DTP', 'Pupuk Npk', 1000, 'Trucking', '2024-01-30', '2024-02-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'SELESAI MUAT', '', 19, '2024-02-27 12:42:45', NULL, 0, 165000000, 'muhammad - 2024-02-28 04:39:59', 'Ton'),
(80, 74, 'B', '2024-01-30', 'HANDRAWI', 270000000, 'PT. ASTRA', 'Port Palu', 'Port Samarinda', 'PTP', 'Pupuk Npk', 1000, 'Klm', '0000-00-00', '0000-00-00', '2024-02-07', '2024-02-09', '0000-00-00', '0000-00-00', '0000-00-00', 1000, 0, 'KAPAL BERANGKAT', 'KAPAL TIBA DI PORT SAMARINDA', 19, '2024-02-27 12:43:28', NULL, 0, 30000000, 'muhammad - 2024-02-28 04:40:38', 'Ton'),
(81, 74, 'C', '2024-01-30', 'CV. Amalia', 0, 'PT. ASTRA', 'Port Samarinda', 'Kebun PT. KED', 'PTD', 'Pupuk Npk', 1000, 'Trucking / Imbal', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 739, 261, 'Proses Bongkar', 'PEMBONGKARAN KE 11 VIA TRUCKING & IMBAL 175,5 TON', 19, '2024-02-27 12:44:03', NULL, 0, 125000000, 'muhammad - 2024-02-29 00:58:32', 'Ton'),
(82, 75, 'A', '2024-01-30', 'GLM BJM OPS', 6700000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 100, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 100, '', '', 19, '2024-02-27 12:45:56', NULL, 0, 6450434, 'muhammad - 2024-02-27 12:45:56', 'Ton'),
(83, 76, 'A', '2024-01-30', 'GLM BJM OPS', 5025000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 75, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 75, '', '', 19, '2024-02-27 12:47:33', NULL, 0, 7003463, 'muhammad - 2024-02-27 12:47:33', 'Ton'),
(84, 77, 'A', '2024-01-30', 'CV. ARJUNA', 12588046, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 12:49:14', NULL, 0, 13988086, 'muhammad - 2024-02-27 12:49:14', 'Container 20\"'),
(85, 78, 'A', '2024-01-30', 'CV. ARJUNA', 2606704, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 12:50:29', NULL, 0, 3086704, 'muhammad - 2024-02-27 12:50:29', 'Container 20\"'),
(86, 79, 'A', '2024-01-31', 'CV. Dumas', 907740300, 'PT. ASTRA', 'Palu ( Pabrik PT. CAN )', 'KEBUN C1', 'DTD Inland', 'Pupuk Npk', 3853500, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-28', '0000-00-00', '0000-00-00', 948550, 2904950, 'PROSES DOORING', 'DOORING KE 13 69.550 KG TUJUAN PT. PSKY', 19, '2024-02-27 12:52:03', NULL, 0, 140000000, 'muhammad - 2024-02-29 00:56:28', 'Kg'),
(87, 80, 'A', '2024-01-31', 'GLM BJM OPS', 20100000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 300, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 300, '', '', 19, '2024-02-27 12:53:39', NULL, 0, 25701810, 'muhammad - 2024-02-27 12:53:39', 'Ton'),
(88, 81, 'A', '2024-01-31', 'CV. ARJUNA', 7777715, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 12:54:47', NULL, 0, 4057635, 'muhammad - 2024-02-27 12:54:47', 'Container 20\"'),
(89, 82, 'A', '2024-02-01', 'CV. Amalia', 48037440, 'PT. PKT', 'GD. KONG EX 2', 'GD. TAPIN', 'DTD Inland', 'Pupuk', 220, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-01', '2024-02-05', '2024-02-26', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 13:01:05', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-28 23:46:30', 'Ton'),
(90, 83, 'A', '2024-02-02', 'DIAN', 26013879, 'PT. HASNUR', 'SITE', 'SITE', 'DTD Inland', 'MATERIAL', 0, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 13:02:50', NULL, 0, 0, 'muhammad - 2024-02-27 13:02:50', '-'),
(91, 84, 'A', '2024-02-02', 'NURMAN', 0, 'PT. ASTRA', 'PABRIK PT. BCL', 'PORT KUMAI', 'DTP', 'Pupuk Npk', 0, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 13:04:19', NULL, 0, 0, 'muhammad - 2024-02-27 13:04:19', 'Ton'),
(92, 84, 'B', '2024-02-02', 'H. NOOR', 0, 'PT. ASTRA', 'PORT KUMAI', 'PORT BALIKPAPAN', 'PTP', 'Pupuk Npk', 0, 'Klm', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 13:04:54', NULL, 0, 0, 'muhammad - 2024-02-27 13:04:54', 'Ton'),
(93, 84, 'C', '2024-02-02', 'PAK YOS', 0, 'PT. ASTRA', 'PORT BALIKPAPAN', 'KEBUN B2', 'PTD', 'Pupuk Npk', 0, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 13:05:29', NULL, 0, 0, 'muhammad - 2024-02-27 13:05:29', 'Ton'),
(94, 85, 'A', '2024-02-06', 'CV. ARJUNA', 1940000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:07:06', NULL, 0, 0, 'muhammad - 2024-02-27 13:07:06', 'Container 20\"'),
(95, 86, 'A', '2024-02-06', 'CV. ARJUNA', 2040000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:10:59', NULL, 0, 0, 'muhammad - 2024-02-27 13:10:59', 'Container 20\"'),
(96, 87, 'A', '2024-02-06', 'CV. Kembar Transport', 203961000, 'PT. PKT', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Pupuk', 193, 'Trucking', '2024-01-30', '2024-02-01', '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-17', '2024-02-26', 193, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 19, '2024-02-27 13:12:22', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-28 23:50:14', 'Container 20\"'),
(97, 88, 'A', '2024-02-06', 'CV. Amalia', 44517440, 'PT. PKT', 'GD. KONG EX 4', 'GD. TAPIN II', 'DTD Inland', 'Pupuk', 220, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-06', '2024-02-13', '0000-00-00', 220, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 19, '2024-02-27 13:13:58', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-28 23:51:56', 'Ton'),
(98, 89, 'A', '2024-02-06', 'GLM BJM OPS', 986730, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:15:03', NULL, 0, 0, 'muhammad - 2024-02-27 13:15:03', 'Container 20\"'),
(99, 90, 'A', '2024-02-06', 'GLM BJM OPS', 3350000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 50, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 50, '', '', 19, '2024-02-27 13:16:25', NULL, 0, 0, 'muhammad - 2024-02-27 13:16:25', 'Ton'),
(100, 91, 'A', '2024-02-16', 'CV. ARJUNA', 1470000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:17:45', NULL, 0, 0, 'muhammad - 2024-02-27 13:17:45', 'Container 20\"'),
(101, 92, 'A', '2024-02-06', 'CV. ARJUNA', 450000, 'PT. BERSAUDARA', 'GD. BASIRIH', 'GAMBUT', 'DTD Inland', 'KABEL OPTIK', 200, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 200, '', '', 19, '2024-02-27 13:19:25', NULL, 0, 0, 'muhammad - 2024-02-27 13:19:25', 'DUS'),
(102, 93, 'A', '2024-02-06', 'GLM BJM OPS', 0, 'PT. WILMAR', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 0, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 19, '2024-02-27 13:20:36', NULL, 0, 0, 'muhammad - 2024-02-27 13:20:36', 'Ton'),
(103, 94, 'A', '2024-02-16', 'CV. ARJUNA', 3010000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:21:50', NULL, 0, 0, 'muhammad - 2024-02-27 13:21:50', 'Container 20\"'),
(104, 95, 'A', '2024-02-16', 'GLM BJM OPS', 2680000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 4, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 19, '2024-02-27 13:23:24', NULL, 0, 0, 'muhammad - 2024-02-27 13:23:24', 'Container 20\"'),
(105, 96, 'A', '2024-02-16', 'CV. ARJUNA', 2370000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:25:46', NULL, 0, 0, 'muhammad - 2024-02-27 13:25:46', 'Container 20\"'),
(106, 97, 'A', '2024-02-16', 'CV. ARJUNA', 1520000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:26:58', NULL, 0, 0, 'muhammad - 2024-02-27 13:26:58', 'Container 20\"'),
(107, 98, 'A', '2024-02-16', 'GLM BJM OPS', 790000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:28:03', NULL, 0, 0, 'muhammad - 2024-02-27 13:28:03', 'Container 20\"'),
(108, 99, 'A', '2024-02-16', 'GLM BJM OPS', 470000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:29:15', NULL, 0, 0, 'muhammad - 2024-02-27 13:29:15', 'Container 20\"'),
(109, 100, 'A', '2024-02-16', 'CV. ARJUNA', 3440000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:30:25', NULL, 0, 0, 'muhammad - 2024-02-27 13:30:25', 'Container 20\"'),
(110, 101, 'A', '2024-02-06', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:31:41', NULL, 0, 0, 'muhammad - 2024-02-27 13:31:41', 'Container 20\"'),
(111, 102, 'A', '2024-02-06', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:32:53', NULL, 0, 0, 'muhammad - 2024-02-27 13:32:53', 'Container 20\"'),
(112, 103, 'A', '2024-02-07', 'GLM BJM OPS', 35225000, 'PT. WILMAR', 'Port Banjarmasin', 'GD. WILMAR', 'PTD', 'Pupuk', 450, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 450, '', '', 19, '2024-02-27 13:34:35', NULL, 0, 0, 'muhammad - 2024-02-27 13:34:35', 'Ton'),
(113, 104, 'A', '2024-02-16', 'GLM BJM OPS', 2510000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 13:37:29', NULL, 0, 0, 'muhammad - 2024-02-27 13:37:29', 'Container 20\"'),
(114, 105, 'A', '2024-02-12', 'GLM BJM OPS', 16750000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 250, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 250, '', '', 19, '2024-02-27 13:40:16', NULL, 0, 0, 'muhammad - 2024-02-27 13:40:16', 'Ton'),
(115, 106, 'A', '2024-02-23', 'CV. ARJUNA', 2836812, 'PT. JUI SHIN', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Keramik', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:43:20', NULL, 0, 0, 'muhammad - 2024-02-27 13:43:20', 'Container 20\"'),
(116, 107, 'A', '2024-02-16', 'GLM BJM OPS', 770000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:44:46', NULL, 0, 0, 'muhammad - 2024-02-27 13:44:46', 'Container 20\"'),
(117, 108, 'A', '2024-02-15', 'CV. ARJUNA', 2836812, 'PT. JUI SHIN', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Keramik', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 13:46:14', NULL, 0, 0, 'muhammad - 2024-02-27 13:46:14', 'Container 20\"'),
(118, 109, 'A', '2024-02-15', 'CV. ARJUNA', 3523625, 'PT. KENCANA MEGAH', 'Port Banjarmasin', 'GD. BKS', 'PTD', 'Semen', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:47:52', NULL, 0, 0, 'muhammad - 2024-02-27 13:47:52', 'Container 20\"'),
(119, 110, 'A', '2024-02-15', 'CV. ARJUNA', 3673625, 'PT. KENCANA MEGAH', 'Port Banjarmasin', 'GD. BKS', 'PTD', 'Semen', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:49:17', NULL, 0, 0, 'muhammad - 2024-02-27 13:49:17', 'Container 20\"'),
(120, 111, 'A', '2024-02-13', 'CV. Amalia', 117600000, 'PT. PKT', 'PORT BERAU', 'GD. BERAU', 'PTD', 'Pupuk', 700, 'Klm', '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-10', '2024-02-12', '2024-02-15', '2024-02-21', 700, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 13:50:57', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:09:11', 'Ton'),
(121, 111, 'A', '2024-02-13', 'CV. Amalia', 117600000, 'PT. PKT', 'PORT BERAU', 'GD. BERAU', 'PTD', 'Pupuk', 700, 'Klm', '2024-02-02', '2024-02-05', '2024-02-06', '2024-02-10', '2024-02-15', '2024-02-21', '2024-02-27', 700, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (RENCANA TAGIH AWAL BULAN MAR', 19, '2024-02-27 13:51:00', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:11:28', 'Ton'),
(122, 112, 'A', '2024-02-13', 'CV. Amalia', 4000000, 'PT. PKT', 'GD. PAGATAN', 'KOTABARU', 'DTD Inland', 'Pupuk', 8, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-11', '2024-02-12', '0000-00-00', 8, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 19, '2024-02-27 13:53:49', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:14:03', 'Ton'),
(123, 113, 'A', '2024-02-16', 'GLM BJM OPS', 33500000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 500, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 500, '', '', 19, '2024-02-27 13:54:57', NULL, 0, 0, 'muhammad - 2024-02-27 13:54:57', 'Ton'),
(124, 114, 'A', '2024-02-15', 'CV. ARJUNA', 3500000, 'PT. SINARMAS', 'PWK SINARMAS', 'SUNGAI KUPANG ESTATE', 'DTD Inland', 'MUTASI', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 13:56:47', NULL, 0, 0, 'muhammad - 2024-02-27 13:56:47', 'PETI'),
(125, 115, 'A', '2024-02-16', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 13:58:25', NULL, 0, 0, 'muhammad - 2024-02-27 13:58:25', 'Container 20\"'),
(126, 116, 'A', '2024-02-16', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 13:59:19', NULL, 0, 0, 'muhammad - 2024-02-27 13:59:19', 'Container 20\"'),
(127, 117, 'A', '2024-02-16', 'CV. ARJUNA', 1400000, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:00:22', NULL, 0, 0, 'muhammad - 2024-02-27 14:00:22', 'Container 20\"'),
(128, 118, 'A', '2024-02-16', 'CV. ARJUNA', 2836812, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:01:33', NULL, 0, 0, 'muhammad - 2024-02-27 14:01:33', 'Container 20\"'),
(129, 119, 'A', '2024-02-16', 'CV. Kembar Transport', 83400000, 'PT. PENTAWIRA', 'Port Banjarmasin', 'IMK', 'PTD', 'HYDRATE LIME', 4, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 19, '2024-02-27 14:03:16', NULL, 0, 0, 'muhammad - 2024-02-27 14:03:16', 'Container 20\"'),
(130, 120, 'A', '2024-02-20', 'CV. Kembar Transport', 83400000, 'PT. PENTAWIRA', 'Port Banjarmasin', 'IMK', 'PTD', 'HYDRATE LIME', 4, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 19, '2024-02-27 14:05:38', NULL, 0, 0, 'muhammad - 2024-02-27 14:05:38', 'Container 20\"'),
(131, 121, 'A', '2024-02-19', 'CV. Amalia', 19010020, 'PT. PKT', 'GD. KONG EX 4', 'GD. AMPAH', 'DTD Inland', 'Pupuk', 43550, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-22', '0000-00-00', 43, 43507, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI GUDANG PENERIMA)', 19, '2024-02-27 14:08:14', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:16:02', 'Kg'),
(132, 122, 'A', '2024-02-20', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:09:50', NULL, 0, 0, 'muhammad - 2024-02-27 14:09:50', 'Container 20\"'),
(133, 123, 'A', '2024-02-21', 'CV. SATRIA', 135000000, 'PT. PKT', 'GD. INDONUSA SAMPIT', 'GD. INDONUSA KUMAI', 'DTD Inland', 'Pupuk', 250, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-24', '2024-02-28', 250, 0, 'SELESAI', 'SELESAI BLM DI TAGIH (BA MASIH DI KANTOR PI)', 19, '2024-02-27 14:11:28', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:17:37', 'Ton'),
(134, 124, 'A', '2024-02-15', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:14:33', NULL, 0, 0, 'muhammad - 2024-02-27 14:14:33', 'Container 20\"'),
(135, 125, 'A', '2024-02-21', 'GLM BJM OPS', 35175000, 'PT. JADIMAS', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 525, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 525, '', '', 19, '2024-02-27 14:15:59', NULL, 0, 0, 'muhammad - 2024-02-27 14:15:59', 'Ton'),
(136, 126, 'A', '2024-02-21', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:17:19', NULL, 0, 0, 'muhammad - 2024-02-27 14:17:19', 'Container 20\"'),
(137, 127, 'A', '2024-02-21', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 14:18:56', NULL, 0, 0, 'muhammad - 2024-02-27 14:18:56', 'Container 20\"'),
(138, 128, 'A', '2024-02-21', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:20:22', NULL, 0, 0, 'muhammad - 2024-02-27 14:20:22', 'Container 20\"'),
(139, 129, 'A', '2024-02-23', 'CV. Dumas', 112750000, 'PT. ASTRA', 'Palu ( Pabrik PT. CAN )', 'Port Palu', 'DTP', 'Pupuk Npk', 550, 'Trucking', '2024-02-28', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 353, 197, 'Proses Muat', 'PEMUATAN KE 4 90 TON', 19, '2024-02-27 14:21:43', NULL, 0, 0, 'muhammad - 2024-02-29 00:59:44', 'Ton'),
(140, 129, 'B', '2024-02-23', 'HANDRAWI', 118250000, 'PT. ASTRA', 'Port Palu', 'Port Sangkulirang', 'PTP', 'Pupuk Npk', 550, 'Klm', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 550, '', '', 19, '2024-02-27 14:22:23', NULL, 0, 0, 'muhammad - 2024-02-27 14:22:23', 'Ton'),
(141, 129, 'C', '2024-02-23', 'CV. Amalia', 137500000, 'PT. ASTRA', 'Port Sangkulirang', 'Kebun PT. SKP & PT. CNL', 'PTD', 'Pupuk Npk', 550, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 550, '', '', 19, '2024-02-27 14:23:09', NULL, 0, 0, 'muhammad - 2024-02-27 14:23:09', 'Ton'),
(142, 130, 'A', '2024-02-23', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:25:22', NULL, 0, 0, 'muhammad - 2024-02-27 14:25:22', 'Container 20\"'),
(143, 131, 'A', '2024-02-23', 'GLM BJM OPS', 34508250, 'PT. SENTANA ADIDAYA', 'Port Banjarmasin', 'Kebun Tujuan', 'PTD', 'Pupuk', 490, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 490, '', '', 19, '2024-02-27 14:26:44', NULL, 0, 0, 'muhammad - 2024-02-27 14:26:44', 'Ton'),
(144, 132, 'A', '2024-02-23', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 6, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 6, '', '', 19, '2024-02-27 14:27:48', NULL, 0, 0, 'muhammad - 2024-02-27 14:27:48', 'PETI');
INSERT INTO `tbl_sub_banjarmasin` (`id_sub_banjarmasin`, `id_spk_banjarmasin`, `kode_sub`, `tgl_spk`, `pelaksana`, `nilai_spk`, `vendor`, `asal`, `tujuan`, `jenis_pekerjaan`, `item_barang`, `qty`, `unit_angkut`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `id_users`, `last_update`, `tgl_debit_nota`, `dpp`, `total_payment`, `last_kerja`, `satuan`) VALUES
(145, 133, 'A', '2024-02-26', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 14:28:58', NULL, 0, 0, 'muhammad - 2024-02-27 14:28:58', 'Container 20\"'),
(146, 134, 'A', '2024-02-26', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:30:00', NULL, 0, 0, 'muhammad - 2024-02-27 14:30:00', 'Container 20\"'),
(147, 135, 'A', '2024-02-26', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:31:18', NULL, 0, 0, 'muhammad - 2024-02-27 14:31:18', 'Container 20\" & 1 Container 40\"'),
(148, 136, 'A', '2024-02-26', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 14:32:27', NULL, 0, 0, 'muhammad - 2024-02-27 14:32:27', 'Container 20\"'),
(149, 137, 'A', '2024-02-26', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 1, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-27 14:33:57', NULL, 0, 0, 'muhammad - 2024-02-27 14:33:57', 'Container 20\"'),
(150, 138, 'A', '2024-02-27', 'CV. Kembar Transport', 283200000, 'PT. PKT', 'GD. SAMPIT', 'GD. KUMAI', 'DTD Inland', 'Pupuk', 500, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-26', '0000-00-00', '0000-00-00', 404, 96, 'BELUM SELESAI', 'BELUM SELESAI', 19, '2024-02-27 14:35:48', NULL, 0, 0, 'Yudha Noviansyah - 2024-02-29 00:29:59', 'Ton'),
(151, 139, 'A', '2024-02-27', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 14:36:58', NULL, 0, 0, 'muhammad - 2024-02-27 14:36:58', 'Container 20\"'),
(152, 140, 'A', '2024-02-27', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 14:37:48', NULL, 0, 0, 'muhammad - 2024-02-27 14:37:48', 'Container 20\"'),
(153, 141, 'A', '2024-02-27', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-27 14:39:06', NULL, 0, 0, 'muhammad - 2024-02-27 14:39:06', 'Container 20\"'),
(154, 142, 'A', '2024-02-28', 'CV. ARJUNA', 0, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 2, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-28 04:21:11', NULL, 0, 0, 'muhammad - 2024-02-28 04:21:11', 'Container 20\"'),
(155, 143, 'A', '2024-02-29', 'CV. Amalia', 22600000, 'PT. PKT', 'GD. PAGATAN', 'KOTABARU', 'DTD Inland', 'Pupuk', 45200, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 45200, '', '', 19, '2024-02-29 02:41:45', NULL, 0, 0, 'muhammad - 2024-02-29 02:41:45', 'Kg'),
(156, 144, 'A', '2024-02-02', 'GLM BJM OPS', 6519054, 'PT. TRANS CONTAINER SOLUSINDO', 'Port Banjarmasin', 'Gudang Tujuan', 'PTD', 'Frozen Food', 3, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-29 03:06:09', NULL, 0, 5109054, 'muhammad - 2024-02-29 03:06:09', 'Container 20\"'),
(157, 145, 'A', '2024-02-29', 'GLM BJM OPS', 0, 'PT. SINARMAS', 'Port Banjarmasin', 'PWK Sinarmas', 'PTD', 'Kubikasi', 2, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-29 04:04:30', NULL, 0, 0, 'muhammad - 2024-02-29 04:04:30', 'Container 20\"'),
(158, 146, 'A', '2024-02-29', 'CV. SRIKANDI', 126500000, 'PT. PKT', 'GD. TRIJAYA KOTIM', 'GD. BENTENG ASIA', 'DTD Inland', 'Pupuk', 220, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 220, '', '', 19, '2024-02-29 07:04:53', NULL, 0, 0, 'muhammad - 2024-02-29 07:04:53', 'Ton');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_jakarta`
--

CREATE TABLE `tbl_sub_jakarta` (
  `id_sub_jakarta` int(11) NOT NULL,
  `id_spk_jakarta` int(11) NOT NULL,
  `kode_sub` varchar(5) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nilai_spk` int(11) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `jenis_pekerjaan` varchar(50) NOT NULL,
  `item_barang` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_angkut` varchar(50) DEFAULT NULL,
  `tgl_stuf` date DEFAULT NULL,
  `tgl_selesai_stuf` date DEFAULT NULL,
  `etd_kapal` date DEFAULT NULL,
  `eta_kapal` date DEFAULT NULL,
  `tgl_mulai_doring` date DEFAULT NULL,
  `tgl_selesai_doring` date DEFAULT NULL,
  `tgl_bap` date DEFAULT NULL,
  `jumlah_dikerjakan` int(11) DEFAULT NULL,
  `sisa_belum` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_jakarta`
--

INSERT INTO `tbl_sub_jakarta` (`id_sub_jakarta`, `id_spk_jakarta`, `kode_sub`, `tgl_spk`, `pelaksana`, `nilai_spk`, `vendor`, `asal`, `tujuan`, `jenis_pekerjaan`, `item_barang`, `qty`, `unit_angkut`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `id_users`, `last_update`, `tgl_debit_nota`, `dpp`, `total_payment`, `last_kerja`, `satuan`) VALUES
(1, 1, 'A', '2024-01-24', 'Khairudin', 2000000, 'Jidan', 'Banjarmasin', 'Balikpapan', 'Angkutan', 'Kotak', 200, 'Kapal', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', '2024-01-24', 2, 3, 'Selesai', 'Udin', 10, '2024-01-31 14:33:38', '2024-01-28', 200000, 290000, NULL, ''),
(3, 3, 'N', '2024-01-31', 'Asep', 120000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 2, 'Kapal', '2024-01-31', '2024-01-31', '2024-01-31', '2024-01-31', '2024-02-01', '2024-01-31', '2024-01-31', 2, 1, 'Macet', '-', 10, '2024-01-31 14:34:43', '2024-01-31', 2000000, 0, NULL, ''),
(4, 1, 'C', '2024-02-06', 'dsadsa', 2000000, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Kotak', 4, 'Kapal', '2024-02-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 2, 2, '', '', 10, '2024-02-06 01:33:50', NULL, 0, 0, NULL, ''),
(5, 4, 'A', '2024-02-06', 'PT.AAAA', 50000000, 'VALINDO', 'BANJARMASIN', 'SEMARANG', 'Open', 'FLORING', 50, 'KAPAL', '2024-02-06', '2024-02-08', '2024-02-11', '2024-02-14', '2024-02-17', '2024-02-20', '2024-02-23', 50, 0, 'SELESAI', 'done', 12, '2024-02-06 10:51:26', '2024-02-11', 210000000, 50000000, NULL, ''),
(6, 4, 'B', '2024-02-06', 'PT.BBB', 50000000, 'VALINDO', 'BANJARMASIN', 'BANDUNG', 'Open', 'FLORING', 50, 'truck', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 12, '2024-02-06 10:59:03', '2024-02-14', 100000000, 50000000, NULL, ''),
(7, 5, 'A', '2024-02-24', 'PT.AAAA', 100000000, 'VALINDO', 'BANJARMASIN', 'BANDUNG', 'LANSUNG', 'FLORING', 90, 'KAPAL', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 0, '', '', 12, '2024-02-06 12:54:41', '2024-02-29', 0, 100000000, NULL, ''),
(8, 12, 'AZ', '2024-02-07', 'Kinda Yanto 1', 120, 'PT PTan', 'Banjarmasin', 'Balikpapan', 'Pekerjaan', 'Sabu', 11, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 2, 9, 'Yaa', 'Anu', 10, '2024-02-07 08:49:44', '2024-02-08', 21000, 0, '2024-02-07 08:49:44', ''),
(9, 13, 'A', '2024-02-07', 'PT.RJCH', 50000000, 'RJCH', 'BANJARMASIN', 'SEMARANG', 'langsung', 'FLORING', 50, 'KAPAL', '2024-02-10', '2024-02-11', '2024-02-12', '2024-02-13', '2024-02-14', '2024-02-15', '2024-02-16', 50, 0, 'done', 'selesai', 13, '2024-02-07 12:38:12', '2024-02-08', 70000000, 50000000, 'Gojo Satoru - 2024-02-08 13:36:53', ''),
(10, 13, 'B', '2024-02-07', 'PT.RJCH', 50000000, 'RJCH', 'BANJARMASIN', 'BANDUNG', 'LANSUNG', 'FLORING', 50, 'KAPAL', '2024-02-10', '2024-02-11', '2024-02-12', '2024-02-14', '2024-02-15', '2024-02-17', '2024-02-18', 50, 0, 'SELESAI', 'selesai', 13, '2024-02-07 12:39:16', '2024-02-11', 80000000, 50000000, '2024-02-07 13:17:13', ''),
(11, 13, 'C', '2024-02-08', 'PT.RJCH', 90000000, 'RJCH', 'BANJARMASIN', 'JOGJA', 'LANGSUNG', 'PERMEN', 500, 'KAPAL', '2024-02-12', '2024-02-13', '2024-02-14', '2024-02-15', '2024-02-16', '2024-02-17', '2024-02-19', 500, 0, 'selesai', 'selesai', 13, '2024-02-07 12:40:08', '2024-02-12', 280000000, 90000000, '2024-02-07 13:20:17', ''),
(14, 13, 'D', '2024-02-08', 'PT.BBB', 50000000, 'RJCH', 'BANJARMASIN', 'SEMARANG', 'LANSUNG', 'FLORING', 50, 'KAPAL', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 50, '', '', 13, '2024-02-08 07:13:50', NULL, 0, 25000000, '2024-02-08 07:13:50', ''),
(15, 14, 'A', '2024-02-20', 'arjuna', 50000000, 'rjch', 'jkt', 'SEMARANG', 'dtd', 'FLORING', 5, 'KONTAINER', '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '2024-02-20', '2024-02-24', '0000-00-00', 5, 0, 'selai', 'selai', 13, '2024-02-20 08:40:17', NULL, 0, 25000000, 'vic - 2024-02-20 08:53:17', ''),
(16, 14, 'B', '2024-02-20', 'RJCH', 50000000, 'RJCH', 'JAKARTA', 'SEMARANG', 'DTD', 'PUPUK', 500, 'container', '2024-02-20', '2024-02-21', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 500, '', '', 13, '2024-02-20 09:01:14', NULL, 0, 0, 'Andi Arsyad - 2024-02-20 09:05:27', ''),
(17, 26, 'A', '2024-02-01', 'CV. GUS MAJU', 9525000, 'BAPAK IRWAN', 'JAKARTA', 'BANJARMASIN', 'DTD', 'MATERIAL', 1, 'Container', '2024-01-29', '2024-01-30', '2024-01-31', '2024-02-07', '2024-02-09', '2024-02-09', '2024-02-15', 1, 0, 'selesai dooring', 'sudah ter DN', 19, '2024-02-27 15:05:35', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:22:00', 'Container 20\"'),
(18, 27, 'A', '2024-02-02', 'CV. GUS MAJU', 16278000, 'PT. PRISKILLA', 'SURABAYA', 'SAMARINDA', 'DTD', 'PARFUM', 1, 'Container', '2024-02-01', '2024-02-02', '2024-02-04', '2024-02-21', '2024-02-26', '2024-02-26', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-27 15:07:13', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:09:51', 'Container 20\"'),
(19, 28, 'A', '2024-02-02', 'CV. GUS MAJU', 16853000, 'PT. PVMI', 'CIBINONG', 'SAMARINDA', 'DTD', 'Permen', 1758, 'Container', '2024-01-31', '2024-01-31', '2024-02-02', '2024-02-08', '2024-02-16', '2024-02-16', '2024-02-26', 0, 1758, 'selesai dooring', 'proses penagihan', 19, '2024-02-27 15:09:28', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 09:46:03', 'Container 20\"'),
(20, 29, 'A', '2024-02-02', 'CV. GUS MAJU', 4372500, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DTD', 'Permen', 232, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 232, '', '', 19, '2024-02-27 15:11:45', NULL, 0, 0, 'muhammad - 2024-02-27 15:11:45', 'DUS'),
(21, 30, 'A', '2024-02-05', 'BINTAN CARGO', 1203300, 'PT. PRISKILLA', 'JAKARTA', 'TANJUNG PINANG', 'DTD', 'PARFUM', 89, 'Container', '2024-02-01', '2024-02-01', '2024-02-05', '2024-02-19', '2024-02-24', '2024-02-24', '0000-00-00', 89, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-29 05:01:51', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:06:44', 'DUS'),
(22, 31, 'A', '2024-02-05', 'CV. GUS MAJU', 13214000, 'PT. AGRITAMA', 'TANGGERANG', 'MAKASSAR', 'DTD', 'BAN', 1, 'Container', '2024-02-05', '2024-02-05', '2024-02-06', '2024-02-12', '2024-02-17', '2024-02-17', '2024-02-21', 1, 0, 'selesai dooring', 'sudah ter DN', 19, '2024-02-27 15:15:56', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 03:46:53', 'Container 20\"'),
(23, 32, 'A', '2024-02-05', 'CV. GUS MAJU', 25440000, 'PT. SINARMAS', 'PBNW', 'PWKM', 'DTD Inland', 'LORI', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 15:17:30', NULL, 0, 0, 'muhammad - 2024-02-27 15:17:30', 'UNIT TRUCK'),
(24, 33, 'A', '2024-02-05', 'CV. GUS MAJU', 25440000, 'PT. SINARMAS', 'PBNW', 'PWKM', 'DTD Inland', 'LORI', 2, 'Trucking', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-27 15:19:21', NULL, 0, 0, 'muhammad - 2024-02-27 15:19:21', 'UNIT TRUCK'),
(25, 34, 'A', '2024-02-05', 'CV. GUS MAJU', 9647000, 'BAPAK USAMAH', 'CAKUNG', 'BANJARMASIN', 'DTD', 'CARTON', 1, 'Container', '2024-02-05', '2024-02-06', '2024-02-05', '0000-00-00', '2024-02-15', '2024-02-15', '2024-02-20', 1, 0, 'selesai dooring', 'sudah ter DN', 19, '2024-02-27 15:23:19', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 03:38:27', 'Container 20\"'),
(26, 35, 'A', '2024-02-05', 'CV. GUS MAJU', 58514000, 'PT. HARAPAN RIMBA', 'BANTAR GEBANG', 'SAMARINDA', 'DTD', 'PIPA', 1, 'Container', '2024-02-05', '2024-02-06', '2024-02-06', '2024-02-13', '2024-02-17', '2024-02-17', '2024-02-27', 1, 0, 'selesai dooring', 'proses penagihan', 19, '2024-02-27 15:24:58', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 03:20:58', 'Container 40\"'),
(27, 36, 'A', '2024-02-05', 'BINTAN CARGO', 4491850, 'PT. PRISKILLA', 'JAKARTA', 'BATAM', 'DTD', 'PARFUM', 320, 'Container', '2024-02-06', '2024-02-07', '2024-02-08', '2024-02-16', '2024-02-19', '2024-02-19', '0000-00-00', 0, 320, 'selesai dooring', 'sj blm kembali', 19, '2024-02-29 05:04:09', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 02:16:22', 'DUS'),
(28, 37, 'A', '2024-02-05', 'CV. GUS MAJU', 26206000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 2, 'Container', '2024-02-05', '2024-02-05', '2024-02-08', '2024-02-11', '2024-02-23', '2024-02-23', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 19, '2024-02-27 15:28:15', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 10:08:24', 'Container 20\"'),
(29, 38, 'A', '2024-02-05', 'CV. GUS MAJU', 11818000, 'PT. PRISKILLA', 'SENTUL', 'PONTIANAK', 'DTD', 'PARFUM', 1, 'Container', '2024-02-06', '2024-02-07', '2024-02-12', '2024-02-16', '2024-02-19', '2024-02-19', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-27 15:30:51', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 02:11:23', 'Container 20\"'),
(30, 39, 'A', '2024-02-05', 'CV. GUS MAJU', 5194525, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 363, 'Container', '2024-01-30', '2024-01-30', '2024-01-31', '2024-02-03', '2024-02-07', '2024-02-07', '0000-00-00', 0, 363, 'selesai dooring', 'SJ  belum kembali', 19, '2024-02-27 15:32:31', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 10:15:57', 'DUS'),
(31, 40, 'A', '2024-02-07', 'CV. GUS MAJU', 10955000, 'PT. PRISKILLA', 'SURABAYA', 'BANJARMASIN', 'DTD', 'PARFUM', 1, 'Container', '2024-02-07', '2024-02-08', '2024-02-09', '2024-02-12', '2024-02-13', '2024-02-13', '2024-02-20', 1, 0, 'selesai dooring', 'sudah ter DN', 19, '2024-02-27 15:34:19', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 01:46:33', 'Container 20\"'),
(32, 41, 'A', '2024-02-07', 'CV. GUS MAJU', 29233000, 'PT. ROLIMEX', 'KARAWANG', 'BANJARMASIN', 'DTD', 'CHEMICAL', 1, 'Container', '2024-02-07', '2024-02-08', '2024-02-10', '2024-02-13', '2024-02-19', '2024-02-22', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-27 15:35:45', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 01:42:12', 'Container 20\"'),
(33, 42, 'A', '2024-02-07', 'CV. GUS MAJU', 14783000, 'PT. TANTO MAJU', 'CILEUNGSI', 'BANJARMASIN', 'DTD', 'FINACOAL', 1, 'Container', '2024-02-07', '2024-02-08', '2024-02-12', '2024-02-16', '2024-02-17', '2024-02-17', '2024-02-27', 1, 0, 'selesai dooring', 'proses penagihan', 19, '2024-02-27 15:38:00', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 01:37:16', 'Container 20\"'),
(34, 43, 'A', '2024-02-12', 'CV. GUS MAJU', 36600000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 2, 'Container', '2024-02-06', '2024-02-06', '2024-02-11', '2024-02-17', '2024-02-27', '2024-02-27', '0000-00-00', 0, 2, 'selesai dooring', 'SJ  belum kembali', 19, '2024-02-28 01:44:45', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 10:22:09', 'Container 20\"'),
(35, 44, 'A', '2024-02-12', 'CV. GUS MAJU', 29125500, 'PT. PVMI', 'BOGOR', 'NUNUKAN', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 01:45:58', NULL, 0, 0, 'muhammad - 2024-02-28 01:45:58', 'Container 20\"'),
(36, 45, 'A', '2024-02-12', 'CV. GUS MAJU', 121363000, 'PT. COMMONWEALTH STEEL', 'CILEGON', 'BANJARMASIN', 'DTD', 'GRINDING BALL', 3, 'Container', '2024-02-11', '2024-02-12', '2024-02-12', '0000-00-00', '2024-02-19', '2024-02-21', '0000-00-00', 3, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 01:47:47', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 06:01:41', 'Container 20\"'),
(37, 46, 'A', '2024-02-12', 'CV. GUS MAJU', 16482000, '16482000', 'BOGOR', 'KENDARI', 'DTD', 'KAWAT BROJONG', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 01:55:44', '2024-02-27', 36600000, 0, 'muhammad - 2024-02-28 01:55:44', 'Container 20\"'),
(38, 47, 'A', '2024-02-13', 'CV. GUS MAJU', 8355000, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DTD', 'Permen', 415, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 415, '', '', 19, '2024-02-28 02:03:17', NULL, 0, 0, 'muhammad - 2024-02-28 02:03:17', 'DUS'),
(39, 48, 'A', '2024-02-13', 'MITRA BERSAMA', 1150000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 54, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 54, '', '', 19, '2024-02-29 05:06:51', NULL, 0, 0, 'muhammad - 2024-02-28 02:04:48', 'DUS'),
(40, 49, 'A', '2024-02-13', 'CV. GUS MAJU', 2393200, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 113, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 660, '', '', 19, '2024-02-28 02:07:28', NULL, 0, 0, 'muhammad - 2024-02-28 02:06:15', 'DUS'),
(41, 50, 'A', '2024-02-13', 'CV. GUS MAJU', 9532400, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 660, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 660, '', '', 19, '2024-02-28 02:08:47', NULL, 0, 0, 'muhammad - 2024-02-28 02:08:47', 'DUS'),
(42, 51, 'A', '2024-02-13', 'CV. GUS MAJU', 12646000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1236, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1236, '', '', 19, '2024-02-28 02:10:07', NULL, 0, 0, 'muhammad - 2024-02-28 02:10:07', 'DUS'),
(43, 52, 'A', '2024-02-13', 'CV. GUS MAJU', 14539200, 'PT. PRISKILLA', 'SURABAYA', 'AMBON', 'DTD', 'PARFUM', 748, 'Container', '2024-02-13', '2024-02-13', '2024-02-13', '2024-02-23', '2024-02-23', '2024-02-23', '0000-00-00', 748, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:11:27', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:57:07', 'DUS'),
(44, 53, 'A', '2024-02-15', 'CV. GUS MAJU', 24206000, 'PT. PRISKILLA', 'SENTUL', 'MEDAN', 'DTD', 'PARFUM', 1, 'Container', '2024-02-15', '0000-00-00', '2024-02-17', '2024-02-21', '2024-02-23', '2024-02-23', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:12:56', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:49:32', 'Container 40\"'),
(45, 54, 'A', '2024-02-15', 'CV. GUS MAJU', 18214000, 'PT. ROLIMEX', 'BANDUNG', 'DUMAI', 'DTD', 'CHEMICAL', 1, 'Container', '2024-02-12', '2024-02-13', '2024-02-14', '2024-02-19', '2024-02-27', '2024-02-27', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:14:19', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:46:30', 'Container 20\"'),
(46, 55, 'A', '2024-02-15', 'CV. GUS MAJU', 21283000, 'PT. PVMI', 'CIBINONG', 'SAMARINDA', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:16:22', NULL, 0, 0, 'muhammad - 2024-02-28 02:16:22', 'Container 20\"'),
(47, 56, 'A', '2024-02-15', 'CV. GUS MAJU', 6513625, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 592, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 592, '', '', 19, '2024-02-28 02:17:45', NULL, 0, 0, 'muhammad - 2024-02-28 02:17:45', 'DUS'),
(48, 57, 'A', '2024-02-15', 'CV. GUS MAJU', 12143000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:19:07', NULL, 0, 0, 'muhammad - 2024-02-28 02:19:07', 'Container 20\"'),
(49, 58, 'A', '2024-02-15', 'CV. GUS MAJU', 12903000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:20:15', NULL, 0, 0, 'muhammad - 2024-02-28 02:20:15', 'Container 20\"'),
(50, 59, 'A', '2024-02-19', 'CV. GUS MAJU', 4434750, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DTD', 'Permen', 223, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 223, '', '', 19, '2024-02-28 02:23:28', NULL, 0, 0, 'muhammad - 2024-02-28 02:23:28', 'DUS'),
(51, 60, 'A', '2024-02-19', 'CV. GUS MAJU', 159672000, 'PT. SURYA MAKMUR', 'JAKARTA', 'BANJARMASIN', 'DTD', 'HCL', 4, 'Container', '2024-02-16', '2024-02-16', '2024-02-17', '2024-02-23', '2024-02-24', '2024-02-27', '0000-00-00', 4, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:27:09', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:40:11', 'Container 20\"'),
(52, 61, 'A', '2024-02-19', 'CV. GUS MAJU', 14044000, 'BAPAK IRWAN', 'JAKARTA', 'MAKASSAR', 'DTD', 'MATERIAL', 1, 'Container', '2024-02-17', '2024-02-17', '2024-02-19', '2024-02-22', '2024-02-25', '2024-02-25', '0000-00-00', 1, 0, 'selesai dooring', 'sj kembali ke Jkt', 19, '2024-02-28 02:29:34', '2024-02-27', 15250000, 0, 'Andi Arsyad - 2024-02-28 05:32:34', 'Container 20\"'),
(53, 62, 'A', '2024-02-20', 'CV. GUS MAJU', 17452000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:31:00', NULL, 0, 0, 'muhammad - 2024-02-28 02:31:00', 'Container 20\"'),
(54, 63, 'A', '2024-02-20', 'CV. GUS MAJU', 239324000, 'PT. COMMONWEALTH STEEL', 'CILEGON', 'BANJARMASIN', 'DTD', 'GRINDING BALL', 6, 'Container', '2024-02-12', '2024-02-13', '2024-02-20', '2024-02-23', '2024-02-24', '2024-02-26', '0000-00-00', 6, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:32:27', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:28:43', 'Container 20\"'),
(55, 64, 'A', '2024-02-20', 'CV. GUS MAJU', 18069000, 'BAPAK IRWAN', 'JAKARTA', 'BANJARMASIN', 'DTD', 'FURNITURE', 1, 'Container', '2024-02-18', '2024-02-19', '2024-02-20', '2024-02-24', '2024-02-28', '2024-02-28', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:34:02', '2024-02-27', 21500000, 0, 'Andi Arsyad - 2024-02-28 05:25:47', 'Container 40\"'),
(56, 65, 'A', '2024-02-20', 'CV. GUS MAJU', 8841000, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DTD', 'Permen', 452, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 452, '', '', 19, '2024-02-28 02:35:09', NULL, 0, 0, 'muhammad - 2024-02-28 02:35:09', 'DUS'),
(57, 66, 'A', '2024-02-20', 'CV. GUS MAJU', 5305600, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 266, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 266, '', '', 19, '2024-02-28 02:36:17', NULL, 0, 0, 'muhammad - 2024-02-28 02:36:17', 'DUS'),
(58, 67, 'A', '2024-02-20', 'CV. GUS MAJU', 5797600, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 414, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 414, '', '', 19, '2024-02-28 02:37:28', NULL, 0, 0, 'muhammad - 2024-02-28 02:37:28', 'DUS'),
(59, 68, 'A', '2024-02-20', 'CV. GUS MAJU', 20711000, 'PT. PVMI', 'BOGOR', 'BALIKPAPAN', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:38:41', NULL, 0, 0, 'muhammad - 2024-02-28 02:38:41', 'Container 20\"'),
(60, 69, 'A', '2024-02-20', 'CV. GUS MAJU', 16703616, 'PT. TANTO MAJU', 'CILEUNGSI', 'SAMARINDA', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:39:54', NULL, 0, 0, 'muhammad - 2024-02-28 02:39:54', 'Container 20\"'),
(61, 70, 'A', '2024-02-20', 'CV. GUS MAJU', 8546750, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 784, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 784, '', '', 19, '2024-02-28 02:40:55', NULL, 0, 0, 'muhammad - 2024-02-28 02:40:55', 'DUS'),
(62, 71, 'A', '2024-02-20', 'BINTAN CARGO', 550000, 'PT. PRISKILLA', 'JAKARTA', 'TANJUNG PINANG', 'PTD', 'PARFUM', 4, 'Container', '2024-02-19', '2024-02-20', '2024-02-20', '2024-02-24', '2024-02-24', '2024-02-24', '0000-00-00', 4, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-29 05:12:43', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:52:47', 'DUS'),
(63, 72, 'A', '2024-02-21', 'CV. GUS MAJU', 7240000, 'PT. AGRINDO', 'JAKARTA', 'JEPARA', 'DTD', 'Sparepart', 1, 'Trucking', '2024-02-21', '2024-02-21', '2024-02-21', '2024-02-22', '2024-02-22', '2024-02-23', '2024-02-23', 1, 0, 'selesai dooring', 'sudah ter DN', 19, '2024-02-28 02:46:16', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 05:02:47', 'Unit Fuso'),
(64, 73, 'A', '2024-02-20', 'CV. GUS MAJU', 30248000, 'PT. ROLIMEX', 'KARAWANG', 'BANJARMASIN', 'DTD', 'CHEMICAL', 1, 'Container', '2024-02-21', '2024-02-21', '2024-02-22', '2024-02-26', '2024-02-28', '2024-02-29', '0000-00-00', 1, 0, 'selesai dooring', 'sj blm kembali', 19, '2024-02-28 02:48:33', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:42:46', 'Container 20\"'),
(65, 74, 'A', '2024-02-21', 'CV. GUS MAJU', 23483000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 19, '2024-02-28 02:49:49', NULL, 0, 0, 'muhammad - 2024-02-28 02:49:49', 'Container 20\"'),
(66, 75, 'A', '2024-02-21', 'CV. GUS MAJU', 14815000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1360, 'Container', '2024-02-15', '2024-02-15', '2024-02-18', '2024-02-21', '2024-02-28', '0000-00-00', '0000-00-00', 0, 1360, 'proses dooring ', '', 19, '2024-02-28 02:50:59', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 10:09:47', 'Container 20\"'),
(67, 76, 'A', '2024-02-21', 'CV. GUS MAJU', 12413000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1220, 'Container', '2024-02-15', '2024-02-15', '2024-02-18', '2024-02-21', '2024-02-27', '2024-02-27', '0000-00-00', 0, 1220, 'selesai dooring', 'sj blm kembali ', 19, '2024-02-28 02:52:04', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 10:07:20', 'Container 20\"'),
(68, 77, 'A', '2024-02-21', 'CV. GUS MAJU', 21713000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1089, 'Container', '2024-02-16', '2024-02-16', '2024-02-18', '2024-02-21', '2024-02-28', '0000-00-00', '0000-00-00', 0, 1089, 'proses dooring ', '', 19, '2024-02-28 03:39:48', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 10:02:46', 'Container 20\"'),
(69, 78, 'A', '2024-02-21', 'CV. GUS MAJU', 16103000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DTD', 'Permen', 1218, 'Container', '2024-02-16', '2024-02-16', '2024-02-18', '2024-02-21', '2024-02-25', '2024-02-26', '2024-02-28', 0, 1218, 'selesai dooring', 'proses penagihan', 19, '2024-02-28 03:41:21', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 10:00:25', 'Container 20\"'),
(70, 79, 'A', '2024-02-21', 'CV. GUS MAJU', 18303000, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DTD', 'Permen', 11189, 'Container', '2024-02-16', '2024-02-16', '2024-02-21', '2024-02-27', '0000-00-00', '0000-00-00', '0000-00-00', 0, 11189, 'blm dooring ', 'Bl belum di tebus', 19, '2024-02-28 03:42:36', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 09:56:22', 'Container 20\"'),
(71, 80, 'A', '2024-02-21', 'CV. GUS MAJU', 17303000, 'PT. PVMI', 'BOGOR', 'BALIKPAPAN', 'DTD', 'Permen', 1, 'Container', '2024-02-17', '2024-02-17', '2024-02-21', '2024-02-27', '0000-00-00', '0000-00-00', '0000-00-00', 1192, -1191, '', 'Bl belum di tebus', 19, '2024-02-28 03:43:41', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 09:51:16', 'Container 20\"'),
(72, 81, 'A', '2024-02-21', 'CV. GUS MAJU', 5176000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DTD', 'Permen', 343, 'Container', '2024-02-18', '2024-02-18', '2024-02-22', '2024-02-25', '2024-02-27', '2024-02-27', '0000-00-00', 0, 343, 'selesai dooring', 'SJ  belum kembali', 19, '2024-02-28 03:44:56', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-28 07:07:43', 'DUS'),
(73, 82, 'A', '2024-02-22', 'CV. GUS MAJU', 921050, 'CV. SATRIA', 'JAKARTA', 'SAMARINDA', 'DTD', 'Sparepart', 3, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 19, '2024-02-28 03:47:33', NULL, 0, 0, 'muhammad - 2024-02-28 03:47:33', 'PETI'),
(74, 83, 'A', '2024-02-22', 'PRASURYA', 1899250, 'PT. AGRINDO', 'JAKARTA', 'SAMARINDA', 'DTD', 'Sparepart', 2, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 19, '2024-02-29 05:14:44', NULL, 0, 0, 'muhammad - 2024-02-28 03:48:49', 'PALLET'),
(75, 84, 'A', '2024-02-22', 'CV. GUS MAJU', 6650000, 'PT. GOAUTAMA', 'SURABAYA', 'LUWUK', 'DTD', 'Pupuk', 5200, 'Container', '2024-01-26', '2024-01-27', '2024-01-28', '2024-02-06', '2024-02-09', '2024-02-12', '0000-00-00', 5200, 0, 'selesai dooring', 'Bap blm kmbali', 19, '2024-02-28 03:57:06', NULL, 0, 0, 'Andi Arsyad - 2024-02-28 04:29:09', 'Kg'),
(76, 15, '01', '2024-01-02', 'CV. GUS MAJU', 7848800, 'PT.PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 472, 'CONTAINER', '2024-12-28', '2024-12-28', '2024-12-31', '2024-01-01', '2024-01-15', '2024-01-15', '2024-01-17', 0, 472, 'selesai dooring', 'proses penagihan', 18, '2024-02-29 01:33:38', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 09:55:12', 'CONTAINER'),
(77, 16, '02', '2024-01-02', 'CV. GUS MAJU', 7584140, 'PT.PRISKILA', 'SENTUL', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 833, 'CONTAINER', '2024-01-02', '2024-01-03', '2024-01-06', '2024-01-08', '2024-01-09', '2024-01-09', '2024-01-17', 833, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:37:12', '2024-01-19', 13690500, 0, 'Andi Arsyad - 2024-02-29 03:41:34', 'DUS'),
(78, 17, '01', '2024-01-02', 'CV. GUS MAJU', 5156800, 'PT.PRISKILA', 'JAKARTA', 'BATAM', 'DOOR TO DOOR', 'PARFUM', 387, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 387, '', '', 18, '2024-02-29 01:39:38', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 01:39:38', 'DUS'),
(79, 18, '01', '2024-01-03', 'CV. GUS MAJU', 10427000, 'PT.PRISKILA', 'SURABAYA', 'MAKASSAR', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 05:59:53', '2024-01-19', 15500000, 0, 'Rizky Maulid Yannur - 2024-02-29 01:41:15', 'CONTAINER'),
(80, 19, '01', '2024-01-03', 'CV. GUS MAJU', 3803500, 'PT.PVMI', 'BOGOR', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 187, 'CONTAINER', '2024-12-30', '2024-12-30', '2024-01-05', '2024-01-09', '2024-01-17', '2024-01-17', '2024-01-25', 0, 187, 'selesai dooring', 'proses penagihan', 18, '2024-02-29 01:45:09', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 09:59:32', 'DUS'),
(81, 20, '01', '2024-01-03', 'CV. GUS MAJU', 1471150, 'PT.PRISKILA', 'JAKARTA', 'TANJUNG PINANG', 'DOOR TO DOOR', 'PARFUM', 104, 'CONTAINER', '2024-01-03', '2024-01-03', '2024-01-03', '2024-01-10', '2024-01-13', '2024-01-13', '2024-01-18', 104, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:47:17', '2024-01-19', 2550000, 0, 'Andi Arsyad - 2024-02-29 03:49:29', 'DUS'),
(83, 21, '01', '2024-01-04', 'CV. GUS MAJU', 3776470, 'PT.PRISKILA', 'SENTUL', 'PONTIANAK', 'DOOR TO DOOR', 'PARFUM', 308, 'CONTAINER', '2024-01-03', '2024-01-04', '2024-01-05', '2024-01-09', '2024-01-11', '2024-01-11', '2024-01-17', 308, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:49:55', '2024-01-19', 6725250, 0, 'Andi Arsyad - 2024-02-29 03:56:04', 'DUS'),
(84, 22, '01', '2024-01-04', 'CV. GUS MAJU', 9835000, 'PT.BERSAUDARA', 'SURABAYA', 'BANJARMASIN', 'DOOR TO DOOR', 'KABEL OPTIK', 1, 'CONTAINER', '2024-01-04', '2024-01-04', '2024-01-05', '2024-01-09', '2024-01-10', '2024-01-10', '2024-01-11', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:51:28', '2024-01-19', 11500000, 0, 'Andi Arsyad - 2024-02-29 04:07:39', 'CONTAINER'),
(85, 23, '01', '2024-01-04', 'CV. GUS MAJU', 12418000, 'PT.AGRITAMA', 'TANGGERANG', 'MAKASSAR', 'DOOR TO DOOR', 'BAN', 1, 'CONTAINER', '2024-01-04', '2024-01-05', '2024-01-05', '2024-01-11', '2024-01-13', '2024-01-13', '2024-01-18', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:52:53', '2024-01-19', 16000000, 0, 'Andi Arsyad - 2024-02-29 04:26:44', 'CONTAINER'),
(86, 24, '01', '2024-01-04', 'CV. GUS MAJU', 10425000, 'PT.PRISKILA', 'SURABAYA', 'BANJARMASIN', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-04', '2024-01-05', '2024-01-05', '2024-01-09', '2024-01-10', '2024-01-10', '2024-01-16', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:54:25', '2024-01-19', 14000000, 0, 'Andi Arsyad - 2024-02-29 04:29:56', 'CONTAINER'),
(87, 25, '01', '2024-01-06', 'CV. GUS MAJU', 29183000, 'PT. ROLIMEX', 'KARAWANG', 'BANJARMASIN', 'DOOR TO DOOR', 'CHEMICAL', 1, 'CONTAINER', '2024-01-05', '2024-01-06', '2024-01-06', '2024-01-13', '2024-01-14', '2024-01-15', '2024-01-18', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 01:56:08', '2024-01-19', 38000000, 0, 'Andi Arsyad - 2024-02-29 04:40:15', 'CONTAINER'),
(88, 85, '01', '2024-01-08', 'CV. GUS MAJU', 16649000, 'PT.PVMI', 'BOGOR', 'BALIKPAPAN', 'DOOR TO DOOR', 'PERMEN', 1760, 'CONTAINER', '0024-01-05', '2024-01-05', '2024-01-07', '0000-00-00', '2024-01-19', '2024-01-19', '2024-01-29', 0, 1760, 'selesai dooring', 'proses penagihan', 18, '2024-02-29 01:57:44', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 10:26:06', 'CONTAINER'),
(89, 86, '01', '2024-01-08', 'CV. GUS MAJU', 7085650, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 655, 'CONTAINER', '2024-01-05', '2024-01-05', '2024-01-07', '2024-01-10', '2024-01-11', '2024-01-11', '2024-01-13', 655, 0, 'selesai dooring', 'proses penagihan', 18, '2024-02-29 02:00:33', NULL, 0, 0, 'Lutfi Anshari Muhammad - 2024-02-29 10:30:21', 'DUS'),
(90, 87, '01', '2024-01-08', 'CV. GUS MAJU', 9005200, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 711, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 711, '', '', 18, '2024-02-29 02:06:39', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:06:39', 'DUS'),
(91, 88, '01', '2024-01-09', 'CV. GUS MAJU', 31738000, 'PT.PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:10:14', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:10:14', 'CONTAINER'),
(92, 90, '01', '2024-01-09', 'CV. GUS MAJU', 28687500, 'PT. PVMI', 'BOGOR', 'NUNUKAN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:16:30', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:16:30', 'CONTAINER'),
(93, 91, '01', '2024-01-10', 'CV. GUS MAJU', 15214000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:18:33', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:18:33', 'CONTAINER'),
(94, 92, '01', '2024-01-10', 'CV. GUS MAJU', 30348000, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 2, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 18, '2024-02-29 02:32:46', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:32:46', 'CONTAINER'),
(95, 93, '01', '2024-01-10', 'CV. GUS MAJU', 15853000, 'PT. PRISKILA', 'SURABAYA', 'SAMARINDA', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-10', '2024-01-11', '2024-01-11', '2024-01-17', '2024-01-18', '2024-01-18', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 02:35:37', '2024-01-26', 18000000, 0, 'Andi Arsyad - 2024-02-29 06:01:32', 'CONTAINER'),
(96, 94, '01', '2024-01-13', 'CV. GUS MAJU', 13958800, 'PT. PRISKILA', 'SENTUL', 'MEDAN', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-12', '2024-01-13', '2024-01-13', '2024-02-18', '2024-01-19', '2024-01-19', '2024-01-23', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 02:39:56', '2024-01-23', 18500000, 0, 'Andi Arsyad - 2024-02-29 06:05:10', 'CONTAINER'),
(97, 95, '01', '2024-01-12', 'CV. GUS MAJU', 10027000, 'PT. PRISKILA', 'SURABAYA', 'MAKASSAR', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-11', '2024-02-12', '2024-02-12', '2024-02-16', '2024-01-17', '2024-01-17', '2024-01-23', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 02:42:35', '2024-01-23', 15500000, 0, 'Andi Arsyad - 2024-02-29 06:07:58', 'CONTAINER'),
(98, 96, '01', '2024-01-12', 'CV. GUS MAJU', 10239000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:45:27', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:45:27', 'CONTAINER'),
(99, 97, '01', '2024-01-12', 'CV. GUS MAJU', 15274000, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:47:14', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:47:14', 'CONTAINER'),
(100, 98, '01', '2023-01-15', 'CV. GUS MAJU', 17459000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:50:41', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:50:41', 'CONTAINER'),
(101, 99, '01', '2024-01-15', 'CV. GUS MAJU', 31118798, 'PT. PVMI', 'BOGOR', 'BERAU', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:52:39', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:52:39', 'CONTAINER'),
(102, 100, '01', '2024-01-15', 'CV. GUS MAJU', 25263850, 'PT. PVMI', 'BOGOR', 'TARAKAN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:54:54', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:54:54', 'CONTAINER'),
(103, 101, '01', '2024-01-15', 'CV. GUS MAJU', 18082000, 'PT. ROLIMEX', 'BANDUNG', 'DUMAI', 'DOOR TO DOOR', 'CHEMICAL', 1, 'CONTAINER', '2024-01-14', '2024-01-15', '2024-01-15', '2024-01-20', '2024-01-21', '2024-01-22', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 02:57:23', '2024-01-30', 19200000, 0, 'Andi Arsyad - 2024-02-29 06:13:12', 'CONTAINER'),
(104, 102, '01', '2024-01-16', 'CV. GUS MAJU', 20314000, 'PT. PVMI', 'CIBINONG', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 02:59:39', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 02:59:39', 'CONTAINER'),
(105, 103, '01', '2024-01-16', 'CV. GUS MAJU', 14449000, 'PT. PVMI', 'BOGOR', 'BALIKPAPAN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:03:36', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:03:36', 'CONTAINER'),
(106, 104, '01', '2024-01-16', 'CV. GUS MAJU', 15839000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:06:12', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:06:12', 'CONTAINER'),
(107, 105, '01', '2024-01-18', 'CV. GUS MAJU', 15839000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:09:52', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:09:52', 'CONTAINER'),
(108, 106, '01', '2024-01-18', 'CV. GUS MAJU', 14320000, 'PT. SINARMAS', 'KEBUN KALTENG', 'BANJARMASIN', 'DOOR TO DOOR', 'BARANG MUTASI', 11, 'CONTAINER', '2024-01-15', '2024-01-16', '0000-00-00', '2024-01-16', '2024-01-20', '2024-01-20', '0000-00-00', 11, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:15:05', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 06:23:04', 'PETI'),
(109, 107, '01', '2024-01-18', 'CV. GUS MAJU', 4877350, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 531, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 531, '', '', 18, '2024-02-29 03:18:34', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:18:34', 'DUS'),
(110, 108, '01', '2024-01-18', 'CV. GUS MAJU', 14828400, 'PT. TANTO MAJU', 'Cileungsi', 'SAMARINDA', 'DOOR TO DOOR', 'CHEMICAL', 1, 'CONTAINER', '2024-01-15', '2024-01-16', '2024-02-17', '2024-02-25', '2024-01-27', '2024-02-27', '2024-02-13', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:21:42', '2024-02-20', 19782394, 0, 'Andi Arsyad - 2024-02-29 07:14:38', 'CONTAINER'),
(111, 109, '01', '2024-01-18', 'CV. GUS MAJU', 24717500, 'PT. ROLIMEX', 'KARAWANG', 'BANJARMASIN', 'DOOR TO DOOR', 'CHEMICAL', 1, '', '2024-01-17', '2024-01-18', '2024-01-23', '2024-01-24', '2024-01-25', '2024-01-25', '2024-01-30', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:24:42', '2024-01-30', 38000000, 0, 'Andi Arsyad - 2024-02-29 07:18:44', 'CONTAINER'),
(112, 110, '01', '0004-01-18', 'CV. GUS MAJU', 25080000, 'PT. FLORA NUANSA', 'SAMARINDA', 'GORONTALA', 'DOOR TO DOOR INLAND', 'UN', 1, 'TRUCKING', '2024-01-17', '2024-01-17', '2024-01-18', '2024-01-18', '2024-01-18', '2024-01-19', '2024-02-05', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:28:29', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 03:35:35', 'METERIAL'),
(113, 111, '01', '2024-01-18', 'CV. GUS MAJU', 10549000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:30:23', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:30:23', 'CONTAINER'),
(114, 112, '01', '2024-02-18', 'CV. GUS MAJU', 17003000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '2023-12-29', '2023-12-30', '2023-12-30', '2024-01-02', '2024-01-02', '2024-01-02', '2024-01-06', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:31:57', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 03:45:21', 'CONTAINER'),
(115, 113, '01', '2024-01-20', 'CV. GUS MAJU', 14449000, 'PT. PVMI', 'BOGOR', 'BALIKPAPAN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:37:18', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:37:18', 'CONTAINER'),
(116, 114, '01', '2024-01-18', 'CV. GUS MAJU', 12254000, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:38:44', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:38:44', 'CONTAINER'),
(117, 115, '01', '2024-01-18', 'CV. GLORIA & YPA', 292230000, 'PT. GOUTAMA', 'SURABAYA', 'LUWUK', 'DOOR TO DOOR', 'PUPUK', 15, 'CONTAINER', '2024-01-17', '2024-01-18', '2024-01-18', '2024-02-23', '2024-01-25', '2024-01-28', '2024-02-06', 15, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:40:49', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 07:38:42', 'CONTAINER'),
(118, 116, '01', '2024-01-17', 'CV. GUS MAJU', 16320000, 'PT. SINARMAS', 'BANGKA BELITUNG', 'KEBUN KALTENG', 'DOOR TO DOOR', 'BARANG MUTASI', 9, 'CONTAINER', '2024-02-16', '2024-02-17', '2024-02-17', '2024-02-20', '2024-02-20', '2024-02-20', '2024-02-28', 9, 0, 'selesai dooring', 'proses penagihan', 18, '2024-02-29 03:46:17', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 07:49:56', 'PETI'),
(119, 117, '01', '2024-01-22', 'CV. GUS MAJU', 20153000, 'PT. SKETEK', 'CIBITUNG', 'BALIKPAPAN', 'DOOR TO DOOR', 'METERIAL', 1, 'CONTAINER', '2024-01-18', '2024-01-19', '2024-01-19', '2024-02-22', '2024-01-23', '2024-01-23', '2024-01-24', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 03:51:58', '2024-01-24', 5200000, 0, 'Andi Arsyad - 2024-02-29 07:27:56', 'CONTAINER'),
(120, 118, '01', '2024-01-18', 'CV. GUS MAJU', 3977350, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 130, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 130, '', '', 18, '2024-02-29 03:55:29', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:55:29', 'DUS'),
(121, 119, '01', '2024-01-23', 'CV. GUS MAJU', 17012000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 03:59:05', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 03:59:05', 'CONTAINER'),
(122, 120, '01', '2024-02-23', 'CV. GUS MAJU', 21348000, 'PT. PRSIKILA', 'SENTUL', 'MEDAN', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-23', '2024-01-24', '2024-01-24', '2024-01-29', '2024-01-30', '2024-01-30', '2024-02-05', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:10:57', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 07:31:59', 'CONTAINER'),
(123, 121, '01', '2024-01-23', 'CV. GUS MAJU', 11920000, 'PT. SINARMAS', 'PONTIANAK', 'SUMSEL', 'DOOR TO DOOR', 'BARANG MUTASI', 4, 'CONTAINER', '2024-01-23', '2024-01-24', '2024-01-24', '2024-01-30', '2024-02-02', '2024-02-02', '2024-02-20', 4, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:13:38', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 07:35:39', 'PALET'),
(124, 122, '01', '2024-01-23', 'CV. GUS MAJU', 6456800, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 585, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 585, '', '', 18, '2024-02-29 05:15:32', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:15:32', 'DUS'),
(125, 123, '01', '2024-01-23', 'CV. GUS MAJU', 2761200, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 174, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 174, '', '', 18, '2024-02-29 05:17:06', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:17:06', 'DUS'),
(126, 124, '01', '2024-01-24', 'CV. GUS MAJU', 28935000, 'PT. ROLIMEX', 'KARAWANG', 'BANJARMASIN', 'DOOR TO DOOR', 'CHEMICAL', 1, 'CONTAINER', '2024-01-24', '2024-01-24', '2024-01-28', '2024-02-03', '2024-01-04', '2024-01-04', '2024-02-15', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:18:58', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 07:56:38', 'CONTAINER'),
(127, 125, '01', '2024-01-24', 'CV. GUS MAJU', 5294412, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 962, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 962, '', '', 18, '2024-02-29 05:20:36', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:20:36', 'DUS'),
(128, 126, '01', '2024-01-24', 'CV. GUS MAJU', 5895740, 'PT.PRISKILA', 'SENTUL', 'PONTIANAK', 'DOOR TO DOOR', 'PARFUM', 735, 'CONTAINER', '2024-01-23', '2024-01-24', '2024-01-24', '2024-02-28', '2024-01-31', '2024-01-31', '2024-02-13', 735, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:22:35', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 09:49:39', 'DUS'),
(129, 127, '01', '2024-01-24', 'CV. GUS MAJU', 5009500, 'PT. PVMI', 'BOGOR', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 221, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 221, '', '', 18, '2024-02-29 05:24:17', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:24:17', 'DUS'),
(130, 128, '01', '2024-01-25', 'CV. GUS MAJU', 3214000, 'PT.PVMI', 'BOGOR', 'SAMARINDA', 'DOOR TO DOOR', 'PERMEN', 113, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 113, '', '', 18, '2024-02-29 05:25:56', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:25:56', 'DUS'),
(131, 129, '01', '2024-01-25', 'CV. GUS MAJU', 24617000, 'PT. PRISKILA', 'SENTUL', 'MEDAN', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-01-25', '2024-01-29', '2024-01-30', '2024-02-06', '2024-02-07', '2024-02-07', '2024-02-19', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:27:55', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 09:52:37', 'CONTAINER'),
(132, 130, '01', '2024-01-25', 'CV. GUS MAJU & YPA', 206151000, 'PT. GOUTAMA', 'SURABAYA', 'LUWUK', 'DOOR TO DOOR', 'PUPUK', 10, 'CONTAINER', '2024-01-19', '2024-01-19', '2024-01-20', '2024-02-07', '2024-02-09', '2024-02-12', '0000-00-00', 10, 0, 'selesai dooring', 'Bap blm kmbali', 18, '2024-02-29 05:29:49', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 09:57:44', 'CONTAINER'),
(133, 131, '01', '2024-01-25', 'CV. GUS MAJU', 11800000, 'PT. INDO KARYA', 'TANGGERANG', 'BALIKPAPAN', 'DOOR TO DOOR', 'MATERIAL', 2, 'CONTAINER', '2024-01-20', '2024-02-23', '2024-01-24', '2024-01-30', '2024-02-05', '2024-02-05', '2024-02-11', 2, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:31:25', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 10:01:27', 'KUBIK'),
(134, 132, '01', '2024-01-29', 'CV. GUS MAJU', 24603000, 'PT. PVMI', 'BOGOR', 'TARAKAN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 05:34:47', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:33:17', 'CONTAINER'),
(135, 133, '01', '2024-01-29', 'CV. GUS MAJU', 13405000, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 05:36:01', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:36:01', 'CONTAINER'),
(136, 134, '01', '0024-01-29', 'CV. GUS MAJU', 32215000, 'PT. ANEKA PUNDI', 'JAKARTA', 'KULAI JELAI', 'DOOR TO DOOR', 'BESI', 1, 'CONTAINER', '2024-02-27', '2024-01-28', '2024-02-01', '2024-02-07', '2024-02-09', '2024-02-09', '2024-02-21', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:38:11', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 10:04:16', 'CONTAINER'),
(137, 135, '01', '2024-01-29', 'CV. GUS MAJU', 30925524, 'PT. PVMI', 'BOGOR', 'BERAU', 'DOOR TO DOOR', 'PERMEN', 1, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 18, '2024-02-29 05:39:42', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:39:42', 'CONTAINER'),
(138, 136, '01', '2024-01-29', 'CV. GUS MAJU', 6153400, 'PT.PRISKILA', 'JAKARTA', 'BATAM', 'DOOR TO DOOR', 'PARFUM', 472, 'CONTAINER', '2024-01-27', '2024-01-28', '2024-01-29', '2024-02-08', '2024-02-12', '2024-02-12', '0000-00-00', 472, 0, 'selesai dooring', 'sj blm kembali', 18, '2024-02-29 05:41:19', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 10:06:32', 'DUS'),
(139, 137, '01', '2024-01-29', 'CV. GUS MAJU', 550000, 'PT.PRISKILA', 'JAKARTA', 'TANJUNG PINANG', 'DOOR TO DOOR', 'PARFUM', 17, 'CONTAINER', '2024-01-25', '2024-01-26', '2024-01-27', '2024-02-12', '2024-02-16', '2024-02-16', '0000-00-00', 17, 0, 'selesai dooring', 'sj blm kembali', 18, '2024-02-29 05:43:02', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 10:09:06', 'DUS'),
(140, 138, '01', '2024-01-29', 'CV. GUS MAJU', 6479900, 'PT. PVMI', 'BOGOR', 'PONTIANAK', 'DOOR TO DOOR', 'PERMEN', 467, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 467, '', '', 18, '2024-02-29 05:44:29', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:44:29', 'DUS'),
(141, 139, '01', '2024-01-29', 'CV. GUS MAJU', 16158000, 'PT. PRISKILA', 'SURABAYA', 'SAMARINDA', 'DOOR TO DOOR', 'PARFUM', 1, 'CONTAINER', '2024-02-03', '2024-02-04', '2024-02-05', '2024-02-08', '2024-02-09', '2024-02-09', '2024-02-16', 1, 0, 'selesai dooring', 'sudah ter DN', 18, '2024-02-29 05:46:27', NULL, 0, 0, 'Andi Arsyad - 2024-02-29 10:11:36', 'CONTAINER'),
(142, 140, '01', '0004-01-29', 'CV. GUS MAJU', 14070075, 'PT.PRISKILA', 'SURABAYA', 'BITUNG', 'DOOR TO DOOR', 'PARFUM', 730, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 730, '', '', 18, '2024-02-29 05:48:04', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:48:04', 'DUS'),
(143, 141, '01', '2024-01-29', 'CV. GUS MAJU', 8677200, 'PT. PVMI', 'BOGOR', 'BANJARMASIN', 'DOOR TO DOOR', 'PERMEN', 859, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 859, '', '', 18, '2024-02-29 05:49:35', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:49:35', 'DUS'),
(144, 142, '01', '2024-01-29', 'CV. GLORIA & YPA', 527243000, 'PT. GOUTAMA', 'SURABAYA', 'LUWUK', 'DOOR TO DOOR', 'PUPUK', 26, 'CONTAINER', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 26, '', '', 18, '2024-02-29 05:50:58', NULL, 0, 0, 'Rizky Maulid Yannur - 2024-02-29 05:50:58', 'CONTAINER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(13, 'yasky', 'yasky@glm.com', '$2y$04$nWGB.4xQ3GR7ojaRPwQ.Yu66uQCcvjB4J8GRPNQ5MjfSseVwNhSWy', 'Yasmi_(2).JPG', 6, 'y'),
(15, 'adminGLM', 'admin@gmail.com', '$2y$04$8c6fmLmqVqeS4xyqlHV4jeBXTAk9yXdI0Ykwh7PLqf0gYYbIxFZt.', NULL, 6, 'y'),
(17, 'Andra Al Hafiz Syahbana', 'andrahafiz56@gmail.com', '$2y$04$6qtNZdOPEBmAwc.gedmWNe/XJxPQT2LB6hrMI4MN9435JzjdJbvCu', '', 6, 'y'),
(18, 'Rizky Maulid Yannur', 'rizkymaulidyannur13@gmail.com', '$2y$04$SkOaK7RJjH0x9TnVNHr6pun3JpEgvbDYtyawWTiOEkPiBb/1dDCGa', '', 1, 'y'),
(19, 'muhammad', 'muhammad071291@gmail.com', '$2y$04$lB2eiB79s2WxRBsgXjTOLOEdRCfmHbYrfNsQsHXyfCH66sXtdw5KK', '', 1, 'y'),
(20, 'Gusti Deni As\'yami Rahman', 'gtdeni09@gmail.com', '$2y$04$Tv5NYpDb3uYaoKFEDOeCQ.JKcKq2Y/MYAlQL23ZTgx04IrgUyonIa', '36ae0ea4aad656f7c3d3175bc33b8399.jpg', 6, 'y'),
(21, 'hafidz anshari muhammad', 'hfdznshr@gmail.com', '$2y$04$HTQBzhYjDKslKIiFNlwSKOMIdVnyR/b8UTymsI6SUMZLjVvmlY4LW', '', 2, 'y'),
(24, 'Yudha Noviansyah', 'noviansyahyudha@gmail.com', '$2y$04$xm0D.V/YhnvMgTssQE2HkeKZz07l1G/J6//MzmeXW9rev8YPCjcI.', '', 2, 'y'),
(25, 'Lutfi Anshari Muhammad', 'lutfianshari151001@gmail.com', '$2y$04$QTk6I36LiBefetItQr9gr.9GpqmQ8OZQEfiUZ6L0/W1TJZ10wupvu', '', 2, 'y'),
(27, 'Andi Arsyad', 'andiarsyad.glm@gmail.com', '$2y$04$mJqnUWWfy7aZyGjscA44SuagGcFr2Xyy2q8nKdCL/eJabKddiqA/C', '', 2, 'y'),
(29, 'Dian Saputri', 'diansaputri77@gmail.com', '$2y$04$CF.WNZf7qPKfBtSjFvf4GOb7XCl/h4IsqIWapVbAm92vhqkLA.oZm', '', 5, 'y'),
(31, 'Nurhamidah', 'nurhamidah.nh056@gmail.com', '$2y$04$GdBmo8nBfxkoW/AUnHIvieeP/ai3bIwSM8ILmHMlVGR8m5gwso01G', '', 6, 'y'),
(32, 'Cunda Raynata', 'cundaraynata@glm.com', '$2y$04$PVow71uhnhByiO12xCWbk.9YkR5MxaYYadmjt2A7Ui5O7FSBSP8Nq', '', 6, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Operasional'),
(2, 'VIC Operasional'),
(3, 'Direksi 2'),
(4, 'Kasir'),
(5, 'Piutang'),
(6, 'Admin'),
(7, 'Direksi 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_vendor`, `nama_vendor`) VALUES
(9, 'PT. SINARMAS'),
(10, 'PT. GOAUTAMA'),
(11, 'PT. ASTRA'),
(13, 'PT.PENTAWIRA'),
(14, 'PT. JADIMAS'),
(15, 'PT. WILMAR'),
(16, 'PT.BERSAUDARA'),
(17, 'PT. ROLIMEX'),
(18, 'PT. KENCANA MEGAH'),
(19, 'PT. COMMONWEALTH STEEL INDONESIA'),
(20, 'PT. JUI SHIN'),
(21, 'PT. TRANS CONTAINER SOLUSINDO'),
(22, 'PT. SURYAMAKMUR AGUNG LESTARI'),
(23, 'PT. PKT'),
(24, 'PT. KEMINDO'),
(25, 'PT. HASNUR'),
(26, 'PT. PRISKILLA'),
(27, 'PT. PVMI'),
(28, 'PT. AGRITAMA'),
(29, 'PT. TANTO MAJU'),
(30, 'PT. MAHAKAM PERSADA SAKTI'),
(31, 'PT. FLORA NUANSA'),
(32, 'BAPAK IRWAN'),
(33, 'PT. SKETEK ENERGI'),
(34, 'PT. INDO KARYA'),
(35, 'PT. ANEKA PUNDI TIRTA'),
(36, 'PT. SENTANA ADIDAYA'),
(37, 'PT. AGRINDO PUTRA LESTARI'),
(38, 'PT. HARAPAN RIMBA'),
(39, 'PT. MAKMUR JAYA EMULSI'),
(40, 'PT.  KRUING LESTARI'),
(41, 'BAPAK USAMAH'),
(42, 'CV. SATRIA'),
(43, 'PT. FLORA NUANSA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiting_banjarmasin`
--

CREATE TABLE `tbl_waiting_banjarmasin` (
  `id_waiting_banjarmasin` int(11) NOT NULL,
  `id_sub_banjarmasin` int(11) NOT NULL,
  `no_invoice` varchar(20) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_persetujuan_1` date DEFAULT NULL,
  `tgl_persetujuan_2` date DEFAULT NULL,
  `tgl_pembatalan_1` date DEFAULT NULL,
  `tgl_pembatalan_2` date DEFAULT NULL,
  `acc` int(11) NOT NULL,
  `batal` int(11) NOT NULL,
  `jumlah_permintaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_waiting_banjarmasin`
--

INSERT INTO `tbl_waiting_banjarmasin` (`id_waiting_banjarmasin`, `id_sub_banjarmasin`, `no_invoice`, `tgl_permintaan`, `deskripsi`, `tgl_persetujuan_1`, `tgl_persetujuan_2`, `tgl_pembatalan_1`, `tgl_pembatalan_2`, `acc`, `batal`, `jumlah_permintaan`) VALUES
(2, 3, 'INV/001/2024', '2024-01-27', 'Test', '2024-01-27', '2024-01-30', '2024-01-27', '2024-01-28', 2, 1, 21000),
(4, 10, 'INV/003N', '2024-02-07', 'dasdasdsa', '2024-02-11', NULL, NULL, NULL, 1, 0, 10),
(5, 12, 'FEBK001', '2024-02-08', 'PEmbayaran DP 1', '2024-02-08', '2024-02-08', NULL, NULL, 2, 0, 45000000),
(6, 12, 'FEBK002', '2024-02-08', 'DP ke 2', '2024-02-08', '2024-02-08', NULL, NULL, 2, 0, 17000000),
(7, 12, 'FEBK003/2024', '2024-02-12', 'dp KE 3', '2024-02-29', '2024-02-08', NULL, NULL, 2, 0, 10000000),
(8, 12, 'FEbk004', '2024-03-01', 'dp KE 4', '2024-02-08', '2024-03-21', NULL, NULL, 2, 0, 25000000),
(9, 12, 'fenk005', '2024-04-01', 'dp KE 5', '2024-04-02', '2024-04-03', NULL, NULL, 2, 0, 45000000),
(10, 12, 'FEBK006', '2024-05-01', 'DP ke 6', '2024-05-01', '2024-05-10', NULL, NULL, 2, 0, 10000000),
(11, 13, 'FEBK001', '2024-02-21', 'Biaya Dp Pemuatan Pertama Klm. Mutiara Hati', '2024-02-22', '2024-02-22', NULL, NULL, 2, 0, 25000000),
(12, 13, 'FEBK002', '2024-02-22', 'Biaya Dp Ke 2 Pemuatan Klm. Mutiara Hati', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 30000000),
(13, 13, 'INV-01', '2024-02-21', 'lunas', '2024-02-21', '2024-02-22', NULL, NULL, 2, 0, 45000000),
(15, 19, '1000', '2024-01-02', 'Biaya Job Turun (Pelindo)', '2024-01-02', '2024-01-02', NULL, NULL, 2, 0, 85423),
(16, 19, '1000', '2024-01-02', 'Biaya Segel (Spil)', '2024-01-02', '2024-01-02', NULL, NULL, 2, 0, 100000),
(17, 20, '001', '2024-01-03', 'By Job Naik (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 3777842),
(18, 20, '002', '2024-01-03', 'By Perpanjangan Job (Rizky)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 891774),
(19, 19, '1000', '2024-01-02', 'Biaya job Naik (Pelindo)', '2024-01-02', '2024-01-02', NULL, NULL, 2, 0, 801389),
(20, 19, '1000', '2024-01-03', 'Biaya Trucking (Arjuna)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 1176000),
(21, 20, '003', '2024-01-03', 'By DO (Meratus)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 650000),
(22, 20, '004', '2024-01-03', 'By Trucking (Arrjuna)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 2989000),
(23, 20, '005', '2024-02-14', 'By Tally (Ujang)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 170000),
(24, 20, '006', '2024-01-03', 'By Job Turun (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 160244),
(25, 21, '1000', '2024-01-03', 'Biaya Jamcon (Samudera)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 100000),
(26, 21, '1000', '2024-01-03', 'Biaya Do (Samudra)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 150000),
(27, 21, '1000', '2024-01-03', 'Biaya Job Turun (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 257500),
(28, 21, '1000', '2024-01-03', 'Biaya Job Naik (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 801389),
(29, 20, '007', '2024-01-04', 'By Perpanjangan Job (Pelindo)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 445887),
(30, 20, '008', '2024-01-04', 'By Job Turun (Pelindo)', '2024-01-04', '2024-01-01', NULL, NULL, 2, 0, 80122),
(31, 21, '1000', '2024-01-12', 'Biaya Buruh & Ops (Cunda)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 1500000),
(32, 21, '1000', '2024-01-12', 'Biaya DP Trucking (Arjuna)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 11000000),
(33, 21, '1000', '2024-01-17', 'Biaya Buruh Bongkar (Cunda)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 600000),
(34, 21, '1000', '2024-01-19', 'Biaya DP Trucking (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 5500000),
(35, 21, 'FEBK056/2024', '2024-02-02', 'Biaya Sub (CV Kaltek)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 2300500),
(36, 23, '1000', '2024-01-04', 'Biaya DP 50% (Hartamsa)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 92378000),
(37, 22, '0001', '2024-01-03', 'By DO (Samudera)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 200000),
(38, 24, '1000', '2024-01-08', 'Biaya DP Ops 1 (Lidia)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 25000000),
(39, 24, '1000', '2024-01-11', 'Biaya DP ops 2 (Lidia)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 25000000),
(40, 22, '0001', '2024-01-03', 'By Job Naik (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 3836150),
(41, 24, '1000', '2024-01-15', 'Biaya DP Ops 3 (Lidia)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 20000000),
(42, 24, '1000', '2024-01-16', 'Biaya DP Ops 5 Lidia', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 30000000),
(43, 22, '0001', '2024-01-03', 'By Job Turun (Pelindo)', '2024-01-03', '2024-01-03', NULL, NULL, 2, 0, 170847),
(44, 26, '1000', '2024-01-05', 'Biaya DP Trucking Arjuna', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 10000000),
(45, 26, '1000', '2024-01-25', 'Biaya Lunas Trucking Arjuna', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 5925000),
(46, 22, '0001', '2024-01-04', 'By Perpanjangan Job (Pelindo)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 1035830),
(47, 30, '1000', '2024-01-12', 'Biaya THC Samudera', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 6592500),
(48, 82, '0001', '2024-01-04', 'By Job Turun (Pelindo)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 115642),
(49, 22, '0001', '2024-01-05', 'By Tally (Ujang)', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 200000),
(50, 22, '0001', '2024-01-04', 'By Perpanjangan Job (Pelindo)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 148629),
(51, 22, '0001', '2024-01-05', 'By Trucking (Arjuna)', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 3724000),
(52, 30, '1000', '2024-01-13', 'Biaya Jamcon (Samudera)', '2024-12-13', '2024-01-13', NULL, NULL, 2, 0, 100000),
(53, 30, '1000', '2024-01-13', 'Biaya DO Samudra', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 250000),
(54, 30, '1000', '2024-01-13', 'Biaya Job Naik Pelindo', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 801389),
(55, 30, '1000', '2024-01-13', 'Biaya Job Turun (Pelindo)', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 257500),
(56, 30, '1000', '2024-01-17', 'Biaya Buruh Muat Rasid', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 250000),
(57, 32, '1000', '2024-01-09', 'Biaya Perpanjangan Job (Pelindo)', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 445887),
(58, 32, '1000', '2024-01-09', 'Biaya Job Naik Pelindo', '2024-01-09', '2024-01-19', NULL, NULL, 2, 0, 3777842),
(59, 32, '1000', '2024-01-09', 'Biaya Job Turun Pelindo', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 80122),
(60, 32, '1000', '2024-01-10', 'Biaya perpanjangan Job Rizky', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 891774),
(61, 32, '1000', '2024-01-10', 'Biaya Job Turun Pelindo', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 80122),
(62, 32, '1000', '2024-01-10', 'Biaya DO Meratus', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 650000),
(63, 32, '1000', '2024-01-10', 'Biaya Job Turun Pelindo', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 80122),
(64, 32, '1000', '2024-01-10', 'Biaya Job Alih Kapal Pelindo', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 5500),
(65, 32, '1000', '2024-01-11', 'Biaya Tally Ujang', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 150000),
(66, 32, '1000', '2024-01-11', 'Biaya Taktis Rizky', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 2989000),
(67, 34, '1000', '2024-01-10', 'Biaya DO Tanto', '2024-01-10', '2024-01-10', NULL, NULL, 2, 0, 200000),
(68, 34, '1000', '2024-01-11', 'Biaya Job Turun Pelindo', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 85423),
(69, 34, '1000', '2024-01-11', 'Biaya Job Naik Rizky', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 1110652),
(70, 34, '1000', '2024-01-11', 'Biaya Bongkar (Misran)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 400000),
(71, 34, '1000', '2024-01-11', 'Biaya Tally (Ujang)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 50000),
(72, 36, '1000', '2024-01-12', 'Biaya DO (Spill)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 200000),
(73, 36, '1000', '2024-01-12', 'Biaya Job Naik (Pelindo)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 2725498),
(74, 36, '1000', '2024-01-12', 'Biaya Job turun (Pelindo)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 85423),
(75, 36, '1000', '2024-01-13', 'Biaya Job turun (Pelindo)', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 115642),
(76, 36, '1000', '2024-01-19', 'Biaya Trucking (CV Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 2499000),
(77, 36, '1000', '2024-01-23', 'Biaya Job Reciving (Pelindo)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 79931),
(78, 36, '1000', '2024-01-24', 'Biaya Job Turun (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 180322),
(79, 25, '001', '2024-01-04', 'By Job Naik (Pelindo)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 2518561),
(80, 25, '001', '2024-01-04', 'By DO (Meratus)', '2024-01-04', '2024-01-04', NULL, NULL, 2, 0, 300000),
(81, 25, '001', '2024-01-05', 'By Bongkar (Nafi)', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 450000),
(82, 25, '0001', '2024-01-05', 'By Job Turun (Pelindo)', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 80122),
(83, 38, '1000', '2024-01-15', 'Biaya THC (Meratus)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 5000000),
(84, 25, '001', '2024-01-05', 'By Perpanjangan Job (Pelindo)', '2024-01-05', '2024-01-05', NULL, NULL, 2, 0, 743145),
(85, 25, '001', '2024-01-08', 'By Perpanjangan Job (Pelindo)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 743145),
(86, 38, '1000', '2024-01-16', 'Biaya DO (Meratus)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 250000),
(87, 25, '001', '2024-01-08', 'By Tally (Rizky)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 900000),
(88, 25, '001', '2024-01-09', 'By Job Turun (Pelindo)', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 80122),
(89, 38, '1000', '2024-01-16', 'Biaya Jamcon (Meratus)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 500000),
(90, 25, '001', '2024-01-11', 'By Demurage (Meratus)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 180000),
(91, 38, '1000', '2024-01-16', 'Biaya Job Turun (Pelindo)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 257500),
(92, 38, '801389', '2024-01-16', 'Biaya Job Naik (Pelindo)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 801389),
(93, 38, '1000', '2024-01-22', 'Biaya Trucking & Ops (Rasid)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 1050000),
(94, 38, '1000', '2024-01-22', 'Biaya DP Trucking (Arjuna)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 13000000),
(95, 40, '1000', '2024-01-12', 'Biaya Trucking (CV Arjuna)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 882000),
(96, 42, '1000', '2024-01-23', 'Biaya DP Ops 1 (Amalia)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 20000000),
(97, 42, '1000', '2024-01-25', 'Biaya Lunas Ops (Amalia)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 24401875),
(98, 44, '1000', '2024-01-15', 'Biaya Job Naik (Pelindo)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 3205556),
(99, 44, '1000', '2024-01-15', 'Biaya Job turun (Pelindo)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 341694),
(100, 44, '1000', '2024-01-15', 'Bibaya DO (Temas)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 400000),
(101, 44, '1000', '2024-01-15', 'Biaya Trucking (Arjuna)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 7056000),
(102, 46, '1000', '2024-01-16', 'Biaya DO (Meratus)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 450000),
(103, 46, '1000', '2024-01-16', 'Biaya Job Turun (Pelindo)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 1287500),
(104, 46, '1000', '2024-01-16', 'Biaya Jamcon (Meratus)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 2500000),
(105, 46, '1000', '2024-01-17', 'Biaya Job Naik (Pelindo)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 4005990),
(106, 46, '1000', '2024-01-18', 'Biaya Ops (Rasid)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 1875000),
(107, 46, '1000', '2024-01-22', 'Biaya Lembur (Nafi)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 200000),
(108, 46, 'FEBK470/2024', '2024-02-17', 'Biaya Demurage (Meratus)', '2024-02-17', '2024-02-17', NULL, NULL, 2, 0, 112043),
(109, 47, '1000', '2024-01-16', 'Biaya DO (Spil)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 200000),
(110, 47, '1000', '2024-01-16', 'Biaya Job turun (Pelindo)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 79931),
(111, 47, '1000', '2024-01-16', 'Biaya Dooring TKS (lutfi)', '2024-01-16', '2024-01-16', NULL, NULL, 2, 0, 2000000),
(112, 47, '196648', '2024-01-17', 'Biaya Perpanjangan Job (Rizky)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 196648),
(113, 27, '001', '2024-01-08', 'By Job Turun (Pelindo)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 170847),
(114, 47, '1000', '2024-01-17', 'Biaya Job Naik (Rizky)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 4946038),
(115, 27, '001', '2024-01-08', 'By Job Naik (Pelindo)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 1602778),
(116, 47, '1000', '2024-01-17', 'Biaya Perpanjangan Job (Pelindo)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 148629),
(117, 27, '001', '2024-01-08', 'By DO (Temas)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 300000),
(118, 47, '1000', '2024-01-17', 'Biaya Job turun (Pelindo)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 195385),
(119, 47, '1000', '2024-01-18', 'Biaya Job Turun (Pelindo)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 79931),
(120, 27, '001', '2024-01-08', 'By Trucking (Arjuna)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 1470000),
(121, 47, '1000', '2024-01-19', 'Biaya Trucking (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 3332000),
(122, 49, '1000', '2024-01-17', 'Biaya Barang Balik (Pelindo)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 801198),
(123, 49, '1000', '2024-01-17', 'Biaya Segel (Tanto)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 100000),
(124, 49, '1000', '2024-01-17', 'Biaya job turun (Pelindo)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 257500),
(125, 49, '1000', '2024-01-18', 'Biaya Segel (Tanto)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 100000),
(126, 49, '1000', '2024-01-23', 'Biaya Batal Striping (Tanto)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 310978),
(127, 49, '1000', '2024-01-23', 'Biaya Fraight (Tanto)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 2275000),
(128, 29, '001', '2024-01-08', 'By THC (Meratus)', '2024-01-08', '2024-08-01', NULL, NULL, 2, 0, 4900000),
(129, 49, '1000', '2024-01-31', 'Biaya THX & Stripping (Jkt)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 3906654),
(130, 29, '001', '2024-01-08', 'By Job Turun (Pelindo)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 257500),
(131, 51, '1000', '2024-01-18', 'Biaya DO (Meratus)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 500000),
(132, 29, '001', '2024-01-08', 'By Job Naik (Pelindo)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 801389),
(133, 51, '1000', '2024-01-18', 'Biaya Job Naik (Pelindo)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 2220921),
(134, 51, '1000', '2024-01-19', 'Biaya Trucking (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 1274000),
(135, 51, '1000', '2024-01-19', 'Biaya Job turun (Rizky)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 159862),
(136, 51, '1000', '2024-01-19', 'Biaya Perpanjangan Job (Rizky)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 148629),
(137, 51, '1000', '2024-01-22', 'Biaya Tally & Bongkar (Arya)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 400000),
(138, 29, '001', '2024-01-08', 'By DO (Meratus)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 150000),
(139, 53, '200000', '2024-01-18', 'Biaya DO (Tanto)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 200000),
(140, 29, '001', '2024-01-09', 'By Dp Trucking 1 (Arjuna)', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 10000000),
(141, 53, '1000', '2024-01-18', 'Biaya Job Naik (Pelindo)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 2815437),
(142, 53, '1000', '2024-01-18', 'Biaya Job turun (Pelindo)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 79931),
(143, 29, '001', '2024-01-09', 'By Job Turun (Meratus)', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 85505),
(144, 53, '1000', '2024-01-19', 'Biaya Trucking (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 1274000),
(145, 29, '001', '2024-01-12', 'By Ops & Buruh (Cunda)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 850000),
(146, 53, '1000', '2024-01-29', 'Biaya Perpanjangan Job (Pelindo)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 5298334),
(147, 29, '001', '2024-01-19', 'By Dp Trucking 2 (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 5500000),
(148, 29, '001', '2024-01-23', 'By Buruh Bongkar (Cunda)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 400000),
(149, 53, '1000', '2024-01-29', 'Biaya Job turun (Pelindo)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 79931),
(150, 53, '1000', '2024-01-31', 'Biaya Tally & Bongkar (Fikri)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 900000),
(151, 31, '001', '2024-01-09', 'By Bongkar (Rapita)', '2024-01-09', '2024-01-09', NULL, NULL, 2, 0, 300000),
(152, 31, '001', '2024-01-19', 'By Muat (Enal)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 141000),
(153, 31, '001', '2024-01-24', 'By Trucking (Arjuna)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 1421000),
(154, 55, '1000', '2024-01-18', 'Biaya Ops (Taufik)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 1080700),
(155, 55, 'FEBK143/2024', '2024-02-06', 'Biaya DP Ops ke 1 (Kembear)', '2024-02-06', '2024-02-06', NULL, NULL, 2, 0, 25000000),
(156, 55, 'FEBK576/2024', '2024-02-21', 'Biaya Bongkar (Aspi)', '2024-02-21', '2024-02-21', NULL, NULL, 2, 0, 595455),
(157, 55, 'FEBK598/2024', '2024-02-21', 'Biaya DO (Temas)', '2024-02-21', '2024-02-21', NULL, NULL, 2, 0, 1200000),
(158, 33, '001', '2024-01-10', 'By DO (Meratus)', '2024-12-10', '2024-04-10', NULL, NULL, 2, 0, 500000),
(159, 33, '001', '2024-01-12', 'By Perpanjangan Job (Pelindo)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 148629),
(160, 33, '001', '2024-01-12', 'By Job Naik (Pelindo)', '2024-01-12', '2024-01-14', NULL, NULL, 2, 0, 1924045),
(161, 33, '001', '2024-01-12', 'By Job Turun (Pelindo)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 80122),
(162, 55, 'FEBK599/2024', '2024-02-21', 'Biaya Job turun (Pelindo)', '2024-02-21', '2024-02-21', NULL, NULL, 2, 0, 2575000),
(163, 33, '001', '2024-01-12', 'By Job Turun (Pelindo)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 80122),
(164, 33, '001', '2024-02-14', 'By Tally (Arsyad)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 140000),
(165, 55, 'FEBK600', '2024-02-21', 'Biaya Job Naik (Pelindo)', '2024-02-21', '2024-02-21', NULL, NULL, 2, 0, 8023068),
(166, 33, '001', '2024-01-12', 'By Trucking (Arjuna)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 2548000),
(167, 55, 'FEBK609/2024', '2024-02-22', 'Biaya Job turun (Pelindo)', '2024-02-22', '2024-02-22', NULL, NULL, 2, 0, 2575000),
(168, 55, 'FEBK610/2024', '2024-02-22', 'Biaya Job Naik (Pelindo)', '2024-02-22', '2024-02-22', NULL, NULL, 2, 0, 8023068),
(169, 35, '001', '2024-01-11', 'By Tally (Arsyad & Ujang)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 100000),
(170, 35, '001', '2024-01-11', 'By DO (Meratus)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 500000),
(171, 57, '1000', '2024-01-24', 'Biaya DP Trucking (Arjuna)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 5000000),
(172, 57, '1000', '2024-01-31', 'Biaya Lunas Trucking (Arjuna)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 1624800),
(173, 35, '001', '2024-01-11', 'By Job Naik (Pelindo)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 2221303),
(174, 59, '1000', '2024-01-19', 'Biaya DP (Samudra)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 200000),
(175, 59, '1000', '2024-01-21', 'Biaya Job Naik (PElindo)', '2024-01-21', '2024-01-21', NULL, NULL, 2, 0, 1259090),
(176, 35, '001', '2024-01-11', 'By Job Turun (Pelindo)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 160244),
(177, 59, 'FEBK363/2024', '2024-02-14', 'Biaya Tally & Bongkar (Arya)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 1200000),
(178, 59, '1000', '2024-01-23', 'Biaya Job Turun (Pelindo)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 79931),
(179, 35, '001', '2024-01-11', 'By Trucking (Arujuna)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 1715000),
(180, 61, '1000', '2024-01-22', 'Biaya Trucking (Arjuna)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 3920000),
(181, 63, '1000', '2024-01-25', 'Biaya THC (Panurhwan)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 10605000),
(182, 63, '1000', '2024-01-25', 'Biaya Jamcon (Samudra)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 150000),
(183, 63, '1000', '2024-01-25', 'Biaya DO (Samudra)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 175000),
(184, 37, '001', '2024-01-11', 'By Jamcon (Meratus)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 1000000),
(185, 63, '1000', '2024-01-25', 'Biaya Job Turun (Pelindo)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 515000),
(186, 37, '001', '2024-01-11', 'By Job Naik (Pelindo)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 1602778),
(187, 63, '1000', '2024-01-25', 'Biaya Job Naik (Pelindo)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 1602396),
(188, 37, '001', '2024-01-11', 'By DO (Meratus)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 300000),
(189, 63, '1000', '2024-01-29', 'Biaya DP Trucking (Arjuna)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 20000000),
(190, 63, '1000', '2024-01-30', 'Biaya Buruh Muat (Rasid)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 1600000),
(191, 37, '001', '2024-01-12', 'By Job Turun (Meratus)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 171011),
(192, 37, '001', '2024-01-11', 'By Trucking (Arjuna)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 6027000),
(193, 63, '1000', '2024-01-31', 'Biaya Buruh Bongkar (Cunda)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 450000),
(194, 63, 'FEBK013/2024', '2024-02-01', 'Biaya Buruh Muat & Stripping (Rasid)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 650000),
(195, 63, 'FEBK049/2024', '2024-02-02', 'Biaya SUB (CV Kaltek)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 6659000),
(196, 63, 'FEBK057/2024', '2024-02-02', 'Biaya buruh Bongkar (Cunda)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 550000),
(197, 39, '001', '2024-01-29', 'By Dooring (Amalia)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 19536825),
(198, 63, 'FEBK058/2024', '2024-02-05', 'Biaya DP Trucking (Arjuna)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 15000000),
(199, 41, '001', '2024-01-12', 'By DO (Icon)', '2024-01-12', '2024-01-12', NULL, NULL, 2, 0, 450000),
(200, 41, '001', '2024-01-13', 'By Job Naik (Pelindo)', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 4006945),
(201, 41, '001', '2024-01-13', 'By Job Turun (Pelindo)', '2024-01-13', '2024-01-13', NULL, NULL, 2, 0, 1287500),
(202, 41, '001', '2024-01-15', 'By Ops (Rasid)', '2024-01-15', '2024-01-15', NULL, NULL, 2, 0, 1837500),
(203, 63, 'FEBK079/2024', '2024-02-05', 'Biaya buruh Bongkar (Cunda)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 500000),
(204, 41, '001', '2024-01-22', 'By Trucking (Arjuna)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 1176000),
(205, 63, 'FEBK370/2024', '2024-02-15', 'Biaya buruh Bongkar (Cunda)', '2024-02-15', '2024-02-15', NULL, NULL, 2, 0, 650000),
(206, 63, 'FEBK640/2024', '2024-02-23', 'Biaya Buruh Bongkar (Cunda)', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 400000),
(207, 43, '001', '2024-01-25', 'By Dp Trucking (Arjuna)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 9500000),
(208, 65, '1000', '2024-01-23', 'biaya DO (Meratus)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 500000),
(209, 43, '001', '2024-01-25', 'By Lunas Trucking (Arjuna)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 6425000),
(210, 65, '1000', '2024-01-24', 'Biaya Job Naik (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 2815437),
(211, 65, '1000', '2024-01-24', 'Biaya Job turun (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 79931),
(212, 65, '1000', '2024-01-24', 'Biaya Job Turun (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 79931),
(213, 65, '1000', '2024-01-25', 'Biaya Taktis (Abdillah)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 40000),
(214, 65, '1000', '2024-01-25', 'Biaya Bongkar (Rizky)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 800000),
(215, 65, '1000', '2024-01-29', 'Biaya TKS (Lutfi)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 13900000),
(216, 65, '1000', '2024-01-30', 'Biaya Trucking (Arjuna)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 980000),
(217, 71, '1000', '2024-01-25', 'Biaya DO (Tanto)', '2024-01-25', '2024-01-20', NULL, NULL, 2, 0, 200000),
(218, 71, '1000', '2024-01-25', 'Biaya Job Naik (Pelindo)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 2518179),
(219, 71, '1000', '2024-01-25', 'Biaya Job turun (Pelindo)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 79931),
(220, 45, '001', '2024-01-17', 'By D[ Ops 1 (Amalia)', '2024-01-17', '2024-01-17', NULL, NULL, 2, 0, 30000000),
(221, 71, '1000', '2024-01-26', 'Biaya Job turun (Pelindo)', '2024-01-26', '2024-01-26', NULL, NULL, 2, 0, 79931),
(222, 45, '001', '2024-01-19', 'By Dp Ops 2 (Amalia)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 25000000),
(223, 71, '1000', '2024-01-27', 'Biaya Job alih Kapal (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 5500),
(224, 76, '1000', '2024-01-27', 'Biaya Ops (Rasid)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 2625000),
(225, 76, '1000', '2024-01-27', 'Biaya Job turun (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 1802500),
(226, 76, '1000', '2024-01-27', 'Biaya Job Naik (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 5618386),
(227, 76, '1000', '2024-01-27', 'Biaya DO (Spil)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 550000),
(228, 76, '1000', '2024-01-30', 'Biaya Lembur (Nafi)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 200000),
(229, 45, '001', '2024-01-23', 'By Dp Ops 3 (Amalia)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 30000000),
(230, 79, 'FEBK005/2024', '2024-02-02', 'Biaya DP Ops 1 (Dumas)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 25000000),
(231, 79, 'FEBK083/2024', '2024-02-05', 'Biaya DP Ops ke 2 (DUmas)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 30000000),
(232, 45, '001', '2024-01-29', 'By Dp Ops 4 (Amalia)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 15000000),
(233, 79, 'FEBK181/2021', '2024-02-07', 'Biaya DP Ops ke 3 (Dumas)', '2024-02-07', '2024-02-07', NULL, NULL, 2, 0, 30000000),
(234, 79, 'FEBK268/2024', '2024-02-09', 'Biaya DP Ops ke 4 (Dumas)', '2024-02-09', '2024-02-09', NULL, NULL, 2, 0, 15000000),
(235, 79, 'FEBK272/2024', '2024-02-12', 'Biaya DP Ops ke 5 (Dumas)', '2024-02-12', '2024-02-12', NULL, NULL, 2, 0, 15000000),
(236, 79, 'FEBK406/2024', '2024-02-16', 'Biaya DP Ops ke 6 (Dumas)', '2024-02-16', '2024-02-16', NULL, NULL, 2, 0, 20000000),
(237, 45, '001', '2024-01-29', 'By Dp Ops 4 (Amalia)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 15000000),
(238, 79, 'FEBK514/2024', '2024-02-20', 'Biaya DP Ops ke 7 (Dumas)', '2024-02-20', '2024-02-20', NULL, NULL, 2, 0, 15000000),
(239, 80, 'FEBK260/2024', '2024-02-09', 'Biaya DP 1 (Handrawi)', '2024-02-09', '2024-02-09', NULL, NULL, 2, 0, 30000000),
(240, 81, 'FEBK267/2024', '2024-02-10', 'Biaya DP Ops 1 (Amalia0', '2024-02-10', '2024-02-10', NULL, NULL, 2, 0, 35000000),
(241, 81, 'FEBK311/2024', '2024-02-12', 'Biaya DP Ops 2 (Amalia0', '2024-02-12', '2024-02-12', NULL, NULL, 2, 0, 20000000),
(242, 81, 'FEBK335/2024', '2024-02-13', 'Biaya DP Ops ke 3 (Amalia)', '2024-02-13', '2024-02-13', NULL, NULL, 2, 0, 20000000),
(243, 81, 'FEBK405/2024', '2024-02-16', 'Biaya DP Ops  ke 3 (Amalia)', '2024-02-16', '2024-02-16', NULL, NULL, 2, 0, 30000000),
(244, 81, 'FEBK780/2024', '2024-02-28', 'DP Ops ke 5 (Amalia)', '2024-02-28', '2024-02-28', NULL, NULL, 2, 0, 20000000),
(245, 83, '1000', '2024-01-30', 'Biaya Jamcon (Meratus)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 1500000),
(246, 83, '1000', '2024-01-30', 'Biaya DO (Meratus)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 350000),
(247, 83, '1000', '2024-01-31', 'Biaya Job turun (Pelindo)', '2024-01-30', '2024-01-31', NULL, NULL, 2, 0, 772500),
(248, 83, '1000', '2024-01-31', 'Biaya Job Naik (Pelindo)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 2403920),
(249, 83, 'FEBK006/2024', '2024-02-02', 'Biaya Ops (Rasid)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 1125000),
(250, 45, '001', '2024-02-05', 'By Lunas Ops (Amalia)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 17012000),
(251, 83, 'FEBK341/2024', '2024-02-13', 'Biaya Tally (Nafi)', '2024-02-13', '2024-02-13', NULL, NULL, 2, 0, 200000),
(252, 83, 'FEBK413/2024', '2024-02-16', 'Biaua Demurage (Meratus)', '2024-02-16', '2024-02-16', NULL, NULL, 2, 0, 90000),
(253, 83, 'FEBK468/2024', '2024-02-17', 'Biaya Storage Demurage (Meratus)', '2024-02-17', '2024-02-17', NULL, NULL, 2, 0, 562043),
(254, 48, '001', '2024-01-23', 'By THC (Jkt)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 10595000),
(255, 48, '001', '2024-01-24', 'By Jamcon (Samudera)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 400000),
(256, 84, '1000', '2024-01-31', 'biaya Job Naik (Pelindo)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 5124930),
(257, 84, '1000', '2024-01-31', 'Biaya Job turun (rizky)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 79931),
(258, 48, '001', '2024-01-24', 'By DO (Samudera)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 400000),
(259, 48, '001', '2024-01-24', 'By Job Naik (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 1602396),
(260, 48, '0001', '2024-01-24', 'By Job Turun (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 515000),
(261, 48, '0001', '2024-01-25', 'By Dp Trucking (Arjuna)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 20000000),
(262, 84, '1000', '2024-01-31', 'biaya Job turun (Pelindo)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 80040),
(263, 48, '0001', '2024-01-26', 'By Buruh Muat (Cunda)', '2024-01-26', '2024-01-26', NULL, NULL, 2, 0, 2150000),
(264, 84, '1000', '2024-01-31', 'Biaya DO (Meratus)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 650000),
(265, 48, '0001', '2024-01-30', 'By Bongkar (Cunda)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 550000),
(266, 84, 'FEBK004/2024', '2024-02-01', 'Biaya Perpanjangan Job (Pelindo)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 445887),
(267, 84, 'FEBK024/2024', '2024-02-02', 'Biaya Perpanjangan Job (Pelindo)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 297258),
(268, 84, 'FEBK038/2024', '2024-02-02', 'Biaya Trucking (Arjuna)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 4410000),
(269, 48, '0001', '2024-02-01', 'By Buruh Muat & Ops (Rasid)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 950000),
(270, 84, 'FEBK039/2024', '2024-02-05', 'Biaya Buruh Bongkar (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 800000),
(271, 84, 'FEBK040/2024', '2024-02-05', 'Biaya buruh Bongkar CPI (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 400000),
(272, 84, 'FEBK041/2024', '2024-02-02', 'Biaya Taktis (Lutfi)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 60000),
(273, 84, 'FEBK043/2024', '2024-02-05', 'Biaya Tally (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 150000),
(274, 84, 'FEBK044/2024', '2024-02-05', 'Biaya Buruh Bongkar Belfoods (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 400000),
(275, 48, 'FEBK108,1', '2024-02-06', 'By Buruh Muat (Cunda)', '2024-02-06', '2024-02-06', NULL, NULL, 2, 0, 1650000),
(276, 84, 'FEBK045/2024', '2024-02-05', 'Biaya Buruh Bongkar Preambanan (Lufti)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 400000),
(277, 84, 'FEBK046/2024', '2024-02-05', 'Biaya Buruh Bingkjar Sewu (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 400000),
(278, 84, 'FEBK047/2024', '2024-02-05', 'Biaya Taktis (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 60000),
(279, 84, 'FEBK048/2024', '2024-02-05', 'Biaya Tally (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 150000),
(280, 84, 'FEBK067/2024', '2024-02-02', 'Biaya Job turun (Pelindo)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 80040),
(281, 48, 'FEBK156', '2024-02-06', 'By Buruh Bongkar ( Cunda)', '2024-02-06', '2024-02-06', NULL, NULL, 2, 0, 300000),
(282, 86, 'FEBK574/2024', '2024-02-21', 'Biaya DP Ops ke 1 (Dumas0', '2024-02-21', '2024-02-21', NULL, NULL, 2, 0, 30000000),
(283, 86, 'FEBK615/2024', '2024-02-23', 'Biaya DP Ops ke 2 (Dumas)', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 50000000),
(284, 86, 'FEBK700/2024', '2024-02-26', 'DP Ops ke 3 (Dumas0', '2024-02-26', '2024-02-26', NULL, NULL, 2, 0, 30000000),
(285, 86, 'FEBK755/2024', '2024-02-27', 'Biaya DP Ops ke 4 (Dumas)', '2024-02-27', '2024-02-27', NULL, NULL, 2, 0, 30000000),
(286, 52, '0001', '2024-01-18', 'By DO (Meratus)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 200000),
(287, 52, '0001', '2024-01-18', 'By Job Naik (Pelindo)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 1614565),
(288, 52, '0001', '2024-01-19', 'By Trucking (Arjuna)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 2009000),
(289, 52, '0001', '2024-01-19', 'By Job Turun (Rizky)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 115451),
(290, 52, '0001', '2024-01-22', 'By Perpanjangan Job (Rizky)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 196648),
(291, 52, 'FEBK364', '2024-02-14', 'By Tambahan Bongkar (Rizky)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 200000),
(292, 54, '0001', '2024-01-19', 'By DO (Rizky)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 650000),
(293, 54, '0001', '2024-01-19', 'By Job Naik (Pelindo)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 4223156),
(294, 54, '0001', '2024-01-19', 'By Perpanjangan Job (Pelindo)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 297258),
(295, 54, '0001', '2024-01-19', 'By Job Turun (Pelindo)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 159862),
(296, 54, '0001', '2024-01-20', 'By Job Turun (Rizky)', '2024-01-20', '2024-01-21', NULL, NULL, 2, 0, 79931),
(297, 54, '0001', '2024-01-22', 'By Trucking (Arjuna)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 2989000),
(298, 56, '0001', '2024-01-19', 'By Dp Trucking (Amalia)', '2024-01-19', '2024-01-19', NULL, NULL, 2, 0, 20000000),
(299, 56, '0001', '2024-01-29', 'By Dp Ops 2 (Amalia)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 20000000),
(300, 56, '0001', '2024-01-31', 'By Dp Ops 3 (Amalia)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 20000000),
(301, 56, '0001', '2024-02-09', 'By Dp Ops 4 (Amalia)', '2024-02-09', '2024-02-09', NULL, NULL, 2, 0, 20000000),
(302, 56, 'FEBK368', '2024-02-14', 'By Dp Ops 5 (Amalia)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 20000000),
(303, 58, '0001', '2024-01-19', 'By DO (Tanto)', '2024-01-19', '2024-12-19', NULL, NULL, 2, 0, 200000),
(304, 58, '0001', '2024-01-21', 'By Job Naik (Pelindo)', '2024-01-21', '2024-01-21', NULL, NULL, 2, 0, 2518179),
(305, 58, '0001', '2024-01-21', 'By Job Turun (Rizky)', '2024-01-21', '2024-01-21', NULL, NULL, 2, 0, 159862),
(306, 58, 'FEBK362', '2024-02-14', 'By Bongkar (Rizky)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 400000),
(307, 58, '0001', '2024-01-22', 'By Trucking (Arjuna)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 1274000),
(308, 58, '0001', '2024-01-23', 'By Tally (Arsyad)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 100000),
(309, 60, '0001', '2024-01-24', 'By Trucking (Arjuna)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 441000),
(310, 62, '0001', '2024-01-22', 'By DO (Temas)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 300000),
(311, 62, '0001', '2024-01-22', 'By Job Turun (Pelindo)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 170847),
(312, 62, '0001', '2024-01-22', 'By Job Naik (Pelindo)', '2024-01-22', '2024-01-22', NULL, NULL, 2, 0, 1602396),
(313, 62, '0001', '2024-01-25', 'By Trucking (Arjuna)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 3528000),
(314, 64, '0001', '2024-01-23', 'By DO (Meratus)', '2024-01-23', '2024-01-23', NULL, NULL, 2, 0, 200000),
(315, 64, '0001', '2024-01-24', 'By Job Naik (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 2815437),
(316, 64, '0001', '2024-01-24', 'By Job Turun (Pelindo)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 159862),
(317, 64, '0001', '2024-01-25', 'By Taktis (Abdillah)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 40000),
(318, 64, '0001', '2024-01-25', 'By Bongkar (Rizky)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 800000),
(319, 64, '0001', '2024-01-25', 'By Tally (Ujang)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 100000),
(320, 64, '0001', '2024-01-30', 'By Trucking (Arjuna)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 980000),
(321, 66, '0001', '2024-01-05', 'By Dp 50% (Hartamsa)', '0020-12-05', '2024-01-05', NULL, NULL, 2, 0, 71926400),
(322, 66, 'FEBK628', '2024-02-23', 'By Dp 2 (Hartamsa)', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 50000000),
(323, 67, '0001', '2024-01-08', 'By Dp Ops 1 (Amalia)', '2024-01-08', '2024-01-08', NULL, NULL, 2, 0, 50000000),
(324, 67, '0001', '2024-01-11', 'By Dp Ops 2 (Amalia)', '2024-01-11', '2024-01-11', NULL, NULL, 2, 0, 25000000),
(325, 67, '0001', '2024-01-18', 'By Dp Ops 3 (Amalia)', '2024-01-18', '2024-01-18', NULL, NULL, 2, 0, 25000000),
(326, 68, '0001', '2024-01-24', 'By Dp Ops 1 (Dumas)', '2024-01-24', '2024-01-24', NULL, NULL, 2, 0, 50000000),
(327, 68, '0001', '2024-01-25', 'By Dp Ops 2 (Dumas)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 25000000),
(328, 68, '0001', '2024-01-26', 'By Dp Ops 3 (Dumas)', '2024-01-26', '2024-01-26', NULL, NULL, 2, 0, 25000000),
(329, 68, '0001', '2024-01-30', 'By Dp Ops 4 (Dumas)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 25000000),
(330, 68, '0001', '2024-01-31', 'By Dp Ops 5  (Dumas)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 30000000),
(331, 69, '0001', '2024-01-29', 'By Dp 50% (Hartamsa)', '2024-01-09', '0000-00-00', NULL, NULL, 2, 0, 113373000),
(332, 70, '0001', '2024-01-30', 'By Dp Ops 1 (Amalia)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 30000000),
(333, 70, 'FEBK007', '2024-02-02', 'By Dp Ops 2 (Amalia)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 50000000),
(334, 70, 'FEBK020', '2024-02-06', 'By Dp Ops 3 (Amalia)', '2024-02-06', '2024-02-06', NULL, NULL, 2, 0, 35000000),
(335, 70, 'FEBK082', '2024-02-05', 'By Dp Ops 4 (Amalia)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 50000000),
(336, 70, 'FEBK180', '2024-02-07', 'By Dp Ops 5 (Amalia)', '2024-02-07', '2024-02-07', NULL, NULL, 2, 0, 45000000),
(337, 70, 'FEBK266', '2024-02-08', 'By Dp Ops 6 (Amalia)', '2024-02-08', '2024-02-08', NULL, NULL, 2, 0, 25000000),
(338, 70, 'FEBK265', '2024-02-09', 'By Dp Ops 7 (Amalia)', '2024-02-09', '2024-01-25', NULL, NULL, 2, 0, 25000000),
(339, 70, 'FEBK271', '2024-02-14', 'By Dp  Ops 8 (Amalia)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 20000000),
(340, 70, 'FEBK379', '2024-02-15', 'By Dp Ops 9 (Amalia)', '2024-01-25', '2024-02-15', NULL, NULL, 2, 0, 35000000),
(341, 70, 'FEBK407', '2024-02-19', 'By Dp Ops 10 (Amalia)', '2024-02-19', '2024-02-19', NULL, NULL, 2, 0, 20000000),
(342, 70, 'FEBK515', '2024-02-20', 'By Dp Ops 11 (Amalia)', '2024-02-20', '2024-02-20', NULL, NULL, 2, 0, 20000000),
(343, 70, 'FEBK575', '2024-02-22', 'By Dp Ops 12 (Amalia)', '2024-02-22', '2024-02-22', NULL, NULL, 2, 0, 30000000),
(344, 70, 'FEBK614', '2024-02-23', 'By Dp Ops 13 (Amalia)', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 30000000),
(345, 70, 'FEBK680', '2024-02-24', 'By Dp Ops 14 (Amalia)', '2024-02-24', '2024-02-24', NULL, NULL, 2, 0, 30000000),
(346, 70, 'FEBK712', '2024-02-26', 'By Dp Ops 15 (Amalia)', '2024-02-26', '2024-02-26', NULL, NULL, 2, 0, 35000000),
(347, 70, 'FEB754', '2024-02-27', 'By Dp Ops 16 (Amalia)', '2024-02-27', '2024-02-27', NULL, NULL, 2, 0, 40000000),
(348, 70, 'FEBK779', '2024-02-28', 'By Dp OPS 17 (Amalia)', '2024-01-25', '2024-02-28', NULL, NULL, 2, 0, 25000000),
(349, 72, '0001', '2024-01-25', 'By Dp 1 (Aspi)', '2024-01-25', '2024-01-25', NULL, NULL, 2, 0, 15000000),
(350, 72, '0001', '2024-01-27', 'By Dp 2 (Aspi)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 10000000),
(351, 72, '0001', '2024-01-29', 'By Dp  3 (Aspi)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 10000000),
(352, 72, 'By Lunas Ops (Ops)', '2024-01-30', 'By Lunas Ops (Aspi)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 9835000),
(353, 75, 'FEBK051', '2024-02-02', 'By Sub (CV. Kaltek)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 3195000),
(354, 75, 'FEBK060', '2024-02-02', 'By THC (Panurjwari)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 6252500),
(355, 75, 'FEBK080', '2024-02-05', 'By Dp Trucking (Arjuna)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 10000000),
(356, 75, 'FEBK111', '2024-02-05', 'By Job Naik (Pelindo)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 801307),
(357, 75, 'FEBK112', '2024-02-05', 'By Job Turun (Pelindo)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 257500),
(358, 75, 'FEBK115', '2024-02-05', 'By Job (Meratus)', '2024-02-05', '0000-00-00', NULL, NULL, 2, 0, 200000),
(359, 75, 'FEBK242', '2024-02-07', 'By Buruh Muat & Ops (Cunda)', '2024-02-07', '2024-02-07', NULL, NULL, 2, 0, 1100000),
(360, 75, 'FEBK361', '2024-02-14', 'By Tally (Rizky)', '2024-02-14', '2024-02-14', NULL, NULL, 2, 0, 170000),
(361, 75, 'FEBK369', '2024-02-15', 'By Buruh Bongkar (Cunda)', '2024-02-15', '2024-02-15', NULL, NULL, 2, 0, 1850000),
(362, 75, 'FEBK485', '2024-02-19', 'By Dp Trucking (Cunda)', '2024-02-19', '2024-02-19', NULL, NULL, 2, 0, 5000000),
(363, 78, '0001', '2024-01-27', 'By DO (Meratus)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 500000),
(364, 78, '0001', '2024-01-27', 'By Job Turun (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 79931),
(365, 78, '0001', '2024-01-27', 'By Perpanjangan Job (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 148629),
(366, 78, '0001', '2024-01-30', 'By Job Naik (Rizky)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 5550),
(367, 78, '0001', '2024-01-27', 'By Job Naik (Pelindo)', '2024-01-27', '2024-01-27', NULL, NULL, 2, 0, 2815437),
(368, 78, '0001', '2024-01-29', 'By Job Turun (Pelindo)', '2024-01-29', '2024-01-29', NULL, NULL, 2, 0, 79931),
(369, 78, '0001', '2024-01-30', 'By Trucking (Arjuna)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 980000),
(370, 78, '0001', '2024-01-30', 'By Tally (Lutfi)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 70000),
(371, 78, '0001', '2024-01-30', 'By Taktis (Lutfi)', '2024-01-30', '0000-00-00', NULL, NULL, 2, 0, 20000),
(372, 78, '0001', '2024-01-30', 'By Pengawalan (Lutfi)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 600000),
(373, 78, '0001', '2024-01-30', 'By Buruh Bongkar (LUTFI)', '2024-01-30', '2024-01-30', NULL, NULL, 2, 0, 400000),
(374, 78, 'FEBK105', '2024-02-05', 'By Demurage (Meratus)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 600000),
(375, 82, '0001', '2024-01-30', 'By Job Naik (Pelindo)', '2024-01-30', '2024-01-31', NULL, NULL, 2, 0, 3204792),
(376, 82, '0001', '2024-01-30', 'By DO (Spil)', '2024-01-30', '2024-01-31', NULL, NULL, 2, 0, 400000),
(377, 82, '0001', '2024-01-30', 'By Job Turun (Pelindo)', '2024-01-30', '2024-01-31', NULL, NULL, 2, 0, 1030000),
(378, 82, '0001', '2024-01-31', 'By Ops (Rasid)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 1500000),
(379, 82, 'FEBK342', '2024-02-13', 'By Tally (Nafi)', '2024-02-13', '2024-02-13', NULL, NULL, 2, 0, 200000),
(380, 156, '0001', '2024-01-31', 'By DO (Spil)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 200000),
(381, 156, '0001', '2024-01-31', 'By Job Naik (Pelindo)', '2024-02-02', '2024-01-31', NULL, NULL, 2, 0, 4223156),
(382, 156, '0001', '2024-01-31', 'By Job Turun (Rizky)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 79931),
(383, 156, '0001', '2024-01-31', 'By Job Turun (Pelindo)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 80040),
(384, 156, 'FEBK003', '2024-02-01', 'By Perpanjangan Job (Pelindo)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 445887),
(385, 156, 'FEBK008', '2024-02-01', 'By Job Turun (Pelindo0', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 80040),
(386, 85, '0001', '2024-01-31', 'By Jamcon (Meratus)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 500000),
(387, 85, '0001', '2024-01-31', 'By Job Naik (Pelindo)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 801198),
(388, 85, '0001', '2024-01-31', 'By Job (Meratus)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 250000),
(389, 85, '0001', '2024-01-31', 'By Job turun (Meratus)', '2024-01-31', '2024-01-31', NULL, NULL, 2, 0, 85506),
(390, 85, 'FEBK026', '2024-02-09', 'By Trucking (Arjuna)', '0000-00-00', '2024-02-09', NULL, NULL, 2, 0, 980000),
(391, 85, 'FEBK027', '2024-02-05', 'By Tally (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 20000),
(392, 85, 'FEBK028', '2024-02-05', 'By Taktis (Lutfi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 50000),
(393, 85, 'FEBK029', '2024-02-05', 'By Bongkar (LUTFI)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 400000),
(394, 87, 'FEBK099', '2024-02-05', 'By Job Turun (Aspi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 3090000),
(395, 87, 'FEBK100', '2024-02-05', 'By Job Naik (Aspi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 9625681),
(396, 87, 'FEBK101', '2024-02-05', 'By Do (Aspi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 800000),
(397, 87, 'FEBK102', '2024-02-05', 'By Jamcon (Aspi)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 6000000),
(398, 87, 'FEBK106', '2024-02-05', 'By Ops (Rasid)', '2024-02-05', '2024-02-05', NULL, NULL, 2, 0, 4500000),
(399, 87, 'FEBK458', '2024-02-16', 'bY Demurage (Meratus)', '2024-02-16', '2024-02-16', NULL, NULL, 2, 0, 450000),
(400, 87, 'FEBK468', '2024-02-17', 'By Storage (Meratus)', '2024-02-17', '2024-02-17', NULL, NULL, 2, 0, 562043),
(401, 87, 'FEBK620', '2024-02-23', 'By Demurage (Meratus)', '2024-02-23', '2024-02-23', NULL, NULL, 2, 0, 674086),
(402, 88, 'FEBK001', '2024-02-01', 'By DO (Tanto)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 200000),
(403, 88, 'FEBK002', '2024-02-01', 'By Job Naik (Pelindo)', '2024-02-01', '2024-02-01', NULL, NULL, 2, 0, 3777595),
(404, 88, 'febk025', '2024-02-02', 'By Job Turun (Pelindo)', '2024-02-02', '2024-02-02', NULL, NULL, 2, 0, 80040),
(405, 88, 'FEBK012', '2024-02-01', 'By Job Turun (Pelindo)', '2024-02-01', NULL, NULL, NULL, 1, 0, 160080),
(406, 88, 'FEBK030', '2024-02-09', 'By Trucking (Arjuna)', NULL, NULL, NULL, NULL, 0, 0, 1568000),
(407, 157, 'FEBK031', '2024-02-05', 'By Tally Sampit (Lutfi)', '2024-02-05', NULL, NULL, NULL, 1, 0, 600000),
(408, 88, 'FEBK032', '2024-02-05', 'By Tally Ceres (Lutfi)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(409, 88, 'FEBK033', '2024-02-05', 'By Tally Clomas (Lutfi)', NULL, NULL, NULL, NULL, 0, 0, 50000),
(410, 88, 'FEBK034', '2024-02-05', 'By Taktis (Lutfi)', NULL, NULL, NULL, NULL, 0, 0, 60000),
(411, 88, 'FEBK035', '2024-02-05', 'By Buruh Bongkar Sampit (Lutfi)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(412, 88, 'FEBK036', '2024-02-05', 'By Buruh Bongkar Ceres (Lutfi)', NULL, NULL, NULL, NULL, 0, 0, 600000),
(413, 157, 'FEBK037', '2024-02-05', 'By Buruh Bongkar Clomas (Lutfi)', '2024-02-05', NULL, NULL, NULL, 1, 0, 400000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiting_jakarta`
--

CREATE TABLE `tbl_waiting_jakarta` (
  `id_waiting_jakarta` int(11) NOT NULL,
  `id_sub_jakarta` int(11) NOT NULL,
  `no_invoice` varchar(20) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_persetujuan_1` date DEFAULT NULL,
  `tgl_persetujuan_2` date DEFAULT NULL,
  `tgl_pembatalan_1` date DEFAULT NULL,
  `tgl_pembatalan_2` date DEFAULT NULL,
  `acc` int(11) NOT NULL,
  `batal` int(11) NOT NULL,
  `jumlah_permintaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_waiting_jakarta`
--

INSERT INTO `tbl_waiting_jakarta` (`id_waiting_jakarta`, `id_sub_jakarta`, `no_invoice`, `tgl_permintaan`, `deskripsi`, `tgl_persetujuan_1`, `tgl_persetujuan_2`, `tgl_pembatalan_1`, `tgl_pembatalan_2`, `acc`, `batal`, `jumlah_permintaan`) VALUES
(5, 3, 'INV/003N', '2024-02-01', 'Yaa', '2024-02-02', '2024-02-02', NULL, '2024-02-03', 1, 1, 200000),
(8, 6, 'INV-03', '2024-02-08', 'DP', '2024-02-09', '2024-02-09', NULL, '2024-02-09', 2, 1, 25000000),
(9, 6, 'INV-04', '2024-02-11', 'pelunasan', '2024-02-13', '2024-02-14', NULL, NULL, 2, 0, 25000000),
(12, 7, 'INV-05', '2024-02-25', 'pelunasan', '2024-02-26', '2024-02-26', NULL, NULL, 2, 0, 90000000),
(14, 7, 'INV-06', '2024-02-28', 'pelunasan', '2024-02-29', '2024-02-29', NULL, NULL, 2, 0, 10000000),
(18, 9, 'INV-01', '2024-02-08', 'PEMBAYARAN PELUNASAN', '2024-02-08', '2024-02-08', NULL, NULL, 2, 0, 50000000),
(19, 10, 'INV-02', '2024-02-08', 'dp', '2024-02-08', '2024-02-08', NULL, NULL, 2, 0, 25000000),
(20, 10, 'INV-03', '2024-02-09', 'PELUNASAN', '2024-02-11', '2024-02-11', NULL, NULL, 2, 0, 25000000),
(22, 11, 'INV-04', '2024-02-11', 'pelunasan', '2024-02-12', '2024-02-12', NULL, NULL, 2, 0, 90000000),
(23, 12, 'INV-07', '2024-02-10', 'DP', '2024-02-12', '2024-02-12', NULL, NULL, 2, 0, 25000000),
(24, 13, 'INV-06', '2024-02-10', 'DP', '2024-02-12', '2024-02-13', NULL, NULL, 2, 0, 25000000),
(25, 14, 'INV-06', '2024-02-09', 'dp', '2024-02-12', '2024-02-09', NULL, NULL, 2, 0, 25000000),
(26, 15, 'INV-01', '2024-02-23', 'dp 1', '2024-02-27', '2024-02-27', NULL, NULL, 2, 0, 25000000),
(27, 76, '0001', '2024-01-18', 'By Ops (Rasid)', NULL, NULL, NULL, NULL, 0, 0, 800000),
(28, 76, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 1325470),
(29, 77, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 7481146),
(30, 78, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 5054778),
(31, 78, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(32, 79, '0001', '2024-01-09', 'By THC (Meratus)', NULL, NULL, NULL, NULL, 0, 0, 4500000),
(33, 79, '0001', '2024-02-12', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 3254698),
(34, 79, '0001', '2024-02-12', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 500000),
(35, 80, '0001', '2024-02-12', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(36, 80, '0001', '2024-02-12', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 3702019),
(37, 81, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 1370602),
(38, 81, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(39, 83, '0001', '2024-02-12', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 100000),
(40, 83, '0001', '2024-02-12', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 3675000),
(41, 84, '0001', '2024-01-09', 'By THC (Spil)', NULL, NULL, NULL, NULL, 0, 0, 5257500),
(42, 84, '0001', '2024-01-09', 'By Job Naik (Pelindo)', NULL, NULL, NULL, NULL, 0, 0, 801389),
(43, 84, '0001', '2024-01-09', 'By DO (Spil)', NULL, NULL, NULL, NULL, 0, 0, 330300),
(44, 84, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 1631348),
(45, 84, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 500000),
(46, 85, '0001', '2024-01-10', 'By THC (Meratus)', NULL, NULL, NULL, NULL, 0, 0, 5802500),
(47, 85, '0001', '2024-02-12', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 6111555),
(48, 85, '0001', '2024-02-12', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 500000),
(49, 86, '0001', '2024-01-08', 'By Trucking (Arjuna)', NULL, NULL, NULL, NULL, 0, 0, 1234800),
(50, 86, '0001', '2024-01-08', 'By THC (Meratus)', NULL, NULL, NULL, NULL, 0, 0, 4900000),
(51, 86, '0001', '2024-01-08', 'By Job Naik (Pelindo)', NULL, NULL, NULL, NULL, 0, 0, 801389),
(52, 86, '0001', '2024-01-08', 'By Jamcon (Meratus)', NULL, NULL, NULL, NULL, 0, 0, 1000000),
(53, 86, '0001', '2024-01-08', 'By DO (Meratus)', NULL, NULL, NULL, NULL, 0, 0, 150000),
(54, 86, '0001', '2024-01-29', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 1929228),
(55, 86, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 500000),
(56, 87, '0001', '2024-01-11', 'By THC (Icon)', NULL, NULL, NULL, NULL, 0, 0, 2402500),
(57, 87, '0001', '2024-01-11', 'By DO (Icon)', NULL, NULL, NULL, NULL, 0, 0, 200000),
(58, 87, '0001', '2024-01-11', 'By Job Naik (Pelindo)', NULL, NULL, NULL, NULL, 0, 0, 801389),
(59, 87, '0001', '2024-01-15', 'By Job Turun (Pelindo)', NULL, NULL, NULL, NULL, 0, 0, 80122),
(60, 87, '0001', '2024-01-16', 'By DG (Adly)', NULL, NULL, NULL, NULL, 0, 0, 310000),
(61, 87, '0001', '2024-01-19', 'By Empty Isotank (Samudera)', NULL, NULL, NULL, NULL, 0, 0, 3150000),
(62, 87, '0001', '2024-01-19', 'By Trucking (Arjuna)', NULL, NULL, NULL, NULL, 0, 0, 9114000),
(63, 87, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 600000),
(64, 87, '0001', '2024-02-12', 'By Trucking (Gus Maju)', NULL, NULL, NULL, NULL, 0, 0, 4048380),
(65, 87, 'FEBK078', '2024-02-02', 'By BL (Icon)', NULL, NULL, NULL, NULL, 0, 0, 7200000),
(66, 88, '0001', '2024-01-11', 'By THC (Temas)', NULL, NULL, NULL, NULL, 0, 0, 6552500),
(67, 88, '0001', '2024-01-17', 'By Demurage (Mega)', NULL, NULL, NULL, NULL, 0, 0, 375000),
(68, 88, '0001', '2024-01-29', 'By Ops (Jkt)', NULL, NULL, NULL, NULL, 0, 0, 600000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_debit_banjarmasin`
--
ALTER TABLE `tbl_debit_banjarmasin`
  ADD PRIMARY KEY (`id_debit_banjarmasin`);

--
-- Indexes for table `tbl_debit_jakarta`
--
ALTER TABLE `tbl_debit_jakarta`
  ADD PRIMARY KEY (`id_debit_jakarta`);

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_pekerjaan_banjarmasin`
--
ALTER TABLE `tbl_pekerjaan_banjarmasin`
  ADD PRIMARY KEY (`id_pekerjaan_banjarmasin`);

--
-- Indexes for table `tbl_pekerjaan_jakarta`
--
ALTER TABLE `tbl_pekerjaan_jakarta`
  ADD PRIMARY KEY (`id_pekerjaan_jakarta`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_spk_banjarmasin`
--
ALTER TABLE `tbl_spk_banjarmasin`
  ADD PRIMARY KEY (`id_spk_banjarmasin`);

--
-- Indexes for table `tbl_spk_jakarta`
--
ALTER TABLE `tbl_spk_jakarta`
  ADD PRIMARY KEY (`id_spk_jakarta`);

--
-- Indexes for table `tbl_sub_banjarmasin`
--
ALTER TABLE `tbl_sub_banjarmasin`
  ADD PRIMARY KEY (`id_sub_banjarmasin`);

--
-- Indexes for table `tbl_sub_jakarta`
--
ALTER TABLE `tbl_sub_jakarta`
  ADD PRIMARY KEY (`id_sub_jakarta`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Indexes for table `tbl_waiting_banjarmasin`
--
ALTER TABLE `tbl_waiting_banjarmasin`
  ADD PRIMARY KEY (`id_waiting_banjarmasin`);

--
-- Indexes for table `tbl_waiting_jakarta`
--
ALTER TABLE `tbl_waiting_jakarta`
  ADD PRIMARY KEY (`id_waiting_jakarta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_debit_banjarmasin`
--
ALTER TABLE `tbl_debit_banjarmasin`
  MODIFY `id_debit_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_debit_jakarta`
--
ALTER TABLE `tbl_debit_jakarta`
  MODIFY `id_debit_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_pekerjaan_banjarmasin`
--
ALTER TABLE `tbl_pekerjaan_banjarmasin`
  MODIFY `id_pekerjaan_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_pekerjaan_jakarta`
--
ALTER TABLE `tbl_pekerjaan_jakarta`
  MODIFY `id_pekerjaan_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_spk_banjarmasin`
--
ALTER TABLE `tbl_spk_banjarmasin`
  MODIFY `id_spk_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tbl_spk_jakarta`
--
ALTER TABLE `tbl_spk_jakarta`
  MODIFY `id_spk_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_sub_banjarmasin`
--
ALTER TABLE `tbl_sub_banjarmasin`
  MODIFY `id_sub_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tbl_sub_jakarta`
--
ALTER TABLE `tbl_sub_jakarta`
  MODIFY `id_sub_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_waiting_banjarmasin`
--
ALTER TABLE `tbl_waiting_banjarmasin`
  MODIFY `id_waiting_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `tbl_waiting_jakarta`
--
ALTER TABLE `tbl_waiting_jakarta`
  MODIFY `id_waiting_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
