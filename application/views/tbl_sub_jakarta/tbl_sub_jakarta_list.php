<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-warning box-solid">
    
                    <div class="box-header">
                        <h3 class="box-title">KELOLA DATA TBL_SUB_JAKARTA</h3>
                    </div>
        
        <div class="box-body">
            <div class='row'>
            <div class='col-md-9'>
            <div style="padding-bottom: 10px;">
        <?php echo anchor(site_url('tbl_sub_jakarta/create'), '<i class="fa fa-wpforms" aria-hidden="true"></i> Tambah Data', 'class="btn btn-danger btn-sm"'); ?>
		<?php echo anchor(site_url('tbl_sub_jakarta/word'), '<i class="fa fa-file-word-o" aria-hidden="true"></i> Export Ms Word', 'class="btn btn-primary btn-sm"'); ?></div>
            </div>
            <div class='col-md-3'>
            <form action="<?php echo site_url('tbl_sub_jakarta/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('tbl_sub_jakarta'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
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
        <table class="table table-bordered" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Spk Jakarta</th>
		<th>Kode Sub</th>
		<th>Tgl Spk</th>
		<th>Pelaksana</th>
		<th>Nilai Spk</th>
		<th>Vendor</th>
		<th>Asal</th>
		<th>Tujuan</th>
		<th>Jenis Pekerjaan</th>
		<th>Item Barang</th>
		<th>Qty</th>
		<th>Unit Angkut</th>
		<th>Tgl Stuf</th>
		<th>Tgl Selesai Stuf</th>
		<th>Etd Kapal</th>
		<th>Eta Kapal</th>
		<th>Tgl Mulai Doring</th>
		<th>Tgl Selesai Doring</th>
		<th>Tgl Bap</th>
		<th>Jumlah Dikerjakan</th>
		<th>Sisa Belum</th>
		<th>Status</th>
		<th>Keterangan</th>
		<th>Id Users</th>
		<th>Last Update</th>
		<th>Acc</th>
		<th>Tgl Debit Nota</th>
		<th>Dpp</th>
		<th>Total Payment</th>
		<th>Action</th>
            </tr><?php
            foreach ($tbl_sub_jakarta_data as $tbl_sub_jakarta)
            {
                ?>
                <tr>
			<td width="10px"><?php echo ++$start ?></td>
			<td><?php echo $tbl_sub_jakarta->id_spk_jakarta ?></td>
			<td><?php echo $tbl_sub_jakarta->kode_sub ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_spk ?></td>
			<td><?php echo $tbl_sub_jakarta->pelaksana ?></td>
			<td><?php echo $tbl_sub_jakarta->nilai_spk ?></td>
			<td><?php echo $tbl_sub_jakarta->vendor ?></td>
			<td><?php echo $tbl_sub_jakarta->asal ?></td>
			<td><?php echo $tbl_sub_jakarta->tujuan ?></td>
			<td><?php echo $tbl_sub_jakarta->jenis_pekerjaan ?></td>
			<td><?php echo $tbl_sub_jakarta->item_barang ?></td>
			<td><?php echo $tbl_sub_jakarta->qty ?></td>
			<td><?php echo $tbl_sub_jakarta->unit_angkut ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_stuf ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_selesai_stuf ?></td>
			<td><?php echo $tbl_sub_jakarta->etd_kapal ?></td>
			<td><?php echo $tbl_sub_jakarta->eta_kapal ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_mulai_doring ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_selesai_doring ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_bap ?></td>
			<td><?php echo $tbl_sub_jakarta->jumlah_dikerjakan ?></td>
			<td><?php echo $tbl_sub_jakarta->sisa_belum ?></td>
			<td><?php echo $tbl_sub_jakarta->status ?></td>
			<td><?php echo $tbl_sub_jakarta->keterangan ?></td>
			<td><?php echo $tbl_sub_jakarta->id_users ?></td>
			<td><?php echo $tbl_sub_jakarta->last_update ?></td>
			<td><?php echo $tbl_sub_jakarta->acc ?></td>
			<td><?php echo $tbl_sub_jakarta->tgl_debit_nota ?></td>
			<td><?php echo $tbl_sub_jakarta->dpp ?></td>
			<td><?php echo $tbl_sub_jakarta->total_payment ?></td>
			<td style="text-align:center" width="200px">
				<?php 
				echo anchor(site_url('tbl_sub_jakarta/read/'.$tbl_sub_jakarta->id_sub_jakarta),'<i class="fa fa-eye" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('tbl_sub_jakarta/update/'.$tbl_sub_jakarta->id_sub_jakarta),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm"'); 
				echo '  '; 
				echo anchor(site_url('tbl_sub_jakarta/delete/'.$tbl_sub_jakarta->id_sub_jakarta),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-sm" Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
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