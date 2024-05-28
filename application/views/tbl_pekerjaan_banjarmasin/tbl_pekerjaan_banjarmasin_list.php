<?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
}

function ribuan($angka){	
	$hasil_rupiah = number_format($angka,0,',','.');
	return $hasil_rupiah;
}
?>
<?php
function tgl_indo($tanggal){
	return date("d-m-Y", strtotime($tanggal));
}
?>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-warning box-solid">
    
                    <div class="box-header">
                        <h3 class="box-title">DETAIL PEKERJAAN SUB SPK BANJARMASIN</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
            </div>
            </div>
        
   
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4 text-center">
                <div style="margin-top: 8px" id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                
            </div>
        </div>
        <table class="table table-bordered sortable" style="margin-bottom: 10px">
            <tr>
        <th>No</th>
		<th>No SPK</th>
        <th>Unit Angkut</th>
		<th>Tanggal Stuf</th>
		<th>Tanggal Selesai Stuf</th>
		<th>ETD Kapal</th>
		<th>ETA Kapal</th>
		<th>Tanggal Mulai Doring</th>
		<th>Tanggal Selesai Doring</th>
		<th>Tanggal Bap</th>
        <th>Qty</th>
		<th>Jumlah Dikerjakan</th>
		<th>Sisa Belum</th>
		<th>Status</th>
		<th>Keterangan</th>
		<th>Last Update</th>
            </tr><?php
            foreach ($tbl_pekerjaan_banjarmasin_data as $tbl_pekerjaan_banjarmasin)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_pekerjaan_banjarmasin->no_spk ?> - <?php echo $tbl_pekerjaan_banjarmasin->kode_sub ?></td>
			<td><?php echo $tbl_pekerjaan_banjarmasin->unit_angkut ?></td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->tgl_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->tgl_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->tgl_selesai_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->tgl_selesai_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->etd_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->etd_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->eta_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->eta_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->tgl_mulai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->tgl_mulai_doring;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->tgl_selesai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->tgl_selesai_doring;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_pekerjaan_banjarmasin->tgl_bap ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_pekerjaan_banjarmasin->tgl_bap;
            }
                ?>
            </td>
			<td><?php echo ribuan($tbl_pekerjaan_banjarmasin->qty) ?></td>
            <td><?php echo ribuan($tbl_pekerjaan_banjarmasin->jumlah_dikerjakan) ?></td>
			<td><?php echo ribuan($tbl_pekerjaan_banjarmasin->sisa_belum) ?></td>
			<td><?php echo $tbl_pekerjaan_banjarmasin->status ?></td>
			<td><?php echo $tbl_pekerjaan_banjarmasin->keterangan ?></td>
			<td><?php echo $tbl_pekerjaan_banjarmasin->last_kerja ?></td>
		</tr>
                <?php
            }
            ?>
        </table>
        <div class="row">
            <div class="col-md-6">
                
	    </div>
            <div class="col-md-6 text-right">
                <?php echo $pagination ?>
            </div>
        </div>
        </div>
                    </div>
            </div>
            </div>
    </section>
</div>