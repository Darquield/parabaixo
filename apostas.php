<?php
// Configurações de conexão com o banco de dados
$servername = "localhost";
$username = "Wagner";
$password = "123";
$dbname = "pap";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Tratar o formulário de apostas
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (isset($_POST['pilotoEscolhido'])) {
    $pilotoEscolhido = $_POST['pilotoEscolhido'];

    // Preparar e executar a consulta de inserção
    $sql = "INSERT INTO apostas (piloto) VALUES ('$pilotoEscolhido')";

    if ($conn->query($sql) === TRUE) {
      echo "Aposta registrada com sucesso!";
    } else {
      echo "Erro ao registrar a aposta: " . $conn->error;
    }
  } else if (isset($_POST['votoPilotoMes'])) {
    $votoPilotoMes = $_POST['votoPilotoMes'];

    // Preparar e executar a consulta de inserção
    $sql = "INSERT INTO votos (piloto) VALUES ('$votoPilotoMes')";

    if ($conn->query($sql) === TRUE) {
      echo "Voto registrado com sucesso!";
    } else {
      echo "Erro ao registrar o voto: " . $conn->error;
    }
  }
}

// Consulta SQL para recuperar o número de apostas para cada piloto
$sqlApostas = "SELECT piloto, COUNT(*) as num_apostas FROM apostas GROUP BY piloto";
$resultApostas = $conn->query($sqlApostas);

$labels = array();
$data = array();

if ($resultApostas->num_rows > 0) {
    // Saída de dados de cada linha
    while($row = $resultApostas->fetch_assoc()) {
        array_push($labels, $row["piloto"]);
        array_push($data, $row["num_apostas"]);
    }
}

