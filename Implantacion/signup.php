<?php

  require 'database.php';

  $message = '';

  if (!empty($_POST['user']) && !empty($_POST['password'])  && !empty($_POST['email'])) {
    $sql = "INSERT INTO usuarios (user, password, email) VALUES (:user, :password, :email)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':user', $_POST['user']);
    $stmt->bindParam(':password', $password);
    $stmt->bindParam(':email', $_POST['email']);

    if ($stmt->execute()) {
      $message = 'Successfully created new user';
    } else {
      $message = 'Sorry there must have been an issue creating your account';
    }
  }

?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>

    <?php require 'partials/header.php' ?>

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <img src="assets/images/logo1.png" alt="Logo" width="400" height="150">

    <h1>SignUp</h1>
    <span>or <a href="login.php">Login</a></span>

    <form action="signup.php" method="POST">
      <input name="user" type="text" placeholder="Enter your email">
      <input name="password" type="password" placeholder="Enter your Password">
      <input name="email" type="text" placeholder="Confirm Password">
      <input type="submit" value="Submit">
    </form>

  </body>
</html>
