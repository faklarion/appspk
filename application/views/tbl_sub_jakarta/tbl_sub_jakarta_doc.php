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
        <h2>Tbl_sub_jakarta List</h2>
        <table class="word-table" style="margin-bottom: 10px">
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
		
            </tr><?php
            foreach ($tbl_sub_jakarta_data as $tbl_sub_jakarta)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
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
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>