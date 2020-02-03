<?php
   //se incluye la pagina conexion.php para poder recoger la conexión a la BD
   include("conexion.php");
   
   if ($_SERVER["REQUEST_METHOD"] == "POST") {
    session_start();
    //Declarar variables y hacer request del formulario

    $myusername = $_REQUEST['username'];
    $mypassword = $_REQUEST['password'];
    $pass = md5($mypassword);
    $myname = $_REQUEST['name'];
    $mysurname = $_REQUEST['surname'];
    $mytelf = $_REQUEST['telf'];

    if (isset($_REQUEST["username"])) {
        $q = mysqli_query($connexion, "SELECT * FROM user WHERE id_mycontacts = '$myusername'");
        $row_cnt = mysqli_num_rows($q);

        //Comprobar que el usuario está registrado
        if (!empty($q) && $row_cnt == 1) {
            echo"<script type='text/javascript'>alert('El usuario ya existe')</script>";
            header('Refresh:0; url = registro.php?us=' . $myusername);
            
        } else {
            $sql = "INSERT INTO user (id_mycontacts,firstname_user,lastname_user,password_user,phone_user) values ('$myusername','$myname','$mysurname','$pass','$mytelf')";
            if ($connexion->query($sql) === TRUE) {
            echo"<script type='text/javascript'>alert('El usuario ha sido creado correctamente')</script>";
            header('Refresh:0; url = login.php?us=' . $myusername);
            } else {
            echo "Error: " . $sql . "<br>" . $connexion->error;
            }   
        }
        $close = mysqli_close($connexion);
    } else {
        header("Location: registro.php");
    }
}