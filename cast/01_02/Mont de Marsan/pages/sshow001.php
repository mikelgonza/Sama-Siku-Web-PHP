
<script type="text/javascript" language="JavaScript"><!--
function onChangePageComboBox(){
	ShowImage(event.srcElement.options[event.srcElement.selectedIndex].value);
}
--></script>
<!--<bgsound id="sssnd">-->
<OBJECT ID="mepl" style="display:none" width="0" height="0" classid="CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95"
codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701"
standby="Loading Microsoft® Windows® Media Player components..." 
type="application/x-oleobject">
<PARAM NAME="AutoStart" VALUE="0">
<PARAM NAME="Volume" VALUE="0">
<PARAM NAME="ShowControls VALUE="0">
<PARAM NAME="ShowAudioControls VALUE="0">
<PARAM NAME="ShowPositionControls VALUE="0">
<PARAM NAME="ShowTracker VALUE="0">
<PARAM NAME="ShowDisplay VALUE="0">
<PARAM NAME="ShowCaptioning VALUE="0">
<PARAM NAME="ShowGotoBar VALUE="0">
<PARAM NAME="ShowStatusBar VALUE="0">
<EMBED type="application/x-mplayer2" pluginspage = "http://www.microsoft.com/Windows/MediaPlayer/"></EMBED>
</OBJECT>
<script language="JavaScript" type="text/javascript">
<!--
window.onload = onLoadSlideShow;

var curImage=-1;
var Interval=null;
var SndInterval=null;

var ImagesSrc = new Array("../images/1145.jpg","../images/2146.jpg","../images/3147.jpg","../images/4148.jpg","../images/5149.jpg","../images/6150.jpg","../images/7152.jpg","../images/8153.jpg","../images/9154.jpg","../images/10155.jpg","../images/11159.jpg","../images/12160.jpg","../images/13162.jpg","../images/14163.jpg","../images/15164.jpg","../images/16165.jpg","../images/17166.jpg","../images/18167.jpg","../images/19169.jpg","../images/20170.jpg","../images/21171.jpg","../images/22173.jpg");
var ImagesCx = new Array(640,640,330,640,640,327,640,640,640,640,640,640,640,640,640,640,640,640,640,640,640,322);
var ImagesCy = new Array(435,429,480,435,431,480,427,439,434,428,438,440,438,436,430,447,434,430,438,429,443,480);

var SoundsSrc = new Array(null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);

var fsImagesSrc = new Array("../images/src1145.jpg","../images/src2146.jpg","../images/src3147.jpg","../images/src4148.jpg","../images/src5149.jpg","../images/src6150.jpg","../images/src7152.jpg","../images/src8153.jpg","../images/src9154.jpg","../images/src10155.jpg","../images/src11159.jpg","../images/src12160.jpg","../images/src13162.jpg","../images/src14163.jpg","../images/src15164.jpg","../images/src16165.jpg","../images/src17166.jpg","../images/src18167.jpg","../images/src19169.jpg","../images/src20170.jpg","../images/src21171.jpg","../images/src22173.jpg");
var ImagePages = new Array("../pages/image001.php","../pages/image002.php","../pages/image003.php","../pages/image004.php","../pages/image005.php","../pages/image006.php","../pages/image007.php","../pages/image008.php","../pages/image009.php","../pages/image010.php","../pages/image011.php","../pages/image012.php","../pages/image013.php","../pages/image014.php","../pages/image015.php","../pages/image016.php","../pages/image017.php","../pages/image018.php","../pages/image019.php","../pages/image020.php","../pages/image021.php","../pages/image022.php");
var IndexPages = new Array("../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../index.php","../pages/index002.php","../pages/index002.php","../pages/index002.php","../pages/index002.php");

var TitlesSrc = new Array("145<br><span style=\"font-size: 10px\">(1 of 22)</span>","146<br><span style=\"font-size: 10px\">(2 of 22)</span>","147<br><span style=\"font-size: 10px\">(3 of 22)</span>","148<br><span style=\"font-size: 10px\">(4 of 22)</span>","149<br><span style=\"font-size: 10px\">(5 of 22)</span>","150<br><span style=\"font-size: 10px\">(6 of 22)</span>","152<br><span style=\"font-size: 10px\">(7 of 22)</span>","153<br><span style=\"font-size: 10px\">(8 of 22)</span>","154<br><span style=\"font-size: 10px\">(9 of 22)</span>","155<br><span style=\"font-size: 10px\">(10 of 22)</span>","159<br><span style=\"font-size: 10px\">(11 of 22)</span>","160<br><span style=\"font-size: 10px\">(12 of 22)</span>","162<br><span style=\"font-size: 10px\">(13 of 22)</span>","163<br><span style=\"font-size: 10px\">(14 of 22)</span>","164<br><span style=\"font-size: 10px\">(15 of 22)</span>","165<br><span style=\"font-size: 10px\">(16 of 22)</span>","166<br><span style=\"font-size: 10px\">(17 of 22)</span>","167<br><span style=\"font-size: 10px\">(18 of 22)</span>","169<br><span style=\"font-size: 10px\">(19 of 22)</span>","170<br><span style=\"font-size: 10px\">(20 of 22)</span>","171<br><span style=\"font-size: 10px\">(21 of 22)</span>","173<br><span style=\"font-size: 10px\">(22 of 22)</span>");

var Durations = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
var Loops = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

var Images = new Array();
var	nSoundLoading=-1;
var	nSoundPlaying=-1;
var	bWrap = 1;
var bSound = 1;
var bPlay = 1;      
var	nDirect = 0;
var nmie=true;  
if(navigator.appName.indexOf("Microsoft")!=-1)
  {nmie=false;}

var F = new Array();
var t=-1;
F[0] = "Barn(orientation=horizontal, motion=out)"
F[1] = "Barn(orientation=horizontal, motion=in)"
F[2] = "Barn(orientation=vertical, motion=out)"
F[3] = "Barn(orientation=vertical, motion=in)"
F[4] = "Blinds(bands=8,direction='right')"
F[5] = "Blinds(bands=8,direction='left')"
F[6] = "Blinds(bands=8,direction='up')"
F[7] = "Blinds(bands=8,direction='down')"
F[8] = "Checkerboard(squaresX=12,squaresY=8,direction='RIGHT',duration=1)"
F[9] = "Checkerboard(squaresX=12,squaresY=8,direction='LEFT',duration=1)"
F[10] = "Checkerboard(squaresX=12,squaresY=8,direction='UP',duration=1)"
F[11] = "Checkerboard(squaresX=12,squaresY=8,direction='DOWN',duration=1)"
F[12] = "Fade(duration=1.0,overlap=1.0)"
F[13] = "Fade(duration=1.0,overlap=0.0)"
F[14] = "gradientWipe(duration=1, wipestyle=0, gradientsize=0.5)"
F[15] = "gradientWipe(duration=1, wipestyle=1, gradientsize=0.5)"
F[16] = "Inset( )"
F[17] = "Iris(irisStyle=diamond, motion=in, duration=1)"
F[18] = "Iris(irisStyle=diamond, motion=out, duration=1)"
F[19] = "Iris(irisStyle=circle, motion=in, duration=1)"
F[20] = "Iris(irisStyle=circle, motion=out, duration=1)"
F[21] = "Iris(irisStyle=cross, motion=in, duration=1)"
F[22] = "Iris(irisStyle=cross, motion=out, duration=1)"
F[23] = "Iris(irisStyle=plus, motion=in, duration=1)"
F[24] = "Iris(irisStyle=plus, motion=out, duration=1)"
F[25] = "Iris(irisStyle=square, motion=in, duration=1)"
F[26] = "Iris(irisStyle=square, motion=out, duration=1)"
F[27] = "Iris(irisStyle=star, motion=in, duration=1)"
F[28] = "Iris(irisStyle=star, motion=out, duration=1)"
F[29] = "Pixelate(maxSquare=5,duration=1, enabled='false')"
F[30] = "Pixelate(maxSquare=10,duration=1, enabled='false')"
F[31] = "Pixelate(maxSquare=20,duration=1, enabled='false')"
F[32] = "RadialWipe(duration=1, wipeStyle='clock')"
F[33] = "RadialWipe(duration=1, wipeStyle='wedge')"
F[34] = "RadialWipe(duration=1, wipeStyle='radial')"
F[35] = "RandomBars(orientation='horizontal') ]"
F[36] = "RandomBars(orientation='vertical') "
F[37] = "RandomDissolve()"
F[38] = "Slide(slideStyle='hide', bands=1)"
F[39] = "Slide(slideStyle='push', bands=1)"
F[40] = "Slide(slideStyle='swap', bands=1)"
F[41] = "Slide(slideStyle='hide', bands=5)"
F[42] = "Slide(slideStyle='push', bands=5)"
F[43] = "Slide(slideStyle='swap', bands=5)"
F[44] = "Slide(slideStyle='hide', bands=10)"
F[45] = "Slide(slideStyle='push', bands=10)"
F[46] = "Slide(slideStyle='swap', bands=10)"
F[47] = "Spiral(GridSizeX=10, GridSizeY=10)"
F[48] = "Spiral(GridSizeX=50, GridSizeY=50)"
F[49] = "Stretch(stretchStyle='hide')"
F[50] = "Stretch(stretchStyle='spin')"
F[51] = "Stretch(stretchStyle='push')"
F[52] = "Strips(Duration=1, Motion='leftdown')"
F[53] = "Strips(Duration=1, Motion='leftup')"
F[54] = "Strips(Duration=1, Motion='rightdown')"
F[55] = "Strips(Duration=1, Motion='rightup')"
F[56] = "Wheel(duration=1,spokes=2)"
F[57] = "Wheel(duration=1,spokes=5)"
F[58] = "Wheel(duration=1,spokes=10)"
F[59] = "Wheel(duration=1,spokes=20)"
F[60] = "Wipe(duration=1, GradientSize=0.25, motion=forward, wipeStyle=0)"
F[61] = "Wipe(duration=1, GradientSize=0.25, motion=forward, wipeStyle=1)"
F[62] = "Wipe(duration=1, GradientSize=0.25, motion=reverse, wipeStyle=0)"
F[63] = "Wipe(duration=1, GradientSize=0.25, motion=reverse, wipeStyle=1)"
F[64] = "Zigzag(GridSizeX=10, GridSizeY=10)"
F[65] = "Zigzag(GridSizeX=50, GridSizeY=50)"

var v55=window.createPopup;

function onChangeFilter(nWhat) 
{
    if (v55==null) return; 
    var im = document.getElementById("imgtbl");
    if(im==null) return;
    if(nWhat==0)
    {
		if(t<0)
			im.style.filter="progid:DXImageTransform.Microsoft."+F[Math.round((F.length-1)*Math.random())];
		else{
			im.style.filter="progid:DXImageTransform.Microsoft."+F[t++];
			if(t >= F.length) t = 0;
		}
        im.filters[0].apply();
    }
    else
        im.filters[0].play();
}

function DisplayImage()
{
	if(onSound(curImage) == 1)	// wait sound cashed
		return 1;
	
	if(!bPlay || Images[curImage].complete)
	{
		onChangeFilter(0);

		// Display image 
		var im = document.getElementById("pgimg0");
		if(im != null){
			im.src=Images[curImage].src;
			im.width=ImagesCx[curImage];
			im.height=ImagesCy[curImage];
		}

		onChangeFilter(1);

		var tlt = document.getElementById("pgtlt0");
		if(tlt != null)
			tlt.innerHTML=TitlesSrc[curImage];

		return 2;
	}
	
	return 1;
}



function MaximizeWin()
{
	window.moveTo(0,0);
	if (document.all){
		top.window.resizeTo(screen.availWidth,screen.availHeight);
	}
	else 
	if (document.layers || document.getElementById){
		if (top.window.outerHeight < screen.availHeight ||
			top.window.outerWidth < screen.availWidth){
			top.window.outerHeight = screen.availHeight;
			top.window.outerWidth = screen.availWidth;
		}
	}
}

function onLoadSlideShow()
{
    

    for(var i=0;i<ImagesSrc.length;i++){
        Images[i] = new Image();
        Images[i].src = ImagesSrc[i];
    }

    paramsPos = window.location.toString().indexOf('?');
    if(paramsPos != -1){
        curImage = new Number(window.location.toString().substring(paramsPos + 1));
        DisplayImage();
    }
	else{
		switch( nDirect )
		{
			case 0:	 // forward 
				curImage=-1;
				break;
			case 1:	 // reverse 
				curImage=ImagesSrc.length;
				break;
		}
		onChangeTimer( );
	}
}
function GetAbsolutePath(relativePath)
{
	if((nSlash = document.location.href.lastIndexOf("/"))==-1)
		return relativePath;
	returnPath = document.location.href.substring(0,nSlash);
	path = relativePath;
	while(path.substring(0,3) == "../")
	{
		nSlash = returnPath.lastIndexOf("/");
		if(nSlash==-1)
			return relativePath;
		returnPath = returnPath.substring(0,nSlash);
		path = path.substring(3,path.length);
	}
	while((nSlash=returnPath.indexOf("%20"))!=-1)
		returnPath = returnPath.substring(0,nSlash)  + " " + returnPath.substring(nSlash+3,returnPath.length);
		
	return returnPath + "/" + path;
}

function onSound(nSound)
{
    if(nmie)
		return 2;
	var snd = document.getElementById("mepl");
    if(snd == null)
        return -1;
    if(bSound==0 || nSound == -1 || SoundsSrc[nSound] == "stop" ){
		nSoundPlaying = -1;
		snd.Stop();
		return 0;
	}
    else if(SoundsSrc[nSound] != null ){
        if(nSoundPlaying == nSound) return 2; 
        if(nSoundLoading!=nSound) 
			try{
				snd.Stop(); 
				snd.FileName = GetAbsolutePath(SoundsSrc[nSound]);
				nSoundLoading=nSound; 
			}catch(Exeption){
				return -1;
			}
        if(snd.HasError) return -1; if(snd.readyState<3) return 1;
        snd.PlayCount=Loops[nSound]; snd.Play(); if(snd.PlayState != 2) return 1;
        nSoundPlaying = nSound; nSoundLoading = -1;
    }
	return 2;
}

function onPlaySound( )
{ 
    bSound=1; 
    for(var i=curImage; i>=0; i-=1)
        if(SoundsSrc[i] != null )
            break;
   	if(onSound(i) == 1)	// wait sound cashed
		SndInterval = setInterval("onPlaySound( )",1000);
	else
		clearInterval(SndInterval);
}

function onStopSound( ){ bSound=0; onSound(-1); clearInterval(SndInterval); }

function onPlay( )
{
    bPlay = 1;
    onChangeTimer( );
}

function onStop( )
{
    bPlay = 0;
    clearInterval(Interval);
}

function onStopAll( ){onStop( ); onStopSound( );}
function onPlayAll( ){onPlay( ); onPlaySound( );}

function onChangeTimer( )
{
	switch( nDirect )
	{
		case 0:	 // forward 
			if(!DisplayNextImage(1))
				clearInterval(Interval);
			break;
		case 1:	 // reverse 
			if(!DisplayNextImage(-1))
				clearInterval(Interval);
			break;
		case 2:	 // random 
			if(!DisplayNextImage(0))
				clearInterval(Interval);
			break;
	}
}

function ShowImage(nDirect){
	bPlay = 0;
	DisplayNextImage(nDirect);
	if(bSound)
		onPlaySound( );
}

function DisplayNextImage(nDirect)
{
	var visImage = curImage;
	switch( nDirect )
	{
		case 2:	 // last 
			curImage = ImagesSrc.length - 1;
			break;
		case 1:	 // next
			if(curImage+1 < ImagesSrc.length)
				curImage=(curImage+1);
			else if(bWrap) curImage=0;
				 else return 0; 
			break;
		case -1:	 // prev
			if(curImage > 0)
				curImage=(curImage-1);
			else if(bWrap) curImage=ImagesSrc.length-1;
				 else return 0;
			break;
		case -2:	 // first 
			curImage = 0;
			break;
		case 0:	 // random 
			curImage=Math.round((ImagesSrc.length-1)*Math.random());
			break;
		case -3:	 // image page
			window.location=ImagePages[curImage]
			return 0;
		case -4:	 // index page
			window.location=IndexPages[curImage]
			return 0;
		case 3:	 // image 
			window.location=ImagesSrc[curImage]
			return 0;
		case 4:	 // full size image
			window.location=fsImagesSrc[curImage]
			return 0;
		default:
			if(nDirect > 99)
				curImage = nDirect - 100;
			else
				return 0;
	}
    clearInterval(Interval);

	var nCache = DisplayImage();

	if(bPlay)
		if(nCache==2){ // all datas loaded
			if(Durations[curImage] != 0)
			   Interval = setInterval("onChangeTimer()",Durations[curImage]);
			else
			   Interval = setInterval("onChangeTimer()",5000); // common duration
		}else{
			curImage = visImage;
			Interval = setInterval("onChangeTimer()",1000); // wait for loading
			return 1;
		}

	return 1;
}

function onClickImage()
{
  linkTo = 1;
  switch(linkTo)
  {
	case 0: // Image
		DisplayNextImage(3)
		break;
	case 2: // FullSize Image
		DisplayNextImage(4)
		break;
	case 3: // Image page
		DisplayNextImage(-3)
		break;
  }	
}
-->
</script>
<table align="center">
<tr><td></td><td align="center"><span id=pgtlt0 style="font-size: 19px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Loading ...</span></td><td></td></tr>
<tr><td></td><td align="center">
<!-- hor menu -->
<table cellspacing=0 cellpadding=0 border=0><tr><td>
<table cellspacing=2 cellpadding=0><tr>
<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:ShowImage(-2)" onmouseover="this.src='../images/glassblue.first.h.png'" onmouseout="this.src='../images/glassblue.first.n.png'" src="../images/glassblue.first.n.png" alt="Primera página"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:ShowImage(-2)"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Primera</span></span></td></tr></table></td>

<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:ShowImage(-1)" onmouseover="this.src='../images/glassblue.prev.h.png'" onmouseout="this.src='../images/glassblue.prev.n.png'" src="../images/glassblue.prev.n.png" alt="Página anterior"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:ShowImage(-1)"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Atrás</span></span></td></tr></table></td>

<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:onPlay()" onmouseover="this.src='../images/glassblue.play.h.png'" onmouseout="this.src='../images/glassblue.play.n.png'" src="../images/glassblue.play.n.png" alt="Reproducir"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:onPlay()"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Play</span></span></td></tr></table></td>

<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:onStop()" onmouseover="this.src='../images/glassblue.stop.h.png'" onmouseout="this.src='../images/glassblue.stop.n.png'" src="../images/glassblue.stop.n.png" alt="Parar"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:onStop()"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Stop</span></span></td></tr></table></td>

<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:ShowImage(1)" onmouseover="this.src='../images/glassblue.next.h.png'" onmouseout="this.src='../images/glassblue.next.n.png'" src="../images/glassblue.next.n.png" alt="Página siguiente"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:ShowImage(1)"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Siguiente</span></span></td></tr></table></td>

<td><table><tr><td align='center' valign='middle'><img width="48" height="32" style="cursor=hand" onclick="javascript:ShowImage(2)" onmouseover="this.src='../images/glassblue.last.h.png'" onmouseout="this.src='../images/glassblue.last.n.png'" src="../images/glassblue.last.n.png" alt="Ultima página"></td></tr><tr><td align='center' valign='middle'>
<span style="cursor=hand" onclick="javascript:ShowImage(2)"><span style="font-size: 11px; font-weight: 800; font-family: Verdana; font-style: normal;color:#0000c0;">Ultima</span></span></td></tr></table></td>

</tr></table></td></tr></table>
<!-- hor menu end -->
</td><td></td></tr>
<tr>
  <td valign="top"></td>
  <td align="center" valign="middle"><table><tr><td id="imgtbl" align="center" valign="middle" width=640 height=480><img align="middle" id="pgimg0" src="../images/1145.jpg" border=0 >


</td></tr></table></td>
  <td valign="top"></td>
</tr>
<tr><td></td><td align="center"></td><td></td></tr>
</table>

