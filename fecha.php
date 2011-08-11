<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$fecha_cambiada = mktime(0,0,0,date("m")+11,33,date("Y"));
$fecha = date("d/m/Y", $fecha_cambiada);
echo $fecha
?>
