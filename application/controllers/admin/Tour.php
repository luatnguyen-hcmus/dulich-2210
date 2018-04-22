<?php 
	Class Tour extends MY_Controller{
		function __construct(){
			parent::__construct();
			$this->load->model('tour_model');
		}
		function index(){
			// lay tong so luong tat ca cac san pham 
			$total_rows = $this->tour_model->get_total();
			$this->data['total_rows'] = $total_rows;
			//load thu vien phan trang
			$this->load->library('pagination');
			$config = array();
			$config['total_rows'] = $total_rows;//tong tat ca cac san pham
			$config['base_url'] = admin_url('tour/index');
			$config['per_page'] = 5;//so luong hien thi tren 1 trang
			$config['uri_segment'] = 4;// pha doan hien thi ra so trang tren url
			$config['next_link'] = 'next';
			$config['prev_link'] = 'prev';
			//khoi tao phan trang
			$this->pagination->initialize($config);

			$segment = $this->uri->segment(4);
			$segment = intval($segment);

			$input = array();
			$input['limit'] = array($config['per_page'], $segment);
			//kiem tra co thuc hien loc du lieeu hay khong
			$id = $this->input->get('id');
			$id = intval($id);
			$input['where'] = array();
			if($id > 0){
				$input['where']['id'] = $id;
			}
			$name = $this->input->get('name');
			if($name){
				$input['like'] = array('name', $name);
			}
			$catalog_id = $this->input->get('catalog');
			$catalog_id = intval($catalog_id);
			if($catalog_id > 0){
				$input['where']['catalog_id'] = $catalog_id;
			}

			//lay danh sach san pham
			$list = $this->tour_model->get_list($input);
			$this->data['list'] = $list;

			//lay danh muc san pham
			$this->load->model('catalog_model');
			$input = array();
			$input['where'] = array('parent_id'=>0);
			$catalogs = $this->catalog_model->get_list($input);
			foreach($catalogs as $row){
				$input['where'] = array('parent_id'=>$row->id);
				$subs = $this->catalog_model->get_list($input);
				$row->subs = $subs;
			}
			
			$this->data['catalogs'] = $catalogs;

			//lay noi dung cua biên message
			$message = $this->session->flashdata('message');
			$this->data['message'] = $message;

			//load view
			$this->data['temp'] = 'admin/tour/index';
			$this->load->view('admin/main',$this->data);
		}
        // them sp moi
        function add(){
            //lay danh muc san pham
            $this->load->model('catalog_model');
            $input = array();
            $input['where'] = array('parent_id'=>0);
            $catalogs = $this->catalog_model->get_list($input);
            foreach($catalogs as $row){
                $input['where'] = array('parent_id'=>$row->id);
                $subs = $this->catalog_model->get_list($input);
                $row->subs = $subs;
            }
            $this->data['catalogs'] = $catalogs;

            $this->load->library('form_validation');
            $this->load->helper('form');

            if($this->input->post()){

                //lay ten file anh minh hoa duoc update len
                    $this->load->library('upload_library');
                    $upload_path = './upload/tour';
                    $upload_data = $this->upload_library->upload($upload_path, 'image');

                    if(!isset($upload_data['file_name'])){
                        $this->form_validation->set_rules('image', 'Image', 'required');
                    }


                $this->form_validation->set_rules('name', 'Name', 'required');
                $this->form_validation->set_rules('catalog', 'Category', 'required');
                $this->form_validation->set_rules('price', 'Price', 'required');

                if($this->form_validation->run()){
                    $name = $this->input->post('name');
                    $catalog_id = $this->input->post('catalog');
                    $price = $this->input->post('price');
                    $price = str_replace(',', '', $price);

                    $discount = $this->input->post('discount');
                    $discount = str_replace(',', '', $discount);

                    //lay ten file anh minh hoa duoc update len
                    $this->load->library('upload_library');
                    $upload_path = './upload/tour';
                    $upload_data = $this->upload_library->upload($upload_path, 'image');


                    $image_link = '';
                    if(isset($upload_data['file_name'])){
                        $image_link = $upload_data['file_name'];
                    }
                    
                    //up load cac anh kem theo
                    $image_list = array();
                    $image_list = $this->upload_library->upload_file($upload_path, 'image_list');
                    $image_list = json_encode($image_list);

                    $data = array(
                        'name'     => $name,
                        'catalog_id' => $catalog_id,
                        'price'     => $price,
                        'image_link'     => $image_link,
                        'image_list'     => $image_list,
                        'discount'    => $discount,
                        'itinerary'       => $this->input->post('itinerary'),
                        'site_title'  => $this->input->post('site_title'),
                        'meta_desc'  => $this->input->post('meta_desc'),
                        'meta_key'  => $this->input->post('meta_key'),
                        'content'  => $this->input->post('content'),
                    );
                    if($this->tour_model->create($data)){
                        $this->session->set_flashdata('message', 'Add success !');
                    }else{
                        $this->session->set_flashdata('message', 'Add failed !');
                    }
                    redirect(admin_url('tour'));
                }
            }
            //load view
            $this->data['temp'] = 'admin/tour/add';
            $this->load->view('admin/main',$this->data);
        }

        // sua san pham
        function edit(){

            $id = $this->uri->rsegment('3');
            $product = $this->tour_model->get_info($id);

            
            if(!$product){
                $this->session->set_flashdata('message', "This don't have exist tour !");
                redirect(admin_url('tour'));
            }
            $this->data['product'] = $product;
            
            //lay danh muc san pham
            $this->load->model('catalog_model');
            $input = array();
            $input['where'] = array('parent_id'=>0);
            $catalogs = $this->catalog_model->get_list($input);
            foreach($catalogs as $row){
                $input['where'] = array('parent_id'=>$row->id);
                $subs = $this->catalog_model->get_list($input);
                $row->subs = $subs;
            }
            $this->data['catalogs'] = $catalogs;

            $this->load->library('form_validation');
            $this->load->helper('form');
            if($this->input->post()){

                $this->form_validation->set_rules('name', 'Name', 'required');
                $this->form_validation->set_rules('catalog', 'Category', 'required');
                $this->form_validation->set_rules('price', 'Price', 'required');

                if($this->form_validation->run()){
                    $name = $this->input->post('name');
                    $catalog_id = $this->input->post('catalog');
                    $price = $this->input->post('price');
                    $price = str_replace(',', '', $price);

                    $discount = $this->input->post('discount');
                    $discount = str_replace(',', '', $discount);
                    //lay ten file anh minh hoa duoc update len
                    $this->load->library('upload_library');
                    $upload_path = './upload/tour';
                    $upload_data = $this->upload_library->upload($upload_path, 'image');

                    $image_link = '';
                    if(isset($upload_data['file_name'])){
                        $image_link = $upload_data['file_name'];
                    }
                    
                    //up load cac anh kem theo
                    $image_list = array();
                    $image_list = $this->upload_library->upload_file($upload_path, 'image_list');
                    $image_list_json = json_encode($image_list);

                    $data = array(
                        'name'     => $name,
                        'catalog_id' => $catalog_id,
                        'price'     => $price,
                        'discount'    => $discount,
                        'Itinerary'       => $this->input->post('itinerary'),
                        'site_title'  => $this->input->post('site_title'),
                        'meta_desc'  => $this->input->post('meta_desc'),
                        'meta_key'  => $this->input->post('meta_key'),
                        'content'  => $this->input->post('content'),
                        'created'   => now(),
                    );
                    if($image_link != ""){
                        $data['image_link']     = $image_link;
                    }
                    if(!empty($image_list)){
                        $data['image_list'] = $image_list_json;
                    }
                    if($this->tour_model->update($product->id, $data)){
                        $this->session->set_flashdata('message', 'Edit success !');
                    }else{
                        $this->session->set_flashdata('message', 'Edit failed !');
                    }
                    redirect(admin_url('tour'));
                }
            }
            //load view
            $this->data['temp'] = 'admin/tour/edit';
            $this->load->view('admin/main',$this->data);
        }
        function delete(){
            $id = $this->uri->rsegment(3);
            $this->_del_id($id);
            $this->session->set_flashdata('message', 'Xóa thành công !');
            redirect(admin_url('tour'));
        }
        //xoa nhieu  san pham
        function del_all(){
            $ids = $this->input->post('ids');
            foreach($ids as $id){
                $this->_del_id($id);
            }
        }
        private function _del_id($id){
            $product = $this->tour_model->get_info($id);
            if(!$product){
                $this->session->set_flashdata('message', 'Không tồn tại sản phẩm này !');
                redirect(admin_url('tour'));
            }
            //thuc hien xoa san pham
            $this->tour_model->delete($id);
            //xoa cac anh cua san pham.
            $image_link = './upload/tour/'.$product->image_link; 
            if(file_exists($image_link)){
                unlink($image_link);
            }
            //xoa cac anh kem theo cua san pham
            $image_list = json_decode($product->image_list);
            if(is_array($image_list)){
                foreach ($image_list as $img) {
                    $image_link = './upload/tour/'.$img; 
                    if(file_exists($image_link)){
                        unlink($image_link);
                    }
                }
            }


        }
	}