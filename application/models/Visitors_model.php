<?php
class Visitors_model extends CI_Model{
    public function __construct(){
		parent::__construct();
	}
 	

	public function add_visitors($arr){
		$this->db->insert('visitors', $arr);
		return $this->db->insert_id();
	}

	public function update_visitor($id){
		$this->db->where('id', $id);
		$this->db->set('count', 'count+1', FALSE);
		$this->db->update('visitors');
	}

	public function remove_visitors($id){
		$this->db->where('id', $id);
		$this->db->delete('visitors');
	}

	public function get_visitors($from, $to){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$res = $this->db->get('visitors');
		if($r = $res->result()){
			return $r;
		}
	}

	public function get_visitors_count($from, $to){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$res = $this->db->get('visitors')->num_rows();
		return $res;
	}

	public function get_visitors_by_country($from, $to, $country){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$this->db->where('country', $country);
		$res = $this->db->get('visitors');
		if($r = $res->result()){
			return $r;
		}
	}

	public function get_visitors_by_device($from, $to, $device){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$this->db->where('device', $device);
		$res = $this->db->get('visitors');
		if($r = $res->result()){
			return $r;
		}
	}

	public function get_visitors_by_country_count($from, $to, $country){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$this->db->where('country', $country);
		$res = $this->db->get('visitors')->num_rows();
		return $res;
	}

	public function get_visitors_by_device_count($from, $to, $device){
		$this->db->where('date >=', $from);
		$this->db->where('date <=', $to);
		$this->db->where('device', $device);
		$res = $this->db->get('visitors')->num_rows();
		return $res;
	}
}
?>