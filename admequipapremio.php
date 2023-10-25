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
    $id_premio = $_POST['id_premio']; // Corrigido para id_premio
    $id_equipas = $_POST['id_equipas'];

    // Inserir os dados no banco de dados
    $sql = "INSERT INTO equipa_premio (id_premio, id_equipas) VALUES ('$id_premio', '$id_equipas')";

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

<h2>Adicionar Prêmios Das Equipas</h2>

<form method="post">
  ID Prêmio:<br>
  <input type="text" name="id_premio"> <!-- Corrigido para id_premio -->
  <br>
  ID Equipas:<br>
  <input type="text" name="id_equipas">
  <br><br>
  <input type="submit" value="Adicionar">
</form>
<form action="pagina_admin.php">
    <button type="submit">Voltar</button>
</form>


</body>
</html>
