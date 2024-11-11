<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
            
    <xsl:value-of select="TEI/descendant::langUsage/language" />

           <!-- 
                 <xsl:value-of 
                select="TEI/descendant::langUsage/child::language" separator="&#xD;" 
            />
            -->

            <!-- 

              <xsl:value-of select="TEI/descendant::langUsage/child::language/attribute::ident"/>

            -->

    </xsl:template>

</xsl:stylesheet>