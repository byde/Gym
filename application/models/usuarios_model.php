<?php
class Usuarios_model extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
		$this->load->database();
    }

	function get_usuarios (){
		$query = $this->db->get('usuarios');
		if ($query->num_rows() > 0)
			return $query->result_array();
		return false;
	}
	
	function get_usuario_by_id($id)
	{
		$this->db->where('idusuario =', $id);
		$query = $this->db->get('usuarios');
		if ($query->num_rows() > 0)
			return $query->row_array();
		return false;
	}

	function get_total_usuarios (){
		$q = "SELECT u.* FROM usuarios u";
		$query = $this->db->query($q);
		return $query->num_rows();
	}

	function get_perfiles (){
		$q = "SELECT * FROM perfiles";
		$query = $this->db->query($q);
		if ($query->num_rows() > 0)
			return $query->result_array();
		return false;
	}

	function set_usuario()
	{
		$data = array(
               'nombre' => $this->input->post("nombre"),
               'apellidos' => $this->input->post("apellidos"),
               'user' => $this->input->post("usuario"),
               'pass' => md5($this->input->post("pass")),
               'idperfil' => $this->input->post("perfil"),
               'activo' => 1
            );

		$this->db->insert('usuarios', $data);
		if ($this->db->affected_rows() > 0)
			return true;
		return false;
		//$q = sprintf("INSERT INTO usuarios (nombre, apellidos, user, pass, idperfil)");
	}

	function set_usuario_by_id($id)
	{
		if ($this->input->post("pass")){
			$data = array(
               'nombre' => $this->input->post("nombre"),
               'apellidos' => $this->input->post("apellidos"),
               'user' => $this->input->post("usuario"),
               'pass' => md5($this->input->post("pass")),
               'idperfil' => $this->input->post("perfil")
            );
		}else{
			$data = array(
               'nombre' => $this->input->post("nombre"),
               'apellidos' => $this->input->post("apellidos"),
               'user' => $this->input->post("usuario"),
               'idperfil' => $this->input->post("perfil")
            );
		}
		$this->db->where('idusuario =', $id);
		$this->db->update('usuarios', $data);
		if ($this->db->affected_rows() > 0)
			return true;
		return false;
		//$q = sprintf("INSERT INTO usuarios (nombre, apellidos, user, pass, idperfil)");
	}
	
	function activar_usuario_by_id($id,$activo)
	{
		$data = ($activo == 0) ? array('activo' => 1) : array('activo' => 0);
		$this->db->where('idusuario =', $id);
		$this->db->update('usuarios', $data);
	}
        
        function get_pagos_by_usuario($id)
        {
            $q = sprintf("SELECT p.*, (t.precio * p.veces) as monto, t.tarifa FROM pagos p JOIN tarifas t ON p.idtarifa = t.idtarifa WHERE p.idusuario = %s AND DATE(p.fecha) = DATE(NOW())", $id);
            $query = $this->db->query($q);
		if ($query->num_rows() > 0)
			return $query->result_array();
		return array(array("tarifa" => "no hay resultados", "monto" => 0));
        }
}