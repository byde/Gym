<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		
		<title>Ingrese a sistema | Ramos Gym</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />	
		
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
		<script type="text/javascript" src="js/login.js"></script>
		
		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
		
	</head>
  
	<body id="login">
		
		<div id="login-wrapper" class="png_bg">
			<div id="login-top">
			
				<h1>Ramos Gym</h1>
				<!-- Logo (221px width) -->
                                <img id="logo" src="images/logo.jpg" width="221px" alt="Ramos Gym" />
			</div> <!-- End #logn-top -->
			
			<div id="login-content">
				
                            <form action="#" id="ingresarForm">
				
					<div class="notification information png_bg">
                                            
              <div class="notification error"  id="mensaje"> <span class="strong">ERROR!</span> Los datos no coinciden. </div>
              <div class="notification error" id="mensaje2"> <span class="strong">ERROR!</span> A superado los intentos permitidos, pongase en contacto con el administrador. </div>
              <div class="notification information" id="mensaje1"> <span class="strong">COMPROBANDO DATOS</span> Sus datos se estan comprobando. </div>
						<div>
							Ingrese sus datos.
						</div>
					</div>
					
					<p>
						<label>Usuario</label>
                                                <input class="text-input" type="text" name="usuario" id="user" />
					</p>
					<div class="clear"></div>
					<p>
                                            <label>Contrase&ntilde;a</label>
                                            <input class="text-input" type="password" name="passwd" id="pass" />
					</p>
					<div class="clear"></div>
					<div class="clear"></div>
					<p>
						<input class="button" type="submit" value="Ingresar" />
					</p>
					
				</form>
			</div> <!-- End #login-content -->
			
		</div> <!-- End #login-wrapper -->
		
  </body>
  
</html>
