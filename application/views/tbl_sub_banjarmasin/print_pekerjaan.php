<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
    <p align="center"><img src="<?php echo base_url() ?>assets/images/kopglm2-transformed.png" align="center" width="100%"></p>	
    <body>
            <h3>
				<center>
					LAPORAN PROSES PEKERJAAN <br>
				</center>
			</h3>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
            <th>No SPK</th>
            <th>Tanggal Stuf</th>
            <th>Tanggal Selesai Stuf</th>
            <th>Etd Kapal</th>
            <th>Eta Kapal</th>
            <th>Tanggal Mulai Doring</th>
            <th>Tanggal Selesai Doring</th>
            <th>Tanggal Bap</th>
            <th>Jumlah Dikerjakan</th>
            <th>Sisa Belum</th>
            <th>Status</th>
            <th>Keterangan</th>
		
            </tr>
                <tr>
		      <td><?php 
              $start = 0;
              echo ++$start ?></td>
		      <td><?php echo $no_spk ?> - <?php echo $kode_sub ?> </td>
		      <td><?php echo $tgl_stuf ?></td>
		      <td><?php echo $tgl_selesai_stuf ?></td>
		      <td><?php echo $etd_kapal ?></td>
		      <td><?php echo $eta_kapal ?></td>
		      <td><?php echo $tgl_mulai_doring ?></td>
		      <td><?php echo $tgl_selesai_doring ?></td>
		      <td><?php echo $tgl_bap ?></td>
		      <td><?php echo $jumlah_dikerjakan ?></td>
              <td><?php echo $sisa_belum ?></td>
		      <td><?php echo $status ?></td>
		      <td><?php echo $keterangan ?></td>	
        </table>
    </body>
</html>
<script>
    window.print();
</script>