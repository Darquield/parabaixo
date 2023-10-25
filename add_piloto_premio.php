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

// Consulta SQL para selecionar os dados da tabela piloto_premio
$sql = "SELECT * FROM piloto_premio";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html>
<body>
<head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }

  h2 {
    color: #333;
  }

  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }
</style>
</head>

<h2>Dados da Tabela Piloto-Premio</h2>

<table>
  <tr>

    <th>Pilotos</th>
    <th>Premios</th>
  </tr>
  <?php
  if ($result && $result->num_rows > 0) {
    // Saída de cada linha de dados
    while($row = $result->fetch_assoc()) {
      echo "<tr>";
      
      echo "<td>" . $row["id_pilotos"] . "</td>";
      echo "<td>" . $row["id_premio"] . "</td>";
      echo "</tr>";
    }
  } else {
    echo "<tr><td colspan='3'>0 resultados</td></tr>";
  }
  ?>
</table>
<form action="pilotos.php">
    <button type="submit">Voltar</button>

</body>
</html>

<?php
// Fechar conexão
$conn->close();
?>


