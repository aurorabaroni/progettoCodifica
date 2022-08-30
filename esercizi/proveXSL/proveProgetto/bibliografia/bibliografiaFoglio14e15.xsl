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
            <title>Bibliografia - Prolusioni 3</title>
        </head>

        <body>
            <header>
                <h1>Prolusioni di Ferdinand de Saussure</h1>
                <nav id="navbar">
                    <ul> 
                        <li><a class="button" href = "#Info">Bibliografia</a></li>
                    </ul>
                </nav>           
            </header>
<!-- ************** INTRODUZIONE ****************** -->
<!-- ************************ PAGINA 14 - immagine Foglio 14 ************************ -->        
<!-- ************************ PAGINA 14 - trascrizione Foglio 14 ************************ --> 
<!-- ************************ PAGINA 14 - TRADUZIONE in Italiano - Foglio 14 ************************ --> 
<!-- ************************ GLOSSARIO  ************************ -->
<!-- ************************ BIBLIOGRAFIA  ************************ -->
            <div class="container" id="Info">
                <h2>Bibliografia</h2>
                <xsl:apply-templates select="//tei:back/tei:div[@type='addList']/tei:listBibl" />
            </div>
<!-- ************************************************************* -->
        </body>
        <script src="prolusioni.js"></script>
    </html>
</xsl:template>

<!-- ********************************************************************* -->
<!-- SEGUONO le definizioni generali dei Template applicati poi sopra -->
<!-- ********************************************************************* -->
<!--templates - INTRODUZIONE ******************************** -->
<!-- ************ Titolo e Autore *************** -->
<!-- ************** Conservazione - Supporto fisico - Descrizione  - Storia ************ -->    
<!-- *************** Lingua originale *********************+ -->     
<!-- **************** Informazioni codifica *************************************+ -->     
<!-- ********************************** -->
<!--TEMPLATES - PROLUSIONI francesi-->
<!-- ********************************** -->
<!--divisione RIGHE-->
<!-- ********************************************************************* -->
<!--elementi Terminologici-->
<!-- ********************************************************************* -->
<!--elementi Sottolineati -->
<!-- ********************************************************************* -->
<!-- Glottonimi-->
<!-- ********************************************************************* -->
<!-- eventi Databili-->
<!-- ********************************************************************* -->
<!-- Abbreviazioni/Espansioni-->
<!-- ********************************************************************* -->
<!-- Aggiunte -->
<!-- ********************************************************************* -->
<!-- Cancellazioni -->
<!-- ********************************************************************* -->
<!-- Correzioni SIC-->
<!-- **************************** GLOSSARIO ***************************** -->
<!-- GLOSSARIO --> 
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