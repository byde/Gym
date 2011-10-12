<script>
$(function(){
    $("#btn_imprimir").click(function (e){
        e.preventDefault();
        popup("imprimir",$(this).attr("href"));
    });
    $("#btn_pagar").click(function (e){
        e.preventDefault();
        popup("pagar",$(this).attr("href"));
    });
    $("#btn_foto").click(function (e){
        e.preventDefault();
        popup("foto",$(this).attr("href"));
    });
});
</script>
<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Usuario Registrado</h3>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
                                    
                                    <span class="green">Usuario Agregado Correctamente</span>
                                    <div class="row">
    	<label>ID: </label>
        <?php echo $c['idcliente'] ?>
    </div><div class="row">
    	<label>Nombre: </label>
        <?php echo $c['nombre'] ?>
    </div><div class="row">
    	<label>Apellidos: </label>
        <?php echo $c['apellidos'] ?>
    </div><div class="row">
    	<label>Telefono: </label>
        <?php echo $c['telefono1'] ?>
    </div>
    </div><div class="row">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo base_url(); ?>index.php/clientes/contrato/<?php echo $c['idcliente'] ?>" class="button green" id="btn_imprimir" >Imprimir Reglamento</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo base_url(); ?>index.php/clientes/pagar/<?php echo $c['idcliente'] ?>" class="button green" id="btn_pagar" >Realizar Pago</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo base_url(); ?>index.php/clientes/foto/<?php echo $c['idcliente'] ?>" class="button green" id="btn_foto" >Tomar fotograf&iacute;a</a>
        
    </div>
    </div>
    </div>