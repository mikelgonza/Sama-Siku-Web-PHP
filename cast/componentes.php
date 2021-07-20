<?php

//Convierte fecha de mysql a normal 
	function cambiaf_a_normal($fecha){ 
		ereg( "([0-9]{2,4})-([0-9]{1,2})-([0-9]{1,2})", $fecha, $mifecha); 
		$lafecha=$mifecha[3]."/".$mifecha[2]."/".$mifecha[1]; 
		return $lafecha; 
	} 

//Convierte fecha de normal a mysql 
	function cambiaf_a_mysql($fecha){ 
		ereg( "([0-9]{1,2})/([0-9]{1,2})/([0-9]{2,4})", $fecha, $mifecha); 
		$lafecha=$mifecha[3]."-".$mifecha[2]."-".$mifecha[1]; 
		return $lafecha; 
	}

// Abro el acceso a la base de datos MySQL
	$link = mysql_connect("localhost", "samasiku", "kaochimqqf00"); //Para el servidor en internet
	//$link = mysql_connect("localhost", "root"); //Para local
	mysql_select_db("samasiku_vgb1", $link);

include ("inc/cabecera.php");


// Variables
	$nom = $_GET["nombre"];
	$ape = $_GET["apellidos"];
	$ins = $_GET["instrumento"];
	$com = $_GET["componentes"];
	$ord = $_GET["orden"];
	$env = $_GET["enviado"];

?>

<!--======= INICIO CONTENIDO TITULO PAGINA ========================-->
			
				<br />
				<img src="/imagenes/componentes.png" width="140" height="30" alt="" />
				<br />
				<img src="/imagenes/autor.png" width="125" height="20" style="float:right" alt="" />

<!--======= FIN CONTENIDO TITULO PAGINA ===========================-->

				</div>
				<div id="parti">

<!--======= INICIO CONTENIDO PAGINA ===============================-->

		<p>
		Hola, os presentamos una base de datos, con foto incluida,
		de todos los miembros que han pasado por SAMA SIKU.<br />
		Podeis buscar por Nombre, Apellidos, o Instrumento a todos los m&uacute;sicos que han pasado por aqu&iacute;.
		Si quereis ver la lista completa solo teneis que dejar todos los campos vacios y 
		aparecer&aacute;n todos los miembros seg&uacute;n el orden puesto.<br /><br />
		Si alguien sabe de alg&uacute;n miembro que no est&aacute; incluido en la lista, o alg&uacute;n dato est&aacute; mal,
		o tiene alguna foto que falta (ya iremos poniendo las fotos que faltan segun las vallamos consiguiendo),
		le agradecer&iacute;amos mucho si nos manda un email comunicandonoslo.</p>
		<br /><br /><br />
		<form method="get" action="">
		<table cellpadding="0" cellspacing="2" style="background-color:#000000; margin-left:170px"><tr><td>
		<table cellspacing="0" cellpadding="0" style="background-color:#CCCC99">
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">Actualizado a dia: <b>06/03/2007</b></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td style="text-align:right; width:100px"><b>Nombre</b>&nbsp;</td>
				<td><input type="text" name="nombre" size="17" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td style="text-align:right"><b>Apellidos</b>&nbsp;</td>
				<td><input type="text" name="apellidos" size="17" /></td>
			</tr>
			<tr>
				<td style="text-align:right"><b>Instrumento</b>&nbsp;</td>
				<td>
					<select name="instrumento">
					<option value="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
					<option value="Bombo">Bombo</option>
					<option value="Caja">Caja</option>
					<option value="Platos">Platos</option>
					<option value="Requinto">Requinto</option>
					<option value="Clarinete">Clarinete</option>
					<option value="Saxo Soprano">Saxo Soprano</option>
					<option value="Saxo alto">Saxo alto</option>
					<option value="Saxo Tenor">Saxo Tenor</option>
					<option value="Saxo Barítono">Saxo Bar&iacute;tono</option>
					<option value="Trompeta">Trompeta</option>
					<option value="Fliscorno">Fliscorno</option>
					<option value="Trombón">Tromb&oacute;n</option>
					<option value="Bombardino">Bombardino</option>
					<option value="Tuba">Tuba</option>
					<option value="Helicón">Helic&oacute;n</option>
					<option value="Bandera">Bandera</option>
					<option value="Director">Director</option>
					<option value="Botijo">Botijo</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" value="todos" name="componentes" checked="checked" /><b>Todos</b>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" value="actuales" name="componentes" /><b>Solo actuales</b>
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td style="text-align:right"><b>Ordenar por</b>&nbsp;</td>
				<td>
					<select name="orden">
					<option value="alfabetico">Orden alfab&eacute;tico</option>
					<option value="antiguedad">Antiguedad</option>
					<option value="instrumento">Instrumento</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">
					<input type="hidden" name="enviado" value="si" />
					<input type="submit" value="Buscar" />&nbsp;
					<input type="reset" value="Borrar" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><br /></td>
			</tr>  
		</table>
		</td></tr></table>	
		</form>

		

