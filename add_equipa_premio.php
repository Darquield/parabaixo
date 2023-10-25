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

// Consulta SQL para selecionar os dados da tabela equipa_premio
$sql = "SELECT * FROM equipa_premio";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html>
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

<body>

<h2>Dados da Tabela Equipa-Premio</h2>

<table>
  <tr>
    <th> ID Prêmio</th>
    <th>ID Equipas</th>
  </tr>
  <?php
  if ($result && $result->num_rows > 0) {
    // Saída de cada linha de dados
    while($row = $result->fetch_assoc()) {
      echo "<tr>";
      echo "<td>" . $row["id_premio"] . "</td>"; // Corrigido para id_premio
      echo "<td>" . $row["id_equipas"] . "</td>";
      echo "</tr>";
    }
  } else {
    echo "<tr><td colspan='2'>0 resultados</td></tr>";
  }
  ?>
</table>
<form action="equipas.php">
    <button type="submit">Voltar</button>

</body>
</html>

<?php
// Fechar conexão
$conn->close();
?>
