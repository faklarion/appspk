<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_vic_model extends CI_Model
{

    public $table = 'tbl_vic';
    public $id = 'id_vic';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_vic.hapus', 1);
        } else {
            $this->db->where('tbl_vic.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_vic.hapus', 1);
        } else {
            $this->db->where('tbl_vic.hapus', 0);
        }
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_vic.hapus', 1);
        } else {
            $this->db->where('tbl_vic.hapus', 0);
        }
        $this->db->like('nama_vic', $q);
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_vic.hapus', 1);
        } else {
            $this->db->where('tbl_vic.hapus', 0);
        }
        $this->db->order_by($this->id, $this->order);
        $this->db->like('nama_vic', $q);
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

/* End of file Tbl_vic_model.php */
/* Location: ./application/models/Tbl_vic_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-03-11 12:38:11 */
/* http://harviacode.com */