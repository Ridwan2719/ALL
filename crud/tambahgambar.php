<?php
	
	include 'koneksi.php';
	

	function addgambar($data) {
		//ambil data dari kolom tabel
		
		global $conn;
		
		$gambar = upload();
			if( !$gambar ) {
				return false;
				
			}	
			
		$query = " INSERT INTO lokasi VALUES ('$gambar')";
		mysqli_query($conn, $query);
			}
			
		function upload() {
		$namaFile = $_FILES['gambar']['name'];
		$ukuranFile = $_FILES['gambar']['size'];
		$error = $_FILES['gambar']['error'];
		$tmpName = $_FILES['gambar']['tmp_name'];
		
		//cek gambar ada atau tidak
		if( $error === 4 ){
			echo "<script>
					alert('pilih gambar terlebih dahulu!');
					</script>";
					return false;
		}
		
		
		//cek yang diupload adalah gambar
			$ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
			$ekstensiGambar = explode('.', $namaFile);
			$ekstensiGambar = strtolower(end($ekstensiGambar));
			if( !in_array($ekstensiGambar, $ekstensiGambarValid) ) {
				echo "<script>
					alert('yang anda upload bukan gambar!');
					</script>";
		
		return false;
			}
		
		//generate gambar
		$namaFileBaru = uniqid();
		$namaFileBaru .= '.';
		$namaFileBaru .= $ekstensiGambar;
			
			
		//upload file
		move_uploaded_file($tmpName, 'images/' . $namaFileBaru);
		
		return $namaFileBaru;
			
	}
?>