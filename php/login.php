<?php

include('conexion.php');
session_start();

$usu = $_POST["email"];
$pass = $_POST["password"];
$rol = $_POST["rol"];

if($rol=="Profesor"){	
	$consulta = sprintf("SELECT contrasena FROM public.profesor WHERE num_trabajador ='%s' and rol = '%s';",
                pg_escape_string($usu), pg_escape_string($rol));
	$fila = pg_fetch_assoc(pg_query($connection, $consulta));
		/*$queryusuario2 = pg_query($connection,"SELECT contrasena FROM public.profesor WHERE email ='$usu' and rol = '$rol'");
		$nr2 = pg_num_rows($queryusuario2);  
		$fila = pg_fetch_assoc($pass);*/
		if ($fila && ($pass == $fila['contrasena'])) {
			$_SESSION['nombredelusuario']=$usu;
			header("Location: pag_profesor.php");
		}else{
			echo "<script> alert('Usuario, contraseña o rol incorrecto.');window.location= '../index.html' </script>";
			pg_close();
		}	
}else if ($rol=="Alumno"){
	/*$queryusuario = pg_query($connection,"SELECT * FROM public.alumno WHERE email ='$usu' and contrasena = '$pass' and rol = '$rol'");
	$nr = pg_num_rows($queryusuario);  */
	$consulta2 = sprintf("SELECT contrasena FROM public.alumno WHERE email ='%s' and rol = '%s';",
		pg_escape_string($usu), pg_escape_string($rol));
	$fila2 = pg_fetch_assoc(pg_query($connection, $consulta2));
		if ($fila2 && ($pass == $fila['contrasena'])) {
			$_SESSION['nombredelusuario']=$usu;
			header("Location: pag_alumno.php");
		}else{
			echo "<script> alert('Usuario, contraseña o rol incorrecto.');window.location= '../index.html' </script>";
			pg_close();
		}
}
?>