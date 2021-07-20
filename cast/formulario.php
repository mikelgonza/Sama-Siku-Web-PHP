<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<title>Envio de E-mail a SamaSiku</title>
<link rel="stylesheet" href="/css/formulario.css" type="text/css" />
<script> 
function cerrarse(){ 
window.close() 
} 
</script> 

</head>
<body>
<?php
	$nombre = $_POST["nombre"];
	$mail = $_POST["mail"];
	
	$mensaje = nl2br($_POST["mensaje"]);
	$enviado = $_POST["enviado"];

	if ($enviado) // Si el mensaje esta enviado lo mando
	{
		$destinatario = "webmaster@samasiku.com"; 
		$asunto = "Mensaje Web: ".$_POST["asunto"];
		$cuerpo="<B>MENSAJE DESDE WEB</B><br>Autor: ".$nombre."<br>E-mail:&nbsp;<a href=mailto:".$mail.">".$mail."</a><br><br>Mensaje:<br>".$mensaje;

		//para el envío en formato HTML 
		$headers = "MIME-Version: 1.0\r\n"; 
		$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 

		//dirección del remitente 
		$headers .= "From: ".$nombre." <".$mail.">\r\n";
		//If ($rem==2) $headers .= "From: ".$nombre." <nobody@s10.landhost.net>\r\n";

		mail($destinatario,$asunto,$cuerpo,$headers); // Se envia el mail
?>
		<div id="men_enviado">
		Mensaje escrito correctamente.<br>
		Puede cerrar esta ventana<br>
		<form><input class="cerrar" type="button" value="Cerrar" onclick="cerrarse()"></form>
		</div>

<?php	} else {	?>

<div id="formulario">
	<form action="formulario.php" method="post" name="comentarios" >
		
		<label for="nombre">Nombre:</label>
		<input id="nombre" type="text" name="nombre"  /><br />
		
		<label for="mail">Email:</label>
		<input id="mail" type="text" name="mail"  /><br />
		
		<label for="asunto">Asunto:</label>
		<input id="asunto" type="text" name="asunto"  /><br />
		
		<label for="mensaje">Mensaje:</label>
		<textarea id="mensaje" name="mensaje" cols="50" rows="6"></textarea><br />
		
		<input class="submit" name="enviado" type="submit" value="Enviar">
	</form>
</div>
<?php	}	?>
</body>
</html>