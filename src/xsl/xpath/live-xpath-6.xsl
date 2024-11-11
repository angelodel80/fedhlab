<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
    version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
    
    <xsl:value-of select="count(//div[@type])" />

    
    <!--
      <xsl:value-of select="count(//langUsage/language)"
      />
    -->

    </xsl:template>

</xsl:stylesheet>