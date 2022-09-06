<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
xmlns:tei="http://www.tei-c.org/ns/1.0" 
xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" href="style.css"/>
            <link rel="icon" type="image/x-icon" href="favicon.ico"/>
            <title>Fogli 14 e 15 - Prolusioni 3</title>
        </head>

        <body>
            <header>
                <h1>Prolusioni di Ferdinand de Saussure</h1>
                <nav id="navbar">
                    <ul> 
                        <li><a class="button" href = "#Intro">Informazioni</a></li>
                        <li><a class="button" href = "#Pag14">Pagina 14</a></li> 
                        <li><a class="button" href = "#Pag15">Pagina 15</a></li>
                        <li><a class="button" href = "#Keywords">Glossario</a></li>
                        <li><a class="button" href = "#Info">Bibliografia</a></li>
                    </ul>
                </nav>           
            </header>
<!-- ********************************* INTRODUZIONE *************************************** -->
            <div class="container" id="Intro">
                <h1><i>Informazioni sulla fonte originale</i></h1>   
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage"/>
            <div class="container" id="Codifica">
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/></div>
                
                <div class="container-legenda">
                    <h4>LEGENDA ELEMENTI</h4>
                    <p><li class ="termini">Elementi Terminologici: GIALLO</li></p>
                    <p><li class="abbreviazioni">Abbreviazioni: ARANCIONE</li></p>
                    <p><li class="corresp">Eventi databili: VERDE</li></p>
                    <p><li class="aggiunte_lat">Aggiunte: BLU</li></p>
                    <p><li class="glottonimi">Glottonimi: MARRONE</li></p>
                    <p><li class="toponimi">Toponimi: FUSCIA</li></p>
                    <p><li class="correzioni">Correzioni editore: ROSSO</li></p>
                    <p><li class="cancellazioni">Cancellazioni</li></p>
                    <p><li class="orgreg">(Originale)/Revisionato</li></p>
                    <p><li class="gap">Gap: VIOLA</li></p>
              </div>                              
            </div>    
<!-- ********************************* PAGINA 14  *************************************** -->        
            <div class="containerP1" id="Pag14">
                <h2>pagina 14</h2>
                <div class="img-prolusione">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:graphic[@xml:id='Pag14']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">pag14</xsl:attribute>
                    </xsl:element>
                </div>
<!-- ********************************* PAGINA 14 - Trascrizione ************************ --> 
                <div class="testo-fr">
                    <h3>Trascrizione francese</h3>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:fw[@xml:id='PageNum-14']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='1']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='2']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='3']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='4']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='5']"/> <br/>
                </div> 
<!-- ************************ PAGINA 14 - TRADUZIONE in Italiano  ************************ --> 
                <div class="testo-it">
                    <button id="pulsanteTraduzione">TRADUZIONE ITALIANA</button>
                    <span id="testoTraduzione" class="hidden"> 
                        <div class ="testo-fr">
                            <h3>Traduzione in italiano</h3>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per1']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per2']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per3']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per4']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per5']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per6']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per7']"/>
                        </div>
                    </span>
                </div>
            </div>
<!-- ************************************ PAGINA 15 **************************************** -->  
            <div class="containerP2" id="Pag15">
                <h2>pagina 15</h2>
                <div class="img-prolusione">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:graphic[@xml:id='Pag15']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">pag15</xsl:attribute>
                    </xsl:element>
                </div>
<!-- ************************ PAGINA 15 - Trascrizione **************************************** --> 
                <div class="testo-fr">
                    <h3>Trascrizione francese</h3>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:fw[@xml:id='PageNum-15']"/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='6']"/> <br/>
                    <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n='7']"/> <br/>
                </div> 
<!-- ************************ PAGINA 15 - TRADUZIONE in Italiano  ************************ -->
                <div class="testo-it">
                    <button id="pulsanteTraduzione2">TRADUZIONE ITALIANA</button>
                    <span id="testoTraduzione2" class="hidden">
                        <div class ="testo-fr">
                            <h3>Traduzione in italiano</h3>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per8']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per9']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per10']"/>
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div/tei:ab[@corresp='#Per11']"/>
                       </div>
                   </span>
                </div>
            </div>
