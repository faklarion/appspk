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
				<h3 class="box-title">DETAIL DATA SUB SPK</h3>
			</div>
		
		<table class='table table-bordered'>        

	
			<tr>
				<td>No Po</td>
				<td><?php echo $no_po; ?></td>
			</tr>
	
			<tr>
				<td>No SPK</td>
				<td><?php echo $no_spk; ?></td>
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
				<td>Nama Kapal</td>
				<td><?php echo $nama_kapal; ?></td>
			</tr>
	
			<tr>
				<td>Nilai SPK</td>
				<td><?php 
                    $listSpk = $this->Tbl_spk_jakarta_model->get_nilai_spk($id_spk_jakarta);
                    $nilaiBaru = $listSpk->total;
                    echo rupiah($nilaiBaru);
                ?></td>
			</tr>
	
			<tr>
				<td>DPP</td>
				<td><?php echo rupiah($dpp); ?></td>
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