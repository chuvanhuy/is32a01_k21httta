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
	<title>Thêm mới tin tức</title>
</head>
<body>
	<h1>THÊM MỚI TIN TỨC</h1>
	<form method="POST" action="./quan_tri_tin_tuc_them_moi_thuc_hien.php" enctype="multipart/form-data">
		<p>
			Tiêu đề:<br>
			<input type="text" name="txtTieuDe" style="width: 100%">
		</p>
		<p>
			Mô tả:<br>
			<textarea name="txtMoTa" style="width: 100%"></textarea>
		</p>
		<p>
			Ảnh minh họa:<br>
			<input type="file" name="txtAnhMinhHoa" style="width: 100%">
		</p>
		<p>
			Nội dung:<br>
			<textarea name="txtNoiDung" style="width: 100%"></textarea>
		</p>
		<button type="submit">Thêm mới</button>
	</form>
</body>
</html>