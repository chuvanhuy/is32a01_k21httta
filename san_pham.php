<!DOCTYPE html>
<html>
<head>
	<title>IS32A01 | Sản phẩm</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div style="width: 950px">
		<div>
			<div style="float: left; width: 150px; padding: 10px;"><img src="img/logo.png" style="width: 150px; height: auto;"></div>
			<div style="float: left;"><h1 style="text-align: right;"><a href="trang_chu.html">Trang chủ</a> | <a href="gioi_thieu.html">Giới thiệu</a> | <a href="tin_tuc.html">Tin tức</a> | <a href="san_pham.html">Sản phẩm</a> | <a href="lien_he.html">Liên hệ</a></h1></div>
		</div>	
		<div style="clear: both;">
			<p>NỘI DUNG TRANG SẢN PHẨM</p>
			<table>
				<tr>
					<td>STT</td>
					<td>Ảnh minh họa</td>
					<td>Tên sản phẩm</td>
					<td>Mô tả</td>
					<td>Giá bán</td>
					<td>Số lượng</td>
				</tr>

			<?php
				// 1. KẾT NỐI ĐẾN CSDL
				$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

				// 2. Lấy dữ liệu mong muốn
				$sql = "
					SELECT *
					FROM tbl_san_pham
					ORDER BY id_san_pham DESC
				";

				// 3. Thực thi câu lệnh lấy ra dữ liệu mong muốn
				$noi_dung_san_pham = mysqli_query($ket_noi, $sql);

				//4. Hiển thị dữ liệu lấy được lên màn hình
				$i=0;
				while ($row = mysqli_fetch_array($noi_dung_san_pham)) {
					$i++;
			;?>
				<!-- ĐOẠN DỮ LIỆU LẶP ĐI LẶP LẠI -->
				<tr>
					<td><?php echo $i;?></td>
					<td><img src="img/<?php echo $row["anh_minh_hoa"];?>" style="width: 200px; height: auto;"></td>
					<td><?php echo $row["ten_san_pham"];?></td>
					<td><?php echo $row["mo_ta"];?></td>
					<td><?php echo $row["gia_ban"];?></td>
					<td><?php echo $row["so_luong"];?> phòng</td>
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