<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>PT. GLM</title>
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
        <link rel="icon" href="<?=base_url()?>/assets/images/favicon.ico">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    
    <body class="hold-transition login-page" style="overflow-y: hidden;background:url(
	'<?php echo base_url('assets/images/gambarlogistik.jpg');?>')no-repeat;background-size:100%;">
        <div class="login-box">
            <div class="login-logo">
                <img src="<?php echo base_url() ?>assets/images/logoglm2.png" alt="" width="40%">
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <?php
                $status_login = $this->session->userdata('status_login');
                if (empty($status_login)) {
                    $message = "Silahkan login untuk masuk ke aplikasi";
                } else {
                    $message = $status_login;
                }
                ?>
                <p class="login-box-msg"><?php echo $message; ?></p>

                <!--<form action="<?php echo base_url(); ?>/adminlte/index2.html" method="post">-->
                <?php echo form_open('auth/cheklogin'); ?>
                <div class="form-group has-feedback">
                    <input type="email" class="form-control" name="email" placeholder="Email">
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name="password" placeholder="Password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-danger btn-block btn-flat"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</button>
                    </div>
                    
                    <!-- <div class="col-xs-4">
                    <?php echo anchor(site_url('auth/resi_bjm'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Cek Resi Banjarmasin', 'class="btn btn-primary btn-sm"'); ?>
                    </div> --> 
                    
                    <!-- <div class="col-xs-4">
                    <?php echo anchor(site_url('auth/resi_jkt'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Cek Resi Jakarta', 'class="btn btn-success btn-sm"'); ?>
                    </div> --> 
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
<div class="modal fade" id="modalResi" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
          <?php 
          $listSub = $this->Tbl_pekerjaan_banjarmasin_model->get_all_kerja(); ?>
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
            </tr>
            <?php
            $mulai = 0;
            foreach ($listSub as $tbl_sub_banjarmasin) :
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
            endforeach;
            ?>
        </table>
    </body>
</html>
