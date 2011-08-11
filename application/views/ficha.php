<script>
$(function(){
    $(".btn").click(function(e){
        e.preventDefault();
        popup("pagar",$(this).attr("href"));
    });
    
    $("#editnota").live('click', function(e){
        e.preventDefault();
        $.ajax({
              url: "<?php echo base_url(); ?>index.php/clientes/modnota/<?php echo $c['idcliente'] ?>",
              context: document.body,
              success: function(data){
                    $("#campoNota").empty();
                    $("#campoNota").html(data);
              }
        });
    });
    
    $("#formNota").live("submit", function(e){
        e.preventDefault();
        
        $.ajax({
              url: $("#formNota").attr("action"),
              context: document.body,
                    type: "POST",
                    data: $("#formNota").serialize(),
              success: function(data){
                    $("#campoNota").empty();
                    $("#campoNota").html(data);
              }
        });
    });
});
</script>
<table width="650px" cellspacing="3" >
            <tr>
                <td rowspan="20"><img src="<?php echo base_url(); ?>fotos/<?php echo $c['idcliente'] ?>.jpg" width="250px" /></td>
                <td valign="top" width="150"><strong>Nombre:</strong></td>
                <td valign="top"><?php echo $c['nombre']; ?> <?php echo $c['apellidos']; ?></td>
            </tr>
            <tr>
                <td><strong>Fecha de nacimiento:</strong></td>
                <td><?php echo $c['fecnac']; ?></td> 
            </tr>
            <tr>
                <td><strong>Sexo:</strong> </td>
                <td><?php echo $c['sexo']; ?></td>
            </tr>
            <tr>
                <td><strong>Ocupaci&oacute;n:</strong></td>
                <td><?php echo $c['ocupacion']; ?></td>
            </tr>
            <tr>
                <td><strong>Domicilio:</strong></td>
                <td><?php echo $c['direccion']; ?></td>
            </tr>
            <tr>
                <td><strong>Colonia:</strong></td>
                <td><?php echo $c['colonia']; ?></td>
            </tr>
            <tr>
                <td><strong>C.P.:</strong></td>
                <td><?php echo $c['cp']; ?></td>
            </tr>
            <tr>
                <td><strong>Ciudad:</strong></td>
                <td><?php echo $c['ciudad']; ?></td>
            </tr>
            <tr>
                <td><strong>Estado:</strong></td>
                <td><?php echo $c['estado']; ?></td>
            </tr>
                <td>
                    <strong>Telefonos:</strong></td>
                <td><?php echo $c['telefono1']; ?> 
                    <?php echo $c['telefono2']; ?>
                </td>
            </tr>
            <tr>
                <td><strong>Correo Electronico:</strong></td>
                <td><?php echo $c['email']; ?></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><strong>&iquest;Padece alg&uacute;n tipo de enfermedad, cirug&iacute;as, fracturas?:</strong></td>
            </tr>
            <tr>
                <td colspan="2"><?php echo $c['enfermedad']; ?></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td><strong>En caso de accidente<br> avisar a:</strong></td>
                <td><?php echo $c['avisar']; ?></td>
            </tr>
            <tr>
            <td><strong>Parentesco:</strong></td>
                <td><?php echo $c['aviparen']; ?></td>
            </tr>
            <tr>
                <td><strong>Tel:</strong></td>
                <td><?php echo $c['avitel']; ?></td>
            </tr>
            <tr>
                <td><strong>Domicilio:</strong></td>
                <td><?php echo $c['avidom']; ?></td>
            </tr>
            <tr>
                <td><strong>Nota:</strong></td>
                <td><?php echo $c['nota']; ?><br />
                    <div id="campoNota"><a href="<?php echo base_url(); ?>index.php/clientes/editnota/<?php echo $c['idcliente']; ?>" class="button" id="editnota">Editar Nota</a></div></td>
            </tr>
            <tr>
                <td><?php echo (is_null($c['vence']) || strtotime($c['vence']) < strtotime(date("d-m-Y H:i:00",time()))) ? "Cuenta vencida" : "Vence el " .$c['vence'];?></td>
                <td><a href="<?php echo base_url(); ?>index.php/clientes/pagar/<?php echo $c['idcliente']; ?>" class="button btn" id="btn_pagar">Pagar</a>
                    <?php if (!(is_null($c['vence']) || strtotime($c['vence']) < strtotime(date("d-m-Y H:i:00",time())))) { ?>
                <a href="<?php echo base_url(); ?>index.php/clientes/entrar/<?php echo $c['idcliente']; ?>" class="button btn" id="btn_entrar">Entrar</a>
                <?php } ?></td>
            </tr>
        </table>