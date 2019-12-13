<?php
$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");

#$result = mysqli_query($mysqli,"SELECT a.nombre, a.correo, a.telefono , count(*) FROM Tutor a INNER JOIN Comentarios b ON a.id_tutor = b.id_tutor");
$result = mysqli_query($mysqli,"SELECT * FROM `Tutor`");
$return_arr = array();
while ($row = mysqli_fetch_array($result)) {
    $row_array['id_tutor'] = $row['id_tutor'];
    $row_array['telefono'] = $row['telefono'];
    $row_array['nombre'] = $row['nombre'];
    $row_array['telefono'] = $row['telefono'];
    $row_array['correo'] = $row['correo'];
    $id = $row_array['id_tutor'];
    $countComents = mysqli_query($mysqli,"select count(*) from Tutor a INNER JOIN Comentarios b where a.id_tutor = b.id_tutor and a.id_tutor ='".$id."'");
    while ($rows = $countComents->fetch_assoc()) {
        $row_array['coments'] = $rows['count(*)'];
        //echo $rows['count(*)']."<br>";
    }
    array_push($return_arr,$row_array);
}
echo json_encode($return_arr);
?>