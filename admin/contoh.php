<!DOCTYPE html>
<html>
<head>
	<title>Import Excel Ke MySQL dengan PHP - www.malasngoding.com</title>
</head>
<body>
	<style type="text/css">
		body{
			font-family: sans-serif;
		}

		p{
			color: green;
		}
	</style>
	

	<?php 
	if(isset($_GET['berhasil'])){
		echo "<p>".$_GET['berhasil']." Data berhasil di import.</p>";
	}
	?>

	<a href="upload.php">IMPORT DATA</a>
	<table border="1">
		<tr>
			<th>No</th>
			<th>Inisial</th>
			<th>Kelebihan</th>
			<th>Kekurangan</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no=1;
		$data = mysqli_query($koneksi,"SELECT * FROM `kriteria` ORDER BY`awalan`ASC");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<th><?php echo $no++; ?></th>
				<th><?php echo $d['awalan']; ?></th>
				<th><?php echo $d['kelebihan']; ?></th>
				<th><?php echo $d['kekurangan']; ?></th>
			</tr>
			<?php 
		}
		?>

	</table>

	<a href="https://www.malasngoding.com/import-excel-ke-mysql-dengan-php">www.malasngoding.com</a>

</body>
</html>