<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_pekerjaan_banjarmasin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_pekerjaan_banjarmasin_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_pekerjaan_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_pekerjaan_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_pekerjaan_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_pekerjaan_banjarmasin_model->total_rows($q);
        $tbl_pekerjaan_banjarmasin = $this->Tbl_pekerjaan_banjarmasin_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_pekerjaan_banjarmasin_data' => $tbl_pekerjaan_banjarmasin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_pekerjaan_banjarmasin/tbl_pekerjaan_banjarmasin_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_pekerjaan_banjarmasin_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_pekerjaan_banjarmasin' => $row->id_pekerjaan_banjarmasin,
		'id_sub_banjarmasin' => $row->id_sub_banjarmasin,
		'tgl_stuf' => $row->tgl_stuf,
		'tgl_selesai_stuf' => $row->tgl_selesai_stuf,
		'etd_kapal' => $row->etd_kapal,
		'eta_kapal' => $row->eta_kapal,
		'tgl_mulai_doring' => $row->tgl_mulai_doring,
		'tgl_selesai_doring' => $row->tgl_selesai_doring,
		'tgl_bap' => $row->tgl_bap,
		'jumlah_dikerjakan' => $row->jumlah_dikerjakan,
		'sisa_belum' => $row->sisa_belum,
		'status' => $row->status,
		'keterangan' => $row->keterangan,
	    );
            $this->template->load('template','tbl_pekerjaan_banjarmasin/tbl_pekerjaan_banjarmasin_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_pekerjaan_banjarmasin/create_action'),
	    'id_pekerjaan_banjarmasin' => set_value('id_pekerjaan_banjarmasin'),
	    'id_sub_banjarmasin' => set_value('id_sub_banjarmasin'),
	    'tgl_stuf' => set_value('tgl_stuf'),
	    'tgl_selesai_stuf' => set_value('tgl_selesai_stuf'),
	    'etd_kapal' => set_value('etd_kapal'),
	    'eta_kapal' => set_value('eta_kapal'),
	    'tgl_mulai_doring' => set_value('tgl_mulai_doring'),
	    'tgl_selesai_doring' => set_value('tgl_selesai_doring'),
	    'tgl_bap' => set_value('tgl_bap'),
	    'jumlah_dikerjakan' => set_value('jumlah_dikerjakan'),
	    'sisa_belum' => set_value('sisa_belum'),
	    'status' => set_value('status'),
	    'keterangan' => set_value('keterangan'),
	);
        $this->template->load('template','tbl_pekerjaan_banjarmasin/tbl_pekerjaan_banjarmasin_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
		'tgl_stuf' => $this->input->post('tgl_stuf',TRUE),
		'tgl_selesai_stuf' => $this->input->post('tgl_selesai_stuf',TRUE),
		'etd_kapal' => $this->input->post('etd_kapal',TRUE),
		'eta_kapal' => $this->input->post('eta_kapal',TRUE),
		'tgl_mulai_doring' => $this->input->post('tgl_mulai_doring',TRUE),
		'tgl_selesai_doring' => $this->input->post('tgl_selesai_doring',TRUE),
		'tgl_bap' => $this->input->post('tgl_bap',TRUE),
		'jumlah_dikerjakan' => $this->input->post('jumlah_dikerjakan',TRUE),
		'sisa_belum' => $this->input->post('sisa_belum',TRUE),
		'status' => $this->input->post('status',TRUE),
		'keterangan' => $this->input->post('keterangan',TRUE),
	    );

            $this->Tbl_pekerjaan_banjarmasin_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_pekerjaan_banjarmasin_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_pekerjaan_banjarmasin/update_action'),
		'id_pekerjaan_banjarmasin' => set_value('id_pekerjaan_banjarmasin', $row->id_pekerjaan_banjarmasin),
		'id_sub_banjarmasin' => set_value('id_sub_banjarmasin', $row->id_sub_banjarmasin),
		'tgl_stuf' => set_value('tgl_stuf', $row->tgl_stuf),
		'tgl_selesai_stuf' => set_value('tgl_selesai_stuf', $row->tgl_selesai_stuf),
		'etd_kapal' => set_value('etd_kapal', $row->etd_kapal),
		'eta_kapal' => set_value('eta_kapal', $row->eta_kapal),
		'tgl_mulai_doring' => set_value('tgl_mulai_doring', $row->tgl_mulai_doring),
		'tgl_selesai_doring' => set_value('tgl_selesai_doring', $row->tgl_selesai_doring),
		'tgl_bap' => set_value('tgl_bap', $row->tgl_bap),
		'jumlah_dikerjakan' => set_value('jumlah_dikerjakan', $row->jumlah_dikerjakan),
		'sisa_belum' => set_value('sisa_belum', $row->sisa_belum),
		'status' => set_value('status', $row->status),
		'keterangan' => set_value('keterangan', $row->keterangan),
	    );
            $this->template->load('template','tbl_pekerjaan_banjarmasin/tbl_pekerjaan_banjarmasin_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_pekerjaan_banjarmasin', TRUE));
        } else {
            $data = array(
		'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
		'tgl_stuf' => $this->input->post('tgl_stuf',TRUE),
		'tgl_selesai_stuf' => $this->input->post('tgl_selesai_stuf',TRUE),
		'etd_kapal' => $this->input->post('etd_kapal',TRUE),
		'eta_kapal' => $this->input->post('eta_kapal',TRUE),
		'tgl_mulai_doring' => $this->input->post('tgl_mulai_doring',TRUE),
		'tgl_selesai_doring' => $this->input->post('tgl_selesai_doring',TRUE),
		'tgl_bap' => $this->input->post('tgl_bap',TRUE),
		'jumlah_dikerjakan' => $this->input->post('jumlah_dikerjakan',TRUE),
		'sisa_belum' => $this->input->post('sisa_belum',TRUE),
		'status' => $this->input->post('status',TRUE),
		'keterangan' => $this->input->post('keterangan',TRUE),
	    );

            $this->Tbl_pekerjaan_banjarmasin_model->update($this->input->post('id_pekerjaan_banjarmasin', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_pekerjaan_banjarmasin_model->get_by_id($id);

        if ($row) {
            $this->Tbl_pekerjaan_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_banjarmasin'));
        }
    }

       
    public function delete_pekerjaan($id) 
    {
        $row = $this->Tbl_pekerjaan_banjarmasin_model->get_by_id($id);

        if ($row) {
            $this->Tbl_pekerjaan_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_sub_banjarmasin/home_vic'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_banjarmasin'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_sub_banjarmasin', 'id sub banjarmasin', 'trim|required');
	$this->form_validation->set_rules('tgl_stuf', 'tgl stuf', 'trim|required');
	$this->form_validation->set_rules('tgl_selesai_stuf', 'tgl selesai stuf', 'trim|required');
	$this->form_validation->set_rules('etd_kapal', 'etd kapal', 'trim|required');
	$this->form_validation->set_rules('eta_kapal', 'eta kapal', 'trim|required');
	$this->form_validation->set_rules('tgl_mulai_doring', 'tgl mulai doring', 'trim|required');
	$this->form_validation->set_rules('tgl_selesai_doring', 'tgl selesai doring', 'trim|required');
	$this->form_validation->set_rules('tgl_bap', 'tgl bap', 'trim|required');
	$this->form_validation->set_rules('jumlah_dikerjakan', 'jumlah dikerjakan', 'trim|required');
	$this->form_validation->set_rules('sisa_belum', 'sisa belum', 'trim|required');
	$this->form_validation->set_rules('status', 'status', 'trim|required');
	$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');

	$this->form_validation->set_rules('id_pekerjaan_banjarmasin', 'id_pekerjaan_banjarmasin', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_pekerjaan_banjarmasin.doc");

        $data = array(
            'tbl_pekerjaan_banjarmasin_data' => $this->Tbl_pekerjaan_banjarmasin_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('tbl_pekerjaan_banjarmasin/tbl_pekerjaan_banjarmasin_doc',$data);
    }

}

/* End of file Tbl_pekerjaan_banjarmasin.php */
/* Location: ./application/controllers/Tbl_pekerjaan_banjarmasin.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-26 12:39:26 */
/* http://harviacode.com */