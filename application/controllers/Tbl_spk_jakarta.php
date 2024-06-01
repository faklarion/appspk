<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tbl_spk_jakarta extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //is_login();
        $this->load->model('Tbl_spk_jakarta_model');
        $this->load->model('Tbl_waiting_jakarta_model');
        $this->load->model('Tbl_vendor_model');
        $this->load->model('Tbl_sub_jakarta_model');
        $this->load->model('Tbl_vic_model');
        $this->load->model('Tbl_debit_jakarta_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));

        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_spk_jakarta/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_spk_jakarta/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_spk_jakarta/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_spk_jakarta_model->total_rows($q);
        $tbl_spk_jakarta = $this->Tbl_spk_jakarta_model->get_all();
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_all();
        $tbl_vendor = $this->Tbl_vendor_model->get_all();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_spk_jakarta_data' => $tbl_spk_jakarta,
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'tbl_vendor_data' => $tbl_vendor,
            'tbl_vic_data' => $this->Tbl_vic_model->get_all(),
            'q' => $q,
            'start' => $start,
            'filter' => "semua",
        );
        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_list', $data);
    }

    public function sampah()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));

        if ($q <> '') {
            $config['base_url'] = base_url() . '.php/c_url/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'index.php/tbl_spk_jakarta/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'index.php/tbl_spk_jakarta/index/';
            $config['first_url'] = base_url() . 'index.php/tbl_spk_jakarta/index/';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_spk_jakarta_model->total_rows($q);
        $tbl_spk_jakarta = $this->Tbl_spk_jakarta_model->get_all();
        $tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_all();
        $tbl_vendor = $this->Tbl_vendor_model->get_all();
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_spk_jakarta_data' => $tbl_spk_jakarta,
            'tbl_sub_jakarta_data' => $tbl_sub_jakarta,
            'tbl_vendor_data' => $tbl_vendor,
            'tbl_vic_data' => $this->Tbl_vic_model->get_all(),
            'q' => $q,
            'start' => $start,
            'filter' => "semua",
        );
        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_list_sampah', $data);
    }



    public function read($id)
    {
        $row = $this->Tbl_spk_jakarta_model->get_by_id($id);
        if ($row) {
            $data = array(
                'id_spk_jakarta' => $row->id_spk_jakarta,
                'no_po' => $row->no_po,
                'no_spk' => $row->no_spk,
                'tgl_spk' => $row->tgl_spk,
                'pelaksana' => $row->pelaksana,
                'nama_kapal' => $row->nama_kapal,
                'nilai_spk' => $row->nilai_spk,
                'dpp' => $row->dpp,
                'total_payment' => $row->total_payment,
            );
            $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function create()
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('tbl_spk_jakarta/create_action'),
            'id_spk_jakarta' => set_value('id_spk_jakarta'),
            'id_vendor' => set_value('id_vendor'),
            'no_po' => set_value('no_po'),
            'vendor_data' => $this->Tbl_vendor_model->get_all(),
            'vic_data' => $this->Tbl_vic_model->get_all(),
            'no_spk' => set_value('no_spk'),
            'tgl_spk' => set_value('tgl_spk'),
            'pelaksana' => set_value('pelaksana'),
            'nama_kapal' => set_value('nama_kapal'),
        );
        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_form', $data);
    }

    public function create_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
                'no_po' => $this->input->post('no_po', TRUE),
                'no_spk' => $this->input->post('no_spk', TRUE),
                'tgl_spk' => $this->input->post('tgl_spk', TRUE),
                'id_vendor' => $this->input->post('id_vendor', TRUE),
                'id_vic' => $this->input->post('id_vic', TRUE),
                'pelaksana' => $this->input->post('pelaksana', TRUE),
                'nama_kapal' => $this->input->post('nama_kapal', TRUE),
                'id_users' => $this->session->userdata('id_users'),
                'last_update' => date("Y-m-d H:i:s"),
                'dpp' => 0,
                'total_payment' => 0,
            );

            $this->Tbl_spk_jakarta_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function update($id)
    {
        $row = $this->Tbl_spk_jakarta_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('tbl_spk_jakarta/update_action'),
                'id_spk_jakarta' => set_value('id_spk_jakarta', $row->id_spk_jakarta),
                'no_po' => set_value('no_po', $row->no_po),
                'vendor_data' => $this->Tbl_vendor_model->get_all(),
                'vic_data' => $this->Tbl_vic_model->get_all(),
                'no_spk' => set_value('no_spk', $row->no_spk),
                'tgl_spk' => set_value('tgl_spk', $row->tgl_spk),
                'pelaksana' => set_value('pelaksana', $row->pelaksana),
                'id_vendor' => set_value('id_vendor', $row->id_vendor),
                'nama_kapal' => set_value('nama_kapal', $row->nama_kapal),
            );
            $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function update_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_spk_jakarta', TRUE));
        } else {
            $data = array(
                'no_po' => $this->input->post('no_po', TRUE),
                'id_vendor' => $this->input->post('id_vendor', TRUE),
                'id_vic' => $this->input->post('id_vic', TRUE),
                'no_spk' => $this->input->post('no_spk', TRUE),
                'tgl_spk' => $this->input->post('tgl_spk', TRUE),
                'pelaksana' => $this->input->post('pelaksana', TRUE),
                'nama_kapal' => $this->input->post('nama_kapal', TRUE),
                'id_users' => $this->session->userdata('id_users'),
                'last_update' => date("Y-m-d H:i:s"),
            );

            $this->Tbl_spk_jakarta_model->update($this->input->post('id_spk_jakarta', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function delete($id)
    {
        $row = $this->Tbl_spk_jakarta_model->get_by_id($id);

        $querySub = $this->db->query("SELECT * FROM tbl_sub_jakarta WHERE id_spk_jakarta = $id");
        $resultsSub = $querySub->result();
        foreach ($resultsSub as $hasilSub) {
            $idSub = $hasilSub->id_sub_jakarta;
        }

        $data = array(
            'hapus' => 0,
        );

        $this->db->delete('tbl_spk_jakarta', array('id_spk_jakarta' => $id));
        $this->db->delete('tbl_sub_jakarta', array('id_spk_jakarta' => $id));
        $this->db->delete('tbl_waiting_jakarta', array('id_sub_jakarta' => $idSub));
        $this->db->delete('tbl_debit_jakarta', array('id_sub_jakarta' => $idSub));
        $this->session->set_flashdata('message', 'Delete Record Success');
        redirect(site_url('tbl_spk_jakarta/sampah'));
    }

    public function delete_sampah($id)
    {
        $row = $this->Tbl_spk_jakarta_model->get_by_id($id);

        $querySub = $this->db->query("SELECT * FROM tbl_sub_jakarta WHERE id_spk_jakarta = $id");
        $resultsSub = $querySub->result();
        foreach ($resultsSub as $hasilSub) {
            $idSub = $hasilSub->id_sub_jakarta;
        }


        $data = array(
            'hapus' => 1,
            'tanggal_hapus' => date('Y-m-d'),
        );

        if ($row) {
            $this->Tbl_spk_jakarta_model->update($id, $data);
            $this->db->update('tbl_sub_jakarta', $data, array('id_spk_jakarta' => $id));
            $this->db->update('tbl_waiting_jakarta', $data, array('id_sub_jakarta' => $idSub));
            $this->db->update('tbl_debit_jakarta', $data, array('id_sub_jakarta' => $idSub));
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('tbl_spk_jakarta'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('tbl_spk_jakarta'));
        }
    }

    public function restore_sampah($id)
    {
        $row = $this->Tbl_spk_jakarta_model->get_by_id($id);

        $querySub = $this->db->query("SELECT * FROM tbl_sub_jakarta WHERE id_spk_jakarta = $id");
        $resultsSub = $querySub->result();
        foreach ($resultsSub as $hasilSub) {
            $idSub = $hasilSub->id_sub_jakarta;
        }

        $data = array(
            'hapus' => 0,
            'tanggal_hapus' => NULL,
        );

        $this->db->update('tbl_spk_jakarta', $data, array('id_spk_jakarta' => $id));
        $this->db->update('tbl_sub_jakarta', $data, array('id_spk_jakarta' => $id));
        $this->db->update('tbl_waiting_jakarta', $data, array('id_sub_jakarta' => $idSub));
        $this->db->update('tbl_debit_jakarta', $data, array('id_sub_jakarta' => $idSub));
        $this->session->set_flashdata('message', 'Restore Record Success');
        redirect(site_url('tbl_spk_jakarta/sampah'));

    }

    public function print_kerja($id)
    {
        $row = $this->Tbl_sub_jakarta_model->get_by_id_read_kerja($id);
        foreach ($row as $row1) {
            @$noSPK = $row1->no_spk;
        }
        $data = array(
            'tbl_spk_jakarta_data' => $this->Tbl_sub_jakarta_model->get_by_id_read_kerja($id),
            'no_spk' => @$noSPK,
            'start' => 0,
        );
        $this->load->view('tbl_spk_jakarta/print_pekerjaan', $data);

    }

    public function _rules()
    {
        $this->form_validation->set_rules('no_po', 'no po', 'trim|required');
        $this->form_validation->set_rules('no_spk', 'no spk', 'trim|required');
        $this->form_validation->set_rules('tgl_spk', 'tgl spk', 'trim|required');
        $this->form_validation->set_rules('pelaksana', 'pelaksana', 'trim|required');
        $this->form_validation->set_rules('nama_kapal', 'nama kapal', 'trim|required');
        //$this->form_validation->set_rules('nilai_spk', 'nilai spk', 'trim|required');

        $this->form_validation->set_rules('id_spk_jakarta', 'id_spk_jakarta', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function word()
    {

        $bulan = $this->input->get('bulan');
        $tahun = $this->input->get('tahun');

        $data = array(
            'tbl_spk_jakarta_data' => $this->Tbl_spk_jakarta_model->get_by_cari($bulan, $tahun),
            'start' => 0,
        );

        $this->load->view('tbl_spk_jakarta/tbl_spk_jakarta_doc', $data);
    }

    public function cari()
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
            'tbl_spk_jakarta_data' => $this->Tbl_spk_jakarta_model->get_by_cari($bulan, $tahun),
            'start' => 0,
            'pagination' => $this->pagination->create_links(),
            'tbl_vendor_data' => $this->Tbl_vendor_model->get_all(),
            'tbl_vic_data' => $this->Tbl_vic_model->get_all(),
            'filter' => '' . $this->getBulan($bulan) . ' ' . $tahun . '',
        );

        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_list', $data);
    }

    public function cari_vendor()
    {
        $id_vendor = $this->input->get('id_vendor');

        $row = $this->Tbl_vendor_model->get_by_id($id_vendor);
        $namaVendor = $row->nama_vendor;

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_spk_jakarta_data' => $this->Tbl_spk_jakarta_model->get_by_vendor($id_vendor),
            'tbl_vendor_data' => $this->Tbl_vendor_model->get_all(),
            'start' => 0,
            'tbl_vic_data' => $this->Tbl_vic_model->get_all(),
            'pagination' => $this->pagination->create_links(),
            'filter' => 'Nama Vendor (' . $namaVendor . ')',
        );

        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_list', $data);
    }

    public function cari_vic()
    {
        $id_vic = $this->input->get('id_vic');

        $row = $this->Tbl_vic_model->get_by_id($id_vic);
        $namaVic = $row->nama_vic;

        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_spk_jakarta_data' => $this->Tbl_spk_jakarta_model->get_by_vic($id_vic),
            'tbl_vendor_data' => $this->Tbl_vendor_model->get_all(),
            'start' => 0,
            'tbl_vic_data' => $this->Tbl_vic_model->get_all(),
            'pagination' => $this->pagination->create_links(),
            'filter' => 'Nama VIC (' . $namaVic . ')',
        );

        $this->template->load('template', 'tbl_spk_jakarta/tbl_spk_jakarta_list', $data);
    }

    public function lihat_debit($id)
    {
        $row = $this->Tbl_debit_jakarta_model->get_by_id_spk($id);

        foreach ($row as $datarow) {
            @$noSPK = $datarow->no_spk;
        }
        $data = array(
            'tbl_debit_jakarta_data' => $this->Tbl_debit_jakarta_model->get_by_id_spk($id),
            'start' => 0,
            'noSPK' => @$noSPK,
        );

        $this->template->load('template', 'tbl_debit_jakarta/tbl_debit_jakarta_list_detail', $data);
    }

    function getBulan($bln)
    {
        switch ($bln) {
            case 1:
                return "Januari";
                break;
            case 2:
                return "Februari";
                break;
            case 3:
                return "Maret";
                break;
            case 4:
                return "April";
                break;
            case 5:
                return "Mei";
                break;
            case 6:
                return "Juni";
                break;
            case 7:
                return "Juli";
                break;
            case 8:
                return "Agustus";
                break;
            case 9:
                return "September";
                break;
            case 10:
                return "Oktober";
                break;
            case 11:
                return "November";
                break;
            case 12:
                return "Desember";
                break;
        }
    }

}

/* End of file Tbl_spk_jakarta.php */
/* Location: ./application/controllers/Tbl_spk_jakarta.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2024-01-23 11:27:05 */
/* http://harviacode.com */