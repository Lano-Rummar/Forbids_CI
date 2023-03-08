<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitors extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct(){
        parent::__construct();
       	$this->load->model('visitors_model');         
    }

	public function add_visitors(){
		$obj = json_decode(file_get_contents('php://input', true));
		$arr = array();
		// $arr['country'] = $obj->country;
		// $arr['date'] = $obj->date;
		// $arr['device'] = $obj->device;
		// $arr['city'] = $obj->city;
		// $arr['visitor'] = $obj->visitor;
		$vid = $this->session->userdata('vid');
		if(!$vid){
			$arr['country'] = 'IND';
			$arr['date'] = '2018-10-09';
			$arr['tim'] = '02:11:13';
			$arr['device'] = 'Mobile';
			$arr['city'] = 'Mumbai';
			$arr['visitor'] = '1';
			$arr['count'] = 1;
			$id = $this->visitors_model->add_visitors($arr);
			$this->session->set_userdata('vid', $id);
		}else{
			$this->visitors_model->update_visitor($vid);
		}
		
	}

	public function remove_visitors(){
		$obj = json_decode(file_get_contents('php://input', true));
		//$v_id = $obj->id;
		$v_id = 2;
		$this->visitors_model->remove_visitors($v_id);
	}

	public function get_visitors(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09';
		$res = $this->visitors_model->get_visitors($from_date, $to_date);
		if(!empty($res)){
			foreach($res as $rr){
				$carr['id'] = $rr->id;
				$carr['country'] = $rr->country;
				$carr['date'] = $rr->date;
				$carr['device'] = $rr->device;
				$carr['city'] = $rr->city;
				$carr['tim'] = $rr->tim;
				$carr['visitor'] = $rr->visitor;
				$carr['count'] = $rr->count;
				array_push($parr, $carr);
			}
			echo json_encode($parr);
		}
	}

	public function get_visitors_by_country(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09'; $country = 'IND';
		$res = $this->visitors_model->get_visitors_by_country($from_date, $to_date, $country);
		if(!empty($res)){
			foreach($res as $rr){
				$carr['id'] = $rr->id;
				$carr['country'] = $rr->country;
				$carr['date'] = $rr->date;
				$carr['device'] = $rr->device;
				$carr['city'] = $rr->city;
				$carr['tim'] = $rr->tim;
				$carr['visitor'] = $rr->visitor;
				$carr['count'] = $rr->count;
				array_push($parr, $carr);
			}
			echo json_encode($parr);
		}
	}

	public function get_visitors_by_device(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09'; $device = 'Mobile';
		$res = $this->visitors_model->get_visitors_by_device($from_date, $to_date, $device);
		if(!empty($res)){
			foreach($res as $rr){
				$carr['id'] = $rr->id;
				$carr['country'] = $rr->country;
				$carr['date'] = $rr->date;
				$carr['device'] = $rr->device;
				$carr['city'] = $rr->city;
				$carr['tim'] = $rr->tim;
				$carr['visitor'] = $rr->visitor;
				$carr['count'] = $rr->count;
				array_push($parr, $carr);
			}
			echo json_encode($parr);
		}
	}

	public function get_visitors_count(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09';
		echo $res = $this->visitors_model->get_visitors_count($from_date, $to_date);
	}
	public function get_visitors_by_country_count(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09'; $country = 'IND';
		echo $res = $this->visitors_model->get_visitors_by_country_count($from_date, $to_date, $country);
	}

	public function get_visitors_by_device_count(){
		$parr = array(); $carr = array();
		$from_date = '2018-10-07'; $to_date = '2018-10-09'; $device = 'Mobile';
		echo $res = $this->visitors_model->get_visitors_by_device_count($from_date, $to_date, $device);
	}
}
