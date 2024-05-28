<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_vic extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Tbl_vic_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_vic/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_vic/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_vic/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_vic_model->total_rows($q);
        $tbl_vic = $this->Tbl_vic_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_vic_data' => $tbl_vic,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_vic/tbl_vic_list', $data);
    }

    public function sampah()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_vic/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_vic/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_vic/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_vic_model->total_rows($q);
        $tbl_vic = $this->Tbl_vic_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_vic_data' => $tbl_vic,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_vic/tbl_vic_list_sampah', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_vic_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_vic' => $row->id_vic,
		'nama_vic' => $row->nama_vic,
	    );
            $this->template->load('template','tbl_vic/tbl_vic_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vic'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_vic/create_action'),
	    'id_vic' => set_value('id_vic'),
	    'nama_vic' => set_value('nama_vic'),
	);
        $this->template->load('template','tbl_vic/tbl_vic_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'nama_vic' => $this->input->post('nama_vic',TRUE),
	    );

            $this->Tbl_vic_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_vic'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_vic_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_vic/update_action'),
		'id_vic' => set_value('id_vic', $row->id_vic),
		'nama_vic' => set_value('nama_vic', $row->nama_vic),
	    );
            $this->template->load('template','tbl_vic/tbl_vic_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vic'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_vic', TRUE));
        } else {
            $data = array(
		'nama_vic' => $this->input->post('nama_vic',TRUE),
	    );

            $this->Tbl_vic_model->update($this->input->post('id_vic', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_vic'));
        }
    }
    
    public function delete($id) 
    {
        
            $this->Tbl_vic_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_vic/sampah'));
        
    }

    public function delete_sampah($id) 
    {
        $row = $this->Tbl_vic_model->get_by_id($id);
        
        $data = array(
            'hapus' => 1,
        );

        if ($row) {
            $this->Tbl_vic_model->update($id, $data);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_vic'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_vic'));
        }
    }

    public function restore_sampah($id) 
    {
        $data = array(
            'hapus' => 0,
        );

            $this->Tbl_vic_model->update($id, $data);
            $this->session->set_flashdata('message', 'Restore Record Success');
            redirect(site_url('tbl_vic/sampah'));
        
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('nama_vic', 'nama vic', 'trim|required');

	$this->form_validation->set_rules('id_vic', 'id_vic', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Tbl_vic.php */
/* Location: ./application/controllers/Tbl_vic.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-03-11 12:38:11 */
/* http://harviacode.com */