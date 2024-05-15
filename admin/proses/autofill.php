<?php
// // autofill.php

// // Koneksi ke database (gantikan dengan koneksi Anda sendiri)
// $koneksi = new mysqli('localhost', 'root', '', 'db_surat');

// // Periksa koneksi
// if ($koneksi->connect_error) {
//     die("Koneksi gagal: " . $koneksi->connect_error);
// }

// // Query untuk mendapatkan data
// $query = "SELECT * FROM tb_bagian";
// $result = $koneksi->query($query);

// // Buat array kosong untuk menyimpan data
// $data = array();

// // Loop melalui hasil query dan tambahkan data ke array
// while ($row = $result->fetch_assoc()) {
//     $data[] = $row;
// }

// // Mengembalikan data dalam format JSON
// echo json_encode($data);

// // Tutup koneksi
// $koneksi->close();

$koneksi = mysqli_connect("localhost", "root", "", "db_surat");

//variabel NIP yang dikirimkan form.php
$NIP = $_GET['NIP'];

//mengambil data
$query = mysqli_query($koneksi, "select * from tb_bagian where NIP='$NIP'");
$userid = mysqli_fetch_array($query);
$data = array(
            'NIP'      =>  @$userid['NIP'],        
            'nama_pegawai'     =>  @$userid['nama_pegawai'],
            'bidang'      =>  @$userid['bidang'],
            'nama_jabatan'      =>  @$userid['nama_jabatan'],
        );
           
//tampil data
echo json_encode($data);

?>