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
	<title>Quản trị hệ thống</title>
</head>
<body>
<div style="text-align: center;">
	<div style="float: left; text-align: center; padding: 20px;">
		<a href="../admin/quan_tri_tin_tuc.php"> <img src="../img/tin_tuc.png" style="width: 100px; height: 100px"> <br/>Quản trị tin tức</a>
	</div>
	<div style="float: left; text-align: center; padding: 20px;">
		<a href="../admin/quan_tri_tin_tuc.php"> <img src="../img/san_pham.jpg" style="width: 100px; height: 100px"> <br/>Quản trị sản phẩm</a>
	</div>
	<div style="float: left; text-align: center; padding: 20px;">
	<div style="float: left; text-align: center;">
		<a href="../admin/quan_tri_tin_tuc.php"> <img src="../img/nguoi_dung.png" style="width: 100px; height: 100px"> <br/>Quản trị người dùng</a>
	</div>
</div>
</body>
</html>