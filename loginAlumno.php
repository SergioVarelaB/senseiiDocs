<?php 

$username = filter_input(INPUT_POST, "username");
$password = filter_input(INPUT_POST, "password");

$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

$result = mysqli_query($mysqli,"select * from Alumno where nombre = '".$username."' and contraseña = '".$password."'");
if($data = mysqli_fetch_array($result)){
    echo $data[0];
	//echo json_encode($data[0]);
}else{
    echo -1;
}
?>