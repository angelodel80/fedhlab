<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id$ --><xsl:stylesheet xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:t="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="t" version="2.0">

   <xsl:template name="space-content">
       <xsl:param name="parm-leiden-style" tunnel="yes" required="no"/>
       <xsl:param name="vacat"/>
      <xsl:param name="extent"/>

      <xsl:choose>
          <xsl:when test="$parm-leiden-style = 'london'">
            <fo:inline font-style="italic">
               <!-- Found in teispace.xsl -->
               <xsl:call-template name="space-content-1">
                  <xsl:with-param name="vacat" select="$vacat"/>
               </xsl:call-template>
            </fo:inline>
         </xsl:when>
          <xsl:when test="$parm-leiden-style = 'panciera'">
            <!-- Found in teispace.xsl -->
            <xsl:call-template name="space-content-2">
               <xsl:with-param name="vacat" select="$vacat"/>
               <xsl:with-param name="extent" select="$extent"/>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <!-- Found in teispace.xsl -->
            <xsl:call-template name="space-content-2">
               <xsl:with-param name="vacat" select="$vacat"/>
               <xsl:with-param name="extent" select="$extent"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <xsl:template name="dip-space">
      <fo:inline-container>
         <fo:inline font-size="smaller">
            <xsl:call-template name="space-content-1">
               <xsl:with-param name="vacat" select="'vacat '"/>
            </xsl:call-template>
         </fo:inline>
      </fo:inline-container>
   </xsl:template>

</xsl:stylesheet>