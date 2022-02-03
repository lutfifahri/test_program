<?php
include "koneksi.php"; //ini untuk masuk ke database
$cekdulu = "SELECT * FROM member WHERE id_upline='$_POST[id_upline]'";
$prosescek = mysqli_query($koneksi, $cekdulu);
if (mysqli_num_rows($prosescek) > 1) { //proses mengingatkan data sudah ada
    echo "<script>alert('Maaf nama Downline telah digunakan Silahkan Cari Nama Downline Lain');history.go(-1) </script>";
} else { //proses menambahkan data, tambahkan sesuai dengan yang kalian gunakan
    // menangkap data yang di kirim dari form
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $no_telpon = $_POST['no_telpon'];
    $id_upline = $_POST['id_upline'];

    // menginput data ke database
    mysqli_query($koneksi, "insert into member values('','$nama','$alamat','$no_telpon','$id_upline')");

    // mengalihkan halaman kembali ke index.php
    header("location:index.php");
}
