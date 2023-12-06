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
    $id_pilotos = $_POST['id_pilotos'];
    $id_premio = $_POST['id_premios'];

    // Inserir os dados no banco de dados
    $sql = "INSERT INTO premio_piloto (id_pilotos, id_premio)
    VALUES ('$id_pilotos', '$id_premio')";

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

<h2>Adicionar Piloto-Premio</h2>

<form method="post">
  ID Pilotos:<br>
  <input type="text" name="id_pilotos">
  <br>
  ID Prêmios:<br>
  <input type="text" name="id_premios">
  <br><br>
  <input type="submit" value="Adicionar">
</form>
<form action="pagina_admin.php">
    <button type="submit">Voltar</button>
</form>

</body>
</html>
