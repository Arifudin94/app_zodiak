<?php 
include_once '../inc/class.perpus.php';
$anggota = new anggota;

if (isset($_POST['btn-update'])) {
	$nim = $_GET['nim'];
	$nim1 = $_POST['nim1'];
	$nama = $_POST['nama'];
	$tempat_lahir = $_POST['tempat_lahir'];
	
	if ($anggota->update($nim,$nim1,$nama,$tempat_lahir)) {
		$msg = "<div class='alert alert-info'>
			<strong>WOW!</strong> Record was updated successfully <a href='?page=anggota'>HOME</a>!
		</div>";
	}else{
		$msg = "<div class='alert alert-warning'>
		<strong>SORRY!</strong> ERROR while updating record !
		</div>";
	}
}

if (isset($_GET['nim'])) {
	$nim = $_GET['nim'];
	extract($anggota->getData($nim,'tbl_anggota','nim'));
}
?>

<div class="col-sm-9">
	<h4>Edit Data Anggota</h4>
	<hr>
</div>

<div class="col-md-9">
	
<?php 
if (isset($msg)) {
	echo $msg;
}
?>

	<form method="post">
		<table class="table table-bordered">
		<tr>
				<td>Inisial</td>
				<td><input class="form-control" type="text" name="nim1" value="<?=$nim;?>"></td>
			</tr>
			<tr>
				<td>Kelebihan</td>
				<td><textarea class="form-control"  type="text" name="nama" value="<?=$nama;?>"><?=$nama;?></textarea></td>
			</tr>
			<tr>
				<td>Kekurangan</td>
				<td><textarea class="form-control"  type="text" name="tempat_lahir" value="<?=$tempat_lahir;?>"><?=$tempat_lahir;?></textarea></td>
			</tr>
			

			<tr>
				<td colspan="2">
					<button type="submit" class="btn btn-primary" name="btn-update">
						<span class="glyphicon glyphicon-edit"></span> Update
					</button>
					<a href="?page=anggota" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp;Kembali</a>
				</td>
			</tr>
		</table>
	</form>

</div>