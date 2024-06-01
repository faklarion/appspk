<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_waiting_banjarmasin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_waiting_banjarmasin_model');
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
            $config['first_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_waiting_banjarmasin_model->total_rows($q);
        $tbl_waiting_banjarmasin = $this->Tbl_waiting_banjarmasin_model->get_all();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_waiting_banjarmasin_data' => $tbl_waiting_banjarmasin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'filter' => 'Filter: semua',
            'start' => $start,
        );
        $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_list', $data);
    }

    public function sampah()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_waiting_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_waiting_banjarmasin_model->total_rows($q);
        $tbl_waiting_banjarmasin = $this->Tbl_waiting_banjarmasin_model->get_all();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_waiting_banjarmasin_data' => $tbl_waiting_banjarmasin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'filter' => 'Filter: semua',
            'start' => $start,
        );
        $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_list_sampah', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_waiting_banjarmasin_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_waiting_banjarmasin' => $row->id_waiting_banjarmasin,
		'id_sub_banjarmasin' => $row->id_sub_banjarmasin,
		'no_invoice' => $row->no_invoice,
		'tgl_permintaan' => $row->tgl_permintaan,
		'deskripsi' => $row->deskripsi,
		'tgl_persetujuan_1' => $row->tgl_persetujuan_1,
		'tgl_persetujuan_2' => $row->tgl_persetujuan_2,
		'tgl_pembatalan_1' => $row->tgl_pembatalan_1,
		'tgl_pembatalan_2' => $row->tgl_pembatalan_2,
		'acc' => $row->acc,
		'batal' => $row->batal,
	    );
            $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_waiting_banjarmasin'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_waiting_banjarmasin/create_action'),
            'tbl_spk_data' => $this->Tbl_waiting_banjarmasin_model->get_all_spk(),
            'id_waiting_banjarmasin' => set_value('id_waiting_banjarmasin'),
            'id_sub_banjarmasin' => set_value('id_sub_banjarmasin'),
            'jumlah_permintaan' => set_value('jumlah_permintaan'),
            'no_invoice' => set_value('no_invoice'),
            'tgl_permintaan' => set_value('tgl_permintaan'),
            'deskripsi' => set_value('deskripsi'),
		);
        $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
                'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
                'no_invoice' => $this->input->post('no_invoice',TRUE),
                'tgl_permintaan' => $this->input->post('tgl_permintaan',TRUE),
                'jumlah_permintaan' => $this->input->post('jumlah_permintaan',TRUE),
                'deskripsi' => $this->input->post('deskripsi',TRUE),
	    );

            $this->Tbl_waiting_banjarmasin_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_waiting_banjarmasin'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_waiting_banjarmasin_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_waiting_banjarmasin/update_action'),
                'tbl_spk_data' => $this->Tbl_waiting_banjarmasin_model->get_all_spk(),
                'jumlah_permintaan' => set_value('jumlah_permintaan' , $row->jumlah_permintaan),
                'id_waiting_banjarmasin' => set_value('id_waiting_banjarmasin', $row->id_waiting_banjarmasin),
                'id_sub_banjarmasin' => set_value('id_sub_banjarmasin', $row->id_sub_banjarmasin),
                'no_invoice' => set_value('no_invoice', $row->no_invoice),
                'tgl_permintaan' => set_value('tgl_permintaan', $row->tgl_permintaan),
                'deskripsi' => set_value('deskripsi', $row->deskripsi),
	    );
            $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_waiting_banjarmasin'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_waiting_banjarmasin', TRUE));
        } else {
            $data = array(
            'id_sub_banjarmasin' => $this->input->post('id_sub_banjarmasin',TRUE),
            'jumlah_permintaan' => $this->input->post('jumlah_permintaan',TRUE),
            'no_invoice' => $this->input->post('no_invoice',TRUE),
            'tgl_permintaan' => $this->input->post('tgl_permintaan',TRUE),
            'deskripsi' => $this->input->post('deskripsi',TRUE),
	    );

            $this->Tbl_waiting_banjarmasin_model->update($this->input->post('id_waiting_banjarmasin', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_waiting_banjarmasin'));
        }
    }

    public function restore_sampah($id) 
    {
       
            $data = array(
                'hapus' => 0,
                'tanggal_hapus' => NULL,
            );
            $this->Tbl_waiting_banjarmasin_model->update($id, $data);
            $this->session->set_flashdata('message', 'Restore Record Success');
            redirect(site_url('tbl_waiting_banjarmasin/sampah'));
    }
    
    public function delete_sampah($id) 
    {
        $row = $this->Tbl_waiting_banjarmasin_model->get_by_id($id);

        $data = array(
            'hapus' => 1,
            'tanggal_hapus' => date('Y-m-d'),
	    );

        if ($row) {
            $this->Tbl_waiting_banjarmasin_model->update($id, $data);
            $this->session->set_flashdata('message', 'Delete Success');
            header('Location: ' . $_SERVER["HTTP_REFERER"] );
            exit;
        } else {
            
            $this->session->set_flashdata('message', 'Record Not Found');
            header('Location: ' . $_SERVER["HTTP_REFERER"] );
            exit;
        }
    }

    public function delete($id) 
    {
        $row = $this->Tbl_waiting_banjarmasin_model->get_by_id($id);

        if ($row) {
            $this->Tbl_waiting_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_waiting_banjarmasin'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_waiting_banjarmasin'));
        }
    }

    
    public function delete_list_kasir($id) 
    {
        $row = $this->Tbl_waiting_banjarmasin_model->get_by_id_read($id);
        $idSub = $row->id_sub_banjarmasin;

        $row1 = $this->Tbl_sub_banjarmasin_model->get_by_id_read($idSub);

        $totalPayment = $row1->total_payment;
        $jumlahPermintaan = $row->jumlah_permintaan;
       
        $data2 = array(
            'total_payment' => $totalPayment - $jumlahPermintaan,
        );

        if ($row) {
            $this->Tbl_sub_banjarmasin_model->update($idSub, $data2);
            $this->Tbl_waiting_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_sub_banjarmasin/lihat_waiting/'.$idSub.''));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_banjarmasin/lihat_waiting/'.$idSub.''));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_sub_banjarmasin', 'id sub banjarmasin', 'trim|required');
	$this->form_validation->set_rules('no_invoice', 'no invoice', 'trim|required');
	$this->form_validation->set_rules('tgl_permintaan', 'tgl permintaan', 'trim|required');
	$this->form_validation->set_rules('deskripsi', 'deskripsi', 'trim|required');

	$this->form_validation->set_rules('id_waiting_banjarmasin', 'id_waiting_banjarmasin', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_waiting_banjarmasin.doc");

        $data = array(
            'tbl_waiting_banjarmasin_data' => $this->Tbl_waiting_banjarmasin_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_doc',$data);
    }

    public function cari()
    {
        $acc = $this->input->get('acc');
    
        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        if($acc == 0) {
            $textAcc = 'Belum diapproval';
        } elseif($acc == 1) {
            $textAcc = 'Approval Direksi 1/Admin';
        } elseif($acc == 2) {
            $textAcc = 'Final Approval / Kasir';
        }


        $data = array(
            'tbl_waiting_banjarmasin_data' => $this->Tbl_waiting_banjarmasin_model->get_by_id_cari($acc),
            'start' => 0,
            'pagination' => $this->pagination->create_links(),
            'filter' => "Filter: $textAcc",
        );
        $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_list',$data);
    }

    public function cari_tanggal()
    {
        $bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
    
        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);


        $data = array(
            'tbl_waiting_banjarmasin_data' => $this->Tbl_waiting_banjarmasin_model->get_by_id_cari_tanggal($bulan, $tahun),
            'start' => 0,
            'pagination' => $this->pagination->create_links(),
            'filter' => "Filter: ".$this->convertToMonthName($bulan)." $tahun",
        );
        $this->template->load('template','tbl_waiting_banjarmasin/tbl_waiting_banjarmasin_list',$data);
    }

    public function convertToMonthName($month) {
        $bulanArray = array(
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
        );
    
        return $bulanArray[$month];
    }

}

/* End of file Tbl_waiting_banjarmasin.php */
/* Location: ./application/controllers/Tbl_waiting_banjarmasin.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-27 03:21:49 */
/* http://harviacode.com */