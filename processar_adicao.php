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

// Verifique se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Certifique-se de que todas as variáveis estejam definidas antes de acessar seus índices
    $nome = isset($_POST["nome"]) ? $_POST["nome"] : "";
    $equipe = isset($_POST["equipe"]) ? $_POST["equipe"] : "";
    $numero = isset($_POST["numero"]) ? $_POST["numero"] : 0; // Defina um valor padrão se não estiver definido
    $bandeira = isset($_POST["bandeira"]) ? $_POST["bandeira"] : "";
    $nacionalidade = isset($_POST["nacionalidade"]) ? $_POST["nacionalidade"] : "";
    $imagem = isset($_POST["imagem"]) ? $_POST["imagem"] : "";
    $descricao = isset($_POST["descricao"]) ? $_POST["descricao"] : "";

    // Inserir os dados na tabela de pilotos
    $sql = "INSERT INTO pilotos (nome, equipe, numero, bandeira, nacionalidade, imagem, descricao)
            VALUES ('$nome', '$equipe', '$numero', '$bandeira', '$nacionalidade', '$imagem', '$descricao')";

    if ($conn->query($sql) === TRUE) {
        echo "Piloto adicionado com sucesso!";
    } else {
        echo "Erro ao adicionar piloto: " . $conn->error;
    }
    
}
$conn->close();
?>
