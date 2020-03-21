<!DOCTYPE html>
<html>
  <head>
     
  </head>	
  <body>
	      <form  method="get" action="index.php" id="form">
			<?php
				include 'koneksi.php';
				$deskripsi = mysqli_query($koneksi, "SELECT * from deskripsi");
				echo $data["deskripsi"];
			?>			
  </body>
</html>