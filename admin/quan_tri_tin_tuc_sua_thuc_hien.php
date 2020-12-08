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
	<title>Thực hiện cập nhật tin tức</title>
</head>
<body>
	<?php
		// 1. KẾT NỐI ĐẾN CSDL
		$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

		// 2. Lấy ra dữ liệu thu được từ FORM trước chuyển sang
		$id_tin_tuc = $_POST["txtID"];
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
		if($anh_minh_hoa == NULL) {
			$sql = "
			UPDATE `tbl_tin_tuc` 
			SET 
				`tieu_de` = '".$tieu_de."',
				`mo_ta` = '".$mo_ta."', 
				`noi_dung` = '".$noi_dung."' 
			WHERE `tbl_tin_tuc`.`id_tin_tuc` = '".$id_tin_tuc."' 
			";
		} else {
			$sql = "
			UPDATE `tbl_tin_tuc` 
			SET 
				`tieu_de` = '".$tieu_de."',
				`mo_ta` = '".$mo_ta."', 
				`noi_dung` = '".$noi_dung."', 
				`anh_minh_hoa` = '".$anh_minh_hoa."'  
			WHERE `tbl_tin_tuc`.`id_tin_tuc` = '".$id_tin_tuc."' 
			";
		}

		// echo $sql; exit();

		// 4. Thực hiện truy vấn để thêm mới tin tức
		mysqli_query($ket_noi, $sql);

		// 5. Thông báo việc thêm mới tin tức thành công & đẩy người dùng quay về trang quan trị tin tức
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn đã cập nhật bài viết thành công!');
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