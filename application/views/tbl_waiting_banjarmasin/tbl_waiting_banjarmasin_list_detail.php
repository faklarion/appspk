<?php 
function rupiah($angka){	
	$hasil_rupiah = "Rp " . number_format($angka,0,',','.');
	return $hasil_rupiah;
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
                        <h3 class="box-title">KELOLA DATA WAITING LIST BANJARMASIN</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
		</div>
            </div>
            <div class='col-md-3'>
            <form action="<?php echo site_url('tbl_waiting_banjarmasin/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari.." class="form-control">
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
            <div class="col-md-1 text-right">
            </div>
            <div class="col-md-3 text-right">
                
            </div>
        </div>
        <h4><b>Note : </b> Yang Muncul Hanya yang sudah disetujui kasir</h4>
        <table class="table table-bordered sortable table_wrapper" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
                <th>No SPK</th>
                <th>No Invoice</th>
                <th>Jumlah Permintaan</th>
                <th>Tanggal Permintaan</th>
                <th>Status Persetujuan Kasir</th>
                <th>Tanggal Persetujuan Kasir</th>
                <th>Deskripsi</th>
                <th>Action</th>
            </tr><?php
            $jumlahPermintaan = 0;
            foreach ($tbl_waiting_banjarmasin_data as $tbl_waiting_banjarmasin)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_waiting_banjarmasin->no_spk ?> - <?php echo $tbl_waiting_banjarmasin->kode_sub ?></td>
			<td><?php echo $tbl_waiting_banjarmasin->no_invoice ?></td>
            <td><?php echo rupiah($tbl_waiting_banjarmasin->jumlah_permintaan);
            $jumlahPermintaan += $tbl_waiting_banjarmasin->jumlah_permintaan; ?></td>
			<td><?php echo tgl_indo($tbl_waiting_banjarmasin->tgl_permintaan) ?></td>
            <td>
                <?php 
                if($tbl_waiting_banjarmasin->acc == 2) {
                    echo 'Sudah Disetujui';
                } else {
                    echo 'Belum Disetujui';
                }
                ?>
            </td>
            <td>
                <?php 
                if($tbl_waiting_banjarmasin->tgl_persetujuan_2 == NULL) {
                    echo 'Belum Disetujui';
                } else {
                    echo $tbl_waiting_banjarmasin->tgl_persetujuan_2;
                }
                ?>
            </td>
			<td><?php echo $tbl_waiting_banjarmasin->deskripsi ?></td>
			<td style="text-align:center" width="200px">
				<?php 
                if($this->session->userdata('id_user_level') == 6) { 
                echo anchor(site_url('tbl_waiting_banjarmasin/update/'.$tbl_waiting_banjarmasin->id_waiting_banjarmasin),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  ';
				echo anchor(site_url('tbl_waiting_banjarmasin/delete_sampah/'.$tbl_waiting_banjarmasin->id_waiting_banjarmasin),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
                }
                ?>
			</td>
		</tr>
                <?php
            }
            ?>
             <tfoot>
        <tr>
                <th>Total</th>
                <th></th>
                <th></th>
                <th><?php echo rupiah($jumlahPermintaan); ?></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </tfoot>
        </table>
        <div >
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