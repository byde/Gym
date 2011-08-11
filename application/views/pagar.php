<html>
    <header>
        <meta content="text/html;" http-equiv="content-type" charset="utf-8">
        <link rel="stylesheet" href="<?php echo base_url(); ?>css/style.css" type="text/css" media="screen" />
        <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.6.1.min.js"></script>
        <script>
            $(function(){
                $("#btn_calcular").click(function (e){
                    e.preventDefault();
                    var t = 0;
                    $.each($(".in_p"), function(index,value){
                        t += $(this).attr("value")*$(this).attr("alt");
                    });
                    $("#total").html(t);
                });
            });
        </script>
    </header>
    <body>
        <div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Configurar Pago</h3>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
                                    <form id="formP" method="post" action="<?php echo base_url(); ?>index.php/clientes/pagar2">
        <table>
            <tr>
                <td>Cantidad</td>
                <td>Tarifa</td>
            </tr>
            <?php foreach($tarifas as $t): ?>
            <tr>
                <td><input type="text" name="tarifa[<?php echo $t['idtarifa']; ?>]" size="10" width="50px" class="in_p" alt="<?php echo $t['precio']; ?>" value="" /></td>
                <td><?php echo $t['tarifa']; ?> - <?php echo $tipo[$t['tipo']]; ?> - ($<?php echo $t['precio']; ?>)</td>
            </tr>
            <?php endforeach; ?>
            <tr>
                <td>&nbsp;</td>
                <td><a href="#" class="button" id="btn_calcular">Calcular</a> <input type="submit" value=" Pagar " /></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>$<span id="total">0</span></td>
            </tr>
        </table>
                                    </form>
                                    
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box 
    </body>
</html>