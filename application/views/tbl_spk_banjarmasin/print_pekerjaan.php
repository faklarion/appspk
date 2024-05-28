
<!doctype html>
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
<script>
    window.print();
</script>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
    <p align="center"><img src="<?php echo base_url() ?>assets/images/kopglm2-transformed.png" align="center" width="100%"></p>	
    <body>
            <h3>
				<center>
					LAPORAN PROSES PEKERJAAN <br>
				</center>
			</h3>
            <p align="center">Induk SPK : <?php echo $no_spk ?></p>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
                <th>No SPK</th>
                <th>Unit Angkut</th>
                <th>Tanggal Stuf</th>
                <th>Tanggal Selesai Stuf</th>
                <th>Etd Kapal</th>
                <th>Eta Kapal</th>
                <th>Tanggal Mulai Doring</th>
                <th>Tanggal Selesai Doring</th>
                <th>Tanggal Bap</th>
                <th>QTY</th>
                <th>Jumlah Dikerjakan</th>
                <th>Sisa Belum</th>
                <th>Status</th>
                <th>Keterangan</th>
                <th>Lama Pengerjaan</th>
                <th>Last Update Pekerjaan</th>
            </tr>
            <?php foreach ($tbl_spk_banjarmasin_data as $row) : ?>
            <tr>    
                <td><?php echo ++$start ?></td>
                <td><?php echo $row->no_spk ?> - <?php echo $row->kode_sub ?> </td>
                <td><?php echo $row->unit_angkut ?></td>
            <td>
                <?php 
            if($row->tgl_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $row->tgl_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->tgl_selesai_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $row->tgl_selesai_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->etd_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $row->etd_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->eta_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $row->eta_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->tgl_mulai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo $row->tgl_mulai_doring;
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->tgl_selesai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($row->tgl_selesai_doring);
            }
                ?>
            </td>
            <td>
                <?php 
            if($row->tgl_bap ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($row->tgl_bap);
            }
                ?>
            </td>
			<td><?php echo $row->qty ?></td>
            <td><?php echo $row->jumlah_dikerjakan ?></td>
			<td><?php echo $row->sisa_belum ?></td>
			<td><?php echo $row->status ?></td>
			<td><?php echo $row->keterangan ?></td>
            <td>
                <?php 
                  $tgl_sub = $this->Tbl_sub_banjarmasin_model->get_tgl_nota($row->id_spk_banjarmasin);
                if($tgl_sub) {
                $tgl1 = new DateTime($row->tgl_bap);
                $tgl2 = new DateTime($row->tgl_mulai_doring);
                $jarak = $tgl2->diff($tgl1);
                echo "$jarak->d Hari";
                } else {
                    echo '0 Hari';
                }
                ?>
            </td>
            <td><?php echo $row->last_kerja ?></td>
            </tr>	
              <?php endforeach; ?>
        </table>

    </body>
</html>
<script>
    window.print();
</script>