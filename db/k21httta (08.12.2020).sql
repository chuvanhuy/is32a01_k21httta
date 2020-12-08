-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 08:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 2, 'Six Senses Con Dao', 'Biệt thự 3 Phòng ngủ có Hồ bơi Nhìn ra Biển (Ocean View 3 Bedroom Pool Villa)', NULL, 13555900, 3, '2020-10-20 09:07:06', 'six (1).jpg'),
(2, 1, 'Biệt thự 6ixth Villa', 'Là dòng biệt thự đẳng cấp phục vụ đối tượng doanh nhân....', 'Bla  bla', 8000000, 2, '2020-11-17 08:19:52', NULL);

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
(2, 1, 'Ông chủ buôn siêu xe đắt đỏ nhất Việt Nam giã từ cuộc chơi', 'Để sở hữu một chiếc xe siêu sang, đại gia Việt phải chi hàng chục tỷ đồng tiền thuế phí. Thuế phí gấp từ 3-4 lần giá xe nhập khẩu khiến dung lượng thị trường bị thu hẹp. Kỳ vọng về thị trường tiềm năng “tan thành mây khói”.', 'Giã từ “cuộc chơi”\r\n\r\nCông ty cổ phần ô tô Regal và Rolls-Royce Motor Cars Hà Nội đã thông báo chấm dứt quan hệ hợp tác với Rolls-Royce Motor Cars (Anh Quốc). Vào năm 2013, Công ty Regal đã vượt qua nhiều cái tên lớn trong ngành ô tô để trở thành nhà phân phối chính thức xe Rolls-Royce tại Việt Nam và mở showroom đầu tiên tại Hà Nội năm 2014. Đại diện của Công ty Regal cho hay lý do dừng hợp tác là bởi dung lượng thị trường không đủ lớn và hiệu quả kinh doanh chưa tốt.\r\n\r\nTại Việt Nam, số người giàu không ngừng tăng lên hàng năm và nhu cầu về hàng xa xỉ, trong đó có ô tô sang, cũng tăng theo. Chính vì vậy, các doanh nghiệp đều đánh giá đây là thị trường tiềm năng. Các thương hiệu ô tô siêu sang đổ vào Việt Nam, trong đó có Rolls-Royce, Bentley,... với nhiều kỳ vọng.', 'xe_tang_sep.jpg', '2020-10-20 08:43:13', 1, 'Nguyễn Thị Minh', NULL),
(6, 1, 'Triết lý cho Đà Lạt', 'Bước qua quán cà phê văng vẳng bài hát “Phố xa”, tôi đứng lại, nghe hết ca khúc rồi mới đi tiếp được.', ' Lê Quốc Thắng viết \"Phố xa\" năm 1989 vì tình cờ gặp bóng dáng một cô gái trên dốc phố Đà Lạt. Đà Lạt có hai điều rất đặc biệt: hầu như không sử dụng điều hòa nhiệt độ và không đèn xanh, đèn đỏ. Đường phố không có dạng bàn cờ, lên xuống uốn lượn như đi xa mãi. Có lẽ vì thế, \"phố xa, phố xa ngỡ như thật gần\", chỉ một thoáng ngẫu nhiên đã làm nên ca khúc tuyệt vời.\r\n\r\nĐó là lần tôi ở Đà Lạt non một tháng làm nhiệm vụ nghiên cứu chính sách đất đai cho đồng bào dân tộc thiểu số Tây Nguyên cuối năm 2004. Nguồn lực đất đai rất lớn, nhưng sức mạnh đô thị hóa làm các nhóm nông dân vốn canh tác theo luật tục cộng đồng, sinh kế dựa vào rừng đều phải bán dần đất, lùi sâu vào rừng núi. Trải qua thời bao cấp khó khăn, nhiều kiến trúc giá trị bị xẻ làm chỗ ở, chỗ làm cho các cơ quan. Đà Lạt đã thành một không gian rất bề bộn, bươn bả với cơm áo.\r\n\r\nTôi nhớ lại lần đầu tiên tới thành phố. Tết Bính thìn năm 1977, một năm rưỡi sau thống nhất đất nước với nhiệm vụ tiếp thu tư liệu địa lý đang lưu trữ tại Nhà địa dư Đà Lạt. Tòa nhà quý trước là Nha Địa dư Đông Dương - một trong những kiến trúc đầu tiên của Đà Lạt - giờ là xí nghiệp in bản đồ. Tôi đã ở đây 6 tháng, đi tới những hang cùng, ngõ hẻm, gặp nhiều trí thức ẩn mình.\r\n\r\nĐà Lạt khi đó còn nguyên các kiến trúc xưa với cư dân không lớn. Cuộc sống chưa ồn ào. Một thành phố có không gian phát triển vừa phải trong thung lũng oval ở độ cao khoảng 1.400 mét. Ngoài kia là Tây Nguyên đại ngàn với tiếng nhạc cồng chiêng và tre nứa, ở đây là đô thị đầy chất thơ. Thiên nhiên đặc biệt, kiến trúc chứa văn hóa Pháp biến điệu vào văn hoá bản địa khiến Đà Lạt trở nên quyến rũ. Ngay địa danh \"Đà Lạt\", tưởng bắt nguồn từ Pháp ngữ song lại do người dân tộc đặt tên. \"Đa Lạch\" - tức \"nguồn nước của người Lạch\" - một nhóm thuộc dân tộc Cơ Ho. Từ đây, một thành phố được định vị chuyên biệt về văn hoá, du lịch, nghỉ dưỡng cho toàn cõi Đông Dương hình thành.\r\n\r\nNhưng càng tới Đà Lạt, tôi cảm giác bản sắc cứ phai dần. Những lợi ích kinh tế trước mắt từ đầu tư hiện đại đang choán chỗ các di sản, các dự án gây tranh cãi vẫn tiếp tục ra đời. Hồn cốt, văn hóa thành phố dường như bị lép vế trước đồng tiền trong túi các đại gia. Tôi bắt đầu lo lắng. Làm sao bảo vệ sự khác biệt đã hơn một thế kỷ, sao cho phần hồn đô thị này còn mãi?\r\n\r\nTrải qua thăng trầm lịch sử, nhiều kiến trúc quý đã xuống cấp, quy hoạch cũ gần như bị lãng quên. Quy hoạch thế nào cho Đà Lạt giai đoạn tới là câu hỏi đang đặt ra với chính quyền, người dân và những ai yêu mến Đà Lạt, coi đây là một di sản quốc gia. Đó là lý do tôi cho rằng, quy hoạch Đà Lạt đang cần một triết lý mạch lạc.\r\n\r\nThứ nhất, giữ nguyên được tư duy quy hoạch nguyên bản theo ba trục đô thị để tiếp tục tạo nên một thành phố khác biệt. Tôi xem lại, thấy quy hoạch ban đầu của người Pháp phù hợp đến mức khó thay đổi. Trục chính của Đà Lạt là suối Cam Ly nối qua nhiều hồ tới các thác nước tự nhiên ngoài xa. Đây là trục tự nhiên, không được xây dựng. Lấy tâm là hồ Xuân Hương, trục xoay về phía Đông là tuyến phát triển đô thị hạng sang cho người giàu. Trục về phía Bắc là tuyến phát triển đô thị bình dân.\r\n\r\nThứ hai, phục dựng những kiến trúc cổ xưa đã biến dạng hay mất mát, chỉ cấp phép xây dựng ở những nơi không làm tiêu hao giá trị di sản. Trong thăng trầm hơn 120 năm, đã có lúc người Pháp muốn biến Đà Lạt thành thủ đô của liên bang Đông Dương, rồi có lúc bị bỏ hoang, cư dân không đủ gạo ăn, các kiến trúc sang trọng kiểu Pháp bị sử dụng cho những mục tiêu bình dân nhất. Nhiều công trình tinh xảo bị đập bỏ chỉ vì không hợp với cuộc sống khó khăn. Giờ đây là thời điểm thích hợp để chữa lành đô thị.\r\n\r\nThứ ba, lấy hệ sinh thái đô thị - rừng - nông nghiệp - dịch vụ - du lịch bền vững làm nền tảng cho phát triển, tạo các liên kết cộng sinh kết nối Đà Lạt với các vùng khác. Đà Lạt khác biệt ở kinh tế nông nghiệp đặc thù. Đây là thành phố vườn với hoa, rau, cây ăn trái chất lượng cao. Công nghệ cao chính là động lực để thúc đẩy nông nghiệp, đưa hoa, rau và nông sản ra cả nước và xuất khẩu.\r\n\r\nĐà Lạt đặc biệt không chỉ vì quy hoạch, kiến trúc kiểu Pháp, tôi muốn nhấn mạnh rằng đó là kiến trúc Pháp biến điệu theo bản địa, chính vì vậy tạo nên sự khác biệt hoàn toàn. Tại hội thảo chúng tôi bàn về quy hoạch Đà Lạt tuần trước, lãnh đạo thành phố cho rằng giữ di sản thì lấy tiền đâu mà giữ. Họ nói, hai khách sạn kiến trúc Pháp cổ và sang trọng nhất, mỗi khách sạn 30 tới 40 phòng, cho thuê giá năm sao vẫn lỗ. Tôi bảo, thay vì nhìn vào lát cắt vụn vặt, nếu biến Đà Lạt thành hệ sinh thái cộng sinh, các hoạt động sẽ bổ trợ cho nhau phát triển. Khi ấy, \"tiền\" sẽ rất bền vững.\r\n\r\nCảnh quan và kiến trúc, nông nghiệp công nghệ cao, văn hoá và du lịch hoàn toàn có thể tạo nên một hệ sinh thái: đô thị thân thiện - nông nghiệp - dịch vụ du lịch như một vòng khép kín của hình thái kinh tế tuần hoàn. Tôi tin đó là tương lai bền vững của thành phố cao nguyên này.\r\n\r\nNhìn trên cả thế giới và Việt Nam, chưa có đô thị nào giống Đà Lạt. Đó là lý do ta phải xua đuổi bằng được tư duy đánh đổi Đà Lạt vô giá để lấy một Đà Lạt hiện đại có thể hạch toán ngay bằng tiền.\r\n\r\nĐặng Hùng Võ', '../img/20201104_091050.jpg', NULL, 1, NULL, NULL),
(7, 1, 'Giá vàng thế giới tăng vọt tiến sát sát ngưỡng 2000$', 'Mỗi ounce tăng gần 24 USD lên đỉnh 2 tuần, khi nhà đầu tư kỳ vọng vào gói kích thích mới của Mỹ.', 'Chốt phiên giao dịch 7/12, giá vàng thế giới giao ngay tăng gần 24 USD lên 1.862 USD. Trong phiên, kim loại quý có thời điểm chạm 1.868 USD - cao nhất kể từ ngày 23/11. Đến sáng nay, giá tiếp tục nhích lên 1.864 USD.', '../img/gold-1-4587-1607386748.jpg', NULL, 1, NULL, NULL);

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
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
