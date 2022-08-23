# Codifica di testi 2021-22 
Informatica Umanistica, Università di Pisa 
_Corso di Codifica di Testi_
Anno accademico 2021/22
Aurora Baroni

##  

## Esercizi svolti per il corso
* Esercizio 1: <b>Prologo</b>
    * Creare un file .xml ed inserire un prologo con la dichiarazione e un commento con le vostre informazioni

* Esercizio 2: <b>xml non annidato</b>
    * Scrivere e fare il check di un xml non opportunamente annidato 

* Esercizio 3: 
    * Scaricare il file doc.xml dalla cartella CorsoCodifica del corso e fare il check di validazione
    * Correggere il file, commentando errori e modifiche
    * Aggiungere un figlio (child) ad un elemento
    * Aggiungere un fratello (sibling) ad un elemento

* Esercizio 4: CDATA 
    * Inserire CDATA all'interno di un frammento di codice HTML  

* Esercizio 5: DTD
    * Definire i seguenti elementi:
        * Elemento root TEI 
        * Elementi figli:
            * _header_ obbligatoria una occorrenza 
            * _facsimile_ opzionale una occorrenza 
            * _text_ obbligatoria almeno una occorrenza 

* Esercizio 6: DTD 2 
    * Definire elemento root TEI 
    * Definire elementi figli
        * _header_ – obbligatorio una sola volta 
        * _facsimile_ – opzionale una volta sola 
        * _text_ – obbligatorio una o più volte 
            * _text_: mixed content con possibile elemento <seg> 
    * Aggiungendo attributi:
        * _header_ > type ( fixed, CDATA “intestazione”); lang (opzionale, NMTOKEN)
        * _facsimile_ > source (obbligatorio); ref (opzionale, IDREFS) 
        * _text_ > ID (obbligatorio, ID) type (opzionale contenuto testuale)

* Esercizio 7: DTD 3
    * Includere all'interno di un documento XML la dichiarazione del tipo, definire internamente gli attributi e gli elementi e validare 
    * Inserire nel prologo di un documento XML la dichiarazione del tipo di documento e validare 
    * Creare un file esterno con estensione .dtd prima di includerlo nel prologo XML 
   
 * Esercizio 8: TEI 1 
    * marcare un testo plain text di circa 3000 caratteri a piacere 
       * inserire prologo XML 
       * marcare la struttura usando gli elementi fin qui descritti
       * verificare che sia ben formato con xmllint ( o xerces con domCounter)
       * salvare il file XML su github 

* Esercizio 9: TEI 2 
   * Utilizzare puntatori, liste, note, glossari, nomi, rs, term

* Esercizio 10: Editoriale TEI
   * Trascrivere e codificare un frammento di lettera di Bellini

* Esercizio 11: Facsimile 
   * Trascrivere e codificare di nuovo un frammento di lettera di Bellini, ma utilizzando anche gli elementi facsimile
   (Collegamento testo-immagine)
  

