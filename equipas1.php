<?php
$servername = "localhost";
$username = "Wagner";
$password = "123";
$dbname = "pap";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

// Inserir dados na tabela 'quipas'
$sql = "INSERT INTO quipas (Equipa, Descricao, PilotoPrincipal, SegundoPiloto, Imagem1, Imagem2, Imagem3) VALUES
    ('Mercedes', 'A Equipe Mercedes é uma das equipes mais bem-sucedidas da Fórmula 1, com vários títulos mundiais.', 'Lewis Hamilton', 'George Russell', 'image/MR.jpg', 'image/LHGR.jpg', 'image/44.jpg'),
    ('Red Bull Racing', 'A Red Bull Racing é conhecida por sua abordagem agressiva nas corridas de Fórmula 1.', 'Max Verstappen', 'Sergio Pérez', 'image/Rb.jpg', 'image/du.jpg', 'image/rb18-1.jpg'),
    ('Scuderia Ferrari', 'A Scuderia Ferrari é uma das equipes mais icônicas e históricas da Fórmula 1.', 'Charles Leclerc', 'Carlos Sainz Jr.', 'image/ff.jpg', 'image/CC.jpg', 'image/f23.jpeg'),
    ('McLaren F1 Team', 'A McLaren F1 Team é conhecida por sua tradição e inovação no esporte.', 'Lando Norris', 'Oscar Piastri', 'image/ML.png', 'image/pl.jpg', 'image/ll.jpg'),
    ('Aston Martin Cognizant Formula One Team', 'A equipe Aston Martin retorna à Fórmula 1 com uma nova identidade.', 'Fernando Alonso', 'Lance Stroll', 'image/astom.jpg', 'image/FL.jpg', 'image/ast.jpeg'),
    ('Alpine F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Pierre Gasly', 'Esteban Ocon', 'image/alp.jpg', 'image/og.jpg', 'image/ap.jpg'),
    ('Willians F1 Team', 'A Williams Grand Prix Engineering Limited, competindo como Williams Racing, é uma equipe e construtor de Fórmula 1 fundada por Frank Williams e Patrick Head.', 'Alexandre Albon', 'Logan Sargento', 'image/w.jpg', 'image/al.jpg', 'image/wi.jpg'),
    ('Haas F1 Team', 'Haas Formula LLC, atualmente competindo como MoneyGram Haas F1 Team, é uma equipe de Fórmula 1 estabelecida por Gene Haas em abril de 2014. A equipe planejou sua estreia no início da temporada de 2015, mas optou por adiar a sua entrada para a temporada de 2016.', 'Kevin Magnussen', 'Nico Hulkenberg', 'image/haas.jpg', 'image/h.jpg', 'image/ha.jpg'),
    ('Alfa Romeo F1 Team', 'A marca Alfa Romeo retornou para a Fórmula 1 na temporada de 2018 como patrocinador título da equipe Sauber.', 'Valtteri Bottas', 'Zhou Guanyu', 'image/loalfa.jpg', 'image/bz.jpg', 'image/c43.jpg'),
    ('Alfa Tauri F1 Team', 'O Alpine F1 Team representa a Renault na Fórmula 1.', 'Daniel Ricciardo', 'Yuki Tsunoda', 'image/alfa.jpg', 'image/dt.jpg', 'image/alf.jpg')
    ";
if ($conn->multi_query($sql) === TRUE) {
    echo "";
} else {
    echo "Erro na inserção de dados: " . $conn->error;
}

// Consulta para obter dados da tabela 'quipas'
$sql_select = "SELECT * FROM quipas";
$result_select = $conn->query($sql_select);

// Verificar se houve erro na consulta
if (!$result_select) {
    die("Erro na consulta SQL: " . $conn->error);
}

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Equipes da Fórmula 1</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<header>
<div id="logo">
        <a href="index1.php"><img src="./image/PK_white.png" alt="" width="100"> <h1>Fórmula1Passionados</h1></a>

        </div>
        <div id="menu">
            <nav>
            <ul class="nav-list">
                    <li >
                        <a href="index.php">Página Inicial</a>
                    </li>
                    <li class="first current_page_item">
                        <a href="equipas1.php">Equipas</a>
                    </li>
                    <li>
                        <a href="pilotos1.php">Pilotos</a>
                    </li>
                    <li >
                        <a href="circuitos1.php">Circuitos</a>
                    </li>
                    <li >
                        <a href="loginn.php">Login</a>
                    </li>
            
                </ul>
            </nav>
   

</header>

<main>
<form action="add_equipa_premio.php">
    <button type="submit">Ver Premios das Equipas</button>
</form>
 <?php
    while ($row = $result_select->fetch_assoc()) {
        echo "<section id='equipe-" . strtolower(str_replace(' ', '', $row['Equipa'])) . "'>";
        echo "<h2>" . $row["Equipa"] . "</h2>";
        echo "<p>" . $row["Descricao"] . "</p>";
        echo "<p>Piloto Principal: " . $row["PilotoPrincipal"] . "</p>";
        echo "<p>Segundo Piloto: " . $row["SegundoPiloto"] . "</p>";
        echo '<div style="display: flex; justify-content: space-between;">';
        echo '<img src="' . $row["Imagem1"] . '" alt="Imagem 1" width="400">';
        echo '<img src="' . $row["Imagem2"] . '" alt="Imagem 2" width="400">';
        echo '<img src="' . $row["Imagem3"] . '" alt="Imagem 3" width="400">';
        echo '</div>';
        echo "<hr>";
        echo "</section>";
    }
    ?>
    
</main>

<footer>
    &copy; 2023 Fórmula 1
</footer>

</body>
</html>
<?php
$conn->close();
?>
