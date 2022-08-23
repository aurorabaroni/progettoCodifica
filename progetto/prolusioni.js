function gestoreScorriSinistra(){
//Quando si clicca il pulsante, visualiza la foto precedente
    try{

		if(contFoto == 0){
			contFoto = arrayCarte.length - 1;
		}
		else{
			contFoto--;
		}

		mostraFoto(arrayCarte[contFoto]);

				
    }
    catch(e){
		alert("gestoreScorriSinistra: " + e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreScorriDestra(){
//Quando si clicca il pulsante, visualiza la foto successiva
    try{
		if(contFoto == (arrayCarte.length - 1)){
			contFoto = 0;
		}
		else{
			contFoto++;
		}

		mostraFoto(arrayCarte[contFoto]);
    }
    catch(e){
		alert("gestoreScorriDestra: " + e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreAreaOver(){
//Evidenzia l'area quando ci si passa sopra
    try{
        this.focus();
    }
    catch(e){
		alert("gestoreAreaOver: " + e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreAreaOut(){
//Mette fuori fuoco l'area quando ci si allontana
    try{
        this.blur();
    }
    catch(e){
		alert("gestoreAreaOut: " + e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreMostraInfo(){
//Mostra le informazioni selezionate
    try{
        var radioID = this.getAttribute("id");
        resettaInfo();
        nodoId = document.getElementById(arrayChiaviRadio[radioID]);
        mostra(nodoId);
    }
    catch(e){
		alert("gestoreMostraInfo: " + e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreMouseMove(){
//Se c'è il canvas, allora memorizza le coordinate del mouse e scrive una lettera
	try{
        posizioneMouse.x = event.offsetX;
        posizioneMouse.y = event.offsetY;
        scriviLettera();
	}
	catch(e){
		alert("gestoreMouseMove: "+e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreMouseDown(){
//Se c'è il canvas, salva le coordinate di inizio della frase
	try{
        posizioneMouse.down = true;

        posizioneInizio.x = event.offsetX;
        posizioneInizio.y = event.offsetY;
	}
	catch(e){
		alert("gestoreMouseDown: "+e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreMouseUp(){
//Se c'è il canvas, salva quando viene rilasciato il pulsante del mouse
	try{
		posizioneMouse.down = false;
	}
	catch(e){
		alert("gestoreMouseUp: "+e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreCancella(){
//Se si preme il bottone Cancella, viene resettata la scrittura a mano libera
	try{
		nodoCanvas.width = nodoCanvas.width;
		contesto.font = grandezzaFont + "px 'Beth Ellen'";
		contatore = 0;
	}
	catch(e){
		alert("gestoreDbClick: "+e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreRidimensionamento(){
//Quando viene ridimensionata la finestra, crea o cancella il canvas e il testo in base alle nuove dimensioni
	try{
        nodoCanvas.width = nodoDivCanvas.clientWidth;
        nodoCanvas.height = nodoDivCanvas.clientHeight;
        contesto = nodoCanvas.getContext("2d");
        contatore = 0;
        contesto.font = grandezzaFont + "px 'Beth Ellen'";
	}
	catch(e){
		alert("gestoreRidimensionamento: "+e);
	}
}
/* ---------------------------------------------------------------- */
function gestoreAcquisisciTesto(){
//Prende la stringa che serve a scriviLettera()
	try{
        var idZona = this.getAttribute("id");
        var idTraduzione = arrayChiaviPericopi[idZona];
        contatore = 0;

        frase = document.getElementById(idTraduzione).innerText + "             ";
	}
	catch(e){
		alert("gestoreAcquisisciTesto: "+e);
	}
}
/* ---------------------------------------------------------------- */
function resettaInfo(){
//
    for(var i=0; i<nodoTestoFrancese.children.length-1; i++){
        nodoTestoFrancese.children[i].style.display = "none";
    }
}
/* ---------------------------------------------------------------- */
function mostra(nodo){
//
    nodo.style.display = "initial";
}
/* ---------------------------------------------------------------- */
function mostraFoto(infoCorrente){
//
	document.getElementById(infoCorrente["none"]).setAttribute("class", "nascondi");
	document.getElementById(infoCorrente["foto"]).setAttribute("class", infoCorrente["classe"]);
	nodoNomeFoto.innerText = infoCorrente["titolo"];
}
/* ---------------------------------------------------------------- */
function scriviLettera(){
//Se il pulsante del mouse è premuto, scrive la lettera
	if (posizioneMouse.down){
		var distanza = calcolaDistanza(posizioneInizio, posizioneMouse);
		var lettera = frase[contatore];
		var stepSize = calcolaLarghezzaLettera(lettera);
	
		if (distanza > stepSize){  
			var angolo = Math.atan2((posizioneMouse.y - posizioneInizio.y), (posizioneMouse.x - posizioneInizio.x));
		  
			contesto.save();
			contesto.translate(posizioneInizio.x, posizioneInizio.y);
			contesto.rotate(angolo);
			contesto.fillText(lettera,0,0);
			contesto.restore();

			contatore++;
			if (contatore > frase.length-1) {
				contatore = 0;
			}
		
			posizioneInizio.x = posizioneInizio.x + Math.cos(angolo) * stepSize;
			posizioneInizio.y = posizioneInizio.y + Math.sin(angolo) * stepSize;
		}
	}     
}
/* ---------------------------------------------------------------- */
function calcolaDistanza(punto1, punto2){
//Calcola la distanza tra due punti
	var xs = 0;
	var ys = 0;
 
	xs = punto2.x - punto1.x;
	xs = xs * xs;
 
	ys = punto2.y - punto1.y;
	ys = ys * ys;
 
	return Math.sqrt(xs + ys);
}
/* ---------------------------------------------------------------- */
function calcolaLarghezzaLettera(lett){
//Se è stata scritta almeno una lettera, ne calcola la larghezza
	if (contesto.fillText){
		return contesto.measureText(lett).width;
	}
	else if (contesto.mozDrawText){
		return contesto.mozMeasureText(lett);
	} 
}
/* ---------------------------------------------------------------- */

// definizione delle VARIABILI

var nodoPulsanteSinistro;
var nodoPulsanteDestro;
var nodoNomeFoto;

var nodoTestoFrancese;

var nodoContenitoreTrascrizione;
var nodoContenitorePericopi;

var nodoRadioTrascrizione;
var nodoRadioPericopi;
var nodoRadioTermini;
var nodoRadioLinguistico;
var nodoRadioDate;
var nodoRadioCancellature;
var nodoRadioAggiunte;
var nodoRadioInterventi;

var nodoCanvas;
var nodoCanvas;
var nodoDivCanvas;
var nodoNuovoFoglio;
var aree;

var contFoto;
var posizioneInizio;
var posizioneMouse;
var contatore;
var grandezzaFont;
var frase;
var contesto;

var arrayCarte = [{foto: "pag14", classe: "fronte", titolo: "Carta 14 (fronte)", none: "pag15"}, {foto: "pag15", classe: "retro", titolo: "Carta 15 (retro)", none: "pag14"}, {foto: "pag15", classe: "fronte", titolo: "Carta 15 (fronte)", none: "pag14"}, {foto: "pag14", classe: "retro", titolo: "Carta 15 (retro)", none: "pag15"}];

var arrayChiaviRadio = {radioTrascrizione: "contenitoreTrascrizione", radioPericopi: "contenitorePericopi", radioTermini: "contenitoreTermini", radioLinguistico: "contenitoreLinguistico", radioDate: "contenitoreDate", radioCancellature: "contenitoreCancellature", radioAggiunte: "contenitoreAggiunte", radioInterventi: "contenitoreInterventi"};

var arrayChiaviPericopi = {peric1: "pericope1_ita", peric2: "pericope2_ita", peric3: "pericope3_ita", peric4a: "pericope4_ita", peric4b: "pericope4_ita", peric5: "pericope5_ita", peric6: "pericope6_ita", peric7: "pericope7_ita", peric8: "pericope8_ita", peric9: "pericope9_ita", peric10: "pericope10_ita", peric11: "pericope11_ita", peric3a: "pericope3a_ita", peric8b: "pericope8b_ita"};


/* ---------------------------------------------------------------- */
function gestoreLoad(){
// gestione caricamento pagina
	try{

		nodoPulsanteSinistro = document.getElementById("pulsanteSinistro");
		nodoPulsanteDestro = document.getElementById("pulsanteDestro");
		nodoNomeFoto = document.getElementById("nomeFoto");

        nodoTestoFrancese = document.getElementById("testoFrancese");

		nodoContenitoreTrascrizione = document.getElementById("contenitoreTrascrizione");
        nodoContenitorePericopi = document.getElementById("contenitorePericopi");

        nodoRadioTrascrizione = document.getElementById("radioTrascrizione");
        nodoRadioPericopi = document.getElementById("radioPericopi");
        nodoRadioTermini = document.getElementById("radioTermini");
        nodoRadioLinguistico = document.getElementById("radioLinguistico");
        nodoRadioDate = document.getElementById("radioDate");
        nodoRadioCancellature = document.getElementById("radioCancellature");
        nodoRadioAggiunte = document.getElementById("radioAggiunte");
        nodoRadioInterventi = document.getElementById("radioInterventi");
     
		nodoDivCanvas = document.getElementById("divCanvas");
        nodoCanvas = document.getElementById("canvas");
       	nodoNuovoFoglio = document.getElementById("nuovoFoglio");

        

		document.getElementById("pag15").setAttribute("class", "nascondi");
		document.getElementById("checked").checked = true;
        resettaInfo();
        mostra(nodoContenitoreTrascrizione);

		contFoto = 0;
        posizioneInizio = {x:0, y:0};
		posizioneMouse = {x:0, y:0, down:false};
		contatore = 0;
        grandezzaFont = 18;
        nodoCanvas.width = nodoDivCanvas.clientWidth;
		nodoCanvas.height = nodoDivCanvas.clientHeight;		
		contesto = nodoCanvas.getContext("2d");       
		contesto.font = grandezzaFont + "px 'Beth Ellen'";
		frase = document.getElementById("pericope1_ita").innerText + "             ";
		aree = document.getElementsByTagName('area');



		nodoPulsanteSinistro.onclick = gestoreScorriSinistra;
		nodoPulsanteDestro.onclick = gestoreScorriDestra;
		
		nodoRadioTrascrizione.onclick = gestoreMostraInfo;
        nodoRadioPericopi.onclick = gestoreMostraInfo;
        nodoRadioTermini.onclick = gestoreMostraInfo;
        nodoRadioLinguistico.onclick = gestoreMostraInfo;
        nodoRadioDate.onclick = gestoreMostraInfo;
        nodoRadioCancellature.onclick = gestoreMostraInfo;
        nodoRadioAggiunte.onclick = gestoreMostraInfo;
        nodoRadioInterventi.onclick = gestoreMostraInfo;

        nodoDivCanvas.onmousemove = gestoreMouseMove;
		nodoDivCanvas.onmousedown = gestoreMouseDown;
		nodoDivCanvas.onmouseup = gestoreMouseUp;
		nodoDivCanvas.onmouseout = gestoreMouseUp;
        nodoNuovoFoglio.onclick = gestoreCancella;
        window.onresize = gestoreRidimensionamento;
		for(var i=0; i< aree.length; i++){
			aree[i].onclick = gestoreAcquisisciTesto;
			aree[i].onmouseover = gestoreAreaOver;
			aree[i].onmouseout = gestoreAreaOut;
		}
	}
	catch(e){
		alert("gestoreLoad: " + e);
	}
}	
/* ---------------------------------------------------------------- */
// azione al caricamento della pagina
window.onload = gestoreLoad;
/* ---------------------------------------------------------------- */