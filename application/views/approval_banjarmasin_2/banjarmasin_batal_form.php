<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> KASIR BANJARMASIN</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
					<tr>
						<td width='200'>Tgl Pembatalan</td>
						<td><input type="date" class="form-control" name="tgl_pembatalan_2" id="tgl_pembatalan_2" placeholder="Tgl Pembatalan" required /></td>
					</tr>

					<tr>
						<td width='200'>Jumlah Permintaan</td>
						<td><input type="text" class="form-control" name="jumlah_permintaan" id="jumlah_permintaan" placeholder="jumlah_permintaan" value="<?php echo $jumlah_permintaan?>" required readonly /></td>
					</tr>

					
					<tr hidden>
						<td width='200'>ID Sub</td>
						<td><input type="text" class="form-control" name="id_sub_banjarmasin" id="id_sub_banjarmasin" placeholder="id_sub_banjarmasin" value="<?php echo $id_sub_banjarmasin?>" /></td>
					</tr>

					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_waiting_banjarmasin" value="<?php echo $id_waiting_banjarmasin; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_sub_banjarmasin/home_acc_kasir') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>