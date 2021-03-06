<script>
    $(function(){
        $(".btn").click(function(e){
            e.preventDefault();
            popup("pagar",$(this).attr("href"));
        });
    
        $("#editnota").live('click', function(e){
            e.preventDefault();
            $.ajax({
                url: $(this).attr("href"),
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
    
    $("#btn_ven").live('click', function(e){
        e.preventDefault();
        $.ajax({
            url: $(this).attr("href"),
            context: document.body,
            success: function(data){
                $("#vence").empty();
                $("#vence").html(data);
            }
        });
    });
    
    $("#formVen").live("submit", function(e){
        e.preventDefault();
        
        $.ajax({
            url: $("#formVen").attr("action"),
            context: document.body,
            type: "POST",
            data: $("#formVen").serialize(),
            success: function(data){
                $("#vence").empty();
                $("#vence").html(data);
            }
        });
    });
    
    $("#btn_foto").click(function (e){
        e.preventDefault();
        popup("foto",$(this).attr("href"));
    });
    
    $("#btn_editar").click(function (e){
        e.preventDefault();
        $("body").isLogged();
        $("#dia_editar").html($("<img />").attr("src", "images/ajax-loader.gif"));
        $("#dia_editar").load($(this).attr("href"), {});
        $("#dia_editar").dialog("open");
    });

});
</script>
<table width="650px" cellspacing="3" >
    <tr>
        <td><br /><img src="<?php echo base_url(); ?>fotos/<?php echo $foto; ?>.jpg" width="250px" />
    <br /><center><a href="<?php echo base_url(); ?>index.php/clientes/foto/<?php echo $c['idcliente'] ?>" class="button green" id="btn_foto" >Tomar fotograf&iacute;a</a></center>
    <br /><center><a href="<?php echo base_url(); ?>index.php/clientes/formeditar/<?php echo $c['idcliente'] ?>" class="button green" id="btn_editar" >Editar Informaci&oacute;n del Socio</a></center>
</td>
<td valign="top" >

    <table>
        <tr>
            <td valign="top" width="150"><strong>ID:</strong></td>
            <td valign="top"><?php echo $c['idcliente']; ?></td>
        </tr><tr>
            <td valign="top"><strong>Nombre:</strong></td>
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
            <td><div id="campoNota"><?php echo $c['nota']; ?><br />
                    <a href="<?php echo base_url(); ?>index.php/clientes/modnota/<?php echo $c['idcliente']; ?>" class="button" id="editnota">Editar Nota</a></div></td>
        </tr>
        <tr>
            <td><div id="vence"><?php echo (is_null($c['vence']) || strtotime($c['vence']) < strtotime(date("d-m-Y H:i:00", time()))) ? "Cuenta vencida" : "Vence el " . mdate("%d-%m-%Y", mysql_to_unix($c['vence'])); ?>
                    <?php if ($admin): ?>
                        <a href="<?php echo base_url(); ?>index.php/clientes/cambiarven/<?php echo $c['idcliente']; ?>" class="button" id="btn_ven">Cambiar Vencimiento</a>
                    <?php endif; ?></div>
            </td>
            <td><a href="<?php echo base_url(); ?>index.php/clientes/pagar/<?php echo $c['idcliente']; ?>" class="button btn" id="btn_pagar">Pagar</a>
                <?php if (!(is_null($c['vence']) || strtotime($c['vence']) < strtotime(date("d-m-Y H:i:00", time())))) { ?>
                    <a href="<?php echo base_url(); ?>index.php/clientes/entrar/<?php echo $c['idcliente']; ?>" class="button btn" id="btn_entrar">Entrar</a>
                <?php } ?></td>
        </tr>
    </table>

</td>
</tr>
</table>
