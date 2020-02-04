<?php
   //se incluye la pagina conexion.php para poder recoger la conexión a la BD
   include './procesa/conexion.php';
   
   if ($_SERVER["REQUEST_METHOD"] == "POST") {
    session_start();
    //Declarar variables y hacer request del formulario

    $myusername = $_REQUEST['username'];
    $mypassword = $_REQUEST['password'];
    $pass = md5($mypassword);

    if (isset($_REQUEST["username"])) {
        $q = mysqli_query($connexion, "SELECT * FROM user WHERE id_mycontacts = '$myusername' AND password_user = '$pass'");
        $row_cnt = mysqli_num_rows($q);


   if (!empty($q) && $row_cnt == 1) {
            session_start();
            $_SESSION['username'] = $myusername;
            header("Location: index.php");
        } else {
            echo"<script type='text/javascript'>alert('Usuario o contraseña incorrectos')</script>";
            header('Refresh:0; url = login.php?us=' . $myusername);
        }
        $close = mysqli_close($connexion);

    } 

}