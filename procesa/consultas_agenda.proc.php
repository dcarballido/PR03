<?php

if(isset($_REQUEST['id'])){

$id=$_REQUEST['id'];

$contactos="SELECT * FROM `contact`  ORDER BY `contact`.`firstname_contact` ASC";

$result_query = mysqli_query($conn, $contactos) or die("Algo ha ido mal en la consulta a la base de datos");

$contacto_selected ="SELECT * FROM `contact` WHERE `contact`.`id_contact` = '$id'";

$result_selected = mysqli_query($conn, $contacto_selected) or die("Algo ha ido mal en la consulta a la base de datos");

}

?>