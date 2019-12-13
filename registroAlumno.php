<?php 
$username = filter_input(INPUT_POST, "username");
$apPat = filter_input(INPUT_POST, "apPat");
$apMat = filter_input(INPUT_POST, "apMat");
$tel = filter_input(INPUT_POST, "tel");
$correo = filter_input(INPUT_POST, "correo");
$password = filter_input(INPUT_POST, "password");

$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

if($username != '' && $password != '' ){
$result = mysqli_query($mysqli,"INSERT INTO `Alumno` (`id_alumno`, `nombre`, `ap_paterno`, `ap_materno`, `telefono`, `correo`, `contraseña`) VALUES (NULL, '".$username."', '".$apPat."', 'NULL', '".$tel."', '".$correo."', '".$password."');");
    echo 1;
}else{
    echo "error";
}
?>