<!doctype html>
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
<script>
    window.print();
</script>
<html>
    <head>
        <title>PT. Barokah Langgeng Abadi - Laporan SPK</title>
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
				LAPORAN SPK <br>
				</center>
			</h3>      
            <?php
            foreach ($tbl_spk_banjarmasin_data as $tbl_spk_banjarmasin)
            { ?>
            <h4><center>Induk SPK</center></h4>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
            <th>No</th>
                <th width="10px">No PO</th>
                <th width="10px">VIC</th>
                <th width="20px">No SPK</th>
                <th width="20px">Tanggal SPK</th>
                <th width="30px">Pelaksana</th>
                <th width="30px">Vendor</th>
                <th width="30px">Nama Kapal</th>
                <th width="30px">Nilai SPK</th>
                <th width="30px">Total Payment</th>
                <th width="30px">Sisa Payment</th>
                <th width="30px">DPP</th>
                <th width="30px">Profit 1</th>
                <th width="30px">Profit 2</th>
                <th width="30px">Tanggal Debit Nota</th>
                <th width="30px">Lama Pengerjaan</th>
                <th width="30px">Update</th>
		
            </tr>
                
                <tr>
                <td width="10px"><?php echo '1'; ?></td>
                <td width="20px"><?php echo $tbl_spk_banjarmasin->no_po ?></td>
                <td width="20px"><?php echo $tbl_spk_banjarmasin->nama_vic ?></td>
                <td width="30px"><?php echo $tbl_spk_banjarmasin->no_spk ?></td>
                <td width="30px"><?php echo tgl_indo($tbl_spk_banjarmasin->tgl_spk) ?></td>
                <td width="30px"><?php echo $tbl_spk_banjarmasin->pelaksana ?></td>
                <td width="30px"><?php echo $tbl_spk_banjarmasin->nama_vendor ?></td>
                <td width="30px"><?php echo $tbl_spk_banjarmasin->nama_kapal ?></td>
                <td width="30px">
                <?php 
                    $listSpk = $this->Tbl_spk_banjarmasin_model->get_nilai_spk($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $nilaiBaru = $listSpk->total;
                    echo rupiah($nilaiBaru);
                ?>
            </td>
			<td width="30px">
                <?php 
                    $listSub = $this->Tbl_sub_banjarmasin_model->get_total_payment($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $totalBaru = $listSub->total;
                    echo rupiah($totalBaru);
                ?>
            </td>
            <td width="30px">
                <?php echo rupiah($nilaiBaru - $totalBaru); ?>
            </td>
            <td width="30px">
                <?php 
                    $listSub = $this->Tbl_sub_banjarmasin_model->get_total_dpp($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $dppBaru = $listSub->total;
                    echo rupiah($dppBaru);
                    
                ?>
            </td>
            <td width="30px">
                <?php echo rupiah($dppBaru - $nilaiBaru); ?>
            </td>
            <td width="30px">
                <?php echo rupiah($dppBaru - $totalBaru); ?>
            </td>
          
            <td width="30px">
                <?php 
                    $tgl_sub = $this->Tbl_sub_banjarmasin_model->get_tgl_nota($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    if($tgl_sub) {
                        $tglBaru = $tgl_sub->tanggal;
                        if($tglBaru == NULL) {
                            echo 'Belum Ada';
                        } else {
                        echo tgl_indo($tglBaru);
                        }
                    } else {
                       echo 'Belum Ada';
                    }
                ?>
            </td>
            <td width="30px">
                <?php 
                if($tgl_sub) {
                $tgl1 = new DateTime($tbl_spk_banjarmasin->tgl_spk);
                $tgl2 = new DateTime($tglBaru);
                $jarak = $tgl2->diff($tgl1);
                echo "$jarak->d Hari";
                } else {
                    echo '0 Hari';
                }
                ?>
            </td>
            <td width="30px"><?php echo $tbl_spk_banjarmasin->full_name ?> - <?php echo $tbl_spk_banjarmasin->last_update ?> </td>
        </tr>
        </table>
        
        <?php 
        $idSpk = @$tbl_spk_banjarmasin->id_spk_banjarmasin;
        $listSub = $this->Tbl_sub_banjarmasin_model->get_by_id($idSpk); ?>
        <p align="center">SUB SPK</p>
        <table class="word-table" style="margin-bottom: 10px; align: center">
            <tr>
                <th>No</th>
                <th>No PO</th>
                <th>No SPK</th>
                <th>Tanggal SPK</th>
                <th>Pelaksana</th>
                <th>Nama Kapal</th>
                <th>Nilai SPK</th>
                <th>DPP</th>
                <th>Tanggal Debit Nota</th>
                <th>Total Payment</th>
                <th>Sisa Payment</th>
                <th>Update</th>
                <th>Unit Angkut</th>
                <th>Tanggal Stuf</th>
                <th>Tanggal Selesai Stuf</th>
                <th>Etd Kapal</th>
                <th>Eta Kapal</th>
                <th>Tanggal Mulai Doring</th>
                <th>Tanggal Selesai Doring</th>
                <th>Tanggal Bap</th>
                <th>QTY</th>
                <th>Satuan</th>
                <th>Jumlah Dikerjakan</th>
                <th>Sisa Belum</th>
                <th>Status</th>
                <th>Keterangan</th>
                <th>Lama Pengerjaan</th>
                <th>Last Update Pekerjaan</th>
            </tr>
            <?php
            $mulai = 0;
            foreach ($listSub as $tbl_sub_banjarmasin) :
                ?>
                <tr>
                <td width="10px"><?php echo ++$mulai ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_po ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_spk ?> <?php echo $tbl_sub_banjarmasin->kode_sub ?></td>
			<td><?php echo tgl_indo($tbl_sub_banjarmasin->tgl_spk) ?></td>
			<td><?php echo $tbl_sub_banjarmasin->pelaksana ?></td>
			<td><?php echo $tbl_sub_banjarmasin->nama_kapal ?></td>
			<td><?php echo rupiah($tbl_sub_banjarmasin->nilai_spk) ?></td>
			<td><?php echo rupiah($tbl_sub_banjarmasin->dpp) ?></td>
            <td><?php 
            if($tbl_sub_banjarmasin->tgl_debit_nota==NULL) {
                echo 'Belum Ada';
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_debit_nota);
            } ?>
            </td>
			<td>
                <?php
                 $listSub = $this->Tbl_sub_banjarmasin_model->get_total_payment_sub($tbl_sub_banjarmasin->id_sub_banjarmasin);
                 $totalBaru = $listSub->total;
                 echo rupiah($totalBaru);
                ?>
             </td>
            <td><?php echo rupiah($tbl_sub_banjarmasin->nilai_spk - $totalBaru) ?></td>
            <td><?php echo $tbl_sub_banjarmasin->full_name ?> - <?php echo $tbl_sub_banjarmasin->last_update ?> </td>
            <td><?php echo $tbl_sub_banjarmasin->unit_angkut ?></td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_stuf);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_selesai_stuf ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_selesai_stuf);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->etd_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->etd_kapal);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->eta_kapal ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->eta_kapal);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_mulai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_mulai_doring);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_selesai_doring ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_selesai_doring);
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_bap ==  '0000-00-00') {
                echo 'Belum Ada'; 
            } else {
                echo tgl_indo($tbl_sub_banjarmasin->tgl_bap);
            }
                ?>
            </td>
			<td><?php echo ribuan($tbl_sub_banjarmasin->qty) ?></td>
            <td><?php echo $tbl_sub_banjarmasin->satuan ?></td>
            <td><?php echo ribuan($tbl_sub_banjarmasin->jumlah_dikerjakan) ?></td>
			<td><?php echo ribuan($tbl_sub_banjarmasin->sisa_belum) ?></td>
			<td><?php echo $tbl_sub_banjarmasin->status ?></td>
			<td><?php echo $tbl_sub_banjarmasin->keterangan ?></td>
            <td>
                <?php 
                  if($tgl_sub) {
                    $tgl1 = new DateTime($tbl_spk_banjarmasin->tgl_spk);
                    $tgl2 = new DateTime($tgl_sub->tanggal);
                    @$jarak = $tgl2->diff($tgl1);
                    if($tglBaru == NULL) {
                        echo '0 Hari';
                    } else {
                        echo "$jarak->d Hari";
                    }
                    }
                ?>
            </td>
            <td><?php echo $tbl_sub_banjarmasin->last_kerja ?></td>
		</tr>
                <?php
            endforeach;
            ?>
            
        </table>
        <br>
        <br>
        <br>
        <?php } ?>
        <table class="word-table" style="margin-bottom: 10px; width:20%">
            <thead>
            <tr>
                <th>Total</th>
            <tr>
            <tr>
                <th>
                        <?php 
                                $listSpk = $this->Tbl_spk_banjarmasin_model->get_total_nilai_spk();
                                $nilaiBaru = $listSpk->total;
                                echo 'Total Nilai SPK : '.rupiah($nilaiBaru).'';
                        ?>
                </th>
            </tr>
            <tr>
                <th>
                    <?php 
                            $listSub = $this->Tbl_sub_banjarmasin_model->get_payment();
                            $totalBaru = $listSub->total;
                            echo 'Total All Payment : '.rupiah($totalBaru).'';    
                    ?>
                </th>
            </tr>    
            <tr>
                <th><?php echo 'Total Sisa Payment : '.rupiah($nilaiBaru -  $totalBaru).''; ?></th>
            </tr>
            <tr>
                <th>
                    <?php  
                     $listSub = $this->Tbl_sub_banjarmasin_model->get_dpp();
                     $dppBaru = $listSub->total;
                     echo 'Total DPP : '.rupiah($dppBaru).'';
                    ?>
            
                </th>
            </tr>
            <tr>
                <th>
                <?php echo 'Total Profit 1 : '.rupiah($dppBaru - $nilaiBaru).''; 
                ?>
                </th>
            </tr>
            <tr>
                <th>
                    <?php echo 'Total Profit 2 : '.rupiah($dppBaru - $totalBaru).''; 
                    ?>
                </th>
            </tr>    
        </thead>
        </table>
    
    
     
      
    </body>
</html>