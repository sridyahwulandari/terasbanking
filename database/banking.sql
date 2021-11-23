-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 05:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_karyawan`, `tanggal`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
(1, 1, '2021-11-17', '09:35:05', '15:35:05', 'izin');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `nama_tabel` varchar(100) NOT NULL,
  `id_tabel` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` int(11) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `jabatan`, `gaji`) VALUES
(1, 'admin', '2000000'),
(2, 'karyawan', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `id_gaji` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nik`, `nama_lengkap`, `no_telpon`, `email`, `alamat`, `id_gaji`, `status`) VALUES
(1, '1903059', 'Sri Dyah Wulandari', '08976544321', 'sridyhwd@gmail.com', 'Semarang', 1, '0'),
(2, '1903060', 'Sri Dyah', '0897654321', 'sridyhwd@gmail.com', 'Indramayu', 1, '2'),
(3, '1234567890', 'Sri Dyah Wd', '08987654321', 'sridyhwd@gmail.com', 'Semarang', 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 0, 'Login', 1619370302.5625, 'ADMINISTRATOR', 'Login'),
(2, 4, 'yii\\db\\Command::execute', 1619370302.5626, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1619370302.5625, \'ADMINISTRATOR\', \'Login\')'),
(3, 0, 'Login', 1619370336.6993, 'ADMINISTRATOR', 'Login'),
(4, 4, 'yii\\db\\Command::execute', 1619370336.6994, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1619370336.6993, \'ADMINISTRATOR\', \'Login\')'),
(5, 4, 'yii\\db\\Command::execute', 1619710951.321, 'ADMINISTRATOR', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Jobdesk\', \'jobdesk\', 0, \'face_retouching_natural\', 0, 3)'),
(6, 4, 'yii\\db\\Command::execute', 1619711577.1123, 'ADMINISTRATOR', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'DATA FORM 1\', \'data-form\', 0, \'list\', 0, 3)'),
(7, 4, 'yii\\db\\Command::execute', 1619711592.0044, 'ADMINISTRATOR', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'8\''),
(8, 4, 'yii\\db\\Command::execute', 1619711592.0156, 'ADMINISTRATOR', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 8)'),
(9, 4, 'yii\\db\\Command::execute', 1619711602.6047, 'ADMINISTRATOR', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'8\''),
(10, 4, 'yii\\db\\Command::execute', 1619711602.6123, 'ADMINISTRATOR', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 8)'),
(11, 0, 'Login', 1634278251.766, 'ADMINISTRATOR', 'Login'),
(12, 4, 'yii\\db\\Command::execute', 1634278251.7661, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278251.766, \'ADMINISTRATOR\', \'Login\')'),
(13, 0, 'Login', 1634278276.1014, 'ADMINISTRATOR', 'Login'),
(14, 4, 'yii\\db\\Command::execute', 1634278276.1015, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278276.1014, \'ADMINISTRATOR\', \'Login\')'),
(15, 0, 'Login', 1634278343.6618, 'DEVELOPER', 'Login'),
(16, 4, 'yii\\db\\Command::execute', 1634278343.662, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278343.6618, \'DEVELOPER\', \'Login\')'),
(17, 0, 'Login', 1634278782.0386, 'DEVELOPER', 'Login'),
(18, 4, 'yii\\db\\Command::execute', 1634278782.0388, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278782.0386, \'DEVELOPER\', \'Login\')'),
(19, 4, 'yii\\db\\Command::execute', 1634278797.4186, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=8'),
(20, 4, 'yii\\db\\Command::execute', 1634278821.7153, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'2\''),
(21, 4, 'yii\\db\\Command::execute', 1634278821.7221, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 2)'),
(22, 4, 'yii\\db\\Command::execute', 1634278821.7248, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 2)'),
(23, 4, 'yii\\db\\Command::execute', 1634278858.2147, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'4\''),
(24, 4, 'yii\\db\\Command::execute', 1634278858.2224, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 4)'),
(25, 4, 'yii\\db\\Command::execute', 1634278858.2246, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 4)'),
(26, 4, 'yii\\db\\Command::execute', 1634278905.3302, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'6\''),
(27, 4, 'yii\\db\\Command::execute', 1634278905.3374, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 6)'),
(28, 4, 'yii\\db\\Command::execute', 1634278905.3401, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 6)'),
(29, 0, 'Login', 1634278914.1305, 'ADMINISTRATOR', 'Login'),
(30, 4, 'yii\\db\\Command::execute', 1634278914.1307, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278914.1305, \'ADMINISTRATOR\', \'Login\')'),
(31, 0, 'Login', 1634278968, 'ADMINISTRATOR', 'Login'),
(32, 4, 'yii\\db\\Command::execute', 1634278968.0003, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634278968, \'ADMINISTRATOR\', \'Login\')'),
(33, 0, 'Login', 1634279001.0702, 'DEVELOPER', 'Login'),
(34, 4, 'yii\\db\\Command::execute', 1634279001.0704, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634279001.0702, \'DEVELOPER\', \'Login\')'),
(35, 4, 'yii\\db\\Command::execute', 1634279014.5181, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=1, `status`=1 WHERE `id_menu`=1'),
(36, 4, 'yii\\db\\Command::execute', 1634279700.3882, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Pelanggan\', `url`=\'tbl-pelanggan\', `id_parent`=2, `no_urut`=6, `status`=0 WHERE `id_menu`=6'),
(37, 4, 'yii\\db\\Command::execute', 1634279727.7983, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Lapangan\', `url`=\'tbl-lapangan\', `id_parent`=2, `no_urut`=7, `status`=0 WHERE `id_menu`=7'),
(38, 4, 'yii\\db\\Command::execute', 1634279737.9841, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=2, `icon`=\'database\', `status`=0 WHERE `id_menu`=2'),
(39, 4, 'yii\\db\\Command::execute', 1634279746.7015, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=4, `icon`=\'user\', `status`=0 WHERE `id_menu`=4'),
(40, 4, 'yii\\db\\Command::execute', 1634279758.3189, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=7, `icon`=\'user\', `status`=0 WHERE `id_menu`=7'),
(41, 4, 'yii\\db\\Command::execute', 1634279766.3822, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=7, `status`=0 WHERE `id_menu`=7'),
(42, 4, 'yii\\db\\Command::execute', 1634279774.514, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=6, `icon`=\'user\', `status`=0 WHERE `id_menu`=6'),
(43, 4, 'yii\\db\\Command::execute', 1634279785.8229, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=7, `icon`=\'list\', `status`=0 WHERE `id_menu`=7'),
(44, 4, 'yii\\db\\Command::execute', 1634279794.4874, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'7\''),
(45, 4, 'yii\\db\\Command::execute', 1634279794.493, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 7)'),
(46, 4, 'yii\\db\\Command::execute', 1634279794.4961, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 7)'),
(47, 4, 'yii\\db\\Command::execute', 1634279825.6326, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'ORDER LAPANGAN\', \'#\', 0, \'database\', 0, 3)'),
(48, 4, 'yii\\db\\Command::execute', 1634279828.2863, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'9\''),
(49, 4, 'yii\\db\\Command::execute', 1634279828.2915, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 9)'),
(50, 4, 'yii\\db\\Command::execute', 1634279828.2945, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 9)'),
(51, 4, 'yii\\db\\Command::execute', 1634279877.4797, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Booking / Order\', \'tbl-order\', 9, \'list\', 0, 1)'),
(52, 4, 'yii\\db\\Command::execute', 1634279880.0613, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'10\''),
(53, 4, 'yii\\db\\Command::execute', 1634279880.0673, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 10)'),
(54, 4, 'yii\\db\\Command::execute', 1634279880.0709, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 10)'),
(55, 4, 'yii\\db\\Command::execute', 1634280189.6145, 'DEVELOPER', 'INSERT INTO `tbl_pelanggan` (`nama`, `no_hp`, `alamat`, `email`, `status`) VALUES (\'rendy\', \'0789789756\', \'asdasda\', \'rendy@gmail\', \'aktif\')'),
(56, 4, 'yii\\db\\Command::execute', 1634280999.8376, 'DEVELOPER', 'INSERT INTO `tbl_lapangan` (`kode_lapangan`, `nama_lapangan`, `tempat`, `harga_sewa`, `status`) VALUES (\'LAP-001\', \'TENDANG JEGAL\', \'SEMARANG\', 50000, \'aktif\')'),
(57, 4, 'yii\\db\\Command::execute', 1634282255.3111, 'DEVELOPER', 'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`, `status`) VALUES (1, \'LAPANGAN 1\', \'free\')'),
(58, 4, 'yii\\db\\Command::execute', 1634282255.3255, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1634282255.3111, \'DEVELOPER\', \'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`, `status`) VALUES (1, \\\'LAPANGAN 1\\\', \\\'free\\\')\')'),
(59, 4, 'yii\\db\\Command::execute', 1634282275.0994, 'DEVELOPER', 'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`, `status`) VALUES (1, \'LAPANGAN 1\', \'free\')'),
(60, 4, 'yii\\db\\Command::execute', 1634283130.4071, 'DEVELOPER', 'UPDATE `tbl_lapangan_detail` SET `nama_detail`=\'LAPANGAN 2\' WHERE `id_detail`=2'),
(61, 4, 'yii\\db\\Command::execute', 1634283352.2965, 'DEVELOPER', 'DELETE FROM `tbl_lapangan_detail` WHERE `id_detail`=2'),
(62, 0, 'Login', 1634304191.4918, 'DEVELOPER', 'Login'),
(63, 4, 'yii\\db\\Command::execute', 1634304191.4919, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634304191.4918, \'DEVELOPER\', \'Login\')'),
(64, 0, 'Login', 1634357059.878, 'DEVELOPER', 'Login'),
(65, 4, 'yii\\db\\Command::execute', 1634357059.8782, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634357059.878, \'DEVELOPER\', \'Login\')'),
(66, 4, 'yii\\db\\Command::execute', 1634362578.7207, 'DEVELOPER', 'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`, `status`) VALUES (1, \'LAPANGAN 2\', \'free\')'),
(67, 4, 'yii\\db\\Command::execute', 1634362597.7064, 'DEVELOPER', 'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`, `status`) VALUES (1, \'LAPANGAN 3\', \'free\')'),
(68, 0, 'Login', 1634437312.2208, 'DEVELOPER', 'Login'),
(69, 4, 'yii\\db\\Command::execute', 1634437312.2209, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634437312.2208, \'DEVELOPER\', \'Login\')'),
(70, 4, 'yii\\db\\Command::execute', 1634437872.486, 'DEVELOPER', 'INSERT INTO `tbl_lapangan_detail` (`id_lapangan`, `nama_detail`) VALUES (3, \'LAPANGAN A\')'),
(71, 4, 'yii\\db\\Command::execute', 1634437966.9178, 'DEVELOPER', 'UPDATE `tbl_order` SET `total_bayar`=100000 WHERE `id`=2'),
(72, 4, 'yii\\db\\Command::execute', 1634438017.5562, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'EVENT KEJUARAAN\', \'#\', 0, \'database\', 0, 4)'),
(73, 4, 'yii\\db\\Command::execute', 1634438020.5055, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'11\''),
(74, 4, 'yii\\db\\Command::execute', 1634438020.5101, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 11)'),
(75, 4, 'yii\\db\\Command::execute', 1634438020.5121, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 11)'),
(76, 4, 'yii\\db\\Command::execute', 1634438049.8707, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Event\', \'event\', 11, \'list\', 0, 1)'),
(77, 4, 'yii\\db\\Command::execute', 1634438053.3754, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'12\''),
(78, 4, 'yii\\db\\Command::execute', 1634438053.3809, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 12)'),
(79, 4, 'yii\\db\\Command::execute', 1634438053.3838, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 12)'),
(80, 4, 'yii\\db\\Command::execute', 1634440170.2778, 'DEVELOPER', 'INSERT INTO `event` (`nama`, `keterangan`, `tanggal_mulai`, `tanggal_selesai`, `biaya_pendaftaran`, `hadiah`, `status`) VALUES (\'EVENTO\', \'KEJUARAN SETAHUN SEKALI\', \'2021-10-13\', \'2021-10-29\', 200000, \'1. PIGAM\\r\\n2. PIALA\\r\\n3. RP. 1.000.000\', \'aktif\')'),
(81, 4, 'yii\\db\\Command::execute', 1634440926.5909, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634440926_error.jpeg\' WHERE `id`=1'),
(82, 4, 'yii\\db\\Command::execute', 1634442930.8219, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634442930_lp1.jpg\' WHERE `id`=1'),
(83, 4, 'yii\\db\\Command::execute', 1634442949.7435, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634442949_lp2.jpg\' WHERE `id`=2'),
(84, 4, 'yii\\db\\Command::execute', 1634442961.5183, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634442961_lp3.jpg\' WHERE `id`=3'),
(85, 4, 'yii\\db\\Command::execute', 1634443025.9988, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634443025_map.png\' WHERE `id`=4'),
(86, 4, 'yii\\db\\Command::execute', 1634443172.9184, 'DEVELOPER', 'UPDATE `tbl_lapangan` SET `foto`=\'1634443172_futsal.jpg\' WHERE `id`=4'),
(87, 0, 'Login', 1634525182.0178, 'DEVELOPER', 'Login'),
(88, 4, 'yii\\db\\Command::execute', 1634525182.0179, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1634525182.0178, \'DEVELOPER\', \'Login\')'),
(89, 4, 'yii\\db\\Command::execute', 1634873501.9541, 'DEVELOPER', 'UPDATE `tbl_pelanggan` SET `member_request`=\'on\' WHERE `id`=4'),
(90, 4, 'yii\\db\\Command::execute', 1634873501.9793, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1634873501.9541, \'DEVELOPER\', \'UPDATE `tbl_pelanggan` SET `member_request`=\\\'on\\\' WHERE `id`=4\')'),
(91, 4, 'yii\\db\\Command::execute', 1634875130.3697, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'LAPORAN\', \'#\', 0, \'file\', 0, 5)'),
(92, 4, 'yii\\db\\Command::execute', 1634875133.8952, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'13\''),
(93, 4, 'yii\\db\\Command::execute', 1634875133.9016, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 13)'),
(94, 4, 'yii\\db\\Command::execute', 1634875133.9049, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 13)'),
(95, 4, 'yii\\db\\Command::execute', 1634875159.3063, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=13'),
(96, 4, 'yii\\db\\Command::execute', 1634875176.564, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=13'),
(97, 4, 'yii\\db\\Command::execute', 1634875191.1335, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=13'),
(98, 4, 'yii\\db\\Command::execute', 1634888718.675, 'DEVELOPER', 'UPDATE `tbl_pelanggan` SET `member_request`=\'on\' WHERE `id`=4'),
(99, 4, 'yii\\db\\Command::execute', 1634892454.6238, 'DEVELOPER', 'INSERT INTO `tbl_order` (`kode`, `time_start`, `time_end`, `tgl_booking`, `jumlah_jam`, `id_detail_lapangan`, `user_id`, `nama`, `telp`, `tgl_order`, `total_bayar`, `status`) VALUES (\'KB-211022-4sTbKXy\', \'12:00\', \'13:00\', \'2021-10-27\', 2, 2, 5, \'RENDY\', \'123456\', \'2021-10-22\', 80000, \'success\')'),
(100, 4, 'yii\\db\\Command::execute', 1637116173.0755, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=13'),
(101, 4, 'yii\\db\\Command::execute', 1637116181.9806, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=11'),
(102, 4, 'yii\\db\\Command::execute', 1637116187.504, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=9'),
(103, 4, 'yii\\db\\Command::execute', 1637116200.1557, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=7'),
(104, 4, 'yii\\db\\Command::execute', 1637116205.2173, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=6'),
(105, 4, 'yii\\db\\Command::execute', 1637116338.4578, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Banking\', \'tbl-banking\', 0, \'fa fa-usd\', 0, 3)'),
(106, 4, 'yii\\db\\Command::execute', 1637116344.4337, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(107, 4, 'yii\\db\\Command::execute', 1637116344.4413, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(108, 4, 'yii\\db\\Command::execute', 1637116344.4461, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 14)'),
(109, 4, 'yii\\db\\Command::execute', 1637116359.4945, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=3, `icon`=\'usd\', `status`=0 WHERE `id_menu`=14'),
(110, 4, 'yii\\db\\Command::execute', 1637116446.7781, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Edit Biaya\', \'edit-biaya\', 14, \'usd\', 0, 1)'),
(111, 4, 'yii\\db\\Command::execute', 1637116451.8235, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'15\''),
(112, 4, 'yii\\db\\Command::execute', 1637116451.8325, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 15)'),
(113, 4, 'yii\\db\\Command::execute', 1637116451.8374, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 15)'),
(114, 4, 'yii\\db\\Command::execute', 1637116484.8134, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan\', \'laporan-banking\', 14, \'file\', 0, 2)'),
(115, 4, 'yii\\db\\Command::execute', 1637116491.3033, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'16\''),
(116, 4, 'yii\\db\\Command::execute', 1637116491.3118, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 16)'),
(117, 4, 'yii\\db\\Command::execute', 1637116491.3167, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 16)'),
(118, 4, 'yii\\db\\Command::execute', 1637116497.0886, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'16\''),
(119, 4, 'yii\\db\\Command::execute', 1637116497.1019, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 16)'),
(120, 4, 'yii\\db\\Command::execute', 1637116497.1059, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 16)'),
(121, 4, 'yii\\db\\Command::execute', 1637116524.1252, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Saldo\', \'saldo-banking\', 14, \'usd\', 0, 3)'),
(122, 4, 'yii\\db\\Command::execute', 1637116543.5241, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Saldo\', \'saldo-banking\', 14, \'usd\', 0, 4)'),
(123, 4, 'yii\\db\\Command::execute', 1637116547.6801, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'18\''),
(124, 4, 'yii\\db\\Command::execute', 1637116547.6877, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 18)'),
(125, 4, 'yii\\db\\Command::execute', 1637116547.6923, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 18)'),
(126, 4, 'yii\\db\\Command::execute', 1637116562.6461, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=17'),
(127, 4, 'yii\\db\\Command::execute', 1637116567.4554, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=18'),
(128, 4, 'yii\\db\\Command::execute', 1637116581.3553, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Saldo\', \'saldo-banking\', 14, \'usd\', 0, 3)'),
(129, 4, 'yii\\db\\Command::execute', 1637116586.3718, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'19\''),
(130, 4, 'yii\\db\\Command::execute', 1637116586.3796, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 19)'),
(131, 4, 'yii\\db\\Command::execute', 1637116586.3875, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 19)'),
(132, 4, 'yii\\db\\Command::execute', 1637116617.4721, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Karyawan\', \'karyawan\', 0, \'users\', 0, 4)'),
(133, 4, 'yii\\db\\Command::execute', 1637116621.5724, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'20\''),
(134, 4, 'yii\\db\\Command::execute', 1637116621.5804, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 20)'),
(135, 4, 'yii\\db\\Command::execute', 1637116621.585, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 20)'),
(136, 4, 'yii\\db\\Command::execute', 1637116684.7773, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Edit Gaji\', \'edit-gaji\', 20, \'pencil-square-o\', 0, 1)'),
(137, 4, 'yii\\db\\Command::execute', 1637116689.8443, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'21\''),
(138, 4, 'yii\\db\\Command::execute', 1637116689.8533, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 21)'),
(139, 4, 'yii\\db\\Command::execute', 1637116689.8583, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 21)'),
(140, 4, 'yii\\db\\Command::execute', 1637116708.1514, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=14, `no_urut`=1, `icon`=\'pencil-square-o\', `status`=0 WHERE `id_menu`=15'),
(141, 4, 'yii\\db\\Command::execute', 1637116808.5755, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Absensi\', \'absensi\', 20, \'calendar-check-o\', 0, 2)'),
(142, 4, 'yii\\db\\Command::execute', 1637116812.7436, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'22\''),
(143, 4, 'yii\\db\\Command::execute', 1637116812.7526, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 22)'),
(144, 4, 'yii\\db\\Command::execute', 1637116812.7577, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 22)'),
(145, 4, 'yii\\db\\Command::execute', 1637116860.784, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Quit\', \'quit\', 0, \'sign-out\', 0, 5)'),
(146, 4, 'yii\\db\\Command::execute', 1637116865.5779, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'23\''),
(147, 4, 'yii\\db\\Command::execute', 1637116865.5865, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 23)'),
(148, 4, 'yii\\db\\Command::execute', 1637116865.5916, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 23)'),
(149, 4, 'yii\\db\\Command::execute', 1637116881.7128, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=5, `icon`=\'signout\', `status`=0 WHERE `id_menu`=23'),
(150, 4, 'yii\\db\\Command::execute', 1637116892.2074, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `icon`=\'sign\', `status`=0 WHERE `id_menu`=23'),
(151, 4, 'yii\\db\\Command::execute', 1637116923.9464, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `icon`=\'external-link\', `status`=0 WHERE `id_menu`=23'),
(152, 4, 'yii\\db\\Command::execute', 1637116937.2358, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `icon`=\'sign\', `status`=0 WHERE `id_menu`=23'),
(153, 4, 'yii\\db\\Command::execute', 1637117055.2724, 'DEVELOPER', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'KARYAWAN\')'),
(154, 4, 'yii\\db\\Command::execute', 1637117143.3369, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'karyawan\', \'202cb962ac59075b964b07152d234b70\', \'KARYAWAN\', \'avatar5.png\')'),
(155, 4, 'yii\\db\\Command::execute', 1637117148.8986, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'6\''),
(156, 4, 'yii\\db\\Command::execute', 1637117148.9076, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 6)'),
(157, 0, 'Login', 1637117206.1008, 'ADMINISTRATOR', 'Login'),
(158, 4, 'yii\\db\\Command::execute', 1637117206.101, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637117206.1008, \'ADMINISTRATOR\', \'Login\')'),
(159, 0, 'Login', 1637117240.3561, 'DEVELOPER', 'Login'),
(160, 4, 'yii\\db\\Command::execute', 1637117240.3564, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637117240.3561, \'DEVELOPER\', \'Login\')'),
(161, 4, 'yii\\db\\Command::execute', 1637117308.8215, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(162, 4, 'yii\\db\\Command::execute', 1637117308.838, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(163, 4, 'yii\\db\\Command::execute', 1637117324.0876, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'23\''),
(164, 4, 'yii\\db\\Command::execute', 1637117324.0985, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 23)'),
(165, 4, 'yii\\db\\Command::execute', 1637117324.1028, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 23)'),
(166, 4, 'yii\\db\\Command::execute', 1637117324.1124, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 23)'),
(167, 4, 'yii\\db\\Command::execute', 1637117353.0233, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'20\''),
(168, 4, 'yii\\db\\Command::execute', 1637117353.0344, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 20)'),
(169, 4, 'yii\\db\\Command::execute', 1637117353.0384, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 20)'),
(170, 4, 'yii\\db\\Command::execute', 1637117360.5565, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'23\''),
(171, 4, 'yii\\db\\Command::execute', 1637117360.5728, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 23)'),
(172, 4, 'yii\\db\\Command::execute', 1637117360.5773, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 23)'),
(173, 4, 'yii\\db\\Command::execute', 1637117360.5828, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 23)'),
(174, 4, 'yii\\db\\Command::execute', 1637117374.8382, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'20\''),
(175, 4, 'yii\\db\\Command::execute', 1637117374.8553, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 20)'),
(176, 4, 'yii\\db\\Command::execute', 1637117374.8604, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 20)'),
(177, 0, 'Login', 1637117408.0388, 'DEVELOPER', 'Login'),
(178, 4, 'yii\\db\\Command::execute', 1637117408.039, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637117408.0388, \'DEVELOPER\', \'Login\')'),
(179, 0, 'Login', 1637117543.2323, 'DEVELOPER', 'Login'),
(180, 4, 'yii\\db\\Command::execute', 1637117543.2326, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637117543.2323, \'DEVELOPER\', \'Login\')'),
(181, 4, 'yii\\db\\Command::execute', 1637117554.0176, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(182, 4, 'yii\\db\\Command::execute', 1637117554.029, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(183, 4, 'yii\\db\\Command::execute', 1637117554.0332, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 14)'),
(184, 4, 'yii\\db\\Command::execute', 1637117731.2655, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transaksi\', \'transaksi\', 0, \'usd\', 0, 6)'),
(185, 4, 'yii\\db\\Command::execute', 1637117739.0219, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'24\''),
(186, 4, 'yii\\db\\Command::execute', 1637117739.0305, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 24)'),
(187, 4, 'yii\\db\\Command::execute', 1637117739.0395, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 24)'),
(188, 4, 'yii\\db\\Command::execute', 1637117798.1666, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transfer\', \'tbl-transfer\', 24, \'usd\', 0, 1)'),
(189, 4, 'yii\\db\\Command::execute', 1637117803.2292, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'25\''),
(190, 4, 'yii\\db\\Command::execute', 1637117803.2375, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 25)'),
(191, 4, 'yii\\db\\Command::execute', 1637117803.2424, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 25)'),
(192, 4, 'yii\\db\\Command::execute', 1637117838.2733, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Tarik Tunai\', \'tbl-tarik-tunai\', 24, \'out\', 0, 2)'),
(193, 4, 'yii\\db\\Command::execute', 1637117844.5825, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'26\''),
(194, 4, 'yii\\db\\Command::execute', 1637117844.5915, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 26)'),
(195, 4, 'yii\\db\\Command::execute', 1637117844.5969, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 26)'),
(196, 4, 'yii\\db\\Command::execute', 1637117879.4818, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=2, `icon`=\'outdent\', `status`=0 WHERE `id_menu`=26'),
(197, 4, 'yii\\db\\Command::execute', 1637117908.663, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Setor Tunai\', \'tbl-setor-tunai\', 24, \'outdent\', 0, 3)'),
(198, 4, 'yii\\db\\Command::execute', 1637117915.3377, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'27\''),
(199, 4, 'yii\\db\\Command::execute', 1637117915.3471, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 27)'),
(200, 4, 'yii\\db\\Command::execute', 1637117915.3546, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 27)'),
(201, 4, 'yii\\db\\Command::execute', 1637117926.5501, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=3, `icon`=\'indent\', `status`=0 WHERE `id_menu`=27'),
(202, 4, 'yii\\db\\Command::execute', 1637117970.3434, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Pembayaran\', \'tbl-pembayaran\', 24, \'credit-card-alt\', 0, 4)'),
(203, 4, 'yii\\db\\Command::execute', 1637117974.3808, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'28\''),
(204, 4, 'yii\\db\\Command::execute', 1637117974.3885, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 28)'),
(205, 4, 'yii\\db\\Command::execute', 1637117974.3937, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 28)'),
(206, 4, 'yii\\db\\Command::execute', 1637117987.0765, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=4, `icon`=\'credit-card\', `status`=0 WHERE `id_menu`=28'),
(207, 4, 'yii\\db\\Command::execute', 1637118053.9312, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'tbl-laporan\', `id_parent`=14, `no_urut`=2, `status`=0 WHERE `id_menu`=16'),
(208, 4, 'yii\\db\\Command::execute', 1637118074.3942, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan\', \'laporan\', 0, \'file\', 0, 7)'),
(209, 4, 'yii\\db\\Command::execute', 1637118078.2112, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'29\''),
(210, 4, 'yii\\db\\Command::execute', 1637118078.2195, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 29)'),
(211, 4, 'yii\\db\\Command::execute', 1637118078.2241, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 29)'),
(212, 4, 'yii\\db\\Command::execute', 1637118132.1462, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Saldo\', \'saldo\', 0, \'money\', 0, 8)'),
(213, 4, 'yii\\db\\Command::execute', 1637118137.3956, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'30\''),
(214, 4, 'yii\\db\\Command::execute', 1637118137.4035, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 30)'),
(215, 4, 'yii\\db\\Command::execute', 1637118137.409, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 30)'),
(216, 4, 'yii\\db\\Command::execute', 1637118307.0027, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=1, `status`=0 WHERE `id_menu`=25'),
(217, 0, 'Login', 1637118330.015, 'ADMINISTRATOR', 'Login'),
(218, 4, 'yii\\db\\Command::execute', 1637118330.0152, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637118330.015, \'ADMINISTRATOR\', \'Login\')'),
(219, 0, 'Login', 1637118355.079, 'KARYAWAN', 'Login'),
(220, 4, 'yii\\db\\Command::execute', 1637118355.0792, 'KARYAWAN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637118355.079, \'KARYAWAN\', \'Login\')'),
(221, 0, 'Login', 1637118380.791, 'DEVELOPER', 'Login'),
(222, 4, 'yii\\db\\Command::execute', 1637118380.7913, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637118380.791, \'DEVELOPER\', \'Login\')'),
(223, 4, 'yii\\db\\Command::execute', 1637118409.7681, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=14'),
(224, 4, 'yii\\db\\Command::execute', 1637118422.9852, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=14'),
(225, 4, 'yii\\db\\Command::execute', 1637118443.996, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=9, `status`=0 WHERE `id_menu`=23'),
(226, 4, 'yii\\db\\Command::execute', 1637118454.8538, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=23'),
(227, 4, 'yii\\db\\Command::execute', 1637118463.2876, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=24'),
(228, 4, 'yii\\db\\Command::execute', 1637118474.8278, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=6, `status`=0 WHERE `id_menu`=29'),
(229, 4, 'yii\\db\\Command::execute', 1637118487.1145, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(230, 4, 'yii\\db\\Command::execute', 1637118509.8198, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=4, `status`=0 WHERE `id_menu`=20'),
(231, 4, 'yii\\db\\Command::execute', 1637118537.4534, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Quit\', \'quit\', 0, \'outdent\', 0, 8)'),
(232, 4, 'yii\\db\\Command::execute', 1637118542.9185, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=8, `status`=0 WHERE `id_menu`=31'),
(233, 4, 'yii\\db\\Command::execute', 1637118558.2371, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'31\''),
(234, 4, 'yii\\db\\Command::execute', 1637118558.245, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 31)'),
(235, 4, 'yii\\db\\Command::execute', 1637118558.2498, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 31)'),
(236, 4, 'yii\\db\\Command::execute', 1637118558.254, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 31)'),
(237, 4, 'yii\\db\\Command::execute', 1637118585.5153, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=8, `icon`=\'sign-in\', `status`=0 WHERE `id_menu`=31'),
(238, 4, 'yii\\db\\Command::execute', 1637118617.3298, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=8, `icon`=\'fa fa-sign-in\', `status`=0 WHERE `id_menu`=31'),
(239, 4, 'yii\\db\\Command::execute', 1637118664.58, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=8, `icon`=\'box-arrow-right\', `status`=0 WHERE `id_menu`=31'),
(240, 4, 'yii\\db\\Command::execute', 1637118740.0077, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=8, `icon`=\'chevron-left\', `status`=0 WHERE `id_menu`=31'),
(241, 0, 'Login', 1637118785.5562, 'ADMINISTRATOR', 'Login'),
(242, 4, 'yii\\db\\Command::execute', 1637118785.5564, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637118785.5562, \'ADMINISTRATOR\', \'Login\')'),
(243, 0, 'Login', 1637120012.5993, 'ADMINISTRATOR', 'Login'),
(244, 4, 'yii\\db\\Command::execute', 1637120012.5996, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637120012.5993, \'ADMINISTRATOR\', \'Login\')'),
(245, 0, 'Login', 1637120120.9099, 'ADMINISTRATOR', 'Login'),
(246, 4, 'yii\\db\\Command::execute', 1637120120.9101, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637120120.9099, \'ADMINISTRATOR\', \'Login\')'),
(247, 0, 'Login', 1637121278.6239, 'ADMINISTRATOR', 'Login'),
(248, 4, 'yii\\db\\Command::execute', 1637121278.624, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637121278.6239, \'ADMINISTRATOR\', \'Login\')'),
(249, 0, 'Login', 1637121395.618, 'DEVELOPER', 'Login'),
(250, 4, 'yii\\db\\Command::execute', 1637121395.6183, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637121395.618, \'DEVELOPER\', \'Login\')'),
(251, 4, 'yii\\db\\Command::execute', 1637121649.8421, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Karyawan\', `url`=\'data-karyawan\', `id_parent`=20, `no_urut`=1, `status`=0 WHERE `id_menu`=21'),
(252, 4, 'yii\\db\\Command::execute', 1637122105.867, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=21'),
(253, 4, 'yii\\db\\Command::execute', 1637122129.2173, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Karyawan\', \'data-karyawan\', 20, \'pencil-square-o\', 0, 3)'),
(254, 4, 'yii\\db\\Command::execute', 1637122138.4971, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=20, `no_urut`=1, `status`=0 WHERE `id_menu`=32'),
(255, 4, 'yii\\db\\Command::execute', 1637122165.9801, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'32\''),
(256, 4, 'yii\\db\\Command::execute', 1637122165.9886, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 32)'),
(257, 4, 'yii\\db\\Command::execute', 1637122166.0053, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 32)'),
(258, 4, 'yii\\db\\Command::execute', 1637122188.9471, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Gaji\', \'gaji\', 20, \'pencil-square-o\', 0, 3)'),
(259, 4, 'yii\\db\\Command::execute', 1637122194.6514, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'33\''),
(260, 4, 'yii\\db\\Command::execute', 1637122194.6591, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 33)'),
(261, 4, 'yii\\db\\Command::execute', 1637122194.6647, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 33)'),
(262, 4, 'yii\\db\\Command::execute', 1637122205.1523, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=20, `no_urut`=2, `status`=0 WHERE `id_menu`=33'),
(263, 4, 'yii\\db\\Command::execute', 1637122223.5924, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=20, `no_urut`=3, `status`=0 WHERE `id_menu`=22'),
(264, 4, 'yii\\db\\Command::execute', 1637122805.8294, 'DEVELOPER', 'INSERT INTO `datakaryawan` (`nik`, `nama`, `jenis_kelamin`, `alamat`, `jabatan`, `gaji`) VALUES (\'1903059\', \'Sri Dyah Wulandari\', \'Perempuan\', \'Semarang\', \'Manajer\', \'10000000\')'),
(265, 4, 'yii\\db\\Command::execute', 1637123183.654, 'DEVELOPER', 'UPDATE `datakaryawan` SET `jenis_kelamin`=\'laki-laki\' WHERE `id_karyawan`=1'),
(266, 4, 'yii\\db\\Command::execute', 1637123827.6944, 'DEVELOPER', 'UPDATE `datakaryawan` SET `status`=0 WHERE `id_karyawan`=1'),
(267, 4, 'yii\\db\\Command::execute', 1637123862.5528, 'DEVELOPER', 'UPDATE `datakaryawan` SET `status`=\'aktif\' WHERE `id_karyawan`=1'),
(268, 4, 'yii\\db\\Command::execute', 1637124251.0297, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'data-gaji\', `id_parent`=20, `no_urut`=2, `status`=0 WHERE `id_menu`=33'),
(269, 4, 'yii\\db\\Command::execute', 1637127645.4182, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Gaji\', `id_parent`=20, `no_urut`=2, `status`=0 WHERE `id_menu`=33'),
(270, 4, 'yii\\db\\Command::execute', 1637129432.0166, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'data-absensi\', `id_parent`=20, `no_urut`=3, `status`=0 WHERE `id_menu`=22'),
(271, 4, 'yii\\db\\Command::execute', 1637130397.6109, 'DEVELOPER', 'INSERT INTO `dataabsensi` (`nama`, `tanggal_masuk`, `jam_masuk`, `jam_keluar`) VALUES (\'Sri Dyah Wulandari\', \'2021-11-01\', \'09:00\', \'16:00\')'),
(272, 4, 'yii\\db\\Command::execute', 1637130733.2008, 'DEVELOPER', 'UPDATE `dataabsensi` SET `keterangan`=\'hadir\' WHERE `id_absensi`=1'),
(273, 0, 'Login', 1637131570.9653, 'DEVELOPER', 'Login'),
(274, 4, 'yii\\db\\Command::execute', 1637131570.9656, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637131570.9653, \'DEVELOPER\', \'Login\')'),
(275, 4, 'yii\\db\\Command::execute', 1637132927.8093, 'DEVELOPER', 'UPDATE `dataabsensi` SET `nama`=\'Sri Dyah Wulandari\' WHERE `id_absensi`=1'),
(276, 4, 'yii\\db\\Command::execute', 1637135097.7259, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=20'),
(277, 4, 'yii\\db\\Command::execute', 1637135120.9572, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Karyawan\', \'karyawan\', 0, \'users\', 0, 9)'),
(278, 4, 'yii\\db\\Command::execute', 1637135128.1066, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'34\''),
(279, 4, 'yii\\db\\Command::execute', 1637135128.1145, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 34)'),
(280, 4, 'yii\\db\\Command::execute', 1637135128.1223, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 34)'),
(281, 4, 'yii\\db\\Command::execute', 1637135147.7276, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=4, `status`=0 WHERE `id_menu`=34'),
(282, 4, 'yii\\db\\Command::execute', 1637135183.7181, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Gaji Karyawan\', \'data-gaji\', 34, \'usd\', 0, 1)'),
(283, 4, 'yii\\db\\Command::execute', 1637135188.572, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'35\''),
(284, 4, 'yii\\db\\Command::execute', 1637135188.5789, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 35)'),
(285, 4, 'yii\\db\\Command::execute', 1637135188.5833, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 35)'),
(286, 4, 'yii\\db\\Command::execute', 1637135210.5919, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Karyawan\', \'data-karyawan\', 34, \'user\', 0, 2)'),
(287, 4, 'yii\\db\\Command::execute', 1637135214.8325, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'36\''),
(288, 4, 'yii\\db\\Command::execute', 1637135214.8412, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 36)'),
(289, 4, 'yii\\db\\Command::execute', 1637135214.8463, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 36)'),
(290, 4, 'yii\\db\\Command::execute', 1637135249.984, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Absen\', \'data-absensi\', 34, \'pencil-square-o\', 0, 3)'),
(291, 4, 'yii\\db\\Command::execute', 1637135254.6847, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'37\''),
(292, 4, 'yii\\db\\Command::execute', 1637135254.693, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 37)'),
(293, 4, 'yii\\db\\Command::execute', 1637135254.6984, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 37)'),
(294, 4, 'yii\\db\\Command::execute', 1637136624.5801, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=34'),
(295, 4, 'yii\\db\\Command::execute', 1637136820.9782, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Karyawan\', \'#\', 0, \'users\', 0, 9)'),
(296, 4, 'yii\\db\\Command::execute', 1637136826.1141, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'38\''),
(297, 4, 'yii\\db\\Command::execute', 1637136826.1225, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 38)'),
(298, 4, 'yii\\db\\Command::execute', 1637136826.1272, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 38)'),
(299, 4, 'yii\\db\\Command::execute', 1637136837.1901, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `status`=0 WHERE `id_menu`=38'),
(300, 4, 'yii\\db\\Command::execute', 1637136872.3119, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Gaji\', \'gaji\', 38, \'usd\', 0, 1)'),
(301, 4, 'yii\\db\\Command::execute', 1637136876.0536, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'39\''),
(302, 4, 'yii\\db\\Command::execute', 1637136876.0633, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 39)'),
(303, 4, 'yii\\db\\Command::execute', 1637136876.0683, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 39)'),
(304, 4, 'yii\\db\\Command::execute', 1637136894.103, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Karyawan\', \'karyawan\', 38, \'user\', 0, 2)'),
(305, 4, 'yii\\db\\Command::execute', 1637136898.8287, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'40\''),
(306, 4, 'yii\\db\\Command::execute', 1637136898.8374, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 40)'),
(307, 4, 'yii\\db\\Command::execute', 1637136898.9111, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 40)'),
(308, 4, 'yii\\db\\Command::execute', 1637137365.4501, 'DEVELOPER', 'UPDATE `karyawan` SET `id_gaji`=1 WHERE `id_karyawan`=2'),
(309, 4, 'yii\\db\\Command::execute', 1637137658.4826, 'DEVELOPER', 'INSERT INTO `karyawan` (`nik`, `nama_lengkap`, `no_telpon`, `email`, `alamat`, `id_gaji`) VALUES (\'1234567890\', \'Sri Dyah Wd\', \'08987654321\', \'sridyhwd@gmail.com\', \'Semarang\', 2)'),
(310, 4, 'yii\\db\\Command::execute', 1637137963.132, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Absensi\', \'absensi\', 38, \'pencil-square-o\', 0, 3)'),
(311, 4, 'yii\\db\\Command::execute', 1637137967.6868, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'41\''),
(312, 4, 'yii\\db\\Command::execute', 1637137967.6954, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 41)'),
(313, 4, 'yii\\db\\Command::execute', 1637137967.7005, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 41)'),
(314, 4, 'yii\\db\\Command::execute', 1637138877.1606, 'DEVELOPER', 'UPDATE `absensi` SET `id_karyawan`=1, `keterangan`=\'izin\' WHERE `id_absensi`=1'),
(315, 0, 'Login', 1637202116.9318, 'ADMINISTRATOR', 'Login'),
(316, 4, 'yii\\db\\Command::execute', 1637202116.9321, 'ADMINISTRATOR', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637202116.9318, \'ADMINISTRATOR\', \'Login\')'),
(317, 0, 'Login', 1637202128.6877, 'DEVELOPER', 'Login'),
(318, 4, 'yii\\db\\Command::execute', 1637202128.6879, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637202128.6877, \'DEVELOPER\', \'Login\')'),
(319, 4, 'yii\\db\\Command::execute', 1637203174.0348, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'transfer\', `id_parent`=24, `no_urut`=1, `status`=0 WHERE `id_menu`=25');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(320, 4, 'yii\\db\\Command::execute', 1637204084.0268, 'DEVELOPER', 'INSERT INTO `transfer` (`dari_rekening`, `ke_rekening`, `bank_tujuan`, `nama_pemilik_rekening`, `jumlah`, `no_referensi_nasabah`, `biaya_admin`) VALUES (\'1234567890\', \'1234567890\', \'bri\', \'Sri Dyah Wulandari\', \'20000\', 1234, \'6500\')'),
(321, 4, 'yii\\db\\Command::execute', 1637204601.4871, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'penarikan\', `id_parent`=24, `no_urut`=2, `status`=0 WHERE `id_menu`=26'),
(322, 4, 'yii\\db\\Command::execute', 1637204621.119, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Penarikan Tunai\', `id_parent`=24, `no_urut`=2, `status`=0 WHERE `id_menu`=26'),
(323, 4, 'yii\\db\\Command::execute', 1637204634.8786, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'setor\', `id_parent`=24, `no_urut`=3, `status`=0 WHERE `id_menu`=27'),
(324, 4, 'yii\\db\\Command::execute', 1637205017.4759, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'setoran\', `id_parent`=24, `no_urut`=3, `status`=0 WHERE `id_menu`=27'),
(325, 4, 'yii\\db\\Command::execute', 1637205382.2449, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=31'),
(326, 4, 'yii\\db\\Command::execute', 1637206047.2381, 'DEVELOPER', 'UPDATE `karyawan` SET `id_gaji`=1, `status`=2 WHERE `id_karyawan`=2'),
(327, 4, 'yii\\db\\Command::execute', 1637207052.3455, 'DEVELOPER', 'INSERT INTO `transfer` (`tanggal`, `dari_rekening`, `ke_rekening`, `bank_tujuan`, `nama_pemilik_rekening`, `jumlah`, `no_referensi_nasabah`, `biaya_admin`) VALUES (\'2021-11-18\', \'1234567890\', \'1234567890\', \'bri\', \'Sri Dyah Wulandari\', \'20000\', 1234, \'6500\')'),
(328, 4, 'yii\\db\\Command::execute', 1637207112.5345, 'DEVELOPER', 'INSERT INTO `penarikan` (`no_rekening`, `nama_pemilik_rekening`, `nama_bank`, `jumlah`, `biaya_admin`) VALUES (\'1234567890\', \'Sri Dyah Wulandari\', \'Bank BRI\', \'100000\', \'6500\')'),
(329, 4, 'yii\\db\\Command::execute', 1637207183.3592, 'DEVELOPER', 'UPDATE `penarikan` SET `nama_bank`=\'bri\' WHERE `id_penarikan`=1'),
(330, 4, 'yii\\db\\Command::execute', 1637207210.6873, 'DEVELOPER', 'INSERT INTO `setoran` (`no_rekening`, `nama_pemilik_rekening`, `nama_bank`, `jumlah`, `biaya_admin`) VALUES (\'1234567890\', \'Sri Dyah Wulandari\', \'bri\', \'50000\', \'6500\')'),
(331, 4, 'yii\\db\\Command::execute', 1637207223.85, 'DEVELOPER', 'UPDATE `setoran` SET `nama_bank`=\'bca\' WHERE `id_setoran`=1'),
(332, 0, 'Login', 1637207702.9371, 'DEVELOPER', 'Login'),
(333, 4, 'yii\\db\\Command::execute', 1637207702.9372, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637207702.9371, \'DEVELOPER\', \'Login\')'),
(334, 0, 'Login', 1637219254.4929, 'DEVELOPER', 'Login'),
(335, 4, 'yii\\db\\Command::execute', 1637219254.4931, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637219254.4929, \'DEVELOPER\', \'Login\')'),
(336, 4, 'yii\\db\\Command::execute', 1637219280.6424, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Rekening\', \'rekening\', 2, \'card\', 0, 6)'),
(337, 4, 'yii\\db\\Command::execute', 1637219285.2822, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'42\''),
(338, 4, 'yii\\db\\Command::execute', 1637219285.2903, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 42)'),
(339, 4, 'yii\\db\\Command::execute', 1637219285.2955, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 42)'),
(340, 4, 'yii\\db\\Command::execute', 1637220621.3376, 'DEVELOPER', 'INSERT INTO `rekening` (`bank`, `no_rekening`) VALUES (\'Bank BRI\', \'45678765432\')'),
(341, 4, 'yii\\db\\Command::execute', 1637220640.5534, 'DEVELOPER', 'INSERT INTO `rekening` (`bank`, `no_rekening`) VALUES (\'Bank BCA\', \'12345654321\')'),
(342, 4, 'yii\\db\\Command::execute', 1637220858.948, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=25'),
(343, 4, 'yii\\db\\Command::execute', 1637220863.4814, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=26'),
(344, 4, 'yii\\db\\Command::execute', 1637220867.5143, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=27'),
(345, 4, 'yii\\db\\Command::execute', 1637220871.5928, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=28'),
(346, 4, 'yii\\db\\Command::execute', 1637221172.5032, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transfer\', \'transfer\', 24, \'usd\', 0, 1)'),
(347, 4, 'yii\\db\\Command::execute', 1637221177.6685, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'43\''),
(348, 4, 'yii\\db\\Command::execute', 1637221177.6764, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 43)'),
(349, 4, 'yii\\db\\Command::execute', 1637221177.6813, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 43)'),
(350, 4, 'yii\\db\\Command::execute', 1637221202.5821, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'43\''),
(351, 4, 'yii\\db\\Command::execute', 1637221202.5928, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 43)'),
(352, 4, 'yii\\db\\Command::execute', 1637221202.5967, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 43)'),
(353, 4, 'yii\\db\\Command::execute', 1637221226.3557, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=1, `status`=0 WHERE `id_menu`=43'),
(354, 4, 'yii\\db\\Command::execute', 1637221235.2987, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'24\''),
(355, 4, 'yii\\db\\Command::execute', 1637221235.3137, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 24)'),
(356, 4, 'yii\\db\\Command::execute', 1637221235.3179, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 24)'),
(357, 4, 'yii\\db\\Command::execute', 1637221266.6681, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=43'),
(358, 4, 'yii\\db\\Command::execute', 1637221290.8318, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transfer\', \'transfer\', 24, \'usd\', 0, 1)'),
(359, 4, 'yii\\db\\Command::execute', 1637221295.6346, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'44\''),
(360, 4, 'yii\\db\\Command::execute', 1637221295.6428, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 44)'),
(361, 4, 'yii\\db\\Command::execute', 1637221295.6476, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 44)'),
(362, 4, 'yii\\db\\Command::execute', 1637222128.3164, 'DEVELOPER', 'INSERT INTO `transfer` (`tanggal`, `id_rekening`, `rekening_tujuan`, `nama_pemilik_rekening`, `jumlah`, `no_referensi_nasabah`, `biaya`) VALUES (\'2021-11-18\', 2, \'11234\', \'Sri Dyah Wulandari\', \'20000\', \'1234\', \'6500\')'),
(363, 0, 'Login', 1637224185.2261, 'DEVELOPER', 'Login'),
(364, 4, 'yii\\db\\Command::execute', 1637224185.2263, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637224185.2261, \'DEVELOPER\', \'Login\')'),
(365, 0, 'Login', 1637287521.1789, 'DEVELOPER', 'Login'),
(366, 4, 'yii\\db\\Command::execute', 1637287521.1792, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637287521.1789, \'DEVELOPER\', \'Login\')'),
(367, 4, 'yii\\db\\Command::execute', 1637287869.913, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Penarikan Tunai\', \'penarikan\', 24, \'outdent\', 0, 2)'),
(368, 4, 'yii\\db\\Command::execute', 1637287878.1598, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'45\''),
(369, 4, 'yii\\db\\Command::execute', 1637287878.168, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 45)'),
(370, 4, 'yii\\db\\Command::execute', 1637287878.1726, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 45)'),
(371, 4, 'yii\\db\\Command::execute', 1637288149.1616, 'DEVELOPER', 'INSERT INTO `penarikan` (`id_rekening`, `tanggal`, `no_rekening`, `nama_pemilik_rekening`, `jumlah`, `biaya_admin`) VALUES (2, \'2021-11-01\', \'1234567890\', \'Sri Dyah Wulandari\', \'100000\', \'6500\')'),
(372, 4, 'yii\\db\\Command::execute', 1637288318.8283, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Setor Tunai\', \'setoran\', 24, \'outdent\', 0, 3)'),
(373, 4, 'yii\\db\\Command::execute', 1637288324.8336, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'46\''),
(374, 4, 'yii\\db\\Command::execute', 1637288324.8421, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 46)'),
(375, 4, 'yii\\db\\Command::execute', 1637288324.8472, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 46)'),
(376, 4, 'yii\\db\\Command::execute', 1637288333.2214, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=3, `icon`=\'indent\', `status`=0 WHERE `id_menu`=46'),
(377, 4, 'yii\\db\\Command::execute', 1637288480.1971, 'DEVELOPER', 'INSERT INTO `setoran` (`id_rekening`, `tanggal`, `no_rekening`, `nama_pemilik_rekening`, `jumlah`, `biaya_admin`) VALUES (2, \'2021-11-19\', \'1234567890\', \'Sri Dyah Wulandari\', \'50000\', \'6500\')'),
(378, 4, 'yii\\db\\Command::execute', 1637288517.5397, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Pembayaran\', \'pembayaran\', 24, \'card\', 0, 4)'),
(379, 4, 'yii\\db\\Command::execute', 1637288521.8672, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'47\''),
(380, 4, 'yii\\db\\Command::execute', 1637288521.8776, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 47)'),
(381, 4, 'yii\\db\\Command::execute', 1637288521.8822, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 47)'),
(382, 4, 'yii\\db\\Command::execute', 1637288539.0475, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=4, `icon`=\'money\', `status`=0 WHERE `id_menu`=47'),
(383, 4, 'yii\\db\\Command::execute', 1637288539.4219, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=24, `no_urut`=4, `status`=0 WHERE `id_menu`=47'),
(384, 4, 'yii\\db\\Command::execute', 1637288542.4301, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'47\''),
(385, 4, 'yii\\db\\Command::execute', 1637288542.4413, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 47)'),
(386, 4, 'yii\\db\\Command::execute', 1637288542.4456, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 47)'),
(387, 4, 'yii\\db\\Command::execute', 1637288590.9115, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=6, `icon`=\'cards\', `status`=0 WHERE `id_menu`=42'),
(388, 4, 'yii\\db\\Command::execute', 1637288727.2261, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=6, `icon`=\'cc-visa\', `status`=0 WHERE `id_menu`=42'),
(389, 4, 'yii\\db\\Command::execute', 1637288850.8967, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=6, `icon`=\'credit-card\', `status`=0 WHERE `id_menu`=42'),
(390, 4, 'yii\\db\\Command::execute', 1637288883.987, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=5, `icon`=\'database\', `status`=0 WHERE `id_menu`=5'),
(391, 4, 'yii\\db\\Command::execute', 1637293248.7204, 'DEVELOPER', 'INSERT INTO `pembayaran` (`id_rekening`, `tanggal`, `tagihan`, `no_pelanggan`, `nominal`, `biaya_admin`) VALUES (1, \'2021-11-18\', \'bpjs\', \'123456789\', \'20000\', \'-\')'),
(392, 4, 'yii\\db\\Command::execute', 1637305009.8423, 'DEVELOPER', 'INSERT INTO `pembayaran` (`id_rekening`, `tanggal`, `tagihan`, `no_pelanggan`, `nominal`, `biaya_admin`) VALUES (1, \'2021-11-09\', \'listrik_pln\', \'12344\', \'20000\', \'-\')'),
(393, 0, 'Login', 1637306258.7278, 'DEVELOPER', 'Login'),
(394, 4, 'yii\\db\\Command::execute', 1637306258.728, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637306258.7278, \'DEVELOPER\', \'Login\')'),
(395, 0, 'Login', 1637308406.5136, 'DEVELOPER', 'Login'),
(396, 4, 'yii\\db\\Command::execute', 1637308406.514, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637308406.5136, \'DEVELOPER\', \'Login\')'),
(397, 0, 'Login', 1637414460.2166, 'DEVELOPER', 'Login'),
(398, 4, 'yii\\db\\Command::execute', 1637414460.2167, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637414460.2166, \'DEVELOPER\', \'Login\')'),
(399, 4, 'yii\\db\\Command::execute', 1637414529.6849, 'DEVELOPER', 'UPDATE `pembayaran` SET `id_rekening`=1, `tagihan`=\'BPJS\' WHERE `id_pembayaran`=1'),
(400, 4, 'yii\\db\\Command::execute', 1637414641.5191, 'DEVELOPER', 'UPDATE `pembayaran` SET `id_rekening`=1, `tagihan`=\'Listrik PLN\' WHERE `id_pembayaran`=2'),
(401, 0, 'Login', 1637547690.7274, 'DEVELOPER', 'Login'),
(402, 4, 'yii\\db\\Command::execute', 1637547690.7276, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637547690.7274, \'DEVELOPER\', \'Login\')'),
(403, 4, 'yii\\db\\Command::execute', 1637547755.8435, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'saldo\', `id_parent`=14, `no_urut`=3, `status`=0 WHERE `id_menu`=19'),
(404, 0, 'Login', 1637550327.6739, 'DEVELOPER', 'Login'),
(405, 4, 'yii\\db\\Command::execute', 1637550327.6742, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637550327.6739, \'DEVELOPER\', \'Login\')'),
(406, 4, 'yii\\db\\Command::execute', 1637550398.4956, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'laporanbanking\', `id_parent`=14, `no_urut`=2, `status`=0 WHERE `id_menu`=16'),
(407, 4, 'yii\\db\\Command::execute', 1637550532.375, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'laporan\', `id_parent`=14, `no_urut`=2, `status`=0 WHERE `id_menu`=16'),
(408, 4, 'yii\\db\\Command::execute', 1637551086.5172, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan Transfer\', \'laporan_transfer\', 29, \'file\', 0, 1)'),
(409, 4, 'yii\\db\\Command::execute', 1637551100.4107, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'48\''),
(410, 4, 'yii\\db\\Command::execute', 1637551100.4198, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 48)'),
(411, 4, 'yii\\db\\Command::execute', 1637551100.4249, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 48)'),
(412, 4, 'yii\\db\\Command::execute', 1637551149.5285, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan Penarikan Tunai\', \'laporan_penarikan_tunai\', 29, \'file\', 0, 2)'),
(413, 4, 'yii\\db\\Command::execute', 1637551153.3707, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'49\''),
(414, 4, 'yii\\db\\Command::execute', 1637551153.3794, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 49)'),
(415, 4, 'yii\\db\\Command::execute', 1637551153.3842, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 49)'),
(416, 4, 'yii\\db\\Command::execute', 1637551183.8085, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan Setor Tunai\', \'laporan_setor_tunai\', 29, \'file\', 0, 3)'),
(417, 4, 'yii\\db\\Command::execute', 1637551187.9885, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'50\''),
(418, 4, 'yii\\db\\Command::execute', 1637551187.9971, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 50)'),
(419, 4, 'yii\\db\\Command::execute', 1637551188.0017, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 50)'),
(420, 4, 'yii\\db\\Command::execute', 1637551212.9307, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan Pembayaran\', \'laporan_pembayaran\', 29, \'file\', 0, 4)'),
(421, 4, 'yii\\db\\Command::execute', 1637551216.8223, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'51\''),
(422, 4, 'yii\\db\\Command::execute', 1637551216.8317, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 51)'),
(423, 4, 'yii\\db\\Command::execute', 1637551216.8364, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 51)'),
(424, 4, 'yii\\db\\Command::execute', 1637551962.8182, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(425, 4, 'yii\\db\\Command::execute', 1637551987.3998, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(426, 4, 'yii\\db\\Command::execute', 1637552007.4419, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(427, 4, 'yii\\db\\Command::execute', 1637552017.8176, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(428, 4, 'yii\\db\\Command::execute', 1637552025.411, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(429, 4, 'yii\\db\\Command::execute', 1637552045.0585, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=30'),
(430, 4, 'yii\\db\\Command::execute', 1637552066.6877, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'30\''),
(431, 4, 'yii\\db\\Command::execute', 1637552066.6997, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 30)'),
(432, 4, 'yii\\db\\Command::execute', 1637552066.7079, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 30)'),
(433, 0, 'Login', 1637556228.8894, 'DEVELOPER', 'Login'),
(434, 4, 'yii\\db\\Command::execute', 1637556228.8895, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1637556228.8894, \'DEVELOPER\', \'Login\')'),
(435, 4, 'yii\\db\\Command::execute', 1637556273.5823, 'DEVELOPER', 'INSERT INTO `transfer` (`tanggal`, `id_rekening`, `rekening_tujuan`, `nama_pemilik_rekening`, `jumlah`, `no_referensi_nasabah`, `biaya`) VALUES (\'2021-11-18\', 2, \'11234\', \'Sri Dyah Wulandari\', \'500000\', \'1234\', \'6500\')');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`, `user_id`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'ADMINISTRATOR', 'avatar5.png', NULL),
(2, 'developer', '202cb962ac59075b964b07152d234b70', 'DEVELOPER', 'avatar5.png', NULL),
(3, 'justiciarenjygazerock', '1c10da2d46480d0db11c66b61ab5a984', 'RERE', 'avatar5.png', 2),
(4, 'justiciarenjygazerock@gmail.com', '241a0bbdb329b6862263e0a19c656b29', 'VIDIA', 'avatar5.png', 3),
(5, 'ren@gmail.com', '202cb962ac59075b964b07152d234b70', 'RENDY', 'avatar5.png', 4),
(6, 'karyawan', '202cb962ac59075b964b07152d234b70', 'KARYAWAN', 'avatar5.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi`
--

CREATE TABLE `menu_navigasi` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi`
--

INSERT INTO `menu_navigasi` (`id_menu`, `nama_menu`, `url`, `id_parent`, `no_urut`, `icon`, `status`) VALUES
(1, 'LOG', '#', 0, 1, 'manage_search', 1),
(2, 'MASTER DATA', '#', 0, 2, 'database', 0),
(3, 'Menu Navigasi', 'menu-navigasi', 2, 3, 'menu', 0),
(4, 'Login', 'login', 2, 4, 'user', 0),
(5, 'Hak Akses', 'systemrole', 2, 5, 'database', 0),
(10, 'Data Booking / Order', 'tbl-order', 9, 1, 'list', 0),
(12, 'Data Event', 'event', 11, 1, 'list', 0),
(14, 'Banking', '#', 0, 3, 'usd', 0),
(15, 'Edit Biaya', 'edit-biaya', 14, 1, 'pencil-square-o', 0),
(16, 'Laporan', 'laporan', 14, 2, 'file', 0),
(19, 'Saldo', 'saldo', 14, 3, 'usd', 0),
(22, 'Absensi', 'data-absensi', 20, 3, 'calendar-check-o', 0),
(24, 'Transaksi', '#', 0, 5, 'usd', 0),
(29, 'Laporan', '#', 0, 6, 'file', 0),
(30, 'Saldo', '#', 0, 7, 'money', 0),
(32, 'Data Karyawan', 'data-karyawan', 20, 1, 'pencil-square-o', 0),
(33, 'Data Gaji', 'data-gaji', 20, 2, 'pencil-square-o', 0),
(35, 'Gaji Karyawan', 'data-gaji', 34, 1, 'usd', 0),
(36, 'Data Karyawan', 'data-karyawan', 34, 2, 'user', 0),
(37, 'Data Absen', 'data-absensi', 34, 3, 'pencil-square-o', 0),
(38, 'Karyawan', '#', 0, 4, 'users', 0),
(39, 'Data Gaji', 'gaji', 38, 1, 'usd', 0),
(40, 'Karyawan', 'karyawan', 38, 2, 'user', 0),
(41, 'Absensi', 'absensi', 38, 3, 'pencil-square-o', 0),
(42, 'Rekening', 'rekening', 2, 6, 'credit-card', 0),
(44, 'Transfer', 'transfer', 24, 1, 'usd', 0),
(45, 'Penarikan Tunai', 'penarikan', 24, 2, 'outdent', 0),
(46, 'Setor Tunai', 'setoran', 24, 3, 'indent', 0),
(47, 'Pembayaran', 'pembayaran', 24, 4, 'money', 0),
(48, 'Laporan Transfer', 'laporan_transfer', 29, 1, 'file', 0),
(49, 'Laporan Penarikan Tunai', 'laporan_penarikan_tunai', 29, 2, 'file', 0),
(50, 'Laporan Setor Tunai', 'laporan_setor_tunai', 29, 3, 'file', 0),
(51, 'Laporan Pembayaran', 'laporan_pembayaran', 29, 4, 'file', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi_role`
--

INSERT INTO `menu_navigasi_role` (`id_menu_role`, `id_menu`, `id_system_role`) VALUES
(1, 1, 2),
(3, 3, 2),
(5, 5, 2),
(8, 8, 2),
(9, 2, 2),
(10, 2, 1),
(11, 4, 2),
(12, 4, 1),
(13, 6, 2),
(14, 6, 1),
(15, 7, 2),
(16, 7, 1),
(17, 9, 2),
(18, 9, 1),
(19, 10, 2),
(20, 10, 1),
(21, 11, 2),
(22, 11, 1),
(23, 12, 2),
(24, 12, 1),
(25, 13, 2),
(26, 13, 1),
(29, 15, 2),
(30, 15, 1),
(33, 16, 2),
(34, 16, 1),
(35, 18, 2),
(36, 18, 1),
(37, 19, 2),
(38, 19, 1),
(41, 21, 2),
(42, 21, 1),
(43, 22, 2),
(44, 22, 1),
(53, 23, 2),
(54, 23, 3),
(55, 23, 1),
(56, 20, 2),
(57, 20, 1),
(58, 14, 2),
(59, 14, 1),
(62, 25, 2),
(63, 25, 3),
(64, 26, 2),
(65, 26, 3),
(66, 27, 2),
(67, 27, 3),
(68, 28, 2),
(69, 28, 3),
(70, 29, 2),
(71, 29, 3),
(74, 31, 2),
(75, 31, 3),
(76, 31, 1),
(77, 32, 2),
(78, 32, 3),
(79, 33, 2),
(80, 33, 3),
(81, 34, 2),
(82, 34, 1),
(83, 35, 2),
(84, 35, 1),
(85, 36, 2),
(86, 36, 1),
(87, 37, 2),
(88, 37, 1),
(89, 38, 2),
(90, 38, 1),
(91, 39, 2),
(92, 39, 1),
(93, 40, 2),
(94, 40, 1),
(95, 41, 2),
(96, 41, 1),
(97, 42, 2),
(98, 42, 1),
(101, 43, 3),
(102, 43, 1),
(103, 24, 2),
(104, 24, 3),
(105, 44, 2),
(106, 44, 3),
(107, 45, 2),
(108, 45, 3),
(109, 46, 2),
(110, 46, 3),
(113, 47, 2),
(114, 47, 3),
(115, 48, 2),
(116, 48, 3),
(117, 49, 2),
(118, 49, 3),
(119, 50, 2),
(120, 50, 3),
(121, 51, 2),
(122, 51, 3),
(123, 30, 2),
(124, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `tagihan` varchar(50) NOT NULL,
  `no_pelanggan` varchar(50) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `biaya_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_rekening`, `tanggal`, `tagihan`, `no_pelanggan`, `nominal`, `biaya_admin`) VALUES
(1, 1, '2021-11-18', 'BPJS', '123456789', '20000', '0'),
(2, 1, '2021-11-09', 'Listrik PLN', '12344', '20000', '0');

-- --------------------------------------------------------

--
-- Table structure for table `penarikan`
--

CREATE TABLE `penarikan` (
  `id_penarikan` int(11) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `biaya_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penarikan`
--

INSERT INTO `penarikan` (`id_penarikan`, `id_rekening`, `tanggal`, `no_rekening`, `nama_pemilik_rekening`, `jumlah`, `biaya_admin`) VALUES
(1, 2, '2021-11-01', '1234567890', 'Sri Dyah Wulandari', '100000', '6500');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `saldo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `bank`, `no_rekening`, `saldo`) VALUES
(1, 'Bank BRI', '45678765432', '100000000'),
(2, 'Bank BCA', '12345654321', '10000000');

-- --------------------------------------------------------

--
-- Table structure for table `setoran`
--

CREATE TABLE `setoran` (
  `id_setoran` int(11) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `biaya_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setoran`
--

INSERT INTO `setoran` (`id_setoran`, `id_rekening`, `tanggal`, `no_rekening`, `nama_pemilik_rekening`, `jumlah`, `biaya_admin`) VALUES
(1, 2, '2021-11-19', '1234567890', 'Sri Dyah Wulandari', '50000', '6500');

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'SYSTEM ADMINISTRATOR'),
(2, 'DEVELOPER'),
(3, 'KARYAWAN');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id_transfer` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `rekening_tujuan` varchar(50) NOT NULL,
  `nama_pemilik_rekening` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `no_referensi_nasabah` varchar(50) NOT NULL,
  `biaya` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id_transfer`, `tanggal`, `id_rekening`, `rekening_tujuan`, `nama_pemilik_rekening`, `jumlah`, `no_referensi_nasabah`, `biaya`) VALUES
(1, '2021-11-18', 2, '11234', 'Sri Dyah Wulandari', '20000', '1234', '6500'),
(2, '2021-11-18', 2, '11234', 'Sri Dyah Wulandari', '500000', '1234', '6500');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `id_system_role`, `id_login`) VALUES
(1, 2, 2),
(2, 1, 1),
(3, 3, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_system_role` (`id_system_role`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `penarikan`
--
ALTER TABLE `penarikan`
  ADD PRIMARY KEY (`id_penarikan`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id_setoran`);

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id_transfer`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penarikan`
--
ALTER TABLE `penarikan`
  MODIFY `id_penarikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setoran`
--
ALTER TABLE `setoran`
  MODIFY `id_setoran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id_transfer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
