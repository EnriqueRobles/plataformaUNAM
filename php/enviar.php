<?php
include('conexion.php');
session_start();

if(isset($_POST["register"]))
{
$ap_paterno = $_POST["ap_paterno"];
$ap_materno = $_POST["ap_materno"];
$nombre = $_POST["nombre"];
$email = $_POST["email"];
$password = $_POST["password"];
$rol = $_POST["rol"];

	if($rol=="Profesor"){	
		$query = ("SELECT * FROM profesor WHERE email= '$email'");
		$result= pg_query($connection,$query);
		$rows= pg_num_rows($result);
		if ($rows >0) {
			echo "<script>alert('El email ya esta Registrado.');location.href =history.back();</script>";
		}else{
				/*Registro*/
				$sqlgrabar=("INSERT INTO profesor(ap_paterno,ap_materno,nombre,email,contrasena,rol) 
						VALUES ('$ap_paterno','$ap_materno','$nombre','$email','$password','$rol')");
				if(pg_query($connection,$sqlgrabar)){
					echo "<script> alert('Usuario registrado con exito: $nombre'); location.href =history.back(); </script>";
				}else {
					echo "Error: ".$sql."<br>".pg_error($conn);
				}
			}	
	}else if ($rol=="Alumno"){
		$query = ("SELECT * FROM profesor WHERE email= '$email'");
		$result= pg_query($connection,$query);
		$rows= pg_num_rows($result);
		if ($rows >0) {
			echo "<script>alert('El email ya esta Registrado.');location.href =history.back();</script>";
		}else{
		/*Registro*/
		$sqlgrabar=("INSERT INTO alumno(ap_paterno,ap_materno,nombre,email,contrasena,rol) 
					VALUES ('$ap_paterno','$ap_materno','$nombre','$email','$password','$rol')");
			if(pg_query($connection,$sqlgrabar)){
				echo "<script> alert('Usuario registrado con exito: $nombre'); location.href =history.back(); </script>";
			}else {
				echo "Error: ".$sql."<br>".pg_error($conn);
			}
	}
} 
pg_close();
}
?>