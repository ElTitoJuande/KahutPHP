<?php
include 'conexion.php';

$id_usuario = $_GET['id'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        // Obtener las respuestas correctas de la base de datos
        $sql = "SELECT cod, respuesta_correcta FROM preguntas";
        $stmt = $conn->query($sql);
        $respuestas_correctas = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Convertir las respuestas correctas en un array asociativo
        $mapa_respuestas = [];
        foreach ($respuestas_correctas as $respuesta) {
            $mapa_respuestas[$respuesta['cod']] = $respuesta['respuesta_correcta'];
        }

        // Contar las respuestas correctas del usuario
        $puntaje = 0;
        foreach ($_POST as $clave => $valor) {
            if (strpos($clave, 'respuesta_') === 0) {
                $cod_pregunta = str_replace('respuesta_', '', $clave);
                if (isset($mapa_respuestas[$cod_pregunta]) && $mapa_respuestas[$cod_pregunta] === $valor) {
                    $puntaje++;
                }
            }
        }

        // Registrar el tiempo de finalización y el puntaje en la base de datos
        $sql_update = "UPDATE usuarios SET tFin = NOW(), puntaje = :puntaje WHERE id = :id_usuario";
        $stmt_update = $conn->prepare($sql_update);
        $stmt_update->bindParam(':puntaje', $puntaje, PDO::PARAM_INT);
        $stmt_update->bindParam(':id_usuario', $id_usuario, PDO::PARAM_INT);
        $stmt_update->execute();

        // Redirigir al archivo de resultados
        header("Location: resultados.php");
        exit();
    } catch (PDOException $e) {
        echo "Error en la base de datos: " . $e->getMessage();
    }
} else {
    echo "Método no permitido.";
}
?>
