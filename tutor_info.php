<?php 

$id = filter_input(INPUT_POST, "id_tutor");
//$id = "1";

$mysqli = new mysqli("localhost","id11404889_admin","Sensei1234","id11404889_sensei");


/*$result = mysqli_query($mysqli,"SELECT Tutor.nombre, Tutor.correo, Tutor.telefono , count(*) FROM Tutor INNER JOIN Comentarios ON Tutor.id_tutor = Comentarios.id_tutor and Tutor.id_tutor = '".$id."'");*/

$result = mysqli_query($mysqli,"SELECT * FROM Tutor");
//mysqli_query($mysqli,"select count(*) from Tutor a INNER JOIN Comentarios b where a.id_tutor = b.id_tutor and a.id_tutor = '".$row['id_tutor']."'");

$return_arr = array();
while ($row = mysqli_fetch_array($result)) {
    $row_array['id_tutor'] = $row['id_tutor'];
    $row_array['nombre'] = $row['nombre'];
    $row_array['correo'] = $row['correo'];
    $row_array['telefono'] = $row['telefono'];
    $row_array['imagen'] = $row['imagen'];
    $id = $row_array['id_tutor'];
    $countComents = mysqli_query($mysqli,"select count(*) from Tutor a INNER JOIN Comentarios b where a.id_tutor = b.id_tutor and a.id_tutor ='".$id."'");
    while ($rows = $countComents->fetch_assoc()) {
        $row_array['coments'] = $rows['count(*)'];
        //echo $rows['count(*)']."<br>";
    }
    $countMaterias = mysqli_query($mysqli,"select c.nombre from Tutor a INNER JOIN Mat_Prof b on a.id_tutor = b.id_tutor INNER JOIN Materia c WHERE b.id_materia = c.id_materia  and a.id_tutor = '".$id."'");
    $return_arr_mat = "";
    while ($rows = mysqli_fetch_array($countMaterias)) {
        $row_array2 = $rows['nombre'];
        $return_arr_mat = $return_arr_mat . $row_array2.","; 
        //array_push($return_arr_mat,$row_array2);
    }
    $return_arr_mat = substr($return_arr_mat, 0, -1); 
    $row_array['materias'] = $return_arr_mat;
    //$row_array["count(*)"] = $row["count(*)"];
    array_push($return_arr,$row_array);
    
}
echo json_encode($return_arr);



?>