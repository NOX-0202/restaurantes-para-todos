<!DOCTYPE html>
<html lang="pt-br">
<head><title>Restaurante para todos | index </title>
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
    <main class="container mt-4">
    	<h3 class="h1 text-center">
    		Selecione a sua deficiencia: 
    	</h3>	
    	<form method="post" action="recebe.php">
	    	<div class="icons">
	    		<figure>
	    			<label for="def">
		    			<input type="radio" name="def" id="def" class="d-none" value="obeso">
		    			<i class="fas fa-universal-access fa-3x"></i>
		    			<figcaption>
		    				Obeso
		    			</figcaption>
	    			</label>
	    		</figure>
	       		<figure>
	       			<label for="def4">
	       				<input type="radio" name="def" id="def4" class="d-none" value="def_visual">
		    			<i class='fas fa-blind fa-3x'></i>
		    			<figcaption>
		    				Deficiente<br>visual
		    			</figcaption>
	    			</label>
	    		</figure>	
	       		<figure>
	       			<label for="def2">
	       				<input type="radio" name="def" id="def2" class="d-none" value="cadeirante">
		    			<i class='fab fa-accessible-icon fa-3x'></i>
		    			<figcaption>
		    				Deficiente
		    			</figcaption>
	    			</label>
	    		</figure>	    		
	       		<figure>
	       			<label for="def3">
						<input type="radio" name="def" id="def3" class="d-none" value="def_auditi">
						<i class="fas fa-deaf fa-3x"></i>
						<figcaption>
							Deficiente <br> auditivo
						</figcaption>
	    			</label>
	    		</figure>	    			
	    	</div>
	    	<div class="text-center rounded">
		    	<select name="localidade" class="w-80 mb-4">
		    		<option value="">Selecione uma localidade</option>
		    		<optgroup label="Localidades: ">
		                <option value="Norte">Zona Norte</option>
		                <option value="Sul">Zona Sul</option>
		                <option value="Oeste">Zona Oeste</option>
		               	<option value="Central">Zona Central</option>
			    	</optgroup>
		    	</select><p>
		    	<button type="submit" class="btn btn-success">Enviar</button>
		    </div>
    	</form>	
    </main>	
</body>
    <script src="../node_modules/jquery/dist/jquery.slim.min.js"></script>
    <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
</html>

