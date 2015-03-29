<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/" 
				xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
				xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
				xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
				xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
				xmlns:xlink="http://www.w3.org/1999/xlink" 
				xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
				xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
				xpath-default-namespace="http://www.w3.org/1999/xhtml"
				>
	<xsl:strip-space elements="div ul li dl ol table tbody tr"/>
	
<xsl:output method="xml" />

<xsl:template match="/">
<xsl:variable name="contentXml">
  <xsl:apply-templates /> 
</xsl:variable>

<xsl:result-document href="content.xml" method="xml">
	<xsl:copy-of select="$contentXml"/>
</xsl:result-document>
  
<xsl:result-document href="meta.xml" method="xml">
	<office:document-meta xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
		xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
		xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xlink="http://www.w3.org/1999/xlink"
		office:version="1.1">
		<office:meta>
			<meta:generator>MicrosoftOffice/14.0 MicrosoftWord</meta:generator>
			<meta:initial-creator>Thiyagarajan</meta:initial-creator>
			<dc:creator>Thiyagarajan</dc:creator>
			<meta:creation-date>2015-02-27T16:23:00Z</meta:creation-date>
			<dc:date>2015-02-27T16:24:00Z</dc:date>
			<meta:template xlink:href="Normal.dotm" xlink:type="simple"/>
			<meta:editing-cycles>1</meta:editing-cycles>
			<meta:editing-duration>PT60S</meta:editing-duration>
			<meta:document-statistic meta:page-count="1" meta:paragraph-count="0" meta:word-count="0"
				meta:character-count="0" meta:row-count="0" meta:non-whitespace-character-count="0"/>
		</office:meta>
	</office:document-meta>
</xsl:result-document>

<xsl:result-document href="settings.xml" method="xml">
	<office:document-settings office:version="1.1"
		xmlns:anim="urn:oasis:names:tc:opendocument:xmlns:animation:1.0"
		xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
		xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
		xmlns:dc="http://purl.org/dc/elements/1.1/"
		xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
		xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
		xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
		xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
		xmlns:math="http://www.w3.org/1998/Math/MathML"
		xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
		xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
		xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
		xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
		xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
		xmlns:smil="urn:oasis:names:tc:opendocument:xmlns:smil-compatible:1.0"
		xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
		xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
		xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
		xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
		xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xlink="http://www.w3.org/1999/xlink"/>
</xsl:result-document>

