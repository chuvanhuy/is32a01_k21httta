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
	<title>Quản trị người dùng</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style type="text/css">
		table, tr, td {
			border: 1px solid;
			border-collapse: collapse;
			padding: 5px;
		}
	</style>
</head>
<body>
	<div style="width: 950px">
		<div>
			<div style="float: left; width: 150px; padding: 10px;"><img src="../img/logo.png" style="width: 150px; height: auto;"></div>
			<div style="float: left;"><h1 style="text-align: right;"><a href="../admin/quan_tri_he_thong.php">Trang quản trị</a> | <a href="../admin/quan_tri_tin_tuc.php">Quản trị tin tức</a> | <a href="../admin/quan_tri_san_pham.php">Quản trị sản phẩm</a> | <a href="../admin/quan_tri_nguoi_dung.php">Quản trị người dùng</a></h1></div>
		</div>	
		<div style="clear: both;">
			<p>QUẢN TRỊ NGƯỜI DÙNG</p>
			<p><a href="../admin/quan_tri_nguoi_dung_them_moi.php"><img src="../img/add.jpg" style="width: 32px; height: auto;"></a></p>
			<table>
				<tr>
					<td>STT</td>
					<td>Tên người dùng</td>
					<td>Tên đăng nhập</td>
					<td>Email</td>
					<td>Số điện thoại</td>
					<td>Thao tác</td>
				</tr>

			<?php
				// 1. KẾT NỐI ĐẾN CSDL
				$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

				// 2. Lấy dữ liệu mong muốn
				$sql = "
					SELECT *
					FROM tbl_nguoi_dung
					ORDER BY id_nguoi_dung DESC
				";

				// 3. Thực thi câu lệnh lấy ra dữ liệu mong muốn
				$noi_dung_nguoi_dung = mysqli_query($ket_noi, $sql);

				//4. Hiển thị dữ liệu lấy được lên màn hình
				$i=0;
				while ($row = mysqli_fetch_array($noi_dung_nguoi_dung)) {
					$i++;
			;?>
				<!-- ĐOẠN DỮ LIỆU LẶP ĐI LẶP LẠI -->
				<tr>
					<td><?php echo $i;?></td>
					<td><?php echo $row["ten_nguoi_dung"];?></td>
					<td><?php echo $row["ten_dang_nhap"];?></td>
					<td><?php echo $row["email"];?></td>
					<td><?php echo $row["so_dien_thoai"];?> lượt</td>
					<td><a href="../admin/quan_tri_nguoi_dung_sua.php"><img src="../img/edit.png" style="width: 32px; height: auto;"></a> <a href="../admin/quan_tri_nguoi_dung_xoa.php"><img src="../img/delete.png" style="width: 32px; height: auto;"></a></td>
				</tr>
				<!-- KẾT THÚC ĐOẠN DỮ LIỆU LẶP ĐI LẶP LẠI -->
			<?php
				}
			;?>
			</table>
		</div>
	</div>
</body>
</html>