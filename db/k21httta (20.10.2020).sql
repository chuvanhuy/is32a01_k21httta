-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 04:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k21httta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lien_he`
--

CREATE TABLE `tbl_lien_he` (
  `id_lien_he` int(11) NOT NULL,
  `ho_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_phan_hoi` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay_lien_he` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_lien_he`
--

INSERT INTO `tbl_lien_he` (`id_lien_he`, `ho_ten`, `email`, `so_dien_thoai`, `noi_dung_phan_hoi`, `ngay_lien_he`) VALUES
(1, 'Lê Trung Toàn', 'toanlt@gmail.com', '0989999999', 'Phòng tắm thiếu khăn tắm ngày 22/11/2019. Đề nghị khu nghỉ dưỡng cần chuẩn bị chu đáo hơn.', '2020-10-20 02:17:35'),
(2, 'Phan Minh Anh', 'anhpm@gmail.com', '0988777888', 'Chất lượng của khu nghỉ dưỡng quá đỉnh, xứng đáng 6*', '2020-10-20 02:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loai_san_pham`
--

CREATE TABLE `tbl_loai_san_pham` (
  `id_loai_san_pham` int(11) NOT NULL,
  `ten_loai_san_pham` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_loai_san_pham`
--

INSERT INTO `tbl_loai_san_pham` (`id_loai_san_pham`, `ten_loai_san_pham`) VALUES
(1, 'Khách sạn'),
(2, 'Căn hộ dịch vụ'),
(3, 'Homestay'),
(4, 'Loại khác');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loai_tin_tuc`
--

CREATE TABLE `tbl_loai_tin_tuc` (
  `id_loai_tin_tuc` int(11) NOT NULL,
  `ten_loai_tin_tuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_loai_tin_tuc`
--

INSERT INTO `tbl_loai_tin_tuc` (`id_loai_tin_tuc`, `ten_loai_tin_tuc`) VALUES
(1, 'Tin tức chung'),
(2, 'Tin khuyến mại'),
(3, 'Tin tuyển dụng'),
(4, 'Tin tức khác');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `id_nguoi_dung` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dang_nhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lich_su_dang_nhap` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`id_nguoi_dung`, `ten_nguoi_dung`, `ten_dang_nhap`, `email`, `so_dien_thoai`, `mat_khau`, `lich_su_dang_nhap`) VALUES
(1, 'Chu Văn Huy', 'chuvanhuy', 'chuvanhuy@gmail.com', '0904396383', 'huycv', '2020-10-20 01:02:27'),
(2, 'Lê Trung Toàn', 'letrungtoan', 'letrungtoan@gmail.com', '0989999999', '123456', '2020-10-20 01:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_san_pham`
--

CREATE TABLE `tbl_san_pham` (
  `id_san_pham` int(11) NOT NULL,
  `id_loai_san_pham` int(11) DEFAULT NULL,
  `ten_san_pham` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia_ban` float DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ngay_dang` datetime NOT NULL,
  `anh_minh_hoa` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_san_pham`
--

INSERT INTO `tbl_san_pham` (`id_san_pham`, `id_loai_san_pham`, `ten_san_pham`, `mo_ta`, `noi_dung`, `gia_ban`, `so_luong`, `ngay_dang`, `anh_minh_hoa`) VALUES
(1, 2, 'Six Senses Con Dao', 'Biệt thự 3 Phòng ngủ có Hồ bơi Nhìn ra Biển (Ocean View 3 Bedroom Pool Villa)', NULL, 13555900, 3, '2020-10-20 09:07:06', 'six (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `id_tin_tuc` int(11) NOT NULL,
  `id_loai_tin_tuc` int(11) DEFAULT NULL,
  `tieu_de` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_minh_hoa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_dang` datetime DEFAULT NULL,
  `so_luot_doc` int(11) NOT NULL DEFAULT 1,
  `tac_gia` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`id_tin_tuc`, `id_loai_tin_tuc`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `ngay_dang`, `so_luot_doc`, `tac_gia`, `ghi_chu`) VALUES
(1, 1, 'Ngủ trên ca nô, ăn lương khô giải cứu người trong lũ dữ', 'Thượng tá Trần Đức Tới, trưởng Công an huyện Lệ Thủy, cho biết hơn 200 chiến tham gia cứu hộ người dân còn mắc kẹt trong vùng lũ. ', 'Lũ lớn. Nước ngập sâu. Nhà dân bị cô lập. Đội cứu hộ Công an huyện Lệ Thuỷ, Quảng Bình tung 100% lực lượng đi khắc nơi giữa mênh mông biển nước tìm kiếm người dân còn kẹt trong vùng lũ.\r\n\r\nCầm lái canô giữa sóng to, gió lớn đi tìm kiếm người dân đang gặp nạn, Thiếu tá Nguyễn Anh Hùng (Đội Cảnh sát giao thông - trật tự, Công an huyện Lệ Thủy) tập trung cao độ để giữ cho chiếc canô không va vào dây điện, cọc nhọn dễ bị lật chìm. Điện thoại anh Hùng reo liên tục. Anh vừa nhận chỉ đạo từ cấp trên vừa nhận cuộc gọi từ những người dân nhờ ứng cứu. \r\n\r\nĐi cùng với Thiếu tá Hùng còn có hai chiến sĩ, các anh cũng tham gia chiến dịch giải cứu từ những ngày nước mới dâng cao. \"Suốt cả tuần nay anh em tìm kiếm liên tục cả ngày đêm. Ăn tạm lương khô, ngủ trên ca nô để tìm người dân còn bị kẹt lại trong lũ chưa ra được\"- Trung úy Trần Công Hoàng Trung chiến sĩ tham gia cứu hộ chia sẻ.\r\n\r\nĐội cứu hộ trên ca nô khi đi giữa đồng mênh mông nước, sóng to, gió lớn, khi len lỏi vào những khu nhà chật chội để tìm bằng được người còn mắc kẹt giữa dòng lũ dữ.\r\n\r\nCác chiến sĩ tham gia cứu người nên không mang lương thực, chỉ có một ít lương khô ăn tạm. Người dân bơi thuyền theo các chiếc ca nô để xin lương thực cầm hơi, các chiến sĩ đã dùng phần lớn lương khô, nước suối của mình cho người dân vùng lũ.\r\n\r\nCác chiến sĩ cũng có gia đình, người thân đang còn trong vùng lũ nhưng vì nhiệm vụ vẫn cùng đồng đội tham gia cứu hộ, cứu nạn.\r\n\r\nThiếu tá Nguyễn Anh Hùng chia sẻ vợ con anh cũng đang trong vùng ngập nhưng mấy hôm nay tham gia giải cứu còn chưa kịp về thăm nhà. \r\n\r\nThượng tá Trần Đức Tới, trưởng Công an huyện Lệ Thủy cho biết: \"Đội cứu hộ ưu tiên những trường hợp khẩn cấp, nguy hiểm như: bị cô lập, mắc kẹt nguy hiểm, phụ nữ sắp sinh, những ca tai nạn cần ứng cứu\". ', 'lu_lut_mien_trung.jpg', '2020-10-19 08:36:33', 1, 'Lê Trung Toàn', NULL),
(2, 1, 'Ông chủ buôn siêu xe đắt đỏ nhất Việt Nam giã từ cuộc chơi', 'Để sở hữu một chiếc xe siêu sang, đại gia Việt phải chi hàng chục tỷ đồng tiền thuế phí. Thuế phí gấp từ 3-4 lần giá xe nhập khẩu khiến dung lượng thị trường bị thu hẹp. Kỳ vọng về thị trường tiềm năng “tan thành mây khói”.', 'Giã từ “cuộc chơi”\r\n\r\nCông ty cổ phần ô tô Regal và Rolls-Royce Motor Cars Hà Nội đã thông báo chấm dứt quan hệ hợp tác với Rolls-Royce Motor Cars (Anh Quốc). Vào năm 2013, Công ty Regal đã vượt qua nhiều cái tên lớn trong ngành ô tô để trở thành nhà phân phối chính thức xe Rolls-Royce tại Việt Nam và mở showroom đầu tiên tại Hà Nội năm 2014. Đại diện của Công ty Regal cho hay lý do dừng hợp tác là bởi dung lượng thị trường không đủ lớn và hiệu quả kinh doanh chưa tốt.\r\n\r\nTại Việt Nam, số người giàu không ngừng tăng lên hàng năm và nhu cầu về hàng xa xỉ, trong đó có ô tô sang, cũng tăng theo. Chính vì vậy, các doanh nghiệp đều đánh giá đây là thị trường tiềm năng. Các thương hiệu ô tô siêu sang đổ vào Việt Nam, trong đó có Rolls-Royce, Bentley,... với nhiều kỳ vọng.', 'xe_tang_sep.jpg', '2020-10-20 08:43:13', 1, 'Nguyễn Thị Minh', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- Indexes for table `tbl_loai_san_pham`
--
ALTER TABLE `tbl_loai_san_pham`
  ADD PRIMARY KEY (`id_loai_san_pham`);

--
-- Indexes for table `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  ADD PRIMARY KEY (`id_loai_tin_tuc`);

--
-- Indexes for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`id_nguoi_dung`);

--
-- Indexes for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD PRIMARY KEY (`id_san_pham`);

--
-- Indexes for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  MODIFY `id_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_loai_san_pham`
--
ALTER TABLE `tbl_loai_san_pham`
  MODIFY `id_loai_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  MODIFY `id_loai_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `id_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
