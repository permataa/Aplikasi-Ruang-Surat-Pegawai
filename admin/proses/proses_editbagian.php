<?php
	session_start();
	include '../../koneksi/koneksi.php';
    $id				            = mysqli_real_escape_string($db,$_POST['id_bagian']);
	$NIP						= mysqli_real_escape_string($db,$_POST['NIP']);
	$username_admin_bagian		= mysqli_real_escape_string($db,$_POST['username_admin_bagian']);
	$password_bagian 	        = mysqli_real_escape_string($db,sha1($_POST['password_bagian']));
    $nama_pegawai	            = mysqli_real_escape_string($db,$_POST['nama_pegawai']);
	$tanggal_lahir              = date('Y-m-d', strtotime($tanggal_lahir));
	$bidang						= mysqli_real_escape_string($db,$_POST['bidang']);
	$jenis_jabatan			    = mysqli_real_escape_string($db,$_POST['jenis_jabatan']);
	$nama_jabatan	   	        = mysqli_real_escape_string($db,$_POST['nama_jabatan']);
	$tmt_jabatan				= date('Y-m-d', strtotime($tmt_jabatan));
	$tmt_pensiun				= date('Y-m-d', strtotime($tmt_pensiun));
	$gambar			            = $_FILES['gambar']['name'];
    
	
	$sql  		= "SELECT * FROM tb_bagian where id_bagian='".$id."'";                        
	$query  	= mysqli_query($db, $sql);
	$data 		= mysqli_fetch_array($query);
	
    //jika gambar tidak ada
	if ($gambar == ''){
		$ext			= substr($data['gambar'], strripos($data['gambar'], '.'));	
		$nama_baru  		= $username_admin_bagian . $ext;
		rename("../../bagian/images/".$data['gambar'], "../../bagian/images/".$nama_baru);
		$sql = "UPDATE tb_bagian set 
						NIP							= '$NIP',
						username_admin_bagian		= '$username_admin_bagian',
						password_bagian 			= '$password_bagian',
						nama_pegawai                = '$nama_pegawai',
						tanggal_lahir		 		= '$tanggal_lahir',
						bidang						= '$bidang',
						jenis_jabatan		        = '$jenis_jabatan',
						nama_jabatan			    = '$nama_jabatan',
						tmt_jabatan					= '$tmt_jabatan',
						tmt_pensiun					= '$tmt_pensiun',
						gambar						= '$nama_baru' 
				where id_bagian = $id";
				
		$execute = mysqli_query($db, $sql);			
						
		echo "<Center><h2><br>Data Bagian telah terubah</h2></center>
		<meta http-equiv='refresh' content='2;url=../detail-bagian.php?id_bagian=".$id."'>";
	}	
	else{
		
		$tipe_file 		= $_FILES['gambar']['type'];
		$ukuran_file 	= $_FILES['gambar']['size'];
		if (($tipe_file == "image/jpeg" || $tipe_file == "image/jpg" || $tipe_file == "image/png") and ($ukuran_file <= 2100000)){	
			unlink("../../bagian/images/".$data['gambar']);
			$ext_file		= substr($gambar, strripos($gambar, '.'));			
			$tmp_file 		= $_FILES['gambar']['tmp_name'];
			
			$nama_baru = $username_admin_bagian . $ext_file;
			$path = "../../bagian/images/".$nama_baru;
			move_uploaded_file($tmp_file, $path);
			
			$sql = "UPDATE tb_bagian set 
						NIP							= '$NIP',
						username_admin_bagian		= '$username_admin_bagian',
						password_bagian 			= '$password_bagian ',
						nama_pegawai                = '$nama_pegawai',
						tanggal_lahir		 		= '$tanggal_lahir',
						bidang						= '$bidang',
						jenis_jabatan		        = '$jenis_jabatan',
						nama_jabatan			    = '$nama_jabatan',
						tmt_jabatan					= '$tmt_jabatan',
						tmt_pensiun					= '$tmt_pensiun',
						gambar				        = '$nama_baru' 
				where id_bagian = $id";
				
			$execute = mysqli_query($db, $sql);			
		
			echo "<Center><h2><br>Data Bagian telah terubah</h2></center>
				<meta http-equiv='refresh' content='2;url=../detail-bagian.php?id_bagian=".$id."'>";			
		}
		else{
			echo "<Center><h2><br>Gambar yang anda masukkan tidak sesuai ketentuan<br>Silahkan Ulangi</h2></center>
				<meta http-equiv='refresh' content='2;url=../editbagian.php?id_bagian=".$id."'>";
		}
	
	}
	?>
	