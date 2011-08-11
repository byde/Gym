<script>
$(function() {
    $("#sel").change(function(){
        $.ajax({
            url: "index.php/clientes/corteby/" + $(this).val(),
          context: $("#tabla"),
          success: function(data){
            //$(this).addClass("done");
                $("#tabla").empty();
                $("#tabla").html(data);
          }
        });
    });
});
</script>
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Corte de Caja</h3>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
                                    <form id="formU">Seleccione el usuario: 
                                        <select id="sel">
                                            <option>Seleccione un usuario</option>
                                            <?php foreach($usuarios as $u): ?>
                                            <option value="<?php echo $u['idusuario'] ?>"><?php echo $u['user'] ?></option>
                                            <?php endforeach; ?>
                                        </select></form>
                                    <div id="tabla"><div class="notification attention png_bg" id="nores">
							<a href="#" class="close"><img src="images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
							<div>
								No hay resultados.
							</div>
						</div>
    </div>
                                    
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->