<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		
		<title>Ramos Gym</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
                <link href='css/south-street/jquery-ui-1.8.14.custom.css' rel='stylesheet' type='text/css' />
		
		<!-- Colour Schemes
	  
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		
		<link rel="stylesheet" href="css/blue.css" type="text/css" media="screen" />
		
		<link rel="stylesheet" href="css/red.css" type="text/css" media="screen" />  
	 
		-->
		
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!--                       Javascripts                       -->
  
		<!-- jQuery -->
		<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="js/jquery-ui-1.8.14.custom.min.js"></script>
                <script type="text/javascript">
                    function popup (titulo, pagina) {
                        var opciones="toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=650, height=450, top=85, left=140";
                        window.open(pagina,titulo,opciones);
                    }
                    $(function() {
                        $("#contenido").load("index.php/clientes/buscar");
                        $("a.es-menu").click(function(e){
                            e.preventDefault();
                            //alert($(this).attr("href"));
                            $("#contenido").load($(this).attr("href"));
                            $("a.es-menu").removeClass("current");
                            $(this).addClass("current");
                        });
                        
                            $("a.btn_ficha").live('click', function(e) {
                                e.preventDefault();
                                $("#dia_ficha").html($("<img />").attr("src", "images/ajax-loader.gif"));
                                $("#dia_ficha").load($(this).attr("href"), {});
                                $("#dia_ficha").dialog("open");
                            });

                            $("#dia_ficha").dialog({
                                autoOpen: false,
                                modal: true,
                                height: 530,
                                width: 800
                            });
                    });
                </script>
		
		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
		
	</head>
  
	<body><div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Ramos Gym</a></h1>
		  
			<!-- Logo (221px wide) -->
                        <a href="#"><img id="logo" src="images/logo.jpg" width="221px" /></a>
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
				<a href="#">Ulises</a> | <a href="index.php/log/out" title="Salirt">Salir</a>
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
				<?php $first = 0;
		foreach($menus as $menu): ?>
          <li class="m<?php echo $menu['rel']; ?>"><a href="<?php echo $menu['ruta']; ?>" rel="<?php echo $menu['rel']; ?>" class="es-menu nav-top-item no-submenu load <?php echo ($first==0) ?  "current":""; ?>"><?php echo $menu['menu']; ?></a></li>
          <?php $first++;
		  endforeach; ?>
			</ul> <!-- End #main-nav -->
			
		</div></div> <!-- End #sidebar -->
		
		<div id="main-content"> <!-- Main Content Section with everything -->
			
			<noscript> <!-- Show a notification if the user has disabled javascript -->
				<div class="notification error png_bg">
					<div>
						Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
					</div>
				</div>
			</noscript>
			
			
                    <div id="contenido"></div>
			
			<div id="footer">
				<small>
						&#169; Desarrollado por <a href="http://www.designamx.com">Designa</a> 2011
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		
	</div>
        
        <div id="dia_ficha" title="Ficha de Usuario"></div>
        </body>
  
</html>