<!-- ************************ GLOSSARIO  ************************ -->
            <div class="container" id="Keywords"> 
                <h2>Glossario</h2>
                <xsl:apply-templates select="//tei:back/tei:div[@type='addList']/tei:list[@type='terminology']"/>
            </div>
<!-- ************************ BIBLIOGRAFIA  ************************ -->
            <div class="container" id="Info">
                <h2>Bibliografia</h2>
                <xsl:apply-templates select="//tei:back/tei:div[@type='addList']/tei:listBibl" />
            </div>
        </body>
        <script src="prolusioni.js"></script>
    </html>
</xsl:template>

<!-- ********************************************************************* -->
<!-- SEGUONO le definizioni generali dei Template applicati poi sopra -->
<!-- ********************************************************************* -->
<!--templates - INTRODUZIONE ******************************** -->
<!-- ********************************* -->
    <xsl:template match="tei:titleStmt">
        <p> <h2>TITOLO ORIGINALE</h2>
            <xsl:value-of select="tei:title[@type='main']"/>
            <xsl:value-of select="tei:title[@xml:lang='fr']"/>
        </p>
        <p> <h2>AUTORE</h2>
            <!-- foto di Ferdinand de Saussure -->
            <div align="center" id="contenitoreRitratto">
                <img src="fds.jpg" alt="FdS" width="141" height="133"></img>
            </div>
            <i><xsl:value-of select="tei:author"/></i>
        </p>
    </xsl:template>
<!-- **************************************************************************+ -->    
    <xsl:template match="tei:sourceDesc/tei:msDesc">    
        <p> <h2>CONSERVAZIONE</h2> Questi manoscritti sono conservati presso la <xsl:value-of select="tei:msIdentifier/tei:institution"/>. <br/>
            Si tratta di un'opera ad accesso libero della collezione <xsl:value-of select="tei:msIdentifier/tei:collection"/>
            , con identificativo <xsl:value-of select="tei:msIdentifier/tei:idno"/>
        </p>
        <xsl:for-each select="tei:physDesc/tei:objectDesc">
            <p> <h2>SUPPORTO FISICO</h2> Il supporto utilizzato sono dei <xsl:value-of select="tei:supportDesc/tei:support"/></p>
            <p> <h2>DESCRIZIONE</h2><xsl:value-of select="tei:layoutDesc"/></p>
        </xsl:for-each>
        <p><h2>STORIA</h2> <xsl:value-of select="tei:history"/></p> <!-- non penso vada-->
    </xsl:template>
<!-- **************************************************************************+ -->     
    <xsl:template match="tei:langUsage">
        <p> <h2>LINGUA ORIGINALE</h2> <xsl:value-of select="tei:language[@ident='fr']"/></p>
        <p> <h2>ALTRE LINGUE</h2> <xsl:value-of select="tei:language[@ident='fp']"/></p>
        <p> <xsl:value-of select="tei:language[@ident='lt']"/></p>
    </xsl:template>
<!-- **************************************************************************+ -->   
    <xsl:template match="tei:editionStmt">
        <h1><i>Informazioni sulla codifica</i></h1>
        <p><xsl:value-of select="tei:edition"/></p>
        <xsl:for-each select="tei:respStmt">
            <p><xsl:value-of select="."></xsl:value-of></p>
        </xsl:for-each>
        <h2>NOTE SULLA CODIFICA</h2>
        <p><i>* per la <b>sillabazione</b>:</i> <xsl:value-of select="//tei:hyphenation"/></p>
        <p><i>* per la <b>punteggiatura</b>:</i><xsl:value-of select="//tei:punctuation"/></p>
        <p><i>* per la <b>normalizzazione</b>:</i><xsl:value-of select="//tei:normalization"/></p>
        <br/>
    </xsl:template>
<!-- ********************************** -->
<!-- ********************************** -->    
<!--TEMPLATES - PROLUSIONI francesi-->
<!-- ********************************************************************* -->
<!--divisione RIGHE-->
<xsl:template match="//tei:lb[@facs]">
    <xsl:for-each select="self::node()">
        <xsl:if test="@break='no'">-</xsl:if>
        <br/>
    </xsl:for-each>
