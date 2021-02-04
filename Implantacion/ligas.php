
<?php 

    $conexion = mysqli_connect('localhost', 'root', '', 'bd_futbol');


 ?>

 <!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Diego Velázquez">
    <meta name="description" content="Smart Agency is a one page responsive Bootstrap 4 template. This is a free open source theme, you can use our theme for any purpose, even commercially. Create amazing websites with this easy to customize template.">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="assets/css/styles.css">

    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600" rel="stylesheet">

    <!-- Ionic icons-->
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo1.png" />

    <title>Smart Agency Template | Themes Bootstrap</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <img src="assets/images/logo1.png" class="logo-brand" alt="logo">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <img src="assets/images/menu.svg">
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categorias.php">Categorias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ligas.php">Ligas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="estadisticas.php">Estadisticas</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>


    <section id="hero">
        <duv class="container">
            <div class="content-center">
                
                <a href="#Inter-Copa" class="btn btn-secondary mt-4">Inter-Copa<img src="assets/images/arrow-right.svg" class="ml-2"></a>
                <a href="#Copa-Plata" class="btn btn-secondary mt-4">Copa-Plata<img src="assets/images/arrow-right.svg" class="ml-2"></a>
                <a href="login.php" class="btn btn-secondary mt-4">Copa-Oro<img src="assets/images/arrow-right.svg" class="ml-2"></a>                      
                    
            </div>
        </duv>
    </section>



        <section id="Inter-Copa">
        <div class="container">
            <div class="row content-center">
         

                <table class="table table-hover table-condensed table-borderer">
                    
                    <tr>
                        
                        <td>ID LIGAS</td>
                        <td>NUMERO DE EQUIPO</td>
                        <td>STATUS</td>
                        <td>ID CATEGORIAS</td>

                    </tr>

                    <?php 

                        $sql = "SELECT * FROM ligas";
                        $result = mysqli_query($conexion, $sql);

                        while($mostrar = mysqli_fetch_array($result) ){



                     ?>

                    <tr>
                        
                        <td><?php echo $mostrar['IdLigas']?></td>
                        <td><?php echo $mostrar['NumeroEquipos']?></td>
                        <td><?php echo $mostrar['Status']?></td>
                        <td><?php echo $mostrar['IdCategorias']?></td>
                    </tr>

                    <?php 
                        }
                     ?>

                </table>           
        
                    
                </div>
            </div>
    </section>






    <footer class="bgDark">
        <div class="container">
            <img src="assets/images/logo-light.svg" class="logo-brand" alt="logo">
            <ul class="list-inline">
                <li class="list-inline-item footer-menu"><a href="#">Home</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Portfolio</a></li>
                <li class="list-inline-item footer-menu"><a href="#">About us</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Pricing</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Contact</a></li>
            </ul>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#"><img src="assets/images/instagram.svg" class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="assets/images/twitter.svg" class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="assets/images/youtube.svg" class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="assets/images/dribbble.svg" class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="assets/images/facebook.svg" class="img-fluid"></a></li>
            </ul>
            <small>©2020 All Rights Reserved. Created by <a href="https://themesbootstrap.com.mx/" class="font-weight-bold" target="_blank"
                    rel="noopener">Themes Bootstrap</a></small>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>
