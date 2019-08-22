<?php

	include_once '../conexao.php';


	$deficiencias = $_POST["def"];
	$localidade = $_POST["localidade"];

	if (!$deficiencias || empty($localidade)) {
		header("Location: index.html");
	}

	$sql = "SELECT * FROM restaurantes WHERE";

?>

<!DOCTYPE html>
<html lang="pt-br">
<head><title>Restaurante para tosos | index </title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
 	<link rel="icon" href="../img/logo.png" type="image/gif" sizes="16x16">
	<script src="https://kit.fontawesome.com/45b74d7b47.js"></script>
</head>
<body>
    <header class="text-center container">
        <img src="../img/logo.png" alt="logo" width="160" class="mb-3">
   		<nav class="navbar navbar-custom navbar-light bg-primary rounded">
   			<div class="navbar-item pl-5">
   				<a href="index.html" class="text-white h4 pl-5">
   					Home
   				</a>
   			</div>
    		<div class="navbar-item ">
    			<a href="" class="text-white h4">
   					Sobre
   				</a>
   			</div>  
   			<div class="navbar-item pr-5">
   				<a href="" class="text-white h4 pr-5">
   					Contato
   				</a>
   			</div>			
   		</nav>
    </header>
	<section class="container">
			<div class="mt-3 ml-5">
				<?php
					switch ($deficiencias){
						case "obeso":
							$query = $sql ." obeso = '$deficiencias' AND zona = '$localidade'";
							echo "<h3 class=\"h3\"> Resultados para \"Obeso\"</h3> ";
							break;
						case "def-visu":
							$query = $sql ." def_visual = '$deficiencias' AND  zona = '$localidade'";
							echo "<h3 class=\"h3\"> Resultados para \"Deficiente visual\"</h3> ";
							break;
						case "cadeirante":
							$query = $sql ." cadeirante = '$deficiencias' AND  zona = '$localidade'";
							echo "<h3 class=\"h3\"> Resultados para \"Cadeirante\"</h3> ";
							break;
						case "def-auditivo":
							$query = $sql ." def_auditivo = '$deficiencias' AND  zona = '$localidade'";
							echo "<h3 class=\"h3\"> Resultados para \"Deficiente Auditivo\"</h3> ";
							break;
					}

					$result = mysqli_query($conn, $query);

					while ($rows = mysqli_fetch_assoc($result)){

						echo"<div class=\"box mt-4\">
								<h5 class=\"h5\">".$rows['nome'] . "</h4>
								<p class=\" ml-4 \">".$rows['descricao'] . "</p>
								<p>".$rows['ender'] . "</p>
							</div>
							<hr>";

					}
				?>
		</div>
	</section>
</body>
</html>