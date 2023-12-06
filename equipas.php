<?php 
include_once('conexao.php');

$queryEquipas = "SELECT e.id_equipas, e.nome, e.descricao, p1.nome AS piloto_principal, p2.nome AS piloto_secundario
                 FROM equipas e
                 LEFT JOIN pilotos p1 ON e.piloto_principal = p1.id_pilotos
                 LEFT JOIN pilotos p2 ON e.piloto_secundario = p2.id_pilotos";

$resultEquipas = $conn->query($queryEquipas);

$queryPilotos = "SELECT * FROM pilotos";
$resultPilotos = $conn->query($queryPilotos);

$conn->close();
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
                        <a href="index1.php">Página Inicial</a>
                    </li>
                    <li class="first current_page_item">
                        <a href="equipas.php">Equipas</a>
                    </li>
                    <li>
                        <a href="pilotos.php">Pilotos</a>
                    </li>
                    <li >
                        <a href="circuitos.php">Circuitos</a>
                    </li>
                    <li>
                        <a href="Apostas.php">Apostas</a>
                    </li>
                    <li>
                        <a href="perfil.php">Conta</a>
                    </li>
            
                </ul>
            </nav>
    </header>

    <main>
    <form action="add_equipa_premio.php">
    <button type="submit">Ver Premios das Equipas</button>
</form>




            
            
            
            
           
            
            

    <?php
if ($resultEquipas->num_rows > 0) {
    echo "<ul>";
    while ($row = $resultEquipas->fetch_assoc()) {
        echo "<h2>" . $row['nome'] . "</h2>";
        echo "<p>" . $row['descricao'] . "</p>";
        echo "<p>Piloto Principal: " . $row['piloto_principal'] . "</p>";
        echo "<p>Piloto Secundário: " . $row['piloto_secundario'] . "</p>";
    }
    echo "</ul>";
} else {
    echo "Não foram encontrados resultados para equipas.";
}
?>
    </div>
    <hr>
        
        
        



        <!-- Adicione mais equipes aqui -->
  
    </main>

    <footer>
        &copy; 2023 Fórmula 1
    </footer>
</body>
</html>
