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

// Consulta SQL para selecionar todos os dados da tabela de pilotos
$sql = "SELECT * FROM pilotos";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pilotos da Fórmula 1</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <!-- Seu cabeçalho aqui -->
    </header>

    <main>
        <section id="Atuais Pilotos de 2023" style="font-size: 34px;">
            <h2>Pilotos de F1 2023</h2>
            <p>Confira a escalação oficial da F1 desta temporada. Análise completa de pilotos, pontos e posições atuais. Siga seus pilotos de F1 favoritos dentro e fora da pista.</p>
            <form action="add_piloto_premio.php">
                <button type="submit">Ver Prêmios</button>
            </form>

            <div class="pilotos-grid">
                <?php
                if ($result && $result->num_rows > 0) {
                    // Saída de cada linha de dados
                    while ($row = $result->fetch_assoc()) {
                        echo '<div class="piloto-info">';
                        echo '<div class="texto-direita">';
                        echo '<p>' . $row["descricao"] . '</p>';
                        echo '</div>';
                        echo '<div class="piloto-nome">' . $row["nome"] . '</div>';
                        echo '<div class="piloto-equipe">' . $row["equipe"] . '</div>';
                        echo '<div class="piloto-numero">' . $row["numero"] . '</div>';
                        echo '<img class="piloto-bandeira" src="image/' . $row["bandeira"] . '.png" alt="Bandeira do ' . $row["nacionalidade"] . '">';
                        echo '<img src="image/' . $row["imagem"] . '" alt="Imagem do ' . $row["nome"] . '" width="200">';
                        echo '</div>';
                    }
                } else {
                    echo "<p>Não há pilotos disponíveis no momento.</p>";
                }
                ?>
            </div>
        </section>
    </main>

    <footer>
        &copy; 2023 Fórmula 1
    </footer>
</body>
</html>

<?php
// Fechar conexão
$conn->close();
?>
