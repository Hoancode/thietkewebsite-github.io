-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2020 at 03:13 PM
-- Server version: 10.2.32-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datlight_ansuzhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `mota`, `thumbnail`) VALUES
(1, 'Shop Bán Acc', 'Source code shop bán nick game online', 'https://shopgaobac.com/tep-tin/1.gif');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc1`
--

CREATE TABLE `danhmuc1` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `danhmuc1`
--

INSERT INTO `danhmuc1` (`id`, `ten`, `mota`, `thumbnail`) VALUES
(1, 'Shop Bán Acc', 'Source code shop bán nick game online', 'https://accgame24h.vn/anh/1%20(3)%20(1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachcode`
--

CREATE TABLE `danhsachcode` (
  `id` bigint(20) NOT NULL,
  `id_danhmuc` bigint(20) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` bigint(20) NOT NULL,
  `demo` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `danhsachcode`
--

INSERT INTO `danhsachcode` (`id`, `id_danhmuc`, `ten`, `mota`, `thumbnail`, `gia`, `demo`) VALUES
(1, 1, 'Demo 01', 'Source code bán acc game tự động', 'https://shopgaobac.com/tep-tin/GaoBac2.gif', 100000, 'https://demo01.thuecodeweb.net/');

-- --------------------------------------------------------

--
-- Table structure for table `danhsachcode1`
--

CREATE TABLE `danhsachcode1` (
  `id` bigint(20) NOT NULL,
  `id_danhmuc` bigint(20) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` bigint(20) NOT NULL,
  `demo` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `download` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `danhsachcode1`
--

INSERT INTO `danhsachcode1` (`id`, `id_danhmuc`, `ten`, `mota`, `thumbnail`, `gia`, `demo`, `download`) VALUES
(1, 1, 'Demo 01', 'Source code bán acc game tự động', 'https://shopdat09.com/baner1111.gif', 100000, 'https://demo01.thuecodeweb.net/', 'https://demo01.thuecodeweb.net/');

-- --------------------------------------------------------

--
-- Table structure for table `giahan_web`
--

CREATE TABLE `giahan_web` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `giahan` bigint(20) NOT NULL,
  `trangthai` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `giahan_web`
--

INSERT INTO `giahan_web` (`id`, `domain`, `giahan`, `trangthai`) VALUES
(3, 'top1phim.com', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lichsu_muasourcecode`
--

CREATE TABLE `lichsu_muasourcecode` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `id_code` bigint(20) NOT NULL,
  `time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `lichsu_muasourcecode`
--

INSERT INTO `lichsu_muasourcecode` (`id`, `uid`, `id_code`, `time`) VALUES
(1, 1, 1, '26/08/2020 - 07:11:49'),
(2, 1, 1, '26/08/2020 - 07:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` bigint(20) NOT NULL,
  `magiamgia` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phantram_giamgia` bigint(20) NOT NULL,
  `loai` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `luotdung` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiamgia`, `phantram_giamgia`, `loai`, `trangthai`, `luotdung`) VALUES
(1, 'bd2dbbb6330fe80c933c0ce203ac107f', 10, 'muasourcecode', 'true', 2),
(2, '4d319170a67f22580d5541570cabdcd6', 10, 'muasourcecode', 'false', 0);

-- --------------------------------------------------------

--
-- Table structure for table `napthe`
--

CREATE TABLE `napthe` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `loaithe` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `menhgia` bigint(20) NOT NULL,
  `serial` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mathe` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` bigint(20) NOT NULL,
  `time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `napthe`
--

INSERT INTO `napthe` (`id`, `uid`, `loaithe`, `menhgia`, `serial`, `mathe`, `trangthai`, `time`) VALUES
(1, 3, 'VIETTEL', 10000, '1000839281233', '1000839281233', 1, '26/08/2020 - 13:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `taoweb`
--

CREATE TABLE `taoweb` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `domain` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_code` bigint(20) NOT NULL,
  `time1` bigint(20) NOT NULL,
  `time2` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thanhtoan` bigint(20) NOT NULL,
  `taikhoanadmin` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhauadmin` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthai` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `taoweb`
--

INSERT INTO `taoweb` (`id`, `uid`, `domain`, `id_code`, `time1`, `time2`, `thanhtoan`, `taikhoanadmin`, `matkhauadmin`, `trangthai`) VALUES
(1, 1, 'top1phim.com', 1, 598401004, '26/08/2019 - 07:16:44', 1, 'admin', '123456', 0),
(2, 1, 'top1phim.com', 1, 1598401017, '26/08/2020 - 07:16:57', 2, 'admin', '123456', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `tien` bigint(20) NOT NULL,
  `chucvu` bigint(20) NOT NULL,
  `time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `taikhoan`, `matkhau`, `tien`, `chucvu`, `time`, `band`) VALUES
(1, 'admin', 'hello', 520000, 9, '26/08/2020 - 05:47:33', 0),
(2, 'Caovanhuy', 'Caovanhuy', 0, 1, '26/08/2020 - 07:55:19', 0),
(3, 'thanhvien', 'thanhvien', 0, 1, '26/08/2020 - 08:38:26', 0),
(4, 'zxc', 'zxc', 0, 1, '26/08/2020 - 09:00:36', 0),
(5, 'hihihihi', 'hihihihi', 0, 1, '26/08/2020 - 09:40:55', 0),
(6, '&lt;script&gt;alert(document.cookie)&lt;/script&gt;', '123123', 0, 1, '26/08/2020 - 10:08:12', 0),
(7, 'hahahaaza1', 'hahahaaza1', 0, 9, '26/08/2020 - 10:46:43', 0),
(8, '&lt;script&gt;alert(\'hi\');&lt;/script&gt;', '&lt;script&gt;alert(\'hi\');&lt;/script&gt;', 0, 1, '26/08/2020 - 12:44:53', 0),
(9, 'zeldris', 'zeldris', 0, 1, '26/08/2020 - 13:06:54', 0),
(10, 'chubedo', 'chubedo123', 0, 1, '26/08/2020 - 14:19:57', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc1`
--
ALTER TABLE `danhmuc1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhsachcode`
--
ALTER TABLE `danhsachcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhsachcode1`
--
ALTER TABLE `danhsachcode1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giahan_web`
--
ALTER TABLE `giahan_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lichsu_muasourcecode`
--
ALTER TABLE `lichsu_muasourcecode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `napthe`
--
ALTER TABLE `napthe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taoweb`
--
ALTER TABLE `taoweb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmuc1`
--
ALTER TABLE `danhmuc1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danhsachcode`
--
ALTER TABLE `danhsachcode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhsachcode1`
--
ALTER TABLE `danhsachcode1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giahan_web`
--
ALTER TABLE `giahan_web`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichsu_muasourcecode`
--
ALTER TABLE `lichsu_muasourcecode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `napthe`
--
ALTER TABLE `napthe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taoweb`
--
ALTER TABLE `taoweb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
