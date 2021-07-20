<?php
	// Abro el acceso a la base de datos MySQL
	$link = mysql_connect("localhost", "samasiku", "kaochimqqf00"); //Para el servidor en internet
	//$link = mysql_connect("localhost", "root"); //Para local
	mysql_select_db("samasiku_vgb1", $link);
	
	$Id_grupo = $_GET["Id_grupo"];

	include ("inc/cabecera.php");
?>

<!--======= INICIO CONTENIDO TITULO PAGINA ========================-->
			
				<br />
				<img src="/imagenes/enlaces.png" width="95" height="30" alt="" />
				<br />
				<img src="/imagenes/autor.png" width="125" height="20" style="float:right" alt="" />

<!--======= FIN CONTENIDO TITULO PAGINA ===========================-->

				</div>
				<div id="parti">

<!--======= INICIO CONTENIDO PAGINA ===============================-->

		<p>Aqu&iacute; os proponemos unos enlaces interesantes relacionados
		con el mundo de la m&uacute;sica, fanfarres, bandas y festivales para que visit&eacute;is.</p>
	
<?php
	$result2 = mysql_query("SELECT * FROM grupoenlaces ORDER BY Orden", $link);
	if ($r2 = mysql_fetch_array($result2))
	{
		$Id_grupo2 = $r2["Id_grupo"];
			echo "<ul> \n";

		Do
		{
			echo "<li><a href=\"?Id_grupo=".$r2[Id_grupo]."\"><b>".$r2["Grupo"]."</b></a></li> \n";
		}
		while ($r2 = mysql_fetch_array($result2));
			
			echo "</ul> \n";
	}
	else
	{
		echo "&nbsp; \n";
	}

	// cerramos el conjunto de resultados
	mysql_free_result($result2);
	
	echo "<br /><hr /><br /> \n";
	echo "<div style=\"text-align:left; margin-left:20px\"> \n";
	echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"6\"> \n";

	If ($Id_grupo=="") $Id_grupo=$Id_grupo2;
	
	$result1 = mysql_query("SELECT * FROM enlaces WHERE Grupo=$Id_grupo ORDER BY Titulo", $link);
	if ($r1 = mysql_fetch_array($result1))
	{
		Do
		{
			echo "<tr>\n";
			echo "<td>\n";
			echo "<a href=\"".$r1["Web"]."\" rel=\"external\"><img src=\"../../imagenes/".$r1["Foto"]."\" style=\"border:1px solid #000\" alt=\"\" /></a> \n";
			echo "</td>\n";
			echo "<td>\n";
			echo "<b>".$r1["Titulo"].".</b>\n";

			If ($r1["Comentario"] != "")
			{	
				echo "&nbsp;(".$r1["Comentario"].")\n";
			}

			echo "<br />\n";
			echo "<b>.:</b>&nbsp;<a href=\"".$r1["Web"]."\" rel=\"external\">".$r1["Web"]."</a><b> :.</b>\n";
			echo "</td>\n";
			echo "</tr>\n";
			echo "<tr>\n";
			echo "<td colspan=\"2\"><br /></td>\n";
			echo "</tr>\n";
		}
		while ($r1 = mysql_fetch_array($result1));

	}
	else
	{
		echo "<center><b>NO HAY NINGUN ENLACE</b></center> \n";
	}
	// cerramos el conjunto de resultados
	mysql_free_result($result1);

?>
		</table>
		</div>



<!--======= FIN CONTENIDO PAGINA ==================================-->
				
				<br /><br /><br />
				</div>

<?php 
	mysql_close($link);
	
	include ("inc/pie.php"); 
?>