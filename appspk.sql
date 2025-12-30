-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 30 Des 2025 pada 07.49
-- Versi server: 11.8.3-MariaDB-log
-- Versi PHP: 7.2.34

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
-- Struktur dari tabel `tbl_debit_banjarmasin`
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
  `deskripsi` text NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_debit_banjarmasin`
--

INSERT INTO `tbl_debit_banjarmasin` (`id_debit_banjarmasin`, `id_sub_banjarmasin`, `no_debit`, `tgl_debit_nota`, `customer`, `dpp`, `ppn`, `total_debit_nota`, `deskripsi`, `hapus`, `tanggal_hapus`) VALUES
(343, 967, '005', '2025-12-19', 'PT. Kemindo CAO', 72000000, 0, 72000000, '-', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_debit_jakarta`
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
  `deskripsi` text NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_debit_jakarta`
--

INSERT INTO `tbl_debit_jakarta` (`id_debit_jakarta`, `id_sub_jakarta`, `no_debit`, `tgl_debit_nota`, `customer`, `dpp`, `ppn`, `total_debit_nota`, `deskripsi`, `hapus`, `tanggal_hapus`) VALUES
(274, 1481, '003', '2025-12-16', 'Bapak Nova', 8500000, 0, 8500000, '-', 0, NULL),
(275, 1469, '001', '2025-12-02', 'CV. Patio Livity', 18750000, 0, 18750000, '-', 0, NULL),
(276, 1472, '002', '2025-12-16', 'Bapak Iwan', 22000000, 0, 22000000, '-', 0, NULL),
(277, 1478, '004', '2025-12-17', 'Bapak Sudrajat ', 34300000, 0, 34300000, '-', 0, NULL),
(278, 1486, '005', '2025-12-19', 'PT. Kemindo CAO', 72000000, 0, 72000000, '-', 1, '2025-12-24'),
(279, 1478, '006', '2025-12-26', 'Udin', 600000, 600000, 1200000, '-', 1, '2025-12-26'),
(280, 1483, '006', '2025-12-29', 'Bapak Tomi', 15750000, 0, 15750000, '-', 0, NULL),
(281, 1483, '006', '2025-12-29', 'Bapak Tomi', 15750000, 0, 15750000, '-', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_hak_akses`
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
(70, 4, 15),
(71, 6, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
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
-- Dumping data untuk tabel `tbl_menu`
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
(40, 'DATA VENDOR', 'tbl_vendor', 'fa fa-address-book', 0, 'y'),
(41, 'DATA VIC', 'tbl_vic', 'fa fa-user-circle-o', 0, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_banjarmasin`
--

CREATE TABLE `tbl_payment_banjarmasin` (
  `id_payment_banjarmasin` int(11) NOT NULL,
  `id_debit_banjarmasin` int(11) NOT NULL,
  `tanggal_payment` date NOT NULL,
  `jumlah_payment` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment_jakarta`
--

CREATE TABLE `tbl_payment_jakarta` (
  `id_payment_jakarta` int(11) NOT NULL,
  `id_debit_jakarta` int(11) NOT NULL,
  `tanggal_payment` date NOT NULL,
  `jumlah_payment` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pekerjaan_banjarmasin`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pekerjaan_jakarta`
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
-- Dumping data untuk tabel `tbl_pekerjaan_jakarta`
--

INSERT INTO `tbl_pekerjaan_jakarta` (`id_pekerjaan_jakarta`, `id_sub_jakarta`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `last_kerja`, `qty`, `unit_angkut`) VALUES
(717, 1470, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-12-18', '2025-12-18', '0000-00-00', 1, 0, 'Proses Dooring', '', 'Ahmad Fauzan - 2025-12-08 07:31:08', 1, 'TRUK'),
(718, 1469, '2025-12-03', '2025-12-03', '2025-12-05', '2025-12-07', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 'Ahmad Fauzan - 2025-12-08 07:31:55', 1, 'TRUK'),
(719, 1470, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-12-08', '2025-12-08', '0000-00-00', 1, 0, 'Proses Dooring', '', 'Ahmad Fauzan - 2025-12-08 07:45:58', 1, 'TRUK'),
(720, 1469, '2025-12-03', '2025-12-03', '2025-12-05', '2025-12-07', '2025-12-15', '2025-12-16', '0000-00-00', 3, 0, 'Proses Dooring', '', 'Ahmad Fauzan - 2025-12-16 02:12:22', 3, 'TRUK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_spk_banjarmasin`
--

CREATE TABLE `tbl_spk_banjarmasin` (
  `id_spk_banjarmasin` int(11) NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `no_spk` varchar(20) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nama_kapal` varchar(100) NOT NULL,
  `nilai_spk` int(100) NOT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `id_vendor` int(11) NOT NULL,
  `hapus` int(11) NOT NULL,
  `id_vic` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_spk_banjarmasin`
--

INSERT INTO `tbl_spk_banjarmasin` (`id_spk_banjarmasin`, `no_po`, `no_spk`, `tgl_spk`, `pelaksana`, `nama_kapal`, `nilai_spk`, `dpp`, `total_payment`, `id_users`, `last_update`, `tgl_debit_nota`, `id_vendor`, `hapus`, `id_vic`, `tanggal_hapus`) VALUES
(900, 'Tes', '1234', '2025-12-07', 'Tes', 'Tes', 0, 0, 0, 13, '2025-12-07 12:43:25', NULL, 105, 1, 9, '2025-12-07'),
(901, '0', '001', '2025-12-02', 'Jakarta', 'KM CTP HONOUR V, 34', 0, 0, 0, 37, '2025-12-08 06:59:53', NULL, 106, 1, 10, '2025-12-08'),
(902, '001 BJM', '002', '2025-12-12', 'CV AGHNIA PERKASA ABADI', 'UMBUL MAS V. 75/25', 0, 0, 0, 37, '2025-12-16 08:23:37', NULL, 107, 0, 10, NULL),
(903, '001/tes', '001/tes', '2025-12-22', 'tes', 'tess', 0, 0, 0, 13, '2025-12-22 08:06:50', NULL, 111, 1, 10, '2025-12-22'),
(904, '001/tes', '001/tes', '2025-12-22', 'tes', 'tess', 0, 0, 0, 13, '2025-12-22 08:14:11', NULL, 111, 1, 10, '2025-12-22'),
(905, '001/tes', '001/tes', '2025-12-22', 'tes', '1000000', 0, 0, 0, 13, '2025-12-22 09:29:20', NULL, 111, 1, 10, '2025-12-22'),
(906, '002 BJM', '013', '2025-12-29', 'CV BERKAH ABIL JAYA LESTARI', 'MARE MAS V. 77/25', 0, 0, 0, 37, '2025-12-29 05:52:55', NULL, 107, 0, 10, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_spk_jakarta`
--

CREATE TABLE `tbl_spk_jakarta` (
  `id_spk_jakarta` int(11) NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `no_spk` varchar(20) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nama_kapal` varchar(100) NOT NULL,
  `nilai_spk` int(100) NOT NULL,
  `dpp` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `tgl_debit_nota` date DEFAULT NULL,
  `id_vendor` int(11) NOT NULL,
  `hapus` int(11) NOT NULL,
  `id_vic` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_spk_jakarta`
--

INSERT INTO `tbl_spk_jakarta` (`id_spk_jakarta`, `no_po`, `no_spk`, `tgl_spk`, `pelaksana`, `nama_kapal`, `nilai_spk`, `dpp`, `total_payment`, `id_users`, `last_update`, `tgl_debit_nota`, `id_vendor`, `hapus`, `id_vic`, `tanggal_hapus`) VALUES
(1465, '001 JKT', '001', '2025-12-02', 'Jakarta', 'KM CTP HONOUR V 34', 0, 0, 0, 37, '2025-12-16 08:24:14', NULL, 106, 0, 10, NULL),
(1466, '002 JKT', '003', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 'PULAU HOKI V. 29 ETD', 0, 0, 0, 37, '2025-12-16 08:24:30', NULL, 108, 0, 10, NULL),
(1467, '003 JKT', '004', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 'SINAR PAJAJARAN V. 060A ETD', 0, 0, 0, 37, '2025-12-16 08:24:45', NULL, 108, 0, 10, NULL),
(1468, '004 JKT', '005', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 'ORIENTAL GALAXY V. 19 ETD', 0, 0, 0, 37, '2025-12-16 08:25:05', NULL, 109, 0, 10, NULL),
(1469, '005 JKT', '006', '2025-12-16', 'JAKARTA', 'ICON HOSEA VI V. 21/25 ETD', 0, 0, 0, 37, '2025-12-16 08:25:20', NULL, 110, 0, 10, NULL),
(1470, '006 JKT', '007', '2025-12-17', 'CV BORNEO YASSA', 'ICON EFESUS I 17 V. 116/25 ETD', 0, 0, 0, 37, '2025-12-18 07:15:09', NULL, 111, 0, 10, NULL),
(1471, '007 JKT', '008', '2025-12-17', 'CV AGHNIA PERKASA ABADI', 'EDEN MAS V. 52', 0, 0, 0, 37, '2025-12-18 07:20:54', NULL, 107, 0, 10, NULL),
(1472, '001/tes', '001/tes', '2025-12-22', 'tes', 'tess', 0, 0, 0, 13, '2025-12-22 08:10:00', NULL, 111, 1, 10, '2025-12-22'),
(1473, '001/tes', '001/tes', '2025-12-22', 'tes', 'tess', 0, 0, 0, 13, '2025-12-22 08:16:31', NULL, 111, 1, 10, '2025-12-22'),
(1474, '001/tes', '001/tes', '2025-12-22', 'tes', 'tess', 0, 0, 0, 13, '2025-12-22 09:30:58', NULL, 111, 1, 10, '2025-12-22'),
(1475, '008 JKT', '009', '2025-12-22', 'CV AGHNIA PERKASA ABADI', 'KM ICON EFESUS V. 117', 0, 0, 0, 37, '2025-12-26 11:50:33', NULL, 112, 0, 10, NULL),
(1476, '009 JKT', '010', '2025-12-22', 'CV AGHNIA PERKASA ABADI', 'KM UMBUL MAS V. 77', 0, 0, 0, 37, '2025-12-26 11:50:42', NULL, 107, 0, 10, NULL),
(1477, '010 JKT', '011', '2025-12-24', 'BAPAK INDRA', '-', 0, 0, 0, 37, '2025-12-26 11:53:21', NULL, 112, 0, 10, NULL),
(1478, '011 JKT', '012', '2025-12-24', 'JALA MAS', 'KM. EAGLE MAS V. 51', 0, 0, 0, 37, '2025-12-26 11:57:24', NULL, 107, 0, 10, NULL),
(1479, '012 JKT', '014', '2025-12-29', 'JALA MAS', 'KM ICON KOLOSE III V. 101/25', 0, 0, 0, 37, '2025-12-29 06:02:20', NULL, 107, 0, 10, NULL),
(1480, '013 JKT', '015', '2025-12-29', 'JALA MAS', 'KM ICON KOLOSE III 23 V. 101A/25', 0, 0, 0, 37, '2025-12-30 02:12:00', NULL, 107, 0, 10, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sub_banjarmasin`
--

CREATE TABLE `tbl_sub_banjarmasin` (
  `id_sub_banjarmasin` int(11) NOT NULL,
  `id_spk_banjarmasin` int(11) NOT NULL,
  `kode_sub` varchar(5) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nilai_spk` bigint(20) NOT NULL,
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
  `total_payment` bigint(20) NOT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_sub_banjarmasin`
--

INSERT INTO `tbl_sub_banjarmasin` (`id_sub_banjarmasin`, `id_spk_banjarmasin`, `kode_sub`, `tgl_spk`, `pelaksana`, `nilai_spk`, `vendor`, `asal`, `tujuan`, `jenis_pekerjaan`, `item_barang`, `qty`, `unit_angkut`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `id_users`, `last_update`, `tgl_debit_nota`, `dpp`, `total_payment`, `last_kerja`, `satuan`, `hapus`, `tanggal_hapus`) VALUES
(963, 900, '123', '2025-12-07', 'Tes', 200000, 'Tes', 'Tes', 'Tes', 'Tes', 'Tes', 100, 'Tes', '2025-12-07', '2025-12-09', '2025-12-07', '2025-12-15', '2025-12-07', '2025-12-13', '2025-12-07', 0, 100, 'Ok', 'Stee', 13, '2025-12-07 12:44:34', NULL, 0, 2000000, 'yasky - 2025-12-07 12:44:34', 'Ton', 1, '2025-12-07'),
(964, 901, 'A', '2025-12-02', 'CV AGHNIA PERKASA ABADI', 6000000, 'CV PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK ', '0001-01-01', '2025-12-02', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-08 07:03:43', NULL, 0, 0, 'Denikakap - 2025-12-08 07:03:43', '1X20', 1, '2025-12-08'),
(965, 901, 'B', '2025-12-02', 'EKA MULTI LOGISTIK', 3000000, 'CV. PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-08 07:05:15', NULL, 0, 0, 'Denikakap - 2025-12-08 07:05:15', '1X20', 1, '2025-12-08'),
(966, 901, 'THC, ', '2025-12-02', 'PT PELAYARAN CARAKA TIRTA PERKASA', 6602500, 'CV. PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-08 07:07:16', NULL, 0, 0, 'Denikakap - 2025-12-08 07:07:16', '1X20', 1, '2025-12-08'),
(967, 902, 'A', '2025-12-12', 'CV AGHNIA PERKASA ABADI', 64607100, 'PT KEMINDO CAO', 'BANJARMASIN', 'PTK SITE', 'Container', 'PUPUK', 3, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 37, '2025-12-16 01:13:25', '2025-12-19', 72000000, 2100000, 'Denikakap - 2025-12-16 01:13:25', 'Container', 0, NULL),
(968, 902, 'THC, ', '2025-12-12', 'PELAYARAN', 4593000, 'PT KEMINDO CAO', 'BANJARMASIN', 'PTK SITE', 'Container', 'PUPUK', 3, 'Container', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 37, '2025-12-16 02:00:50', NULL, 0, 3764112, 'Denikakap - 2025-12-16 02:00:50', 'Container', 0, NULL),
(969, 903, '001/t', '2025-12-22', 'tes', 10000000000, 'tes', 'tes', 'tes', 'tes', 'tes', 100, 'tes', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', 0, 100, '', '', 13, '2025-12-22 08:07:52', NULL, 0, 0, 'yasky - 2025-12-22 08:07:52', 'ton', 1, '2025-12-22'),
(970, 904, '001/t', '2025-12-22', 'tes', 1000000, 'tes', 'tes', 'tes', 'tes', 'tes', 100, 'tes', '2025-12-22', '2025-12-22', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 100, '', '', 13, '2025-12-22 08:14:49', NULL, 0, 0, 'yasky - 2025-12-22 08:14:49', 'ton', 1, '2025-12-22'),
(971, 905, '001/t', '2025-12-22', 'tes', 1000000, 'tes', 'tes', 'tes', '100000', 'tes', 100, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 100, '', '', 13, '2025-12-22 09:30:15', NULL, 0, 0, 'yasky - 2025-12-22 09:30:15', 'ton', 1, '2025-12-22'),
(972, 906, 'A', '2025-12-29', 'CV BERKAH ABIL JAYA LESTARI', 59507100, 'PT KEMINDO CAO', 'BANJARMASIN', 'PTK SITE', 'PORT TO DOOR', 'PUPUK', 60000, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 60000, '', '', 37, '2025-12-29 06:00:43', NULL, 0, 0, 'Denikakap - 2025-12-29 05:56:12', 'Kg', 0, NULL),
(973, 906, 'B', '2025-12-29', 'OPS GLM', 5100000, 'PT KEMINDO CAO', 'BANJARMASIN', 'PTK SITE', 'PORT TO DOOR', 'PUPUK', 60000, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 60000, '', '', 37, '2025-12-29 06:01:06', NULL, 0, 0, 'Denikakap - 2025-12-29 05:59:11', 'KG', 0, NULL),
(974, 906, 'THC, ', '2025-12-29', 'PELAYARAN', 4593000, 'PT KEMINDO CAO', 'BANJARMASIN', 'PTK SITE', 'PORT TO DOOR', 'PUPUK', 60000, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 60000, '', '', 37, '2025-12-29 06:00:16', NULL, 0, 0, 'Denikakap - 2025-12-29 06:00:16', 'KG', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sub_jakarta`
--

CREATE TABLE `tbl_sub_jakarta` (
  `id_sub_jakarta` int(11) NOT NULL,
  `id_spk_jakarta` int(11) NOT NULL,
  `kode_sub` varchar(5) NOT NULL,
  `tgl_spk` date NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `nilai_spk` bigint(20) NOT NULL,
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
  `total_payment` bigint(20) NOT NULL,
  `last_kerja` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_sub_jakarta`
--

INSERT INTO `tbl_sub_jakarta` (`id_sub_jakarta`, `id_spk_jakarta`, `kode_sub`, `tgl_spk`, `pelaksana`, `nilai_spk`, `vendor`, `asal`, `tujuan`, `jenis_pekerjaan`, `item_barang`, `qty`, `unit_angkut`, `tgl_stuf`, `tgl_selesai_stuf`, `etd_kapal`, `eta_kapal`, `tgl_mulai_doring`, `tgl_selesai_doring`, `tgl_bap`, `jumlah_dikerjakan`, `sisa_belum`, `status`, `keterangan`, `id_users`, `last_update`, `tgl_debit_nota`, `dpp`, `total_payment`, `last_kerja`, `satuan`, `hapus`, `tanggal_hapus`) VALUES
(1469, 1465, 'A', '2025-12-02', 'CV AGHNIA PERKASA ABADI', 6000000, 'CV. PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 3, 'TRUK', '2025-12-03', '2025-12-03', '2025-12-05', '2025-12-07', '2025-12-15', '2025-12-16', '0000-00-00', 3, 0, 'Proses Dooring', '', 37, '2025-12-08 07:16:22', '2025-12-02', 18750000, 6000000, 'Ahmad Fauzan - 2025-12-16 02:12:22', '1x20', 0, NULL),
(1470, 1465, 'B', '2025-12-02', 'EKA MULTI LOGISTIK', 3000000, 'CV. PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2025-12-08', '2025-12-08', '0000-00-00', 1, 0, 'Proses Dooring', '', 37, '2025-12-08 07:18:20', NULL, 0, 3000000, 'Ahmad Fauzan - 2025-12-08 07:45:58', '1X20', 0, NULL),
(1471, 1465, 'THC, ', '2025-12-02', 'PT PELAYARAN CARAKA TIRTA PERKASA', 6602500, 'CV PATIO LIVITY', 'BANDUNG', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-08 07:17:11', NULL, 0, 6393200, 'Denikakap - 2025-12-08 07:17:11', '1X20', 0, NULL),
(1472, 1466, 'A', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 4400000, 'BP. IRAWAN', 'JAKARTA', 'BATAM', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:37:35', '2025-12-16', 22000000, 0, 'Denikakap - 2025-12-16 07:37:35', '1X40', 0, NULL),
(1473, 1466, 'B', '2025-12-16', 'BINTAN CARGO', 2724200, 'BP. IRAWAN', 'JAKARTA', 'BATAM', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:45:29', NULL, 0, 0, 'Denikakap - 2025-12-16 07:45:29', '1X40', 0, NULL),
(1474, 1466, 'THC, ', '2025-12-16', 'PELAYARAN', 13219000, 'BP. IRAWAN', 'JAKARTA', 'BATAM', 'DOOR TO DOOR', 'FURNITURE', 1, 'TRUK', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:48:11', NULL, 0, 0, 'Denikakap - 2025-12-16 07:48:11', '1X40', 0, NULL),
(1475, 1467, 'A', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 4500000, 'BP. IRAWAN', 'JAKARTA', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:51:07', NULL, 0, 0, 'Denikakap - 2025-12-16 07:51:07', '1X40', 0, NULL),
(1476, 1467, 'B', '2025-12-16', 'EKA MULTI LOGISTIK', 8800000, 'BP. IRAWAN', 'JAKARTA', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:51:59', NULL, 0, 0, 'Denikakap - 2025-12-16 07:51:59', '1X40', 0, NULL),
(1477, 1467, 'THC, ', '2025-12-16', 'PELAYARAN', 12919000, 'BP. IRAWAN', 'JAKARTA', 'MAKASSAR', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:52:48', NULL, 0, 12499000, 'Denikakap - 2025-12-16 07:52:48', '1X40', 0, NULL),
(1478, 1468, 'A', '2025-12-16', 'CV AGHNIA PERKASA ABADI', 4400000, 'BP. SUDRAJAT', 'JAKARTA', 'TUAL', 'DOOR TO DOOR', 'PIPA', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:56:03', '2025-12-26', 34900000, 700000, 'Denikakap - 2025-12-16 07:56:03', '1X20', 0, NULL),
(1479, 1468, 'B', '2025-12-16', 'AGEN TUAL', 7000000, 'BP. SUDRAJAT', 'JAKARTA', 'TUAL', 'DOOR TO DOOR', 'PIPA', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:56:57', NULL, 0, 7000000, 'Denikakap - 2025-12-16 07:56:57', '1X20', 0, NULL),
(1480, 1468, 'THC, ', '2025-12-16', 'PELAYARAN', 20664000, 'BP. SUDRAJAT', 'JAKARTA', 'TUAL', 'DOOR TO DOOR', 'PIPA', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 07:57:59', NULL, 0, 0, 'Denikakap - 2025-12-16 07:57:59', '1X20', 0, NULL),
(1481, 1469, 'THC, ', '2025-12-16', 'PELAYARAN', 6870000, 'BP. NOVA', 'SURABAYA', 'SAMARINDA', 'PORT TO PORT', 'PUPUK', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 08:02:13', '2025-12-16', 16800000, 6830000, 'Denikakap - 2025-12-16 08:02:13', '1X20', 0, NULL),
(1482, 1469, 'B', '2025-12-16', 'JAKARTA', 300000, 'BP. NOVA', 'SURABAYA', 'SAMARINDA', 'PORT TO PORT', 'PUPUK', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-16 08:03:47', NULL, 0, 0, 'Denikakap - 2025-12-16 08:03:47', '1X20', 0, NULL),
(1483, 1470, 'A', '2025-12-18', 'CV BORNEO YASSA', 4500000, 'BP. TOMMY', 'JAKARTA', 'BALIKPAPAN', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:15:53', '2025-12-29', 31500000, 4500000, 'Denikakap - 2025-12-18 07:15:53', '1X20', 0, NULL),
(1484, 1470, 'B', '2025-12-18', 'PERWAKILAN JAKARTA', 500000, 'BP. TOMY', 'JAKARTA', 'BALIKPAPAN', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:17:17', NULL, 0, 0, 'Denikakap - 2025-12-18 07:17:17', '1X20', 0, NULL),
(1485, 1470, 'THC, ', '2025-12-18', 'PELAYARAN', 9052500, 'BP. TOMY', 'JAKARTA', 'BALIKPAPAN', 'DOOR TO DOOR', 'FURNITURE', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:18:21', NULL, 0, 8852500, 'Denikakap - 2025-12-18 07:18:21', '1X20', 0, NULL),
(1486, 1471, 'A', '2025-12-18', 'CV AGHNIA PERKASA ABADI', 4500000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:27:23', '2025-12-19', 72000000, 0, 'Denikakap - 2025-12-18 07:27:23', '12X20', 0, NULL),
(1487, 1471, 'B', '2025-12-18', 'JALA MAS', 26690400, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:28:17', NULL, 0, 0, 'Denikakap - 2025-12-18 07:28:17', '12X20', 0, NULL),
(1488, 1471, 'THC, ', '2025-12-18', 'PELAYARAN', 13760000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-18 07:29:21', NULL, 0, 13710000, 'Denikakap - 2025-12-18 07:29:21', '12X20', 0, NULL),
(1489, 1472, '001/t', '2025-12-22', 'tes', 1000000, 'tes', 'tes', 'tes', 'tes', 'tes', 100, 'tes', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', '2025-12-22', 0, 100, '', '', 13, '2025-12-22 08:10:57', NULL, 0, 0, 'yasky - 2025-12-22 08:10:57', 'ton', 1, '2025-12-22'),
(1490, 1473, '001/t', '2025-12-22', 'tes', 1000000, 'tes', 'tes', 'tes', 'tes', 'tes', 100, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 100, '', '', 13, '2025-12-22 08:17:05', NULL, 0, 0, 'yasky - 2025-12-22 08:17:05', 'ton', 1, '2025-12-22'),
(1491, 1474, '001/t', '2025-12-22', 'tes', 1000000, 'tes', 'tes', 'tes', 'tes', 'tes', 100, 'tes', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 100, '', '', 13, '2025-12-22 09:31:40', NULL, 0, 0, 'yasky - 2025-12-22 09:31:40', 'ton', 1, '2025-12-22'),
(1492, 1475, 'A', '2025-12-23', 'CV AGHNIA PERKASA ABADI', 55100000, 'PT PREMIER DASCO TRADASERVICES', 'JAKARTA', 'SAMARINDA', 'DOOR TO DOOR', 'CHEMICAL', 3, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 37, '2025-12-23 03:52:03', NULL, 0, 20000000, 'Denikakap - 2025-12-23 03:52:03', '3X20', 0, NULL),
(1493, 1475, 'THC, ', '2025-12-23', 'PELAYARAN', 25417500, 'PT PREMIER DASCO TRADASERVICES', 'JAKARA', 'SAMARINDA', 'DOOR TO DOOR', 'CHEMICAL', 3, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 3, '', '', 37, '2025-12-23 03:54:07', NULL, 0, 18220000, 'Denikakap - 2025-12-23 03:54:07', '3X20', 0, NULL),
(1494, 1476, 'A', '2025-12-23', 'CV AGHNIA PERKASA ABADI', 7200000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 18, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 18, '', '', 37, '2025-12-23 03:56:54', NULL, 0, 0, 'Denikakap - 2025-12-23 03:56:54', '18X20', 0, NULL),
(1495, 1476, 'B', '2025-12-23', 'JALA MAS', 40035600, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 18, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 18, '', '', 37, '2025-12-23 06:00:12', NULL, 0, 0, 'Denikakap - 2025-12-23 06:00:12', '18X20', 0, NULL),
(1496, 1476, 'THC, ', '2025-12-23', 'PELAYARAN', 20510000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 18, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 18, '', '', 37, '2025-12-23 06:01:09', NULL, 0, 20460000, 'Denikakap - 2025-12-23 06:01:09', '18X20', 0, NULL),
(1497, 1477, 'A', '2025-12-24', 'BAPAK INDRA', 10000000, 'PT PREMIER DASCO TRADASERVICES', 'JAKARTA', 'PKT BONTANG', 'LCL', 'CHEMICAL', 1, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1, '', '', 37, '2025-12-26 11:55:47', NULL, 0, 10000000, 'Denikakap - 2025-12-26 11:55:47', '-', 0, NULL),
(1498, 1478, 'A', '2025-12-24', 'JALA MAS', 15569400, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 7, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 7, '', '', 37, '2025-12-26 11:58:34', NULL, 0, 0, 'Denikakap - 2025-12-26 11:58:34', '7X20', 0, NULL),
(1499, 1478, 'THC, ', '2025-12-24', 'PELAYARAN', 8135000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 7, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 7, '', '', 37, '2025-12-26 11:59:40', NULL, 0, 8085000, 'Denikakap - 2025-12-26 11:59:40', '7X20', 0, NULL),
(1500, 1479, 'A', '2025-12-29', 'JALA MAS', 8896800, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 4, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 37, '2025-12-29 06:04:10', NULL, 0, 0, 'Denikakap - 2025-12-29 06:04:10', '4X20', 0, NULL),
(1501, 1479, 'THC, ', '2025-12-29', 'PELAYARAN', 4696500, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 4, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 4, '', '', 37, '2025-12-29 06:05:47', NULL, 0, 0, 'Denikakap - 2025-12-29 06:05:47', '4X20', 0, NULL),
(1502, 1480, 'A', '2025-12-29', 'JALA MAS', 4448400, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 2, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 37, '2025-12-30 02:13:02', NULL, 0, 0, 'Denikakap - 2025-12-30 02:13:02', '2X20', 0, NULL),
(1503, 1480, 'THC, ', '2025-12-29', 'PELAYARAN', 1810000, 'PT KEMINDO CAO', 'PONTIANAK', 'PT BORNEO ALUMINA INDONESIA', 'ONLY DOORING', 'CHEMICAL', 2, '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 0, 2, '', '', 37, '2025-12-30 02:13:54', NULL, 0, 0, 'Denikakap - 2025-12-30 02:13:54', '2X20', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
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
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(13, 'yasky', 'yasky@glm.com', '$2y$04$nWGB.4xQ3GR7ojaRPwQ.Yu66uQCcvjB4J8GRPNQ5MjfSseVwNhSWy', 'IMG-20250129-WA0018.jpg', 6, 'y'),
(36, 'Andra Hafiz', 'andrahafiz56@gmail.com', '$2y$04$mTIAaEWpmeI7T0X1cPHONemTtAHZJdn8JSTZBG6gkElXWyNoXSj6O', '', 6, 'y'),
(37, 'Denikakap', 'gtdeni09@gmail.com', '$2y$04$uSV7WbyQE1n1pYryYf75d.KTUQYorDu2zTr3djqvx3qp4diKmfX9m', 'TranscodedWallpaper (15)', 6, 'y'),
(38, 'Yusup Saigon', 'muhammad071291@gmail.com', '$2y$04$qEJSAYkk0DNXfirr5r9a1ek.E4Qn21/g7grZneWQmhhljYXiP9TZy', '', 2, 'y'),
(39, 'Fitri Gusmiyati', 'fitrigusmiyati16@gmail.com', '$2y$04$1Kvmt7QifHGnZ28g5q7V7uESdP.nbRW20G/zerlBDOXZGxY3euXkC', '', 4, 'y'),
(40, 'Ahmad Fauzan', 'ahmadfauzanirawan@gmail.com', '$2y$04$tHhOPJTB3MYGtQwZoMRMIe64lGt6HHgDJMKCZFB70/II5lpwSNQEW', '', 1, 'y'),
(41, 'muhammad noor hasmi', 'muhammadnoor050796@gmail.com', '$2y$04$3Ay2ui.UAJhDv9tTDUdRsuG2jLtaeaZQCceofbRjXAM5lvYxRABB.', '', 1, 'y'),
(42, 'Dian Saputri', 'Financeglmbjm@gmail.com', '$2y$04$v2vkBtKKv9OIQXVpQVGJd.3CSFB5/eReCkqyyE8DHhrYKy76DREMm', '', 5, 'y'),
(43, 'lutfi anshari', 'lutfianshari151001@gmail.com', '$2y$04$e/IE4/.bEhp5LIIRO/OP5OjDSFyqRNdsbx/kYVvnscaxmaziyqrr6', '', 1, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Operasional'),
(2, 'VIC Operasional'),
(4, 'Kasir'),
(5, 'Piutang'),
(6, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(150) NOT NULL,
  `hapus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_vendor`, `nama_vendor`, `hapus`) VALUES
(105, 'Tes', 1),
(106, 'CV. Patio Livity', 0),
(107, 'PT KEMINDO CAO', 0),
(108, 'BP. IRAWAN', 0),
(109, 'BP. SUDRAJAT', 0),
(110, 'BP. NOVA', 0),
(111, 'BP. TOMY', 0),
(112, 'PT PREMIER DASCO  TRADASERVICES', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_vic`
--

CREATE TABLE `tbl_vic` (
  `id_vic` int(11) NOT NULL,
  `nama_vic` varchar(70) NOT NULL,
  `hapus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_vic`
--

INSERT INTO `tbl_vic` (`id_vic`, `nama_vic`, `hapus`) VALUES
(10, 'Ozan Ganteng', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_waiting_banjarmasin`
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
  `jumlah_permintaan` bigint(20) NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_waiting_banjarmasin`
--

INSERT INTO `tbl_waiting_banjarmasin` (`id_waiting_banjarmasin`, `id_sub_banjarmasin`, `no_invoice`, `tgl_permintaan`, `deskripsi`, `tgl_persetujuan_1`, `tgl_persetujuan_2`, `tgl_pembatalan_1`, `tgl_pembatalan_2`, `acc`, `batal`, `jumlah_permintaan`, `hapus`, `tanggal_hapus`) VALUES
(619, 963, '1112', '2025-12-07', 'Okh', '2025-12-07', '2025-12-07', NULL, NULL, 2, 0, 2000000, 1, '2025-12-07'),
(620, 964, '001', '2025-12-05', 'Biaya Trucking Bandung - Makasar', NULL, NULL, NULL, NULL, 0, 0, 6000000, 1, '2025-12-08'),
(621, 968, '001', '2025-12-12', 'biaya DO dan cleaning', '2025-12-16', '2025-12-16', NULL, NULL, 2, 0, 350000, 0, NULL),
(622, 968, '002', '2025-12-13', 'biaya job naik kemindo', '2025-12-16', '2025-12-16', NULL, NULL, 2, 0, 2641612, 0, NULL),
(623, 968, '003', '2025-12-13', 'biaya job turun kemindo', '2025-12-16', '2025-12-16', NULL, NULL, 2, 0, 772500, 0, NULL),
(624, 967, '002-A', '2025-12-16', 'Biaya Forklip dan opt (Ops Rasid)', '2025-12-16', '2025-12-16', NULL, NULL, 2, 0, 2100000, 0, NULL),
(625, 969, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 10000000, 1, '2025-12-22'),
(626, 970, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 1000000, 1, '2025-12-22'),
(627, 968, '004', '2025-12-29', 'biaya DO kemindo', NULL, NULL, NULL, NULL, 0, 0, 350000, 1, '2025-12-29'),
(628, 974, '004', '2025-12-29', 'biaya DO kemindo', NULL, NULL, NULL, NULL, 0, 0, 350000, 0, NULL),
(629, 974, '004', '2025-12-29', 'biaya job turun kemindo', NULL, NULL, NULL, NULL, 0, 0, 901807, 0, NULL),
(630, 974, '004', '2025-12-29', 'biaya job naik kemindo', NULL, NULL, NULL, NULL, 0, 0, 2641612, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_waiting_jakarta`
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
  `jumlah_permintaan` bigint(20) NOT NULL,
  `hapus` int(11) NOT NULL,
  `tanggal_hapus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_waiting_jakarta`
--

INSERT INTO `tbl_waiting_jakarta` (`id_waiting_jakarta`, `id_sub_jakarta`, `no_invoice`, `tgl_permintaan`, `deskripsi`, `tgl_persetujuan_1`, `tgl_persetujuan_2`, `tgl_pembatalan_1`, `tgl_pembatalan_2`, `acc`, `batal`, `jumlah_permintaan`, `hapus`, `tanggal_hapus`) VALUES
(292, 1469, '001-A-1/12/2025', '2025-12-05', 'Pembayaran invoice CV Agnia', '2025-12-05', '2025-12-05', NULL, NULL, 2, 0, 6000000, 0, NULL),
(293, 1471, '002-B-1/12/2025', '2025-12-06', 'Pembayaran Invoice OF BL dan THC', '2025-12-05', '2025-12-05', NULL, NULL, 2, 0, 6393200, 0, NULL),
(294, 1481, '006-1-THC', '2025-12-16', 'Pembayaran tebus BL', '2025-12-16', '2025-12-16', NULL, NULL, 2, 0, 6830000, 0, NULL),
(295, 1488, '008-A', '2025-12-18', 'Tebus BL Eden Mas52/25', '2025-12-18', '2025-12-18', NULL, NULL, 2, 0, 13710000, 0, NULL),
(296, 1485, '007/A', '2025-12-18', 'Tebus BL Icon Efesus V. 116/25', '2025-12-18', '2025-12-18', NULL, NULL, 2, 0, 8852500, 0, NULL),
(297, 1478, '005-A/1-FE', '2025-12-21', 'Pembayaran ibu tri', '2025-12-23', '2025-12-23', NULL, NULL, 2, 0, 700000, 0, NULL),
(298, 1487, '008-B THC/BL', '2025-12-22', 'pembayaran BL UMBUL MAS', NULL, NULL, NULL, NULL, 0, 0, 20460000, 1, '2025-12-22'),
(299, 1487, '008-B THC/BL', '2025-12-22', 'pembayaran BL UMBUL MAS', NULL, NULL, NULL, NULL, 0, 0, 20460000, 1, '2025-12-22'),
(300, 1489, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 1000000, 1, '2025-12-22'),
(301, 1490, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 1000000, 1, '2025-12-22'),
(302, 1491, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 1000000, 1, '2025-12-22'),
(303, 1491, '001/tes', '2025-12-22', '12', NULL, NULL, NULL, NULL, 0, 0, 1000000, 1, '2025-12-22'),
(304, 1493, '009-A-BL Temas', '2025-12-23', 'Pembayaran Kapal Umbul Mas 77/25', NULL, NULL, NULL, NULL, 0, 0, 20460000, 1, '2025-12-23'),
(305, 1496, '010-BL-Temas', '2025-12-23', 'THC Umbul Mas 77/25', '2025-12-23', '2025-12-23', NULL, NULL, 2, 0, 20460000, 0, NULL),
(306, 1492, '009-A-Trucking SMD', '2025-12-20', 'Trucking Smd Pa unding', '2025-12-23', '2025-12-23', NULL, NULL, 2, 0, 20000000, 0, NULL),
(307, 1483, '007-A', '2025-12-23', 'Handling Icon Efesus 17', '2025-12-23', '2025-12-23', NULL, NULL, 2, 0, 4500000, 0, NULL),
(308, 1470, 'LN2025120598', '2025-12-23', 'kM. CTP HONOUR 34W25', '2025-12-23', '2025-12-23', NULL, NULL, 2, 0, 3000000, 0, NULL),
(309, 1477, '-', '2025-12-24', 'pembayaran Bl Sinar Pajajaran Jkt - Makassar', '2025-12-24', '2025-12-23', NULL, NULL, 2, 0, 12499000, 0, NULL),
(310, 1497, '011-Inv Indra', '2025-12-25', 'Dp 1', '2025-12-25', '2025-12-25', NULL, NULL, 2, 0, 5000000, 0, NULL),
(311, 1497, '011-Inv Indra Pel', '2025-12-24', 'Pelunasan', '2025-12-24', '2025-12-24', NULL, NULL, 2, 0, 5000000, 0, NULL),
(312, 1493, '-', '2025-12-24', 'PEMBAYARAN BL JKT - SMD', '2025-12-24', '2025-12-24', NULL, NULL, 2, 0, 18220000, 0, NULL),
(313, 1479, '005-B', '2025-12-29', 'Inv 005B', '2025-12-29', '2025-12-29', NULL, NULL, 2, 0, 7000000, 0, NULL),
(314, 1499, '-', '2025-12-26', 'PEMBAYARAN BL KEMINDO', '2025-12-26', '2025-12-26', NULL, NULL, 2, 0, 8085000, 0, NULL),
(315, 1493, '-', '2025-12-29', 'biaya THC icon efesus 117', NULL, NULL, NULL, NULL, 0, 0, 7207500, 0, NULL),
(316, 1492, '-', '2025-12-29', 'Dp 2 Trucking pa unding', NULL, NULL, NULL, NULL, 0, 0, 20950000, 0, NULL),
(317, 1501, '-', '2025-12-27', 'Do document', NULL, NULL, NULL, NULL, 0, 0, 200000, 0, NULL),
(318, 1501, '-', '2025-12-27', 'freight dan cleaning', NULL, NULL, NULL, NULL, 0, 0, 3220000, 0, NULL),
(319, 1501, '-', '2025-12-27', 'DO', NULL, NULL, NULL, NULL, 0, 0, 390720, 0, NULL),
(320, 1501, '-', '2025-12-27', 'DO', NULL, NULL, NULL, NULL, 0, 0, 885780, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_debit_banjarmasin`
--
ALTER TABLE `tbl_debit_banjarmasin`
  ADD PRIMARY KEY (`id_debit_banjarmasin`);

--
-- Indeks untuk tabel `tbl_debit_jakarta`
--
ALTER TABLE `tbl_debit_jakarta`
  ADD PRIMARY KEY (`id_debit_jakarta`);

--
-- Indeks untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_payment_banjarmasin`
--
ALTER TABLE `tbl_payment_banjarmasin`
  ADD PRIMARY KEY (`id_payment_banjarmasin`);

--
-- Indeks untuk tabel `tbl_payment_jakarta`
--
ALTER TABLE `tbl_payment_jakarta`
  ADD PRIMARY KEY (`id_payment_jakarta`);

--
-- Indeks untuk tabel `tbl_pekerjaan_banjarmasin`
--
ALTER TABLE `tbl_pekerjaan_banjarmasin`
  ADD PRIMARY KEY (`id_pekerjaan_banjarmasin`);

--
-- Indeks untuk tabel `tbl_pekerjaan_jakarta`
--
ALTER TABLE `tbl_pekerjaan_jakarta`
  ADD PRIMARY KEY (`id_pekerjaan_jakarta`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_spk_banjarmasin`
--
ALTER TABLE `tbl_spk_banjarmasin`
  ADD PRIMARY KEY (`id_spk_banjarmasin`);

--
-- Indeks untuk tabel `tbl_spk_jakarta`
--
ALTER TABLE `tbl_spk_jakarta`
  ADD PRIMARY KEY (`id_spk_jakarta`);

--
-- Indeks untuk tabel `tbl_sub_banjarmasin`
--
ALTER TABLE `tbl_sub_banjarmasin`
  ADD PRIMARY KEY (`id_sub_banjarmasin`);

--
-- Indeks untuk tabel `tbl_sub_jakarta`
--
ALTER TABLE `tbl_sub_jakarta`
  ADD PRIMARY KEY (`id_sub_jakarta`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- Indeks untuk tabel `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Indeks untuk tabel `tbl_vic`
--
ALTER TABLE `tbl_vic`
  ADD PRIMARY KEY (`id_vic`);

--
-- Indeks untuk tabel `tbl_waiting_banjarmasin`
--
ALTER TABLE `tbl_waiting_banjarmasin`
  ADD PRIMARY KEY (`id_waiting_banjarmasin`);

--
-- Indeks untuk tabel `tbl_waiting_jakarta`
--
ALTER TABLE `tbl_waiting_jakarta`
  ADD PRIMARY KEY (`id_waiting_jakarta`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_debit_banjarmasin`
--
ALTER TABLE `tbl_debit_banjarmasin`
  MODIFY `id_debit_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT untuk tabel `tbl_debit_jakarta`
--
ALTER TABLE `tbl_debit_jakarta`
  MODIFY `id_debit_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_banjarmasin`
--
ALTER TABLE `tbl_payment_banjarmasin`
  MODIFY `id_payment_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment_jakarta`
--
ALTER TABLE `tbl_payment_jakarta`
  MODIFY `id_payment_jakarta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pekerjaan_banjarmasin`
--
ALTER TABLE `tbl_pekerjaan_banjarmasin`
  MODIFY `id_pekerjaan_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT untuk tabel `tbl_pekerjaan_jakarta`
--
ALTER TABLE `tbl_pekerjaan_jakarta`
  MODIFY `id_pekerjaan_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_spk_banjarmasin`
--
ALTER TABLE `tbl_spk_banjarmasin`
  MODIFY `id_spk_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT untuk tabel `tbl_spk_jakarta`
--
ALTER TABLE `tbl_spk_jakarta`
  MODIFY `id_spk_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1481;

--
-- AUTO_INCREMENT untuk tabel `tbl_sub_banjarmasin`
--
ALTER TABLE `tbl_sub_banjarmasin`
  MODIFY `id_sub_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975;

--
-- AUTO_INCREMENT untuk tabel `tbl_sub_jakarta`
--
ALTER TABLE `tbl_sub_jakarta`
  MODIFY `id_sub_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1504;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `tbl_vic`
--
ALTER TABLE `tbl_vic`
  MODIFY `id_vic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_waiting_banjarmasin`
--
ALTER TABLE `tbl_waiting_banjarmasin`
  MODIFY `id_waiting_banjarmasin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT untuk tabel `tbl_waiting_jakarta`
--
ALTER TABLE `tbl_waiting_jakarta`
  MODIFY `id_waiting_jakarta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
