<!DOCTYPE html>
<?php
session_start();
include "login/ceksession.php";
?>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
    <title>Republik Diskominfo </title>

    <!-- Bootstrap -->
    <link href="../assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../assets/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../assets/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../assets/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../assets/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../assets/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="../assets/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../assets/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../assets/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link rel="shortcut icon" href="../img/icon.ico">

    <!-- Custom Theme Style -->
    <link href="../assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <!-- Profile and Sidebarmenu -->
        <?php
        include("sidebarmenu.php");
        ?>
        <!-- /Profile and Sidebarmenu -->

        <!-- top navigation -->
        <?php
        include("header.php");
        ?>
        <!-- /top navigation -->   

<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
// Check if the contact id exists, for example update.php?id=1 will get the contact with the id of 1
if (isset($_GET['id'])) {
    if (!empty($_POST)) {
        // This part is similar to the create.php, but instead we update a record and not insert
        $id = isset($_POST['id']) ? $_POST['id'] : NULL;
        $nama_kegiatan = isset($_POST['nama_kegiatan']) ? $_POST['nama_kegiatan'] : '';
        $bidang = isset($_POST['bidang']) ? $_POST['bidang'] : '';
        $tempat = isset($_POST['tempat']) ? $_POST['tempat'] : '';
        $alamat = isset($_POST['alamat']) ? $_POST['alamat'] : '';
        $tanggal1 = isset($_POST['tanggal1']) ? $_POST['tanggal1'] : '';
        $tanggal2 = isset($_POST['tanggal2']) ? $_POST['tanggal2'] : '';
        $waktu = isset($_POST['waktu']) ? $_POST['waktu'] : '';
        $qr_sukma = isset($_POST['qr_sukma']) ? $_POST['qr_sukma'] : '';
                
        // Update the record
        $stmt = $pdo->prepare('UPDATE kegiatan SET id = ?, nama_kegiatan = ?, bidang = ?, tempat = ?, alamat = ?, tanggal1 = ?, tanggal2 = ?, waktu = ?, qr_sukma = ? WHERE id = ?');
        $stmt->execute([$id, $nama_kegiatan, $bidang, $tempat, $alamat, $tanggal1, $tanggal2, $waktu, $qr_sukma, $_GET['id']]);
        $msg = 'Updated Successfully!';
    }
    // Get the contact from the contacts table
    $stmt = $pdo->prepare('SELECT * FROM kegiatan WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    $contact = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$contact) {
        exit('Contact doesn\'t exist with that ID!');
    }
} else {
    exit('No ID specified!');
}
?>



<?=template_header('Read')?>

<div class="content update">
	<h2>Update KEGIATAN DI LUAR<?=$contact['id']?></h2>
    <form action="updatekegiatan.php?id=<?=$contact['id']?>" method="post">
        <label for="id">ID</label>
        <input type="text" name="id" value="<?=$contact['id']?>" id="id">
        <label for="nama_kegiatan">NAMA KEGIATAN</label>
        <input type="text" name="nama_kegiatan" value="<?=$contact['nama_kegiatan']?>" id="nama_kegiatan">
        <label for="bidang">bidang</label>
        <input type="text" name="bidang" value="<?=$contact['bidang']?>" id="bidang">
        <label for="tempat">tempat</label>
        <input type="text" name="tempat" value="<?=$contact['tempat']?>" id="tempat">
        <label for="alamat">alamat</label>
        <input type="text" name="alamat" value="<?=$contact['alamat']?>" id="alamat">
        <label for="tanggal1">tanggal1</label>
        <input type="text" name="tanggal1" value="<?=$contact['tanggal1']?>" id="tanggal1">
        <label for="tanggal2">tanggal2</label>
        <input type="text" name="tanggal2" value="<?=$contact['tanggal2']?>" id="tanggal2">
        <label for="waktu">waktu</label>
        <input type="text" name="waktu" value="<?=$contact['waktu']?>" id="waktu">
        <label for="qr_sukma" class="control-label col-md-3 col-sm-3 col-xs-12">Qr Sukma <span class="required">*</span>
        <input name="qr_sukma" accept="application/pdf" type="file" id="qr_sukma" class="form-control" autocomplete="off"/></input> (Maksimal 10 MB )
        <input type="submit" value="Update">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>

    <!-- jQuery -->
    <script src="../assets/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../assets/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../assets/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../assets/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../assets/vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../assets/vendors/moment/min/moment.min.js"></script>
    <script src="../assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../assets/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../assets/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../assets/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../assets/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../assets/vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../assets/vendors/select2/dist/js/select2.full.min.js"></script>
        <script src="../assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="../assets/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
    <!-- Parsley -->
    <script src="../assets/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../assets/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../assets/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../assets/vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../assets/build/js/custom.min.js"></script>
	 <!-- Initialize datetimepicker -->
<script>
    $('#myDatepicker').datetimepicker();
    
    $('#myDatepicker2').datetimepicker({
        format: 'DD.MM.YYYY'
    });
    
    $('#myDatepicker3').datetimepicker({
        format: 'hh:mm A'
    });
    
    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });

    $('#datetimepicker6').datetimepicker();
    
    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });
    
    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    
    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
</script>
<script language='javascript'>
function validAngka(a)
{
	if(!/^[0-9.]+$/.test(a.value))
	{
	a.value = a.value.substring(0,a.value.length-1000);
	}
}
</script>
  </body>
</html>