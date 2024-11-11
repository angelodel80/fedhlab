<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:strip-space elements="expan" />
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
    
        <xsl:value-of select="replace(normalize-space(//div[@type='edition']/ab),'([a,e,i,o,u])u([a,e,i,o,u])','$1v$2')" />

    </xsl:template>

</xsl:stylesheet>