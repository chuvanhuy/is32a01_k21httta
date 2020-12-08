<?php 
	session_start();
	if (!$_SESSION['da_dang_nhap']) {
		# Đẩy người dùng về trang đăng nhập
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn không có quyền truy cập trang này! Vui lòng đăng nhập hệ thống!');
			</script>
		";
		echo 
		"
			<script type='text/javascript'>
				window.location.href='../admin/dang_nhap.php'
			</script>
		";
	}
;?>

<!DOCTYPE html>
<html>
<head>
	<title>Thực hiện thêm mới tin tức</title>
</head>
<body>
	<?php
		// 1. KẾT NỐI ĐẾN CSDL
		$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

		// 2. Lấy ra dữ liệu thu được từ FORM trước chuyển sang
		$tieu_de = $_POST["txtTieuDe"];
		$mo_ta = $_POST["txtMoTa"];
		$noi_dung = $_POST["txtNoiDung"];

		// Xử lý ảnh minh họa
		$anh_minh_hoa = "../img/".basename($_FILES["txtAnhMinhHoa"]["name"]);
		$file_anh_tam =  $_FILES["txtAnhMinhHoa"]["tmp_name"];
		$result = move_uploaded_file($file_anh_tam, $anh_minh_hoa);
		if(!$result) {
			$anh_minh_hoa = NULL;
		}

		// 3. Viết câu lệnh SQL để thêm mới tin tức vào bảng tbl_tin_tuc
		$sql = "
			INSERT INTO `tbl_tin_tuc` (`id_tin_tuc`, `id_loai_tin_tuc`, `tieu_de`, `mo_ta`, `noi_dung`, `anh_minh_hoa`, `ngay_dang`, `so_luot_doc`, `tac_gia`, `ghi_chu`) VALUES (NULL, '1', '".$tieu_de."', '".$mo_ta."', '".$noi_dung."', '".$anh_minh_hoa."', NULL, '1', NULL, NULL); 
		";

		// echo $sql; exit();

		// 4. Thực hiện truy vấn để thêm mới tin tức
		mysqli_query($ket_noi, $sql);

		// 5. Thông báo việc thêm mới tin tức thành công & đẩy người dùng quay về trang quan trị tin tức
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn đã thêm mới bài viết thành công!');
			</script>
		";
		echo 
		"
			<script type='text/javascript'>
				window.location.href='../admin/quan_tri_tin_tuc.php'
			</script>
		";
	;?>
</body>
</html>