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
	<title>Thực hiện sửa tin tức</title>
</head>
<body>
	<h1>CẬP NHẬT TIN TỨC</h1>
	<form method="POST" action="./quan_tri_tin_tuc_sua_thuc_hien.php" enctype="multipart/form-data">
		<?php
			// 1. KẾT NỐI ĐẾN CSDL
			$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

			// 2. Lấy ra ID của tin tức cần sửa
			$id_tin_tuc = $_GET["id"];

			// 3. Lấy dữ liệu mong muốn
			$sql = "
				SELECT *
				FROM tbl_tin_tuc
				WHERE id_tin_tuc='".$id_tin_tuc."'
			";

			// 4. Thực thi câu lệnh lấy ra dữ liệu mong muốn
			$noi_dung_tin_tuc = mysqli_query($ket_noi, $sql);

			// 5. Hiển thị dữ liệu lấy được lên màn hình
			$row = mysqli_fetch_array($noi_dung_tin_tuc);
		;?>

		<p>
			Tiêu đề:<br>
			<input type="text" name="txtTieuDe" style="width: 100%" value="<?php echo $row["tieu_de"];?>">
		</p>
		<p>
			Mô tả:<br>
			<textarea name="txtMoTa" style="width: 100%"><?php echo $row["mo_ta"];?></textarea>
		</p>
		<p>
			Ảnh minh họa:<br>
			<input type="file" name="txtAnhMinhHoa" style="width: 100%">
		</p>
		<p>
			Nội dung:<br>
			<textarea name="txtNoiDung" style="width: 100%"><?php echo $row["noi_dung"];?></textarea>
		</p>
		<button type="submit">Sửa</button>
		<input type="hidden" name="txtID" value="<?php echo $row["id_tin_tuc"];?>">
	</form>
</body>
</html>