-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 11:56 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_merch`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `user` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `pass` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `user`, `pass`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Pengiriman'),
(0, '16S0B7DEovCqE', 0, '2023-01-26 07:33:46', 'Confirmed'),
(0, '16L2BTuBxS5i2', 0, '2023-01-30 08:47:47', 'Payment'),
(0, '163maQ4T6z2nY', 0, '2023-01-30 08:54:34', 'Payment'),
(0, '16gOi02H1R5G2', 0, '2023-01-30 09:07:18', 'Payment');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(14, '15PzF03ejd8W2', 2, 1),
(0, '16S0B7DEovCqE', 3, 2),
(0, '16S0B7DEovCqE', 0, 2),
(0, '16L2BTuBxS5i2', 0, 2),
(0, '163maQ4T6z2nY', 0, 2),
(0, '16gOi02H1R5G2', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'Tas', '2019-12-20 07:28:34'),
(2, 'Pakaian', '2019-12-20 07:34:17'),
(3, 'Hiasan', '2020-03-16 12:15:40'),
(0, 'Kerajinan', '2023-01-26 00:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(0, '16S0B7DEovCqE', 0, 'Bank Mandi', 'ADC TEAM', '2023-01-29', '2023-01-29 11:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(0, 'Juleha', 'asdfg@gmail.com', '$2y$10$VT0/mVU3OGbPf0Q4IMWH4uFycvsRB61SNJnaA9Ogdi5tXbEC81iz6', '87877', 'kfdbgkdfsgld', '2023-01-26 04:54:42', 'Member', NULL),
(0, 'Sri Wulan', 'sri@gmail.com', '$2y$10$OA5eBJxczkZbiC6BKL7ZNuuMm7x4uMEtluwp7Cz5oC//ULsMyXDJm', '081248795319', 'Kota Sorong, Papua Barat', '2023-01-26 05:53:43', 'Member', NULL),
(0, 'Satria Baku', 'satria@gmail.com', '$2y$10$3bZl3btfDXl.eu8TIDfXweEgtzkVxIVwdxqDIQm2LQSonRgH2uxrm', '081234567890', 'Kota Sorong, Papua Barat', '2023-01-26 06:47:39', 'Member', NULL),
(0, 'ADC TEAM', 'adcteam@gmail.com', '$2y$10$jlBcxFfdbqD6iC.OO2as6.Yc3yonCUC3mSxKuDID2ELfYaNphFU0a', '0987654321', 'Kota Sorong, Papua Barat', '2023-01-29 09:22:04', 'Member', NULL),
(0, 'depi', 'devi@gmail.com', '$2y$10$pe6zZoNzMHqwmUkbmmTxj.nFKfy3TbOr9tlMrhnd0kouf.rhkBJCu', '082297997274', 'sungai maruni', '2023-01-30 06:46:40', 'Member', NULL),
(0, 'maharani', 'maharani@gmail.com', '$2y$10$YhzpXEJ/ueu8Dq2eiFJzQO2mnPG3SloY14JaEiIS9.CXW3DJMIHQ6', '082276767612', 'km.10', '2023-01-30 06:48:17', 'Member', NULL),
(0, 'alfiyya faridah ', 'Alfiyya@gmail.com', '$2y$10$wFizrnLlGQNLH5kuvtSWWOv3TG1tYxVulXqcVx67Ad03S3YHXg8/q', '081354112174', 'jalan. mandiri', '2023-01-30 08:46:28', 'Member', NULL),
(0, 'alfiyyafaridah', 'alfiyyaf@gmail.com', '$2y$10$bDPVBcEHMYPt10CJYFQTHOvX012ZzWGE0UJkEO7CsKZ96l83W1/gO', '081354112174', 'pasar baru', '2023-01-30 08:53:30', 'Member', NULL),
(0, 'alfiyya faridah', 'alfiyyafaridah@gmail.com', '$2y$10$QmArt42H3vFpSWM82EXpo.UQbf9Kr6FTEVt6IcdB919Tawll7c5l6', '08123456789', 'jln rufei', '2023-01-30 09:00:21', 'Member', NULL),
(0, 'alfiyya', 'Alpi@gmail.com', '$2y$10$03LlybW8KJqVR1fijDXMbut6NPnDjVYU5UC8FS7AdVe.3TeuJt4nK', '081354112174', 'jl.mandiri', '2023-01-30 09:06:41', 'Member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Tokopekita'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Tokopekita'),
(3, 'DANA', '0882313132123', 'images/dana.png', 'Tokopekita');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`) VALUES
(0, 2, 'Batik Cendrawasi', 'produk/batik_cendrawasi.png', 'Batik khas papua yang dibuat dengan mesin canggih', 0, 150000, 149900),
(1, 1, 'Tas', 'produk/noken_rajut.jpg', 'Tas Noken', 0, 23000, 19000),
(2, 2, 'Pakaian', 'produk/pakaian.png', 'Pakaian', 0, 24000, 19500),
(3, 3, 'Hiasan', 'produk/hiasan.png', 'Hiasan', 0, 25000, 15000),
(4, 3, 'Tifa Mini', 'produk/tifa_mini.jpg', 'Hiasan Gendang Tifa Khas papua Dari Kulit Elang', 0, 100000, 85000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_seller`
--

CREATE TABLE `tb_seller` (
  `id` int(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` bigint(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_seller`
--

INSERT INTO `tb_seller` (`id`, `nama`, `alamat`, `no_hp`, `email`, `pass`) VALUES
(1, 'Juleha', 'Jl. Jendral Sudirman', 81248795319, 'cek@gmail.com', '$2y$10$gARbQiIta8s.KPYLjzH9IeUiGbrp5gvDFpKrALz6i8tTcvAyhBFgW'),
(2, 'sbifsdkf', 'knhsdkfnd', 47694574, 'kopi@gmail.com', '$2y$10$fX09ZBQVGrCEZPpFT/l6y.WIv9Sx0ARY6ufTA1CHlm0..YZmGv9CO'),
(3, 'devi maharani', 'tamora', 81341106705, 'devimaharani@gmail.com', '$2y$10$BESbZ8YAYA.guV1PPZn9I.eTar0ZKeqjhBHfF7bX9LzU8G/uI.TKC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `id_toko` (`idkategori`),
  ADD KEY `idkategori` (`idkategori`);

--
-- Indexes for table `tb_seller`
--
ALTER TABLE `tb_seller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_seller`
--
ALTER TABLE `tb_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
