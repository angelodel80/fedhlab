<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
    
    <xsl:value-of select="concat(//sourceDesc/bibl/author[1],' (', //sourceDesc/bibl/date, ') ')"/>

    
    </xsl:template>

</xsl:stylesheet>