<?php
// Certifique-se de que a sessão esteja iniciada
session_start();

// Verifique se o usuário está autenticado (verifique sua lógica de autenticação)
if (!isset($_SESSION['user_id'])) {
    // Redirecione para a página de login se o usuário não estiver autenticado
    header("Location: loginn.php");
    exit();
}

// Conecte-se ao banco de dados (substitua com suas próprias credenciais)
include_once('conexao.php');

// ID do usuário da sessão
$user_id = $_SESSION['user_id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Receba os dados do formulário
    $nome = $_POST['nome'];
    $email = $_POST['email'];

    // Aqui você pode adicionar validação de dados, como verificar se o email é válido ou outros campos, conforme necessário.

    // Atualize as informações do perfil no banco de dados
    $sql = "UPDATE usuarios SET nome = '$nome', email = '$email' WHERE id = $user_id";

    if ($conn->query($sql) === TRUE) {
        // Redirecione de volta para a página de perfil com uma mensagem de sucesso
        header("Location: prefile.php?mensagem=Perfil atualizado com sucesso");
        
    } else {
        // Se houver um erro na consulta SQL, você pode redirecionar de volta com uma mensagem de erro
        header("Location: prefile.php?erro=Erro ao atualizar o perfil: " . $conn->error);
    }

    $conn->close();
} else {
    // Redirecione para a página de perfil se o método de solicitação não for POST
    header("Location: prefile.php");
}
?>