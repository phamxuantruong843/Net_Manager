-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlytiemnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `sdtkhachhang` char(10) NOT NULL COMMENT 'sdt KH',
  `idmay` int(11) NOT NULL COMMENT 'id máy tính',
  `idgiatien` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'id giá tiền',
  `thoigianbatdau` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian bắt đầu sử dụng',
  `thoigianketthuc` timestamp NULL DEFAULT NULL COMMENT 'thời gian trả máy',
  `giamgia` int(11) NOT NULL DEFAULT 0,
  `ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`sdtkhachhang`, `idmay`, `idgiatien`, `thoigianbatdau`, `thoigianketthuc`, `giamgia`, `ghichu`) VALUES
('0321312342', 2, '2022-12-15 13:43:34', '2022-12-15 14:17:07', '2022-12-15 14:21:48', 10, ''),
('0321312342', 1, '2022-12-15 13:43:25', '2022-12-15 14:22:37', NULL, 0, ''),
('0321312342', 2, '2022-12-15 13:43:25', '2022-12-15 14:24:34', NULL, 0, ''),
('0321312342', 4, '2022-12-15 14:25:17', '2022-12-15 14:25:24', NULL, 0, ''),
('0321312342', 5, '2022-12-15 14:25:17', '2022-12-15 14:25:36', NULL, 0, ''),
('0321312342', 7, '2022-12-15 14:25:17', '2022-12-15 14:25:49', NULL, 0, ''),
('0329127039', 2, '2022-12-09 14:23:58', '2022-12-09 14:25:13', '2022-12-09 14:26:03', 10, ''),
('0917897869', 2, '2022-12-09 14:23:58', '2022-12-12 02:49:05', '2022-12-12 02:49:28', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `giatien`
--

CREATE TABLE `giatien` (
  `idgiatien` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian cập nhật giá',
  `gia` int(11) NOT NULL COMMENT 'giá tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giatien`
--

INSERT INTO `giatien` (`idgiatien`, `gia`) VALUES
('2022-12-09 14:23:58', 8),
('2022-12-15 13:41:52', 6),
('2022-12-15 13:42:02', 7),
('2022-12-15 13:42:30', 5),
('2022-12-15 13:43:25', 10),
('2022-12-15 13:43:34', 7),
('2022-12-15 14:18:44', 6),
('2022-12-15 14:25:17', 100);

-- --------------------------------------------------------

--
-- Table structure for table `maytinh`
--

CREATE TABLE `maytinh` (
  `id` int(11) NOT NULL COMMENT 'khóa chính',
  `tenmay` varchar(32) NOT NULL COMMENT 'tên máy tính',
  `tinhtrang` varchar(32) NOT NULL DEFAULT 'binhthuong' COMMENT 'bình thường/hỏng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maytinh`
--

INSERT INTO `maytinh` (`id`, `tenmay`, `tinhtrang`) VALUES
(1, 'Máy tính 01', 'Bình thường'),
(2, 'Máy tính 02', 'Bình thường'),
(3, 'Máy tính 03', 'Hỏng'),
(4, 'Máy tính 04', 'Bình thường'),
(5, 'Máy tính 05', 'Bình thường'),
(7, 'Máy tính 07', 'Bình thường'),
(8, 'Máy tính 08', 'Bình thường'),
(9, 'Máy tính 09', 'Bình thường'),
(10, 'Máy tính 10', 'Bình thường'),
(11, 'Máy tính 11', 'Hỏng'),
(12, 'Máy tính 12', 'Bình thường'),
(13, 'Máy tính 13', 'Bình thường'),
(14, 'Máy tính 14', 'Bình thường'),
(15, 'Máy tính 15', 'Bình thường'),
(16, 'Máy tính 16', 'Bình thường'),
(17, 'Máy tính 17', 'Bình thường'),
(18, 'Máy tính 18', 'Hỏng'),
(19, 'Máy tính 6 ', 'Bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `taikhoan` varchar(16) NOT NULL COMMENT 'khóa chính',
  `matkhau` char(32) NOT NULL COMMENT 'mật khẩu mã hóa',
  `loaitaikhoan` varchar(255) NOT NULL DEFAULT 'Bình thường',
  `ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`taikhoan`, `matkhau`, `loaitaikhoan`, `ghichu`) VALUES
('LeHongHai', 'd41d8cd98f00b204e9800998ecf8427e', 'Quản trị', ''),
('nhanvien1', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('nhanvien2', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('nhanvien3', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('QMinh', 'c4ca4238a0b923820dcc509a6f75849b', 'Bình thường', NULL),
('taikhoan001', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('taikhoan01', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('user01', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('Uyencutie', 'c4ca4238a0b923820dcc509a6f75849b', 'Quản trị', '');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinkhachhang`
--

CREATE TABLE `thongtinkhachhang` (
  `sdt` char(10) NOT NULL COMMENT 'khóa chính',
  `hoten` varchar(255) NOT NULL,
  `ngaysinh` date DEFAULT NULL COMMENT 'ngày/tháng/năm sinh KH',
  `diachi` varchar(255) DEFAULT NULL COMMENT 'địa chỉ KH',
  `thoigiandangky` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian đăng ký KH',
  `loaikhachhang` varchar(16) NOT NULL DEFAULT 'binhthuong' COMMENT 'KH bình thường/thân thuộc/VIP',
  `gioitinh` varchar(3) DEFAULT NULL COMMENT 'giới tính KH'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thongtinkhachhang`
--

INSERT INTO `thongtinkhachhang` (`sdt`, `hoten`, `ngaysinh`, `diachi`, `thoigiandangky`, `loaikhachhang`, `gioitinh`) VALUES
('0321312342', 'Lê Hồng Hải', '2022-12-15', 'Hà Nội', '2022-12-15 14:16:50', 'Thân thuộc', 'Nam'),
('0321432143', 'Nguyễn Ngọc Toàn ', '2003-07-15', '255 Cầu Giấy, phường Dịch Vọng, quận Cầu Giấy, thành phố Hà Nội', '2022-12-15 14:04:34', 'Bình thường', 'Nam'),
('0329127039', 'Phạm Hoàng ANh ', '2022-12-01', 'Hà Nội', '2022-12-08 00:49:38', 'Bình thường', 'Nam'),
('0917897869', 'Trương Quang Minh', '2004-04-02', 'Hanoi', '2022-12-12 02:48:40', 'VIP', 'Nam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`sdtkhachhang`,`thoigianbatdau`),
  ADD KEY `idgiatien` (`idgiatien`),
  ADD KEY `idmay` (`idmay`);

--
-- Indexes for table `giatien`
--
ALTER TABLE `giatien`
  ADD PRIMARY KEY (`idgiatien`);

--
-- Indexes for table `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenmay` (`tenmay`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Indexes for table `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  ADD PRIMARY KEY (`sdt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maytinh`
--
ALTER TABLE `maytinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'khóa chính', AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `idmay` FOREIGN KEY (`idmay`) REFERENCES `maytinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sdt` FOREIGN KEY (`sdtkhachhang`) REFERENCES `thongtinkhachhang` (`sdt`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
