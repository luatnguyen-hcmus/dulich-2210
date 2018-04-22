<?php 
	Class Contact extends MY_Controller{
		function index(){
			//truy cap vao model contact
			$this->load->model('contact_model');
			$contact_list = $this->contact_model->get_info(2);
			$this->data['contact_list'] = $contact_list;

			//truyen contact xuong view
			$this->data['temp'] = 'site/contact/index';
			$this->load->view('site/layout',$this->data);
		}
	}