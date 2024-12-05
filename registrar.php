<?php
include 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombreUsu = $_POST['nombreUsu'];

    $sql = "INSERT INTO usuarios (nombreUsu, tInicio) VALUES (?, NOW())";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $nombreUsu);
    
    if ($stmt->execute()) {
        $id_usuario = $conn->insert_id;
        header("Location: cuestionario.php?id=" . $id_usuario);
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }
}
?>