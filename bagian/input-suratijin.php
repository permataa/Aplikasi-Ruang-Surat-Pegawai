<!DOCTYPE html>
<?php
session_start();
include "login/ceksession.php";
?>

<?php
include "config.php";
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

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Admin</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Admin ><small>Tambah Pegawai</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form action="proses/proses_inputsuratijin.php"  name="formbagian" method="post" enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                      <div class="form-group">
                        <label for="inputPassword" class="control-label col-md-3 col-sm-3 col-xs-12">NIP</label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <select id="NIP" name="NIP" class="form-control" onchange="isi_otomatis()" autocomplete="off" placeholder="NIP" required autofocus>
                                    <option value='' selected>- Pilih -</option>
                                    <?php
                                        $karyawan = mysqli_query($config,"SELECT * FROM tb_bagian");
                                        while ($row = mysqli_fetch_array($karyawan)) {
                                            echo "<option value='$row[NIP]'>$row[NIP]</option>";
                                        }
                                    ?> 
                                </select>
                            </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword" class="control-label col-md-3 col-sm-3 col-xs-12">Nama Pegawai</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="nama_pegawai" name="nama_pegawai" class="form-control form-control col-md-7 col-xs-12" autocomplete="off" placeholder="Nama Pegawai" readonly>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword" class="control-label col-md-3 col-sm-3 col-xs-12">Bidang</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="bidang" name="bidang" class="form-control col-md-7 col-xs-12" autocomplete="off" placeholder="Bidang" readonly>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword" class="control-label col-md-3 col-sm-3 col-xs-12">Pangkat/Golongan</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="pangkat" name="pangkat" class="form-control col-md-7 col-xs-12" autocomplete="off" placeholder="Pangkat/Golongan" readonly>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword" class="control-label col-md-3 col-sm-3 col-xs-12">Nama Jabatan</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="nama_jabatan" name="jabatan" class="form-control col-md-7 col-xs-12" autocomplete="off" placeholder="Nama Jabatan" readonly>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Atasan Langsung <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="atasan_langsung" name="atasan_langsung" required="required" placeholder="Masukkan Atasan Langsung" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tanggal Ijin <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                        <div class='input-group date' id='myDatepicker4'>
                            <input type='text' id="tanggal_ijin" name="tanggal_ijin" required="required" class="form-control" required="required" readonly="readonly" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Alasan Ijin <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea id="alasan_ijin" name="alasan_ijin" required="required" class="form-control" rows="3" placeholder='Masukkan Alasan Ijin'></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Alamat <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <textarea id="alamat" name="alamat" required="required" class="form-control" rows="3" placeholder='Masukkan Alamat'></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Kontak <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                          <input type="text" id="kontak" name="kontak" required="required" placeholder="Masukkan Kontak" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <a href="databagian.php" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span> Batal</a>
                          <button type="submit" name="input" value="Simpan" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Simpan</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript">
            function isi_otomatis(){
                var NIP = $("#NIP").val();
                $.ajax({
                    url: 'proses/autofill.php',
                    data:"NIP="+NIP ,
                }).success(function (data) {
                    var json = data,
                    obj = JSON.parse(json);
                    $('#NIP').val(obj.NIP);
                    $('#nama_pegawai').val(obj.nama_pegawai);
                    $('#bidang').val(obj.bidang);
                    $('#nama_jabatan').val(obj.nama_jabatan);
                });
            }
        </script>
  </body>
</html>
