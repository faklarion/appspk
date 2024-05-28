<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA SUB SPK JAKARTA</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No SPK<?php echo form_error('id_spk_jakarta') ?></td>
						<td>
						<select id="id_spk_jakarta" name="id_spk_jakarta" class="form-control">
								<?php 
								foreach($spk_data as $row){
								?>
								<option value="<?php echo $row->id_spk_jakarta ?>" <?php echo ($id_spk_jakarta == $row->id_spk_jakarta) ? 'selected' : '' ?>><?php echo $row->no_spk ?></option>
								<?php
								}
								?> 
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>Kode Sub <?php echo form_error('kode_sub') ?></td><td><input type="text" class="form-control" name="kode_sub" id="kode_sub" placeholder="Kode Sub" value="<?php echo $kode_sub; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl SPK <?php echo form_error('tgl_spk') ?></td>
						<td><input type="date" class="form-control" name="tgl_spk" id="tgl_spk" placeholder="Tgl Spk" value="<?php echo $tgl_spk; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Pelaksana <?php echo form_error('pelaksana') ?></td><td><input type="text" class="form-control" name="pelaksana" id="pelaksana" placeholder="Pelaksana" value="<?php echo $pelaksana; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Nilai SPK <?php echo form_error('nilai_spk') ?></td><td><input type="number" class="form-control"  name="nilai_spk" id="nilai_spk" placeholder="Nilai Spk" value="<?php echo $nilai_spk; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Vendor <?php echo form_error('vendor') ?></td><td><input type="text" class="form-control" name="vendor" id="vendor" placeholder="Vendor" value="<?php echo $vendor; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Asal <?php echo form_error('asal') ?></td><td><input type="text" class="form-control" name="asal" id="asal" placeholder="Asal" value="<?php echo $asal; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tujuan <?php echo form_error('tujuan') ?></td><td><input type="text" class="form-control" name="tujuan" id="tujuan" placeholder="Tujuan" value="<?php echo $tujuan; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Jenis Pekerjaan <?php echo form_error('jenis_pekerjaan') ?></td><td><input type="text" class="form-control" name="jenis_pekerjaan" id="jenis_pekerjaan" placeholder="Jenis Pekerjaan" value="<?php echo $jenis_pekerjaan; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Item Barang <?php echo form_error('item_barang') ?></td><td><input type="text" class="form-control" name="item_barang" id="item_barang" placeholder="Item Barang" value="<?php echo $item_barang; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Qty </td><td><input type="text" class="form-control" name="qty" id="qty" placeholder="Qty" value="<?php echo $qty; ?>" required/></td>
					</tr>

					<tr>
						<td width='200'>Satuan</td><td><input type="text" class="form-control" name="satuan" id="satuan" placeholder="Satuan" value="<?php echo $satuan; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Unit Angkut <?php echo form_error('unit_angkut') ?></td><td><input type="text" class="form-control" name="unit_angkut" id="unit_angkut" placeholder="Unit Angkut" value="<?php echo $unit_angkut; ?>" /></td>
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
<script type="text/javascript"> 
 $(document).ready(function() {
 $('#id_spk_jakarta').select2();
 });
</script>