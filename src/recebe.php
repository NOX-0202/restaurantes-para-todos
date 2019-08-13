<?php

	include_once 'conexao.php';


	$deficiencias = $_POST["def"];
	$localidade = $_POST["localidade"];

	
	function pesquisa($sql, $con){

		$result = mysqli_query($con, $sql);

		while ($rows = mysqli_fetch_assoc($result)){

		 	echo $rows['id'];
            echo $rows['nome'];
            echo $rows['local'];
            echo $rows['obeso'];
            echo $rows['def_visual'];
            echo $rows['def_cadeirante'];
            echo $rows['def_auditivo'];

		}
	}


	switch ($deficiencias){
		case "obeso":
			$query = "SELECT * FROM restaurantes WHERE obeso = '$deficiencias' AND local = '$localidade'";
			pesquisa($query, $conn);
			break;
		case "def-visu":
			$query = "SELECT * FROM restaurantes WHERE def_visual = '$deficiencias' AND local = '$localidade'";
			pesquisa($query, $conn);
			break;
		case "cadeirante":
			$query = "SELECT * FROM restaurantes WHERE def_cadeirante = '$deficiencias' AND local = '$localidade'";
			pesquisa($query, $conn);
			break;
		case "def-auditivo":
			$query = "SELECT * FROM restaurantes WHERE def_auditivo = '$deficiencias' AND local = '$localidade'";
			pesquisa($query, $conn);
			break;
	}



?>