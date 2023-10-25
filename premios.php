<?php
$servername = "localhost";
$username = "Wagner";
$password = "123";
$dbname = "pap";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Consulta SQL para selecionar todos os registros da tabela
$sql = "SELECT * FROM premio";
$result = $conn->query($sql);

if (!$result) {
    trigger_error('Invalid query: ' . $conn->error);
}

?>

<!DOCTYPE html>
<html>
<body>

<h2>Dados da Tabela Prêmios</h2>

<table>
  <tr>
    <th>ID Prêmio</th>
    <th>Descrição</th>
    <th>Data</th>
  </tr>
  <?php
  if ($result->num_rows > 0) {
    // Saída de cada linha de dados
    while($row = $result->fetch_assoc()) {
      echo "<tr>";
      echo "<td>" . $row["id_premio"] . "</td>";
      echo "<td>" . $row["descricao"] . "</td>";
      echo "<td>" . $row["data"] . "</td>";
      echo "</tr>";
    }
  } else {
    echo "0 resultados";
  }
  ?>
</table>

</body>
</html>

<?php
// Fechar conexão
$conn->close();
?>
