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
        <form>
                <input type="text" id="contacto" autofocus placeholder="Buscar en contactos..." onkeyup="consultar(this.value)">
		<!-- <input type="text" id="pokemon" autofocus placeholder="Pokemon..." onkeyup="consultar(this.value)"> -->
	</form>
        
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
        
    

    <div class="info">
    
    <div class="cuadro-info">

        <?php

                while ($rowSel = mysqli_fetch_array($result_selected)) {


                        include "./procesa/datos_ocultos.php";
        ?>
    
        <div class="perfil">

                <div class="avatar">
                        <img src="./files/img/no_photo.png">
                </div>

                <div class="nombre">

                        <h1><?php echo $rowSel['firstname_contact']." ".$rowSel['lastname_contact']; ?></h1>

                </div>

        </div>

        <div class="datos">

        </div>

                <div class="datos-ind" <?php echo $Movil; ?>>

                        <div class="texto-titl">
                                <p>Móvil</p>
                        </div>

                        <div class="texto">
                                <p><?php echo $rowSel['phone1_contact']; ?></p>
                        </div>

                </div>
                <div class="datos-ind" <?php echo $Movil2; ?>>

                        <div class="texto-titl">
                                <p>2º Móvil</p>
                        </div>

                        <div class="texto">
                                <p><?php echo $rowSel['phone2_contact']; ?></p>
                        </div>

                        

                </div>

                <div class="datos-ind" <?php echo $fijo; ?>>

                        <div class="texto-titl">
                                <p>telf. fijo</p>
                        </div>

                        <div class="texto">
                                <p><?php echo $rowSel['phone3_contact']; ?></p>
                        </div>

                </div>

                <div class="datos-ind" <?php echo $email; ?>>

                        <div class="texto-titl">
                                <p>email</p>
                        </div>

                        <div class="texto">
                                <p><?php echo $rowSel['email1_contact']; ?></p>
                        </div>

                </div>

                <div class="datos-ind" <?php echo $email2; ?>>

                        <div class="texto-titl">
                                <p>2º email</p>
                        </div>

                        <div class="texto">
                                <p><?php echo $rowSel['email2_contact']; ?></p>
                        </div>

                </div>

                <div class="datos-ind" <?php echo $Localizacion; ?>>

                        <div class="texto-titl">
                                <p><?php echo $rowSel['location2_contact']; ?></p>
                        </div>

                        <div class="texto">
                                <p></p>
                        </div>

                </div>

                <div class="datos-ind" <?php echo $Localizacion2; ?>>

                        <div class="texto-titl">
                                <p><?php echo $rowSel['location2_contact']; ?></p>
                        </div>

                        <div class="texto">
                                <p></p>
                        </div>

                </div>
             
                <?php

                }

                mysqli_close($conn);

        ?>
    
        </div>
    
    </div>

    </div>

</div>

</body>
</html>