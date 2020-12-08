<?php 
	// 1. Đọc dữ liệu từ trang ĐĂNG NHẬP gửi sang
	$ten_dang_nhap = $_POST["txtTaiKhoan"];
	$mat_khau = $_POST["txtMatKhau"];
	echo "Tài khoản: ".$ten_dang_nhap." ; Mật khẩu: ".$mat_khau;

	// 2. KẾT NỐI ĐẾN CSDL
	$ket_noi = mysqli_connect("localhost", "root", "", "k21httta");

	// 3. So sánh dữ liệu nhập vào có khớp với dữ liệu lưu trong CSDL hay không?
	$sql = "
		SELECT *
		FROM tbl_nguoi_dung
		WHERE ten_dang_nhap='".$ten_dang_nhap."' AND mat_khau='".$mat_khau."'
	";

	// 3. Thực thi câu lệnh để xác định dữ liệu có khớp hay không?
	$nguoi_dung = mysqli_query($ket_noi, $sql);
	$so_luong_nguoi_dung = mysqli_num_rows($nguoi_dung);

	echo "<br/><br/> Số lượng người dùng: ".$so_luong_nguoi_dung;

	// 4. Điều hướng người dùng về trang họ được phép truy cập
	if ($so_luong_nguoi_dung ==0) {
		# Đẩy người dùng về trang đăng nhập
		echo 
		"
			<script type='text/javascript'>
				window.alert('Thông tin đăng nhập không chính xác!  Bạn vui lòng thử lại.');
			</script>
		";
		echo 
		"
			<script type='text/javascript'>
				window.location.href='../admin/dang_nhap.php'
			</script>
		";
	} else {
		# Khởi tạo phiên làm việc cho người đăng nhập thành công
		session_start();
		$_SESSION['da_dang_nhap']=1;

		# Đẩy người dùng về trang quản trị hệ thống
		echo 
		"
			<script type='text/javascript'>
				window.alert('Bạn đã đăng nhập thành công. Chào mừng bạn!');
			</script>
		";
		echo 
		"
			<script type='text/javascript'>
				window.location.href='../admin/quan_tri_he_thong.php'
			</script>
		";
	}

;?>