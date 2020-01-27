<html>
<body onLoad="window.print();">

   <style type="text/css">
body {
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
}
.style1{
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
}
</style>
<p align="center">LAPORAN DATA INISIAL</p>
  <table width="100%" cellspacing="0" cellpadding="2" border="1px" class="style1">
   	      
  <tr>
    <th width="1%" align="center" class="style1" bgcolor="#CCCCCC">No</th>
   	<th width="3%" align="center" class="style1" bgcolor="#CCCCCC">Inisial</th>
   	<th width="30%" align="center" class="style1" bgcolor="#CCCCCC">Kelebihan</th>
    <th width="30%" align="center" class="style1" bgcolor="#CCCCCC">Kekurangan</th>
    
  </tr>
          
  <?php
  include_once 'inc/class.perpus.php';
  $anggota = new anggota;
	$query = "SELECT * FROM tbl_anggota ORDER by nim";  
	$no = 1;
				
				foreach ($anggota->showData($query) as $data) {
			?>
   	        <tbody>
   	          <tr>
   	            <td align="center"><?php echo $no; ?></td>
   	            <td align="center"><?php echo $data['nim']; ?></td>
   	            <td ><?php echo $data['nama']; ?></td>
                <td align="center"><?php echo $data['tempat_lahir']; ?></td>
                
                
              </tr>
              
      <?php $no++; } ?>
           
    </tbody>
</table>
          
</body>
</html>