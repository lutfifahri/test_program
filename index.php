<?php

include "koneksi.php";

?>

<!DOCTYPE html>
<html>

<head>
    <title>Test Program LUTFI FAHRI</title>
</head>

<body>

    <h2>Test Program</h2>
    <br>
    <button onclick="location.href='daftar.php'">Daftar</button> | <button onclick="location.href='index.php'">Refresh</button>

    <br />
    <br />
    <form action="index.php" method="get">
        <label>Cari :</label>
        <input type="text" name="cari">
        <input type="submit" value="Cari">
    </form>
    <br>
    <?php
    if (isset($_GET['cari'])) {
        $cari = $_GET['cari'];
        echo "<b>Hasil pencarian : " . $cari . "</b>";
    }
    ?>
    <hr>
    <table border="1" width="75%">
        <tr>
            <th>NO</th>
            <th>Nama</th>
            <th>Alamat</th>
            <th>No Telpon</th>
            <th>Nama Upline</th>
            <th>Nama Downline</th>
        </tr>
        <?php
        if (isset($_GET['cari'])) {
            $cari = $_GET['cari'];
            $data = mysqli_query($koneksi, "select * from member INNER JOIN upline ON member.id_upline = upline.id_upline where id like '%" . $cari . "%' or nama like '%" . $cari . "%' or alamat like '%" . $cari . "%' or no_telpon like '%" . $cari . "%' or upline like '%" . $cari . "%' or downline like '%" . $cari . "%' order by id asc ");
        } else {
            $data = mysqli_query($koneksi, "select * from member INNER JOIN upline ON member.id_upline = upline.id_upline");
        }
        $no = 1;
        while ($d = mysqli_fetch_array($data)) {
        ?>
            <tr>
                <td>
                    <center><?php echo $no++; ?></center>
                </td>
                <td>
                    <center><?php echo $d['nama']; ?></center>
                </td>
                <td>
                    <center><?php echo $d['alamat']; ?></center>
                </td>
                <td>
                    <center><?php echo $d['no_telpon']; ?></center>
                </td>
                <td>
                    <center><?php echo $d['downline'] ?></center>
                </td>
                <td>
                    <center><?php echo $d['upline'] ?></center>
                </td>
            </tr>
        <?php } ?>
    </table>
    <hr>