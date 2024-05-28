
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA INDUK SPK JAKARTA</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No PO <?php echo form_error('no_po') ?></td><td><input type="text" class="form-control" name="no_po" id="no_po" placeholder="No Po" value="<?php echo $no_po; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>No SPK <?php echo form_error('no_spk') ?></td><td><input type="text" class="form-control" name="no_spk" id="no_spk" placeholder="No Spk" value="<?php echo $no_spk; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tgl SPK <?php echo form_error('tgl_spk') ?></td>
						<td><input type="date" class="form-control" name="tgl_spk" id="tgl_spk" placeholder="Tgl Spk" value="<?php echo $tgl_spk; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Pelaksana <?php echo form_error('pelaksana') ?></td><td><input type="text" class="form-control" name="pelaksana" id="pelaksana" placeholder="Pelaksana" value="<?php echo $pelaksana; ?>" /></td>
					</tr>

					<tr>
						<td width='200'>Vendor </td>
						<td>
						<select id="id_vendor" name="id_vendor" class="form-control">
								<?php 
								foreach($vendor_data as $row){
								?>
								<option value="<?php echo $row->id_vendor ?>" <?php echo ($id_vendor == $row->id_vendor) ? 'selected' : '' ?>><?php echo $row->nama_vendor ?></option>
								<?php
								}
								?> 
						</select>
						</td>
					</tr>

					<tr>
						<td width='200'>VIC </td>
						<td>
						<select id="id_vic" name="id_vic" class="form-control">
								<?php 
								foreach($vic_data as $row){
								?>
								<option value="<?php echo $row->id_vic ?>" <?php echo ($id_vendor == $row->id_vic) ? 'selected' : '' ?>><?php echo $row->nama_vic ?></option>
								<?php
								}
								?> 
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>Nama Kapal <?php echo form_error('nama_kapal') ?></td><td><input type="text" class="form-control" name="nama_kapal" id="nama_kapal" placeholder="Nama Kapal" value="<?php echo $nama_kapal; ?>" /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_spk_jakarta" value="<?php echo $id_spk_jakarta; ?>" /> 
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
 $('#id_vendor').select2();
 });
</script>
<script type="text/javascript"> 
 $(document).ready(function() {
 $('#id_vic').select2();
 });
</script>