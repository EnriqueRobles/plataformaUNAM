<?php
include('conexion.php');
session_start();

if(isset($_POST["register"])){
$num_trabajador = $_POST["num_trabajador"];
$ap_paterno = $_POST["ap_paterno"];
$ap_materno = $_POST["ap_materno"];
$nombre = $_POST["nombre"];
$email = $_POST["email"];
$password = $_POST["password"];
$rol = $_POST["rol"];

	if($rol=="Profesor"){	
    //validar que el correo no este registrado
		$query = ("SELECT * FROM profesor WHERE email= '$email'");
		$result= pg_query($connection,$query);
		$rows= pg_num_rows($result);
    //Validar si existe el profesor
    $query2 = ("SELECT num_trabajador FROM validar_profesor WHERE num_trabajador= '$num_trabajador'");
		$result2= pg_query($connection,$query2);
		$rows2= pg_num_rows($result2);
		if ($rows >0) {
			echo "<script>alert('El email ya esta Registrado.');location.href =history.back();</script>";
	  }else if($rows2 == 0){
      echo "<script>alert('Número de Trabajador inválido.');location.href =history.back();</script>";
    }else{
				/*Registro*/
				//$pass_fuerte = password_hash($password, PASSWORD_DEFAULT);
				$sqlgrabar=("INSERT INTO profesor(num_trabajador,ap_paterno,ap_materno,nombre,email,contrasena,rol) 
						VALUES ('$num_trabajador','$ap_paterno','$ap_materno','$nombre','$email','$password','$rol')");
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