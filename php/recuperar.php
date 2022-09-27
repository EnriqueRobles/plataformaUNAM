<?php
include('conexion.php');
session_start();

$email = $_POST['email'];
$rol = $_POST["rol"];

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require 'PhpMailer/Exception.php';
require 'PhpMailer/PHPMailer.php';
require 'PhpMailer/SMTP.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    if($rol=="Profesor"){
        //verifica que exista el correo del profesor
        $query = ("SELECT * FROM profesor WHERE email= '$email'");
        $result= pg_query($connection,$query);
        $rows= pg_num_rows($result);
        //si existe va a traer la contraseña
        if ($rows == 1){
            $fila = pg_fetch_assoc(pg_query($connection, $query));
            $enviarpass = $fila['contrasena'];
            //Server settings
            //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output ver errores 0 desactiva
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'correo dueño';                     //SMTP username
            $mail->Password   = 'contraseña';                               //SMTP password
            $mail->SMTPSecure = 'tls';//PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
            $mail->Port       = 587;//465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

            //Recipients
            $mail->setFrom('correo_dueño', 'nombre'); //quien envia
            $mail->addAddress($email);     //a que correo se envia 
            /*$mail->addAddress('ellen@example.com');               //Name is optional
            $mail->addReplyTo('info@example.com', 'Information');
            $mail->addCC('cc@example.com');
            $mail->addBCC('bcc@example.com');*/

            /*//Attachments archivos
            $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
            $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name*/

            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = 'Envio Password'; //asunto
            $mail->Body    = 'Contraseña: '. $enviarpass; //cuerpo 
            //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            echo "<script> alert('Mensaje enviado');window.location= '../index.html' </script>";
        }
    }else{
        echo "<script> alert('Este correo no existe');window.location= '../index.html' </script>";
    }
//exception
} catch (Exception $e) {
    echo "<script> alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');window.location= '../index.html' </script>";
}

?>
