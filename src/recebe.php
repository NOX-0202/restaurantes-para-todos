<?php

	include_once 'conexao.php';

	$deficiencias = [isset($_POST["obeso"]), isset($_POST["defvisu"]), isset($_POST["defcad"]), isset($_POST["defaud"])];

	$localidade = $_POST["localidade"];

	for ($i=0; $i < count($deficiencias) ; $i++) { 
		if ($deficiencias[$i] == "") {
			$deficiencias[$i] = "0";
		}else{
			$query = "SELECT * FROM restaurantes WHERE  = $deficiencias[$i]";
		}
	}


	echo count($deficiencias);

?>