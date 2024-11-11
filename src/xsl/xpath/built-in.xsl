<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:strip-space elements="w expan" />
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:apply-templates select="current()/descendant::text"/>
    </xsl:template>
     <xsl:template match="div[@type='edition']|div[@type='translation']">
        <xsl:value-of select="normalize-space(.)"/>
        <xsl:text>
        </xsl:text>
    </xsl:template>
    <xsl:template match="div"/>
</xsl:stylesheet>