-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2018 at 11:42 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `bentuk_obat`
--

CREATE TABLE `bentuk_obat` (
  `kode_bentuk` char(10) NOT NULL DEFAULT '',
  `nama_bentuk` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bentuk_obat`
--

INSERT INTO `bentuk_obat` (`kode_bentuk`, `nama_bentuk`) VALUES
('B001', 'TABLET'),
('B002', 'PUYER'),
('B003', 'BOTOL'),
('B004', 'SYRUP'),
('B005', 'SERBUK'),
('B006', 'INJEKSI'),
('B007', 'SUPPOSITORIA'),
('B008', 'SALEP'),
('B009', 'KRIM'),
('B010', 'GEL'),
('B011', 'KAPLET'),
('B012', 'KAPSUL');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `kode_dokter` char(20) NOT NULL DEFAULT '',
  `nama_dokter` varchar(30) NOT NULL DEFAULT '',
  `alamat_praktek` text NOT NULL,
  `telp` varchar(15) NOT NULL DEFAULT '',
  `fee` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`kode_dokter`, `nama_dokter`, `alamat_praktek`, `telp`, `fee`) VALUES
('D001', 'dr. Bosnia', 'jln jati', '0812354', 20),
('D003', 'bosnia tes', 'hhh', '11', 0),
('D004', 'wwjwlsadjkljasd', 'djiojdwq', '222', 0),
('D005', 'bosiowef', 'olrefhihf', '087456', 0),
('D006', 'ww', 'ww11', '11', 0),
('D007', 'fff', 'fff', '32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dokter_fee`
--

CREATE TABLE `dokter_fee` (
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kode_resep` char(10) NOT NULL DEFAULT '',
  `kode_pembelian` char(15) NOT NULL DEFAULT '',
  `kode_dokter` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter_fee`
--

INSERT INTO `dokter_fee` (`tanggal`, `kode_resep`, `kode_pembelian`, `kode_dokter`) VALUES
('2017-12-04 18:34:16', 'S6', '71204123339', 'D001'),
('2018-04-25 14:18:49', 'R1', '80425091815', 'D001'),
('2018-05-01 23:59:02', 'SE1', '80501185602', 'D001');

-- --------------------------------------------------------

--
-- Table structure for table `golongan_obat`
--

CREATE TABLE `golongan_obat` (
  `kode_golongan` char(10) NOT NULL DEFAULT '',
  `golongan` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golongan_obat`
--

INSERT INTO `golongan_obat` (`kode_golongan`, `golongan`) VALUES
('G001', 'ANAK-ANAK'),
('G002', 'REMAJA'),
('G003', 'DEWASA'),
('G004', 'SEMUA');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_obat`
--

CREATE TABLE `jenis_obat` (
  `kode_jenis` char(10) NOT NULL DEFAULT '',
  `nama_jenis` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_obat`
--

INSERT INTO `jenis_obat` (`kode_jenis`, `nama_jenis`) VALUES
('J001', 'ANTIBIOTIK'),
('J002', 'ANALGETIK'),
('J003', 'ANTI INFLAMASI'),
('J004', 'ANTI HEMORRHAGI');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kode_pembelian` char(15) NOT NULL DEFAULT '',
  `nama_konsumen` varchar(50) NOT NULL DEFAULT '',
  `umur` int(5) NOT NULL DEFAULT '0',
  `jenis_kelamin` char(10) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL DEFAULT '',
  `kode_dokter` char(20) NOT NULL DEFAULT '',
  `biaya_racikan` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`tanggal`, `kode_pembelian`, `nama_konsumen`, `umur`, `jenis_kelamin`, `alamat`, `telp`, `kode_dokter`, `biaya_racikan`) VALUES
('2015-12-01', '51201103529', 'indra', 20, 'pria', 'ad', '00055', 'D001', 0),
('2015-12-01', '51201104016', 'as', 11, 'pria', 'a', '11', 'D001', 0),
('2015-12-04', '51204041750', 'rr', 11, 'pria', 'rr', '11', 'D002', 0),
('2015-12-04', '51204043509', 'dd', 1, 'wanita', 'd', '1', 'D001', 0),
('2015-12-04', '51204102328', 'aaaa', 1, 'pria', 'asd', '1', 'D002', 0),
('2015-12-04', '51204120548', 'aa', 11, 'wanita', 'a', '21', 'D003', 0),
('2015-12-22', '51222121700', 'Indra', 21, 'pria', 'Pontianak', '089693714716', 'D001', 0),
('2015-12-22', '51222133515', 'asdas', 21, 'pria', 'asd', '213', 'D001', 0),
('2015-12-23', '51223113750', 'sad', 123, 'pria', 'asdasd', '312312', 'D001', 0),
('2015-12-23', '51223114919', 'indra', 21, 'pria', 'pontianak', '089693714', 'D001', 0),
('2016-01-07', '60107050040', 'sdaads', 22, 'wanita', 'asd', '213', 'D001', 0),
('2016-01-07', '60107050209', 'd', 1, 'wanita', 'ad', '312', 'D001', 0),
('2016-01-07', '60107051310', 'sadsasssfff', 2, 'wanita', 'ads', '21', 'D001', 0),
('2016-01-11', '60111030041', 'd', 1, '', 'd\r\n', '2', 'D001', 0),
('2016-01-11', '60111030523', 'asd', 11, 'pria', 'ad', '11', 'D001', 1000),
('2016-01-11', '60111030850', 'd', 1, 'pria', 'a', '2', 'D001', 0),
('2016-01-11', '60111031108', 'dd', 1, 'pria', 'a', '1', 'D001', 0),
('2016-01-11', '60111031130', 'da', 11, 'pria', 'ad', '2', 'D001', 2222),
('2016-01-11', '60111031157', 'd1', 1, 'pria', 'd', '1', 'D001', 0),
('2016-01-21', '60121035152', 's', 1, 'pria', 's', '1', 'D001', 1000),
('2016-01-21', '60121091251', 'ads', 1, 'pria', 'sad', '1', 'D001', 500),
('2016-01-25', '60125034206', 'asd', 1, 'pria', 'a', '1', 'D001', 500),
('2016-01-25', '60125044059', 'r', 5, 'wanita', '1', '11', 'D001', 110),
('2016-01-25', '60125044834', '1', 1, 'pria', '1', '1', 'D001', 1),
('2016-01-25', '60125045011', '1', 1, 'pria', '1', '1', 'D001', 11),
('2016-01-25', '60125045803', '1', 1, 'wanita', 'adsa', '1', 'D001', 555),
('2016-01-25', '60125045902', 'as', 1, 'pria', 'ad', '1', 'D001', 444),
('2016-01-25', '60125050003', '11', 1, 'pria', '1', '1', 'D001', 5555),
('2016-01-25', '60125050102', '1', 1, 'pria', 'a', '1', 'D001', 66),
('2016-01-25', '60125050208', '1', 1, 'pria', '1', '1', 'D001', 9),
('2016-01-25', '60125050236', '1', 1, 'pria', '1', '1', 'D001', 2),
('2016-01-25', '60125051141', '1', 1, 'pria', '1', '1', 'D001', 500),
('2016-01-27', '60127024217', '1', 1, 'pria', 'asd1', '1', 'D001', 123),
('2016-01-27', '60127113302', 'ad', 12, 'pria', '1', '1', 'D001', 500),
('2016-01-27', '60127115003', 'Indra Dwi Putra', 88, 'pria', 'asd', '5464', 'D001', 3500),
('2016-01-28', '60128034137', 'asd', 1, 'wanita', 'sad', '1', 'D001', 500),
('2016-01-28', '60128043233', 'asd', 11, 'pria', 'sad', '11', 'D001', 3500),
('2016-01-29', '60129085000', 'dsavsdg', 32, '', 'gadrrgdgv', '12413245', 'D001', 500),
('2016-01-29', '60129085133', 'dsfg', 12, 'wanita', 'asdfh', '14512356', 'D001', 500),
('2016-01-29', '60129085255', 'adegsedg', 12, 'wanita', 'dsgdshg', '1241235', 'D002', 500),
('2016-01-29', '60129092809', 'saysa', 12, 'pria', 'baning', '09867912', 'D001', 500),
('2016-01-29', '60129093040', 'deri', 27, 'pria', 'sintang', '135565', 'D003', 500),
('2016-01-29', '60129093850', 'desi', 17, 'wanita', 'kota', '13536', 'D002', 0),
('2016-01-29', '60129134719', 'andri', 14, 'pria', 'Sintang', '081234563778', 'D001', 0),
('2016-01-29', '60129151043', 'drian', 13, 'pria', 'Sintang', '0000', 'D003', 12500),
('2016-01-29', '60129153114', 'a', 12, 'wanita', 'wer', '000', 'D001', 12345),
('2016-01-30', '60130084909', 'ad', 1, 'pria', 'ad', '1', 'D002', 0),
('2016-01-30', '60130090440', 'dsa', 11, 'wanita', 'asd', '11', 'D001', 11),
('2017-12-04', '71204123339', 'bosnia', 3, 'pria', 'Jln Mangga2', '0812579', 'D001', 0),
('2018-04-25', '80425091815', 'ddd', 2, 'wanita', 'ee13', '11', 'D001', 2),
('2018-05-01', '80501152753', 'ffrfrf', 22, 'wanita', 'e3e3', '233', 'D002', 0),
('2018-05-01', '80501185602', 'ee', 22, 'wanita', 'ewrwrf', '333', 'D001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kode_obat` char(10) NOT NULL DEFAULT '',
  `no_batch` char(20) NOT NULL DEFAULT '',
  `kode_golongan` char(10) NOT NULL DEFAULT '',
  `nama_obat` varchar(100) NOT NULL DEFAULT '',
  `kode_jenis` char(10) NOT NULL DEFAULT '',
  `kode_bentuk` char(10) NOT NULL DEFAULT '',
  `kemasan` varchar(30) NOT NULL DEFAULT '',
  `harga_kemasan` int(10) NOT NULL DEFAULT '0',
  `harga_resep` int(10) NOT NULL DEFAULT '0',
  `harga_nonresep` int(10) NOT NULL DEFAULT '0',
  `jumlah` int(10) NOT NULL DEFAULT '0',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `stock_obat` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kode_obat`, `no_batch`, `kode_golongan`, `nama_obat`, `kode_jenis`, `kode_bentuk`, `kemasan`, `harga_kemasan`, `harga_resep`, `harga_nonresep`, `jumlah`, `expired`, `stock_obat`) VALUES
('OBT002', '5D6707', 'G004', 'BIOLINCOM TAB 500MG', 'J001', 'B001', 'Box isi 100', 554400, 6000, 6000, 283, '2018-01-04', 0),
('OBT003', '3541', 'G004', 'CANICOL  500MG', 'J001', 'B001', 'box isi 100', 190000, 3950, 3950, 93, '2018-12-05', 0),
('OBT004', '34536', 'G004', 'CEFADROXIL CAP', 'J001', 'B012', 'box isi 100', 98000, 1100, 1100, 299, '2019-01-11', 0),
('OBT005', '7898y', 'G004', 'CEFAT CAP 500 MG', 'J001', 'B012', 'box isi 100', 1195000, 12000, 12000, 387, '2018-01-06', 0),
('OBT006', '204076', 'G004', 'CEFIXIME 100 MG', 'J001', 'B012', 'Box isi 50', 88000, 1900, 1900, 148, '2017-01-08', 0),
('OBT007', '51121108', 'G004', 'CIPROFLOXACIN 500MG', 'J001', 'B001', 'box isi 100', 53600, 550, 550, 298, '2019-01-11', 0),
('OBT008', '5d0401', 'G004', 'CLAMIXIN TAB', 'J001', 'B001', 'box isi 30', 407000, 13600, 13600, 26, '2017-01-04', 0),
('OBT001', '222', 'G001', 'idhudhd', 'J003', 'B008', 'kledjjd', 222, 22, 22, 18, '2018-04-28', 0),
('OBT001', '222', 'G002', 'tes666', 'J003', 'B010', 'fvvfv', 222, 222, 222, 20, '2018-05-23', 0),
('OBT009', '662', 'G002', 'oke1', 'J004', 'B010', 'oke', 22, 22, 22, 22, '2018-05-26', 0),
('OBT010', 'aa', 'G002', 'bosnia', 'J003', 'B009', 'okeee', 22, 55, 55, 55, '2018-05-26', 0);

--
-- Triggers `obat`
--
DELIMITER $$
CREATE TRIGGER `insert_obat` AFTER INSERT ON `obat` FOR EACH ROW BEGIN
INSERT INTO stock_masuk (tanggal,no_batch,kode_obat,nama_obat,stock_masuk,kardaluarsa) VALUES (CURRENT_TIMESTAMP,new.no_batch,new.kode_obat,new.nama_obat,new.jumlah,new.expired);
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kode_pembelian` char(15) NOT NULL DEFAULT '',
  `kode_obat` char(10) NOT NULL DEFAULT '',
  `harga_satuan` int(15) NOT NULL DEFAULT '0',
  `jumlah` int(10) NOT NULL DEFAULT '0',
  `total` int(15) NOT NULL DEFAULT '0',
  `tag` char(2) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`tanggal`, `kode_pembelian`, `kode_obat`, `harga_satuan`, `jumlah`, `total`, `tag`) VALUES
('2015-12-01', '51201103529', 'OBT001', 1000, 10, 10000, 'N'),
('2015-12-01', '51201103529', 'OBT002', 2000, 20, 40000, 'N'),
('2015-12-01', '51201104016', 'OBT004', 200, 1, 200, 'N'),
('2015-12-04', '51204041750', 'OBT007', 3000, 7, 21000, 'N'),
('2015-12-04', '51204041750', 'OBT010', 1300, 10, 13000, 'N'),
('2015-12-04', '51204043509', 'OBT007', 3000, 43, 129000, 'N'),
('2015-12-04', '51204102328', 'OBT001', 1000, 1, 1000, 'N'),
('2015-12-04', '51204102328', 'OBT002', 2000, 1, 2000, 'N'),
('2015-12-04', '51204102328', 'OBT005', 22, 1, 22, 'N'),
('2015-12-04', '51204102328', 'OBT006', 500, 1, 500, 'N'),
('2015-12-04', '51204120548', 'OBT007', 3000, 20, 60000, 'N'),
('2015-12-11', '51211090042', 'OBT001', 1000, 20, 20000, 'N'),
('2015-12-22', '51222120453', 'OBT001', 1000, 5, 5000, 'N'),
('2015-12-22', '51222120648', 'OBT001', 1000, 2, 2000, 'N'),
('2015-12-22', '51222120923', 'OBT001', 1000, 1, 1000, 'N'),
('2015-12-22', '51222121028', 'OBT001', 1000, 2, 2000, 'N'),
('2015-12-22', '51222121052', 'OBT001', 1000, 1, 1000, 'N'),
('2015-12-22', '51222121106', 'OBT001', 1000, 1, 1000, 'N'),
('2015-12-22', '51222121130', 'OBT001', 1000, 15, 15000, 'N'),
('2015-12-22', '51222121700', 'OBT001', 1000, 3, 3000, 'N'),
('2015-12-22', '51222133450', 'OBT001', 1000, 10, 10000, 'N'),
('2015-12-22', '51222133515', 'OBT001', 1000, 20, 20000, 'N'),
('2015-12-23', '51223113750', 'OBT001', 1000, 90, 90000, 'N'),
('2015-12-23', '51223113750', 'OBT002', 2000, 90, 180000, 'N'),
('2015-12-23', '51223113750', 'OBT003', 5001, 11, 55011, 'N'),
('2015-12-23', '51223113750', 'OBT004', 200, 190, 38000, 'N'),
('2015-12-23', '51223113750', 'OBT005', 22, 113, 2486, 'N'),
('2015-12-23', '51223114919', 'OBT001', 1000, 6, 6000, 'N'),
('2015-12-23', '51223114919', 'OBT002', 2000, 9, 18000, 'N'),
('2015-12-23', '51223115004', 'OBT001', 1000, 10, 10000, 'N'),
('2015-12-23', '51223115004', 'OBT002', 2000, 10, 20000, 'N'),
('2016-01-07', '60107032904', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-07', '60107032904', 'OBT002', 2000, 2, 4000, 'N'),
('2016-01-07', '60107033102', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-07', '60107042318', 'OBT001', 1000, 5, 5000, 'N'),
('2016-01-07', '60107042400', 'OBT003', 5001, 3, 15003, 'N'),
('2016-01-07', '60107045225', 'OBT001', 1000, 44, 44000, 'N'),
('2016-01-07', '60107045354', 'OBT003', 5001, 3, 15003, 'N'),
('2016-01-07', '60107045414', 'OBT002', 0, 2, 0, 'N'),
('2016-01-07', '60107045532', 'OBT001', 0, 3, 0, 'N'),
('2016-01-07', '60107050040', 'OBT003', 5001, 4, 20004, 'N'),
('2016-01-07', '60107050209', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-07', '60107050323', 'OBT001', 0, 1, 0, 'N'),
('2016-01-07', '60107050705', 'OBT001', 1000, 2, 2000, 'N'),
('2016-01-07', '60107050759', 'OBT001', 10000, 3, 30000, 'N'),
('2016-01-07', '60107051302', 'OBT003', 6001, 2, 12002, 'N'),
('2016-01-07', '60107051310', 'OBT003', 5001, 2, 10002, 'N'),
('2016-01-11', '60111030041', '', 0, 0, 0, 'N'),
('2016-01-11', '60111030523', 'OBT002', 2000, 10, 20000, 'N'),
('2016-01-11', '60111030621', 'OBT003', 5001, 11, 55011, 'N'),
('2016-01-11', '60111030645', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-11', '60111030715', 'OBT003', 5001, 10, 50010, 'N'),
('2016-01-11', '60111030850', 'OBT003', 5001, 2, 10002, 'N'),
('2016-01-11', '60111031108', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-11', '60111031130', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-11', '60111031130', 'OBT003', 5001, 2, 10002, 'N'),
('2016-01-11', '60111031157', 'OBT003', 5001, 1, 5001, 'N'),
('2016-01-21', '60121035152', 'OBT002', 2000, 1, 2000, 'N'),
('2016-01-21', '60121054645', 'OBT001', 10000, 10, 100000, 'N'),
('2016-01-21', '60121091251', 'OBT002', 2000, 1, 2000, 'N'),
('2016-01-25', '60125034206', 'OBT002', 2000, 1, 2000, 'N'),
('2016-01-25', '60125044059', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-25', '60125044834', 'OBT002', 2000, 1, 2000, 'N'),
('2016-01-25', '60125045011', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-25', '60125045803', 'OBT002', 2000, 1, 2000, 'N'),
('2016-01-25', '60125045902', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-25', '60125050003', 'OBT002', 2000, 10, 20000, 'N'),
('2016-01-25', '60125050102', 'OBT002', 2000, 11, 22000, 'N'),
('2016-01-25', '60125050208', 'OBT001', 1000, 11, 11000, 'N'),
('2016-01-25', '60125050236', 'OBT002', 2000, 100, 200000, 'N'),
('2016-01-25', '60125051141', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-27', '60127024217', 'OBT001', 1000, 1, 1000, 'N'),
('2016-01-27', '60127024336', 'OBT001', 1500, 2, 3000, 'N'),
('2016-01-27', '60127113302', 'OBT002', 700, 10, 7000, 'N'),
('2016-01-27', '60127115003', 'OBT001', 1000, 4, 4000, 'N'),
('2016-01-27', '60127115003', 'OBT002', 700, 1, 700, 'N'),
('2016-01-28', '60128034131', 'OBT001', 1500, 2, 3000, 'N'),
('2016-01-28', '60128034137', 'OBT001', 1000, 2, 2000, 'N'),
('2016-01-28', '60128043233', 'OBT001', 1000, 5, 5000, 'N'),
('2016-01-28', '60128043233', 'OBT002', 700, 2, 1400, 'N'),
('2016-01-29', '60129085000', 'OBT001', 1000, 10, 10000, 'N'),
('2016-01-29', '60129085133', 'OBT001', 1000, 20, 20000, 'N'),
('2016-01-29', '60129085255', 'OBT001', 1000, 15, 15000, 'N'),
('2016-01-29', '60129092750', 'OBT001', 44721, 10, 447210, 'N'),
('2016-01-29', '60129092809', 'OBT002', 12632, 10, 126320, 'N'),
('2016-01-29', '60129093040', 'OBT003', 2613, 20, 52260, 'N'),
('2016-01-29', '60129093850', 'OBT002', 13000, 10, 130000, 'N'),
('2016-01-29', '60129134719', 'OBT001', 47916, 20, 958320, 'N'),
('2016-01-29', '60129151043', 'OBT001', 47916, 10, 479160, 'N'),
('2016-01-29', '60129151043', 'OBT002', 13000, 10, 130000, 'N'),
('2016-01-29', '60129153114', 'OBT001', 47916, 11, 527076, 'N'),
('2016-01-29', '60129153114', 'OBT002', 13000, 12, 156000, 'N'),
('2016-01-29', '60129153947', 'OBT001', 44721, 9, 402489, 'N'),
('2016-01-29', '60129153947', 'OBT004', 2200, 1, 2200, 'N'),
('2016-01-30', '60130084832', 'OBT001', 600, 111, 66600, 'N'),
('2016-01-30', '60130084909', 'OBT005', 12000, 11, 132000, 'N'),
('2016-01-30', '60130090440', 'OBT007', 550, 1, 550, 'N'),
('2017-07-13', '70713063437', 'OBT008', 13600, 2, 27200, 'N'),
('2017-07-13', '70713063437', 'OBT009', 12900, 2, 25800, 'N'),
('2017-07-13', '70713063523', 'OBT002', 6000, 12, 72000, 'N'),
('2017-07-13', '70713063523', 'OBT003', 3950, 2, 7900, 'N'),
('2017-07-13', '70713065319', 'OBT003', 3950, 1, 3950, 'N'),
('2017-07-13', '70713065319', 'OBT004', 1100, 1, 1100, 'N'),
('2017-07-13', '70713071057', 'OBT001', 12000, 2, 24000, 'N'),
('2017-07-13', '70713071057', 'OBT008', 13600, 1, 13600, 'N'),
('2017-12-04', '71204123151', 'OBT001', 12000, 2, 24000, 'N'),
('2017-12-04', '71204123151', 'OBT002', 6000, 1, 6000, 'N'),
('2017-12-04', '71204123339', 'OBT007', 550, 1, 550, 'N'),
('2017-12-04', '71204123339', 'OBT008', 13600, 1, 13600, 'N'),
('2018-04-25', '80425073910', 'OBT001', 1111, 5, 5555, 'N'),
('2018-04-25', '80425073910', 'OBT003', 3950, 2, 7900, 'N'),
('2018-04-25', '80425091815', 'OBT001', 11, 1, 11, 'N'),
('2018-05-01', '80501152753', 'OBT005', 12000, 2, 24000, 'N'),
('2018-05-01', '80501152753', 'OBT006', 1900, 2, 3800, 'N'),
('2018-05-01', '80501152845', 'OBT001', 22, 2, 44, 'N'),
('2018-05-01', '80501185435', 'OBT002', 6000, 2, 12000, 'N'),
('2018-05-01', '80501185435', 'OBT003', 3950, 2, 7900, 'N'),
('2018-05-01', '80501185602', 'OBT001', 22, 2, 44, 'N'),
('2018-05-01', '80501185602', 'OBT002', 6000, 2, 12000, 'N');

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `insert_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN
INSERT INTO stock_keluar (tanggal,kode_obat,kode_pembelian,stock_keluar) VALUES (CURRENT_TIMESTAMP,new.kode_obat,new.kode_pembelian,new.jumlah);
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_array`
--

CREATE TABLE `pembelian_array` (
  `tanggal` date DEFAULT '0000-00-00',
  `kode_pembelian` char(15) NOT NULL,
  `kode_obat` text,
  `jumlah` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_array`
--

INSERT INTO `pembelian_array` (`tanggal`, `kode_pembelian`, `kode_obat`, `jumlah`) VALUES
('2015-12-01', '51201103529', 'OBT002,OBT001', '20,10'),
('2015-12-01', '51201104016', 'OBT004', '1'),
('2015-12-04', '51204041750', 'OBT010,OBT007', '10,7'),
('2015-12-04', '51204043509', 'OBT007', '43'),
('2015-12-04', '51204102328', 'OBT002,OBT001,OBT005,OBT006', '1,1,1,1'),
('2015-12-04', '51204120548', 'OBT007', '20'),
('2015-12-11', '51211090042', 'OBT001', '20'),
('2015-12-22', '51222120453', 'OBT001', '5'),
('2015-12-22', '51222120648', 'OBT001', '2'),
('2015-12-22', '51222120923', 'OBT001', '1'),
('2015-12-22', '51222121028', 'OBT001', '2'),
('2015-12-22', '51222121052', 'OBT001', '1'),
('2015-12-22', '51222121106', 'OBT001', '1'),
('2015-12-22', '51222121130', 'OBT001', '15'),
('2015-12-22', '51222121700', 'OBT001', '3'),
('2015-12-22', '51222133450', 'OBT001', '10'),
('2015-12-22', '51222133515', 'OBT001', '20'),
('2015-12-23', '51223113750', 'OBT001,OBT002,OBT003,OBT004,OBT005', '90,90,11,190,113'),
('2015-12-23', '51223114919', 'OBT001,OBT002', '6,9'),
('2015-12-23', '51223115004', 'OBT001,OBT002', '10,10'),
('2016-01-07', '60107032904', 'OBT001,OBT002', '1,2'),
('2016-01-07', '60107033102', 'OBT001', '1'),
('2016-01-07', '60107042318', 'OBT001', '5'),
('2016-01-07', '60107042400', 'OBT003', '3'),
('2016-01-07', '60107045225', 'OBT001', '44'),
('2016-01-07', '60107045354', 'OBT003', '3'),
('2016-01-07', '60107045414', 'OBT002', '2'),
('2016-01-07', '60107045532', 'OBT001', '3'),
('2016-01-07', '60107050040', 'OBT003', '4'),
('2016-01-07', '60107050209', 'OBT001', '1'),
('2016-01-07', '60107050323', 'OBT001', '1'),
('2016-01-07', '60107050705', 'OBT001', '2'),
('2016-01-07', '60107050759', 'OBT001', '3'),
('2016-01-07', '60107051302', 'OBT003', '2'),
('2016-01-07', '60107051310', 'OBT003', '2'),
('2016-01-11', '60111030041', '', ''),
('2016-01-11', '60111030523', 'OBT002', '10'),
('2016-01-11', '60111030621', 'OBT003', '11'),
('2016-01-11', '60111030645', 'OBT001', '1'),
('2016-01-11', '60111030715', 'OBT003', '10'),
('2016-01-11', '60111030850', 'OBT003', '2'),
('2016-01-11', '60111031108', 'OBT001', '1'),
('2016-01-11', '60111031130', 'OBT001,OBT003', '1,2'),
('2016-01-11', '60111031157', 'OBT003', '1'),
('2016-01-21', '60121035152', 'OBT002', '1'),
('2016-01-21', '60121054645', 'OBT001', '10'),
('2016-01-21', '60121091251', 'OBT002', '1'),
('2016-01-25', '60125034206', 'OBT002', '1'),
('2016-01-25', '60125044059', 'OBT001', '1'),
('2016-01-25', '60125044834', 'OBT002', '1'),
('2016-01-25', '60125045011', 'OBT001', '1'),
('2016-01-25', '60125045803', 'OBT002', '1'),
('2016-01-25', '60125045902', 'OBT001', '1'),
('2016-01-25', '60125050003', 'OBT002', '10'),
('2016-01-25', '60125050102', 'OBT002', '11'),
('2016-01-25', '60125050208', 'OBT001', '11'),
('2016-01-25', '60125050236', 'OBT002', '100'),
('2016-01-25', '60125051141', 'OBT001', '1'),
('2016-01-27', '60127024217', 'OBT001', '1'),
('2016-01-27', '60127024336', 'OBT001', '2'),
('2016-01-27', '60127113302', 'OBT002', '10'),
('2016-01-27', '60127115003', 'OBT001,OBT002', '4,1'),
('2016-01-28', '60128034131', 'OBT001', '2'),
('2016-01-28', '60128034137', 'OBT001', '2'),
('2016-01-28', '60128043233', 'OBT001,OBT002', '5,2'),
('2016-01-29', '60129085000', 'OBT001', '10'),
('2016-01-29', '60129085133', 'OBT001', '20'),
('2016-01-29', '60129085255', 'OBT001', '15'),
('2016-01-29', '60129092750', 'OBT001', '10'),
('2016-01-29', '60129092809', 'OBT002', '10'),
('2016-01-29', '60129093040', 'OBT003', '20'),
('2016-01-29', '60129093850', 'OBT002', '10'),
('2016-01-29', '60129134719', 'OBT001', '20'),
('2016-01-29', '60129151043', 'OBT001,OBT002', '10,10'),
('2016-01-29', '60129153114', 'OBT001,OBT002', '11,12'),
('2016-01-29', '60129153947', 'OBT001,OBT004', '9,1'),
('2016-01-30', '60130084832', 'OBT001', '111'),
('2016-01-30', '60130084909', 'OBT005', '11'),
('2016-01-30', '60130090440', 'OBT007', '1'),
('2017-07-13', '70713063437', 'OBT009,OBT008', '2,2'),
('2017-07-13', '70713063523', 'OBT002,OBT003', '12,2'),
('2017-07-13', '70713065319', 'OBT003,OBT004', '1,1'),
('2017-07-13', '70713071057', 'OBT001,OBT008', '2,1'),
('2017-12-04', '71204123151', 'OBT001,OBT002', '2,1'),
('2017-12-04', '71204123339', 'OBT008,OBT007', '1,1'),
('2018-04-25', '80425073910', 'OBT001,OBT003', '5,2'),
('2018-04-25', '80425091815', 'OBT001', '1'),
('2018-05-01', '80501152753', 'OBT005,OBT006', '2,2'),
('2018-05-01', '80501152845', 'OBT001', '2'),
('2018-05-01', '80501185435', 'OBT002,OBT003', '2,2'),
('2018-05-01', '80501185602', 'OBT001,OBT002', '2,2');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_jumlah`
--

CREATE TABLE `pembelian_jumlah` (
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `kode_pembelian` char(15) NOT NULL DEFAULT '',
  `kode_obat` char(10) NOT NULL DEFAULT '',
  `jumlah` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_keluar`
--

CREATE TABLE `stock_keluar` (
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kode_obat` char(15) NOT NULL DEFAULT '',
  `kode_pembelian` char(15) NOT NULL DEFAULT '',
  `stock_keluar` int(15) NOT NULL DEFAULT '0',
  `tag` char(2) NOT NULL DEFAULT 'Y',
  `tag_jual` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_keluar`
--

INSERT INTO `stock_keluar` (`tanggal`, `kode_obat`, `kode_pembelian`, `stock_keluar`, `tag`, `tag_jual`) VALUES
('2016-01-30 14:49:18', 'OBT005', '60130084909', 11, 'N', ''),
('2016-01-30 15:04:52', 'OBT007', '60130090440', 1, 'N', ''),
('2017-07-13 11:34:37', 'OBT008', '70713063437', 2, 'N', ''),
('2017-07-13 11:35:23', 'OBT002', '70713063523', 12, 'N', ''),
('2017-07-13 11:35:23', 'OBT003', '70713063523', 2, 'N', ''),
('2017-07-13 11:53:19', 'OBT003', '70713065319', 1, 'N', ''),
('2017-07-13 11:53:19', 'OBT004', '70713065319', 1, 'N', ''),
('2017-07-13 12:10:57', 'OBT008', '70713071057', 1, 'N', ''),
('2017-12-04 18:31:51', 'OBT002', '71204123151', 1, 'N', ''),
('2017-12-04 18:34:17', 'OBT008', '71204123339', 1, 'N', ''),
('2017-12-04 18:34:17', 'OBT007', '71204123339', 1, 'N', ''),
('2018-04-25 12:39:10', 'OBT003', '80425073910', 2, 'N', ''),
('2018-05-01 20:28:11', 'OBT005', '80501152753', 2, 'N', ''),
('2018-05-01 20:28:11', 'OBT006', '80501152753', 2, 'N', ''),
('2018-05-01 20:28:45', 'OBT001', '80501152845', 2, 'N', ''),
('2018-05-01 23:54:35', 'OBT002', '80501185435', 2, 'N', ''),
('2018-05-01 23:54:35', 'OBT003', '80501185435', 2, 'N', ''),
('2018-05-01 23:59:02', 'OBT001', '80501185602', 2, 'N', ''),
('2018-05-01 23:59:02', 'OBT002', '80501185602', 2, 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_masuk`
--

CREATE TABLE `stock_masuk` (
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_batch` char(20) NOT NULL DEFAULT '',
  `kode_obat` char(15) NOT NULL DEFAULT '',
  `nama_obat` varchar(50) NOT NULL DEFAULT '',
  `stock_masuk` int(15) NOT NULL DEFAULT '0',
  `kardaluarsa` date NOT NULL DEFAULT '0000-00-00',
  `tag` char(2) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_masuk`
--

INSERT INTO `stock_masuk` (`tanggal`, `no_batch`, `kode_obat`, `nama_obat`, `stock_masuk`, `kardaluarsa`, `tag`) VALUES
('2016-01-30 08:48:53', '5D6707', 'OBT002', 'BIOLINCOM TAB 500MG', 300, '2018-01-04', 'Y'),
('2016-01-30 08:51:18', '3541', 'OBT003', 'CANICOL  500MG', 100, '2018-12-05', 'Y'),
('2016-01-30 08:52:54', '34536', 'OBT004', 'CEFADROXIL CAP', 300, '2019-01-11', 'Y'),
('2016-01-30 08:55:24', '7898y', 'OBT005', 'CEFAT CAP 500 MG', 400, '2018-01-06', 'Y'),
('2016-01-30 08:58:01', '204076', 'OBT006', 'CEFIXIME 100 MG', 150, '2017-01-08', 'Y'),
('2016-01-30 08:59:55', '51121108', 'OBT007', 'CIPROFLOXACIN 500MG', 300, '2019-01-11', 'Y'),
('2016-01-30 09:02:29', '5d0401', 'OBT008', 'CLAMIXIN TAB', 30, '2017-01-04', 'Y'),
('2018-04-26 10:56:42', '222', 'OBT001', 'idhudhd', 22, '2018-04-28', 'Y'),
('2018-05-01 23:24:06', '222', 'OBT001', 'tes666', 22, '2018-05-23', 'Y'),
('2018-05-15 01:35:54', '662', 'OBT009', 'oke1', 22, '2018-05-26', 'Y'),
('2018-05-15 01:36:34', 'aa', 'OBT010', 'bosnia', 55, '2018-05-26', 'Y');

--
-- Triggers `stock_masuk`
--
DELIMITER $$
CREATE TRIGGER `insert stock_masuk` AFTER INSERT ON `stock_masuk` FOR EACH ROW BEGIN

    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stock_obat`
--

CREATE TABLE `stock_obat` (
  `kode_stock` char(10) NOT NULL DEFAULT '',
  `jumlah_stock` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_obat`
--

INSERT INTO `stock_obat` (`kode_stock`, `jumlah_stock`) VALUES
('S001', 10),
('S002', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kode_pembelian`,`kode_obat`);

--
-- Indexes for table `pembelian_jumlah`
--
ALTER TABLE `pembelian_jumlah`
  ADD PRIMARY KEY (`kode_pembelian`,`kode_obat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
