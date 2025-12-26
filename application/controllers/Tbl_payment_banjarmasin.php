<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_payment_banjarmasin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_payment_banjarmasin_model');
         $this->load->model('Tbl_debit_banjarmasin_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_payment_banjarmasin/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_payment_banjarmasin/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_payment_banjarmasin/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_payment_banjarmasin_model->total_rows($q);
        $tbl_payment_banjarmasin = $this->Tbl_payment_banjarmasin_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_payment_banjarmasin_data' => $tbl_payment_banjarmasin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_payment_banjarmasin/tbl_payment_banjarmasin_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_payment_banjarmasin_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_debit_banjarmasin' => $row->id_debit_banjarmasin,
		'id_payment_banjarmasin' => $row->id_payment_banjarmasin,
		'jumlah_payment' => $row->jumlah_payment,
		'tanggal_payment' => $row->tanggal_payment,
	    );
            $this->template->load('template','tbl_payment_banjarmasin/tbl_payment_banjarmasin_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_payment_banjarmasin'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_payment_banjarmasin/create_action'),
            'id_debit_banjarmasin' => set_value('id_debit_banjarmasin'),
            'id_payment_banjarmasin' => set_value('id_payment_banjarmasin'),
            'jumlah_payment' => set_value('jumlah_payment'),
            'tanggal_payment' => set_value('tanggal_payment'),
            'tbl_debit_data' => $this->Tbl_debit_banjarmasin_model->get_all(),
	);
        $this->template->load('template','tbl_payment_banjarmasin/tbl_payment_banjarmasin_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_debit_banjarmasin' => $this->input->post('id_debit_banjarmasin',TRUE),
		'jumlah_payment' => $this->input->post('jumlah_payment',TRUE),
		'tanggal_payment' => $this->input->post('tanggal_payment',TRUE),
	    );

            $this->Tbl_payment_banjarmasin_model->insert($data);
            $this->session->set_flashdata('message', 'Payment Debit Berhasil !');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_payment_banjarmasin_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_payment_banjarmasin/update_action'),
                'id_debit_banjarmasin' => set_value('id_debit_banjarmasin', $row->id_debit_banjarmasin),
                'id_payment_banjarmasin' => set_value('id_payment_banjarmasin', $row->id_payment_banjarmasin),
                'jumlah_payment' => set_value('jumlah_payment', $row->jumlah_payment),
                'tanggal_payment' => set_value('tanggal_payment', $row->tanggal_payment),
                'tbl_debit_data' => $this->Tbl_debit_banjarmasin_model->get_all(),
	    );
            $this->template->load('template','tbl_payment_banjarmasin/tbl_payment_banjarmasin_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_payment_banjarmasin'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_payment_banjarmasin', TRUE));
        } else {
            $data = array(
		'id_debit_banjarmasin' => $this->input->post('id_debit_banjarmasin',TRUE),
		'jumlah_payment' => $this->input->post('jumlah_payment',TRUE),
		'tanggal_payment' => $this->input->post('tanggal_payment',TRUE),
	    );

            $this->Tbl_payment_banjarmasin_model->update($this->input->post('id_payment_banjarmasin', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Payment Success');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_payment_banjarmasin_model->get_by_id($id);

        if ($row) {
            $this->Tbl_payment_banjarmasin_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_debit_banjarmasin'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_debit_banjarmasin'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_debit_banjarmasin', 'id debit banjarmasin', 'trim|required');
	$this->form_validation->set_rules('jumlah_payment', 'jumlah payment', 'trim|required');
	$this->form_validation->set_rules('tanggal_payment', 'tanggal payment', 'trim|required');

	$this->form_validation->set_rules('id_payment_banjarmasin', 'id_payment_banjarmasin', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_payment_banjarmasin.xls";
        $judul = "tbl_payment_banjarmasin";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
	xlsWriteLabel($tablehead, $kolomhead++, "Id Debit Banjarmasin");
	xlsWriteLabel($tablehead, $kolomhead++, "Jumlah Payment");
	xlsWriteLabel($tablehead, $kolomhead++, "Tanggal Payment");

	foreach ($this->Tbl_payment_banjarmasin_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->id_debit_banjarmasin);
	    xlsWriteLabel($tablebody, $kolombody++, $data->jumlah_payment);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tanggal_payment);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_payment_banjarmasin.doc");

        $data = array(
            'tbl_payment_banjarmasin_data' => $this->Tbl_payment_banjarmasin_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('tbl_payment_banjarmasin/tbl_payment_banjarmasin_doc',$data);
    }

}

/* End of file Tbl_payment_banjarmasin.php */
/* Location: ./application/controllers/Tbl_payment_banjarmasin.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2025-12-26 14:29:38 */
/* http://harviacode.com */