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
    <p align="center"><img src="<?php echo base_url() ?>assets/images/kopglm2-transformed.png" align="center" width="100%"></p>	
    <body>
    <h3>
				<center>
					DEBIT NOTA <br>
				</center>
			</h3>
        <table class="word-table" style="margin-bottom: 10px">
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
            foreach ($tbl_sub_banjarmasin_data as $tbl_sub_banjarmasin)
            {
                ?>
                <tr>
                    <td><?php echo ++$start ?></td>
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
    </body>
</html>
<script>
    window.print();
</script>