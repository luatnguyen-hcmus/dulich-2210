<?php 
	Class Cart extends MY_Controller{
		function __construct(){
			parent::__construct();
			
		}
		//phuong thuc them tour vao gio hang
		function add(){
			
			$this->load->model('tour_model');
			//lay id tour them vao gio hang
			$id = $this->uri->rsegment(3);
			$product = $this->tour_model->get_info($id);
			if(!$product){
				redirect();
			}
			//so luong tour
			$qty = 1;
			$price = $product->price;
			if($product->discount > 0){
				$price = $product->price - $product->discount;
			}

			
			//thong tin them vao gio hang
			$data = array();
			$data['id'] = $product->id;
			$data['qty'] = $qty;
			$data['name'] = url_title($product->name);
			$data['image_link'] = $product->image_link;
			$data['price'] = $price;
			$this->cart->destroy();
			$this->cart->insert($data);

			//chuyen san trang danh sach tour trong gio hang.
			redirect(base_url('cart'));
		}

		//hien thi ra danh sach sp trong gio hang.

		function index(){
			//thong tin gio hang
			$carts = $this->cart->contents();
			//tong so tour co trong gio hang.
			$total_items = $this->cart->total_items();

			$this->data['carts'] = $carts;
			$this->data['total_items'] = $total_items;


			if($total_items  <= 0){
					redirect(base_url());
				}

				//tong số tiền cấn thanh toán
				$total_amount = 0;
				foreach($carts as $row){
					$total_amount = $total_amount + $row['subtotal'];
				}
				$this->data['total_amount'] = $total_amount;
				
				//neu thanh vien da dang nhap thy lay thong tin cua thanh vien
				$user_id = 0;
				$user = '';
				if($this->session->userdata('user_id_login')){
					//lay thong tin cua thanh vien
					$user_id = $this->session->userdata('user_id_login');
					$user = $this->user_model->get_info($user_id);
				}
				$this->data['user'] = $user;

				$this->load->library('form_validation');
				$this->load->helper('form');
				if($this->input->post()){
					$this->form_validation->set_rules('Gender', 'Gender', 'required');
					$this->form_validation->set_rules('Email', 'Email customers', 'required|valid_email');
					$this->form_validation->set_rules('FullName', 'Name', 'required|min_length[8]');
					$this->form_validation->set_rules('agreed', 'Agreed ', 'required');

					if($this->form_validation->run()){
						if($this->input->post('agreed') == "on"){
							
							$data = array(
								'status'   => 0,//trang thai chưa thanh toán
								'user_id'  => $user_id, //id cua thành viên mua hàng nếu đã đăng nhập
								'user_email'    => $this->input->post('Email'),
								'user_name'     => $this->input->post('FullName'),
								'user_phone'    => $this->input->post('Tel'),
								'message'  => $this->input->post('Content'),//ghi chu khi mua hang
								'amount'   => $total_amount,//tổng tiền cần thanh toán
							);
							//them du lieu vao bang transaction
							$this->load->model('transaction_model');
							$this->transaction_model->create($data);
							$transaction_id = $this->db->insert_id(); //lay ra id cua giao dich vua them vao

							//them vao bang order
							$this->load->model('order_model');
							foreach($carts as $row){
								$data = array(
									'transaction_id' => $transaction_id,
									'product_id'     => $row['id'],
									'qty'     		 => $row['qty'],
									'amount'     	 => $row['subtotal'],
									'status'         => 0,	
								);
								$this->order_model->create($data);
							}

							////xu li gui mail cho khach hang

							//mai gui tin cho khach hang , khi khach hang chon mua tour do
						    $email = 'luatnguyen13ck4@gmail.com';
						    //mat khau cua email
						    $pass = 'mogkmzwrykexcduu';
						    //ten nguoi gui mail 
						    $name_email = 'luat nguyen';

						    //tao bien luu email khach hang  
						    $cus_email = $this->input->post('Email');

							

						    // $carts = $this->cart->contents();
							
							$price = "";
							$name = "";
							foreach($carts as $row){
								$name =  $row['name'];
								$price = $row['price'];
							}
							//tieu de mail
							$title_email = 'Check out successful !!';
							//noi dung mail
							$content = "Thank you for visiting the web, you just booked a successful tour named ".$name.", the total money of the trip is ".$price."USD";

							// echo $this->sendmail($email,$pass,$name_email,$cus_email,$content,$title_email);

							// die();
						    if($this->sendmail($email,$pass,$name_email,$cus_email,$content,$title_email) == 1){
						    	// echo "herre";
						    	// die();
						    	//xoa toan bo gio hang
			                	$this->cart->destroy();
			                	redirect(base_url('order/checkout'));
			                	//hien thi thong bao
				               	//$this->session->set_flashdata('message', 'Bạn Đã Đặt hàng thành công thành công !');
						    }else{
						    		echo "request don't";
						    		die();
						    }
							

						}
					}
			}
			$this->data['temp'] = 'site/cart/index';
			$this->load->view('site/layout', $this->data);
		}
        //cap nhat gio hang
        function update(){
            //thong tin gio hang
            $carts = $this->cart->contents();
            foreach ($carts as $key=>$row) {
                //tong so luong tour
                $total_qty = $this->input->post('qty_'.$row['id']);
                $data = array();
                $data['rowid'] = $key;
                $data['qty'] = $total_qty;
                $this->cart->update($data);
            }
            //chuyen san trang danh sach tour trong gio hang.
            redirect(base_url('cart'));
        }
        //xoa tour trong gio hang
        function del(){
            $id = $this->uri->rsegment(3);
            $id = intval($id);
            //truong hop xoa 1 sp nao do
            if($id > 0) {
                //thong tin gio hang
                $carts = $this->cart->contents();
                foreach ($carts as $key=>$row) {
                    if($row['id'] == $id){
                        //tong so luong tour
                        $data = array();
                        $data['rowid'] = $key;
                        $data['qty'] = 0;
                        $this->cart->update($data);
                     }
                }
                
            }else{
                //xoa toan bo gio hang
                $this->cart->destroy();
            }
            //chuyen san trang danh sach tour trong gio hang.
            redirect(base_url('cart'));
        }
	}