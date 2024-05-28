<?php
function tgl_indo($tanggal){
	return date("d-m-Y", strtotime($tanggal));
}
?>
<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-warning box-solid">
    
                    <div class="box-header">
                        <h3 class="box-title">KELOLA DATA PROSES PERKERJAAN JAKARTA</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
        <!-- <?php echo anchor(site_url('tbl_sub_jakarta/create_proses'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data Proses', 'class="btn btn-danger btn-sm"'); ?> -->
		<?php echo anchor(site_url('tbl_sub_jakarta/word'), '<i class="fa fa-file-word-o" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-primary btn-sm"'); ?></div>
            </div>
            <div class='col-md-3'>
            <form action="<?php echo site_url('tbl_sub_jakarta/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari no SPK.." class="form-control">
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
        <table class="table table-bordered" style="margin-bottom: 10px" id="dataTable">
            <tr>
                <th>No</th>
				<th>No SPK</th>
				<th>Tanggal Stuf</th>
				<th>Tanggal Selesai Stuf</th>
				<th>Etd Kapal</th>
				<th>Eta Kapal</th>
				<th>Tanggal Mulai Doring</th>
				<th>Tanggal Selesai Doring</th>
				<th>Tanggal Bap</th>
				<th>Jumlah Dikerjakan</th>
				<th>Sisa Belum</th>
				<th>Status</th>
				<th>Keterangan</th>
				<th>Action</th>
            </tr><?php
            foreach ($tbl_sub_jakarta_data as $tbl_sub_jakarta)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_sub_jakarta->no_spk ?> - <?php echo $tbl_sub_jakarta->kode_sub ?></td>
			
      <td>
        <?php 
      if($tbl_sub_jakarta->tgl_stuf === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->tgl_stuf);
      }
       ?>
      </td>
			<td>
        <?php 
      if($tbl_sub_jakarta->tgl_selesai_stuf === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->tgl_selesai_stuf);
      }
       ?>
      </td>
      <td>
        <?php 
      if($tbl_sub_jakarta->etd_kapal === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->etd_kapal);
      }
       ?>
      </td>
      <td>
        <?php 
      if($tbl_sub_jakarta->eta_kapal === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->eta_kapal);
      }
       ?>
      </td>
      <td>
        <?php 
      if($tbl_sub_jakarta->tgl_mulai_doring === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->tgl_mulai_doring);
      }
       ?>
      </td>
      <td>
        <?php 
      if($tbl_sub_jakarta->tgl_selesai_doring === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->tgl_selesai_doring);
      }
       ?>
      </td>
      <td>
        <?php 
      if($tbl_sub_jakarta->tgl_bap === "0000-00-00") {
        echo 'Belum Ada';
      } else {
        echo tgl_indo($tbl_sub_jakarta->tgl_bap);
      }
       ?>
      </td>
			<td><?php echo $tbl_sub_jakarta->jumlah_dikerjakan ?></td>
			<td><?php echo $tbl_sub_jakarta->sisa_belum ?></td>
			<td><?php echo $tbl_sub_jakarta->status ?></td>
			<td><?php echo $tbl_sub_jakarta->keterangan ?></td>
			<td style="text-align:center" width="200px">
				<?php 
                 if($this->session->userdata('id_user_level') != 7) {
                    echo anchor(site_url('tbl_sub_jakarta/update_pekerjaan_new/'.$tbl_sub_jakarta->id_sub_jakarta),'<i class="fa fa-edit" aria-hidden="true"> Update Pekerjaan</i>','class="btn btn-danger btn-sm"'); 
                    echo '  '; 
                 }
                ?>
			</td>
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

<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
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