<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:key name="lang" match="language" use="@ident"/>

    <xsl:template match="/">
            <xsl:if test="key('lang','la')">
                <xsl:variable name="latLang" select="key('lang','la')"/>
                <xsl:value-of select="                    concat('Selected Language: ',$latLang/text(), ' (' ,$latLang/@ident,')')                  "/>
            </xsl:if>
    </xsl:template>

</xsl:stylesheet>