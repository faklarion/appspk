<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA PAYMENT DEBIT JAKARTA</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No Debit Nota <?php echo form_error('id_debit_jakarta') ?></td>
						<td>
						<select class="form-control" name="id_debit_jakarta" id="id_debit_jakarta" required>
						<?php 
							foreach($tbl_debit_data as $c):?>

							<option value="<?php echo $c->id_debit_jakarta?>" <?php echo ($id_debit_jakarta == $c->id_debit_jakarta) ? 'selected' : '' ?>>
								<?php echo $c->no_debit;?> - Rp <?php echo $c->total_debit_nota;?> - (	<?php echo $c->no_spk;?> - <?php echo $c->kode_sub;?>)
							</option>
						<?php 
							endforeach;
						?>
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>Jumlah Payment <?php echo form_error('jumlah_payment') ?></td><td><input type="number" class="form-control" name="jumlah_payment" id="jumlah_payment" placeholder="Jumlah Payment" value="<?php echo $jumlah_payment; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal Payment <?php echo form_error('tanggal_payment') ?></td>
						<td><input type="date" class="form-control" name="tanggal_payment" id="tanggal_payment" placeholder="Tanggal Payment" value="<?php echo $tanggal_payment; ?>" /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_payment_jakarta" value="<?php echo $id_payment_jakarta; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_debit_jakarta') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>