<?php
require_once 'koneksi.php';
$d=$_GET['d'];
$con=mysqli_query($koneksi, "DELETE FROM tb_bb where id_bb='$d'");
if ($con) {
  echo "<script>alert('data berhasil dihapus');window.location='tampil_bb.php'</script>";
}else {
  echo "<script>alert('gagal menghapus data');window.location='tampil_bb.php'</script>";
}
 ?>