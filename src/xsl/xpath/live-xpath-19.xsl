<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="3.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
    
        <xsl:value-of select="
          analyze-string(//div[@type='translation'],'[A-Z][a-z]+[\s\p{P}]') => serialize()" />

        <!-- 
        
        -->
    
    </xsl:template>

</xsl:stylesheet>