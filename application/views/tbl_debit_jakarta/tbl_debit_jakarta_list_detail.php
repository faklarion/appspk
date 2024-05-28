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
       top: 0;
       z-index: 999;
       width : 100%;
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
                        <h3 class="box-title">KELOLA DATA DEBIT NOTA JAKARTA</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
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
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                
            </div>
        </div>
        <h4>INDUK SPK : <?php echo $noSPK ?> </h4>
        <table class="table table-bordered sortable table_wrapper" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
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
			<td width="10px"><?php echo ++$start ?></td>
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
			<td style="text-align:center" width="200px">
				<?php 
                if($this->session->userdata('id_user_level') != 7) {
                  echo anchor(site_url('tbl_debit_jakarta/read/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-print" aria-hidden="true"></i>','class="btn btn-danger btn-sm" target="_blank"'); 				
                  echo '  '; 
                  }
                if($this->session->userdata('id_user_level') == 6) {
                  echo anchor(site_url('tbl_debit_jakarta/update/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
                  echo '  '; 
                  echo anchor(site_url('tbl_debit_jakarta/delete_sampah/'.$tbl_debit_jakarta->id_debit_jakarta),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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
            </tr>
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
  // Declare variables
  function myFunction2() {
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