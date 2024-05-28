<?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
}
?>
<?php
function tgl_indo($tanggal){
	return date("d-m-Y", strtotime($tanggal));
}
?>
<div class="content-wrapper">
	
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title">DETAIL DATA <?php echo $no_spk ?> <?php echo $kode_sub ?></h3>
			</div>
		
		<table class='table table-bordered'>        

	
			<tr>
				<td>No SPK</td>
				<td><?php echo $no_spk; ?> <?php echo $kode_sub; ?></td>
			</tr>
	
			<tr>
				<td>Tanggal SPK</td>
				<td><?php echo tgl_indo($tgl_spk); ?></td>
			</tr>
	
			<tr>
				<td>Pelaksana</td>
				<td><?php echo $pelaksana; ?></td>
			</tr>
	
			<tr>
				<td>Nilai SPK</td>
				<td><?php echo rupiah($nilai_spk); ?></td>
			</tr>
	
			<tr>
				<td>Vendor</td>
				<td><?php echo $vendor; ?></td>
			</tr>
	
			<tr>
				<td>Asal</td>
				<td><?php echo $asal; ?></td>
			</tr>
	
			<tr>
				<td>Tujuan</td>
				<td><?php echo $tujuan; ?></td>
			</tr>
	
			<tr>
				<td>Jenis Pekerjaan</td>
				<td><?php echo $jenis_pekerjaan; ?></td>
			</tr>
	
			<tr>
				<td>Item Barang</td>
				<td><?php echo $item_barang; ?></td>
			</tr>
	
			<tr>
				<td>Qty</td>
				<td><?php echo $qty; ?></td>
			</tr>
	
			<tr>
				<td>Unit Angkut</td>
				<td><?php echo $unit_angkut; ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Stuf</td>
				<td><?php echo tgl_indo($tgl_stuf); ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Selesai Stuf</td>
				<td><?php echo tgl_indo($tgl_selesai_stuf); ?></td>
			</tr>
	
			<tr>
				<td>ETD Kapal</td>
				<td><?php echo tgl_indo($etd_kapal); ?></td>
			</tr>
	
			<tr>
				<td>ETA Kapal</td>
				<td><?php echo tgl_indo($eta_kapal); ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Mulai Doring</td>
				<td><?php echo tgl_indo($tgl_mulai_doring); ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Selesai Doring</td>
				<td><?php echo tgl_indo($tgl_selesai_doring); ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Bap</td>
				<td><?php echo tgl_indo($tgl_bap); ?></td>
			</tr>
	
			<tr>
				<td>Jumlah Dikerjakan</td>
				<td><?php echo $jumlah_dikerjakan; ?></td>
			</tr>
	
			<tr>
				<td>Sisa Belum</td>
				<td><?php echo $sisa_belum; ?></td>
			</tr>
	
			<tr>
				<td>Status</td>
				<td><?php echo $status; ?></td>
			</tr>
	
			<tr>
				<td>Keterangan</td>
				<td><?php echo $keterangan; ?></td>
			</tr>
	
			<tr>
				<td>Last Update</td>
				<td><?php echo $full_name; ?> - <?php echo $last_update; ?></td>
			</tr>
	

	
			<tr>
				<td>Tanggal Debit Nota</td>
				<td><?php echo $tgl_debit_nota; ?></td>
			</tr>
	
			<tr>
				<td>DPP</td>
				<td>
					<?php 
                    $listSub = $this->Tbl_sub_jakarta_model->get_total_dpp_sub($id_sub_jakarta);
                    $dppBaruSub = $listSub->total;
                    echo rupiah($dppBaruSub);
                ?>
				</td>
			</tr>
	
			<tr>
				<td>Total Payment</td>
				<td><?php echo rupiah($total_payment); ?></td>
			</tr>
	
			<tr>
				<td></td>
				<td><a href="<?php echo site_url('tbl_spk_jakarta') ?>" class="btn btn-default">Kembali</a></td>
			</tr>
	
		</table>
		</div>
	</section>
</div>