<xsl:result-document href="styles.xml" method="xml">
	<office:document-styles xmlns:anim="urn:oasis:names:tc:opendocument:xmlns:animation:1.0"
		xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
		xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
		xmlns:dc="http://purl.org/dc/elements/1.1/"
		xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
		xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
		xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
		xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
		xmlns:math="http://www.w3.org/1998/Math/MathML"
		xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
		xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
		xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
		xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
		xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
		xmlns:smil="urn:oasis:names:tc:opendocument:xmlns:smil-compatible:1.0"
		xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
		xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
		xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
		xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
		xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xlink="http://www.w3.org/1999/xlink">
		<office:font-face-decls>
			<style:font-face style:name="Calibri" svg:font-family="Calibri"
				style:font-family-generic="swiss" style:font-pitch="variable"
				svg:panose-1="2 15 5 2 2 2 4 3 2 4"/>
			<style:font-face style:name="Latha" svg:font-family="Latha"
				style:font-family-generic="swiss" style:font-pitch="variable"
				svg:panose-1="2 11 6 4 2 2 2 2 2 4"/>
			<style:font-face style:name="Times New Roman" svg:font-family="Times New Roman"
				style:font-family-generic="roman" style:font-pitch="variable"
				svg:panose-1="2 2 6 3 5 4 5 2 3 4"/>
			<style:font-face style:name="Cambria" svg:font-family="Cambria"
				style:font-family-generic="roman" style:font-pitch="variable"
				svg:panose-1="2 4 5 3 5 4 6 3 2 4"/>
		</office:font-face-decls>
				<office:styles>
					<style:default-style style:family="table">
						<style:table-properties fo:margin-left="0in" table:border-model="collapsing"
							style:writing-mode="lr-tb" table:align="left"/>
					</style:default-style>
					<style:default-style style:family="table-column">
						<style:table-column-properties style:use-optimal-column-width="true"/>
					</style:default-style>
					<style:default-style style:family="table-row">
						<style:table-row-properties style:min-row-height="0in"
							style:use-optimal-row-height="true" fo:keep-together="auto"/>
					</style:default-style>
					<style:default-style style:family="table-cell">
						<style:table-cell-properties fo:background-color="transparent"
							style:glyph-orientation-vertical="auto" style:vertical-align="top"
							fo:wrap-option="wrap"/>
					</style:default-style>
					<style:default-style style:family="paragraph">
						<style:paragraph-properties fo:keep-with-next="auto" fo:keep-together="auto"
							fo:widows="2" fo:orphans="2" fo:break-before="auto"
							text:number-lines="true" fo:border="none" fo:padding="0in"
							style:shadow="none" style:line-break="strict"
							style:punctuation-wrap="hanging" style:text-autospace="ideograph-alpha"
							style:snap-to-layout-grid="true" fo:text-align="start"
							style:writing-mode="lr-tb" fo:margin-bottom="0.1388in"
							fo:line-height="115%" fo:background-color="transparent"
							style:tab-stop-distance="0.5in"/>
						<style:text-properties style:font-name="Calibri"
							style:font-name-asian="Calibri" style:font-name-complex="Latha"
							fo:font-weight="normal" style:font-weight-asian="normal"
							style:font-weight-complex="normal" fo:font-style="normal"
							style:font-style-asian="normal" style:font-style-complex="normal"
							fo:text-transform="none" fo:font-variant="normal"
							style:text-line-through-type="none" style:text-outline="false"
							style:font-relief="none" style:use-window-font-color="true"
							fo:letter-spacing="normal" style:text-scale="100%"
							style:letter-kerning="false" style:text-position="0% 100%"
							fo:font-size="11pt" style:font-size-asian="11pt"
							style:font-size-complex="11pt" fo:background-color="transparent"
							style:text-underline-type="none" style:text-underline-color="font-color"
							style:text-emphasize="none" fo:language="en" fo:country="US"
							style:language-asian="en" style:country-asian="US"
							style:language-complex="ar" style:country-complex="SA"
							style:text-combine="none" fo:hyphenate="true"/>
					</style:default-style>
					<style:style style:name="Normal" style:display-name="Normal"
						style:family="paragraph">
						<style:text-properties fo:hyphenate="false"/>
					</style:style>
					<style:style style:name="DefaultParagraphFont"
						style:display-name="Default Paragraph Font" style:family="text"/>
					<text:notes-configuration text:note-class="footnote" text:start-value="0"
						style:num-format="1" text:start-numbering-at="document"
						text:footnotes-position="page"/>
					<text:notes-configuration text:note-class="endnote" text:start-value="0"
						style:num-format="i" text:start-numbering-at="document"
						text:footnotes-position="document"/>
					<style:default-style style:family="graphic">
						<style:graphic-properties draw:fill="solid" draw:fill-color="#4f81bd"
							draw:opacity="100%" draw:stroke="solid" svg:stroke-width="0.02778in"
							svg:stroke-color="#385d8a" svg:stroke-opacity="100%"/>
					</style:default-style>

					<style:style style:name="italic" style:family="text">
						<style:text-properties fo:font-style="italic"/>
					</style:style>
					<style:style style:name="bold" style:family="text">
						<style:text-properties fo:font-weight="bold"/>
					</style:style>

					<style:style style:family="graphic" style:name="imageFrame1" style:parent-style-name="Graphics">
						<style:graphic-properties fo:border="none" fo:background-color="transparent"/>
					</style:style>
					
					<text:list-style style:name="List1">
						<text:list-level-style-number text:level="1" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="0.25in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="2" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="0.5in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="3" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="0.75in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="4" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="1in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="5" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="1.25in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="6" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="1.5in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="7" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="1.75in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="8" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="2in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="9" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="2.25in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
						<text:list-level-style-number text:level="10" text:style-name="Numbering_20_Symbols"
							style:num-suffix="." style:num-format="1">
							<style:list-level-properties text:space-before="2.5in" text:min-label-width="0.25in"/>
						</text:list-level-style-number>
					</text:list-style>
					
					<style:style style:name="P_Center" style:family="paragraph" style:parent-style-name="Standard">
						<style:paragraph-properties fo:text-align="center" style:justify-single-word="false"/>
					</style:style>
					<style:style style:name="P_Right" style:family="paragraph" style:parent-style-name="Standard">
						<style:paragraph-properties fo:text-align="end" style:justify-single-word="false"/>
					</style:style>
					<style:style style:name="P_Justify" style:family="paragraph" style:parent-style-name="Standard">
						<style:paragraph-properties fo:text-align="justify" style:justify-single-word="false"/>
					</style:style>
					
					<text:notes-configuration text:note-class="endnote" text:citation-style-name="Endnote_20_Symbol" text:citation-body-style-name="Endnote_20_anchor" text:master-page-name="Endnote" style:num-format="i" text:start-value="0"/>
					<style:style style:name="Endnote" style:family="paragraph" style:parent-style-name="Standard" style:class="extra">
						<style:paragraph-properties fo:margin-left="0.499cm" fo:margin-right="0cm" fo:text-indent="-0.499cm" style:auto-text-indent="false" text:number-lines="false" text:line-number="0"/>
						<style:text-properties fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt"/>
					</style:style>
					
				</office:styles>
		<office:automatic-styles>
			<style:page-layout style:name="PL0">
				<style:page-layout-properties fo:page-width="8.268in" fo:page-height="11.693in"
					style:print-orientation="portrait" fo:margin-top="1in" fo:margin-left="1in"
					fo:margin-bottom="1in" fo:margin-right="1in" style:num-format="1"
					style:writing-mode="lr-tb">
					<style:footnote-sep style:width="0.007in" style:rel-width="33%"
						style:color="#000000" style:line-style="solid" style:adjustment="left"/>
				</style:page-layout-properties>
			</style:page-layout>
		</office:automatic-styles>
		<office:master-styles>
			<style:master-page style:name="MP0" style:page-layout-name="PL0"/>
		</office:master-styles>
	</office:document-styles>