// Fechar a conexão
$conn->close();
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apostas Fórmula 1</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        
            <div id="logo">
                <img src="./image/PK_white.png" alt="" width="100">
    
                <a href="#"><h1>Fórmula1Passionados</h1></a>
            </div>
            <div id="menu">
                <nav>
                <ul class="nav-list">
                    <li >
                        <a href="index1.php">Página Inicial</a>
                    </li>
                    <li >
                        <a href="equipas.php">Equipas</a>
                    </li>
                    <li>
                        <a href="pilotos.php">Pilotos</a>
                    </li>
                    <li >
                        <a href="circuitos.php">Circuitos</a>
                    </li>
                    <li class="first current_page_item">
                        <a href="Apostas.php">Apostas</a>
                    </li>
                    <li>
                        <a href="perfil.php">Conta</a>
                    </li>
                </ul>
                </nav>
    </header>

    <main>
        
        <section id="apostasCorrida">
            <h2>Apostas na Próxima Corrida</h2>
            <form id="formApostas">
                <label for="pilotoEscolhido">Escolha seu piloto favorito:</label>
                <select id="pilotoEscolhido" name="pilotoEscolhido">
                    <!-- Opções de pilotos -->
                    <option value="Escolha">Escolha</option>
                    <option value="Lewis Hamilton">Lewis Hamilton</option>
                    <option value="Max Verstappen">Max Verstappen</option>
                    <option value="Sergio Perez">Sergio Perez</option>
                    <option value="Fernando Alonso">Fernando Alonso</option>
                    <option value="Charles Leclerc">Charles Leclerc</option>
                    <option value="George Russell">George Russell</option>
                    <option value="Lando Norris">Lando Norris</option>
                    <option value="Oscar Piastri">Oscar Piastri</option>
                    <option value="Yuki Tsunoda"> Yuki Tsunoda</option>
                    <option value="Daniel Ricciardo">Daniel Ricciardo</option>
                    <option value="Carlos Sainz">Logan Sargent</option>
                    <option value="Carlos Sainz">Lance Stroll</option>
                    <option value="Carlos Sainz">Pierre Gasly</option>
                    <option value="Carlos Sainz">Esteban Ocon</option>
                    <option value="Alexandre">Alexandre Albon</option>
                    <option value="Valterri">Valtteri Bottas</option>
                    <option value="Nico">Nico Hulkenberg</option>
                    <option value="Zhou">Zhou Guanyu</option>
                    <option value="Kevin">Kevin Magnussen</option>
                    <option value="Carlos Sainz">Carlos Sainz</option>
                    <!-- Adicione mais pilotos conforme necessário -->
                </select>
                
              <button>
                   <span class="circle1"></span>
                   <span class="circle2"></span>
                   <span class="circle3"></span>
                   <span class="circle4"></span>
                   <span class="circle5"></span>
                   <span class="text">Apostar</span>
              </button>
              
            </form>
        
        </section>

        <section id="votacaoPilotoMes">
            <h2>Votação para Piloto do Mês</h2>
            <p>Vote no seu piloto favorito deste mês:</p>
            <ul>
                <li>
                    <label for="piloto1"><input type="radio" id="piloto1" name="votoPilotoMes" value="Piloto 1"> Piloto 1</label>
                </li>
                <li>
                    <label for="piloto2"><input type="radio" id="piloto2" name="votoPilotoMes" value="Piloto 2"> Piloto 2</label>
                </li>
                <!-- Adicione mais pilotos para votação conforme necessário -->
            </ul>
            
            <button>
                
    
                <span class="circle1"></span>
                <span class="circle2"></span>
                <span class="circle3"></span>
                <span class="circle4"></span>
                <span class="circle5"></span>
                <span class="text">Votar</span>
           </button>
        </section>
        <section id="noticiaComVideo">
            <div class="coluna-video">
                <h2>Vídeo em Destaque</h2>
                <div class="video">
                    <iframe width="560" height="315" src="https://www.formula1.com/en/latest/video.race-highlights-2023-japanese-grand-prix.1777902388988699618.html" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="coluna-noticia">
                <h2>Últimas Notícias</h2>
                <article>
                    <h3>Título da Notícia</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vehicula dui eu lectus consequat, nec blandit justo volutpat. Cras nec lacinia libero.</p>
                    <p>Leia mais <a href="https://www.formula1.com/en/latest/article.we-want-him-in-the-car-next-year-vowles-says-williams-want-sargeant-to.5SpN1ckubMYRmcPftJ1HUa.html">aqui</a>.</p>
                </article>
                <!-- Adicione mais notícias conforme necessário -->
            </div>
        </section>
        
        
        
    </main>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    // Função para embaralhar aleatoriamente um array
    function shuffleArray(array) {
        for (let i = array.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [array[i], array[j]] = [array[j], array[i]];
        }
    }

    // Nomes dos pilotos
    const nomesPilotos = [
        'Max Verstappen',
        'George Russell',
        'Lewis Hamilton',
        'Fernando Alonso',
        'Charles Leclerc',
        'Oscar Piastri',
        'Pierre Gasly',
        'Esteban Ocon',
        'Valtteri Bottas',
        'Lando Norris',
        'Yuki Tsunoda',
        'Carlos Sainz Jr.',
        'Sergio Pérez',
        'Alexander Albon',
        'Nico Hülkenberg',
        'Logan Sargeant',
        'Lance Stroll',
        'Liam Lawson',
        'Kevin Magnussen',
        'Zhou Guanyu'
    ];

    // Embaralhe a ordem dos nomes dos pilotos
    shuffleArray(nomesPilotos);

    // Dados de exemplo para o gráfico de barras
    const dadosEstatisticas = {
        labels: nomesPilotos,
        datasets: [{
            label: 'Número de Apostas',
            data: nomesPilotos.map(() => Math.floor(Math.random() * 21)), // Números de 0 a 20 para cada piloto
            backgroundColor: nomesPilotos.map(() => 'rgba(75, 192, 192, 0.2)'),
            borderColor: nomesPilotos.map(() => 'rgba(75, 192, 192, 1)'),
            borderWidth: 1,
        }],
    };

    // Configuração do gráfico de barras
    const configEstatisticas = {
        type: 'bar',
        data: dadosEstatisticas,
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Número de Apostas',
                    },
                },
            },
        },
    };

    // Crie um elemento canvas para o gráfico
    const canvasEstatisticas = document.createElement('canvas');
    canvasEstatisticas.id = 'graficoEstatisticas';

    // Adicione o canvas à seção de apostas
    document.getElementById('apostasCorrida').appendChild(canvasEstatisticas);

    // Renderize o gráfico no canvas
    const ctxEstatisticas = document.getElementById('graficoEstatisticas').getContext('2d');
    new Chart(ctxEstatisticas, configEstatisticas);
</script>


    <footer>
        &copy; 2023 Fórmula 1
    </footer>
</body>
</html>
