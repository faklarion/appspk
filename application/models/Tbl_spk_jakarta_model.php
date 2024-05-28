<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_spk_jakarta_model extends CI_Model
{

    public $table = 'tbl_spk_jakarta';
    public $id = 'id_spk_jakarta';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->join('tbl_user' , 'tbl_user.id_users = tbl_spk_jakarta.id_users' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_tanggal($id, $bulan, $tahun)
    {
        $this->db->select('*');
        $this->db->join('tbl_user' , 'tbl_user.id_users = tbl_spk_jakarta.id_users' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        $this->db->where($this->id, $id);
        $this->db->where('MONTH(tgl_spk)', $bulan);
        $this->db->where('YEAR(tgl_spk)', $tahun);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_cari($bulan, $tahun)
    {
        $this->db->select('*');
        $this->db->join('tbl_user' , 'tbl_user.id_users = tbl_spk_jakarta.id_users' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        $this->db->where('MONTH(tbl_spk_jakarta.tgl_spk)', $bulan);
        $this->db->where('YEAR(tbl_spk_jakarta.tgl_spk)', $tahun);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_vendor($id_vendor)
    {
        $this->db->select('*');
        $this->db->join('tbl_user' , 'tbl_user.id_users = tbl_spk_jakarta.id_users' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        $this->db->where('tbl_spk_jakarta.id_vendor', $id_vendor);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_by_vic($id_vic)
    {
        $this->db->select('*');
        $this->db->join('tbl_user' , 'tbl_user.id_users = tbl_spk_jakarta.id_users' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        $this->db->where('tbl_spk_jakarta.id_vic', $id_vic);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->result();
    }

    function get_nilai_spk($id)
    {
        $this->db->select('SUM(nilai_spk) as total');
        $this->db->where('id_spk_jakarta', $id);
        if($this->uri->segment(2) == 'sampah') {
            
            $this->db->where('tbl_sub_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_sub_jakarta.hapus', 0);
            
        }
        
        return $this->db->get('tbl_sub_jakarta')->row();
    }

    function get_total_nilai_spk()
    {
        $this->db->select('SUM(tbl_sub_jakarta.nilai_spk) as total');
        $this->db->join('tbl_spk_jakarta' , 'tbl_sub_jakarta.id_spk_jakarta = tbl_spk_jakarta.id_spk_jakarta' , 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        
        $this->db->where('tbl_sub_jakarta.hapus', 0);
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

        return $this->db->get('tbl_sub_jakarta')->row();
    }

    
    
    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->select('*');
        $this->db->like('id_spk_jakarta', $q);
        $this->db->or_like('no_po', $q);
        $this->db->or_like('no_spk', $q);
        $this->db->or_like('tgl_spk', $q);
        $this->db->or_like('pelaksana', $q);
        $this->db->or_like('nama_kapal', $q);
        $this->db->or_like('nilai_spk', $q);
        $this->db->or_like('dpp', $q);
        $this->db->or_like('total_payment', $q);
        $this->db->join('tbl_user', 'tbl_user.id_users=tbl_spk_jakarta.id_users', 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->select('*');
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_spk_jakarta', $q);
        $this->db->or_like('no_po', $q);
        $this->db->or_like('no_spk', $q);
        $this->db->or_like('tgl_spk', $q);
        $this->db->or_like('pelaksana', $q);
        $this->db->or_like('nama_kapal', $q);
        $this->db->or_like('nilai_spk', $q);
        $this->db->or_like('dpp', $q);
        $this->db->or_like('total_payment', $q);
        $this->db->join('tbl_user', 'tbl_user.id_users=tbl_spk_jakarta.id_users', 'LEFT');
        $this->db->join('tbl_vendor' , 'tbl_vendor.id_vendor = tbl_spk_jakarta.id_vendor' , 'LEFT');
        $this->db->join('tbl_vic' , 'tbl_vic.id_vic = tbl_spk_jakarta.id_vic' , 'LEFT');
        if($this->uri->segment(2) == 'sampah') {
            $this->db->where('tbl_spk_jakarta.hapus', 1);
        } else {
            $this->db->where('tbl_spk_jakarta.hapus', 0);
        }
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

/* End of file Tbl_spk_jakarta_model.php */
/* Location: ./application/models/Tbl_spk_jakarta_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-23 11:27:05 */
/* http://harviacode.com */