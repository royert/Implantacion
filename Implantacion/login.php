<?php

  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location: /Implantacion');
  }
  require 'database.php';

  if (!empty($_POST['Usuario']) && !empty($_POST['Password'])) {
    $records = $conn->prepare('SELECT IdAdmin, Nombre, Password, Usuario, Status FROM admin. sistema WHERE Usuario = Usuario');
    $records->bindParam('Usuario', $_POST['Usuario']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['Password'], $results['Password'])) {
      $_SESSION['user_id'] = $results['IdAdmin'];
      header("Location: /Implantacion");
    } else {
      $message = 'Lo siento, algun dato es incorrecto';
    }
  }

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
   

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <img src="assets/images/logo1.png" alt="Logo" width="400" height="150">



    <form action="login.php" method="POST">
      <input name="Usuario" type="text" placeholder="Ingrese su Usuario">
      <input name="Password" type="password" placeholder="Ingrese su Contraseña">
      <input type="submit" value="Submit">
    </form>
  </body>
</html>