</xsl:template>
<!-- ********************************************************************* -->
<!--elementi Terminologici-->
<xsl:template match="//tei:term"> 
    <span class="termini" title="elemento terminologico"> 
        <xsl:apply-templates />   
    </span>
</xsl:template>
<!-- ********************************************************************* -->
<!--elementi Sottolineati -->
<xsl:template match="//tei:emph[@rend='underline']">
    <span class="sottolineato" title="sottolineato"> 
        <xsl:apply-templates />   
    </span>
</xsl:template>
<!-- ********************************************************************* -->
<!-- elementi in corsivo-->
<xsl:template match="//tei:hi[@rend='italic']">
     <span class="corsivo"> 
          <xsl:apply-templates />   
     </span>
    </xsl:template>    
<!-- ********************************************************************* -->
<!-- Glottonimi-->
<xsl:template match="//tei:lang">
    <span class="glottonimi" title="glottonimo">
        <xsl:apply-templates />
    </span>
</xsl:template>
<!-- ********************************************************************* -->
<!-- Toponimi -->
    <xsl:template match="//tei:name[@type='place']">
        <span class="toponimi" title="toponimo">
            <xsl:apply-templates />
        </span>
    </xsl:template>
<!-- ********************************************************************* -->
<!-- eventi Databili -->
<xsl:template match="//tei:date"> 
    <span class="corresp" title="evento databile">
        <xsl:apply-templates />
    </span>
</xsl:template>
<!-- ********************************************************************* -->
<!-- Abbreviazioni/Espansioni-->
<xsl:template match="//tei:abbr">  
    <span class="abbreviazioni" title="abbreviazione con relativa espansione">
        [<xsl:apply-templates />]
        </span>  
</xsl:template>
<!-- ********************************************************************* -->
<!-- Originale/Revisionato dai responsabili Trascrizione -->
    <xsl:template match="//tei:orig">  
        <span class="orgreg" title="originale trascrizione">
            (<xsl:apply-templates/>)
        </span>  
    </xsl:template>
<!-- ********************************************************************* -->
<!-- Aggiunte -->
<xsl:template match="//tei:add">
    <span class="aggiunte_lat" title="aggiunta">
        <xsl:apply-templates />
    </span>
</xsl:template>
<!-- ********************************************************************* -->
<!-- Cancellazioni -->
<xsl:template match="//tei:del">
        <span class="cancellazioni" title="cancellazione">
            <xsl:apply-templates/>
        </span>
    
</xsl:template>
<!-- ********************************************************************* -->
<!-- Correzioni SIC-->
<xsl:template match="//tei:sic">
        <span class="correzioni">
            <xsl:apply-templates />
        </span>
</xsl:template> 
<!-- ********************************************************************* -->
<!-- Gap -->
    <xsl:template match="//tei:gap"> 
        <xsl:if test="@reason='illegible'">
        <span class="gap" title="testo illeggibile">???????</span>
        </xsl:if>
</xsl:template>    
<!--- *************************************************************** -->
    
<!-- **************************** GLOSSARIO ***************************** -->
<!-- GLOSSARIO --> 
    <xsl:template match="//tei:list[@type='terminology']">
        <xsl:for-each select="tei:item/tei:gloss">
            <xsl:value-of select="." />
            <br/> <br/>
        </xsl:for-each>
    </xsl:template>
<!-- ******************************* BIBLIOGRAFIA ***************************** -->
    <!-- BIBLIOGRAFIA -->
    <xsl:template match="//tei:listBibl">
             <xsl:for-each select="tei:bibl">
                <span>
                    <h3><xsl:value-of select="tei:note"/>:</h3> 
                    <xsl:for-each select="tei:title">
                        <i><xsl:value-of select="."/></i>,  
                    </xsl:for-each>
                    <xsl:for-each select="tei:author">
                        <xsl:value-of select="."/>, 
                    </xsl:for-each>
                    <xsl:value-of select="tei:pubPlace"/>, 
                    <xsl:value-of select="tei:publisher"/>, 
                    <xsl:value-of select="tei:date"/>.
                </span>
             <br/> <br/>
            </xsl:for-each>
    </xsl:template>
    
<!-- ********************************************************************* -->    
</xsl:stylesheet>