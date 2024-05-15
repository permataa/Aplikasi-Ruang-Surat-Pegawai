<?php
include 'functions.php';
// Connect to MySQL database
$pdo = pdo_connect_mysql();
// Get the page via GET request (URL param: page), if non exists default the page to 1
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
// Number of records to show on each page
$records_per_page = 5;


// Prepare the SQL statement and get records from our contacts table, LIMIT will determine the page
$stmt = $pdo->prepare('SELECT * FROM ruang ORDER BY id LIMIT :current_page, :record_per_page');
$stmt->bindValue(':current_page', ($page-1)*$records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':record_per_page', $records_per_page, PDO::PARAM_INT);
$stmt->execute();
// Fetch the records so we can display them in our template.
$contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);


// Get the total number of contacts, this is so we can determine whether there should be a next and previous button
$num_contacts = $pdo->query('SELECT COUNT(*) FROM ruang')->fetchColumn();
?>


<?=template_header('Read')?>

<div class="content read">
	<h2>DAFTAR PD PROV. JATIM</h2>
	<a href="createruang.php" class="create-contact">TAMBAH</a>
	<table>
        <thead>
            <tr>
                <td>No</td>
                <td>NAMA KEGIATAN</td>
                <td>BIDANG</td>
                <td>UNDANGAN</td>
                <td>RUANG</td>
                <td>Tanggal Awal</td>
                <td>Tanggal Akhir</td>
                <td>Waktu</td>
                <td>AKSI</td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($contacts as $contact): ?>
            <tr>
                <td><?=$contact['id']?></td>
                <td><?=$contact['nama_kegiatan']?></td>
                <td><?=$contact['bidang']?></td>
                <td><?=$contact['undangan']?></td>
                <td><?=$contact['ruang']?></td>
                <td><?=$contact['tanggal1']?></td>
                <td><?=$contact['tanggal2']?></td>
                <td><?=$contact['waktu']?></td>
                <td class="actions">
                    <a href="updateruang.php?id=<?=$contact['id']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>
                    <a href="deleteruang.php?id=<?=$contact['id']?>" class="trash"><i class="fas fa-trash fa-xs"></i></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="ruang.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_contacts): ?>
		<a href="ruang.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>

