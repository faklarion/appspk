<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_pekerjaan_jakarta extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_pekerjaan_jakarta_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_pekerjaan_jakarta/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_pekerjaan_jakarta/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_pekerjaan_jakarta/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_pekerjaan_jakarta_model->total_rows($q);
        $tbl_pekerjaan_jakarta = $this->Tbl_pekerjaan_jakarta_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_pekerjaan_jakarta_data' => $tbl_pekerjaan_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_pekerjaan_jakarta/tbl_pekerjaan_jakarta_list', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_pekerjaan_jakarta_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_pekerjaan_jakarta' => $row->id_pekerjaan_jakarta,
		'id_sub_jakarta' => $row->id_sub_jakarta,
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
            $this->template->load('template','tbl_pekerjaan_jakarta/tbl_pekerjaan_jakarta_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_pekerjaan_jakarta/create_action'),
	    'id_pekerjaan_jakarta' => set_value('id_pekerjaan_jakarta'),
	    'id_sub_jakarta' => set_value('id_sub_jakarta'),
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
        $this->template->load('template','tbl_pekerjaan_jakarta/tbl_pekerjaan_jakarta_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_sub_jakarta' => $this->input->post('id_sub_jakarta',TRUE),
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

            $this->Tbl_pekerjaan_jakarta_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_pekerjaan_jakarta_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_pekerjaan_jakarta/update_action'),
		'id_pekerjaan_jakarta' => set_value('id_pekerjaan_jakarta', $row->id_pekerjaan_jakarta),
		'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
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
            $this->template->load('template','tbl_pekerjaan_jakarta/tbl_pekerjaan_jakarta_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_pekerjaan_jakarta', TRUE));
        } else {
            $data = array(
		'id_sub_jakarta' => $this->input->post('id_sub_jakarta',TRUE),
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

            $this->Tbl_pekerjaan_jakarta_model->update($this->input->post('id_pekerjaan_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_pekerjaan_jakarta_model->get_by_id($id);

        if ($row) {
            $this->Tbl_pekerjaan_jakarta_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_pekerjaan_jakarta'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('id_sub_jakarta', 'id sub jakarta', 'trim|required');
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

	$this->form_validation->set_rules('id_pekerjaan_jakarta', 'id_pekerjaan_jakarta', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_pekerjaan_jakarta.xls";
        $judul = "tbl_pekerjaan_jakarta";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Id Sub Jakarta");
	xlsWriteLabel($tablehead, $kolomhead++, "Tgl Stuf");
	xlsWriteLabel($tablehead, $kolomhead++, "Tgl Selesai Stuf");
	xlsWriteLabel($tablehead, $kolomhead++, "Etd Kapal");
	xlsWriteLabel($tablehead, $kolomhead++, "Eta Kapal");
	xlsWriteLabel($tablehead, $kolomhead++, "Tgl Mulai Doring");
	xlsWriteLabel($tablehead, $kolomhead++, "Tgl Selesai Doring");
	xlsWriteLabel($tablehead, $kolomhead++, "Tgl Bap");
	xlsWriteLabel($tablehead, $kolomhead++, "Jumlah Dikerjakan");
	xlsWriteLabel($tablehead, $kolomhead++, "Sisa Belum");
	xlsWriteLabel($tablehead, $kolomhead++, "Status");
	xlsWriteLabel($tablehead, $kolomhead++, "Keterangan");

	foreach ($this->Tbl_pekerjaan_jakarta_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteNumber($tablebody, $kolombody++, $data->id_sub_jakarta);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tgl_stuf);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tgl_selesai_stuf);
	    xlsWriteLabel($tablebody, $kolombody++, $data->etd_kapal);
	    xlsWriteLabel($tablebody, $kolombody++, $data->eta_kapal);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tgl_mulai_doring);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tgl_selesai_doring);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tgl_bap);
	    xlsWriteNumber($tablebody, $kolombody++, $data->jumlah_dikerjakan);
	    xlsWriteNumber($tablebody, $kolombody++, $data->sisa_belum);
	    xlsWriteLabel($tablebody, $kolombody++, $data->status);
	    xlsWriteLabel($tablebody, $kolombody++, $data->keterangan);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Tbl_pekerjaan_jakarta.php */
/* Location: ./application/controllers/Tbl_pekerjaan_jakarta.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-26 14:16:41 */
/* http://harviacode.com */