</xsl:result-document>


<xsl:result-document href="mimetype" method="text">
	<xsl:text>application/vnd.oasis.opendocument.text</xsl:text>
</xsl:result-document> 

<xsl:result-document href="META-INF/manifest.xml" method="xml">
	<manifest:manifest xmlns:manifest="urn:oasis:names:tc:opendocument:xmlns:manifest:1.0">
		<manifest:file-entry manifest:full-path="/"
			manifest:media-type="application/vnd.oasis.opendocument.text"/>
		<manifest:file-entry manifest:full-path="mimetype" manifest:media-type="text/plain"/>
		<manifest:file-entry manifest:full-path="content.xml" manifest:media-type="text/xml"/>
		<manifest:file-entry manifest:full-path="settings.xml" manifest:media-type="text/xml"/>
		<manifest:file-entry manifest:full-path="styles.xml" manifest:media-type="text/xml"/>
		<manifest:file-entry manifest:full-path="META-INF/manifest.xml" manifest:media-type="text/xml"/>
		<manifest:file-entry manifest:full-path="meta.xml" manifest:media-type="text/xml"/>
	</manifest:manifest>
</xsl:result-document> 

</xsl:template>


<xsl:template match="html">	
	<office:document-content xmlns:anim="urn:oasis:names:tc:opendocument:xmlns:animation:1.0"
		xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0"
		xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0"
		xmlns:dc="http://purl.org/dc/elements/1.1/"
		xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0"
		xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
		xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0"
		xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
		xmlns:math="http://www.w3.org/1998/Math/MathML"
		xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
		xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0"
		xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
		xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0"
		xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0"
		xmlns:smil="urn:oasis:names:tc:opendocument:xmlns:smil-compatible:1.0"
		xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
		xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
		xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
		xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
		xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xlink="http://www.w3.org/1999/xlink">
		<office:font-face-decls>
			<style:font-face style:name="Calibri" svg:font-family="Calibri"
				style:font-family-generic="swiss" style:font-pitch="variable"
				svg:panose-1="2 15 5 2 2 2 4 3 2 4"/>
			<style:font-face style:name="Latha" svg:font-family="Latha"
				style:font-family-generic="swiss" style:font-pitch="variable"
				svg:panose-1="2 11 6 4 2 2 2 2 2 4"/>
			<style:font-face style:name="Times New Roman" svg:font-family="Times New Roman"
				style:font-family-generic="roman" style:font-pitch="variable"
				svg:panose-1="2 2 6 3 5 4 5 2 3 4"/>
			<style:font-face style:name="Cambria" svg:font-family="Cambria"
				style:font-family-generic="roman" style:font-pitch="variable"
				svg:panose-1="2 4 5 3 5 4 6 3 2 4"/>
		</office:font-face-decls>
		<office:automatic-styles>
			<style:style style:name="P1" style:parent-style-name="Normal" style:master-page-name="MP0"
				style:family="paragraph">
				<style:paragraph-properties fo:break-before="page"/>
			</style:style>
		</office:automatic-styles>
		<office:body>
			<office:text text:use-soft-page-breaks="true">
				<xsl:apply-templates/>
			</office:text>
		</office:body>
	</office:document-content>
