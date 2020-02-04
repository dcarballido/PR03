<?php
//Conexión a la base de datos
$usuario = "diego";
$contraseña = "qweQWE123";
$servidor = "localhost";
$basededatos = "mycontactsdb";

$conn = mysqli_connect ($servidor, $usuario, $contraseña, $basededatos) or die ("<center>No se puede conectar con la base de datos\n</center>\n");
?>