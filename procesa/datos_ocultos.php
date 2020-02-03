<?php

$oculto = 'style="display: none;"';

$Movil="";
$Movil2="";
$fijo="";
$email="";
$email2="";
$Localizacion="";
$Localizacion2="";


if($rowSel['phone1_contact']== NULL){

    $Movil=$oculto;

}

if($rowSel['phone2_contact']== NULL){

    $Movil2=$oculto;

}

if($rowSel['phone3_contact']== NULL){

    $fijo=$oculto;

}

if($rowSel['email1_contact']== NULL){

    $email=$oculto;

}

if($rowSel['email2_contact']== NULL){

    $email2=$oculto;

}

if($rowSel['location2_contact']== NULL){

    $Localizacion=$oculto;

}

if($rowSel['location2_contact']== NULL){

    $Localizacion2=$oculto;

}


?>