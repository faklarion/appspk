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
                        <h3 class="box-title">SAMPAH DEBIT NOTA JAKARTA</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <!-- <div style="padding-bottom: 10px;">
        <?php 
        if($this->session->userdata('id_user_level') != 7) {
        echo anchor(site_url('tbl_debit_jakarta/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); 
        }
        ?>
		</div> -->
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
        <!-- <div class="row" style="margin-bottom: 10px">
            <div class="col-md-12 text-center">
                <div style="margin-top: 8px" id="message">
                   <table class="table table-bordered">
                        <tr>
                            <td>
                            <form method="get" action="<?php echo site_url('tbl_debit_jakarta/word_2') ?>" target="_blank">
                                            <div class="form-group">
                                            PRINT
                                            </div>
                                            <div class="form-group">
                                            <select id="id_spk_jakarta" name="id_spk_jakarta" class="form-control">
                                                <?php foreach ($no_spk_data as $spk): ?>
                                                    <option value="<?= $spk->id_spk_jakarta; ?>"><?= $spk->no_spk; ?></option>
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
                            <form method="get" action="<?php echo site_url('tbl_debit_jakarta/cari') ?>">
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
                                                <a href="<?php echo site_url('tbl_debit_jakarta') ?>" class="btn btn-warning">RESET</a> 
                                            </div>
                                    
                            </form>
                            </td>
                        </tr>
                   </table>
                </div>
            </div>
        </div> -->
        <!-- <h4><?php echo $filter ?></h4> -->
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
            foreach ($tbl_debit_jakarta_data as $tbl_debit_jakarta)
            {
                ?>
                <tr>
			<td style="max-width :10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_debit_jakarta->no_spk ?> - <?php echo $tbl_debit_jakarta->kode_sub ?></td>
			<td><?php echo $tbl_debit_jakarta->no_debit ?></td>
			<td><?php echo tgl_indo($tbl_debit_jakarta->tgl_debit_nota) ?></td>
			<td><?php echo $tbl_debit_jakarta->customer ?></td>
            <td><?php echo $tbl_debit_jakarta->deskripsi ?></td>
			<td><?php echo rupiah($tbl_debit_jakarta->dpp);
            $totalDPP += $tbl_debit_jakarta->dpp; ?></td>
			<td><?php echo rupiah($tbl_debit_jakarta->ppn);
            $totalPPN += $tbl_debit_jakarta->ppn; ?></td>
			<td><?php echo rupiah($tbl_debit_jakarta->total_debit_nota);
            $TotalTotal += $tbl_debit_jakarta->total_debit_nota; ?></td>
			<td style="text-align:center" width="300px">
				<?php 
                if($this->session->userdata('id_user_level') != 7) {
                //echo anchor(site_url('tbl_debit_jakarta/read/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-print" aria-hidden="true"></i>','class="btn btn-danger btn-sm" target="_blank"'); 				
                //echo '  '; 
                echo anchor(site_url('tbl_debit_jakarta/restore_sampah/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-recycle" aria-hidden="true"></i>','class="btn btn-danger btn-sm"  onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
				echo '  '; 
                }
                if($this->session->userdata('id_user_level') == 6) {
				echo anchor(site_url('tbl_debit_jakarta/delete/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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