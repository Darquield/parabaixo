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
$sql = "SELECT * FROM premio_piloto";
$result = $conn->query($sql);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $search = $_POST["search"];
  $search = mysqli_real_escape_string($conn, $search);

  // Consulta SQL para selecionar os dados da tabela piloto_premio com base na pesquisa
  $sql = "SELECT * FROM premio_piloto WHERE id_pilotos LIKE '%$search%' OR id_premio LIKE '%$search%'";
  $result = $conn->query($sql);
}

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
   /* Estilo para o formulário de pesquisa */
   form {
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 8px;
            width: 200px;
        }

        button {
            padding: 8px 12px;
            background-color: #ff0000;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
</style>
</head>

<h2>Dados da Tabela Piloto-Premio</h2>
 <!-- Formulário de pesquisa -->
 <form method="post" action="">
        <input type="text" name="search" >
        <button type="submit">Pesquisar</button>
    </form>

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


