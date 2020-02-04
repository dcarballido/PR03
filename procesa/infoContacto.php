<div class="info">

    <?php

    include "conexion.php";

    include "consultas_agenda.proc.php";

    ?>
    
    <div class="cuadro-info">

        <?php

                while ($rowSel = mysqli_fetch_array($result_selected)) {


                        include "datos_ocultos.php";
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