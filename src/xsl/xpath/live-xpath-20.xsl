<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
    version="3.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
    
      <xsl:value-of select="map:get(map{'titolo':'La divina commedia','autore':'Dante Alighieri'},'autore')"
      />

    </xsl:template>

</xsl:stylesheet>