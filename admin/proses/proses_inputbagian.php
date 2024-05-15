<?php
	// session_start();
	// include '../../koneksi/koneksi.php';
	
	// $id_bagian	                = mysqli_real_escape_string($db,$_POST['id_bagian']);
	// $NIP	                	= mysqli_real_escape_string($db,$_POST['NIP']);
	// $username_admin_bagian		= mysqli_real_escape_string($db,$_POST['username_admin_bagian']);
	// $password_bagian 	        = mysqli_real_escape_string($db,sha1($_POST['password_bagian']));
	// $nama_pegawai	            = mysqli_real_escape_string($db,$_POST['nama_pegawai']);
	// $tanggal_lahir				= mysqli_real_escape_string($db,$_POST['tanggal_lahir']);
	// $bidang						= mysqli_real_escape_string($db,$_POST['bidang']);
	// $jenis_jabatan	            = mysqli_real_escape_string($db,$_POST['jenis_jabatan']);
	// $nama_jabatan	        	= mysqli_real_escape_string($db,$_POST['nama_jabatan']);
	// $tmt_jabatan                = mysqli_real_escape_string($db,$_POST['tmt_jabatan']);
	// $tmt_pensiun                = mysqli_real_escape_string($db,$_POST['tmt_pensiun']);
	
	// $nama_file_lengkap 		= $_FILES['gambar']['name'];
	// $nama_file 		= substr($nama_file_lengkap, 0, strripos($nama_file_lengkap, '.'));
	// $ext_file		= substr($nama_file_lengkap, strripos($nama_file_lengkap, '.'));
	// $tipe_file 		= $_FILES['gambar']['type'];
	// $ukuran_file 	= $_FILES['gambar']['size'];
	// $tmp_file 		= $_FILES['gambar']['tmp_name'];
	
    // $tmt_jabatan                  = date('Y-m-d', strtotime($tmt_jabatan));
	// $tmt_pensiun                  = date('Y-m-d', strtotime($tmt_pensiun));
	// $tanggal_lahir				= date('Y-m-d', strtotime($tanggal_lahir));
	
	// if (!($id_bagian=='') and !($NIP=='') and !($username_admin_bagian=='') and !($password_bagian =='') and !($nama_pegawai=='') and !($tanggal_lahir=='') and !($bidang=='') and !($jenis_jabatan=='') and !($nama_jabatan=='') and !($tmt_jabatan=='') and !($tmt_pensiun=='')  and 
	// 	($tipe_file == "image/jpeg" || $tipe_file == "image/jpg" || $tipe_file == "image/png") and ($ukuran_file <= 2100000)){		
		
	// 	$nama_baru = $username_admin_bagian . $ext_file;
	// 	$path = "../../bagian/images/".$nama_baru;
	// 	move_uploaded_file($tmp_file, $path);
		
	// 	$sql = "INSERT INTO tb_bagian(id_bagian, NIP, username_admin_bagian, password_bagian, nama_pegawai, tanggal_lahir, bidang, jenis_jabatan, nama_jabatan, , tmt_jabatan, tmt_pensiun, gambar)
	// 			values ('$id_bagian','$NIP', '$username_admin_bagian', '$password_bagian', '$nama_pegawai', '$tanggal_lahir', '$bidang', '$jenis_jabatan', '$nama_jabatan', '$tmt_jabatan', '$tmt_pensiun')";
	// 	$execute = mysqli_query($db, $sql);
		
	// 	echo "<Center><h2><br>Terima Kasih<br>Bagian Telah Didaftarkan ke Sistem</h2></center>
	// 		<meta http-equiv='refresh' content='2;url=../databagian.php'>";
	// }
	// else{
	// 	echo "<Center><h2>Silahkan isi semua kolom lalu tekan submit<br>Terima Kasih</h2></center>
	// 		<meta http-equiv='refresh' content='2;url=../inputbagian.php'>";
	// }
	
