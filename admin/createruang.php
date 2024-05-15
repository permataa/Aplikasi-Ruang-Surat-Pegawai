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
        $undangan = isset($_POST['undangan']) ? $_POST['undangan'] : '';
        $ruang = isset($_POST['ruang']) ? $_POST['ruang'] : '';
        $tanggal1 = isset($_POST['tanggal1']) ? $_POST['tanggal1'] : '';
        $tanggal2 = isset($_POST['tanggal2']) ? $_POST['tanggal2'] : '';
                
        // Update the record
        $stmt = $pdo->prepare('UPDATE ruang SET id = ?, nama_kegiatan = ?, bidang = ?, ruang = ?, tanggal1 = ?, tanggal2 = ? WHERE id = ?');
        $stmt->execute([$id, $nama_kegiatan, $bidang, $undangan, $ruang, $tanggal1, $tanggal2, $_GET['id']]);
        $msg = 'Updated Successfully!';
    }
    // Get the contact from the contacts table
    $stmt = $pdo->prepare('SELECT * FROM ruang WHERE id = ?');
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
	<h2>UPDATE FASILITAS RUANG<?=$contact['id']?></h2>
    <form action="updatekegiatan.php?id=<?=$contact['id']?>" method="post">
        <label for="id">ID</label>
        <input type="text" name="id" value="<?=$contact['id']?>" id="id">
        <label for="nama_kegiatan">NAMA KEGIATAN</label>
        <input type="text" name="nama_kegiatan" value="<?=$contact['nama_kegiatan']?>" id="nama_kegiatan">
        <label for="bidang">bidang</label>
        <input type="text" name="bidang" value="<?=$contact['bidang']?>" id="bidang">
        <label for="ruang">ruang</label>
        <input type="text" name="ruang" value="<?=$contact['ruang']?>" id="ruang">
        <label for="alamat">alamat</label>
        <input type="text" name="alamat" value="<?=$contact['alamat']?>" id="alamat">
        <label for="tanggal1">tanggal1</label>
        <input type="text" name="tanggal1" value="<?=$contact['tanggal1']?>" id="tanggal1">
        <label for="tanggal2">tanggal2</label>
        <input type="text" name="tanggal2" value="<?=$contact['tanggal2']?>" id="tanggal2"> 
        <input type="submit" value="Update">
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
<?=template_footer()?>


  <!-- pake query, if now() = tgl crudnya maka tampilkan -->