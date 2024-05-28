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
       width: 100%;
    }
    .table_wrapper th {
       position: sticky;
       position: -webkit-sticky;
       top: 0;
       z-index: 999;
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
                        <h3 class="box-title">KELOLA DATA PEMBATALAN BANJARMASIN</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
        
		</div>
            </div>
            <div class='col-md-3'>
            <form action="<?php echo site_url('tbl_sub_banjarmasin/index'); ?>" class="form-inline" method="get">
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
        <table class="table table-bordered sortable table_wrapper" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
                <th>No SPK</th>
                <th>No Invoice</th>
                <th>Tanggal SPK</th>
                <th>Pelaksana</th>
                <th>Nilai SPK</th>
                <th>Tanggal Pembatalan</th>
                <th>Action</th>
            </tr><?php
            $jumlahSpk = 0;
            foreach ($tbl_sub_banjarmasin_data as $tbl_sub_banjarmasin)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_spk ?> - <?php echo $tbl_sub_banjarmasin->kode_sub ?></td>
			<td><?php echo $tbl_sub_banjarmasin->no_invoice ?></td>
			<td><?php echo tgl_indo($tbl_sub_banjarmasin->tgl_spk) ?></td>
			<td><?php echo $tbl_sub_banjarmasin->pelaksana ?></td>
			<td><?php echo rupiah($tbl_sub_banjarmasin->nilai_spk);
            $jumlahSpk += $tbl_sub_banjarmasin->nilai_spk; ?></td>
            <td><?php echo $tbl_sub_banjarmasin->tgl_pembatalan_2 ?></td>
			<td style="text-align:center" width="200px">
				<?php 
                if($this->session->userdata('id_user_level') == 6) {
				echo anchor(site_url('tbl_waiting_banjarmasin/delete_sampah/'.$tbl_sub_banjarmasin->id_waiting_banjarmasin),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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
                <th></th>
                <th></th>
                <th><?php echo rupiah($jumlahSpk); ?></th>
                <th></th>
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
<?php if($this->session->userdata('id_user_level') == 6) { ?>
<div class="row">
		              <!--buttons-->
<div class="btn-float">
                        <a href="<?php echo site_url('tbl_waiting_banjarmasin/sampah')?>"><button type="button" class="btn btn-danger btn-circle btn-xl"><i class="fa fa-trash"> </i></button><br><br></a>
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