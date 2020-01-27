<!DOCTYPE html>
<html lang="en">
<head>
  <title>APLIKASI ZODIAK</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: auto}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;}
    }
  </style>
</head>
<body>
<?php 
session_start();
  include_once '../head.php';
?>

<div class="container-fluid">

<div class="container-fluid">
  <div class="row content">
    
    <?php 
    error_reporting(0);
    switch ($_GET['page']) {
      // menu buku
      case 'buku':
        include "buku_data.php";
        break;
      case 'detil-buku':
        include "buku_detil.php";
        break;
      case 'buku_input':
        include "buku_input.php";
        break;
      case 'buku_edit':
        include "buku_edit.php";
        break;
      case 'buku_search':
        include "buku_search.php";
        break;
      case 'detil-buku':
        include "buku_detil.php";
        break;

      // menu anggota
      case 'anggota':
        include "../index.php";
        break;
      case 'anggota_input':
        include "anggota_input.php";
        break;
      case 'anggota_edit':
        include "anggota_edit.php";
        break;
      case 'anggota_search':
        include "../anggota_search.php";
        break;
      case 'detil-anggota':
        include '../anggota_detil.php';
        break;

      // menu user
      case 'user':
        include "user_data.php";
        break;
      case 'user_input':
        include "user_input.php";
        break;
      case 'user_edit':
        include "user_edit.php";
        break;
      case 'user_search':
        include "user_search.php";
        break;
      case 'detil-user':
        include "user_detil.php";
        break;

      // Transaksi
      case 'transaksi':
        include "../transaksi_data.php";
        break;
      case 'transaksi_input':
        include "../transaksi_input.php";
        break;
      case 'transaksi_search':
        include "../transaksi_search.php";
        break;

      case 'laporan':
        include "../laporan.php";
        break;
      case 'delete':
        include "delete.php";
        break;

      case 'logout':
        include "../logout.php";
        break;
      
      default:
        include "home.php";
        break;
    }
    ?>
    
  </div>
</div>
</div>
<br>
<footer class="container-fluid">
  <p>&copy; MAPAN <a href="https://phpoison.blogspot.com" target="_blank"></a></p>
</footer>

</body>
</html>

