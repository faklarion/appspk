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

    .table_wrapper{
       display: block;
       overflow-x: auto;
       overflow-y: scroll;
       height: 100%;
       white-space: nowrap;
       width : 100%;
    }

   
    .table_wrapper th {
       position: sticky;
       position: -webkit-sticky;
       text-align: center;
       top: 0;
       z-index: 999;
       width : 1000px;
       background-color: #D9DDDC;   
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
                        <h3 class="box-title">KELOLA DATA DEBIT NOTA BANJARMASIN</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
        <?php 
        if($this->session->userdata('id_user_level') != 7) {
        echo anchor(site_url('tbl_debit_banjarmasin/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); 
        }
        ?>
		</div>
            </div>
            <div class='col-md-3'>
                <div class="input-group">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari.." class="form-control">
                </div>
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
                <div style="margin-top: 8px" id="message">
                   <table class="table table-bordered">
                        <tr>
                            <td>
                            <form method="get" action="<?php echo site_url('tbl_debit_banjarmasin/word_2') ?>" target="_blank">
                                            <div class="form-group">
                                            PRINT
                                            </div>
                                            <div class="form-group">
                                            <select id="id_spk_banjarmasin" name="id_spk_banjarmasin" class="form-control">
                                                <?php foreach ($no_spk_data as $spk): ?>
                                                    <option value="<?= $spk->id_spk_banjarmasin; ?>"><?= $spk->no_spk; ?></option>
                                                <?php endforeach; ?>
                                            </select>
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
                            <form method="get" action="<?php echo site_url('tbl_debit_banjarmasin/cari') ?>">
                                            <div class="form-group">
                                            FILTER
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
                                                <a href="<?php echo site_url('tbl_debit_banjarmasin') ?>" class="btn btn-warning">RESET</a> 
                                            </div>
                                    
                            </form>
                            </td>
                        </tr>
                   </table>
                </div>
            </div>
        </div>
        <h4><?php echo $filter ?></h4>
        <table class="table table-bordered sortable table_wrapper" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th style="max-width :10px">No</th>
                <th>No SPK</th>
                <th>No Debit</th>
                <th>Tanggal Debit Nota</th>
                <th>Customer</th>
                <th>Deskripsi</th>
                <th>DPP</th>
                <th>PPN</th>
                <th>Total Debit Nota</th>
                <th>Action</th>
            </tr><?php
            $totalDPP = 0;
            $totalPPN = 0;
            $TotalTotal = 0;
            foreach ($tbl_debit_banjarmasin_data as $tbl_debit_banjarmasin)
            {
                ?>
                <tr>
			<td style="max-width :10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_debit_banjarmasin->no_spk ?> - <?php echo $tbl_debit_banjarmasin->kode_sub ?></td>
			<td><?php echo $tbl_debit_banjarmasin->no_debit ?></td>
			<td><?php echo tgl_indo($tbl_debit_banjarmasin->tgl_debit_nota) ?></td>
			<td><?php echo $tbl_debit_banjarmasin->customer ?></td>
            <td><?php echo $tbl_debit_banjarmasin->deskripsi ?></td>
			<td><?php echo rupiah($tbl_debit_banjarmasin->dpp);
            $totalDPP += $tbl_debit_banjarmasin->dpp; ?></td>
			<td><?php echo rupiah($tbl_debit_banjarmasin->ppn);
            $totalPPN += $tbl_debit_banjarmasin->ppn; ?></td>
			<td><?php echo rupiah($tbl_debit_banjarmasin->total_debit_nota);
            $TotalTotal += $tbl_debit_banjarmasin->total_debit_nota; ?></td>
			<td style="text-align:center" width="300px">
				<?php 
                if($this->session->userdata('id_user_level') != 7) {
                echo anchor(site_url('tbl_debit_banjarmasin/read/'.$tbl_debit_banjarmasin->id_debit_banjarmasin),'<i class="fa fa-print" aria-hidden="true"></i>','class="btn btn-danger btn-sm" target="_blank"'); 				
                echo '  '; 
                echo anchor(site_url('tbl_debit_banjarmasin/update/'.$tbl_debit_banjarmasin->id_debit_banjarmasin),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
                }
                if($this->session->userdata('id_user_level') == 6) {
				echo anchor(site_url('tbl_debit_banjarmasin/delete_sampah/'.$tbl_debit_banjarmasin->id_debit_banjarmasin),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
                }
                ?>
			</td>
		</tr>
                <?php
            }
            ?>
            <tfoot>
            <tr>
                <th width="10px">Total</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><?= rupiah($totalDPP); ?></th>
                <th><?= rupiah($totalPPN); ?></th>
                <th><?= rupiah($TotalTotal); ?></th>
                <th></th>
            </tr
            </tfoot>
        </table>
        
        <?php 
            if($this->session->userdata('id_user_level') != 7) {
            echo anchor(site_url('tbl_payment_banjarmasin/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Payment Debit', 'class="btn btn-danger btn-sm"'); 
            }
        ?>

        <table class="table table-bordered sortable table_wrapper" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th style="max-width :10px">No</th>
                <th>No SPK</th>
                <th>No Debit</th>
                <th>Total Debit Nota</th>
                <th>Payment</th>
                <th>Tanggal Payment</th>
                <th>Action</th>
            </tr><?php
            $totalPayment = 0;
            $baru = 0;
            $TotalTotal = 0;
            foreach ($tbl_payment_banjarmasin_data as $tbl_payment_banjarmasin)
            {
                ?>
                <tr>
			<td style="max-width :10px"><?php echo ++$baru ?></td>
			<td><?php echo $tbl_payment_banjarmasin->no_spk ?> - <?php echo $tbl_payment_banjarmasin->kode_sub ?></td>
			<td><?php echo $tbl_payment_banjarmasin->no_debit ?></td>
			<td><?php echo rupiah($tbl_payment_banjarmasin->total_debit_nota);
            $TotalTotal += $tbl_payment_banjarmasin->total_debit_nota; ?></td>
            <td><?php echo rupiah($tbl_payment_banjarmasin->jumlah_payment); 
            $totalPayment += $tbl_payment_banjarmasin->jumlah_payment; ?></td>
            <td><?php echo tgl_indo($tbl_payment_banjarmasin->tanggal_payment) ?></td>
			<td style="text-align:center" width="300px">
				<?php 
                if($this->session->userdata('id_user_level') != 7) {
                //echo anchor(site_url('tbl_debit_banjarmasin/read/'.$tbl_debit_banjarmasin->id_debit_banjarmasin),'<i class="fa fa-print" aria-hidden="true"></i>','class="btn btn-danger btn-sm" target="_blank"'); 				
                //echo '  '; 
                echo anchor(site_url('tbl_payment_banjarmasin/update/'.$tbl_payment_banjarmasin->id_payment_banjarmasin),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
                }
                if($this->session->userdata('id_user_level') == 6) {
				echo anchor(site_url('tbl_payment_banjarmasin/delete/'.$tbl_payment_banjarmasin->id_payment_banjarmasin),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
                }
                ?>
			</td>
		</tr>
                <?php
            }
            ?>
            <tfoot>
            <tr>
                <th width="10px">Total</th>
                <th></th>
                <th></th>
                <th><?= rupiah($TotalTotal); ?></th>
                <th><?= rupiah($totalPayment); ?></th>
                <th></th>
                <th></th>
            </tr
            </tfoot>
        </table>

		</div>

        </div>

        

                    </div>
            </div>
            </div>
    </section>
</div>
<?php if($this->session->userdata('id_user_level') == 6) { ?>
<div class="row">
		              <!--buttons-->
                    <div class="btn-float">
                        <a href="<?php echo site_url('tbl_debit_banjarmasin/sampah')?>"><button type="button" class="btn btn-danger btn-circle btn-xl"><i class="fa fa-trash"> </i></button><br><br></a>
                        <!-- <a href=""><button type="button" class="btn btn-warning btn-circle btn-xl"><i class="fa fa-trash"> </i></button></a> -->
                    </div>
                    <!--fin buttons -->
</div>
<?php } ?>
  
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
<script>
function myFunction2() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>