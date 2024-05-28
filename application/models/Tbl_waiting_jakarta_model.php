<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_waiting_jakarta_model extends CI_Model
{

    public $table = 'tbl_waiting_jakarta';
    public $id = 'id_waiting_jakarta';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->select('*, tbl_waiting_jakarta.acc');
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    function get_by_id_read($id)
    {
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    function get_by_id_sub($id)
    {
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_sub_jakarta', $id);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_cari($id)
    {
        $this->db->select('*, tbl_waiting_jakarta.acc');
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_waiting_jakarta.acc', $id);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_cari_tanggal($bulan,$tahun)
    {
        $this->db->select('*, tbl_waiting_jakarta.acc');
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('MONTH(tbl_waiting_jakarta.tgl_persetujuan_2)', $bulan);
        $this->db->where('YEAR(tbl_waiting_jakarta.tgl_persetujuan_2)', $tahun);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_sub_acc($id)
    {
        
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->where('tbl_sub_jakarta.id_sub_jakarta', $id);
        $this->db->where('tbl_waiting_jakarta.acc', 2);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }
    // get total rows
    function total_rows($q = NULL) {
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->like('id_waiting_jakarta', $q);
        $this->db->or_like('no_invoice', $q);
        $this->db->or_like('tgl_permintaan', $q);
        $this->db->or_like('deskripsi', $q);
	    $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        
        $this->db->join('tbl_sub_jakarta', 'tbl_sub_jakarta.id_sub_jakarta=tbl_waiting_jakarta.id_sub_jakarta');
        $this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_jakarta.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_waiting_jakarta', $q);
        $this->db->or_like('no_invoice', $q);
        $this->db->or_like('tgl_permintaan', $q);
        $this->db->or_like('deskripsi', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    function get_all_spk()
    {
		$this->db->select('*,tbl_sub_jakarta.nilai_spk, tbl_sub_jakarta.total_payment');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_jakarta.id_users');
		$this->db->join('tbl_spk_jakarta', 'tbl_spk_jakarta.id_spk_jakarta=tbl_sub_jakarta.id_spk_jakarta');
        $this->db->order_by('tbl_sub_jakarta.id_spk_jakarta', $this->order);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
        }
        return $this->db->get('tbl_sub_jakarta')->result();
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

/* End of file Tbl_waiting_jakarta_model.php */
/* Location: ./application/models/Tbl_waiting_jakarta_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-27 03:21:49 */
/* http://harviacode.com */