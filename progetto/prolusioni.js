var testo = document.getElementById('testoTraduzione');
var pulsante = document.getElementById('pulsanteTraduzione');
var testo2 = document.getElementById('testoTraduzione2');
var pulsante2 = document.getElementById('pulsanteTraduzione2');
var testofr = document.getElementById('testoTrascrizione');
var pulsantefr = document.getElementById('pulsanteTrascrizione');
var testofr2 = document.getElementById('testoTrascrizione2');
var pulsantefr2 = document.getElementById('pulsanteTrascrizione2');

pulsante.addEventListener('click', function(){
testo.classList.toggle('hidden');
if (pulsante.innerHTML == "CHIUDI TRADUZIONE"){
pulsante.innerHTML = "TRADUZIONE ITALIANA";
}else{
pulsante.innerHTML = "CHIUDI TRADUZIONE";
}
});


pulsante2.addEventListener('click', function(){
testo2.classList.toggle('hidden');
if (pulsante2.innerHTML == "CHIUDI TRADUZIONE"){
pulsante2.innerHTML = "TRADUZIONE ITALIANA";
}else{
pulsante2.innerHTML = "CHIUDI TRADUZIONE";
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


pulsantefr2.addEventListener('click', function(){
    testofr2.classList.toggle('hidden');
    if (pulsantefr2.innerHTML == "CHIUDI TRADUZIONE"){
        pulsantefr2.innerHTML = "TRADUZIONE ITALIANA";
        }else{
        pulsantefr2.innerHTML = "CHIUDI TRADUZIONE";
        }
    });