<?php
$sql = "SELECT nombreUsu, TIMESTAMPDIFF(SECOND, tInicio, tFin) AS tiempo FROM usuarios ORDER BY tiempo ASC";
$result = $conn->query($sql);

while ($row = $result->fetch_assoc()) {
    echo "<p>" . $row['nombreUsu'] . ": " . $row['tiempo'] . " segundos</p>";
}
?>
