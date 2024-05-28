<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> PEKERJAAN JAKARTA</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>

				<tr>
						<td width='200'>Unit Angkut </td><td><input type="text" class="form-control" name="unit_angkut" id="unit_angkut" placeholder="Unit Angkut" value="<?php echo $unit_angkut; ?>" /></td>
				</tr>
				
				<tr>
						<td width='200'>Tgl Stuf <?php echo form_error('tgl_stuf') ?></td>
						<td><input type="date" class="form-control" name="tgl_stuf" id="tgl_stuf" placeholder="Tgl Stuf" value="<?php echo $tgl_stuf; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Selesai Stuf <?php echo form_error('tgl_selesai_stuf') ?></td>
						<td><input type="date" class="form-control" name="tgl_selesai_stuf" id="tgl_selesai_stuf" placeholder="Tgl Selesai Stuf" value="<?php echo $tgl_selesai_stuf; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Etd Kapal <?php echo form_error('etd_kapal') ?></td>
						<td><input type="date" class="form-control" name="etd_kapal" id="etd_kapal" placeholder="Etd Kapal" value="<?php echo $etd_kapal; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Eta Kapal <?php echo form_error('eta_kapal') ?></td>
						<td><input type="date" class="form-control" name="eta_kapal" id="eta_kapal" placeholder="Eta Kapal" value="<?php echo $eta_kapal; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Mulai Doring <?php echo form_error('tgl_mulai_doring') ?></td>
						<td><input type="date" class="form-control" name="tgl_mulai_doring" id="tgl_mulai_doring" placeholder="Tgl Mulai Doring" value="<?php echo $tgl_mulai_doring; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Selesai Doring <?php echo form_error('tgl_selesai_doring') ?></td>
						<td><input type="date" class="form-control" name="tgl_selesai_doring" id="tgl_selesai_doring" placeholder="Tgl Selesai Doring" value="<?php echo $tgl_selesai_doring; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl Bap <?php echo form_error('tgl_bap') ?></td>
						<td><input type="date" class="form-control" name="tgl_bap" id="tgl_bap" placeholder="Tgl Bap" value="<?php echo $tgl_bap; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>QTY <?php echo form_error('qty') ?></td><td><input type="number" class="form-control" name="qty" id="qty" placeholder="QTY" value="<?php echo $qty; ?>" /></td>
					</tr>

					<tr>
						<td width='200'>Jumlah Dikerjakan <?php echo form_error('jumlah_dikerjakan') ?></td><td><input type="text" class="form-control" name="jumlah_dikerjakan" id="jumlah_dikerjakan" placeholder="Jumlah Dikerjakan" value="<?php echo $jumlah_dikerjakan; ?>" /></td>
					</tr>
	
	
					<tr>
						<td width='200'>Status <?php echo form_error('status') ?></td><td><input type="text" class="form-control" name="status" id="status" placeholder="Status" value="<?php echo $status; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Keterangan <?php echo form_error('keterangan') ?></td><td><input type="text" class="form-control" name="keterangan" id="keterangan" placeholder="Keterangan" value="<?php echo $keterangan; ?>" /></td>
					</tr>
	

					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_sub_jakarta" value="<?php echo $id_sub_jakarta; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('tbl_spk_jakarta') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>