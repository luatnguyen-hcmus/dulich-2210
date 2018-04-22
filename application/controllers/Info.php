<?php 
	Class Info extends MY_Controller{
		function index(){
			//lay danh sach slide
			$this->load->model('info_model');
			$info_list = $this->info_model->get_info(1);
			$this->data['info_list'] = $info_list;

			//truyen xuong view
			$this->data['temp'] = 'site/info/index';
			$this->load->view('site/layout',$this->data);
		}
	}