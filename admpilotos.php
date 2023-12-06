<?php
$servername = "localhost";
$username = "Wagner";
$password = "123";
$dbname = "pap";

// Crie uma conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Verifique se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Coleta os dados do formulário
    $id_pilotos = $_POST['id_pilotos'];
    $nome = $_POST['nome'];
    $data_nascimento = $_POST['data_nascimento'];
    $nacionalidade = $_POST['nacionalidade'];
    $foto = $_POST['foto'];
   
    // Prepare e execute a declaração
    $stmt = $conn->prepare("INSERT INTO pilotos (id_pilotos, nome, data_nascimento, nacionalidade, foto) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("issss", $id_pilotos, $nome, $data_nascimento, $nacionalidade, $foto);

    if ($stmt->execute()) {
        echo "Registro inserido com sucesso";
    } else {
        echo "Erro ao inserir registro: " . $stmt->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Adicionar Piloto e Prêmios</title>
</head>
<body>

<h2>Adicionar Piloto</h2>

<form  method="post">
  ID Pilotos:<br>
  <input type="text" name="id_pilotos">
  <br>
  Nome:<br>
  <input type="text" name="nome">
  <br>
  Data de Nascimento:<br>
  <input type="text" name="data_nascimento">
  <br>
  Nacionalidade:<br>
  <input type="text" name="nacionalidade">
  <br>
  Foto:<br>
  <input type="file" name="foto">
  <br>
  <br><br>
  <input type="submit" value="Adicionar Piloto">
</form>
<form action="pagina_admin.php">
    <button type="submit">Voltar</button>

</body>
</html>
