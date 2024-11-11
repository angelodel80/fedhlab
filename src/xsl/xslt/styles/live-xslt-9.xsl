<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:template match="/">
        <!--xsl:value-of select="//titleStmt" /-->
        <!--xsl:apply-templates select="/TEI/text/body"/-->
    </xsl:template>

    <xsl:template match="div">
        <xsl:text>REGOLA DIV : </xsl:text>
        <xsl:value-of select="@type"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="head">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="lb">
            <xsl:text>RIGA</xsl:text>
    </xsl:template>

</xsl:stylesheet>