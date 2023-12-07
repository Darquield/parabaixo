<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include_once('conexao.php');

// Processa o formulário de adicionar piloto se for enviado
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["adicionar_piloto"])) {
    $nomePiloto = $_POST["nome_piloto"];
    $equipePiloto = $_POST["equipe_piloto"];
    $numeroPiloto = $_POST["numero_piloto"];
    $bandeiraPiloto = $_POST["bandeira_piloto"];
    $nacionalidadePiloto = $_POST["nacionalidade_piloto"];
    $descricaoPiloto = $_POST["descricao_piloto"];

    // Processa o upload da foto
    $fotoPiloto = null;
    if ($_FILES["foto_piloto"]["error"] == UPLOAD_ERR_OK) {
        $fotoPiloto = basename($_FILES["foto_piloto"]["name"]);
        move_uploaded_file($_FILES["foto_piloto"]["tmp_name"], "/var/www/html/parabaixo/fotos_pilotos/" . $fotoPiloto);
    }

    // Processa o upload da bandeira
    $bandeiraNome = null;
    
    if ($_FILES["bandeira_piloto"]["error"] == UPLOAD_ERR_OK) {
        $bandeiraNome = basename($_FILES["bandeira_piloto"]["name"]);
        move_uploaded_file($_FILES["bandeira_piloto"]["tmp_name"], "/var/www/html/parabaixo/fotos_bandeiras/" . $bandeiraNome);
    }

    // Insere os dados na tabela "pilotos"
    $sql = "INSERT INTO pilotos (nome, equipe, numero, bandeira, nacionalidade, descricao, foto) 
        VALUES ('$nomePiloto', '$equipePiloto', '$numeroPiloto', '$bandeiraNome', '$nacionalidadePiloto', '$descricaoPiloto', '$fotoPiloto')";

    if ($conn->query($sql) === TRUE) {
        echo "Novo piloto adicionado com sucesso.";
    } else {
        echo "Erro ao adicionar piloto: " . $conn->error;
    }
}

// Processa o formulário de adicionar equipa se for enviado
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["adicionar_equipa"])) {
    $nomeEquipa = $_POST["nome_equipa"];
    $dataCriada = $_POST["data_criada"];
    $mail = $_POST["mail"];
    $descricao = $_POST["descricao"];
    $pilotoPrincipal = $_POST["piloto_principal"];
    $pilotoSecundario = $_POST["piloto_secundario"];

    $fotoEquipa = null;

    if (isset($_FILES["foto_equipa"]) && $_FILES["foto_equipa"]["error"] == UPLOAD_ERR_OK) {
        $fotoEquipa = basename($_FILES["foto_equipa"]["name"]);
        move_uploaded_file($_FILES["foto_equipa"]["tmp_name"], "/var/www/html/parabaixo/fotos_equipas/" . $fotoEquipa);
    }

    // Insere os dados na tabela "equipas"
    $sql = "INSERT INTO equipas (nome, data_criada, mail, descricao, piloto_principal, piloto_secundario, foto) 
            VALUES ('$nomeEquipa', '$dataCriada', '$mail', '$descricao', '$pilotoPrincipal', '$pilotoSecundario', '$fotoEquipa')";

    if ($conn->query($sql) === TRUE) {
        echo "Nova equipa adicionada com sucesso.";
    } else {
        echo "Erro ao adicionar equipa: " . $conn->error;
    }
}


// Consulta para obter todos os pilotos
$queryPilotos = "SELECT id_pilotos, nome, equipe, numero, bandeira, nacionalidade, descricao FROM pilotos";
$resultPilotos = $conn->query($queryPilotos);

// Consulta para obter todos as equipas
$queryEquipas = "SELECT id_equipas, nome, data_criada, mail, descricao, piloto_principal, piloto_secundario FROM equipas";
$resultEquipas = $conn->query($queryEquipas);

// Fecha a conexão
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pilotos e Equipas</title>
</head>
<body>

<h2>Adicionar Piloto</h2>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" enctype="multipart/form-data">
    Nome: <input type="text" name="nome_piloto" required><br>
    Equipe: <input type="text" name="equipe_piloto" required><br>
    Número: <input type="number" name="numero_piloto" required><br>
    Bandeira: <input type="file" name="bandeira_piloto" accept="image/*" required><br>
    Nacionalidade: <input type="text" name="nacionalidade_piloto" required><br>
    Foto: <input type="file" name="foto_piloto" accept="image/*" required><br>
    Descrição: <textarea name="descricao_piloto" rows="4" cols="50" required></textarea><br>
    <input type="submit" name="adicionar_piloto" value="Adicionar Piloto">
</form>


<h2>Adicionar Equipa</h2>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" enctype="multipart/form-data">
    Nome Equipa: <input type="text" name="nome_equipa" required><br>
    Data Criada: <input type="date" name="data_criada" required><br>
    Mail: <input type="email" name="mail" required><br>
    Descrição: <textarea name="descricao" rows="4" cols="50" required></textarea><br>
    Foto: <input type="file" name="foto_equipa" accept="image/*" required><br>
    Piloto Principal:
    <select name="piloto_principal">
        <?php
        $resultPilotos->data_seek(0);
        while ($row = $resultPilotos->fetch_assoc()) {
            echo "<option value='" . $row['id_pilotos'] . "'>" . $row['nome'] . "</option>";
        }
        ?>
    </select><br>

    Piloto Secundário:
    <select name="piloto_secundario">
        <?php
        $resultPilotos->data_seek(0);
        while ($row = $resultPilotos->fetch_assoc()) {
            echo "<option value='" . $row['id_pilotos'] . "'>" . $row['nome'] . "</option>";
        }
        ?>
    </select><br>

    <input type="submit" name="adicionar_equipa" value="Adicionar Equipa">
</form>




<h2>Todas as Equipas</h2>
<?php
// Verifica se há resultados
if ($resultEquipas->num_rows > 0) {
    // Exibe os dados em uma tabela
    echo "<table border='1'>";
    echo "<tr><th>ID Equipas</th><th>Nome</th><th>Data Criada</th><th>Mail</th><th>Descrição</th><th>Piloto Principal</th><th>Piloto Secundário</th></tr>";

    // Loop através dos resultados e exibe cada linha
    while ($row = $resultEquipas->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id_equipas'] . "</td>";
        echo "<td>" . $row['nome'] . "</td>";
        echo "<td>" . $row['data_criada'] . "</td>";
        echo "<td>" . $row['mail'] . "</td>";
        echo "<td>" . $row['descricao'] . "</td>";
        echo "<td>" . $row['piloto_principal'] . "</td>";
        echo "<td>" . $row['piloto_secundario'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "Não foram encontrados resultados para equipas.";
}
?>

</body>
</html>