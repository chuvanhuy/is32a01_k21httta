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
	<title>Quản trị tin tức</title>
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
			<p>QUẢN TRỊ TIN TỨC</p>
			<p><a href="../admin/quan_tri_tin_tuc_them_moi.php"><img src="../img/add.jpg" style="width: 32px; height: auto;"></a></p>
			<table>
				<tr>
					<td>STT</td>
					<td>Ảnh minh họa</td>
					<td>Tiêu đề bài viết</td>
					<td>Tác giả</td>
					<td>Số lượt đọc</td>
					<td>Thao tác</td>
				</tr>

			<?php
				// 1. KẾT NỐI ĐẾN CSDL
				$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

				// 2. Lấy dữ liệu mong muốn
				$sql = "
					SELECT *
					FROM tbl_tin_tuc
					ORDER BY id_tin_tuc DESC
				";

				// 3. Thực thi câu lệnh lấy ra dữ liệu mong muốn
				$noi_dung_tin_tuc = mysqli_query($ket_noi, $sql);

				//4. Hiển thị dữ liệu lấy được lên màn hình
				$i=0;
				while ($row = mysqli_fetch_array($noi_dung_tin_tuc)) {
					$i++;
			;?>
				<!-- ĐOẠN DỮ LIỆU LẶP ĐI LẶP LẠI -->
				<tr>
					<td><?php echo $i;?></td>
					<td><img src="../img/<?php echo $row["anh_minh_hoa"];?>" style="width: 200px; height: auto;"></td>
					<td><?php echo $row["tieu_de"];?></td>
					<td><?php echo $row["tac_gia"];?></td>
					<td><?php echo $row["so_luot_doc"];?> lượt</td>
					<td><a href="../admin/quan_tri_tin_tuc_sua.php?id=<?php echo $row["id_tin_tuc"];?>"><img src="../img/edit.png" style="width: 32px; height: auto;"></a> <a href="../admin/quan_tri_tin_tuc_xoa.php?id=<?php echo $row["id_tin_tuc"];?>"><img src="../img/delete.png" style="width: 32px; height: auto;"></a></td>
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