</xsl:template>

<xsl:template match="body">
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="title">
	<text:h text:outline-level="1">
		<xsl:apply-templates/>
	</text:h>
</xsl:template>
<xsl:template match="h1|h2|h3|h4|h5|h6">
 <text:h>
 	<xsl:attribute name="text:outline-level">
 		<xsl:value-of select="replace(local-name(), 'h', '')"></xsl:value-of>
 	</xsl:attribute>
  <xsl:apply-templates/>
 </text:h> 
</xsl:template>

<xsl:template match="p">
 <text:p>
 	<xsl:attribute name="text:style-name">
 		<xsl:choose>
 			<xsl:when test="replace(@style, '^(.+)?text-align:\s*(center|right|left|justify)(.+)*$', '$2') = 'center'">
 				<xsl:text>P_Center</xsl:text>
 			</xsl:when>
 			<xsl:when test="replace(@style, '^(.+)?text-align:\s*(center|right|left|justify)(.+)*$', '$2') = 'right'">
 				<xsl:text>P_Right</xsl:text>
 			</xsl:when>
 			<xsl:when test="replace(@style, '^^(.+)?text-align:\s*(center|right|left|justify)(.+)*$', '$2') = 'justify'">
 				<xsl:text>P_Justify</xsl:text>
 			</xsl:when>
 			<xsl:otherwise>
 				<xsl:text>Standard</xsl:text>
 			</xsl:otherwise>
 		</xsl:choose>
 	</xsl:attribute>
   <xsl:apply-templates/>
 </text:p>
</xsl:template>

 <xsl:template match="span">
 	<xsl:choose>
 		<xsl:when test="ancestor::*[matches(local-name(), '(p|h[1-6])')]">
 			<text:span>
 				<xsl:apply-templates/>
 			</text:span>
 		</xsl:when>
 		<xsl:otherwise>
 			<text:p>
 				<xsl:apply-templates/>
 			</text:p>
 		</xsl:otherwise>
 	</xsl:choose>
 </xsl:template>

<xsl:template match="div">
	<xsl:choose>
		<xsl:when test="(descendant::*)|(ancestor::*[matches(local-name(), '(blockquote|p|h[1-6])')])">
			<xsl:apply-templates/>
		</xsl:when>
		<xsl:otherwise>
			<text:p>
				<xsl:apply-templates/>
			</text:p>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
 
 <xsl:template match="dl">
 	<xsl:apply-templates/>
 </xsl:template>
	
<xsl:template match="dd|dt">
	<text:p>
		<xsl:apply-templates/>
	</text:p>
</xsl:template>	
 
<xsl:template match="ul">
	<text:list>
		<xsl:apply-templates/>
	</text:list>
</xsl:template>

<xsl:template match="ol">
	<text:list text:style-name="List1">
		<xsl:apply-templates/>/
	</text:list>
</xsl:template>
		
<!--<xsl:template match="li">
	<text:list-item>
		<xsl:choose>
			<xsl:when test="descendant::*[matches(local-name(), '(span|p|h[1-6]|ul)')]">
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:otherwise>
				<text:p>
					<xsl:apply-templates/>
				</text:p>
			</xsl:otherwise>
		</xsl:choose>
	</text:list-item>
</xsl:template>-->

<xsl:template match="li">
	<text:list-item>
		<xsl:choose>
			<xsl:when test="./(ul|ol) and not(descendant::*[matches(local-name(), '(span|p|h[1-6])')])">
				<text:p>
					<xsl:for-each select="./(ul|ol)/preceding-sibling::node()">
						<xsl:apply-templates select="."/>
					</xsl:for-each>
				</text:p>
				<xsl:apply-templates select="./(ul|ol)"/>
				<xsl:if test="./(ul|ol)/following-sibling::node()">
					<text:p>
						<xsl:for-each select="./(ul|ol)/following-sibling::node()">
							<xsl:apply-templates select="."/>
						</xsl:for-each>
					</text:p>
				</xsl:if>
			</xsl:when>
			<xsl:when test="descendant::*[matches(local-name(), '(span|p|h[1-6])')]">
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:otherwise>
				<text:p>
					<xsl:apply-templates/>
				</text:p>
			</xsl:otherwise>
		</xsl:choose>
	</text:list-item>
</xsl:template>

