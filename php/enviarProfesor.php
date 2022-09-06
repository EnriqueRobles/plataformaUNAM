<?php
include_once 'conexion.php';

$cnx = pg_connect($strCnx) or die ("Error de conexion.");
//echo "Conexion exitosa<br>";
echo "<script>alert('Registro Enviado');location.href =history.back();</script>";

$query=("INSERT INTO profesor(ap_paterno,ap_materno,nombre,email,contrasena) 
VALUES ('$_REQUEST[ap_paterno]','$_REQUEST[ap_materno]','$_REQUEST[nombre]','$_REQUEST[email]','$_REQUEST[password]') ");

# Ejecutando la Consulta
if ( $_POST ) {
    $result = pg_query($cnx, $query);
    if (!$result) {
      echo "Query: Un error ha occurido.\n";
      exit;
    }
}

pg_close();
?>