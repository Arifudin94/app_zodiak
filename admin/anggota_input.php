<?php 
include_once '../inc/class.perpus.php';
$anggota = new anggota;

if (isset($_POST['btn-save'])) {
	$nim = $_POST['nim'];
	$nama = $_POST['nama'];
	$tempat_lahir = $_POST['tempat_lahir'];

	if ($anggota->create($nim,$nama,$tempat_lahir)) {
		header('location:?page=anggota&msg=success');
	}
}
?>
<div class="col-sm-9">
	<h4>Input Data Anggota</h4>
	<hr>
</div>

<div class="col-md-9">
	
	<form method="post" action="">
		<table class="table table-bordered">
			<tr>
				<td>Inisial</td>
				<td><input class="form-control" type="text" name="nim" required></td>
			</tr>
			<tr>
				<td>Kelebihan</td>
				<td><input class="form-control" type="text" name="nama" required></td>
			</tr>
			<tr>
				<td>Kekurangan</td>
				<td><input class="form-control" type="text" name="tempat_lahir" required></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary" name="btn-save">
						<span class="glyphicon glyphicon-plus"></span> Create New Record
					</button>
					<a href="?page=anggota" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp;Kembali</a>
				</td>
			</tr>
		</table>
	</form>

</div>