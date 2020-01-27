<?php
error_reporting(0);
//kode php yang lain

//end of code 
?>

<!DOCTYPE html>
<html>
<head>
	<title>ZODIAK</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
<?php 
session_start();
  include_once 'head.php';
?>
<div class="col-sm-6">
  <h4>Data Inisial</h4>
  <hr>	
</div>
<div id="loginbox" style="margin-top: ;" class="mainbox col-md-12">
	<div class="panel panel-info">
		<div class="panel-heading">
			<a  class="btn btn-success" href="login.php"><span class="glyphicon glyphicon-plus"></span> LOGIN ADMIN</a>
			<div class="pull-right col-md-4">
				<form action="admin/index1.php?page=anggota_search" method="post">				
          <div class="input-group">
				  	<input type="text" name="cari" class="form-control" placeholder="Cari">
				    <span class="input-group-btn">
				    <button type="submit" class="btn btn-default" type="button">
				    	<span class="glyphicon glyphicon-search"></span>
				    </button>
				    </span>
				  </div>
				</form>
      </div>
			<!-- <div class="panel-title">Input Buku</div> -->
		</div>
		<div style="padding-top: 10px" class="panel-body">
		<br>
    <?php 
		if (isset($_GET['msg'])) {
			if ($_GET['msg']=="success") {
				$msg="
				<div class='alert alert-success'>
    		<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    		<strong>Success!</strong> Data berhasil di tambah.
  			</div>
				";
			}elseif ($_GET['msg']=="delete") {
				$msg="
				<div class=\"alert alert-danger\">
    		<a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>
    		<strong>Success!</strong> Data berhasil di hapus.
  			</div>
				";
			}
		}

		if (isset($msg)) {
			echo $msg;
		}
		?>

<table class="table table-bordered">
				<thead>
				<tr>
					<th width="5%">No</th>
					<th><center>Inisial</center> </th>
					<th><center>Kelebihan</center></th>
					<th><center>Kekurangan</center></th>
					<th><center>Aksi</center></th>
					
				</tr>
				</thead>
				<tbody>
				<?php 
				include_once 'inc/class.perpus.php';
				$anggota = new anggota;
				$records_per_page=5;
				$query = "SELECT * FROM tbl_anggota";
				$newquery = $anggota->paging($query,$records_per_page);
				// penomoran page row
				if (isset($_GET['page_no'])) {
					$page = $_GET['page_no'];
				}
				if (empty($page)) {
					$posisi = 0;
					$halaman = 1;
				}else{
					$posisi = ($page - 1) * $records_per_page;
				}
				$no=1+$posisi;
				foreach ($anggota->showData($newquery) as $value) {
					?>
					<tr style="text-align: center;">
					<td><?php echo $no; ?></td>
					<td><?=$value['nim']; ?></a></td>
					<td><?=$value['nama']; ?></td>
					<td><?=$value['tempat_lahir']?></td>
					<td><a href="admin/index1.php?page=detil-anggota&nim=<?=$value['nim'];?>">detail</a></td>
					</tr>
					<?php
					$no++;
				}
				?>
				</tbody>
				<tr>
	        <td colspan="7" align="center">
			    <div class="pagination-wrap">
			      <?php $anggota->paginglink($query,$records_per_page); ?>
			    </div>
		  	  </td>
		    </tr>
			</table>
			Jumlah : <b><?php $anggota->jumlah($query); ?> Inisial</b>
		</div>
	</div>
</div>


</body>


</html>