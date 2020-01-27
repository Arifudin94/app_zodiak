<!-- import excel ke mysql -->
<!-- www.malasngoding.com -->

<?php 
// menghubungkan dengan koneksi
include 'koneksi.php';
// menghubungkan dengan library excel reader
include "excel_reader2.php";
?>

<?php
// upload file xls
$target = basename($_FILES['filepegawai']['name']) ;
move_uploaded_file($_FILES['filepegawai']['tmp_name'], $target);

// beri permisi agar file xls dapat di baca
chmod($_FILES['filepegawai']['name'],0777);

// mengambil isi file xls
$data = new Spreadsheet_Excel_Reader($_FILES['filepegawai']['name'],false);
// menghitung jumlah baris data yang ada
$jumlah_baris = $data->rowcount($sheet_index=0);

// jumlah default data yang berhasil di import
$berhasil = 0;
for ($i=2; $i<=$jumlah_baris; $i++){

	// menangkap data dan memasukkan ke variabel sesuai dengan kolumnya masing-masing
	$nim     = $data->val($i, 1);
	$nama   = $data->val($i, 2);
	$domisili  = $data->val($i, 3);
	$tgl_lahir  = $data->val($i, 4);
    $jk  = $data->val($i, 4);
    $prodi  = $data->val($i, 5);
	$thn_masuk  = $data->val($i, 6);

	if($nim != "" && $nama != "" && $domisili != "" && $tgl_lahir != "" && $jk != "" && $prodi != "" && $thn_masuk != ""){
		// input data ke database (table data_pegawai)
		mysqli_query($koneksi,"INSERT INTO tbl_anggota(nim,nama,tempat_lahir,tgl_lahir,jk,prodi,thn_masuk)  values($nim','$nama','$domisili','$tgl_lahir','$jk','$prodi','$thn_masuk')");
		$berhasil++;
	}
}

// hapus kembali file .xls yang di upload tadi
unlink($_FILES['filepegawai']['name']);

// alihkan halaman ke index.php
header("location:index.php?page=anggota");
?>