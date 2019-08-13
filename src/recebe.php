<?php

	include_once 'conexao.php';


	$deficiencias = $_POST["def"];
	$localidade = $_POST["localidade"];

	
	function pesquisa($resultado){

		while ($row = mysqli_fetch_assoc($resultado)){

			echo "teste";


		}


	}







	switch ($deficiencias){
		case "obeso":
			$query = "SELECT * FROM RESTAUTANTES WHERE deficiencia = '$deficiencias' AND local = $localidade";
			$result = mysqli_query($conn, $query);
			pesquisa($result);
			break;
		
		case "teste":


	}



?>