<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
// Check if POST data is not empty
if (!empty($_POST)) {
    // Post data not empty insert a new record
    // Set-up the variables that are going to be inserted, we must check if the POST variables exist if not we can default them to blank
    $id = isset($_POST['id']) && !empty($_POST['id']) && $_POST['id'] != 'auto' ? $_POST['id'] : NULL;
    // Check if POST variable "name" exists, if not default the value to blank, basically the same for all variables
    $nama_kegiatan = isset($_POST['nama_kegiatan']) ? $_POST['nama_kegiatan'] : '';
    $bidang = isset($_POST['bidang']) ? $_POST['bidang'] : '';
    $undangan = isset($_POST['undangan']) ? $_POST['undangan'] : '';
    $ruang = isset($_POST['ruang']) ? $_POST['ruang'] : '';
    $tanggal1 = isset($_POST['tanggal1']) ? $_POST['tanggal1'] : '';
    $tanggal2 = isset($_POST['tanggal2']) ? $_POST['tanggal2'] : '';

    // Insert new record into the contacts table
    $stmt = $pdo->prepare('INSERT INTO ruang VALUES (?, ?, ?, ?, ?, ?, ?)');
    $stmt->execute([$id, $nama_kegiatan, $bidang,$undangan, $ruang, $tanggal1, $tanggal2]);
    // Output message
    $msg = 'Created Successfully!';
}
?>


<?=template_header('Create')?>

<div class="content update">
	<h2>FORM KEGIATAN DILUAR</h2>
    <form action="createruang.php" method="post">
        <label for="id">ID</label>
        <input type="text" name="id" id="id">
        <label for="nama_kegiatan">NAMA KEGIATAN</label>
        <input type="text" name="nama_kegiatan" id="nama_kegiatan">
        <label for="bidang">Bidang</label>
        <input type="text" name="bidang" id="bidang">
        <label for="ruang">ruang</label>
        <input type="text" name="ruang" id="ruang">
        <label for="tanggal1">Tanggal Awal</label>
        <input type="text" name="tanggal1" id="tanggal1">
        <label for="tanggal2">Tanggal Akhir</label>
        <input type="text" name="tanggal2" id="tanggal2">
        <fieldset>   
        <legend>Pilih Waktu</legend>
  <div>
    <input type="checkbox" id="waktu" name="waktu1" value="waktu1" />
    <label for="waktu1">08.00-12.00</label>
  </div>
  <div>
    <input type="checkbox" id="waktu" name="waktu2" value="waktu2" />
    <label for="waktu2">13.00-16.00</label>
  </div>
  <div>
    <input type="checkbox" id="waktu" name="waktu3" value="waktu3" />
    <label for="waktu3">08.00-16.00</label>
  </div>
</fieldset>
        <input type="submit" value="Create">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>