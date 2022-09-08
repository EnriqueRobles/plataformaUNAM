<?php
include_once 'conexion.php';

/*$cnx = pg_connect($strCnx) or die ("Error de conexion.");
//echo "Conexion exitosa<br>";
echo "<script>alert('Registro Enviado');location.href =history.back();</script>";

$clave=md5('password');
$query=("INSERT INTO profesor(ap_paterno,ap_materno,nombre,email,contrasena) 
VALUES ('$_POST[ap_paterno]','$_POST[ap_materno]','$_POST[nombre]','$_POST[email]','$_POST[$clave]') ");


# Ejecutando la Consulta
# Ejecutando la Consulta
if ( $_POST ) {
  $ret = pg_query($cnx, $query);
  form[0].reset();
  if (!$result) {
    echo "Query: Un error ha occurido.\n";
    exit;
  }
}

pg_close();*/

include('conexion.php');
session_start();
 
if (isset($_POST['register'])) {
 
    $ap_paterno = $_POST['ap_paterno'];
    $ap_materno = $_POST['ap_materno'];
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_hash = password_hash($password, PASSWORD_BCRYPT);
 
    $query = $connection->prepare("SELECT * FROM public.alumno WHERE email=:email");
    $query->bindParam("email", $email, PDO::PARAM_STR);
    $query->execute();
 
    if ($query->rowCount() > 0) {
      echo "<script>alert('El email ya esta Registrado.');location.href =history.back();</script>";
    }
 
    if ($query->rowCount() == 0) {
        $query = $connection->prepare("INSERT INTO public.alumno(ap_paterno,ap_materno,nombre,email,contrasena) VALUES (:ap_paterno,:ap_materno,:nombre,:email,:password_hash)");
        $query->bindParam("ap_paterno", $ap_paterno, PDO::PARAM_STR);
        $query->bindParam("ap_materno", $ap_materno, PDO::PARAM_STR);
        $query->bindParam("nombre", $nombre, PDO::PARAM_STR);
        $query->bindParam("email", $email, PDO::PARAM_STR);
        $query->bindParam("password_hash", $password_hash, PDO::PARAM_STR);
        
        $result = $query->execute();
 
        if ($result) {
          echo "<script>alert('Registro Exitoso.');location.href =history.back();</script>";
        } else {
          echo "<script>alert('Algo Salió mal Contacte al Admiistrador.');location.href =history.back();</script>";
        }
    }
}
?>