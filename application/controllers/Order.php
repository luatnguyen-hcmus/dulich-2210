<?php 
	Class Order extends MY_Controller{
		
		function __construct(){
			parent::__construct();
		}
		//Nhap thong tin cua khach hang
		function checkout(){
			$domain = $_SERVER['SERVER_NAME'];

			if($_SERVER['HTTP_REFERER'] == "http://".$domain.'/dulich1/cart'){
				$this->data['temp'] = "site/order/checkout";
				$this->load->view('site/layout', $this->data);
			}
			else{
				redirect(base_url());
			}
			
		}
		
		//nhan ket qa tra ve tu cong thanh toan
		function result(){
			//load thu vien thanh toan
			$this->load->library('payment/baokim_payment');
			$this->load->model('transaction_model');
			//id cua giao dich
			$transaction_id = $this->input->post('order_id');
			//lay thong tin cua giao dich.
			$transaction = $this->model->transaction_model->get_info($transaction_id);
			if(!$transaction){
				redirect();
			}
			//goi toi ham kiem tra trang thai thanh toan ben bao kim
			$status = $this->baokim_payment->result($transaction_id, $transaction->amount);
			if($status == true){
				//cap nhat lai trang thai don hang la da thanh toan
				$data = array();
				$data['status'] = 1;
				$this->transaction_model->update($transaction_id, $data);

			}else if($status == false){
				//cap nhat lai trang thai don hang la khong thanh toan
				$data = array();
				$data['status'] = 2;
				$this->transaction_model->update($transaction_id, $data);

			}
		}
	}