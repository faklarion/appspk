<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> SUB SPK BANJARMASIN</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
                    <tr>
						<td width='200'>Tgl Stuf <?php echo form_error('tgl_stuf') ?></td>
						<td><input type="date" class="form-control" name="tgl_stuf" id="tgl_stuf" placeholder="Tgl Stuf" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Selesai Stuf <?php echo form_error('tgl_selesai_stuf') ?></td>
						<td><input type="date" class="form-control" name="tgl_selesai_stuf" id="tgl_selesai_stuf" placeholder="Tgl Selesai Stuf" required /></td>
					</tr>
	
					<tr>
						<td width='200'>ETD Kapal <?php echo form_error('etd_kapal') ?></td>
						<td><input type="date" class="form-control" name="etd_kapal" id="etd_kapal" placeholder="Etd Kapal" required /></td>
					</tr>
	
					<tr>
						<td width='200'>ETA Kapal <?php echo form_error('eta_kapal') ?></td>
						<td><input type="date" class="form-control" name="eta_kapal" id="eta_kapal" placeholder="Eta Kapal" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Mulai Doring</td>
						<td><input type="date" class="form-control" name="tgl_mulai_doring" id="tgl_mulai_doring" placeholder="Tgl Mulai Doring" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Selesai Doring</td>
						<td><input type="date" class="form-control" name="tgl_selesai_doring" id="tgl_selesai_doring" placeholder="Tgl Selesai Doring" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl BAP </td>
						<td><input type="date" class="form-control" name="tgl_bap" id="tgl_bap" placeholder="Tgl Bap" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Jumlah Dikerjakan</td><td><input type="text" class="form-control" name="jumlah_dikerjakan" id="jumlah_dikerjakan" placeholder="Jumlah Dikerjakan" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Sisa Belum</td><td><input type="text" class="form-control" name="sisa_belum" id="sisa_belum" placeholder="Sisa Belum"  required/></td>
					</tr>
	
					<tr>
						<td width='200'>Status </td><td><input type="text" class="form-control" name="status" id="status" placeholder="Status" required /></td>
					</tr>
	
					<tr>
						<td width='200'>Keterangan </td><td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" required /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_sub_banjarmasin" value="<?php echo $id_sub_banjarmasin; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_spk_banjarmasin') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>