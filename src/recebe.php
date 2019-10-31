<?php
	include_once '../conexao.php';


	$deficiencias = $_POST["def"];
	$localidade = $_POST["localidade"];

	if (!$deficiencias || empty($localidade)) {
		header("Location: index.php");
	}

	$sql = "SELECT * FROM restaurantes WHERE";
?>

<!DOCTYPE html>
<html lang="pt-br">
<head><title>Restaurante para todos | pesquisa </title>
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
	<?php
		require 'nav.php';
	?>
	<section class="container">
			<div class="mt-3 ml-5">
				<?php
					switch ($deficiencias){
						case "obeso":
							$query = $sql ." obeso = '$deficiencias' AND zona = '$localidade' order by nome";
							echo "<h3 class=\"h3\"> Resultados para \"Obeso\"</h3> ";
							break;
						case "def_visual":
							$query = $sql ." def_visual = '$deficiencias' AND  zona = '$localidade' order by nome";
							echo "<h3 class=\"h3\"> Resultados para \"Deficiente visual\"</h3> ";
							break;
						case "cadeirante":
							$query = $sql ." cadeirante = '$deficiencias' AND  zona = '$localidade' order by nome";
							echo "<h3 class=\"h3\"> Resultados para \"Cadeirante\"</h3> ";
							break;
						case "def_auditi":
							$query = $sql ." def_auditivo = '$deficiencias' AND  zona = '$localidade' order by nome";
							echo "<h3 class=\"h3\"> Resultados para \"Deficiente Auditivo\"</h3> ";
							break;
						default:
							echo "INVÁLIDO";
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


