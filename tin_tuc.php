<!DOCTYPE html>
<html>
<head>
	<title>IS32A01 | Tin tức</title>
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
			<div style="float: left; width: 150px; padding: 10px;"><img src="img/logo.png" style="width: 150px; height: auto;"></div>
			<div style="float: left;"><h1 style="text-align: right;"><a href="trang_chu.html">Trang chủ</a> | <a href="gioi_thieu.html">Giới thiệu</a> | <a href="tin_tuc.html">Tin tức</a> | <a href="san_pham.html">Sản phẩm</a> | <a href="lien_he.html">Liên hệ</a></h1></div>
		</div>	
		<div style="clear: both;">
			<p>NỘI DUNG TRANG TIN TỨC</p>
			<table>
				<tr>
					<td>STT</td>
					<td>Ảnh minh họa</td>
					<td>Tiêu đề bài viết</td>
					<td>Tác giả</td>
					<td>Số lượt đọc</td>
					<td>Ghi chú</td>
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
					<td><img src="img/<?php echo $row["anh_minh_hoa"];?>" style="width: 200px; height: auto;"></td>
					<td><?php echo $row["tieu_de"];?></td>
					<td><?php echo $row["tac_gia"];?></td>
					<td><?php echo $row["so_luot_doc"];?> lượt</td>
					<td><?php echo $row["ghi_chu"];?></td>
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