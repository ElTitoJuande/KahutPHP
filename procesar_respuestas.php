<?php
require_once 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_usuario = $_POST['id_usuario'];
    $preguntas_respondidas = 0;
    $respuestas_correctas = 0;

    foreach ($_POST as $key => $value) {
        if (strpos($key, 'respuesta_') === 0) {
            $cod_pregunta = str_replace('respuesta_', '', $key);
            $respuesta_usuario = $value;

            $sql = "SELECT respuesta FROM preguntas WHERE cod = :cod";
            $stmt = $conexion->prepare($sql);
            $stmt->bindParam(':cod', $cod_pregunta, PDO::PARAM_INT);
            $stmt->execute();
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($respuesta_usuario == $row['respuesta']) {
                $respuestas_correctas++;
            }

            $preguntas_respondidas++;
        }
    }

    if ($preguntas_respondidas == 5) {
        $sql = "UPDATE usuarios SET tFin = NOW() WHERE id = :id";
        $stmt = $conexion->prepare($sql);
        $stmt->bindParam(':id', $id_usuario, PDO::PARAM_INT);
        $stmt->execute();

        header("Location: ranking.php");
        exit();
    }
}
?>