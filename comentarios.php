<?php 

$id = filter_input(INPUT_POST, "id_tutor");
$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

$result = mysqli_query($mysqli,"SELECT b.mensaje, c.nombre from (Tutor a INNER join Comentarios b on a.id_tutor = b.id_tutor) INNER JOIN Alumno c on b.id_alumno = c.id_alumno and a.id_tutor = '".$id."'");
$return_arr = array();
while ($row = mysqli_fetch_array($result)) {
    $row_array['mensaje'] = $row['mensaje'];
    $row_array['nombre'] = $row['nombre'];
    array_push($return_arr,$row_array);
    
}
echo json_encode($return_arr);

?>