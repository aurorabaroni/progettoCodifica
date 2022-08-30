<?xml version="1.0" encoding="utf-8"?>
<!-- esempio di trasformazione -->
<!-- costruire un foglio XSLT con alcune regole di trasformazione e lanciare 
il comando java saxon da terminale -->

<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml">
    <!-- elemento radice-->
    <!-- istruzioni tag -->
    <xsl:output method="html" indent="yes" />
    <!-- stiamo costruendo un file di testo in uscita -->
    <xsl:template match="/">
    <html>
        <head>
            <title>
                Prova gatto nero
            </title>
        </head>
        <body>
            <h1><span>1.</span> 
            Prova</h1>
            <xsl:for-each select="//div">
                <xsl:value-of select="concat('[', position(),']',current())"/><br />
                <h4><xsl:text>&#32; Prova elemento text</xsl:text></h4><br/>
            </xsl:for-each>
        </body> 
    </html>
    </xsl:template>

</xsl:stylesheet>