<?php	
	If ($env=="si")
	{
		//Limito la busqueda 
		$regpag = 10; 

		//examino la p&aacute;gina a mostrar y el inicio del registro a mostrar 
		$pag = $_GET["pagina"];
		if (!$pag) { 
			$inicio = 0; 
			$pag = 1; 
		} 
		else { 
			$inicio = ($pag - 1) * $regpag; 
		} 

		
		echo "<br /><br /> \n";
		echo "<table style=\"border:0; text-align:center\" width=\"600px\"> \n";
		echo "<tr> \n";
		echo "<td> \n";
      
	//Seleccionamos los mensajes de la categoria
	

		If ($com=="todos")
		{
			If (($nom=="") AND ($ape=="") AND ($ins==""))
			{			
				If ($ord=="alfabetico") $Sql = "select * FROM socios ORDER BY Nombre";
				
				If ($ord=="antiguedad") $Sql = "select * FROM socios ORDER BY Fecha_ingreso1";
				
				If ($ord=="instrumento") $Sql = "select * FROM socios ORDER BY Instrumento1";
			}			
			Else
			{			
				If ($ord=="alfabetico") $Sql = "select * FROM socios WHERE Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Nombre";
				
				If ($ord=="antiguedad") $Sql = "select * FROM socios WHERE Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Fecha_ingreso1";
				
				If (ord=="instrumento") $Sql = "select * FROM socios WHERE Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Instrumento1";
				
			}
		}


		If ($com=="actuales")
		{
			If (($nom=="") AND ($ape=="") AND ($ins==""))
			{
				If ($ord=="alfabetico") $Sql = "select * FROM socios WHERE Actual=1 ORDER BY Nombre";
				
				If ($ord=="antiguedad") $Sql = "select * FROM socios WHERE Actual=1 ORDER BY Fecha_ingreso1";
				
				If ($ord=="instrumento") $Sql = "select * FROM socios WHERE Actual=1 ORDER BY Instrumento1";
			}
			Else  
			{	
				If ($ord=="alfabetico") $Sql = "select * FROM socios WHERE Actual=1 AND Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Nombre";
				
				If ($ord=="antiguedad") $Sql = "select * FROM socios WHERE Actual=1 AND Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Fecha_ingreso1";
				
				If ($ord=="instrumento") $Sql = "select * FROM socios WHERE Actual=1 AND Nombre Like '%$nom%' AND Apellidos Like '%$ape%' AND Instrumento1 Like '%$ins%' ORDER BY Instrumento1";
			}
		}			
		
		$result1 = mysql_query($Sql, $link);

		//miro a ver el n&uacute;mero total de campos que hay en la tabla con esa b&uacute;squeda 
		$totalreg = mysql_num_rows($result1); 
		//calculo el total de p&aacute;ginas 
		$totalpag = ceil($totalreg / $regpag); 

		$result1 = mysql_query($Sql." limit ".$inicio.",".$regpag, $link);

		if ($r1 = mysql_fetch_array($result1))	
		{

			echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n";
			echo "<tr> \n";
			echo "<td>&nbsp;</td> \n";
			echo "<td colspan=\"4\" style=\"text-align:left\"><b>".$totalreg."</b> miembros encontrados.</td> \n";
			echo "</tr> \n";
			echo "<tr> \n";
			echo "<td>&nbsp;</td> \n";
			echo "<td colspan=\"4\" style=\"text-align:left\">P&aacute;gina: ".$pag." de ".$totalpag."</td> \n";
			echo "</tr> \n";
			echo "<tr> \n";
			echo "<td colspan=\"5\"><hr /></td> \n";
			echo "</tr> \n";

			Do
			{
				echo "<tr> \n";
				echo "<td style=\"width:15px\">&nbsp;</td> \n";

				If ($r1["Foto"] != "")
				{
					echo "<td style=\"width:126px; height:126px\"><br /><table cellpadding=\"0\" cellspacing=\"1\" style=\"background-color:#000000\"><tr><td style=\"background-color:#ffffff\"><img src=\"../imagenes/componentes/".$r1["Foto"].".jpg\" alt=\"\" /></td></tr></table><br /></td> \n";
				}
				Else
				{
					echo "<td style=\"width:126px; height:126px\"><br /><table cellpadding=\"0\" cellspacing=\"1\" style=\"background-color:#000000\"><tr><td style=\"background-color:#ffffff\"><img src=\"../imagenes/componentes/no.gif\" alt=\"\" /></td></tr></table><br /></td> \n";
				}
				
				echo "<td style=\"width:15px\">&nbsp;</td> \n";
				echo "<td style=\"text-align:left\"> \n";
				echo "<b>&bull;</b>&nbsp;&nbsp;<b>Nombre:</b>&nbsp;".$r1["Nombre"]."<br /> \n";
				echo "<b>&bull;</b>&nbsp;&nbsp;<b>Apellidos:</b>&nbsp;".$r1["Apellidos"]."<br /> \n";
				echo "<b>&bull;</b>&nbsp;&nbsp;<b>Instrumento:</b>&nbsp;".$r1["Instrumento1"]."<br /> \n";
						
				If ($r1["Instrumento2"] != "")
				{
					echo "<b>&bull;</b>&nbsp;&nbsp;<b>Otros Instr:</b>&nbsp;".$r1["Instrumento2"];

					If ($r1["Instrumento3"] != "")
					{
					echo ",&nbsp;".$r1["Instrumento3"]." \n";
					}
				
					echo "<br /> \n";
				}
				
				If ($r1["Fecha_ingreso1"] == "") $fei1 = ""; else $fei1 = cambiaf_a_normal($r1["Fecha_ingreso1"]);
				If ($r1["Fecha_baja1"] == "") $feb1 = ""; else $feb1 = cambiaf_a_normal($r1["Fecha_baja1"]);
				If ($r1["Fecha_ingreso2"] == "") $fei2 = ""; else $fei2 = cambiaf_a_normal($r1["Fecha_ingreso2"]);
				If ($r1["Fecha_baja2"] == "") $feb2 = ""; else $feb2 = cambiaf_a_normal($r1["Fecha_baja2"]);

				echo "<b>&bull;</b>&nbsp;&nbsp;<b>Fecha de ingreso:</b>&nbsp;".$fei1."<br /> \n";
				echo "<b>&bull;</b>&nbsp;&nbsp;<b>Fecha de baja:</b>&nbsp;".$feb1."<br /> \n";

				If ($r1["Fecha_ingreso2"] != "")
				{
					echo "<b>&bull;</b>&nbsp;&nbsp;<b>2ª Fecha de ingreso:</b>&nbsp;".$fei2."<br /> \n";
					echo "<b>&bull;</b>&nbsp;&nbsp;<b>2ª Fecha de baja:</b>&nbsp;".$feb2."<br /> \n";
				}
				
				echo "<br /> \n";
				echo "</td> \n";
				echo "<td style=\"width:15\">&nbsp;</td> \n";
				echo "</tr> \n";
				echo "<tr> \n";
				echo "<td colspan=\"5\"><hr /></td> \n";
				echo "</tr> \n";
			}
			while ($r1 = mysql_fetch_array($result1));
			
			echo "</table> \n";

			//muestro los distintos &iacute;ndices de las p&aacute;ginas, si es que hay varias p&aacute;ginas 
			if ($totalpag > 1)
			{ 
				echo "<div style=\"text-align:center\"> \n";
				echo "<table cellpadding=\"0\" cellspacing=\"2\" width=\"555\" style=\"background-color:#000000\"><tr><td> \n";
				echo "<table cellspacing=\"0\" cellpadding=\"5\" width=\"100%\" style=\"background-color:#CCCC99\"> \n";
				echo "<tr> \n";
				echo "<td colspan=\"4\"><b>PAGINAS</b></td> \n";
				echo "</tr> \n";
				echo "<tr> \n";
				echo "<td colspan=\"4\"> \n";


				$cero="";
				for ($i=1;$i<=$totalpag;$i++)
				{
					If ($i < 10) $cero = "0";
					else $cero = "";
					
					if ($pag == $i) 
						echo "<b>[".$cero.$pag."]</b> ";	//si muestro el indice de la pagina actual, no coloco enlace 
					else
						echo "<b>[</b><a href='?pagina=$i&amp;enviado=si&amp;nombre=$nom&amp;apellidos=$ape&amp;instrumento=$ins&amp;componentes=$com&amp;orden=$ord'>".$cero.$i."</a><b>]</b> ";	//si el indice no corresponde con la pagina mostrada actualmente, coloco el enlace para ir a esa pagina 
					 
				}

				echo "</td> \n";
				echo "</tr> \n";
				echo "<tr> \n";
				echo "<td style=\"text-align: right; width:50%\"> \n";
				
				$pagme = ($pag - 1);
				$pagma = ($pag + 1);

				If ($pag > 1)
					echo "<a href=\"?enviado=si&amp;nombre=$nom&amp;apellidos=$ape&amp;instrumento=$ins&amp;componentes=$com&amp;orden=$ord&amp;pagina=$pagme\"><img src=\"/imagenes/flechai.gif\" style=\"border:0\" alt=\"\" />&nbsp;Anterior</a> \n";

				echo "</td> \n";
				echo "<td style=\"text-align:left; width:50%\"> \n";

				If ($pag < $totalpag)
					echo "<a href=\"?enviado=si&amp;nombre=$nom&amp;apellidos=$ape&amp;instrumento=$ins&amp;componentes=$com&amp;orden=$ord&amp;pagina=$pagma\">Siguiente&nbsp;<img src=\"/imagenes/flechad.gif\" style=\"border:0\" alt=\"\" /></a> \n";

				echo "</td> \n";
				echo "</tr> \n";
				echo "</table></td></tr></table></div> \n";
			}
		}
		Else
		{
?>
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td>&nbsp;</td>
						<td><b>0</b> miembros encontrados.</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>P&aacute;gina: 0 de 0</td>
					</tr>
					<tr>
						<td colspan="2"><HR></td>
					</tr>
					<tr>
						<td width="15">&nbsp;</td>
						<td><br /><b>No hay nadie con esta descripci&oacute;n, revise la consulta.</b></td>
					</tr>
				</table>
<?php
			
		}
		echo "</td> \n";
		echo "</tr> \n";
		echo "</table> \n";

		// cerramos el conjunto de resultados
		mysql_free_result($result1); 
	}

?>


<!--======= FIN CONTENIDO PAGINA ==================================-->
				
				<br /><br /><br />
				</div>

<?php 
	mysql_close($link);
	
	include ("inc/pie.php"); 
?>