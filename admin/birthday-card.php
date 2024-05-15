<!DOCTYPE html>
<html>
<head>
    <title>Ulang Tahun</title>
</head>
<body>
    <?php
    // Koneksi ke database (ganti dengan informasi koneksi database Anda)
    $koneksi = mysqli_connect("localhost", "root", "", "db_surat");

    // Mendapatkan tanggal hari ini dari database
    $result = mysqli_query($koneksi, "SELECT NOW() AS tanggal_sekarang");
    $row = mysqli_fetch_assoc($result);
    $tanggalHariIni = $row['tanggal_sekarang'];

    // Mendapatkan tanggal lahir user dari database
    $result = mysqli_query($koneksi, "SELECT tanggal_lahir FROM tb_bagian WHERE id = 1");
    $row = mysqli_fetch_assoc($result);
    $tanggalLahir = $row['tanggal_lahir'];

    // Memeriksa apakah ulang tahun telah terlewat
    $query = "SELECT IF(NOW() <= CONCAT(YEAR(NOW()), '-', DATE_FORMAT(tanggal_lahir, '%m-%d')), 1, 0) AS ulang_tahun";
    $result = mysqli_query($koneksi, $query);
    $row = mysqli_fetch_assoc($result);
    $ulangTahun = $row['ulang_tahun'];

    // Menampilkan pesan ulang tahun jika ulang tahun belum terlewat
    if ($ulangTahun == 1) {
        ?>
        <h1>Selamat Ulang Tahun!</h1>
        <p>Terima kasih telah mengunjungi halaman ini pada hari ulang tahun Anda.</p>
        <?php
    }
    ?>
</body>
</html>
