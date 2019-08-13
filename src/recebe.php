<?php

	include_once 'conexao.php';


	$deficiencias = $_POST["def"];
	$localidade = $_POST["localidade"];

	$instruction = "SELECT * FROM restaurantes WHERE";

	switch ($deficiencias){
		case "obeso":
			$query = $instruction ." obeso = '$deficiencias' AND zona = '$localidade'";
			break;
		case "def-visu":
			$query = $instruction ." def_visual = '$deficiencias' AND  zona = '$localidade'";
			break;
		case "cadeirante":
			$query = $instruction ." cadeirante = '$deficiencias' AND  zona = '$localidade'";
			break;
		case "def-auditivo":
			$query = $instruction ." def_auditivo = '$deficiencias' AND  zona = '$localidade'";
			break;
	}


		$result = mysqli_query($conn, $query);

		while ($rows = mysqli_fetch_assoc($result)){

		 	echo $rows['id']. " ";
            echo $rows['nome'] . " ";
            echo $rows['zona']. " ";
            echo $rows['obeso']. " ";
            echo $rows['def_visual']. " ";
            echo $rows['cadeirante']. " ";
            echo $rows['def-auditivo']. " ";

		}



?>