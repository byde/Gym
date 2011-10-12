<script type="text/javascript" src="js/login.js"></script>
<form action="#" id="ingresarForm">
    
              <div class="notification error"  id="mensaje"> <span class="strong">ERROR!</span> Los datos no coinciden. </div>
              <div class="notification error" id="mensaje2"> <span class="strong">ERROR!</span> A superado los intentos permitidos, pongase en contacto con el administrador. </div>
              <div class="notification information" id="mensaje1"> <span class="strong">COMPROBANDO DATOS</span> Sus datos se estan comprobando. </div>
    <p>
        <img src="images/icons/user.png" width="26px" /> 
        <input class="text-input" type="text" name="usuario" id="user" />
    </p>

    <div class="clear"></div>
    <p>
        <img src="images/icons/key.png" width="26px" /> 
        <input class="text-input" type="password" name="passwd" id="pass" />
    </p>
    <div class="clear"></div>
    <div class="clear"></div>
    <p>
        <input class="button" type="submit" value="Autenticar" />
    </p>
</form>