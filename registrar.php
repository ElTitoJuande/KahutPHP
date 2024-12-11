<?php
include 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombreUsu = trim($_POST['nombreUsu']);

    if (!empty($nombreUsu)) {
        try {
            $sql = "INSERT INTO usuarios (nombreUsu, tInicio) VALUES (:nombreUsu, NOW())";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':nombreUsu', $nombreUsu, PDO::PARAM_STR);
            
            if ($stmt->execute()) {
                $id_usuario = $conn->lastInsertId(); // Obtener el último ID insertado
                header("Location: cuestionario.php?id=" . $id_usuario);
                exit();
            } else {
                echo "Error: No se pudo registrar el usuario.";
            }
        } catch (PDOException $e) {
            echo "Error en la base de datos: " . $e->getMessage();
        }
    } else {
        echo "Error: El nombre de usuario no puede estar vacío.";
    }
}
?>