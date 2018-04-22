<?php 
	Class News extends MY_Controller{
		function index(){

			//lay danh sach tin tức
			$this->load->model('news_model');
			$news_list = $this->news_model->get_list();
			$this->data['news_list'] = $news_list;

			$this->data['temp'] = 'site/news/index';
			$this->load->view('site/layout',$this->data);
		}
		function view(){
			//lay danh sach slide
			$this->load->model('slide_model');
			$slide_list = $this->slide_model->get_list();
			$this->data['slide_list'] = $slide_list;

			//lay danh sach tin tức
			$this->load->model('news_model');
			$news_list = $this->news_model->get_list();
			$this->data['news_list'] = $news_list;

			// lay id san pham muon xem
			$id = $this->uri->rsegment(3);
			$news = $this->news_model->get_info($id);
			if(!$news) redirect();
			$this->data['news'] = $news;
			//hien thi ra view
			$this->data['temp'] = 'site/news/view';
			$this->load->view('site/layout', $this->data);
		}
	}