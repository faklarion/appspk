<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_debit_banjarmasin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_debit_banjarmasin_model');
        $this->load->model('Tbl_payment_banjarmasin_model');
        $this->load->model('Tbl_sub_banjarmasin_model');
        $this->load->model('Tbl_spk_banjarmasin_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_debit_banjarmasin_model->total_rows($q);
        $tbl_debit_banjarmasin = $this->Tbl_debit_banjarmasin_model->get_all();
        $tbl_payment_banjarmasin = $this->Tbl_payment_banjarmasin_model->get_all();
        $no_spk = $this->Tbl_debit_banjarmasin_model->get_all_induk();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_debit_banjarmasin_data' => $tbl_debit_banjarmasin,
            'tbl_payment_banjarmasin_data' => $tbl_payment_banjarmasin,
            'no_spk_data' => $no_spk,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'filter' => "Filter: semua",
            'start' => $start,
        );
        $this->template->load('template','tbl_debit_banjarmasin/tbl_debit_banjarmasin_list', $data);
    }

    public function sampah()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_debit_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_debit_banjarmasin_model->total_rows($q);
        $tbl_debit_banjarmasin = $this->Tbl_debit_banjarmasin_model->get_all();
        $no_spk = $this->Tbl_debit_banjarmasin_model->get_all_induk();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_debit_banjarmasin_data' => $tbl_debit_banjarmasin,
            'no_spk_data' => $no_spk,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'filter' => "Filter: semua",
            'start' => $start,
        );
        $this->template->load('template','tbl_debit_banjarmasin/tbl_debit_banjarmasin_list_sampah', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_debit_banjarmasin_model->get_by_id_read($id);
        if ($row) {
            $data = array(
		'no_spk' => $row->no_spk,
		'kode_sub' => $row->kode_sub,
		'no_debit' => $row->no_debit,
		'tgl_debit_nota' => $row->tgl_debit_nota,
        'deskripsi' => $row->deskripsi,
		'customer' => $row->customer,
		'dpp' => $row->dpp,
		'ppn' => $row->ppn,
		'total_debit_nota' => $row->total_debit_nota,
	    );
            $this->load->view('tbl_debit_banjarmasin/tbl_debit_banjarmasin_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_debit_banjarmasin/create_action'),
            'id_debit_banjarmasin' => set_value('id_debit_banjarmasin'),
            'id_sub_banjarmasin' => set_value('id_sub_banjarmasin'),
            'tbl_spk_data' => $this->Tbl_debit_banjarmasin_model->get_all_spk(),
            'no_debit' => set_value('no_debit'),
            'tgl_debit_nota' => set_value('tgl_debit_nota'),
            'customer' => set_value('customer'),
            'dpp' => set_value('dpp'),
            'ppn' => set_value('ppn'),
            'deskripsi' => set_value('deskripsi'),
            'total_debit_nota' => set_value('total_debit_nota'),
    	);
        $this->template->load('template','tbl_debit_banjarmasin/tbl_debit_banjarmasin_form', $data);
    }
    
    public function create_action() 
    {

        $row = $this->Tbl_sub_banjarmasin_model->get_by_id_read($this->input->post('id_sub_banjarmasin',TRUE));
        $dppSub = $row->dpp;

        $data = array(
            'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
            'no_debit' => $this->input->post('no_debit',TRUE),
            'tgl_debit_nota' => $this->input->post('tgl_debit_nota',TRUE),
            'customer' => $this->input->post('customer',TRUE),
            'dpp' => $this->input->post('dpp',TRUE),
            'deskripsi' => $this->input->post('deskripsi',TRUE),
            'ppn' => $this->input->post('ppn',TRUE),
            'total_debit_nota' => ($this->input->post('dpp',TRUE) + $this->input->post('ppn',TRUE)),
	    );

        $data1 = array(
            'dpp' => $dppSub + $this->input->post('dpp',TRUE),
            'tgl_debit_nota' => $this->input->post('tgl_debit_nota',TRUE),
	    );

            $this->Tbl_sub_banjarmasin_model->update($this->input->post('id_sub_banjarmasin',TRUE), $data1);
            $this->Tbl_debit_banjarmasin_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success !');
            redirect(site_url('tbl_debit_banjarmasin'));
    }
    
    
    public function update($id) 
    {
        $row = $this->Tbl_debit_banjarmasin_model->get_by_id_read($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_debit_banjarmasin/update_action'),
                'tbl_spk_data' => $this->Tbl_debit_banjarmasin_model->get_all_spk(),
                'id_debit_banjarmasin' => set_value('id_debit_banjarmasin', $row->id_debit_banjarmasin),
                'id_sub_banjarmasin' => set_value('id_sub_banjarmasin', $row->id_sub_banjarmasin),
                'no_debit' => set_value('no_debit', $row->no_debit),
                'tgl_debit_nota' => set_value('tgl_debit_nota', $row->tgl_debit_nota),
                'customer' => set_value('customer', $row->customer),
                'deskripsi' => set_value('deskripsi', $row->deskripsi),
                'dpp' => set_value('dpp', $row->dpp),
                'ppn' => set_value('ppn', $row->ppn),
	    );
            $this->template->load('template','tbl_debit_banjarmasin/tbl_debit_banjarmasin_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }
    
    public function update_action() 
    {
        
        $row = $this->Tbl_sub_banjarmasin_model->get_by_id_read($this->input->post('id_sub_banjarmasin',TRUE));
        $dppSub = $row->dpp;

        $row1 = $this->Tbl_debit_banjarmasin_model->get_by_id($this->input->post('id_debit_banjarmasin', TRUE));
        $dppAwal = $row1->dpp;

        $data = array(
		'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
		'no_debit' => $this->input->post('no_debit',TRUE),
		'tgl_debit_nota' => $this->input->post('tgl_debit_nota',TRUE),
		'customer' => $this->input->post('customer',TRUE),
		'dpp' => $this->input->post('dpp',TRUE),
        'deskripsi' => $this->input->post('deskripsi',TRUE),
		'ppn' => $this->input->post('ppn',TRUE),
        'total_debit_nota' => ($this->input->post('dpp',TRUE) + $this->input->post('ppn',TRUE)),
	    );

        $data1 = array(
            'dpp' => ($dppSub - $dppAwal) + $this->input->post('dpp',TRUE),
            'tgl_debit_nota' => $this->input->post('tgl_debit_nota',TRUE),
	    );

            $this->Tbl_sub_banjarmasin_model->update($this->input->post('id_sub_banjarmasin',TRUE), $data1);
            $this->Tbl_debit_banjarmasin_model->update($this->input->post('id_debit_banjarmasin', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_debit_banjarmasin'));
        
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_debit_banjarmasin_model->get_by_id_read($id);
        $dppAwal = $row->dpp;

        $row1 = $this->Tbl_sub_banjarmasin_model->get_by_id_read($row->id_sub_banjarmasin);
        $dppSub = $row->dpp;
      

        if ($row) {
            $data1 = array(
                'dpp' => ($dppSub - $dppAwal),
            );
    
            $this->Tbl_sub_banjarmasin_model->update($row->id_sub_banjarmasin, $data1);
            
            $this->Tbl_debit_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_debit_banjarmasin'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }

    public function delete_sampah($id) 
    {
        $row = $this->Tbl_debit_banjarmasin_model->get_by_id_read($id);
        
        $data = array(
            'hapus' => 1,
            'tanggal_hapus' => date('Y-m-d'),
        );

        if ($row) {
            $this->Tbl_debit_banjarmasin_model->update($id, $data);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_debit_banjarmasin'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }

    public function restore_sampah($id) 
    {
        $row = $this->Tbl_debit_banjarmasin_model->get_by_id_read($id);
        
        $data = array(
            'hapus' => 0,
            'tanggal_hapus' => NULL,
        );

        if ($row) {
            $this->Tbl_debit_banjarmasin_model->update($id, $data);
            $this->session->set_flashdata('message', 'Restore Record Success');
            redirect(site_url('tbl_debit_banjarmasin/sampah'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin/sampah'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_sub_banjarmasin', 'id sub banjarmasin', 'trim|required');
	$this->form_validation->set_rules('no_debit', 'no debit', 'trim|required');
	$this->form_validation->set_rules('tgl_debit_nota', 'tgl debit nota', 'trim|required');
	$this->form_validation->set_rules('customer', 'customer', 'trim|required');
	$this->form_validation->set_rules('dpp', 'dpp', 'trim|required');
	$this->form_validation->set_rules('ppn', 'ppn', 'trim|required');

	$this->form_validation->set_rules('id_debit_banjarmasin', 'id_debit_banjarmasin', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_debit_banjarmasin.doc");

        $data = array(
            'tbl_debit_banjarmasin_data' => $this->Tbl_debit_banjarmasin_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('tbl_debit_banjarmasin/tbl_debit_banjarmasin_doc',$data);
    }

    public function word_2()
    {
        $id_spk_banjarmasin     = $this->input->get('id_spk_banjarmasin');
        $bulan                  = $this->input->get('bulan');
        $tahun                  = $this->input->get('tahun');
        $bulanBaru              = $this->angkaKeBulan($bulan);

        $data = array(
            'tbl_debit_banjarmasin_data' => $this->Tbl_debit_banjarmasin_model->get_by_tanggal($id_spk_banjarmasin, $bulan, $tahun),
            'start' => 0,
        );
        
        $this->load->view('tbl_debit_banjarmasin/tbl_debit_banjarmasin_doc',$data);
    }

    public function cari()
    {
        $bulan                  = $this->input->get('bulan');
        $tahun                  = $this->input->get('tahun');
        $bulanBaru              = $this->angkaKeBulan($bulan);
        
        $config['per_page'] = 10;
        $q = urldecode($this->input->get('q', TRUE));
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_debit_banjarmasin_model->total_rows($q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        $no_spk = $this->Tbl_debit_banjarmasin_model->get_all_induk();

        $data = array(
            'tbl_debit_banjarmasin_data' => $this->Tbl_debit_banjarmasin_model->get_by_cari($bulan, $tahun),
            'start' => 0,
            'filter' => "Filter: $bulanBaru $tahun",
            'no_spk_data' => $no_spk,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
        );
        
        $this->template->load('template','tbl_debit_banjarmasin/tbl_debit_banjarmasin_list',$data);
    }

    public function angkaKeBulan($angka)
    {
    $bulan = [
        1 => 'Januari',
        2 => 'Februari',
        3 => 'Maret',
        4 => 'April',
        5 => 'Mei',
        6 => 'Juni',
        7 => 'Juli',
        8 => 'Agustus',
        9 => 'September',
        10 => 'Oktober',
        11 => 'November',
        12 => 'Desember'
    ];
        return isset($bulan[$angka]) ? $bulan[$angka] : 'Bulan tidak valid';
    }


}

/* End of file Tbl_debit_banjarmasin.php */
/* Location: ./application/controllers/Tbl_debit_banjarmasin.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-28 14:20:37 */
/* http://harviacode.com */