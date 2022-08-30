var testo = document.getElementById('testoTraduzione');
var pulsante = document.getElementById('pulsanteTraduzione');

var testofr = document.getElementById('testoTrascrizione');
var pulsantefr = document.getElementById('pulsanteTrascrizione');

pulsante.addEventListener('click', function(){
testo.classList.toggle('hidden');
if (pulsante.innerHTML == "CHIUDI TRADUZIONE"){
pulsante.innerHTML = "TRADUZIONE ITALIANA";
}else{
pulsante.innerHTML = "CHIUDI TRADUZIONE";
}
});

pulsantefr.addEventListener('click', function(){
testofr.classList.toggle('hidden');
if (pulsantefr.innerHTML == "-"){
    pulsantefr.innerHTML = "TRADUZIONE ITALIANA";
    }else{
    pulsantefr.innerHTML = "CHIUDI TRADUZIONE";
    }
});