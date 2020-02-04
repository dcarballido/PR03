<!DOCTYPE html>
<html>
<head>
    <title>MyContacts</title>
    <link rel="stylesheet" type="text/css" href="./style/styles.css">
    <script type="text/javascript" src="ajax.js"></script>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>

</head>
<body>

        <?php

        include "./procesa/conexion.php";

        include "./procesa/consultas_agenda.proc.php";

        ?>

<div class="mycontacts">

    <div class="barra1">
        
    <div class="logo-letra">
        <a href="#">MyContacts</a>
    </div>

    <div class="todos-contactos">
    <a href="#"><p>Todos los contactos</p></a>
        
    </div>


    </div>
    <div class="barra2">

    <div class="busqueda">

        <div class="icono-busqueda">

        </div>
                <input type="text" id="contacto" autofocus placeholder="Buscar en contactos..." onkeyup="consultar(this.value)">
        
    </div>

    <div id="contactos" class="contactos"></div>

    </div>
    <div class="barra3">
    
        <div class="barra-nav">

            <div class="editar">
                <a href="#">Editar</a>
            </div>

            <div class="cuenta">
                <a href="#">Mi cuenta</a>
            </div>

        </div>
        
        <div id="infores">

        
        
        <?php

        include "./procesa/newContacto.php";

        ?>
    

    </div>

    </div>

</div>

</body>
</html>