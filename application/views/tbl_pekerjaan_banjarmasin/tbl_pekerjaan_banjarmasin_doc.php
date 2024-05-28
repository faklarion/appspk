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
        <h2>Tbl_pekerjaan_banjarmasin List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Sub Banjarmasin</th>
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
            foreach ($tbl_pekerjaan_banjarmasin_data as $tbl_pekerjaan_banjarmasin)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->id_sub_banjarmasin ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->tgl_stuf ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->tgl_selesai_stuf ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->etd_kapal ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->eta_kapal ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->tgl_mulai_doring ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->tgl_selesai_doring ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->tgl_bap ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->jumlah_dikerjakan ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->sisa_belum ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->status ?></td>
		      <td><?php echo $tbl_pekerjaan_banjarmasin->keterangan ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>