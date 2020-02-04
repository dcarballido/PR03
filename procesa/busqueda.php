<?php
  include "conexion.php";
  if($_REQUEST['q']!='1'){
  	$cons="SELECT * FROM `contact` WHERE `contact`.`id_user_contact` = '1' AND `contact`.`firstname_contact` LIKE '%".$_REQUEST['q']."% ' OR `contact`.`lastname_contact` LIKE '%".$_REQUEST['q']."%'";
  }else{
  	$cons="SELECT * FROM `contact` WHERE `contact`.`id_user_contact` = '1'";
  }

  $sql=mysqli_query($conn,$cons);

  $contacto=array();
  while($row = mysqli_fetch_assoc($sql)){
    $contacto[]=$row;
  }
  print json_encode($contacto);
?>