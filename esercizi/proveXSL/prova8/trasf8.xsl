<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" />
    <!-- stiamo costruendo un file di testo in uscita -->
    <xsl:template match="/">
        <html>
            <head> intestazione</head>
            <body>
                <h1>The black cat</h1>
                <xsl:for-each select="//p">
                    <div>
                        <xsl:value-of select="./p"/>
                        <xsl:text>&#32;</xsl:text>
                    </div>
                </xsl:for-each>
                
                <xsl:call-template name="body">
                    <xsl:with-param name="style">
                        color:red
                    </xsl:with-param>
                </xsl:call-template>
        </body>
        </html>
    </xsl:template>
 <!-- ******************** parte operativa ******************** -->   
    <xsl:template name="body">
        <xsl:param name="style">color:blue</xsl:param>
        <div>
            <xsl:attribute name="style">
                <xsl:value-of select="$style"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </div>
    </xsl:template>

</xsl:stylesheet>