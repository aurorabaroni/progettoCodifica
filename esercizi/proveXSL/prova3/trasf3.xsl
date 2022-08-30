<?xml version="1.0" encoding="utf-8"?>
<!-- esempio di trasformazione -->
<!-- costruire un foglio XSLT con alcune regole di trasformazione e lanciare 
il comando java saxon da terminale -->

<xsl:stylesheet version="2.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml">
    <!-- elemento radice-->
    <!-- istruzioni tag -->
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <!-- stiamo costruendo un file di testo in uscita -->
    <xsl:template match="/">
    <html>
        <head>
            <script src="main.js"></script> <!-- ******** Javascript - qui NON usato -->
            <link href="stile.css" rel="stylesheet" type="text/css"/> <!-- ******** CSS - qui NON usato -->
            <title>
                <xsl:value-of select="TEI/teiHeader/fileDesc/title"/>
            </title>
        </head>
        <body>
                <div align="center" id="contenitoreFoto">
                    <img src="poponi.jpg" alt="poponi" width="141" height="133"></img>
                </div>
            <div>
                <h1><span>1.</span> 
                <xsl:apply-templates select="TEI/teiHeader/fileDesc/titleStmt/title"/></h1>

                <p>
                    <xsl:apply-templates select="TEI/teiHeader/fileDesc/titleStmt/respStmt/resp"/>
                    <br/>
                    <h3><xsl:apply-templates select="TEI/teiHeader/fileDesc/titleStmt/respStmt/name"/></h3>
                </p>
                <br/>
            </div>
        </body> 
    </html>
    </xsl:template>

</xsl:stylesheet>

<!-- vediamo l'output -->