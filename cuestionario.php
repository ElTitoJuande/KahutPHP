<?php
include 'conexion.php';

$id_usuario = $_GET['id'];

try {
    // Obtener 5 preguntas aleatorias
    $sql = "SELECT * FROM preguntas ORDER BY RAND() LIMIT 5";
    $stmt = $conn->query($sql);
    $preguntas = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if (count($preguntas) > 0) {
        // Abrir el formulario y enviarlo a guardar_resultados.php
        echo "<form method='POST' action='guardar_resultados.php?id=" . htmlspecialchars($id_usuario) . "'>";
        
        foreach ($preguntas as $pregunta) {
            echo "<p>" . htmlspecialchars($pregunta['enunciado']) . "</p>";
            echo "<label><input type='radio' name='respuesta_" . htmlspecialchars($pregunta['cod']) . "' value='A' required> " . htmlspecialchars($pregunta['opcion_a']) . "</label><br>";
            echo "<label><input type='radio' name='respuesta_" . htmlspecialchars($pregunta['cod']) . "' value='B'> " . htmlspecialchars($pregunta['opcion_b']) . "</label><br>";
            echo "<label><input type='radio' name='respuesta_" . htmlspecialchars($pregunta['cod']) . "' value='C'> " . htmlspecialchars($pregunta['opcion_c']) . "</label><br>";
            echo "<label><input type='radio' name='respuesta_" . htmlspecialchars($pregunta['cod']) . "' value='D'> " . htmlspecialchars($pregunta['opcion_d']) . "</label><br>";
            echo "<hr>";
        }

        // Botón para enviar respuestas
        echo "<input type='submit' value='Enviar'>";
        echo "</form>";
    } else {
        echo "No hay preguntas disponibles.";
    }
} catch (PDOException $e) {
    echo "Error en la base de datos: " . $e->getMessage();
}
?>
