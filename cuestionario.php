<?php
include 'conexion.php';

$id_usuario = $_GET['id'];

// Obtener 5 preguntas aleatorias
$sql = "SELECT * FROM preguntas ORDER BY RAND() LIMIT 5";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>" . $row['enunciado'] . "</p>";
        echo "<input type='text' name='respuesta_" . $row['cod'] . "' required>";
    }
} else {
    echo "No hay preguntas disponibles.";
}
?>