<?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
}
?>
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
                <th>No Induk SPK</th>
                <th>No SPK</th>
                <th>No Debit</th>
                <th>Tanggal Debit Nota</th>
                <th>Customer</th>
                <th>Deskripsi</th>
                <th>DPP</th>
                <th>PPN</th>
                <th>Total Debit Nota</th>
		
            </tr><?php
            foreach ($tbl_debit_jakarta_data as $tbl_debit_jakarta)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
              <td><?php echo $tbl_debit_jakarta->no_spk ?></td>
		      <td><?php echo $tbl_debit_jakarta->no_spk ?> - <?php echo $tbl_debit_jakarta->kode_sub ?></td>
		      <td><?php echo $tbl_debit_jakarta->no_debit ?></td>
		      <td><?php echo $tbl_debit_jakarta->tgl_debit_nota ?></td>
		      <td><?php echo $tbl_debit_jakarta->customer ?></td>
              <td><?php echo $tbl_debit_jakarta->deskripsi ?></td>
		      <td><?php echo rupiah($tbl_debit_jakarta->dpp) ?></td>
		      <td><?php echo rupiah($tbl_debit_jakarta->ppn) ?></td>
		      <td><?php echo rupiah($tbl_debit_jakarta->total_debit_nota) ?></td>	
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