<?php 

$id_alu = filter_input(INPUT_POST, "id_alu");
$id_tut = filter_input(INPUT_POST, "id_tut");

$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

$result = mysqli_query($mysqli,"INSERT INTO `Match` (`id_match`, `id_tutor`, `id_alumno`) VALUES (NULL, '".$id_tut."', '".$id_alu."');");

if($data = mysqli_fetch_array($result)){
	echo "1";
}else{
    echo(mysqli_fetch_array($result));
}
?>