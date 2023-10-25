<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css.l.css">
    <title>Login</title>
</head>
<body>
    <header>
        <div id="logo">
            <img src="./image/PK_white.png" alt="" width="100">

           
        </div>
        <div id="menu">
            <nav>
                <ul class="nav-list">
                    <li >
                        <a href="index.php">Página Inicial</a>
                    </li>
                    <li class="first current_page_item">
                        <a href="login.php">Login</a>
                    </li>
                   
                </ul>
            </nav>
    </header>
    
    <div class="login-box">
        <p>Login</p>
        <form method="POST" action="login.php">
          <div class="user-box">
            <input required="" name="email" type="text">
            <label>Email</label>
          </div>
          <div class="user-box">
            <input required="" name="senha" type="password">
            <label>Password</label>
          </div>
          <input type="submit" value="submit">
        </form>
        <p>Don't have an account? <a href="registroo.php" class="a2">Sign up!</a></p>
        <li><a href="loginn.php">Login</a></li>

      </div>
      
</body>
</html>
