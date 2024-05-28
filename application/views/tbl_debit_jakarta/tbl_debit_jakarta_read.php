
<?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
}
?>
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<?php echo base_url() ?>assets/jquery-ui/themes/base/minified/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
<div class="content-wrapper">

    <p align="center"><img src="<?php echo base_url() ?>assets/images/kopglm2-transformed.png" align="center" width="100%"></p>	
<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
			<h3>
				<center>
					DEBIT NOTA <br>
				</center>
			</h3>
			</div>
		
		<table class='table table-bordered'>        
			<tr>
				<td>No</td>
				<td>No SPK</td>
				<td>Tanggal Debit Nota</td>
				<td>Customer</td>
				<td>Deskripsi</td>
				<td>DPP</td>
				<td>PPN</td>
				<td>Total Debit Nota</td>
			</tr>
			<?php $mulai = 0; ?>
			<tr>
				<td><?php echo ++$mulai ?></td>
				<td><?php echo $no_spk ?> - <?php echo $kode_sub ?></td>
				<td><?php echo $tgl_debit_nota ?></td>
				<td><?php echo $customer ?></td>
				<td><?php echo $deskripsi ?></td>
				<td><?php echo rupiah($dpp) ?></td>
				<td><?php echo rupiah($ppn) ?></td>
				<td><?php echo rupiah($total_debit_nota) ?></td>
			</tr>	
		</table>
		</div>
	</section>
</div>
<script>
	window.print();
</script>