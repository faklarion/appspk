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
					TOTAL PAYMENT <br>
				</center>
			</h3>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
                <th>No SPK</th>
                <th>No Invoice</th>
                <th>Tanggal Permintaan</th>
                <th>Tanggal Persetujuan Kasir</th>
                <th>Tanggal Persetujuan Direksi</th>
                <th>Deskripsi</th>
            </tr><?php
            $start= 0 ;
           
                ?>
                <tr>
                    <td><?php echo ++$start ?></td>
                    <td><?php echo $no_spk ?> - <?php echo $kode_sub ?></td>
                    <td><?php echo $no_invoice ?></td>
                    <td><?php echo $tanggal_permintaan ?></td>
                    <td><?php echo $tanggal_persetujuan_2 ?></td>
                    <td><?php echo $tanggal_persetujuan_1 ?></td>
                    <td><?php echo $deskripsi?></td>
                </tr>
                <?php
        
            ?>
        </table>
    </body>
</html>
<script>
    window.print();
</script>