<?php 

$username = filter_input(INPUT_POST, "username");
$apPat = filter_input(INPUT_POST, "apPat");
$apMat = filter_input(INPUT_POST, "apMat");
$tel = filter_input(INPUT_POST, "tel");
$correo = filter_input(INPUT_POST, "correo");
$password = filter_input(INPUT_POST, "password");
$imagen = filter_input(INPUT_POST,"imagen");

$con0 = filter_input(INPUT_POST,"con0");
$con1 = filter_input(INPUT_POST,"con1");
$con2 = filter_input(INPUT_POST,"con2");
$con3 = filter_input(INPUT_POST,"con3");


$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");
if($username != '' && $password != '' ){
$result = mysqli_query($mysqli,"INSERT INTO `Tutor` (`id_tutor`, `nombre`, `ap_paterno`, `ap_materno`, `telefono`, `correo`, `contraseña` , `imagen`) VALUES (NULL, '".$username."', '".$apPat."', 'NULL', '".$tel."', '".$correo."', '".$password."' , '".$imagen."');");

$lastid = mysqli_insert_id($mysqli);
$array = array($con0,$con1,$con2,$con3);
foreach ($array as $value){
    if($value != '-1'){
        mysqli_query($mysqli, "INSERT INTO `Mat_Prof` (`id`, `id_materia`, `id_tutor`) VALUES (NULL, '".$value."', '".$lastid."');");
    }
}
if($data = mysqli_fetch_array($result)){
	echo "1";
}else{
    echo(mysqli_fetch_array($result));
}
}else {
    echo "error";
}

?>