<?php
		
		include_once '../conexao.php';


		$nome = $_GET["nome"];
		$zona = $_GET["zona"];
		$ender = $_GET["ender"];
		$obeso = !empty($_GET["obeso"])? $_GET["obeso"] : "nda";
		$defv =   !empty($_GET["def_visual"])? $_GET["def_visual"] : "nda";
		$cad =   !empty( $_GET["cadeirante"])?  $_GET["cadeirante"] : "nda";
		$defa = !empty($_GET["def_auditivo"])? $_GET["def_auditivo"] : "nda" ;
		$descricao = $_GET["descricao"];



		$sql = "INSERT INTO restaurantes VALUES (default, '$nome', '$zona', '$ender', '$obeso', '$defv', '$cad', '$defa', '$descricao')";
		$execute = mysqli_query($conn, $sql);

		header("Location: insertdb.php");
?>