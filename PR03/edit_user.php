<?php
// conexion a bbdd
include '.procesa/conexion.php';
// importamos datos de session()

?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="./style/styles.css">
    <script type="text/javascript" src="ajax.js"></script>
    <link rel="stylesheet" type="text/css" href="./style/styles.css">
</head>
<body>
	<div class="">
		    <div class="barra3">
    
        <div class="barra-nav">

            <div class="editar">
                <a href="./index.php">Volver ></a>
            </div>

            <div class="cuenta">
                <a href="./edit_user.php">Mi cuenta</a>
            </div>

        </div>
        
        <div id="infores">

        
        
        <?php

        include "./procesa/editUsuario.php";

        ?>
    

    </div>

    </div>
	</div>

</body>
</html>