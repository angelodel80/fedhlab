<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">

    <xsl:value-of select="//div[5]"/>
   
    <!-- 
    <xsl:value-of select="//div[last()]"/>
    -->
    
    <!--
           <xsl:value-of 
                select="//div[@type='edition']/@*"
                separator=" : " 
            />
        

    -->

    <!-- 
            <xsl:value-of 
                select="//div[every $d in //div/@type satisfies $d != '']/@type" 
                separator=" || " 
            />
    
    -->
    <!--
    <xsl:value-of 
                select="//*[@xml:lang]!name()"
                separator=", "
            />
-->
 

    </xsl:template>

</xsl:stylesheet>