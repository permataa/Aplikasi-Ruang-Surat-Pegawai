<?php
	session_start();
	include '../../koneksi/koneksi.php';
	
	$NIP	                = mysqli_real_escape_string($db,$_POST['NIP']);
	$nama_pegawai	                = mysqli_real_escape_string($db,$_POST['nama_pegawai']);
	$bidang	            = mysqli_real_escape_string($db,$_POST['bidang']);
	//$pangkat	                = mysqli_real_escape_string($db,$_POST['pangkat']);
	$jabatan	            = mysqli_real_escape_string($db,$_POST['jabatan']);
	$atasan_langsung	        = mysqli_real_escape_string($db,$_POST['atasan_langsung']);
    $tanggal_ijin                  = mysqli_real_escape_string($db,$_POST['tanggal_ijin']);
	$alasan_ijin	                    = mysqli_real_escape_string($db,$_POST['alasan_ijin']);
	$alamat                = mysqli_real_escape_string($db,$_POST['alamat']);
	$kontak                = mysqli_real_escape_string($db,$_POST['kontak']);

    $tanggal_ijin                  = date('Y-m-d H:i:s', strtotime($tanggal_ijin));
	
	if (!($NIP=='') and !($nama_pegawai=='') and !($bidang =='') and !($jabatan=='') and !($atasan_langsung=='') and !($tanggal_ijin=='') and !($alasan_ijin=='') and !($alamat=='') and !($kontak=='') ){		
		
		$sql = "INSERT INTO tb_suratijin(NIP, nama_pegawai, bidang, jabatan, atasan_langsung, tanggal_ijin, alasan_ijin, alamat, kontak)
				values ('$NIP', '$nama_pegawai', '$bidang', '$jabatan', '$atasan_langsung', '$tanggal_ijin', '$alasan_ijin', '$alamat', '$kontak')";
		$execute = mysqli_query($db, $sql);
		
		echo "<Center><h2><br>Terima Kasih<br>Bagian Telah Didaftarkan ke Sistem</h2></center>
			<meta http-equiv='refresh' content='2;url=../data-suratijin.php'>";
	}
	else{
		echo "<Center><h2>Silahkan isi semua kolom lalu tekan submit<br>Terima Kasih</h2></center>
			<meta http-equiv='refresh' content='2;url=../input-suratijin.php'>";
	}
	
?>
	