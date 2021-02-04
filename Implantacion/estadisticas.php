<?php 

    $conexion = mysqli_connect('localhost', 'root', '', 'bd_futbol');

 ?>

 <!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Diego Velázquez">
    <meta name="description" content="Smart Agency is a one page responsive Bootstrap 4 template. This is a free open source theme, you can use our theme for any purpose, even commercially. Create amazing websites with this easy to customize template.">
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
                        <a class="nav-link" href="#team">Ligas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pricing">Estadisticas</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>

<section id="hero", id="hero2", id="hero3">

        <duv class="container">
            <div class="content-center">
                
                <a href="#SUB-12" style="color:#FF0000" <button type="button" class="btn btn-outline-secondary"> </button> SUB-12 <img src="assets/images/arrow-right.svg" class="ml-2"> </a>
             	<a href="#SUB-15" style="color:#FF0000" <button type="button" class="btn btn-outline-secondary"> </button> SUB-15 <img src="assets/images/arrow-right.svg" class="ml-2"> </a>
             	<a href="#SUB-20" style="color:#FF0000" <button type="button" class="btn btn-outline-secondary"> </button> SUB-20 <img src="assets/images/arrow-right.svg" class="ml-2"> </a>                      
                    
            </div>
        </duv>
    </section>

        <section id="SUB-12">
        	<section id="SUB-15">
        		<section id="SUB-20">
        <div class="container">
            <div class="row content-center">

            	<table class="table table-dark" >
                    
                    <tr>
                        
                        <td>ID</td>
                        <td>FECHA</td>
                        <td>NUMERO DE GOLES</td>
                        <td>NUMERO DE ASISTENCIAS</td>
                        <td>NUMERO DE PASES</td>
                        <td>TARJETAS AMARILLAS</td>
                        <td>TARJETAS ROJAS</td>
                        <td>HABILIDAD</td>
                        <td>RESISTENCIA</td>
                        <td>FUERZA</td>
                        <td>VELOCIDAD</td>
                        
                    </tr>



                    <?php 

                        $sql = "SELECT * FROM estadisticas";
                        $result = mysqli_query($conexion, $sql);

                        while($mostrar = mysqli_fetch_array($result) ){

                     ?>

                    <tr>
                        
                        <td><?php echo $mostrar['IdEstadistica']?></td>
                        <td><?php echo $mostrar['Fecha']?></td>
                        <td><?php echo $mostrar['NumeroGoles']?></td>
                        <td><?php echo $mostrar['NumeroAsistencia']?></td>
                        <td><?php echo $mostrar['NumeroPases']?></td>
                        <td><?php echo $mostrar['TarjetasA']?></td>
                        <td><?php echo $mostrar['TarjetasR']?></td>
                        <td><?php echo $mostrar['Habilidad']?></td>
                        <td><?php echo $mostrar['Resistencia']?></td>
                        <td><?php echo $mostrar['Fuerza']?></td>
                        <td><?php echo $mostrar['Velocidad']?></td>
                    </tr>

                    <?php 
                        }
                     ?>

                </table>     
                 </div>
            </div>
    </section>  

    </body>

</html>   
         
