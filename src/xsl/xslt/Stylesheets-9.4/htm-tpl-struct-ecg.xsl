<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id$ --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:t="http://www.tei-c.org/ns/1.0" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" exclude-result-prefixes="t" version="2.0">
  <!-- Contains named templates for ecg file structure (aka "metadata" aka "supporting data") -->

  <!-- Called from htm-tpl-structure.xsl -->

  <xsl:template name="ecg-body-structure">
    <div id="stone">
      <h3 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-monument">Monument</i18n:text></h3>
      <dl class="ecg">
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-monument-type">Type of monument</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:support//t:objectType//text()">
              <xsl:value-of select="//t:support//t:objectType"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-material">Material</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:support//t:material//text()">
              <xsl:value-of select="//t:support//t:material"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-description">Description and condition</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:support//t:p//text()">
              <xsl:value-of select="//t:support//t:p"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
      </dl>

      <dl class="ecg">
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-find-place">Find place</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:provenance[@type='found']//t:placeName[@type='ancientFindspot']//text()">
              <xsl:value-of select="//t:provenance[@type='found']//t:placeName[@type='ancientFindspot']"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-find-circumstances">Find circumstances</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:provenance[@type='found']//t:rs[@type='circumstances']//text()">
              <xsl:value-of select="//t:provenance[@type='found']//t:rs[@type='circumstances']"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-find-context">Find context</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:provenance[@type='found']//t:rs[@type='context']//text()">
              <xsl:value-of select="//t:provenance[@type='found']//t:rs[@type='context']"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-modern-location">Modern location</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:provenance[@type='observed']//text()">
              <xsl:value-of select="//t:provenance[@type='observed']"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-dimensions">Dimensions</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:support/t:dimensions//text()[not(normalize-space(.)=' ')]">
              <xsl:if test="//t:support/t:dimensions/t:height/text()[not(normalize-space(.)=' ')]">H. <xsl:value-of select="//t:support/t:dimensions/t:height"/>,</xsl:if>
              <xsl:if test="//t:support/t:dimensions/t:width/text()[not(normalize-space(.)=' ')]">W. <xsl:value-of select="//t:support/t:dimensions/t:width"/>,</xsl:if>
              <xsl:if test="//t:support/t:dimensions/t:depth/text()[not(normalize-space(.)=' ')]">Th. <xsl:value-of select="//t:support/t:dimensions/t:depth"/></xsl:if>
              <xsl:if test="//t:support/t:dimensions/t:dim[@type='diameter']/text()[not(normalize-space(.)=' ')]">, Diam. <xsl:value-of select="//t:support/t:dimensions/t:dim[@type='diameter']"/></xsl:if>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-institution-inventory">Institution and inventory</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:msIdentifier//t:repository/text() and //t:msIdentifier//t:idno/text()">
              <xsl:value-of select="//t:msIdentifier//t:repository"/>
              <xsl:value-of select="//t:msIdentifier//t:idno"/>
            </xsl:when>
            <xsl:when test="//t:msIdentifier//t:repository/text()">
              <xsl:value-of select="//t:msIdentifier//t:repository"/>
              <xsl:text>no inv. no.</xsl:text>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unknown">Unknown</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
      </dl>
    </div>

    <div id="text-field">
      <h3 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-inscribed-field">Inscribed field</i18n:text></h3>
      <dl class="ecg">
        <xsl:if test="//t:layout/@ana">
          <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-faces-code">Faces code</i18n:text></dt>
          <dd><xsl:value-of select="//t:layout/@ana"/></dd>
        </xsl:if>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-placement-text">Placement of text</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:layout/text()">
              <xsl:value-of select="//t:layout"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-style-lettering">Style of lettering</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:handNote//text()[not(ancestor::t:height)]">
              <xsl:value-of select="/t:handNote//text()[not(ancestor::t:height)]"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt width="150" align="left"><i18n:text i18n:key="epidoc-xslt-ecg-letterheights">Letterheights</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:handNote//t:height/text()">
              <xsl:value-of select="//t:handNote//t:height"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
      </dl>
    </div>

    <div id="text">
      <h3 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-text">Text</i18n:text></h3>
      <dl class="ecg">

        <dt><i18n:text i18n:key="epidoc-xslt-ecg-origin">Origin</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:origin/t:origPlace/text()">
              <xsl:value-of select="//t:origin/t:origPlace"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt><i18n:text i18n:key="epidoc-xslt-ecg-category">Category</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:msContents/t:summary/text()">
              <xsl:value-of select="//t:msContents/t:summary"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
          </xsl:choose>
        </dd>
        <dt><i18n:text i18n:key="epidoc-xslt-ecg-date">Date</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:origin/t:origDate/text()">
              <xsl:value-of select="//t:origin/t:origDate"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-not-specified">Not specified</i18n:text></xsl:otherwise>
        </xsl:choose></dd>
        <dt><i18n:text i18n:key="epidoc-xslt-ecg-dating-criteria">Dating criteria</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:origin/t:origDate/@evidence">
              <xsl:for-each select="tokenize(//t:origin/t:origDate/@evidence,' ')">
                <xsl:value-of select="translate(.,'-',' ')"/>
                <xsl:if test="position()!=last()">
                  <xsl:text>, </xsl:text>
                </xsl:if>
              </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>n/a</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
        </dd>
        
        <dt><i18n:text i18n:key="epidoc-xslt-ecg-editions">Editions</i18n:text></dt>
        <dd>
          <xsl:choose>
            <xsl:when test="//t:body//t:div[@type='bibliography']//text()">
              <xsl:apply-templates select="//t:body//t:div[@type='bibliography']"/>
            </xsl:when>
            <xsl:otherwise><i18n:text i18n:key="epidoc-xslt-ecg-unpublished">Unpublished</i18n:text></xsl:otherwise>
        </xsl:choose></dd>
      </dl>

      <div id="edition" class="ecg">
        <!-- Edited text output -->


        <xsl:variable name="edtxt">
          <xsl:apply-templates select="//t:div[@type='edition']">
            <xsl:with-param name="parm-edition-type" tunnel="yes">
              <xsl:text>inetrpretative</xsl:text>
            </xsl:with-param>
            <xsl:with-param name="parm-verse-lines" tunnel="yes">
              <xsl:text>off</xsl:text>
            </xsl:with-param>
          </xsl:apply-templates>
        </xsl:variable>
        <!-- Moded templates found in htm-tpl-sqbrackets.xsl -->
        <xsl:apply-templates select="$edtxt" mode="sqbrackets"/>
      </div>
      
      <div id="diplomatic">

        <!-- Edited text output -->
        <xsl:variable name="edtxt">
          <xsl:apply-templates select="//t:div[@type='edition']">
            <xsl:with-param name="parm-edition-type" tunnel="yes">
              <xsl:text>diplomatic</xsl:text>
            </xsl:with-param>
            <xsl:with-param name="parm-verse-lines" tunnel="yes">
              <xsl:text>off</xsl:text>
            </xsl:with-param>
          </xsl:apply-templates>
        </xsl:variable>
        <!-- Moded templates found in htm-tpl-sqbrackets.xsl -->
        <xsl:apply-templates select="$edtxt" mode="sqbrackets"/>
      </div>


      <div id="apparatus" class="ecg">
        <h4 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-apparatus">Apparatus</i18n:text></h4>
        <!-- Apparatus text output -->
        <xsl:variable name="apptxt">
          <xsl:apply-templates select="//t:div[@type='apparatus']/t:listApp"/>
        </xsl:variable>
        <!-- Moded templates found in htm-tpl-sqbrackets.xsl -->
        <xsl:apply-templates select="$apptxt" mode="sqbrackets"/>
      </div>
      <div id="translation" class="ecg">
        <h4 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-translation">Translation</i18n:text></h4>
        <!-- Translation text output -->
        <xsl:variable name="transtxt">
          <xsl:apply-templates select="//t:div[@type='translation']//t:p"/>
        </xsl:variable>
        <!-- Moded templates found in htm-tpl-sqbrackets.xsl -->
        <xsl:apply-templates select="$transtxt" mode="sqbrackets"/>
      </div>
      <div id="commentary" class="ecg">
        <h4 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-commentary">Commentary</i18n:text></h4>
        <!-- Commentary text output -->
        <xsl:variable name="commtxt">
          <xsl:apply-templates select="//t:div[@type='commentary']//t:p"/>
        </xsl:variable>
        <!-- Moded templates found in htm-tpl-sqbrackets.xsl -->
        <xsl:apply-templates select="$commtxt" mode="sqbrackets"/>
      </div>
      <div id="images" class="ecg">
        <h4 class="ecg"><i18n:text i18n:key="epidoc-xslt-ecg-images">Images</i18n:text></h4>
        <dl>
          <xsl:for-each select="//t:facsimile//t:graphic">
            <dt width="150" align="left"/>
            <dd>
              <xsl:apply-templates select="."/>
            </dd>
          </xsl:for-each>
        </dl>
      </div>
    </div>
  </xsl:template>

  <xsl:template name="ecg-structure">
    <xsl:variable name="title">
      <xsl:call-template name="ecg-title"/>
    </xsl:variable>
    <html>
      <head>
        <title>
          <xsl:value-of select="$title"/>
        </title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <!-- Found in htm-tpl-cssandscripts.xsl -->
        <xsl:call-template name="css-script"/>
      </head>
      <body>
        <h1>
          <xsl:value-of select="$title"/>
        </h1>
        <xsl:call-template name="ecg-body-structure"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="ecg-title">
    <xsl:choose>
      <xsl:when test="//t:titleStmt/t:title/text() and matches(//t:idno[@type='filename'], '^\d\.\d{1,4}$')">
        <xsl:number value="substring-before(//t:idno[@type='filename'],'.')" format="I"/>
        <xsl:text> </xsl:text>
        <xsl:number value="substring-after(//t:idno[@type='filename'],'.')" format="1"/>
        <xsl:text>. </xsl:text>
        <xsl:if test="string(normalize-space(//t:origPlace[1]))"><xsl:value-of select="normalize-space(//t:origPlace[1])"/>
        <xsl:text>. </xsl:text></xsl:if>
        <xsl:value-of select="//t:titleStmt/t:title[child::text()][1]"/>
        <xsl:if test="not(//t:titleStmt/t:title[child::text()][1][child::t:origDate])">
          <xsl:text>, </xsl:text>
          <xsl:value-of select="//t:origDate[1]"/>
        </xsl:if>
      </xsl:when>
      <xsl:when test="//t:titleStmt/t:title/text()">
        <xsl:value-of select="//t:titleStmt/t:title"/>
      </xsl:when>
      <xsl:when test="//t:sourceDesc//t:bibl/text()">
        <xsl:value-of select="//t:sourceDesc//t:bibl"/>
      </xsl:when>
      <xsl:when test="//t:idno[@type='filename']/text()">
        <xsl:value-of select="//t:idno[@type='filename']"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>EpiDoc example output, ecg style</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>