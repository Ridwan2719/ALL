<?php

	include 'koneksi.php';
	
	include 'tambahgambar.php';
	
	//mysqli  harus menggunakan 2 parameters
	$sql = ("SELECT * FROM lokasi");
	$result = mysqli_query($conn, $sql);

	//cek ubah data
	if( isset($_POST["submit"]) ) {
		
		if( ubah($_POST) > 0 ) {
			echo "
				<script>
					alert('gambar berhasil diupload!');
					document.location.href = 'input.php';
				</script>
			";
			
					} else  {
			"
				<script>
					alert('gambar gagal diupload!');
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
  
  <h2>Google Material Design in CSS3<small>Inputs Photo</small></h2>
  
  <form action="input_and_gambar.php"  method="post" enctype="multipart/form-data">
				
 
    <div class="group">      
      <input type="text" name="tempat" value="">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Tempat</label>
    </div>
    	
	   <div class="group">      
      <input type="file" name="gambar" value="">
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Gambar</label>
    </div>
	<button type="submit" class="button button2" value="submit"  name="submit">Upload Gambar</button>
  </form>
      
  <p class="footer">
    a <a href="https://scotch.io/tutorials/css/google-material-design-input-boxes-in-css3" target="_blank">tutorial</a> by AU27</a>
  </p>
  
</div>
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>