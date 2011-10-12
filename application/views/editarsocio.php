<script type="ttext/javascript" src="<?php echo base_url(); ?>js/jquery.ui.datepicker-es.js"></script>
<script>
$(function(){
    jQuery(function($){
	$.datepicker.regional['es'] = {
		closeText: 'Cerrar',
		prevText: '&#x3c;Ant',
		nextText: 'Sig&#x3e;',
		currentText: 'Hoy',
		monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio',
		'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
		monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun',
		'Jul','Ago','Sep','Oct','Nov','Dic'],
		dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;bado'],
		dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
		dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
		weekHeader: 'Sm',
		dateFormat: 'dd-mm-yy',
                altField: '#fecnac',
                altFormat: 'yy-mm-dd',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['es']);
});
	$("#nombre").focus();
	$("#formNuevo").submit( function(e){
		e.preventDefault();
                var re= true;
                if($("#nombre").val().length < 4)
                    re = false;
                if($("#apellidos").val().length < 4)
                    re = false;
                if (!re)
                    alert("Es necesario ingresar Nombre y Apellidos");
                else {
                    $.ajax({
                            type: 'POST',
                            url: $("#formNuevo").attr('action'),
                            data: $("#formNuevo").serialize(),
                            success: function(){
                                $("#dia_ficha").html($("<img />").attr("src", "images/ajax-loader.gif"));
                                $("#dia_ficha").load("index.php/clientes/ver/<?php echo $cliente["idcliente"] ?>");
                                    $("#dia_editar").dialog("close");
                                    $("#dia_editar").empty();
                            }
                    });
                }
	});
        $( "#fecnac2" ).datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1910:2011'
        });
        
        $("body").isLogged();
});
</script>
<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Editar Socio</h3>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
<form method="post" id="formNuevo" action="index.php/clientes/editar/<?php echo $cliente["idcliente"] ?>">
<div style="display:table">
    <div style="display:table-cell; padding:5px; vertical-align:top">
    <div class="row">
    	<label for="nombre">Nombre</label>
        <input size="35" title="Nombre" id="nombre" name="nombre" type="text" value="<?php echo $cliente["nombre"] ?>" />
    </div>
    <div class="row">
    	<label for="apellidos">Apellidos</label>
        <input size="35" title="Apellidos" id="apellidos" name="apellidos" type="text" value="<?php echo $cliente["apellidos"] ?>" />
    </div>
    <div class="row">
    	<label for="fecnac">Fecha Nacimiento</label>
        <input size="35" title="Nacimiento" id="fecnac2" type="text"  value="<?php echo $cliente["fecnac"] ?>" />
        <input id="fecnac" name="fecnac" type="hidden" value="<?php echo $cliente["fecnac2"] ?>" />
    </div>
    <div class="row">
    	<label for="edocivil">Estado Civil</label>
        <select title="Estado Civil" id="edocivil" name="edocivil">
            <?php foreach($edocivil as $edo): ?>
            <option value="<?php echo $edo['idedocivil']; ?>" <?php echo ($cliente["edocivil"] == $edo['idedocivil']) ? "selected" : ""; ?>><?php echo $edo['edocivil']; ?></option>
           <?php endforeach; ?>
        </select>
    </div>
    <div class="row">
        <label>Sexo:</label>
        <label for="sm"><input value="0" title="Masculino" <?php echo ($cliente["edocivil"] == 0) ? "checked=\"checked\"" :""; ?> id="sm" name="sexo" type="radio" />
        Masculino</label> 
        <label for="sf"><input value="1" title="Femenino" <?php echo ($cliente["edocivil"] == 1) ? "checked=\"checked\"" :""; ?> id="sf" name="sexo" type="radio" />
        Femenino</label>
    </div>
    <div class="row">
        <label for="medgen">M&eacute;dico General</label>
        <input size="35" title="Medico General" id="medgen" name="medgen" type="text" value="<?php echo $cliente["medgen"] ?>" />
    </div>
    <div class="row">
    	<label for="ocupacion">Ocupación</label>
        <input size="35" title="Ocupacion" id="ocupacion" name="ocupacion" type="text" value="<?php echo $cliente["ocupacion"] ?>" />
    </div>
    <div class="row">
        <label for="direccion">Direcci&oacute;n</label>
        <textarea size="35" title="Direccion" id="direccion" name="direccion"><?php echo $cliente["direccion"] ?></textarea>
    </div>
    <div class="row">
    	<label for="colonia">Colonia</label>
        <input size="35" title="Colonia" id="colonia" name="colonia" type="text" value="<?php echo $cliente["colonia"] ?>" />
    </div>
    <div class="row">
        <br />
        <input type="submit" value="Editar" class="green button large-input" />
    </div>
    </div>
    <div style="display:table-cell; padding:5px; vertical-align:top">
    <div class="row">
    	<label for="ciudad">Ciudad</label>
        <input size="35" title="Ciudad" id="ciudad" name="ciudad" type="text" value="<?php echo $cliente["ciudad"] ?>" />
    </div>
    <div class="row">
    	<label for="estado">Estado</label>
        <input size="35" title="Estado" id="estado" name="estado" type="text" value="<?php echo $cliente["estado"] ?>" />
    </div>
    <div class="row">
        <label for="telefono">Tel&eacute;fono 1</label>
        <input size="35" title="Telefono" id="telefono" name="telefono1" type="text" value="<?php echo $cliente["telefono1"] ?>" />
    </div>
    <div class="row">
    	<label for="telefono2">Teléfono 2</label>
        <input size="35" title="Telefono" id="telefono2" name="telefono2" type="text" value="<?php echo $cliente["telefono2"] ?>" />
    </div>
    <div class="row">
    	<label for="email">Email</label>
        <input size="35" title="Email" id="email" name="email" type="text" value="<?php echo $cliente["email"] ?>" />
    </div>
    <div class="row">
    	<label for="nota">Nota</label>
        <textarea name="nota" id="nota" cols="25" rows="2"><?php echo $cliente["nota"] ?></textarea>
    </div>
    <div class="row">
    	<label for="avisar">En caso de accidente avisar a:</label>
        <input size="35" title="avisar" id="avisar" name="avisar" type="text" value="<?php echo $cliente["avisar"] ?>" />
    </div>
    <div class="row">
    	<label for="aviparen">Parentesco:</label>
        <input size="35" title="parentesco" id="avisara" name="aviparen" type="text" value="<?php echo $cliente["aviparen"] ?>" />
    </div>
    <div class="row">
    	<label for="avitel">Telefono:</label>
        <input size="35" title="Telefono" id="avitel" name="avitel" type="text" value="<?php echo $cliente["avitel"] ?>" />
    </div>
    <div class="row">
    	<label for="avidom">Domicilio:</label>
        <input size="35" title="Domicilio" id="avidom" name="avidom" type="text" value="<?php echo $cliente["avidom"] ?>" />
    </div>
    <div class="row">
        <label for="enfermedad">&iquest;Padece alg&uacute;n tipo de enfermedad, cirug&iacute;as, fracturas?::</label>
        
        <textarea name="enfermedad" id="enfermedad" cols="25" rows="2"><?php echo $cliente["enfermedad"] ?></textarea>
    </div>
    
    </div>
    </div>
</div>
</form>