<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Adicionar Piloto</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <!-- Seu cabeçalho aqui -->
    </header>

    <main>
        <section id="Adicionar Piloto" style="font-size: 24px;">
            <h2>Adicionar Novo Piloto</h2>
            
            <form action="processar_adicao.php" method="post">
                <label for="nome">Nome do Piloto:</label>
                <input type="text" id="nome" name="nome" required><br>

                <label for="equipe">Equipe:</label>
                <input type="text" id="equipe" name="equipe" required><br>

                <label for="numero">Número:</label>
                <input type="text" id="numero" name="numero" required><br>

                <label for="bandeira">Bandeira (Código do País):</label>
                <input type="text" id="bandeira" name="bandeira" required><br>

                <label for="nacionalidade">Nacionalidade:</label>
                <input type="text" id="nacionalidade" name="nacionalidade" required><br>

                <label for="imagem">URL da Imagem:</label>
                <input type="text" id="imagem" name="imagem" required><br>

                <label for="descricao">Descrição:</label>
                <textarea id="descricao" name="descricao" required></textarea><br>

                <button type="submit">Adicionar Piloto</button>
            </form>
        </section>
    </main>

    <footer>
        &copy; 2023 Fórmula 1
    </footer>
</body>
</html>
