<?php
class Tarifas_model extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
	$this->load->database();
    }

    function get_tarifas (){
        $query = $this->db->get("tarifas");
        if ($query->num_rows() > 0)
                return $query->result_array();
        return false;
    }

    function get_tarifa_by_id ($id){
        $query = $this->db->get_where("tarifas", array("idtarifa" => $id));
        if ($query->num_rows() > 0)
                return $query->row_array();
        return false;
    }
    
    function set_pago_by_id($id)
    {
		$this->load->library('session');
        $q = "INSERT INTO pagos (idcliente, idtarifa, fecha, idusuario, veces) VALUES";
        foreach($_POST['tarifa'] as $t => $v):
            if ($v > 0)
            $q .= sprintf(" (%s, %s, NOW(), %s, %s),", 
                    $id, 
                    $t,
                    $this->session->userdata("idusuario"),
                    $v);
        endforeach;
        $q = substr ($q, 0, -1);
        $query = $this->db->query($q);
    }
    
    function get_pagado()
    {
        foreach($_POST['tarifa'] as $t => $v):
            if ($v > 0)
            {
                $ta = $this->get_tarifa_by_id($t);
                $r[] = array(
                    "cantidad" => $v,
                    "concepto" => $ta["tarifa"],
                    "monto" => $ta["precio"]*$v
                    );
            }
        endforeach;
        return $r;
    }
    function get_pagado_total()
    {
        $r=0;
        foreach($_POST['tarifa'] as $t => $v):
            if ($v > 0)
            {
                $ta = $this->get_tarifa_by_id($t);
                $r+=$ta["precio"]*$v;
            }
        endforeach;
        return $r;
    }
    
    function set_tiempo($id, $v)
    {
            $this->load->helper('date');
        $fecha_actual = strtotime(date("Y-m-d"));
        $fecha_vence = strtotime($v);
        $tipo = array ("month", "day", "week");
        if ($fecha_vence < $fecha_actual)
            $fecha = $fecha_actual;
        else
            $fecha = $fecha_vence;
        foreach($_POST['tarifa'] as $t => $v):
            if ($v > 0)
            {
                $ta = $this->get_tarifa_by_id($t);
                $mes = $dia = 0;
                if($ta['tipo'] == 0)
                    $mes = $v*$ta['tiempo'];
                else
                    $dia = $v*$ta['tiempo'];
                $fecha = mktime(0,0,0, date("m",$fecha)+$mes, date("d",$fecha)+$dia, date("Y", $fecha));
                //$fecha = strtotime(unix_to_human($fecha) ." +" . ($v*$ta['tiempo']) . " " . $tipo[$ta['tipo']]);
                //echo "<br>Fecha: " . unix_to_human(strtotime(unix_to_human($fecha) ." +" . $v . " " . $tipo[$ta['tipo']])) . " ";
            }
         
            //echo unix_to_human($fecha) . " " . $fecha;
        endforeach;
        
            $s = sprintf("UPDATE clientes SET vence = DATE('%s') WHERE idcliente = %s",date("Y-m-d", $fecha), $id);
            //echo $s;
        $this->db->query($s);
    }

}