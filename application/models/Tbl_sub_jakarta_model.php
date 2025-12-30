<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_sub_jakarta_model extends CI_Model
{

    public $table = 'tbl_sub_jakarta';
    public $id = 'id_sub_jakarta';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
		$this->db->select('*');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
		$this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

	function get_all_wait()
    {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('acc = 0');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

	function get_total_payment_sub($id)
    {
		$this->db->select('sum(tbl_waiting_jakarta.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta = tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->where('tbl_sub_jakarta.id_sub_jakarta', $id);
        $this->db->where('tbl_waiting_jakarta.acc', 2);
		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
			
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        
		return $this->db->get('tbl_waiting_jakarta')->row();
    }

	function get_total_payment($id)
    {
		$this->db->select('sum(tbl_waiting_jakarta.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta = tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);
        $this->db->where('tbl_waiting_jakarta.acc', 2);
		
		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
            
        }
        
		return $this->db->get('tbl_waiting_jakarta')->row();
    }

	function get_payment()
    {
		$this->db->select('sum(tbl_waiting_jakarta.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta = tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        //$this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);
        $this->db->where('tbl_waiting_jakarta.acc', 2);

		$bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
        $id_vendor = $this->input->get('id_vendor');
        if((isset($bulan) && isset($tahun))) {
            $this->db->where('MONTH(tbl_spk_jakarta.tgl_spk)', $bulan);
            $this->db->where('YEAR(tbl_spk_jakarta.tgl_spk)', $tahun);
        }

        if((isset($id_vendor))) {
            $this->db->where('tbl_spk_jakarta.id_vendor', $id_vendor);
        }
		
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        //$this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);
        return $this->db->get('tbl_waiting_jakarta')->row();
    }

	function get_total_dpp($id)
    {
		$this->db->select('sum(tbl_debit_jakarta.dpp) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_debit_jakarta.id_sub_jakarta=tbl_sub_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);

		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_debit_jakarta.hapus', 1);
        } else {
			
            $this->db->where('tbl_debit_jakarta.hapus', 0);
        }
        
        
        return $this->db->get('tbl_debit_jakarta')->row();
    }

	function get_dpp()
    {
		$this->db->select('sum(tbl_debit_jakarta.dpp) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_debit_jakarta.id_sub_jakarta=tbl_sub_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        //$this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);

		$bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
        $id_vendor = $this->input->get('id_vendor');
        if((isset($bulan) && isset($tahun))) {
            $this->db->where('MONTH(tbl_spk_jakarta.tgl_spk)', $bulan);
            $this->db->where('YEAR(tbl_spk_jakarta.tgl_spk)', $tahun);
        }

        if((isset($id_vendor))) {
            $this->db->where('tbl_spk_jakarta.id_vendor', $id_vendor);
        }

		$this->db->where('tbl_debit_jakarta.hapus', 0);
        

        return $this->db->get('tbl_debit_jakarta')->row();
    }

	function get_total_dpp_sub($id)
    {
		$this->db->select('sum(tbl_debit_jakarta.dpp) as total');
		$this->db->join('tbl_sub_jakarta', 'tbl_debit_jakarta.id_sub_jakarta=tbl_sub_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_sub_jakarta', $id);

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_debit_jakarta.hapus', 0);
        }
        
		
        return $this->db->get('tbl_debit_jakarta')->row();
    }


    function get_total_payment_dpp($id)
    {
		$this->db->select('sum(tbl_payment_jakarta.jumlah_payment) as total');
        $this->db->join('tbl_debit_jakarta', 'tbl_debit_jakarta.id_debit_jakarta=tbl_payment_jakarta.id_debit_jakarta');
		$this->db->join('tbl_sub_jakarta', 'tbl_debit_jakarta.id_sub_jakarta=tbl_sub_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_debit_jakarta.hapus', 0);
        }
        
		
        return $this->db->get('tbl_payment_jakarta')->row();
    }

        function get_total_payment_all()
    {
		$this->db->select('sum(tbl_payment_jakarta.jumlah_payment) as total');
        $this->db->join('tbl_debit_jakarta', 'tbl_debit_jakarta.id_debit_jakarta=tbl_payment_jakarta.id_debit_jakarta');
		$this->db->join('tbl_sub_jakarta', 'tbl_debit_jakarta.id_sub_jakarta=tbl_sub_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_debit_jakarta.hapus', 0);
        }
        
		
        return $this->db->get('tbl_payment_jakarta')->row();
    }

	function get_tgl_nota($id)
    {
		$this->db->select('tbl_sub_jakarta.tgl_debit_nota as tanggal');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_spk_jakarta.id_spk_jakarta', $id);
		$this->db->order_by('tbl_sub_jakarta.tgl_debit_nota', 'DESC');
		$this->db->limit(1);

		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }

        $result = $this->db->get($this->table);
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return FALSE;
		}
    }

    // get data by id
    function get_by_id($id)
    {
		$this->db->select('*, tbl_sub_jakarta.tgl_debit_nota, tbl_sub_jakarta.id_sub_jakarta, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_spk_jakarta', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

	function get_by_id_read($id)
    {
		$this->db->select('*,tbl_sub_jakarta.tgl_debit_nota, tbl_sub_jakarta.id_sub_jakarta, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_sub_jakarta', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->row();
    }

	function get_by_id_read_kerja($id)
    {
		$this->db->select('*, tbl_sub_jakarta.id_sub_jakarta, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_spk_jakarta', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

	
	function get_by_id_read_waiting($id)
    {
		$this->db->select('*, tbl_sub_jakarta.pelaksana,tbl_waiting_jakarta.acc, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_waiting_jakarta.id_waiting_jakarta', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
		return $this->db->get('tbl_waiting_jakarta')->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
		$this->db->like('id_sub_jakarta', $q);
		$this->db->or_like('kode_sub', $q);
		$this->db->or_like('vendor', $q);
		$this->db->or_like('asal', $q);
		$this->db->or_like('tujuan', $q);
		$this->db->or_like('jenis_pekerjaan', $q);
		$this->db->or_like('item_barang', $q);
		$this->db->or_like('qty', $q);
		$this->db->or_like('unit_angkut', $q);
		$this->db->or_like('tgl_stuf', $q);
		$this->db->or_like('tgl_selesai_stuf', $q);
		$this->db->or_like('etd_kapal', $q);
		$this->db->or_like('eta_kapal', $q);
		$this->db->or_like('tgl_mulai_doring', $q);
		$this->db->or_like('tgl_selesai_doring', $q);
		$this->db->or_like('tgl_bap', $q);
		$this->db->or_like('jumlah_dikerjakan', $q);
		$this->db->or_like('sisa_belum', $q);
		$this->db->or_like('status', $q);
		$this->db->or_like('keterangan', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users', 'LEFT');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
		$this->db->order_by($this->id, $this->order);
        $this->db->like('id_sub_jakarta', $q);
		$this->db->or_like('kode_sub', $q);
		$this->db->or_like('vendor', $q);
		$this->db->or_like('asal', $q);
		$this->db->or_like('tujuan', $q);
		$this->db->or_like('jenis_pekerjaan', $q);
		$this->db->or_like('item_barang', $q);
		$this->db->or_like('qty', $q);
		$this->db->or_like('unit_angkut', $q);
		$this->db->or_like('tgl_stuf', $q);
		$this->db->or_like('tgl_selesai_stuf', $q);
		$this->db->or_like('etd_kapal', $q);
		$this->db->or_like('eta_kapal', $q);
		$this->db->or_like('tgl_mulai_doring', $q);
		$this->db->or_like('tgl_selesai_doring', $q);
		$this->db->or_like('tgl_bap', $q);
		$this->db->or_like('jumlah_dikerjakan', $q);
		$this->db->or_like('sisa_belum', $q);
		$this->db->or_like('status', $q);
		$this->db->or_like('keterangan', $q);
		$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

	function get_limit_data_wait() {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.acc = 0');
        $this->db->order_by('tbl_waiting_jakarta.id_sub_jakarta', $this->order);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
		return $this->db->get('tbl_waiting_jakarta')->result();
    }

	function get_limit_data_wait_kasir() {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.acc = 1');
		$this->db->order_by('tbl_waiting_jakarta.id_sub_jakarta', $this->order);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
		 return $this->db->get('tbl_waiting_jakarta')->result();
    }

	function get_limit_data_acc() {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.acc = 1');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
    	$this->db->order_by('tbl_waiting_jakarta.id_sub_jakarta', $this->order);
		return $this->db->get('tbl_waiting_jakarta')->result();
    }

	function get_limit_data_acc_kasir() {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.acc = 2');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->order_by('tbl_waiting_jakarta.id_sub_jakarta', $this->order);
		return $this->db->get('tbl_waiting_jakarta')->result();
    }

	function get_data_acc_kasir_tanggal($bulan, $tahun) {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.acc = 2');
		$this->db->where('MONTH(tbl_waiting_jakarta.tgl_persetujuan_2)', $bulan);
		$this->db->where('YEAR(tbl_waiting_jakarta.tgl_persetujuan_2)', $tahun);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        return $this->db->get('tbl_waiting_jakarta')->result();
    }

	function get_limit_data_batal() {
		$this->db->select('*, tbl_sub_jakarta.pelaksana, tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.dpp, tbl_sub_jakarta.total_payment, tbl_sub_jakarta.last_update, tbl_sub_jakarta.tgl_spk');
		$this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
		$this->db->where('tbl_waiting_jakarta.batal = 1');
      	$this->db->order_by('tbl_waiting_jakarta.id_sub_jakarta', $this->order);
		  if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
		return $this->db->get('tbl_waiting_jakarta')->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Tbl_sub_jakarta_model.php */
/* Location: ./application/models/Tbl_sub_jakarta_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-24 13:40:49 */
/* http://harviacode.com */