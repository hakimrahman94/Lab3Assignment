<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table align="center">
		<xsl:for-each select="list/product">
			<th>
				<img>
					<xsl:attribute name="src"><xsl:value-of select="cappic"/></xsl:attribute>
					<xsl:attribute name="class">imgfiles</xsl:attribute> 
				</img>
				<h3><xsl:value-of select="captitle"/></h3>
					RM <xsl:value-of select="capprice"/> 
					(<xsl:value-of select="capdiscount"/>% off)
			</th>
		</xsl:for-each>
	</table>
	</xsl:template>
</xsl:stylesheet>