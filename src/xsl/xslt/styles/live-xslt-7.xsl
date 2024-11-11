<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
           <xsl:for-each select="distinct-values(//w/@lemma)">
            <xsl:sort select="." data-type="text" lang="la"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text> </xsl:text>
           </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>