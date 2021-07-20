<?php
	// Abro el acceso a la base de datos MySQL
	$link = mysql_connect("localhost", "samasiku", "kaochimqqf00"); //Para el servidor en internet
	//$link = mysql_connect("localhost", "root"); //Para local
	mysql_select_db("samasiku_vgb1", $link);
	
	include ("inc/cabecera.php");
?>

<!--======= INICIO CONTENIDO TITULO PAGINA ========================-->
			
				<br />
				<img src="/imagenes/palmares.png" width="95" height="30" alt="" />
				<br />
				<img src="/imagenes/autor.png" width="125" height="20" style="float:right" alt="" />

<!--======= FIN CONTENIDO TITULO PAGINA ===========================-->

				</div>
				<div id="parti">

<!--======= INICIO CONTENIDO PAGINA ===============================-->

		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Para que puedan ustedes configurar una idea m&aacute;s clara de los servicios que les pudi&eacute;ramos prestar, les damos constancia de una selecci&oacute;n de
		galardones y premios especiales que la Fanfarre <b>SAMA-SIKU</b> ha obtenido a
		lo largo de su ya dilatada historia:</p><br />

		<table cellpadding="5" cellspacing="1">
<?php
	$ano2="";
	$result1 = mysql_query("select * from palmares order by Ano,Premio", $link);
	if ($r1 = mysql_fetch_array($result1))
	{
		Do
		{
			If ($ano2 != $r1["Ano"])
			{
				echo "<tr>	\n";
				echo "<td style=\"vertical-align:top; background-color:#9999ff\"><b>".$r1["Ano"]."</b></td> \n";
				
				$result2 = mysql_query("select * from palmares where Ano='$r1[Ano]' order by Premio", $link);
				$r2 = mysql_fetch_array($result2);
				echo "<td style=\"background-color:#cccc99\"> \n";
				
				Do
				{
					if ($r2["Foto"] != "")
					{
						echo "<a href=\"javascript:openScript('premio.php?id=".$r2["Id_palmares"]."')\"><b>&bull;</b>&nbsp;&nbsp;".$r2["Premio"].".</a><br /> \n";
					}
					else
					{
						echo "<b>&bull;</b>&nbsp;&nbsp;".$r2["Premio"].".<br /> \n";
					}
				}
				
				while ($r2 = mysql_fetch_array($result2));

				echo "</td></tr> \n";
				$ano2=$r1["Ano"];
			}
		}
		
		while ($r1 = mysql_fetch_array($result1));
		
	}
	else
	{
		echo "<p style=\"text-align:center\"><b>NO HAY NINGUN PREMIO DISPONIBLE</b></p> \n";
	}
	// cerramos el conjunto de resultados
	mysql_free_result($result1);
	mysql_free_result($result2);

?>
		</table>

<!--======= FIN CONTENIDO PAGINA ==================================-->
				
				<br /><br /><br />
				</div>

<?php 
	mysql_close($link);
	
	include ("inc/pie.php"); 
?>