<?php
	session_start();
	include '../../koneksi/koneksi.php';
	
	$NIP	                = mysqli_real_escape_string($db,$_POST['NIP']);
	$nama_pegawai	                = mysqli_real_escape_string($db,$_POST['nama_pegawai']);
	$bidang	            = mysqli_real_escape_string($db,$_POST['bidang']);
	//$pangkat	                = mysqli_real_escape_string($db,$_POST['pangkat']);
	$jabatan	            = mysqli_real_escape_string($db,$_POST['jabatan']);
	$atasan_langsung	        = mysqli_real_escape_string($db,$_POST['atasan_langsung']);
    $tanggal                  = mysqli_real_escape_string($db,$_POST['tanggal']);
	$unit_kerja	                    = mysqli_real_escape_string($db,$_POST['unit_kerja']);
	$lupa_absen                = mysqli_real_escape_string($db,$_POST['lupa_absen']);

    $tanggal                  = date('Y-m-d H:i:s', strtotime($tanggal));
	
	if (!($NIP=='') and !($nama_pegawai=='') and !($bidang =='') and !($jabatan=='') and !($atasan_langsung=='') and !($tanggal=='') and !($unit_kerja=='') and !($lupa_absen=='') ){		
		
		$sql = "INSERT INTO tb_lupaabsen(NIP, nama_pegawai, bidang, jabatan, atasan_langsung, tanggal, unit_kerja, lupa_absen)
				values ('$NIP', '$nama_pegawai', '$bidang', '$jabatan', '$atasan_langsung', '$tanggal', '$unit_kerja', '$lupa_absen')";
		$execute = mysqli_query($db, $sql);
		
		echo "<Center><h2><br>Terima Kasih<br>Bagian Telah Didaftarkan ke Sistem</h2></center>
			<meta http-equiv='refresh' content='2;url=../data-lupaabsen.php'>";
	}
	else{
		echo "<Center><h2>Silahkan isi semua kolom lalu tekan submit<br>Terima Kasih</h2></center>
			<meta http-equiv='refresh' content='2;url=../input-lupaabsen.php'>";
	}
	
?>
	