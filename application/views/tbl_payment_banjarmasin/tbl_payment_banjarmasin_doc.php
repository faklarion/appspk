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
        <h2>Tbl_payment_banjarmasin List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Debit Banjarmasin</th>
		<th>Jumlah Payment</th>
		<th>Tanggal Payment</th>
		
            </tr><?php
            foreach ($tbl_payment_banjarmasin_data as $tbl_payment_banjarmasin)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $tbl_payment_banjarmasin->id_debit_banjarmasin ?></td>
		      <td><?php echo $tbl_payment_banjarmasin->jumlah_payment ?></td>
		      <td><?php echo $tbl_payment_banjarmasin->tanggal_payment ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>