<?xml version="1.0" encoding="utf-8"?>
<!-- esempio di trasformazione -->
<!-- costruire un foglio XSLT con alcune regole di trasformazione e lanciare 
il comando java saxon da terminale -->

<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- elemento radice-->

    <!-- istruzioni tag -->
    <xsl:output method="text" indent="yes"/>
    <!-- stiamo costruendo un file di testo in uscita -->

    <!-- template -->
    <xsl:template match="/"> <!-- fa il match su tutto il documento di input -->
        <xsl:apply-templates select="/test/msg"/> <!-- individua una selezione del documento di input -->
    </xsl:template>

    <xsl:template match="text()"> <!-- fa la verifica -->
        <xsl:text>Test:</xsl:text>
        <xsl:copy-of select="."/>
    </xsl:template>
</xsl:stylesheet>

<!-- vediamo l'output -->
