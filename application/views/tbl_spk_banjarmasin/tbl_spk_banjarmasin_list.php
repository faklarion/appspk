<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
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
<style> 
.btn-circle {
  width: 30px;
  height: 30px;
  text-align: center;
  padding: 6px 0;
  font-size: 12px;
  line-height: 1.428571429;
  border-radius: 15px;
}
.btn-circle.btn-lg {
  width: 50px;
  height: 50px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.33;
  border-radius: 25px;
}
.btn-circle.btn-xl  {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}

.btn-float{
    position: fixed;
    right: 37px;
    bottom:100px;
}

.btn-lateral{
    background-color: #008ECF;
    color: white;
    margin: 10px;
}

.btn-filter
{
    background-color: #283896;
    color: #FFF;
}

 .table_wrapper{
    display: block;
    overflow-x: auto;
    overflow-y: scroll;
    height: 100%;
    white-space: nowrap;
    
 }
    .table_wrapper th {
    position: sticky;
    position: -webkit-sticky;
    top: 0;
    z-index: 999;
    background-color: #D9DDDC;
    width: 1000px;
    }

    .table_wrapper tfoot {
    position: sticky;
    inset-block-end: 0;
    }

</style>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

<div class="content-wrapper">
    
    <section class="content">
       
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-warning box-solid">
    
                    <div class="box-header">
                        <h3 class="box-title">KELOLA DATA INDUK SPK BANJARMASIN</h3>
                    </div>
                    
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
                
            <div style="padding-bottom: 10px;">
        <?php 
         if(($this->session->userdata('id_user_level') != 7) && ($this->session->userdata('id_user_level') != 2)  && ($this->session->userdata('id_user_level') !=5) && ($this->session->userdata('id_user_level') != 3))  {
        echo anchor(site_url('tbl_spk_banjarmasin/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> TAMBAH INDUK', 'class="btn btn-danger btn-sm"'); 
         }
        ?>
        <?php 
         if(($this->session->userdata('id_user_level') != 7) && ($this->session->userdata('id_user_level') != 2)  && ($this->session->userdata('id_user_level') != 5) && ($this->session->userdata('id_user_level') != 3)) {
        echo anchor(site_url('tbl_sub_banjarmasin/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> TAMBAH SUB', 'class="btn btn-warning btn-sm"'); 
         }?>
		</div>
        </div>
            <div class='col-md-3'>
            <form action="<?php echo site_url('tbl_spk_banjarmasin/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari..." class="form-control">                        
                    </div>
                </form>
            </div>
            </div>
        
   
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4 text-center">
                <div style="margin-top: 8px" id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
        </div>

        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-12 text-center">
                <div style="margin-top: 8px" id="message" class="table-responsive">
                   <table class="table table-bordered">
                        <tr>
                            <td>
                                <form method="get" action="<?php echo site_url('tbl_spk_banjarmasin/word') ?>" target="_blank">
                                <div class="form-group">
                                            PRINT SPK
                                            </div>                
                                
                                                <div class="form-group">
                                                <select id="bulan" name="bulan" class="form-control">
                                                    <?php
                                                    // Fungsi untuk menghasilkan opsi dropdown bulan
                                                    function generateMonthOptions() {
                                                        $bulan = array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');

                                                        foreach ($bulan as $index => $nama_bulan) {
                                                            $value = $index + 1; // Nilai bulan dimulai dari 1
                                                            echo "<option value='{$value}'>{$nama_bulan}</option>";
                                                        }
                                                    }

                                                    generateMonthOptions();
                                                    ?>
                                                </select>
                                                </div>
                                                <div class="form-group">
                                                <select id="tahun" name="tahun" class="form-control">
                                                    <?php
                                                    // Fungsi untuk menghasilkan opsi dropdown tahun
                                                    function generateYearOptions() {
                                                        $currentYear = date('Y');
                                                        $endYear = $currentYear - 10; // Ubah angka ini untuk mengatur jangkauan tahun

                                                        for ($year = $currentYear; $year >= $endYear; $year--) {
                                                            echo "<option value='{$year}'>{$year}</option>";
                                                        }
                                                    }

                                                    generateYearOptions();
                                                    ?>
                                                </select>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" name="filter" value="true" class="btn btn-primary">CETAK</button> 
                                                </div>
                                        
                                </form>
                            </td>
                            <td>
                            <form method="get" action="<?php echo site_url('tbl_spk_banjarmasin/cari_vendor') ?>">
                                            <div class="form-group">
                                            FILTER VENDOR
                                            </div>
                                            <div class="form-group">
                                            <select id="id_vendor" name="id_vendor" class="form-control" style="width: 100%">
                                                <?php foreach($tbl_vendor_data as $row) { ?>
                                                <option value="<?=$row->id_vendor?>"><?=$row->nama_vendor?></option>
                                                <?php } ?>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" name="filter" value="true" class="btn btn-primary">FILTER</button> 
                                                <a href="<?php echo site_url('tbl_spk_banjarmasin') ?>" class="btn btn-warning">RESET</a> 
                                            </div>
                            </form>
                            </td>
                            <td>
                            <form method="get" action="<?php echo site_url('tbl_spk_banjarmasin/cari_vic') ?>">
                                            <div class="form-group">
                                            FILTER VIC
                                            </div>
                                            <div class="form-group">
                                            <select id="id_vic" name="id_vic" class="form-control" style="width: 100%">
                                                <?php foreach($tbl_vic_data as $row) { ?>
                                                <option value="<?=$row->id_vic?>"><?=$row->nama_vic?></option>
                                                <?php } ?>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" name="filter" value="true" class="btn btn-primary">FILTER</button> 
                                                <a href="<?php echo site_url('tbl_spk_banjarmasin') ?>" class="btn btn-warning">RESET</a> 
                                            </div>
                            </form>
                            </td>
                            <td>
                            <form method="get" action="<?php echo site_url('tbl_spk_banjarmasin/cari') ?>">
                                            <div class="form-group">
                                            FILTER PERIODE
                                            </div>
                                            <div class="form-group">
                                            <select id="bulan" name="bulan" class="form-control">
                                                <?php
                                                // Fungsi untuk menghasilkan opsi dropdown bulan
                                                generateMonthOptions();
                                                ?>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <select id="tahun" name="tahun" class="form-control">
                                                <?php
                                                // Fungsi untuk menghasilkan opsi dropdown tahun
                                                generateYearOptions();
                                                ?>
                                            </select>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" name="filter" value="true" class="btn btn-primary">FILTER</button> 
                                                <a href="<?php echo site_url('tbl_spk_banjarmasin') ?>" class="btn btn-warning">RESET</a> 
                                            </div>
                            </form>
                            </td>
                        </tr>
                   </table>
                </div>
            </div>
        </div>
       
        <h4><?php echo "Filter : $filter"; ?></h4>
        <table class="table table-bordered table_wrapper sortable" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
                <th>No PO</th>
                <th>VIC</th>
                <th>No SPK</th>
                <th>Tanggal SPK</th>
                <th>Pelaksana</th>
                <th>Vendor</th>
                <th>Nama Kapal</th>
                <th>Nilai SPK</th>
                <th>Total Payment</th>
                <th>Sisa Payment</th>
                <th>DPP</th>
                <th>Profit 1</th>
                <th>Profit 2</th>
                <th>Tanggal Debit Nota</th>
                <th>Lama Pengerjaan</th>
                <th>Update</th>
                <th>Simbol</th>
                <th>Sub SPK</th>
                <th>Action</th>
                <th>Detail Debit</th>
                <th>Print Pekerjaan</th>
            </tr><?php
            
            foreach ($tbl_spk_banjarmasin_data as $tbl_spk_banjarmasin) :
                $noSPK = $tbl_spk_banjarmasin->id_spk_banjarmasin;
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_spk_banjarmasin->no_po ?></td>
            <td><?php echo $tbl_spk_banjarmasin->nama_vic ?></td>
			<td><?php echo $tbl_spk_banjarmasin->no_spk ?></td>
			<td><?php echo tgl_indo($tbl_spk_banjarmasin->tgl_spk) ?></td>
			<td><?php echo $tbl_spk_banjarmasin->pelaksana ?></td>
            <td><?php echo $tbl_spk_banjarmasin->nama_vendor ?></td>
			<td><?php echo $tbl_spk_banjarmasin->nama_kapal ?></td>
            <td>
                <?php 
                    $listSpk = $this->Tbl_spk_banjarmasin_model->get_nilai_spk($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $nilaiBaru = $listSpk->total;
                    echo rupiah($nilaiBaru);
                ?>
            </td>
			<td>
                <?php 
                    $listSub = $this->Tbl_sub_banjarmasin_model->get_total_payment($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $totalBaru = $listSub->total;
                    echo rupiah($totalBaru);
                ?>
            </td>
            <td>
                <?php 
                echo rupiah($nilaiBaru - $totalBaru); 
                        $totalSisa = 0;
                        $totalSisa += ($nilaiBaru - $totalBaru);
                        
                ?>
            </td>
            <td>
                <?php 
                    $listSub = $this->Tbl_sub_banjarmasin_model->get_total_dpp($tbl_spk_banjarmasin->id_spk_banjarmasin);
                    $dppBaru = $listSub->total;
                    echo rupiah($dppBaru);
                ?>
            </td>
            <td>
                <?php echo rupiah($dppBaru - $nilaiBaru); 
                ?>
            </td>
            <td>
                <?php echo rupiah($dppBaru - $totalBaru); 
                ?>
            </td>
          
            <td>
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

                if(@$jarak->d <= 29) {
                    echo ' - <button class="btn btn-success" type="button"></button>';
                } elseif (@$jarak->d >= 30) {
                    echo ' - <button class="btn btn-warning" type="button"></button>';
                } elseif (@$jarak->d >= 40) {
                    echo ' - <button class="btn btn-danger" type="button"></button>';
                } else {
                    echo $hijau;
                }
                ?>
            </td>
            <td><?php echo $tbl_spk_banjarmasin->full_name ?> - <?php echo $tbl_spk_banjarmasin->last_update ?> - 
            <?php if(($tbl_spk_banjarmasin->images == NULL) || ($tbl_spk_banjarmasin->images == '')) { ?>
                <img src="<?php echo base_url() ?>assets/foto_profil/ppkosong.jpg" class="user-image" alt="User Image" width="50px">
            <?php } else { ?>
            <img src="<?php echo base_url() ?>assets/foto_profil/<?php echo $tbl_spk_banjarmasin->images; ?> " class="user-image" alt="User Image" width="50px">
            <?php } ?>
            </td>
			<td>
                <?php 
                if($nilaiBaru == $totalBaru) {
                    echo '<p align="center"><button class="btn btn-success" type="button"></button>';
                } elseif ($nilaiBaru > $totalBaru) {
                    echo '<p align="center"><button class="btn btn-warning" type="button"></button>';
                } elseif ($nilaiBaru < $totalBaru) {
                    echo '<p align="center"><button class="btn btn-danger" type="button"></button>';
                }
                ?>
            </td>
            <td>
                <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#modal<?php echo $noSPK ?>">
                            Lihat SUB SPK
                </button>
            </td>
            <td style="text-align:center" width="200px">
                
                <?php 
                 if(($this->session->userdata('id_user_level') != 7) && ($this->session->userdata('id_user_level') != 2)  && ($this->session->userdata('id_user_level') != 5) && ($this->session->userdata('id_user_level') != 3) && ($this->session->userdata('id_user_level') != 4)) {
                    echo '<p>';
                    echo anchor(site_url('tbl_spk_banjarmasin/update/'.$tbl_spk_banjarmasin->id_spk_banjarmasin),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
                    echo '  '; 
                 }
                if($this->session->userdata('id_user_level') == 6) {
				    echo anchor(site_url('tbl_spk_banjarmasin/delete_sampah/'.$tbl_spk_banjarmasin->id_spk_banjarmasin),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
                }
                ?>
			</td>
            <td>
                <?php 
                if(($this->session->userdata('id_user_level') != 2)) {
                echo '<p>';
                echo anchor(site_url('tbl_spk_banjarmasin/lihat_debit/'.$tbl_spk_banjarmasin->id_spk_banjarmasin),'<i class="fa fa-eye" aria-hidden="true"> LIHAT TOTAL DN</i>','class="btn btn-warning btn-sm"'); 
                }
                ?>
            </td>
            <td>
                <?php 
                echo '<p>';
                echo anchor(site_url('tbl_spk_banjarmasin/print_kerja/'.$tbl_spk_banjarmasin->id_spk_banjarmasin),'<i class="fa fa-print" aria-hidden="true"> Print Pekerjaan</i>','class="btn btn-primary btn-sm" target="_blank"'); 
                ?>
            </td>
            
		</tr>
                <?php
            endforeach;
            ?>
            <tfoot>
            <tr>
                <th>Total</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th>
                    <?php 
                            $listSpk = $this->Tbl_spk_banjarmasin_model->get_total_nilai_spk();
                            $nilaiBaru = $listSpk->total;
                            echo rupiah($nilaiBaru);
                    ?>
                </th>
                <th>
                    <?php 
                            $listSub = $this->Tbl_sub_banjarmasin_model->get_payment();
                            $totalBaru = $listSub->total;
                            echo rupiah($totalBaru);    
                    ?>
                </th>
                <th><?php echo rupiah($nilaiBaru -  $totalBaru); ?></th>
                <th>
                    <?php  
                     $listSub = $this->Tbl_sub_banjarmasin_model->get_dpp();
                     $dppBaru = $listSub->total;
                     echo rupiah($dppBaru);
                    ?>
            
                </th>
                <th>
                <?php echo rupiah($dppBaru - $nilaiBaru); 
                ?>
                </th>
                <th>
                    <?php echo rupiah($dppBaru - $totalBaru); 
                    ?>
                </th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </tfoot>
            
        </table>
        <h4>
            <b>Deskripsi Simbol</b>
        </h4>
        <p>
            <b>Hijau</b> : Pembayaran Pas/sesuai
        </p>
        <p>
            <b>Kuning</b> : Pembayaran Kurang/belum dibayarkan
        </p>
        <p>
            <b>Merah</b> : Pembayaran berlebihan
        </p>
        <div class="row">
            <div class="col-md-6">
                
	    </div>
            
        </div>
        </div>
                    </div>
            </div>
            </div>
    </section>
</div>

<!-- MODAL SUB -->
<?php
foreach ($tbl_spk_banjarmasin_data as $row) : ?>
  <div class="modal fade bd-example-modal-xl" id="modal<?php echo $row->id_spk_banjarmasin ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document" style="width:100%;"  >
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">Lihat Sub SPK</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" >
          <!-- FORM -->
          <?php $listSub = $this->Tbl_sub_banjarmasin_model->get_by_id($row->id_spk_banjarmasin); ?>
          <table class="table table-bordered table_wrapper sortable" style="margin-bottom: 10px; align: center">
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
                <th>Action</th>
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
            <td>
                <?php 
                    $listSub = $this->Tbl_sub_banjarmasin_model->get_total_dpp_sub($tbl_sub_banjarmasin->id_sub_banjarmasin);
                    $dppBaruSub = $listSub->total;
                    echo rupiah($dppBaruSub);
                ?>
            </td>
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
            <td><?php echo $tbl_sub_banjarmasin->full_name ?> - <?php echo $tbl_sub_banjarmasin->last_update ?> -  
            <?php if(($tbl_sub_banjarmasin->images == NULL) || ($tbl_sub_banjarmasin->images == '')) { ?>
                <img src="<?php echo base_url() ?>assets/foto_profil/ppkosong.jpg" class="user-image" alt="User Image" width="50px">
            <?php } else { ?>
            <img src="<?php echo base_url() ?>assets/foto_profil/<?php echo $tbl_sub_banjarmasin->images; ?> " class="user-image" alt="User Image" width="50px">
            <?php } ?>
            </td>
            <td><?php echo $tbl_sub_banjarmasin->unit_angkut ?></td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_stuf ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->tgl_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_selesai_stuf ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->tgl_selesai_stuf;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->etd_kapal ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->etd_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->eta_kapal ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->eta_kapal;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_mulai_doring ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->tgl_mulai_doring;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_selesai_doring ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->tgl_selesai_doring;
            }
                ?>
            </td>
            <td>
                <?php 
            if($tbl_sub_banjarmasin->tgl_bap ==  NULL) {
                echo 'Belum Ada'; 
            } else {
                echo $tbl_sub_banjarmasin->tgl_bap;
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
                $tgl1 = new DateTime($tbl_sub_banjarmasin->tgl_bap);
                $tgl2 = new DateTime($tbl_sub_banjarmasin->tgl_mulai_doring);
                $jarak = $tgl2->diff($tgl1);
                echo "$jarak->d Hari";
                } else {
                    echo '0 Hari';
                }
                ?>
            </td>
            <td><?php echo $tbl_sub_banjarmasin->last_kerja ?></td>
            <td style="text-align:center" width="200px">
                <?php 
				echo anchor(site_url('tbl_sub_banjarmasin/read/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-eye" aria-hidden="true"> Lihat Detail</i>','class="btn btn-danger btn-sm"'); 
				echo '  ';
                if(($this->session->userdata('id_user_level') != 2)) {
                echo anchor(site_url('tbl_sub_banjarmasin/lihat_waiting/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-eye" aria-hidden="true"> Lihat Detail Payment</i>','class="btn btn-primary btn-sm"'); 
				echo '  ';
                }
                if($this->session->userdata('id_user_level') == 6) { 
                echo anchor(site_url('tbl_sub_banjarmasin/delete_from_spk/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-trash" aria-hidden="true"> Hapus SUB</i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				echo '  '; 
                }
                if(($this->session->userdata('id_user_level') != 7) && ($this->session->userdata('id_user_level') != 5) && ($this->session->userdata('id_user_level') != 3)) {
                    if (($this->session->userdata('id_user_level') != 2) && ($this->session->userdata('id_user_level') != 4)) {
                    echo anchor(site_url('tbl_sub_banjarmasin/update_sub/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-edit" aria-hidden="true"> Edit SUB</i>','class="btn btn-warning btn-sm"'); 
				    echo '  '; 
                    }
                    echo anchor(site_url('tbl_sub_banjarmasin/update_pekerjaan_new/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-plus" aria-hidden="true"> Update Pekerjaan</i>','class="btn btn-primary btn-sm"'); 
                    echo '  '; 
                    echo anchor(site_url('tbl_sub_banjarmasin/detail_pekerjaan/'.$tbl_sub_banjarmasin->id_sub_banjarmasin),'<i class="fa fa-eye" aria-hidden="true"> Riwayat Pekerjaan</i>','class="btn btn-success btn-sm"'); 
                    echo ' ';
                }
				?>
			</td>
		</tr>
                <?php
            endforeach;
            ?>
        </table>
       
        </div>
        
      </div>
      
    </div>
    
  </div>
  <?php if($this->session->userdata('id_user_level') == 6) { ?>
        <div class="row">
		              <!--buttons-->
                    <div class="btn-float">
                        <a href="<?php echo site_url('tbl_spk_banjarmasin/sampah')?>"><button type="button" class="btn btn-danger btn-circle btn-xl"><i class="fa fa-trash"> </i></button><br><br></a>
                        <!-- <a href=""><button type="button" class="btn btn-warning btn-circle btn-xl"><i class="fa fa-trash"> </i></button></a> -->
                    </div>
                    <!--fin buttons -->
	    </div>
    <?php } ?>
  
  
<?php endforeach; ?>
<!-- END MODAL SUB -->
<script>
  // Declare variables
  function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    const tableData = tr[i].getElementsByTagName("td");
    let allTextContent = '';
    for (let ind = 0; ind < tableData.length; ind++) {
        allTextContent += tableData[ind].innerText;
    }
    
    if (allTextContent) {
      if (allTextContent.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css"></script>
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