<?php
Class Auth extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tbl_sub_banjarmasin_model');
        $this->load->model('Tbl_sub_jakarta_model');
		$this->load->model('Tbl_pekerjaan_banjarmasin_model');
        $this->load->model('Tbl_pekerjaan_jakarta_model');
    }
    
    function index(){
        $this->load->view('auth/login');
    }

    function resi_bjm(){
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_banjarmasin_model->total_rows($q);
        $Tbl_sub_banjarmasin = $this->Tbl_sub_banjarmasin_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_banjarmasin_data' => $Tbl_sub_banjarmasin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
        );

        $this->load->view('auth/resi_bjm', $data);
    }
    function resi_jkt(){
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->uri->segment(3));
        $config['per_page'] = 10;
        $config['page_query_string'] = FALSE;
        $config['total_rows'] = $this->Tbl_sub_jakarta_model->total_rows($q);
        $Tbl_sub_jakarta = $this->Tbl_sub_jakarta_model->get_limit_data($config['per_page'], $start, $q);
        $config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin pull-right">';
        $config['full_tag_close'] = '</ul>';
        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'tbl_sub_jakarta_data' => $Tbl_sub_jakarta,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
        );

        $this->load->view('auth/resi_jkt', $data);
    }
    
    function cheklogin(){
        $email      = $this->input->post('email');
        //$password   = $this->input->post('password');
        $password = $this->input->post('password',TRUE);
        $hashPass = password_hash($password,PASSWORD_DEFAULT);
        $test     = password_verify($password, $hashPass);
        // query chek users
        $this->db->where('email',$email);
        $this->db->where('is_aktif',  'y');
        $users       = $this->db->get('tbl_user');
        if($users->num_rows()>0){
            $user = $users->row_array();
            $id=$user['is_aktif'];
            if(password_verify($password,$user['password']) && $id=='y'){
                // retrive user data to session
                $this->session->set_userdata($user);
                redirect('welcome');
            }elseif($id=='n'){
                $this->session->set_flashdata('status_login','akun anda tidak aktif !!');
                redirect('auth');
            } else {
                redirect('auth');
            }
        }else{
            $this->session->set_flashdata('status_login','email atau password yang anda input salah / akun tidak aktif !!');
            redirect('auth');
        }
    }
    
    function logout(){
        $this->session->sess_destroy();
        $this->session->set_flashdata('status_login','Anda sudah berhasil keluar dari aplikasi');
        redirect('auth');
    }
}
