<?php
class Clientes_model extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
	$this->load->database();
    }

    function get_clientes (){
        $query = $this->db->get("clientes");
        if ($query->num_rows() > 0)
                return $query->result_array();
        return false;
    }

    function get_clientes_busqueda ($b){
        $b = urldecode($b);
      $palabras = explode(" ", $b);
        $bus = sprintf(" WHERE (telefono1 like '%s')", 
                "%" . $b . "%");
        foreach($palabras as $p) :
            $bus .= sprintf(" OR (CONCAT(nombre, ' ', apellidos) like '%s')", 
                    "%" . $p . "%");
        endforeach;

   
        //$bus = sprintf(" WHERE MATCH (nombre, apellidos, telefono1) AGAINST ('%s')", $b);
        $sql = sprintf("SELECT * FROM clientes %s LIMIT 0,30", $bus);
        $query = $this->db->query($sql);
        if ($query->num_rows() > 0)
            return $query->result_array();
        return false;
    }
    
    function get_cliente_by_id($id)
    {
            $this->load->helper('date');
        $query = $this->db->get_where("clientes", array("idcliente" => $id));
        if ($query->num_rows() > 0) {
                $c = $query->row_array();
                if ($c['fecnac'] == "" || is_null($c['fecnac']))
                    $c['fecnac'] = "No especificado";
                else
                    $c['fecnac'] = mdate("%d-%m-%Y",mysql_to_unix($c['fecnac']));
                    $c['fecnac2'] = $c['fecnac'];
                $c['sexo'] = ($c['sexo'] == 0) ? "Masculino" : "Femenino";
                $c['ocupacion'] = ($c['ocupacion'] == "" || is_null($c['ocupacion'])) ? "No especificado" : $c['ocupacion'];
                $c['direccion'] = ($c['direccion'] == "" || is_null($c['direccion'])) ? "No especificado" : $c['direccion'];
                $c['colonia'] = ($c['colonia'] == "" || is_null($c['colonia'])) ? "No especificada" : $c['colonia'];
                $c['cp'] = ($c['cp'] == "" || is_null($c['cp'])) ? "No especificado" : $c['cp'];
                $c['ciudad'] = ($c['ciudad'] == "" || is_null($c['ciudad'])) ? "No especificada" : $c['ciudad'];
                $c['estado'] = ($c['estado'] == "" || is_null($c['estado'])) ? "No especificado" : $c['estado'];
                $c['telefono1'] = ($c['telefono1'] == "" || is_null($c['telefono1'])) ? "No especificado" : $c['telefono1'];
                $c['telefono2'] = ($c['telefono2'] == "" || is_null($c['telefono2'])) ? "" : $c['telefono2'];
                $c['email'] = ($c['email'] == "" || is_null($c['email'])) ? "No especificado" : $c['email'];
                $c['enfermedad'] = ($c['enfermedad'] == "" || is_null($c['enfermedad'])) ? "No especificado" : $c['enfermedad'];
                $c['avisar'] = ($c['avisar'] == "" || is_null($c['avisar'])) ? "No especificado" : $c['avisar'];
                $c['aviparen'] = ($c['aviparen'] == "" || is_null($c['aviparen'])) ? "No especificado" : $c['aviparen'];
                $c['avidom'] = ($c['avidom'] == "" || is_null($c['avidom'])) ? "No especificado" : $c['avidom'];
                $c['avitel'] = ($c['avitel'] == "" || is_null($c['avitel'])) ? "No especificado" : $c['avitel'];
                $c['vence'] = ($c['vence'] == "" || is_null($c['vence'])) ? null : $c['vence'];
                
                return $c;
        }
        return false;
    }

	function get_clientes_total (){
		$query = $this->db->get("clientes");
		return $query->num_rows();
	}

	function set_cliente()
	{
//var_dump($data);
            $this->db->set($this->input->post());
            $this->db->set("fecreg", "DATE(NOW())", FALSE);
            $this->db->set("vence", "DATE('" . date("%Y-%m-%d",strtotime( '-1 days' )) . "')", FALSE);
            $this->db->insert('clientes');
            if ($this->db->affected_rows() > 0)
                    return true;
            return false;
	}

        function get_nota($id)
        {
            $q = sprintf("SELECT nota FROM clientes WHERE idcliente = %s", $id);
            $query = $this->db->query($q);
            $row = $query->row_array();
            return $row['nota'];
        }

        function get_edocivil()
        {
            $query = $this->db->get("edocivil");
            if ($query->num_rows() > 0)
                    return $query->result_array();
            return false;
        }
        
        function get_last_cliente()
        {
            $this->db->order_by("idcliente", "desc");
            $this->db->limit(1);
            
            $q = $this->db->get("clientes");
            
            if ($q->num_rows() > 0)
                return $q->row_array();
            return false;
        }
        
        function set_entrada_by_id($id)
        {
            $s = sprintf("INSERT INTO entradas (idcliente, tiempo) VALUES (%s, NOW())", $id);
            $this->db->query($s);
            if ($this->db->affected_rows() > 0)
                    return true;
            return false;
        }
        
        function set_nota($id)
        {
            $this->db->where('idcliente', $id);
            $this->db->update('clientes', $this->input->post()); 
        }
        
        function set_vence($id)
        {
            $this->db->where('idcliente', $id);
            $this->db->update('clientes', $this->input->post()); 
        }
        

        function get_vence($id)
        {
            $q = sprintf("SELECT vence FROM clientes WHERE idcliente = %s", $id);
            $query = $this->db->query($q);
            $row = $query->row_array();
            return $row;
        }
        
	function set_cliente_by_id($idcliente)
	{
//var_dump($data);
            $this->db->set($this->input->post());
            $this->db->where("idcliente", $idcliente);
            $this->db->update('clientes');
            if ($this->db->affected_rows() > 0)
                    return true;
            return false;
	}

/*
	function set_consultorio_by_id($id)
	{
			$data = array(
               'nombre' => $this->input->post("nombre")
            );
		$this->db->where('idconsultorio =', $id);
		$this->db->update('consultorios', $data);
		if ($this->db->affected_rows() > 0)
			return true;
		return false;
		//$q = sprintf("INSERT INTO usuarios (nombre, apellidos, user, pass, idperfil)");
	}
 *
 */
}