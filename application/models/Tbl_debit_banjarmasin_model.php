<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_debit_banjarmasin_model extends CI_Model
{

    public $table = 'tbl_debit_banjarmasin';
    public $id = 'id_debit_banjarmasin';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_debit_banjarmasin.hapus', 1);
        } else {
            $this->db->where('tbl_debit_banjarmasin.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    function get_all_spk()
    {
		$this->db->select('*');
		
		$this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->order_by('tbl_sub_banjarmasin.id_spk_banjarmasin', $this->order);
        $this->db->where('tbl_spk_banjarmasin.hapus', 0);
        return $this->db->get('tbl_sub_banjarmasin')->result();
    }

    function get_all_induk()
    {
		$this->db->select('*');
		return $this->db->get('tbl_spk_banjarmasin')->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id);
        return $this->db->get($this->table)->row();
    }

    function get_by_id_read($id)
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_debit_banjarmasin.id_debit_banjarmasin', $id);
        return $this->db->get($this->table)->row();
    }

    function get_by_tanggal($id_spk, $bulan, $tahun)
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id_spk);
        $this->db->where('MONTH(tbl_debit_banjarmasin.tgl_debit_nota)', $bulan);
        $this->db->where('YEAR(tbl_debit_banjarmasin.tgl_debit_nota)', $tahun);
        return $this->db->get($this->table)->result();
    }

    function get_by_cari($bulan, $tahun)
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('MONTH(tbl_debit_banjarmasin.tgl_debit_nota)', $bulan);
        $this->db->where('YEAR(tbl_debit_banjarmasin.tgl_debit_nota)', $tahun);
        return $this->db->get($this->table)->result();
    }

    function get_by_id_spk($id_spk)
    {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->where('tbl_spk_banjarmasin.id_spk_banjarmasin', $id_spk);
        return $this->db->get($this->table)->result();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->or_like('no_debit', $q);
        $this->db->or_like('customer', $q);
        $this->db->or_like('ppn', $q);
        $this->db->or_like('total_debit_nota', $q);
	    $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->select('*, tbl_debit_banjarmasin.tgl_debit_nota, tbl_debit_banjarmasin.dpp');
        $this->db->join('tbl_sub_banjarmasin', 'tbl_sub_banjarmasin.id_sub_banjarmasin=tbl_debit_banjarmasin.id_sub_banjarmasin');
        $this->db->join('tbl_spk_banjarmasin', 'tbl_spk_banjarmasin.id_spk_banjarmasin=tbl_sub_banjarmasin.id_spk_banjarmasin');
        $this->db->order_by($this->id, $this->order);
        $this->db->or_like('no_debit', $q);
        $this->db->or_like('customer', $q);
        $this->db->or_like('ppn', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
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

/* End of file Tbl_debit_banjarmasin_model.php */
/* Location: ./application/models/Tbl_debit_banjarmasin_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-28 14:20:37 */
/* http://harviacode.com */