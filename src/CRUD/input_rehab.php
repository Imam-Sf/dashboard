<?php
  require_once 'koneksi.php';

  $id_kegiatan=$_POST['id_kegiatan'];
  $kategori_kegiatan=$_POST['kategori_kegiatan'];
  $tempat_kegiatan=$_POST['tempat_kegiatan'];
  $sasaran_kegiatan=$_POST['sasaran_kegiatan'];
  $jml_peserta_kegiatan=$_POST['jml_peserta_kegiatan'];
  $biaya_kegiatan=$_POST['biaya_kegiatan'];
  $keterangan_kegiatan=$_POST['keterangan_kegiatan'];
  $id_petugas=$_POST['id_petugas'];
  if ($id_kegiatan==null || $kategori_kegiatan==null || $tempat_kegiatan==null || $sasaran_kegiatan==null || $jml_peserta_kegiatan==null || $biaya_kegiatan==null
  || $keterangan_kegiatan==null || $id_petugas==null) {
    echo "<script>alert('silahkan lengkapi data');window.location='insert_tsk.php'</script>";
    }else {
      $con= mysqli_query($koneksi, "INSERT INTO tb_kegiatan (id_kegiatan, kategori_kegiatan, tempat_kegiatan, sasaran_kegiatan, jml_peserta_kegiatan, biaya_kegiatan, keterangan_kegiatan, id_petugas)
      values ('$id_kegiatan','$kategori_kegiatan','$tempat_kegiatan','$sasaran_kegiatan','$jml_peserta_kegiatan','$biaya_kegiatan','$keterangan_kegiatan','$id_petugas')");
      echo "<script>alert('terima kasih, data berhasil di masukkan');window.location='halaman_utama.php'</script>";
    }
 ?>
