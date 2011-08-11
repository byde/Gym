<table id="tablaUsuarios" width="60%" border="0" cellspacing="1" cellpadding="1">
    <tr>
        <td>Concepto</td>
        <td>Monto</td>
    </tr>
    <?php $m=0; ?>
    <?php foreach($corte as $c): ?>
    <tr>
        <td><?php echo $c['tarifa']; ?></td>
        <td>$ <?php echo $c['monto']; ?></td>
    </tr>
    <?php $m += $c['monto']; ?>
    <?php endforeach; ?>
    <tr>
        <td>Total</td>
        <td>$ <?php echo $m; ?></td>
    </tr>
</table>