
<?php

 include('conexion.php');
 session_start();
$usu = $_POST["email"];
$pass = $_POST["password"];
$rol = $_POST["rol"];



$queryusuario = pg_query($connection,"SELECT * FROM public.roles WHERE usuario ='$usu' and pass = '$pass' and rol = '$rol'");
$nr 		= pg_num_rows($queryusuario);  
	
if ($nr == 1 )  
	{ 
		if($rol=="Profesor")
			{	
				header("Location: pag_alumno.php");
			}
		else if ($rol=="Alumno")
			{
				header("Location: pag_profesor.php");
			}
	}
else
	{
	echo "<script> alert('Usuario, contraseña o rol incorrecto.');window.location= '../index.html' </script>";
	}

	pg_close()
?>