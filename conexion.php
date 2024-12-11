<?php
$host = "localhost";
$usuario = "root";
$password = "";
$dbname = "kahut";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=UTF8", $usuario, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Ha ocurrido el error: " . $e->getMessage();

}
?>