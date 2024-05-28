<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
 <?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
}
?>
<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA WAITING LIST BANJARMASIN</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No SPK <?php echo form_error('id_sub_banjarmasin') ?></td>
						<td>
						<select class="form-control" name="id_sub_banjarmasin" id="id_sub_banjarmasin" required>
						<?php 
							foreach($tbl_spk_data as $c):?>

							<option value="<?php echo $c->id_sub_banjarmasin?>" <?php echo ($id_sub_banjarmasin == $c->id_sub_banjarmasin) ? 'selected' : '' ?>>
								<?php echo $c->no_spk;?> - <?php echo $c->kode_sub;?> (Sisa Payment : <?php echo rupiah($c->nilai_spk - $c->total_payment) ?>)
								</option>
						<?php 
							endforeach;
						?>
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>No Invoice </td><td><input type="text" class="form-control" name="no_invoice" id="no_invoice" placeholder="No Invoice" value="<?php echo $no_invoice; ?>" required/></td>
					</tr>

					<tr>
						<td width='200'>Jumlah Permintaan <p align="right">Rp</p></td><td><input type="number" class="form-control" name="jumlah_permintaan" id="jumlah_permintaan" placeholder="Masukkan Jumlah" value="<?php echo $jumlah_permintaan; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Permintaan </td>
						<td><input type="date" class="form-control" name="tgl_permintaan" id="tgl_permintaan" placeholder="Tgl Permintaan" value="<?php echo $tgl_permintaan; ?>" required/></td>
					</tr>
	    
					<tr>
						<td width='200'>Deskripsi </td>
						<td> <textarea class="form-control" rows="3" name="deskripsi" id="deskripsi" placeholder="Deskripsi" required><?php echo $deskripsi; ?></textarea></td>
					</tr>
	
					
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_waiting_banjarmasin" value="<?php echo $id_waiting_banjarmasin; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_waiting_banjarmasin') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>
<script type="text/javascript"> 
 $(document).ready(function() {
 $('#id_sub_banjarmasin').select2();
 });
</script>