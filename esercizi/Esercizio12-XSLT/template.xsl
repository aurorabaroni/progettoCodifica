<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
               
            <title>
                <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title" />
            </title>

            <link rel="stylesheet" type="text/css" href="template.css" />
            </head>
            <body>
                <div class="index">
                    <div id="titoli"><h1 id="titolo"><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></h1>           
                    <h2>di <i><xsl:value-of select="TEI/teiHeader/fileDesc/sourceDesc/bibl/author"/></i></h2>
                    <h3><xsl:value-of select="TEI/teiHeader/fileDesc/sourceDesc/bibl/date"/></h3>
                    </div>
                    <ul>
                        <xsl:apply-templates select="//div[@type='chapter']" mode="index" />
                    </ul>
                </div>
                <div>
                    <xsl:apply-templates select="child::node()" />
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="div" mode="index">
        <ul>
            <xsl:for-each select=".">
                <li>
                    <xsl:value-of select="head" />
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="TEI/teiHeader">     
        <h2>
        Publication: <xsl:value-of select="fileDesc/publicationStmt/publisher"/>
        </h2>
        <h3>
        <xsl:value-of select="fileDesc/publicationStmt/date"/>
        </h3>
    </xsl:template>

    <xsl:template match="div/head">
        <h4>
            <xsl:value-of select="." />
        </h4>
    </xsl:template>

    <xsl:template match="teiHeader">
        <xsl:value-of select="fileDesc/titleStmt/respStmt"/>
    </xsl:template>

    <xsl:template match="//p">
        <xsl:value-of select="."/>
        <br/>
        <xsl:text>&#32;</xsl:text>
        <br/>
    </xsl:template>

</xsl:stylesheet>