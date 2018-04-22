<?php 
	Class Home extends MY_Controller{
		function index(){

			//tai cac fil thanh toan
			$this->load->model('user_model');
			$this->load->model('transaction_model');
			$this->load->model('news_model');
			$this->load->model('tour_model');
			// /$this->load->model('contact_model');

			

			// //lay tong doanh thu
			$where = array('status', 1);
			$amount_total = $this->transaction_model->get_sum('amount', $where);
			$this->data['amount_total'] = $amount_total;

			//lay tong danh thu hom nay
			$input = array();
			$input['like'] = array('created', get_date(now()));
			$list = $this->transaction_model->get_list($input);
			$tong = 0;
			foreach($list as $lt){
				$tong = $tong + $lt->amount ;
			}
			$this->data['day_total'] = $tong;
			

			//die();
			
			//$this->data['list'] = $list->amount;
			

			// //thong ke tong so
			$this->data['total_transaction'] = $this->transaction_model->get_total();
			$this->data['total_product'] = $this->tour_model->get_total();
			$this->data['total_new'] = $this->news_model->get_total();
			$this->data['total_user'] = $this->user_model->get_total();
			
			$this->data['list_transaction'] = $this->transaction_model->get_list();
			
			
			//lay noi dung cua biên message
			$message1 = $this->session->flashdata('message1');
			$this->data['message1'] = $message1;

			$this->data['temp'] = 'admin/home/index';
			$this->load->view('admin/main', $this->data);
		}
		//dang xuat
		function logout(){
			if($this->session->userdata('login')){
				$this->session->unset_userdata('login');
			}
			redirect(admin_url('login'));
		}
	}