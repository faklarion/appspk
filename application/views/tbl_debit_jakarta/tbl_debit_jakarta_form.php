<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA DEBIT NOTA JAKARTA</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No SPK <?php echo form_error('id_sub_jakarta') ?></td>
						<td>
						<select class="form-control" name="id_sub_jakarta" id="id_sub_jakarta" required>
						<?php 
							foreach($tbl_spk_data as $c):?>

							<option value="<?php echo $c->id_sub_jakarta?>" <?php echo ($id_sub_jakarta == $c->id_sub_jakarta) ? 'selected' : '' ?>>
								<?php echo $c->no_spk;?> - <?php echo $c->kode_sub;?>

								</option>
						<?php 
							endforeach;
						?>
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>No Debit Nota <?php echo form_error('no_debit') ?></td><td><input type="text" class="form-control" name="no_debit" id="no_debit" placeholder="No Debit" value="<?php echo $no_debit; ?>" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal Debit Nota <?php echo form_error('tgl_debit_nota') ?></td>
						<td><input type="date" class="form-control" name="tgl_debit_nota" id="tgl_debit_nota" placeholder="Tgl Debit Nota" value="<?php echo $tgl_debit_nota; ?>" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Customer <?php echo form_error('customer') ?></td><td><input type="text" class="form-control" name="customer" id="customer" placeholder="Customer" value="<?php echo $customer; ?>" required /></td>
					</tr>

					<tr>
						<td width='200'>Deskripsi</td><td><input type="text" class="form-control" name="deskripsi" id="deskripsi" placeholder="deskripsi" value="<?php echo $deskripsi; ?>" required /></td>
					</tr>
	
					<tr>
						<td width='200'>DPP <p align="right">Rp</p><?php echo form_error('dpp') ?></td><td><input type="number" class="form-control" name="dpp" id="dpp" placeholder="Dpp" value="<?php echo $dpp; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>PPN <p align="right">Rp</p><?php echo form_error('ppn') ?></td><td><input type="number" class="form-control" name="ppn" id="ppn" placeholder="Ppn" value="<?php echo $ppn; ?>" required /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_debit_jakarta" value="<?php echo $id_debit_jakarta; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_debit_jakarta') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>
<script type="text/javascript"> 
 $(document).ready(function() {
 $('#id_sub_jakarta').select2();
 });
</script>