<xsl:template match="pre">
	<text:p>
		<xsl:apply-templates/>
	</text:p>
</xsl:template>

<xsl:template match="text()">
	<xsl:choose>
		<xsl:when test="not(ancestor::*[matches(local-name(), '(dl|span|blockquote|p|li|h[1-6])')]) and (following-sibling::* or preceding-sibling::*)">
			<text:p>
				<!--<xsl:copy/>-->
				<xsl:value-of select="translate(.,'&#x0d;&#x0a;', '')" />
			</text:p>
		</xsl:when>
		<xsl:otherwise>
			<!--<xsl:copy/>-->
			<xsl:value-of select="translate(.,'&#x0d;&#x0a;', '')" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
<xsl:template match="br">
	<xsl:if test="ancestor::p">
		<xsl:text disable-output-escaping="yes">&lt;/text:p&gt; &lt;text:p text:style-name="P1"&gt;</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template match="blockquote">
	<xsl:choose>
		<xsl:when test="descendant::p">
			<xsl:apply-templates/>
		</xsl:when>
		<xsl:otherwise>
			<text:p>
				<xsl:apply-templates/>
			</text:p>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>
	
<xsl:template match="table">
	<xsl:for-each select=".">
		<table:table table:name="Table1" table:style-name="Table1">
				 <table:table-column table:style-name="Table1.A" table:number-columns-repeated="5"/>
			<xsl:apply-templates/>
		</table:table>
	</xsl:for-each>
</xsl:template>

<xsl:template match="tr">
	<xsl:for-each select=".">
		<table:table-row>
			<xsl:apply-templates/>
		</table:table-row>
	</xsl:for-each>
</xsl:template>

<xsl:template match="th">
	<table:table-cell table:style-name="Table1.A1" office:value-type="string">
		<text:p text:style-name="P1">
			<xsl:apply-templates/>
		</text:p>
	</table:table-cell>
</xsl:template>
	
<xsl:template match="td">
	<table:table-cell table:style-name="Table1.A1" office:value-type="string">
		<text:p text:style-name="P1">
			<xsl:apply-templates/>
		</text:p>
	</table:table-cell>
</xsl:template>

<xsl:template match="img">
	<text:p>
		<draw:frame draw:style-name="imageFrame1" text:anchor-type="as-char" svg:x="0in" svg:y="0in" svg:width="6.26806in"
			svg:height="4.70139in" style:rel-width="scale" style:rel-height="scale">
			<xsl:attribute name="draw:name">
				<xsl:text>Picture </xsl:text><xsl:number/>
			</xsl:attribute>
			<draw:image xlink:type="simple"
				xlink:show="embed" xlink:actuate="onLoad">
				<xsl:attribute name="xlink:href">
					<xsl:text>media/</xsl:text><xsl:value-of select="escape-html-uri(replace(@src, '(http.+/)(.+?)$', '$2'))"></xsl:value-of>
				</xsl:attribute>
			</draw:image>
		</draw:frame>
		<text:span>
			<xsl:value-of select="@alt"/>
		</text:span>
	</text:p>
</xsl:template>

<xsl:template match="em">
	<text:span>
		<xsl:attribute name="text:style-name">
			<xsl:text>italic</xsl:text>
		</xsl:attribute>
		<xsl:apply-templates/>
	</text:span>
</xsl:template>

<xsl:template match="strong">
	<text:span text:style-name="bold">
		<xsl:apply-templates/>
	</text:span>
</xsl:template>

	<xsl:template match="a[starts-with(@href, '#_ednref')]" priority="1">	
	</xsl:template>
	
	<xsl:template match="a[contains(@href, 'http')]">
		<text:a xlink:href="{@href}">	
			<xsl:apply-templates/>
		</text:a>
	</xsl:template>
	
		
	<xsl:template match="a[starts-with(@href, '#_edn')]">
			<xsl:variable name="endRef">
				<xsl:value-of select="concat('#_ednref', replace(@href, '#_edn', ''))"/>
			</xsl:variable>			
				<text:note text:note-class="endnote" text:id="{concat('edn', replace(@href, '#_edn', ''))}">
				<text:note-citation>
					<xsl:value-of select="."></xsl:value-of>
				</text:note-citation>
				<text:note-body>
					<text:p text:style-name="Endnote">
						<xsl:value-of select="//a[@href=$endRef]/parent::p"/>
					</text:p>				
				</text:note-body>
				</text:note>					
	</xsl:template>
	
</xsl:stylesheet>
