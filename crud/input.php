<?php

	include 'koneksi.php';
	include 'ubah.php';
	include 'tambahgambar.php';
	
	//mysqli  harus menggunakan 2 parameters
	$sql = ("SELECT * FROM detail");
	$result = mysqli_query($conn, $sql);
	
	$sql2 = ("SELECT * FROM kontak");
	$result2 = mysqli_query($conn, $sql2);	

	$sql3 = ("SELECT * FROM lokasi");
	$result3 = mysqli_query($conn, $sql3);

	//cek ubah data
	if( isset($_POST["submit"]) ) {
		
		if( ubah($_POST) > 0 ) {
			echo "
				<script>
					alert('data berhasil diubah!');
					document.location.href = 'index.php';
				</script>
			";
			
					} else  {
			"
				<script>
					alert('data berhasil diubah!');
					document.location.href = 'input.php';
				</script>
			";
					}
				
	}
	
		if( isset($_POST["upload"]) ) {
		
		if( addgambar($_POST) > 0 ) {
			echo "
				<script>
					alert('data berhasil diubah!');
					document.location.href = 'input.php';
				</script>
			";
			
					} else  {
			"
				<script>
					alert('data berhasil diubah!');
					document.location.href = 'input.php';
				</script>
			";
					}
				
	}
	
	

?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Google Material Design Input Boxes</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="./style2.css">
</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">
  
  <h2>Google Material Design in CSS3<small>Inputs</small></h2>
  
  <form action="input.php"  method="post" enctype="multipart/form-data">
				
    <div class="group">
				<?php
					while($row = mysqli_fetch_assoc($result)):
					
				?>
      <input type="text" name="deskripsi" value="<?= $row["deskripsi"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Deskripsi</label>
				<?php endwhile; ?>
	
	</div>
				<?php
					while($row = mysqli_fetch_assoc($result2)):
					
				?>
    <div class="group">      
      <input type="text" name="alamat" value="<?= $row["alamat"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Alamat</label>
    </div>
    
	<div class="group">      
      <input type="text" name="nomer" value="<?= $row["nomer"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Nomor</label>
    </div>
	
	<div class="group">      
      <input type="text" name="email" value="<?= $row["email"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Email</label>
    </div>
	
	<div class="group">      
      <input type="text" name="instagram" value="<?= $row["instagram"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Instagram</label>
    </div>
	
	<div class="group">      
      <input type="text" name="bank" value="<?= $row["bank"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Nama Bank</label>
    </div>
	
	<div class="group">      
      <input type="text" name="rekening" value="<?= $row["rekening"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>No. Rekening</label>
    </div>
	
	<div class="group">      
      <input type="text" name="nama" value="<?= $row["nama"];  ?>">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Nama Rekening</label>
    </div>
	
	<button type="submit" class="button button2" value="submit" name="submit">Ubah Data</button>
	
	</br>
	</br>
	</br>
	
	
	
		<div class="group">      
      <input type="file" name="gambar" value="">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Nama Gambar</label>
    </div>
	<button type="submit" class="button button2" value="upload"  name="upload">Upload Gambar</button>	
	<?php endwhile; ?>
  </form>
      
  <p class="footer">
    a <a href="https://scotch.io/tutorials/css/google-material-design-input-boxes-in-css3" target="_blank">tutorial</a> by AU27</a>
  </p>
  
</div>
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>