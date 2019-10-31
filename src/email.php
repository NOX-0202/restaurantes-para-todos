<?php


	$nome = $_POST["nome"];
	$email = $_POST["email"];
	$assunto = $_POST["assunto"];
	$mensagem = $_POST["msg"];

	$to = "fernandinho.nco@gmail.com";

	// Always set content-type when sending HTML email
	$headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
 
	mail($to, $assunto, $mensagem, $headers);

	header("Location: ./contato.php");
?>