<title>Plataforma Unam</title>
<link href="../CSS/bootstrap.min.css" rel="stylesheet">
<link href="../CSS/myEstilo.css" rel="stylesheet">
<link href="../CSS/myEstilo2.css" rel="stylesheet">
<link rel="stylesheet" href="login.css">

<table>
<?php
include('conexion.php');
session_start();

if(isset($_SESSION['nombredelusuario']))
{
	$usuarioingresado = $_SESSION['nombredelusuario'];
	echo "<tr><td colspan='2' align='center'><h1>Bienvenido: $usuarioingresado </h1></td></tr>";
}
else
{
	header('location: ../index.html');
}
?>

<!--Boton para cerrar sesion-->
<form method="POST">
<tr><td colspan='2' align="center" ><input type="submit" value="Cerrar sesión" name="btncerrar" /></td></tr>
</form>

<!--Código para cerrar sesion-->
<?php 
if(isset($_POST['btncerrar']))
{
	session_destroy();
	header('location: ../index.html');
}
?>
    <script src="JS/bootstrap.bundle.min.js" ></script>
    <script src="JS/bootstrap.min.js" ></script>
</table>