<?php
include_once 'conexion.php';
session_start();
 
if (isset($_POST['login'])) {
 
    $correo = $_POST['email'];
    $password = $_POST['password'];
 
    $query = $connection->prepare("SELECT * FROM public.profesor WHERE email=:email");
    $query->bindParam("email", $email, PDO::PARAM_STR);
    $query->execute();
 
    $result = $query->fetch(PDO::FETCH_ASSOC);
 
    if (!$result) {
        echo "<script>alert('Correo Incorrectos.');location.href =history.back();</script>";
    } else {
        if (password_verify($password, $result['contrasena'])) {
            $_SESSION['user_id'] = $result['ID'];
            echo "<script>alert('Contraseña Incorrectos.');</script>";
        } else {
            echo "<script>alert('Contraseña Incorrectos.');location.href =history.back();</script>";
        }
    }
}
 
?>