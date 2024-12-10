<?php
$host = "localhost";
$usuario = "root";
$password = "";
$dbname = "kahut";
// $conn = new mysqli($host, $usuario, $password, $dbname);

try {
    $cnn = new PDO("mysql:host=$host;dbname=$dbname;charset=UTF8", $usuario, $password);

} catch (PDOException $e) {
    echo "Ha ocurrido el error: " . $e->getMessage();

}
?>