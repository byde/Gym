<script>
$(function() {
        $("#nores").hide();
        $("tr.cliente").live('mouseover mouseout', function(e){
            $("tr.cliente").removeAttr("bgcolor");
            if(e.type == "mouseover")
                $(this).attr("bgcolor", "#98c700");
        });
        $("#tabla").load("<?php echo base_url(); ?>index.php/clientes/todos");
        $("#tabla").html($("<img />").attr("src", "images/ajax-loader.gif"));
        $("#buscar_cmp").keyup(function(e){
            if ($(this).val() != "")
                urlb = "<?php echo base_url(); ?>index.php/clientes/busca/" + $(this).val();
            else
                urlb = "<?php echo base_url(); ?>index.php/clientes/todos";
            $.ajax({
                url: urlb,
              context: document.body,
              beforeSend : function (){
                  $("#imgbusca").attr("src", "images/ajax-loader.gif");
              },
              success: function(data){
                  $("#imgbusca").attr("src", "images/pic.gif");
                  if(data == "false") {
                    $("#tabla").html("");
                    $("#nores").show();
                  } else {
                    $("#nores").hide();
                    $("#tabla").html(data);
                  }
              }
            });
        });
});
</script>
<!-- Page Head -->
			<h2>Buscar usuarios</h2>
			<p id="page-intro">Ingresa los parametros de busqueda</p>
                        <form action="#" method="get">
							
                            <fieldset>
			<label>Buscar:</label>
                        <input id="buscar_cmp" class="text-input medium-input" type="text" id="large-input" name="large-input" />
                        
                            </fieldset>
                        </form>
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Resultados</h3>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
                                    <div id="tabla">
    </div>
                                    <div class="notification attention png_bg" id="nores">
							<a href="#" class="close"><img src="images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
							<div>
								No hay resultados.
							</div>
						</div>
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->