<!DOCTYPE html>
<html>

<head>
    <title>TEST LUTFI FAHRI</title>
</head>

<body>
    <h2>Test Program</h2>
    <h3>Lakukan Pendaftaran Di Form ini</h3>
    <hr>
    <form method="post" action="tambah_aksi.php">
        <table>
            <tr>
                <td>Nama</td>
                <td><input type="text" name="nama" /required></td>
            </tr>
            <tr>
                <td>ALAMAT</td>
                <td><textarea name="alamat" id="" /required></textarea></td>
            </tr>
            <tr>
                <td>No Telephone</td>
                <td><input type="number" name="no_telpon" /required></td>
            </tr>
            <tr>
                <!-- <td>UPLINE</td>
                <td><input type=" text" name="upline" id="" /required></td> -->
                <td>Upline</td>
                <td>
                    <select name="id_upline">
                        <option disabled selected>---</option>
                        <?php
                        include "koneksi.php";
                        $query = mysqli_query($koneksi, "SELECT * FROM upline") or die(mysqli_error($koneksi));
                        while ($data = mysqli_fetch_array($query)) {
                            echo "<option value=$data[id_upline]> $data[upline] </option>";
                        }
                        ?>
                    </select>
                    * Setiap member hanya di perbolehkan memilih maksimum 2 downline dan 1 Upline
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="SIMPAN"> | <a href="index.php">Kembali</a> </td>
            </tr>
        </table>
    </form>
    <hr>
</body>

</html>