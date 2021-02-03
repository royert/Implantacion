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


    <img src="assets/images/logo1.png" alt="Logo" width="400" height="150">


    <form action="signup.php" method="POST">
      <input name="user" type="text" placeholder="Ingrese su Nombres ">
      <input name="password" type="password" placeholder="Ingrese su Apellidos">
      <input name="email" type="text" placeholder="Ingrese su Direccion">
      <input name="user" type="text" placeholder="Ingrese su Telefono">
      <div>
      <select name="Status">
         <option value="1">Jugador</option> 
         <option value="2">Entrenador</option> 
         <option value="3">Representante</option>
         <option value="10">Administrador</option>
      </select>
      </div>
      <input type="submit" value="Submit">
    </form>

  </body>
</html>
