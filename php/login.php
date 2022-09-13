<?php

include('conexion.php');
session_start();

$usu = $_POST["email"];
$pass = $_POST["password"];
$rol = $_POST["rol"];

if($rol=="Profesor"){	
		$queryusuario2 = pg_query($connection,"SELECT * FROM public.profesor WHERE email ='$usu' and contrasena = '$pass' and rol = '$rol'");
		$nr2 = pg_num_rows($queryusuario2);  
		if ($nr2 == 1 ) {
			header("Location: pag_profesor.php");
		}else{
			echo "<script> alert('Usuario, contraseña o rol incorrecto.');window.location= '../index.html' </script>";
			pg_close();
		}	
}else if ($rol=="Alumno"){
	$queryusuario = pg_query($connection,"SELECT * FROM public.alumno WHERE email ='$usu' and contrasena = '$pass' and rol = '$rol'");
	$nr = pg_num_rows($queryusuario);  
		if ($nr == 1) {
			header("Location: pag_alumno.php");
		}else{
			echo "<script> alert('Usuario, contraseña o rol incorrecto.');window.location= '../index.html' </script>";
			pg_close();
		}
}
?>