<?php 
	Class Slide extends MY_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('slide_model');
		}
		function index(){
			// lay tong so luong tat ca cac slide
			$total_rows = $this->slide_model->get_total();
			$this->data['total_rows'] = $total_rows;

			$input = array();
            
			// $catalog_id = $this->input->get('catalog');
			// $catalog_id = intval($catalog_id);
			// if($catalog_id > 0){
			// 	$input['where']['catalog_id'] = $catalog_id;
			// }

			//lay danh sach slide
			$list = $this->slide_model->get_list($input);
			$this->data['list'] = $list;

			// //lay danh muc slide
			// $this->load->model('catalog_model');
			// $input = array();
			// $input['where'] = array('parent_id'=>0);
			// $catalogs = $this->catalog_model->get_list($input);
			// foreach($catalogs as $row){
			// 	$input['where'] = array('parent_id'=>$row->id);
			// 	$subs = $this->catalog_model->get_list($input);
			// 	$row->subs = $subs;
			// }
			
			// $this->data['catalogs'] = $catalogs;

			//lay noi dung cua biên message
			$message = $this->session->flashdata('message');
			$this->data['message'] = $message;

			//load view
			$this->data['temp'] = 'admin/slide/index';
			$this->load->view('admin/main',$this->data);
		}
        // them slide moi
        function add(){

            $this->load->library('form_validation');
            $this->load->helper('form');
            if($this->input->post()){
                $this->form_validation->set_rules('name', 'Tên slide', 'required');

                if($this->form_validation->run()){

                    //lay ten file anh minh hoa duoc update len
                    $this->load->library('upload_library');
                    $upload_path = './upload/slide';
                    $upload_data = $this->upload_library->upload($upload_path, 'image');

                    $image_link = '';
                    if(isset($upload_data['file_name'])){
                        $image_link = $upload_data['file_name'];
                    }

                    $data = array(
                        'name'     => $this->input->post('name'),
                        'image_link'     => $image_link,
                        'link'      => $this->input->post('link'),
                        'info'  => $this->input->post('info'),
                        'sort_order'  => $this->input->post('sort_order'),
                    );
                    if($this->slide_model->create($data)){
                        $this->session->set_flashdata('message', 'Thêm mới dữ liệu thành công !');
                    }else{
                        $this->session->set_flashdata('message', 'Không thêm được !');
                    }
                    redirect(admin_url('slide'));
                }
            }
            //load view
            $this->data['temp'] = 'admin/slide/add';
            $this->load->view('admin/main',$this->data);
        }

        // sua slide
        function edit(){

            $id = $this->uri->rsegment('3');
            $slide = $this->slide_model->get_info($id);
            if(!$slide){
                $this->session->set_flashdata('message', 'Không tồn tại slide có mã này !');
                redirect(admin_url('slide'));
            }
            $this->data['slide'] = $slide;

            $this->load->library('form_validation');
            $this->load->helper('form');
            if($this->input->post()){
               $this->form_validation->set_rules('name', 'Tên slide', 'required');

                if($this->form_validation->run()){
                    $this->load->library('upload_library');
                    $upload_path = './upload/slide';
                    $upload_data = $this->upload_library->upload($upload_path, 'image');

                    $image_link = '';
                    if(isset($upload_data['file_name'])){
                        $image_link = $upload_data['file_name'];
                    }

                   $data = array(
                        'name'     => $this->input->post('name'),
                        'link'      => $this->input->post('link'),
                        'info'  => $this->input->post('info'),
                        'sort_order'  => $this->input->post('sort_order'),
                    );
                    if($image_link != ""){
                        $data['image_link']     = $image_link;
                    }
                    if($this->slide_model->update($slide->id, $data)){
                        $this->session->set_flashdata('message', 'Chỉnh sửa thành công !');
                    }else{
                        $this->session->set_flashdata('message', 'Không sửa được !');
                    }
                    redirect(admin_url('slide'));
                }
            }
            //load view
            $this->data['temp'] = 'admin/slide/edit';
            $this->load->view('admin/main',$this->data);
        }
        function delete(){
            $id = $this->uri->rsegment(3);
            $this->_del_id($id);
            $this->session->set_flashdata('message', 'Xóa thành công !');
            redirect(admin_url('slide'));
        }
        //xoa nhieu  slide
        function del_all(){
            $ids = $this->input->post('ids');
            foreach($ids as $id){
                $this->_del_id($id);
            }
        }
        private function _del_id($id){
            $slide = $this->slide_model->get_info($id);
            if(!$slide){
                $this->session->set_flashdata('message', 'Không tồn tại slide này !');
                redirect(admin_url('slide'));
            }
            //thuc hien xoa slide
            $this->slide_model->delete($id);
            //xoa cac anh cua slide.
            $image_link = './upload/slide/'.$slide->image_link; 
            if(file_exists($image_link)){
                unlink($image_link);
            }
            //xoa cac anh kem theo cua slide
            // $image_list = json_decode($slide->image_list);
            // if(is_array($image_list)){
            //     foreach ($image_list as $img) {
            //         $image_link = './upload/slide/'.$img; 
            //         if(file_exists($image_link)){
            //             unlink($image_link);
            //         }
            //     }
            // }


        }
	}