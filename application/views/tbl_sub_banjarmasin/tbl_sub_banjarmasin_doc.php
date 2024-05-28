<!doctype html>
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
        <h2>Tbl_sub_banjarmasin List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Id Spk Banjarmasin</th>
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
		
            </tr><?php
            foreach ($tbl_sub_banjarmasin_data as $tbl_sub_banjarmasin)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->id_spk_banjarmasin ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->kode_sub ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_spk ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->pelaksana ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->nilai_spk ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->vendor ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->asal ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tujuan ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->jenis_pekerjaan ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->item_barang ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->qty ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->unit_angkut ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_stuf ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_selesai_stuf ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->etd_kapal ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->eta_kapal ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_mulai_doring ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_selesai_doring ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_bap ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->jumlah_dikerjakan ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->sisa_belum ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->status ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->keterangan ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->id_users ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->last_update ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->acc ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->tgl_debit_nota ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->dpp ?></td>
		      <td><?php echo $tbl_sub_banjarmasin->total_payment ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>