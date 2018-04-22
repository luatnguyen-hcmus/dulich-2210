<?php 
	Class Menu extends MY_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('menu_model');
		}
		function index(){
			$list = $this->menu_model->get_list();
			$this->data['list'] = $list;

			$message = $this->session->flashdata('message');
			$this->data['message'] = $message;

			$this->data['temp'] = 'admin/menu/index';
			$this->load->view('admin/main', $this->data);
		}
		function add(){
			$this->load->library('form_validation');
			$this->load->helper('form');
			if($this->input->post()){
				$this->form_validation->set_rules('name', 'Name', 'required');

				if($this->form_validation->run()){
					$name = $this->input->post('name');
					$url = $this->input->post('url');
					$sort_order = $this->input->post('sort_order');
					$data = array(
						'title'     => $name,
						'url' => $url,
						'sort_order' => intval($sort_order)
					);
					if($this->menu_model->create($data)){
						$this->session->set_flashdata('message', 'Add Success !');
					}else{
						$this->session->set_flashdata('message', 'Add failed !');
					}
					redirect(admin_url('menu'));
				}
			}

			
			$list = $this->menu_model->get_list();
			$this->data['list'] = $list;

			$this->data['temp'] = 'admin/menu/add';
			$this->load->view('admin/main',$this->data);
		}
		function edit(){
			$this->load->library('form_validation');
			$this->load->helper('form');

			$id = $this->uri->rsegment(3);
			$info = $this->menu_model->get_info($id);

			if(!$info){
				$this->session->set_flashdata('message', "This don't have Menu!");
				redirect(admin_url('menu'));
			}
			$this->data['info'] = $info;

			if($this->input->post()){
				$this->form_validation->set_rules('name', 'Title', 'required');

				if($this->form_validation->run()){
					$name = $this->input->post('name');
					$url = $this->input->post('url');
					$sort_order = $this->input->post('sort_order');
					$data = array(
						'title'     => $name,
						'url' => $url,
						'sort_order' => intval($sort_order)
					);
					if($this->menu_model->update($id, $data)){
						$this->session->set_flashdata('message', 'Update Success !');
					}else{
						$this->session->set_flashdata('message', 'Update failed !');
					}
					redirect(admin_url('menu'));
				}
			}

			
			$list = $this->menu_model->get_list();
			$this->data['list'] = $list;

			$this->data['temp'] = 'admin/menu/edit';
			$this->load->view('admin/main',$this->data);
		}
		function delete(){
			$id = $this->uri->rsegment(3);
			$this->_del($id);
			$this->session->set_flashdata('message', 'Delete success Identify '.$id);
			redirect(admin_url('menu'));
		} 
		//xoa nhieu danh muc san pham
		function del_all(){
			$ids = $this->input->post('ids');
			foreach($ids as $id){
				$this->_del($id, false);
			}

		}
		//thuc hien xoa
		private function _del($id, $redirect = true){
			$info = $this->menu_model->get_info($id);

			if(!$info){
				$this->session->set_flashdata('message', "This don't have menu !");
				if($redirect){
					redirect(admin_url('menu'));
				}else{
					return false;
				}
			} 

			$this->menu_model->delete($id);
		}
	}