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
            <title>Informazioni - Prolusioni 3</title>
        </head>

        <body>
            <header>
                <h1>Prolusioni di Ferdinand de Saussure</h1>
                <nav id="navbar">
                    <ul> 
                        <li><a class="button" href = "#Intro">Informazioni</a></li>
                    </ul>
                </nav>           
            </header>
<!-- ************** INTRODUZIONE ****************** -->
            <div class="container" id="Intro">
                <h1>Informazioni sulla fonte originale</h1>   
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage"/>
                <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
            </div>    
<!-- ************************ PAGINA 14 - immagine Foglio 14 ************************ -->        
<!-- ************************ PAGINA 14 - trascrizione Foglio 14 ************************ --> 
<!-- ************************ PAGINA 14 - TRADUZIONE in Italiano - Foglio 14 ************************ --> 
<!-- ************************ GLOSSARIO  ************************ -->
<!-- ************************ BIBLIOGRAFIA  ************************ -->
<!-- ************************************************************* -->
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
            <xsl:for-each select="tei:title">
                <xsl:value-of select="."/>
            </xsl:for-each>
        </p>
        <p> <h2>AUTORE</h2>
            <!-- foto di Ferdinand de Saussure -->
            <div align="left" id="contenitoreRitratto">
                <img src="fds.jpg" alt="FdS" width="141" height="133"></img>
            </div>
            <i><xsl:value-of select="tei:author"/></i>
        </p>
    </xsl:template>
<!-- **************************************************************************+ -->    
    <xsl:template match="tei:sourceDesc/tei:msDesc">    
        <p> <h2>CONSERVAZIONE</h2> questi manoscritti sono conservati presso la <xsl:value-of select="tei:msIdentifier/tei:institution"/>. <br/>
            Si tratta di un'opera ad accesso libero della collezione <xsl:value-of select="tei:msIdentifier/tei:collection"/>
            , con identificativo <xsl:value-of select="tei:msIdentifier/tei:idno"/>
        </p>
        <xsl:for-each select="tei:physDesc/tei:objectDesc">
            <p> <h2>SUPPORTO FISICO</h2> il supporto utilizzato sono dei <xsl:value-of select="tei:supportDesc/tei:support"/></p>
            <p> <h3>DESCRIZIONE</h3><xsl:value-of select="tei:layoutDesc"/></p>
        </xsl:for-each>
        <p><h2>STORIA</h2> <xsl:value-of select="tei:history"/></p>
    </xsl:template>
<!-- **************************************************************************+ -->     
    <xsl:template match="tei:langUsage">
        <p> <h3>LINGUA ORIGINALE</h3> <xsl:value-of select="."/></p>
    </xsl:template>
<!-- **************************************************************************+ -->     
    <xsl:template match="tei:editionStmt">
        <h2>Informazioni sulla codifica</h2>
        <p><xsl:value-of select="tei:edition"/></p>
        <xsl:for-each select="tei:respStmt">
            <p><xsl:value-of select="."></xsl:value-of></p>
        </xsl:for-each>
    </xsl:template>
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
<!-- ********************************************************************* -->    
</xsl:stylesheet>