<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_sub_jakarta extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
		
        $this->load->model('Tbl_sub_jakarta_model');
		$this->load->model('Tbl_pekerjaan_jakarta_model');
        $this->load->model('Tbl_waiting_jakarta_model');
		$this->load->model('Tbl_spk_jakarta_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_list', $data);
    }

    public function detail_pekerjaan($id)
    {
        $q = urldecode($this->input->get('q', TRUE));


        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $tbl_pekerjaan_jakarta = $this->Tbl_pekerjaan_jakarta_model->get_by_id_read($id);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_pekerjaan_jakarta_data' => $tbl_pekerjaan_jakarta,
            'q' => $q,
            'start' => 0,
            'pagination' => $this->pagination->create_links(),
        );
        $this->template->load('template','tbl_pekerjaan_jakarta/tbl_pekerjaan_jakarta_list', $data);
    }

	public function home_vic()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_vic/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_vic/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_vic/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_list_vic', $data);
    }

	public function home_wait()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_wait/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_wait/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_wait/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_wait();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','approval_jakarta_1/jakarta_wait', $data);
    }

    public function wait_kasir()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/wait_kasir/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/wait_kasir/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/wait_kasir/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_wait_kasir();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','approval_jakarta_2/jakarta_wait', $data);
    }

	public function home_acc()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_acc/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_acc/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_acc/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_acc();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','approval_jakarta_1/jakarta_acc', $data);
    }

    public function home_acc_kasir()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_acc_kasir($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'filter' => 'Filter: semua',
        );
        $this->template->load('template','approval_jakarta_2/jakarta_acc', $data);
    }

    public function cari_tanggal_acc_kasir()
    {
        $q = urldecode($this->input->get('q', TRUE));

        $bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/acc_kasir/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_data_acc_kasir_tanggal($bulan, $tahun);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'start' => 0,
            'filter' => "Filter: ".$this->angkaKeBulan($bulan)." $tahun",
        );
        $this->template->load('template','approval_jakarta_2/jakarta_acc', $data);
    }

	public function home_batal()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_batal();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','approval_jakarta_1/jakarta_batal', $data);
    }

    public function home_batal_kasir()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal_kasir/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal_kasir/';
            $config['first_url'] = base_url() . 'index.php/tbl_sub_jakarta/home_batal_kasir/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data_batal($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->template->load('template','approval_jakarta_2/jakarta_batal', $data);
    }

    public function read($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);
        if ($row) {
            $data = array(
		'id_sub_jakarta' => $row->id_sub_jakarta,
		'id_spk_jakarta' => $row->id_spk_jakarta,
		'no_spk' => $row->no_spk,
		'full_name' => $row->full_name,
		'kode_sub' => $row->kode_sub,
		'tgl_spk' => $row->tgl_spk,
		'pelaksana' => $row->pelaksana,
		'nilai_spk' => $row->nilai_spk,
		'vendor' => $row->vendor,
		'asal' => $row->asal,
		'tujuan' => $row->tujuan,
		'jenis_pekerjaan' => $row->jenis_pekerjaan,
		'item_barang' => $row->item_barang,
		'qty' => $row->qty,
		'unit_angkut' => $row->unit_angkut,
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
		'id_users' => $row->id_users,
		'last_update' => $row->last_update,
		
		'tgl_debit_nota' => $row->tgl_debit_nota,
		'dpp' => $row->dpp,
		'total_payment' => $row->total_payment,
	    );
            $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta'));
        }
    }

    public function delete_list_kasir($id) 
    {

        $row = $this->Tbl_waiting_jakarta_model->get_by_id_read($id);
        $idSub = $row->id_sub_jakarta;

        $row1 = $this->Tbl_sub_jakarta_model->get_by_id_read($idSub);

        $totalPayment = $row1->total_payment;
        $jumlahPermintaan = $row->jumlah_permintaan;
       

        $data2 = array(
            'total_payment' => $totalPayment - $jumlahPermintaan,
        );

    
        if ($row) {
            $this->Tbl_sub_jakarta_model->update($idSub, $data2);
            $this->Tbl_waiting_jakarta_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_sub_jakarta/home_acc_kasir'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_acc_kasir'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_sub_jakarta/create_action'),
            'spk_data' => $this->Tbl_spk_jakarta_model->get_all(),
            'id_sub_jakarta' => set_value('id_sub_jakarta'),
            'id_spk_jakarta' => set_value('id_spk_jakarta'),
            'kode_sub' => set_value('kode_sub'),
            'tgl_spk' => set_value('tgl_spk'),
            'satuan' => set_value('satuan'),
            'pelaksana' => set_value('pelaksana'),
            'nilai_spk' => set_value('nilai_spk'),
            'vendor' => set_value('vendor'),
            'asal' => set_value('asal'),
            'tujuan' => set_value('tujuan'),
            'jenis_pekerjaan' => set_value('jenis_pekerjaan'),
            'item_barang' => set_value('item_barang'),
            'qty' => set_value('qty'),
            'unit_angkut' => set_value('unit_angkut'),
            'eta_kapal' => set_value('eta_kapal'),
            'etd_kapal' => set_value('etd_kapal'),
            'tgl_bap' => set_value('tgl_bap'),
            'tgl_mulai_doring' => set_value('tgl_mulai_doring'),
            'tgl_selesai_doring' => set_value('tgl_selesai_doring'),
            'tgl_stuf' => set_value('tgl_stuf'),
            'tgl_selesai_stuf' => set_value('tgl_selesai_stuf'),
            'jumlah_dikerjakan' => set_value('jumlah_dikerjakan'),
            'sisa_belum' => set_value('sisa_belum'),
            'status' => set_value('status'),
            'keterangan' => set_value('keterangan'),
	);
        $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'id_spk_jakarta' => $this->input->post('id_spk_jakarta',TRUE),
		'kode_sub' => $this->input->post('kode_sub',TRUE),
		'tgl_spk' => $this->input->post('tgl_spk',TRUE),
		'pelaksana' => $this->input->post('pelaksana',TRUE),
        'satuan' => $this->input->post('satuan',TRUE),
		'nilai_spk' => $this->input->post('nilai_spk',TRUE),
		'vendor' => $this->input->post('vendor',TRUE),
		'asal' => $this->input->post('asal',TRUE),
		'tujuan' => $this->input->post('tujuan',TRUE),
		'jenis_pekerjaan' => $this->input->post('jenis_pekerjaan',TRUE),
		'item_barang' => $this->input->post('item_barang',TRUE),
		'qty' => $this->input->post('qty',TRUE),
		'unit_angkut' => $this->input->post('unit_angkut',TRUE),
		'id_users' => $this->session->userdata('id_users'),
		'last_update' =>  date("Y-m-d H:i:s"),
        'tgl_stuf' => $this->input->post('tgl_stuf',TRUE),
        'tgl_selesai_stuf' => $this->input->post('tgl_selesai_stuf',TRUE),
        'etd_kapal' => $this->input->post('etd_kapal',TRUE),
        'eta_kapal' => $this->input->post('eta_kapal',TRUE),
        'tgl_mulai_doring' => $this->input->post('tgl_mulai_doring',TRUE),
        'tgl_selesai_doring' => $this->input->post('tgl_selesai_doring',TRUE),
        'tgl_bap' => $this->input->post('tgl_bap',TRUE),
        'jumlah_dikerjakan' => $this->input->post('jumlah_dikerjakan',TRUE),
        'sisa_belum' => $this->input->post('qty',TRUE) - $this->input->post('jumlah_dikerjakan',TRUE),
        'status' => $this->input->post('status',TRUE),
        'keterangan' => $this->input->post('keterangan',TRUE),
        'last_kerja' => "".$this->session->userdata('full_name')." - ".date('Y-m-d H:i:s')."",
	    );

            $this->Tbl_sub_jakarta_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

	public function update_pekerjaan_action() 
    {
        $this->_rules();

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
				'status' => $this->input->post('status',TRUE),
				'keterangan' => $this->input->post('keterangan',TRUE),
                'last_update_kerja' =>  date("Y-m-d H:i:s"),
	    		);

            $this->Tbl_pekerjaan_jakarta_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_sub_jakarta/home_vic'));
    }

	public function update_pekerjaan($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $data = array(
                'button' => 'Update Pekerjaan',
                'action' => site_url('tbl_sub_jakarta/update_pekerjaan_action'),
				'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
	    );
            $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_pekerjaan', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_vic'));
        }
    }

    public function update_pekerjaan_new($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $data = array(
                'button' => 'Update Pekerjaan',
                'action' => site_url('tbl_sub_jakarta/update_pekerjaan_new_action'),
				'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
                'tgl_stuf' => set_value('tgl_stuf', $row->tgl_stuf),
                'tgl_selesai_stuf' => set_value('tgl_selesai_stuf', $row->tgl_selesai_stuf),
                'etd_kapal' => set_value('etd_kapal', $row->etd_kapal),
                'eta_kapal' => set_value('eta_kapal', $row->eta_kapal),
                'tgl_mulai_doring' => set_value('tgl_mulai_doring', $row->tgl_mulai_doring),
                'tgl_selesai_doring' => set_value('tgl_selesai_doring', $row->tgl_selesai_doring),
                'qty' => set_value('qty', $row->qty),
                'unit_angkut' => set_value('unit_angkut', $row->unit_angkut),
                'tgl_bap' => set_value('tgl_bap', $row->tgl_bap),
                'jumlah_dikerjakan' => set_value('jumlah_dikerjakan', $row->jumlah_dikerjakan),
                'sisa_belum' => set_value('sisa_belum', $row->sisa_belum),
                'status' => set_value('status', $row->status),
                'keterangan' => set_value('keterangan', $row->keterangan),
	    );
            $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_pekerjaan_update', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function update_pekerjaan_new_action() 
    {

            $data = array(
				'tgl_stuf' => $this->input->post('tgl_stuf',TRUE),
				'tgl_selesai_stuf' => $this->input->post('tgl_selesai_stuf',TRUE),
				'etd_kapal' => $this->input->post('etd_kapal',TRUE),
				'eta_kapal' => $this->input->post('eta_kapal',TRUE),
				'tgl_mulai_doring' => $this->input->post('tgl_mulai_doring',TRUE),
				'tgl_selesai_doring' => $this->input->post('tgl_selesai_doring',TRUE),
				'tgl_bap' => $this->input->post('tgl_bap',TRUE),
                'qty' => $this->input->post('qty',TRUE),
				'jumlah_dikerjakan' => $this->input->post('jumlah_dikerjakan',TRUE),
				'sisa_belum' => $this->input->post('qty',TRUE) - $this->input->post('jumlah_dikerjakan',TRUE),
				'status' => $this->input->post('status',TRUE),
                'unit_angkut' => $this->input->post('unit_angkut',TRUE),
				'keterangan' => $this->input->post('keterangan',TRUE),
                'last_kerja' => "".$this->session->userdata('full_name')." - ".date('Y-m-d H:i:s')."",
	    		);

            $data1 = array(
                    'id_sub_jakarta' => $this->input->post('id_sub_jakarta',TRUE),
                    'qty' => $this->input->post('qty',TRUE),
                    'unit_angkut' => $this->input->post('unit_angkut',TRUE),
                    'tgl_stuf' => $this->input->post('tgl_stuf',TRUE),
                    'tgl_selesai_stuf' => $this->input->post('tgl_selesai_stuf',TRUE),
                    'etd_kapal' => $this->input->post('etd_kapal',TRUE),
                    'eta_kapal' => $this->input->post('eta_kapal',TRUE),
                    'tgl_mulai_doring' => $this->input->post('tgl_mulai_doring',TRUE),
                    'tgl_selesai_doring' => $this->input->post('tgl_selesai_doring',TRUE),
                    'tgl_bap' => $this->input->post('tgl_bap',TRUE),
                    'jumlah_dikerjakan' => $this->input->post('jumlah_dikerjakan',TRUE),
                    'sisa_belum' => $this->input->post('qty',TRUE) - $this->input->post('jumlah_dikerjakan',TRUE),
                    'status' => $this->input->post('status',TRUE),
                    'keterangan' => $this->input->post('keterangan',TRUE),
                    'last_kerja' => "".$this->session->userdata('full_name')." - ".date('Y-m-d H:i:s')."",
                );
            
            $this->Tbl_pekerjaan_jakarta_model->insert($data1);
            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta',TRUE), $data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_spk_jakarta'));
    }

	public function acc($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read_waiting($id);
        $idSub = $row->id_sub_jakarta;

        $row1 = $this->Tbl_sub_jakarta_model->get_by_id_read($idSub);
        $sisaBelum = ($row1->nilai_spk - $row1->total_payment);

        if ($row) {
            $data = array(
                'button' => 'Approval',
                'action' => site_url('tbl_sub_jakarta/acc_action'),
                'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
                'jumlah_permintaan' => set_value('jumlah_permintaan', $row->jumlah_permintaan),
                'sisa_payment' => set_value('sisa_payment', $sisaBelum),
				'id_waiting_jakarta' => set_value('id_waiting_jakarta', $row->id_waiting_jakarta),
	    );
            $this->template->load('template','approval_jakarta_1/jakarta_acc_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_wait'));
        }
    }

    public function acc_kasir($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read_waiting($id);
        $idSub = $row->id_sub_jakarta;

        $row1 = $this->Tbl_sub_jakarta_model->get_by_id_read($idSub);
        $sisaBelum = ($row1->nilai_spk - $row1->total_payment);

        if ($row) {
            $data = array(
                'button' => 'Approval',
                'action' => site_url('tbl_sub_jakarta/acc_action_kasir'),
                'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
                'jumlah_permintaan' => set_value('jumlah_permintaan', $row->jumlah_permintaan),
                'sisa_payment' => set_value('sisa_payment', $sisaBelum),
				'id_waiting_jakarta' => set_value('id_waiting_jakarta', $row->id_waiting_jakarta),
	    );
            $this->template->load('template','approval_jakarta_2/jakarta_acc_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/wait_kasir'));
        }
    }

	public function batal($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read_waiting($id);

        if ($row) {
            $data = array(
                'button' => 'Pembatalan',
                'action' => site_url('tbl_sub_jakarta/batal_action'),
				'id_waiting_jakarta' => set_value('id_waiting_jakarta', $row->id_waiting_jakarta),
	    );
            $this->template->load('template','approval_jakarta_1/jakarta_batal_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_acc'));
        }
    }

    public function batal_kasir($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read_waiting($id);

        if ($row) {
            $data = array(
                'button' => 'Pembatalan',
                'action' => site_url('tbl_sub_jakarta/batal_action_kasir'),
                'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
                'jumlah_permintaan' => set_value('jumlah_permintaan', $row->jumlah_permintaan),
				'id_waiting_jakarta' => set_value('id_waiting_jakarta', $row->id_waiting_jakarta),
	    );
            $this->template->load('template','approval_jakarta_2/jakarta_batal_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_acc_kasir'));
        }
    }

	public function batal_action() 
    {
       
        $data = array(
				'tgl_pembatalan_1' => $this->input->post('tgl_pembatalan_1',TRUE),
				'acc' => 0,
				'batal' => 1,
	    );

            $this->Tbl_waiting_jakarta_model->update($this->input->post('id_waiting_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Pembatalan Success');
            redirect(site_url('tbl_sub_jakarta/home_acc'));
    }

    public function batal_action_kasir() 
    {

        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($this->input->post('id_sub_jakarta',TRUE));

        $totalPayment = $row->total_payment;
       
        $data = array(
				'tgl_pembatalan_2' => $this->input->post('tgl_pembatalan_2',TRUE),
				'acc' => 1,
                'batal' => 1,
	    );

        $data2 = array(
            'total_payment' => $totalPayment - $this->input->post('jumlah_permintaan',TRUE),
        );

            $this->Tbl_waiting_jakarta_model->update($this->input->post('id_waiting_jakarta', TRUE), $data);

            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta', TRUE), $data2);
            $this->session->set_flashdata('message', 'Pembatalan Success');
            redirect(site_url('tbl_sub_jakarta/home_acc_kasir'));
    }

	public function acc_action() 
    {
       
        $data = array(
				'tgl_persetujuan_1' => $this->input->post('tgl_persetujuan_1',TRUE),
				'acc' => 1,
	    );

            $this->Tbl_waiting_jakarta_model->update($this->input->post('id_waiting_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Approval Success');
            redirect(site_url('tbl_sub_jakarta/home_wait'));
    }

    public function acc_action_kasir() 
    {

        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($this->input->post('id_sub_jakarta',TRUE));

        $totalPayment = $row->total_payment;

        $jumlahPayment = $totalPayment +  $this->input->post('jumlah_permintaan',TRUE);
       
        $data = array(
				'tgl_persetujuan_2' => $this->input->post('tgl_persetujuan_2',TRUE),
				'acc' => 2,
	    );

        $data2 = array(
            'total_payment' => $jumlahPayment,
        );

            $this->Tbl_waiting_jakarta_model->update($this->input->post('id_waiting_jakarta', TRUE), $data);

            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta', TRUE), $data2);
            $this->session->set_flashdata('message', 'Approval Success');
            redirect(site_url('tbl_sub_jakarta/wait_kasir'));
    }
    
    public function update($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_sub_jakarta/update_action'),
		'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
		'id_spk_jakarta' => set_value('id_spk_jakarta', $row->id_spk_jakarta),
        'spk_data' => $this->Tbl_spk_jakarta_model->get_all(),
		'kode_sub' => set_value('kode_sub', $row->kode_sub),
		'tgl_spk' => set_value('tgl_spk', $row->tgl_spk),
		'pelaksana' => set_value('pelaksana', $row->pelaksana),
		'nilai_spk' => set_value('nilai_spk', $row->nilai_spk),
		'vendor' => set_value('vendor', $row->vendor),
		'asal' => set_value('asal', $row->asal),
		'tujuan' => set_value('tujuan', $row->tujuan),
		'jenis_pekerjaan' => set_value('jenis_pekerjaan', $row->jenis_pekerjaan),
		'item_barang' => set_value('item_barang', $row->item_barang),
		'qty' => set_value('qty', $row->qty),
		'unit_angkut' => set_value('unit_angkut', $row->unit_angkut),
		'id_users' => set_value('id_users', $row->id_users),
		'last_update' => set_value('last_update', $row->last_update),
	    );
            $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta'));
        }
    }

    public function update_sub($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_sub_jakarta/update_sub_action'),
		'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
        'spk_data' => $this->Tbl_spk_jakarta_model->get_all(),
		'id_spk_jakarta' => set_value('id_spk_jakarta', $row->id_spk_jakarta),
		'kode_sub' => set_value('kode_sub', $row->kode_sub),
		'tgl_spk' => set_value('tgl_spk', $row->tgl_spk),
		'pelaksana' => set_value('pelaksana', $row->pelaksana),
		'nilai_spk' => set_value('nilai_spk', $row->nilai_spk),
		'vendor' => set_value('vendor', $row->vendor),
        'satuan' => set_value('satuan', $row->satuan),
		'asal' => set_value('asal', $row->asal),
		'tujuan' => set_value('tujuan', $row->tujuan),
		'jenis_pekerjaan' => set_value('jenis_pekerjaan', $row->jenis_pekerjaan),
		'item_barang' => set_value('item_barang', $row->item_barang),
		'qty' => set_value('qty', $row->qty),
		'unit_angkut' => set_value('unit_angkut', $row->unit_angkut),
		'id_users' => set_value('id_users', $row->id_users),
		'last_update' => set_value('last_update', $row->last_update),
	    );
            $this->template->load('template','tbl_sub_jakarta/tbl_sub_jakarta_form_update', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function print_pekerjaan($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $data = array(
		        'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
                'kode_sub' => set_value('kode_sub', $row->kode_sub),
                'no_spk' => set_value('no_spk', $row->no_spk),
                'tgl_stuf' => set_value('tgl_stuf', $row->tgl_stuf),
                'tgl_selesai_stuf' => set_value('tgl_selesai_stuf', $row->tgl_selesai_stuf),
                'etd_kapal' => set_value('etd_kapal', $row->etd_kapal),
                'eta_kapal' => set_value('eta_kapal', $row->eta_kapal),
                'tgl_mulai_doring' => set_value('tgl_mulai_doring', $row->tgl_mulai_doring),
                'tgl_selesai_doring' => set_value('tgl_selesai_doring', $row->tgl_selesai_doring),
                'tgl_bap' => set_value('tgl_bap', $row->tgl_bap),
                'status' => set_value('status', $row->status),
                'keterangan' => set_value('keterangan', $row->keterangan),
                'jumlah_dikerjakan' => set_value('jumlah_dikerjakan', $row->jumlah_dikerjakan),
                'sisa_belum' => set_value('sisa_belum', $row->sisa_belum),
	    );
            $this->load->view('tbl_sub_jakarta/print_pekerjaan', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }


    public function tambah_pekerjaan($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $data = array(
                'button' => 'Update Pekerjaan',
                'action' => site_url('tbl_sub_jakarta/tambah_pekerjaan_action'),
		        'id_sub_jakarta' => set_value('id_sub_jakarta', $row->id_sub_jakarta),
	    );
            $this->template->load('template','tbl_sub_jakarta/tambah_pekerjaan_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function tambah_pekerjaan_action() 
    {
        $data = array(
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
            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_spk_jakarta'));   
    }

    public function update_sub_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_sub_jakarta', TRUE));
        } else {
            $data = array(
                'id_spk_jakarta' => $this->input->post('id_spk_jakarta',TRUE),
                'kode_sub' => $this->input->post('kode_sub',TRUE),
                'tgl_spk' => $this->input->post('tgl_spk',TRUE),
                'satuan' => $this->input->post('satuan',TRUE),
                'pelaksana' => $this->input->post('pelaksana',TRUE),
                'nilai_spk' => $this->input->post('nilai_spk',TRUE),
                'vendor' => $this->input->post('vendor',TRUE),
                'asal' => $this->input->post('asal',TRUE),
                'tujuan' => $this->input->post('tujuan',TRUE),
                'jenis_pekerjaan' => $this->input->post('jenis_pekerjaan',TRUE),
                'item_barang' => $this->input->post('item_barang',TRUE),
                'qty' => $this->input->post('qty',TRUE),
                'unit_angkut' => $this->input->post('unit_angkut',TRUE),
                'id_users' => $this->session->userdata('id_users'),
                'last_update' =>  date("Y-m-d H:i:s"),
	    );

            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_sub_jakarta', TRUE));
        } else {
            $data = array(
		'id_spk_jakarta' => $this->input->post('id_spk_jakarta',TRUE),
		'kode_sub' => $this->input->post('kode_sub',TRUE),
		'tgl_spk' => $this->input->post('tgl_spk',TRUE),
		'pelaksana' => $this->input->post('pelaksana',TRUE),
		'nilai_spk' => $this->input->post('nilai_spk',TRUE),
		'vendor' => $this->input->post('vendor',TRUE),
		'asal' => $this->input->post('asal',TRUE),
		'tujuan' => $this->input->post('tujuan',TRUE),
		'jenis_pekerjaan' => $this->input->post('jenis_pekerjaan',TRUE),
		'item_barang' => $this->input->post('item_barang',TRUE),
		'qty' => $this->input->post('qty',TRUE),
		'unit_angkut' => $this->input->post('unit_angkut',TRUE),
		'id_users' => $this->input->post('id_users',TRUE),
		'last_update' => $this->input->post('last_update',TRUE),
	    );

            $this->Tbl_sub_jakarta_model->update($this->input->post('id_sub_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_sub_jakarta'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id($id);

        if ($row) {
            $this->Tbl_sub_jakarta_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_sub_jakarta'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta'));
        }
    }

    public function delete_from_spk($id) 
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);

        if ($row) {
            $this->Tbl_sub_jakarta_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_spk_jakarta'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function cetak_kasir($id) 
    {
        $row = $this->Tbl_waiting_jakarta_model->get_by_id($id);
        if ($row) {
            $data = array(
		'no_invoice' => $row->no_invoice,
		'kode_sub' => $row->kode_sub,
		'no_spk' => $row->no_spk,
		'tanggal_permintaan' => $row->tgl_permintaan,
		'tanggal_persetujuan_1' => $row->tgl_persetujuan_1,
		'tanggal_persetujuan_2' => $row->tgl_persetujuan_2,
		'deskripsi' => $row->deskripsi,
	    );
            $this->load->view('tbl_sub_jakarta/cetak_payment', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_acc_kasir'));
        }
    }

    public function delete_list($id) 
    {
        $row = $this->Tbl_waiting_jakarta_model->get_by_id_read($id);

        if ($row) {
            $this->Tbl_waiting_jakarta_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_sub_jakarta/home_wait'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta/home_wait'));
        }
    }

    public function laporan_pekerjaan()
    {

        $row = $this->Tbl_sub_jakarta_model->get_by_id_read($id);
        if ($row) {
            $data = array(
		'id_sub_jakarta' => $row->id_sub_jakarta,
		'id_spk_jakarta' => $row->id_spk_jakarta,
		'no_spk' => $row->no_spk,
		'full_name' => $row->full_name,
		'kode_sub' => $row->kode_sub,
		'tgl_spk' => $row->tgl_spk,
		'pelaksana' => $row->pelaksana,
		'nilai_spk' => $row->nilai_spk,
		'vendor' => $row->vendor,
		'asal' => $row->asal,
		'tujuan' => $row->tujuan,
		'jenis_pekerjaan' => $row->jenis_pekerjaan,
		'item_barang' => $row->item_barang,
		'qty' => $row->qty,
		'unit_angkut' => $row->unit_angkut,
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
		'id_users' => $row->id_users,
		'last_update' => $row->last_update,
		'acc' => $row->acc,
		'tgl_debit_nota' => $row->tgl_debit_nota,
		'dpp' => $row->dpp,
		'total_payment' => $row->total_payment,
	    );
            $this->template->load('template','tbl_sub_jakarta/laporan_pekerjaan', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_sub_jakarta'));
        }
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

    public function _rules() 
    {
	$this->form_validation->set_rules('id_spk_jakarta', 'id spk jakarta', 'trim|required');
	$this->form_validation->set_rules('kode_sub', 'kode sub', 'trim|required');
	$this->form_validation->set_rules('tgl_spk', 'tgl spk', 'trim|required');
	$this->form_validation->set_rules('pelaksana', 'pelaksana', 'trim|required');
	$this->form_validation->set_rules('nilai_spk', 'nilai spk', 'trim|required');
	$this->form_validation->set_rules('vendor', 'vendor', 'trim|required');
	$this->form_validation->set_rules('asal', 'asal', 'trim|required');
	$this->form_validation->set_rules('tujuan', 'tujuan', 'trim|required');
	$this->form_validation->set_rules('jenis_pekerjaan', 'jenis pekerjaan', 'trim|required');
	$this->form_validation->set_rules('item_barang', 'item barang', 'trim|required');
	//$this->form_validation->set_rules('qty', 'qty', 'trim|required');
	//$this->form_validation->set_rules('unit_angkut', 'unit angkut', 'trim|required');
	//$this->form_validation->set_rules('tgl_stuf', 'tgl stuf', 'trim|required');
	//$this->form_validation->set_rules('tgl_selesai_stuf', 'tgl selesai stuf', 'trim|required');
	//$this->form_validation->set_rules('etd_kapal', 'etd kapal', 'trim|required');
	//$this->form_validation->set_rules('eta_kapal', 'eta kapal', 'trim|required');
	//$this->form_validation->set_rules('tgl_mulai_doring', 'tgl mulai doring', 'trim|required');
	//$this->form_validation->set_rules('tgl_selesai_doring', 'tgl selesai doring', 'trim|required');
	//$this->form_validation->set_rules('tgl_bap', 'tgl bap', 'trim|required');
	//$this->form_validation->set_rules('jumlah_dikerjakan', 'jumlah dikerjakan', 'trim|required');
	//$this->form_validation->set_rules('sisa_belum', 'sisa belum', 'trim|required');
	//$this->form_validation->set_rules('status', 'status', 'trim|required');
	//$this->form_validation->set_rules('keterangan', 'keterangan', 'trim|required');

	$this->form_validation->set_rules('id_sub_jakarta', 'id_sub_jakarta', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=tbl_sub_jakarta.doc");

        $data = array(
            'tbl_sub_jakarta_data' => $this->Tbl_sub_jakarta_model->get_all(),
            'start' => 0
        );
        
        $this->load->view('tbl_sub_jakarta/tbl_sub_jakarta_doc',$data);
    }

    public function lihat_waiting($id)
    {
        $data = array(
            'tbl_waiting_jakarta_data' => $this->Tbl_waiting_jakarta_model->get_by_id_sub_acc($id),
            'start' => 0
        );
        
        $this->template->load('template','tbl_waiting_jakarta/tbl_waiting_jakarta_list_detail',$data);
    }

    // Fungsi untuk mengonversi angka bulan menjadi nama bulan
  


}

/* End of file Tbl_sub_jakarta.php */
/* Location: ./application/controllers/Tbl_sub_jakarta.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-24 13:40:49 */
/* http://harviacode.com */