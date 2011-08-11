<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Clientes extends CI_Controller {

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
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('login');
	}
	public function buscar()
	{
		$this->load->view('buscar');
	}
        
        public function registrar()
        {
            $this->load->model("clientes_model");
            $data['edocivil'] = $this->clientes_model->get_edocivil();
            $this->load->view("nuevo", $data);
        }
        
        public function busca($b)
	{
            $this->load->model('clientes_model');
            $data['clientes'] = $this->clientes_model->get_clientes_busqueda($b);
            $data['clientes_total'] = count($data['clientes']);
            if ($data['clientes'])
                $this->load->view('busqueda_resultado',$data);
            else
                echo "false";
        }
        
        function todos()
        {
            $this->load->model('clientes_model');
                $data['clientes'] = $this->clientes_model->get_clientes();
                $data['clientes_total'] = $this->clientes_model->get_clientes_total();
		$this->load->helper("url");
		$this->load->library('pagination');
		$config['base_url'] = base_url() . 'index.php/clientes';
		$config['total_rows'] = $data['clientes_total'];
		$config['per_page'] = '30';
		$config['cur_tag_open'] = '<a href="#" class="number current">';
		$config['cur_tag_close'] = '</a>';
		$config['anchor_class'] = " class=\"number\" ";

		$this->pagination->initialize($config);

		$data['paginas'] = $this->pagination->create_links();
                $this->load->view('todos',$data);
        }
        
        function agregar()
        {
            $this->load->model("clientes_model");
            $in = $this->clientes_model->set_cliente();
            if ($in) {
			$this->session->set_flashdata('alert', true);
			$this->session->set_flashdata('alertMsg', "Se registro al usuario correctamente. ");
			$this->session->set_flashdata('alertTitle', "USUARIO REGISTRADO");
		}
        }
        
        function agregado ()
        {
            $this->load->model("clientes_model");
            $data['c'] = $this->clientes_model->get_last_cliente();
            $this->load->view("registrado", $data);
        }
        
        function ver($id)
        {
            $this->load->model("clientes_model");
            $data["c"] = $this->clientes_model->get_cliente_by_id($id);
            $this->load->view("ficha", $data);
        }
        
        function contrato($id)
        {
            $this->load->model("clientes_model");
            $data["c"] = $this->clientes_model->get_cliente_by_id($id);
            $this->load->view("contrato", $data);
        }
        
        function foto($id)
        {
            session_start();
            $_SESSION['idcliente'] = $id;
            header("Location: " . base_url() . "foto.php");
        }
        
        function entrar($id)
        {
            $this->load->model("clientes_model");
            $this->clientes_model->set_entrada_by_id($id);
            $this->load->view("entro");
        }
        
        function pagar($id)
        {
            session_start();
            $_SESSION['pagar'] = $id;
            $this->load->model("tarifas_model");
            $data['tipo'] = array ("Mes", "D&iacute;a", "Semana");
            $data['tarifas'] = $this->tarifas_model->get_tarifas();
            $this->load->view("pagar", $data);
        }
        
        function pagar2()
        {
            
        session_start();
            $this->load->model("tarifas_model");
            $this->load->model("clientes_model");
            $this->tarifas_model->set_pago_by_id($_SESSION['pagar']);
            $v = $this->clientes_model->get_cliente_by_id($_SESSION['pagar']);
            $this->tarifas_model->set_tiempo($_SESSION['pagar'], $v['vence']);
            $data["c"] = $this->clientes_model->get_cliente_by_id($_SESSION['pagar']);
            $data["pa"] = $this->tarifas_model->get_pagado();
            $data["t"] = $this->tarifas_model->get_pagado_total();
            $this->load->view("recibo",$data);
        }
        
        function corte()
        {
            $this->load->model("usuarios_model");
            $data['usuarios'] = $this->usuarios_model->get_usuarios();
            $this->load->view("corte", $data);
        }
        
        function corteby($id)
        {
            $this->load->model("usuarios_model");
            $data['corte'] = $this->usuarios_model->get_pagos_by_usuario($id);
            $this->load->view("corteby", $data);
        }
	
        function modnota($idcliente)
        {
            $this->load->model("clientes_model");
            echo '<form id="formNota" action="' . base_url() . 'index.php/clientes/guardarnota/' . $idcliente . '">';
            echo '<textarea name="nota">' . $this->clientes_model->get_nota($idcliente) . '</textarea><br />';
            echo '<input type="submit" value="Guardar Nota" /></form>';
        }
        
        function guardarnota($idcliente) {
            
            $this->load->model("clientes_model");
            $this->clientes_model->set_nota($idcliente);
            echo$this->input->post("nota");
            echo '<br /><a href="' . base_url() . 'index.php/clientes/editnota/' . $idcliente . '" class="button" id="editnota">Editar Nota</a>';
        }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */