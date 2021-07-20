var winName="titulo" 
function Abrir_Ventana(theURL,w,h) { 

var windowprops ="top=0,left=0,toolbar=no,location=no,status=no, menubar=no,scrollbars=no, resizable=no,width=" + w + ",height=" + h;

window.open(theURL,winName,windowprops); 
} 