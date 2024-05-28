<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_waiting_banjarmasin_model extends CI_Model
{

    public $table = 'tbl_waiting_banjarmasin';
    public $id = 'id_waiting_banjarmasin';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->select('*, tbl_waiting_banjarmasin.acc');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    function get_by_id_read($id)
    {
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    function get_by_id_sub($id)
    {
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_sub_banjarmasin', $id);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_cari($id)
    {
        $this->db->select('*, tbl_waiting_banjarmasin.acc');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_waiting_banjarmasin.acc', $id);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_cari_tanggal($bulan,$tahun)
    {
        $this->db->select('*, tbl_waiting_banjarmasin.acc');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('MONTH(tbl_waiting_banjarmasin.tgl_persetujuan_2)', $bulan);
        $this->db->where('YEAR(tbl_waiting_banjarmasin.tgl_persetujuan_2)', $tahun);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_id_sub_acc($id)
    {
        
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_sub_banjarmasin.id_sub_banjarmasin', $id);
        $this->db->where('tbl_waiting_banjarmasin.acc', 2);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }
    // get total rows
    function total_rows($q = NULL) {
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->like('id_waiting_banjarmasin', $q);
        $this->db->or_like('no_invoice', $q);
        $this->db->or_like('tgl_permintaan', $q);
        $this->db->or_like('deskripsi', $q);
	    $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_waiting_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_waiting_banjarmasin.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_waiting_banjarmasin', $q);
        $this->db->or_like('no_invoice', $q);
        $this->db->or_like('tgl_permintaan', $q);
        $this->db->or_like('deskripsi', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    function get_all_spk()
    {
		$this->db->select('*,tbl_sub_banjarmasin.nilai_spk, tbl_sub_banjarmasin.total_payment');
		$this->db->join('tbl_user', 'tbl_user.id_users=tbl_sub_banjarmasin.id_users');
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->order_by('tbl_sub_banjarmasin.id_spk_banjarmasin', $this->order);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_sub_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_sub_banjarmasin.hapus', 0);
        }
        return $this->db->get('tbl_sub_banjarmasin')->result();
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

/* End of file Tbl_waiting_banjarmasin_model.php */
/* Location: ./application/models/Tbl_waiting_banjarmasin_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-27 03:21:49 */
/* http://harviacode.com */