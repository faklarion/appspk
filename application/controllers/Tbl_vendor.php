<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_vendor extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Tbl_vendor_model');
        $this->load->library('form_validation');        
	    $this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','tbl_vendor/tbl_vendor_list');
    } 

    public function sampah()
    {
        $this->template->load('template','tbl_vendor/tbl_vendor_list_sampah');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Tbl_vendor_model->json();
    }

    public function json_sampah() {
        header('Content-Type: application/json');
        echo $this->Tbl_vendor_model->json_sampah();
    }

    public function read($id) 
    {
        $row = $this->Tbl_vendor_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_vendor' => $row->id_vendor,
		'nama_vendor' => $row->nama_vendor,
	    );
            $this->template->load('template','tbl_vendor/tbl_vendor_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vendor'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_vendor/create_action'),
	    'id_vendor' => set_value('id_vendor'),
	    'nama_vendor' => set_value('nama_vendor'),
	);
        $this->template->load('template','tbl_vendor/tbl_vendor_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'nama_vendor' => $this->input->post('nama_vendor',TRUE),
	    );

            $this->Tbl_vendor_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_vendor'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_vendor_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_vendor/update_action'),
		'id_vendor' => set_value('id_vendor', $row->id_vendor),
		'nama_vendor' => set_value('nama_vendor', $row->nama_vendor),
	    );
            $this->template->load('template','tbl_vendor/tbl_vendor_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vendor'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_vendor', TRUE));
        } else {
            $data = array(
		'nama_vendor' => $this->input->post('nama_vendor',TRUE),
	    );

            $this->Tbl_vendor_model->update($this->input->post('id_vendor', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_vendor'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_vendor_model->get_by_id($id);

        if ($row) {
            $this->Tbl_vendor_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_vendor'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vendor'));
        }
    }
        
    public function delete_sampah($id) 
    {
        $row = $this->Tbl_vendor_model->get_by_id($id);

        if ($row) {
            $data = array(
                'hapus' => 1,
            );
        
            $this->Tbl_vendor_model->update($id, $data);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_vendor'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vendor'));
        }
    }

    public function restore_sampah($id) 
    {
        $data = array(
            'hapus' => 0,
        );
       
            $this->Tbl_vendor_model->update($id, $data);
            $this->session->set_flashdata('message', 'Restore Record Success');
            redirect(site_url('tbl_vendor/sampah'));
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('nama_vendor', 'nama vendor', 'trim|required');

	$this->form_validation->set_rules('id_vendor', 'id_vendor', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Tbl_vendor.php */
/* Location: ./application/controllers/Tbl_vendor.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-02-17 13:43:10 */
/* http://harviacode.com */