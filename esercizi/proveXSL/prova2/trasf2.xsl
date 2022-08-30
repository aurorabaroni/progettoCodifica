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
    <xsl:output method="html" indent="yes"/>
    <!-- stiamo costruendo un file di testo in uscita -->
 
    <xsl:template match="fileDesc">
    <h1>Prova file desc</h1>
    <p>
    <xsl:value-of select="titleStmt/title" disable-output-escaping="no"/>
    </p>
    </xsl:template>
</xsl:stylesheet>

<!-- vediamo l'output -->