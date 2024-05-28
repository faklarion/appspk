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
        <h2>Tbl_waiting_jakarta List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Sub Jakarta</th>
		<th>No Invoice</th>
		<th>Tgl Permintaan</th>
		<th>Deskripsi</th>
		<th>Tgl Persetujuan 1</th>
		<th>Tgl Persetujuan 2</th>
		<th>Tgl Pembatalan 1</th>
		<th>Tgl Pembatalan 2</th>
		<th>Acc</th>
		<th>Batal</th>
		
            </tr><?php
            foreach ($tbl_waiting_jakarta_data as $tbl_waiting_jakarta)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $tbl_waiting_jakarta->id_sub_jakarta ?></td>
		      <td><?php echo $tbl_waiting_jakarta->no_invoice ?></td>
		      <td><?php echo $tbl_waiting_jakarta->tgl_permintaan ?></td>
		      <td><?php echo $tbl_waiting_jakarta->deskripsi ?></td>
		      <td><?php echo $tbl_waiting_jakarta->tgl_persetujuan_1 ?></td>
		      <td><?php echo $tbl_waiting_jakarta->tgl_persetujuan_2 ?></td>
		      <td><?php echo $tbl_waiting_jakarta->tgl_pembatalan_1 ?></td>
		      <td><?php echo $tbl_waiting_jakarta->tgl_pembatalan_2 ?></td>
		      <td><?php echo $tbl_waiting_jakarta->acc ?></td>
		      <td><?php echo $tbl_waiting_jakarta->batal ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>