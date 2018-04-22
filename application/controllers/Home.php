<?php 
	Class Home extends MY_Controller{
		function index(){
			

			//lay danh sach san tour
			$this->load->model('tour_model');
			$tour_list = $this->tour_model->get_list();
			$this->data['tour_list'] = $tour_list;

			// lay 4 tour.
			$input = array();
			$input['limit'] = array(4, 0);
			$tour_newest = $this->tour_model->get_list($input);
			$this->data['tour_newest'] = $tour_newest;
			$input = [];

			//lay 4 tour moi nhat
			$input['limit'] = array(4, 0);
			$input['order'] = array('view', 'DESC');
			$tour_more = $this->tour_model->get_list($input);
			$this->data['tour_more'] = $tour_more;

			//lay noi dung cua biên message
			$message = $this->session->flashdata('message');
			$this->data['message'] = $message;

			$this->data['temp'] = 'site/home/index';
			$this->load->view('site/layout',$this->data);
		}
	}