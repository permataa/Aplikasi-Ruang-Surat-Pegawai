<?php ob_start(); ?>
<html>
<head>
  <title>Pengajuan Surat Ijin</title>
    
   <style>
   table {border-collapse:collapse; table-layout:fixed;width: 630px;}
   table td {word-wrap:break-word;width: 20%;}
   </style>
</head>
<body>
  
<h1 style="text-align: center;">
FORMULIR PENGAJUAN IJIN
<br>
DINAS KOMUNIKASI DAN INFORMATIKA PROVINSI JAWA TIMUR
TAHUN 2023

</h1>
<table border="1" width="100%">
<tr>
  <th>NIS</th>
  <th>Nama</th>
  <th>Jenis Kelamin</th>
  <th>Telepon</th>
  <th>Alamat</th>
</tr>
<?php
// Load file koneksi.php
include '../koneksi/koneksi.php';
 
$query = "SELECT * FROM tb_suratijin"; // Tampilkan semua data gambar
$sql = mysqli_query($db, $query); // Eksekusi/Jalankan query dari variabel $query
$row = mysqli_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql
 
if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
    while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
        echo "<tr>";
        echo "<td>".$data['NIP']."</td>";
        echo "<td>".$data['nama_pegawai']."</td>";
        echo "<td>".$data['bidang']."</td>";
        echo "<td>".$data['jabatan']."</td>";
        echo "<td>".$data['alasan_ijin']."</td>";
        echo "</tr>";
    }
}else{ // Jika data tidak ada
    echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
}
?>
</table>
</body>
</html>
<?php
$html = ob_get_contents();
ob_end_clean();
        
require 'html2pdf/autoload.php';
$pdf = new Spipu\Html2Pdf\Html2Pdf('P','A4','en');
$pdf->WriteHTML($html);
$pdf->Output('Pengajuan Surat Ijin .pdf', 'D');
?>