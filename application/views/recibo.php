<html>
    <head>
        <meta content="text/html;" http-equiv="content-type" charset="utf-8">
        <title>Contrato</title>
        <script>
            //window.print();
            //window.close();
        </script>
    </head>
    <body>
        <table width="800px" >
            <tr>
                <td><img id="logo" src="<?php echo base_url(); ?>images/logo.jpg" width="221px" /></td>
                <td align="right">Ramos Gym<br />
                    Av Caxc&aacute;n 108<br />
Colonia Estancia de Chora<br />
Rinc&oacute;n de Romos, Aguascalintes.<br />
Fecha: <strong><?php echo mdate("%d-%m-%Y"); ?></strong>
                </td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>
                <td colspan="2"><strong>Nombre:</strong> <i><?php echo $c['nombre']; ?> <?php echo $c['apellidos']; ?> <strong>(<?php echo $c['idcliente']; ?>)</strong></i></td>
            </tr>
            <tr>
                <td colspan="2"><hr /></td>
            </tr>
            <tr>
                <td>(Cant.) - Concepto</td>
                <td align="right">Monto</td>
            </tr>
            <?php foreach($pa as $p): ?>
            <tr>
                <td>( <?php echo $p["cantidad"]; ?> ) <?php echo $p["concepto"]; ?></td>
                <td align="right"><?php echo $p["monto"]; ?></td>
            </tr>
            <?php endforeach; ?>
            <tr>
                <td colspan="2" align="right"><strong>Total: $ <?php echo $t; ?></strong></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            </tr>
        </table>
    </body>
</html>