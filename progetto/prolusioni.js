var testo = document.getElementById('testoTraduzione');
var pulsante = document.getElementById('pulsanteTraduzione');
var testo2 = document.getElementById('testoTraduzione2');
var pulsante2 = document.getElementById('pulsanteTraduzione2');


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
    
