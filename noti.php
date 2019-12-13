<?php 

$id = filter_input(INPUT_POST, "id_tutor");
$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

$result = mysqli_query($mysqli,"SELECT c.nombre as nombre, c.telefono as telefono
FROM (Tutor a
INNER JOIN `Match` b
ON a.id_tutor = b.id_tutor) INNER JOIN Alumno c on c.id_alumno = b.`id_alumno` and a.id_tutor = '".$id."'");
$return_arr = array();
while ($row = mysqli_fetch_array($result)) {
    $row_array['nombre'] = $row['nombre'];
    $row_array['telefono'] = $row['telefono'];
    array_push($return_arr,$row_array);
}
echo json_encode($return_arr);

?>   