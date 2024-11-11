<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:template match="/">
        <xsl:value-of select="concat('&#xA;','title : ', normalize-space(descendant::titleStmt/title=&gt;string()))"/>
        <xsl:apply-templates select="//text//div"/>

    </xsl:template>

    <xsl:template match="div">
        <xsl:text>
</xsl:text>
        <xsl:value-of select="name(.)=&gt;concat(' : ',@type)"/>
        <xsl:text>
</xsl:text>
    </xsl:template>

    <xsl:template match="head">
        <xsl:value-of select="name(.)=&gt;concat(' : ', .,'&#xA;')"/>
    </xsl:template>

    <xsl:template match="lb">
        <xsl:value-of select="concat('&#xA;', 'riga ' , current()/@n, ' : ')"/>
    </xsl:template>

</xsl:stylesheet>