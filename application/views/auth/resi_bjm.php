<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>PT. Barokah Langgeng Abadi</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/adminlte/dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/adminlte/plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    
    <body class="hold-transition login-page" style="overflow-y: hidden;background:url(
	'<?php echo base_url('assets/images/gambarlogistik.jpg');?>')no-repeat;background-size:100%;">
        <div class="box">
            <div class="login-logo">
                <img src="<?php echo base_url() ?>assets/images/logoglm.png" alt="" width="20%">
            </div>
            <!-- /.login-logo -->
            <div class="box-body">
            <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari No SPK.." class="form-control">
                <br>
            <?php 
          $listSub = $this->Tbl_pekerjaan_banjarmasin_model->get_all_kerja(); ?>
          <table class="table table-bordered" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
				<th>No SPK</th>
				<th>Tgl Stuf</th>
				<th>Tgl Selesai Stuf</th>
				<th>Etd Kapal</th>
				<th>Eta Kapal</th>
				<th>Tgl Mulai Doring</th>
				<th>Tgl Selesai Doring</th>
				<th>Tgl Bap</th>
				<th>Jumlah Dikerjakan</th>
				<th>Sisa Belum</th>
				<th>Status</th>
				<th>Keterangan</th>
            </tr>
            <?php
            $mulai = 0;
            foreach ($tbl_sub_banjarmasin_data as $tbl_sub_banjarmasin) :
                ?>
                <tr>
			<td width="10px"><?php echo ++$mulai ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_spk ?> - <?php echo $tbl_sub_banjarmasin->kode_sub ?></td>
			
			<td><?php echo $tbl_sub_banjarmasin->tgl_stuf ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_selesai_stuf ?></td>
			<td><?php echo $tbl_sub_banjarmasin->etd_kapal ?></td>
			<td><?php echo $tbl_sub_banjarmasin->eta_kapal ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_mulai_doring ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_selesai_doring ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_bap ?></td>
			<td><?php echo $tbl_sub_banjarmasin->jumlah_dikerjakan ?></td>
			<td><?php echo $tbl_sub_banjarmasin->sisa_belum ?></td>
			<td><?php echo $tbl_sub_banjarmasin->status ?></td>
			<td><?php echo $tbl_sub_banjarmasin->keterangan ?></td>
			<td style="text-align:center" width="200px">
				<button type="submit" class="btn btn-success" data-toggle="modal" data-target="#modal<?php echo $tbl_sub_banjarmasin->id_sub_banjarmasin ?>">
                            Lihat Proses Pekerjaan
          </button>
			</td>
		</tr>
                <?php
            endforeach;
            ?>
        </table>

            </div>
                <!-- /.col -->


                <!-- /.col -->
                <!-- <div class="row" style="margin-top: 20px;">
                    <div class="col-xs-12">
                        <div class="callout callout-info">
                            <h4>Level Super Admin</h4>

                            <p><b>Email</b> : nuris.akbar@gmail.com</p>
                            <p><b>Password</b> : password</p>
                            <hr>
                            <h4>Level Admin</h4>

                            <p><b>Email</b> : hafid@gmail.com</p>
                            <p><b>Password</b> : password</p>
                        </div>
                    </div>

                </div> -->
                </form>




            </div>
            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->

        <!-- jQuery 3 -->
        <script src="<?php echo base_url(); ?>assets/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="<?php echo base_url(); ?>/assets/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="<?php echo base_url(); ?>/assets/adminlte/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
<?php
    $mulai = 0;
    foreach ($tbl_sub_banjarmasin_data as $tbl_sub_banjarmasin) : ?>
  <div class="modal fade" id="modal<?php echo $tbl_sub_banjarmasin->id_sub_banjarmasin ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">Lihat Sub SPK</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- FORM -->
          <table class="table table-bordered" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
				<th>No SPK</th>
				<th>Tgl Stuf</th>
				<th>Tgl Selesai Stuf</th>
				<th>Etd Kapal</th>
				<th>Eta Kapal</th>
				<th>Tgl Mulai Doring</th>
				<th>Tgl Selesai Doring</th>
				<th>Tgl Bap</th>
				<th>Jumlah Dikerjakan</th>
				<th>Sisa Belum</th>
				<th>Status</th>
				<th>Keterangan</th>
			
            </tr><?php
            $mulai = 0;
            $listSub = $this->Tbl_pekerjaan_banjarmasin_model->get_by_id_read($tbl_sub_banjarmasin->id_sub_banjarmasin);
            foreach ($listSub as $tbl_sub_banjarmasin)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$mulai ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_spk ?> - <?php echo $tbl_sub_banjarmasin->kode_sub ?></td>
			
			<td><?php echo $tbl_sub_banjarmasin->tgl_stuf ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_selesai_stuf ?></td>
			<td><?php echo $tbl_sub_banjarmasin->etd_kapal ?></td>
			<td><?php echo $tbl_sub_banjarmasin->eta_kapal ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_mulai_doring ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_selesai_doring ?></td>
			<td><?php echo $tbl_sub_banjarmasin->tgl_bap ?></td>
			<td><?php echo $tbl_sub_banjarmasin->jumlah_dikerjakan ?></td>
			<td><?php echo $tbl_sub_banjarmasin->sisa_belum ?></td>
			<td><?php echo $tbl_sub_banjarmasin->status ?></td>
			<td><?php echo $tbl_sub_banjarmasin->keterangan ?></td>
		</tr>
                <?php
            }
            ?>
        </table>
       
        </div>
      </div>
    </div>
  </div>
<?php endforeach; ?>
    </body>
</html>
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>