
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA SUB SPK BANJARMASIN</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>No SPK<?php echo form_error('id_spk_banjarmasin') ?></td>
						<td>
						<select id="id_spk_banjarmasin" name="id_spk_banjarmasin" class="form-control">
								<?php 
								foreach($spk_data as $row){
								?>
								<option value="<?php echo $row->id_spk_banjarmasin ?>"><?php echo $row->no_spk ?></option>
								<?php
								}
								?> 
						</select>
						</td>
					</tr>
	
					<tr>
						<td width='200'>Kode Sub</td><td><input type="text" class="form-control" name="kode_sub" id="kode_sub" placeholder="Kode Sub" value="<?php echo $kode_sub; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal SPK </td>
						<td><input type="date" class="form-control" name="tgl_spk" id="tgl_spk" placeholder="Tgl Spk" value="<?php echo $tgl_spk; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Pelaksana</td><td><input type="text" class="form-control" name="pelaksana" id="pelaksana" placeholder="Pelaksana" value="<?php echo $pelaksana; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Nilai SPK <p align="right">Rp</p> </td><td> <input type="text" id="rupiah" class="form-control" name="nilai_spk" id="nilai_spk" placeholder="Nilai Spk" value="<?php echo $nilai_spk; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Vendor</td><td><input type="text" class="form-control" name="vendor" id="vendor" placeholder="Vendor" value="<?php echo $vendor; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Asal </td><td><input type="text" class="form-control" name="asal" id="asal" placeholder="Asal" value="<?php echo $asal; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Tujuan </td><td><input type="text" class="form-control" name="tujuan" id="tujuan" placeholder="Tujuan" value="<?php echo $tujuan; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Jenis Pekerjaan </td><td><input type="text" class="form-control" name="jenis_pekerjaan" id="jenis_pekerjaan" placeholder="Jenis Pekerjaan" value="<?php echo $jenis_pekerjaan; ?>" required/></td>
					</tr>
	
					<tr>
						<td width='200'>Item Barang </td><td><input type="text" class="form-control" name="item_barang" id="item_barang" placeholder="Item Barang" value="<?php echo $item_barang; ?>" required/></td>
					</tr>
	
	
					<tr>
						<td width='200'>Unit Angkut </td><td><input type="text" class="form-control" name="unit_angkut" id="unit_angkut" placeholder="Unit Angkut" value="<?php echo $unit_angkut; ?>" /></td>
					</tr>

					<?php
                    if ($this->uri->segment(2) == 'create') {
                        ?>
                        <tr>
						<td width='200'>Tanggal Stuf <?php echo form_error('tgl_stuf') ?></td>
						<td><input type="date" class="form-control" name="tgl_stuf" id="tgl_stuf" placeholder="Tgl Stuf" value="<?php echo $tgl_stuf; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal Selesai Stuf <?php echo form_error('tgl_selesai_stuf') ?></td>
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
						<td width='200'>Tanggal Mulai Doring <?php echo form_error('tgl_mulai_doring') ?></td>
						<td><input type="date" class="form-control" name="tgl_mulai_doring" id="tgl_mulai_doring" placeholder="Tgl Mulai Doring" value="<?php echo $tgl_mulai_doring; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal Selesai Doring <?php echo form_error('tgl_selesai_doring') ?></td>
						<td><input type="date" class="form-control" name="tgl_selesai_doring" id="tgl_selesai_doring" placeholder="Tgl Selesai Doring" value="<?php echo $tgl_selesai_doring; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Tanggal Bap <?php echo form_error('tgl_bap') ?></td>
						<td><input type="date" class="form-control" name="tgl_bap" id="tgl_bap" placeholder="Tgl Bap" value="<?php echo $tgl_bap; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>QTY</td><td><input type="number" class="form-control" name="qty" id="qty" placeholder="QTY" value="<?php echo $qty; ?>" required/></td>
					</tr>

					<tr>
						<td width='200'>Satuan</td><td><input type="text" class="form-control" name="satuan" id="satuan" placeholder="Satuan" value="<?php echo $satuan; ?>" required/></td>
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
                        <?php
                    } ?>
	


	
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
<script type="text/javascript"> 
 $(document).ready(function() {
 $('#id_spk_banjarmasin').select2();
 });
</script>