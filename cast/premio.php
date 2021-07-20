<?php
	
	// Abro el acceso a la base de datos MySQL
	$link = mysql_connect("localhost", "samasiku", "kaochimqqf00"); //Para el servidor en internet
	//$link = mysql_connect("localhost", "root"); //Para local
	mysql_select_db("samasiku_vgb1", $link);

	$id = $_GET["id"];

	$result1 = mysql_query("SELECT * FROM palmares WHERE Id_palmares=$id", $link);
	if ($r1 = mysql_fetch_array($result1))
	{
?>
<HTML> 
<HEAD>
<TITLE><?php echo $r1["Comentario2"]; ?></TITLE>
<STYLE TYPE="text/css">
   <!--
    P{font-family:Tahoma, Verdana, Arial; font-size:13}
    -->
 </STYLE>	
<script language="JavaScript"> 
function redimenciona () {
	var h=document.foto.height+160; 
	var w=document.foto.width+50; 
	self.resizeTo(w,h); 
}
</script> 
</HEAD> 

<BODY LEFTMARGIN="0" TOPMARGIN="20" MARGINWIDTH="0" MARGINHEIGHT="0">

<CENTER>
<?php
echo "<IMG name=\"foto\" SRC=\"/imagenes/premios/".$r1["Foto"]."\" ONLOAD=\"redimenciona()\"><br><br> \n";
echo "<P>".$r1["Comentario1"]."<BR> \n";
echo $r1["Comentario2"]."<BR> \n";
echo "<B>".$r1["Año"]."</B></P> \n";
echo "</CENTER> \n";

	}
	Else
	{
		echo "<CENTER><B>ESTA FOTO NO EXISTE</B></CENTER>";
	}

	//cerramos la conexión con la base de datos 
	mysql_close($link);
?>
</BODY>
</HTML>