<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/style-do.css" rel="stylesheet">
<title>Surat Ijin</title>
<body style="padding: 0 20;">
    <div>
    
    <?php include '../koneksi/koneksi.php';
                     $id			= mysqli_real_escape_string($db,$_GET['id_suratijin']);
                     $sql  		= "SELECT * FROM tb_suratijin where id_suratijin='".$id."'";                        
                     $query  	= mysqli_query($db, $sql);
                     $data 		= mysqli_fetch_array($query);?>
      <section class="content">
        <div class="row">
            <div>
                <div class="header">
                    <p >FORMULIR PENGAJUAN IJIN
                      <br>
                        DINAS KOMUNIKASI DAN INFORMATIKA PROVINSI JAWA TIMUR
                        <br>
                        TAHUN 2023</p>
                </div>
            </div>
        </div>
        <div class="row">
          <div id="isi">
            <div class="content1">
              <table class="table-content">
                <tbody>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1" width="30%">
                      <p class="c4">
                        <span class="c3">NAMA</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1" width="30px">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['nama_pegawai']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">NIP</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['NIP']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Pangkat/Gol</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['pangkat']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Jabatan</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['jabatan']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Tanggal Ijin</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['tanggal_ijin']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Alasan Ijin</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['alasan_ijin']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Alamat</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['alamat']; ?></span>
                      </p>
                    </td>
                  </tr>
                  <tr class="c12">
                    <td class="c1" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3">Kontak</span>
                      </p>
                    </td>
                    <td class="c15" colspan="1" rowspan="1">
                      <p class="c17">
                        <span class="c3">:</span>
                      </p>
                    </td>
                    <td class="c18" colspan="1" rowspan="1">
                      <p class="c4">
                        <span class="c3"><?php echo $data['kontak']; ?></span>
                      </p>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="content2">
              <p>Surabaya, <span id="tanggalwaktu"></span></p>
            </div>
            <div class="content3">
              <div class="kolom-1">
                <p>Mengetahui : <br> Atasan langsung,</p>
                    <br>
                    <br>
                    <br>
                    <br>
                    <p><span>RATNA DIAH AYUNINGTYAS, S.E.</span><br>NIP. 19800224 201001 2 009</p>
              </div>
              <div class="kolom-2">
              <p>Pengaju ijin,</p>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <p><span>ANA ERISTIA WULANDARI, S.Kom.</span><br>NIP.  19830331 201001 2 009</p>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
   <script>
      window.print()
  </script>
  <script>
  var tw = new Date();
  if (tw.getTimezoneOffset() == 0) (a=tw.getTime() + ( 7 *60*60*1000))
  else (a=tw.getTime());
  tw.setTime(a);
  var tahun= tw.getFullYear ();
  var bulan= tw.getMonth ();
  var tanggal= tw.getDate ();
  var bulanarray=new Array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nopember","Desember");
  document.getElementById("tanggalwaktu").innerHTML = tanggal+" "+bulanarray[bulan]+" "+tahun;
  </script>