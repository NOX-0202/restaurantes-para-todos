<!DOCTYPE html>
<html lang="pt-br">
<head><title>Restaurante para tosos | contato </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
 	<link rel="icon" href="../img/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
	<script src="https://kit.fontawesome.com/45b74d7b47.js"></script>
    <style>
        .w-100::placeholder, textarea::placeholder{
            color: #007bff;
        }
    </style>
</head>
<body>
	<?php
		require 'nav.php';
	?>
    <div class="container">
        <div class="row text-center mt-5">
            <div class="col text-left ml-3" >
                <!-- esquerda -->
                Tel: 011-3456-7890<br>
                Fax: 011-3456-7890
                <hr style="width: 10%; background: #606060;" align="left">
                Av. Carolina Machado, 98
                Rio de Janeiro, RJ 12345-678
                info@meusite.com
                <hr style="width: 10%; background: #606060;" align="left">

            </div>
            <form action="./email.php">
                <div class="col mt-2">
                    <!-- centro -->
                    <input type="text" name="nome" placeholder="Nome*" class="w-100"><p><p>
                    <input type="email" name="email" placeholder="E-mail*" class=" w-100"><p><p>
                    <input type="text" name="assunto" placeholder="assunto" class=" w-100">

                </div>
                <div class="col mt-2">
                    <!-- direita -->
                    <textarea rows="5" cols="40" class="mr-5" style="resize: none;" name="msg" placeholder="Menssagem"></textarea><br>
                    <input type="submit" value="Enviar" class="p-2 btn btn-primary" style="margin-left: 55%;" onclick="alert('Dados Enviados com sucesso!')">
                </div>
            </form>
             <div class="w-100"></div>
            <div class="col mt-5 mb-5">
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675.9742326485307!2d-43.33721458486654!3d-22.877410242575294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x997dd3d9d90a2f%3A0x61595da23354a011!2sLemos+De+Castro!5e0!3m2!1sen!2sbr!4v1566481087087!5m2!1sen!2sbr" height="350" frameborder="0" style="border:0" class="w-100"></iframe>
            </div>        
        </div>
    </div>

    


</body>
</html>