?>
	

	<?php
	session_start();
	include '../../koneksi/koneksi.php';
	
	$id_bagian	                = mysqli_real_escape_string($db,$_POST['id_bagian']);
	$NIP	                	= mysqli_real_escape_string($db,$_POST['NIP']);
	$username_admin_bagian		= mysqli_real_escape_string($db,$_POST['username_admin_bagian']);
	$password_bagian 	        = mysqli_real_escape_string($db,sha1($_POST['password_bagian']));
	$nama_pegawai	            = mysqli_real_escape_string($db,$_POST['nama_pegawai']);
	$tanggal_lahir				= mysqli_real_escape_string($db,$_POST['tanggal_lahir']);
	$bidang						= mysqli_real_escape_string($db,$_POST['bidang']);
	$jenis_jabatan	            = mysqli_real_escape_string($db,$_POST['jenis_jabatan']);
	$nama_jabatan	        	= mysqli_real_escape_string($db,$_POST['nama_jabatan']);
	$tmt_jabatan                = mysqli_real_escape_string($db,$_POST['tmt_jabatan']);
	$tmt_pensiun                = mysqli_real_escape_string($db,$_POST['tmt_pensiun']);

        date_default_timezone_set('Asia/Jakarta'); 
		$tanggal_entry  = date("Y-m-d H:i:s");
        $thnNow = date("Y");
	
		$nama_file_lengkap 		= $_FILES['gambar']['name'];
		$nama_file 		= substr($nama_file_lengkap, 0, strripos($nama_file_lengkap, '.'));
		$ext_file		= substr($nama_file_lengkap, strripos($nama_file_lengkap, '.'));
		$tipe_file 		= $_FILES['gambar']['type'];
		$ukuran_file 	= $_FILES['gambar']['size'];
		$tmp_file 		= $_FILES['gambar']['tmp_name'];
		
		$tmt_jabatan                  = date('Y-m-d', strtotime($tmt_jabatan));
		$tmt_pensiun                  = date('Y-m-d', strtotime($tmt_pensiun));
		$tanggal_lahir				= date('Y-m-d', strtotime($tanggal_lahir));

    if (!($id_bagian=='') and !($NIP=='') and !($username_admin_bagian=='') and !($password_bagian =='') and !($nama_pegawai=='') and !($tanggal_lahir=='') and !($bidang=='') and !($jenis_jabatan=='') and !($nama_jabatan=='') and !($tmt_jabatan=='') and !($tmt_pensiun=='')  and 
		($tipe_file == "image/jpeg" || $tipe_file == "image/jpg" || $tipe_file == "image/png") and ($ukuran_file <= 2100000)){		
		
		$nama_baru = $username_admin_bagian . $ext_file;
		$path = "../../bagian/images/".$nama_baru;
		move_uploaded_file($tmp_file, $path);
		
		$sql = "INSERT INTO tb_bagian(id_bagian, NIP, username_admin_bagian, password_bagian, nama_pegawai, tanggal_lahir, bidang, jenis_jabatan, nama_jabatan, , tmt_jabatan, tmt_pensiun, gambar)
				values ('$id_bagian','$NIP', '$username_admin_bagian', '$password_bagian', '$nama_pegawai', '$tanggal_lahir', '$bidang', '$jenis_jabatan', '$nama_jabatan', '$tmt_jabatan', '$tmt_pensiun')";
		$execute = mysqli_query($db, $sql);
		
		echo "<Center><h2><br>Terima Kasih<br>Surat masuk Telah Dimasukkan</h2></center>
			<meta http-equiv='refresh' content='2;url=../databagian.php'>";
	}
	else{
		echo "<Center><h2>Silahkan isi semua kolom lalu tekan submit<br>Terima Kasih</h2></center>
			<meta http-equiv='refresh' content='2;url=../inputbagian.php'>";
	}
	
?>
	