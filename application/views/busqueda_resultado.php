<table id="tablaUsuarios" width="60%" border="0" cellspacing="1" cellpadding="1">
<thead>
  <tr>
    <td>Nombre</td>
    <td><span class="discret"><small>Hay </small><?php echo $clientes_total; ?> <small> usuarios<?php echo ($clientes_total == 1) ? "" : "s"; ?></small></span><br />
</td>
  </tr>
</thead>
<tbody><?php $e = true; ?>
<?php foreach($clientes as $c): ?>
  <tr class="<?php echo ($e) ? "": "even"; $e = ($e) ? false : true; ?> cliente">
    <td>
        <a href="index.php/clientes/ver/<?php echo $c['idcliente']; ?>" title="Detalle" class="btn_ficha">
            <?php echo $c['nombre'] . ' ' . $c['apellidos']; ?>
        </a>
    </td>
    <td width="400"><i><?php echo $c['telefono1']; ?></i></td>
  </tr>
<? endforeach; ?>
</tbody>
</table>