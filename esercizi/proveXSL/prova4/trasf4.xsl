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
            <title><xsl:value-of select="TEI/teiHeader/fileDesc/title"/></title>
        </head>
        <body>
            
            <div align="center" id="contenitoreFoto">
                <img src="gattoNero.jpg" alt="gatto nero" width="141" height="133"></img>
            </div>
            
            <div>
                <h1><span>1.</span> 
                <xsl:apply-templates select="TEI/teiHeader/fileDesc/titleStmt/title"/></h1>
            </div>
            
            <div>
                <xsl:for-each select="//div">
                    <div><xsl:value-of select="./p"/><br/><br/></div>
                </xsl:for-each>
            </div>
        </body> 
    </html>
    </xsl:template>

</xsl:stylesheet>
