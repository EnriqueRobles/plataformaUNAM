<?php
$user = 'postgres';
$passwd = 'root';
$db = 'plataforma';
$port = 5432;
$host = 'localhost';
$strCnx = "host=$host port=$port dbname=$db user=$user password=$passwd";



/*define('USER', 'postgres');
define('PASSWORD', 'root');
define('HOST', 'localhost');
define('DATABASE', 'plataforma');*/
 
try {
    $connection = pg_connect($strCnx);
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}



?>