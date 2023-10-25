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
    $id_circuitos = $_POST['id_circuitos'];
    $descricao = $_POST['descricao'];
    $comprimento_pista = $_POST['comprimento_pista'];

    // Inserir os dados no banco de dados
    $sql = "INSERT INTO circuitos (id_circuitos, descricao, comprimento_pista)
    VALUES ('$id_circuitos', '$descricao', '$comprimento_pista')";

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

<h2>Adicionar Circuito</h2>

<form action="add_circuito.php" method="post">
  ID Circuito:<br>
  <input type="text" name="id_circuitos">
  <br>
  Descrição:<br>
  <input type="text" name="descricao">
  <br>
  Comprimento da Pista (em metros):<br>
  <input type="text" name="comprimento_pista">
  <br><br>
  <input type="submit" value="Adicionar">
</form>
<form action="pagina_admin.php">
    <button type="submit">Voltar</button>
</body>
</html>
