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

// Verificar se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Coletar os dados do formulário
    $id_premio = $_POST['id_premio'];
    $descricao = $_POST['descricao'];
    $data = $_POST['data'];

    // Inserir os dados no banco de dados
    $sql = "INSERT INTO premio (id_premio, descricao, data)
    VALUES ('$id_premio', '$descricao', '$data')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro inserido com sucesso";
    } else {
        echo "Erro ao inserir registro: " . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<body>

<h2>Adicionar Prêmio</h2>

<form action="premios.php" method="post">
  ID Prêmio:<br>
  <input type="text" name="id_premio">
  <br>
  Descrição:<br>
  <input type="text" name="descricao">
  <br>
  Data:<br>
  <input type="date" name="data">
  <br><br>
  <input type="submit" value="Adicionar">
</form>
<form action="pagina_admin.php">
    <button type="submit">Voltar</button>

</body>
</html>
