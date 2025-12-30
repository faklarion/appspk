<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_sub_banjarmasin_model extends CI_Model
{

    public $table = 'tbl_sub_banjarmasin';
    public $id = 'id_sub_banjarmasin';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
		$this->db->select('*');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
		$this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

	function get_all_wait()
    {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('acc = 0');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

	function get_total_payment_sub($id)
    {
		$this->db->select('sum(tbl_waiting_banjarmasin.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin = tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->where('tbl_sub_banjarmasin.id_sub_banjarmasin', $id);
        $this->db->where('tbl_waiting_banjarmasin.acc', 2);
		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
			
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        
		return $this->db->get('tbl_waiting_banjarmasin')->row();
    }

	function get_total_payment($id)
    {
		$this->db->select('sum(tbl_waiting_banjarmasin.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin = tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);
        $this->db->where('tbl_waiting_banjarmasin.acc', 2);
		
		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
            
        }
        
		return $this->db->get('tbl_waiting_banjarmasin')->row();
    }

	function get_payment()
    {
		$this->db->select('sum(tbl_waiting_banjarmasin.jumlah_permintaan) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin = tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        //$this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);
        $this->db->where('tbl_waiting_banjarmasin.acc', 2);

		$bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
        $id_vendor = $this->input->get('id_vendor');
        if((isset($bulan) && isset($tahun))) {
            $this->db->where('MONTH(tbl_spk_banjarmasin.tgl_spk)', $bulan);
            $this->db->where('YEAR(tbl_spk_banjarmasin.tgl_spk)', $tahun);
        }

        if((isset($id_vendor))) {
            $this->db->where('tbl_spk_banjarmasin.id_vendor', $id_vendor);
        }
		
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        //$this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);
        return $this->db->get('tbl_waiting_banjarmasin')->row();
    }

	function get_total_dpp($id)
    {
		$this->db->select('sum(tbl_debit_banjarmasin.dpp) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_debit_banjarmasin.id_sub_banjarmasin=tbl_sub_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);

		if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_debit_banjarmasin.hapus', 1);
        } else {
			
            $this->db->where('tbl_debit_banjarmasin.hapus', 0);
        }
        
        
        return $this->db->get('tbl_debit_banjarmasin')->row();
    }

	function get_dpp()
    {
		$this->db->select('sum(tbl_debit_banjarmasin.dpp) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_debit_banjarmasin.id_sub_banjarmasin=tbl_sub_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        //$this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);

		$bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
        $id_vendor = $this->input->get('id_vendor');
        if((isset($bulan) && isset($tahun))) {
            $this->db->where('MONTH(tbl_spk_banjarmasin.tgl_spk)', $bulan);
            $this->db->where('YEAR(tbl_spk_banjarmasin.tgl_spk)', $tahun);
        }

        if((isset($id_vendor))) {
            $this->db->where('tbl_spk_banjarmasin.id_vendor', $id_vendor);
        }

		$this->db->where('tbl_debit_banjarmasin.hapus', 0);
        

        return $this->db->get('tbl_debit_banjarmasin')->row();
    }

	function get_total_dpp_sub($id)
    {
		$this->db->select('sum(tbl_debit_banjarmasin.dpp) as total');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_debit_banjarmasin.id_sub_banjarmasin=tbl_sub_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_sub_banjarmasin', $id);

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_debit_banjarmasin.hapus', 0);
        }
        
		
        return $this->db->get('tbl_debit_banjarmasin')->row();
    }


    function get_total_payment_dpp($id)
    {
		$this->db->select('sum(tbl_payment_banjarmasin.jumlah_payment) as total');
        $this->db->join('tbl_debit_banjarmasin', 'tbl_debit_banjarmasin.id_debit_banjarmasin=tbl_payment_banjarmasin.id_debit_banjarmasin');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_debit_banjarmasin.id_sub_banjarmasin=tbl_sub_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_debit_banjarmasin.hapus', 0);
        }
        
		
        return $this->db->get('tbl_payment_banjarmasin')->row();
    }

        function get_total_payment_all()
    {
		$this->db->select('sum(tbl_payment_banjarmasin.jumlah_payment) as total');
        $this->db->join('tbl_debit_banjarmasin', 'tbl_debit_banjarmasin.id_debit_banjarmasin=tbl_payment_banjarmasin.id_debit_banjarmasin');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_debit_banjarmasin.id_sub_banjarmasin=tbl_sub_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');

	    if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_debit_banjarmasin.hapus', 0);
        }
        
		
        return $this->db->get('tbl_payment_banjarmasin')->row();
    }

	function get_tgl_nota($id)
    {
		$this->db->select('tbl_sub_banjarmasin.tgl_debit_nota as tanggal');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);
		$this->db->order_by('tbl_sub_banjarmasin.tgl_debit_nota', 'DESC');
		$this->db->limit(1);

		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
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
		$this->db->select('*, tbl_sub_banjarmasin.tgl_debit_nota, tbl_sub_banjarmasin.id_sub_banjarmasin, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_spk_banjarmasin', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

	function get_by_id_read($id)
    {
		$this->db->select('*,tbl_sub_banjarmasin.tgl_debit_nota, tbl_sub_banjarmasin.id_sub_banjarmasin, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_sub_banjarmasin', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->row();
    }

	function get_by_id_read_kerja($id)
    {
		$this->db->select('*, tbl_sub_banjarmasin.id_sub_banjarmasin, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_spk_banjarmasin', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

	
	function get_by_id_read_waiting($id)
    {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana,tbl_waiting_banjarmasin.acc, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_waiting_banjarmasin.id_waiting_banjarmasin', $id);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
		return $this->db->get('tbl_waiting_banjarmasin')->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
		$this->db->like('id_sub_banjarmasin', $q);
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
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users', 'LEFT');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
		$this->db->order_by($this->id, $this->order);
        $this->db->like('id_sub_banjarmasin', $q);
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
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.acc = 0');
        $this->db->order_by('tbl_waiting_banjarmasin.id_sub_banjarmasin', $this->order);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
		return $this->db->get('tbl_waiting_banjarmasin')->result();
    }

	function get_limit_data_wait_kasir() {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.acc = 1');
		$this->db->order_by('tbl_waiting_banjarmasin.id_sub_banjarmasin', $this->order);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
		 return $this->db->get('tbl_waiting_banjarmasin')->result();
    }

	function get_limit_data_acc() {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.acc = 1');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
    	$this->db->order_by('tbl_waiting_banjarmasin.id_sub_banjarmasin', $this->order);
		return $this->db->get('tbl_waiting_banjarmasin')->result();
    }

	function get_limit_data_acc_kasir() {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.acc = 2');
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->order_by('tbl_waiting_banjarmasin.id_sub_banjarmasin', $this->order);
		return $this->db->get('tbl_waiting_banjarmasin')->result();
    }

	function get_data_acc_kasir_tanggal($bulan, $tahun) {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.acc = 2');
		$this->db->where('MONTH(tbl_waiting_banjarmasin.tgl_persetujuan_2)', $bulan);
		$this->db->where('YEAR(tbl_waiting_banjarmasin.tgl_persetujuan_2)', $tahun);
		if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        return $this->db->get('tbl_waiting_banjarmasin')->result();
    }

	function get_limit_data_batal() {
		$this->db->select('*, tbl_sub_banjarmasin.pelaksana, tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.dpp, tbl_sub_banjarmasin.total_payment, tbl_sub_banjarmasin.last_update, tbl_sub_banjarmasin.tgl_spk');
		$this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
		$this->db->where('tbl_waiting_banjarmasin.batal = 1');
      	$this->db->order_by('tbl_waiting_banjarmasin.id_sub_banjarmasin', $this->order);
		  if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
		return $this->db->get('tbl_waiting_banjarmasin')->result();
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

/* End of file Tbl_sub_banjarmasin_model.php */
/* Location: ./application/models/Tbl_sub_banjarmasin_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-24 13:40:49 */
/* http://harviacode.com */