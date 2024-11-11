<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
            
    <xsl:value-of select="id('irt1952')/title"/>

    <!-- 
     <xsl:value-of select="//publicationStmt/idno | //publicationStmt/authority"/>
    -->

    <!--  <xsl:value-of select="//div[@type = 'history' or @type = 'translation']"/>
-->
           
            <!-- 
            <xsl:value-of select="id('irt1952')/title"/>
            -->

    </xsl:template>

</xsl:stylesheet>