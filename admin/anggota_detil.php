<?php 
include_once '../inc/class.perpus.php';
$anggota = new anggota;

if (isset($_GET['nim'])) {
	$nim = $_GET['nim'];
	extract($anggota->getData($nim,'tbl_anggota','nim'));
}
?>

<div class="col-sm-9">
	<h4>Detail Data Anggota</h4>
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
				<td><input class="form-control" disabled type="text" name="nim1" value="<?=$nim;?>"></td>
			</tr>
			<tr>
				<td>Kelebihan</td>
				<td><textarea style="resize:none;width:860px;height:200px;" class="form-control" disabled type="text" name="nama" value="<?=$nama;?>"><?=$nama;?></textarea></td>
			</tr>
			<tr>
				<td>Kekurangan</td>
				<td><textarea style="resize:none;width:860px;height:200px;" class="form-control" disabled type="text" name="tempat_lahir" value="<?=$tempat_lahir;?>"><?=$tempat_lahir;?></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="?page=anggota" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp;Kembali</a>
				</td>
			</tr>
		</table>
	</form>

</div>