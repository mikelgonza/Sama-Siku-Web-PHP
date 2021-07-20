<?php
	// Abro el acceso a la base de datos MySQL
	$link = mysql_connect("localhost", "samasiku", "kaochimqqf00"); //Para el servidor en internet
	//$link = mysql_connect("localhost", "root"); //Para local
	mysql_select_db("samasiku_db", $link);
?>

<TABLE WIDTH="116" BGCOLOR="#000000" BORDER="0" CELLPADDING="1" CELLSPACING="0"><TR><TD>
<TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="0">
	<TR>
		<TD ALIGN="LEFT" VALIGN="MIDDLE" HEIGHT="17"><FONT COLOR="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;<B>Novedades</B></FONT></TD>
	</TR>
	<TR>
		<TD BGCOLOR="#FFFFFF" background="../../imagenes/fondoscroll.jpg">
<script language="JavaScript1.2">
var marqueewidth="110px"	//Ancho cuadro
var marqueeheight="100px"	//Alto cuadro

//velocidad (lento a rapido 1-10)
var marqueespeed=1

//Pausa con mouseover (0=no. 1=si)?
var pauseit=1

//Contenido del Div. Todo en una sola linea, respetando las comillas (ej:\'):
<?php
	$result2 = mysql_query("SELECT * FROM Noticias ORDER BY Id_noticia", $link);
	if ($r2 = mysql_fetch_array($result2))
	{
?>
var marqueecontent='<?php $i=0; ?><table><?php do { ?><tr><td valign=top>·</td><td><?php If $r2["Enlace"]=!"" Then ?><A HREF="<?php $r2["Enlace"]?>"><?php $replace(r2["Noticia"],vbCrLf,"<BR>")?></A><?php Else ?><?php $replace(rs["Noticia"],vbCrLf,"<BR>")?><?php End If ?></td></tr><tr><td colspan=2></td></tr><?php $i++; while ($r2 = mysql_fetch_array($result2)); ?></table>'
<?php
	}
	else
	{
?>
	var marqueecontent='No hay noticias'
<?php
	}

	mysql_free_result($result2);

	mysql_close($link);
?>

//No modificar//
marqueespeed=(document.all)? marqueespeed : Math.max(1, marqueespeed-1) //slow speed down by 1 for NS
var copyspeed=marqueespeed
var pausespeed=(pauseit==0)? copyspeed: 0
var iedom=document.all||document.getElementById
var actualheight=''
var cross_marquee, ns_marquee

function populate(){
if (iedom){
cross_marquee=document.getElementById? document.getElementById("iemarquee") : document.all.iemarquee
cross_marquee.style.top=parseInt(marqueeheight)+8+"px"
cross_marquee.innerHTML=marqueecontent
actualheight=cross_marquee.offsetHeight
}
else if (document.layers){
ns_marquee=document.ns_marquee.document.ns_marquee2
ns_marquee.top=parseInt(marqueeheight)+8
ns_marquee.document.write(marqueecontent)
ns_marquee.document.close()
actualheight=ns_marquee.document.height
}
lefttime=setInterval("scrollmarquee()",40)
}
window.onload=populate

function scrollmarquee(){
if (iedom){
if (parseInt(cross_marquee.style.top)>(actualheight*(-1)+8))
cross_marquee.style.top=parseInt(cross_marquee.style.top)-copyspeed+"px"
else
cross_marquee.style.top=parseInt(marqueeheight)+8+"px"
}
else if (document.layers){
if (ns_marquee.top>(actualheight*(-1)+8))
ns_marquee.top-=copyspeed
else
ns_marquee.top=parseInt(marqueeheight)+8
}
}

if (iedom||document.layers){
with (document){
if (iedom){
write('<div style="position:relative;width:'+marqueewidth+';height:'+marqueeheight+';overflow:hidden" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed">')
write('<div id="iemarquee" style="position:absolute;left:0px;top:0px;width:100%;">')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+marqueewidth+' height='+marqueeheight+' name="ns_marquee">')
write('<layer name="ns_marquee2" width='+marqueewidth+' height='+marqueeheight+' left=0 top=0 onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed"></layer>')
write('</ilayer>')
}
}
}
</script>
</TD></TR></TABLE>
		</TD>
	</TR>
</TABLE>