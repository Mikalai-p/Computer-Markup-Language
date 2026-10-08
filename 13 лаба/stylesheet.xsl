<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <title>Online products</title>
  </head>
  <body>
  
  <table border="1">
  <tr bgcolor="#9acd32">
    <th>name</th>
    <th>technique</th>
    <th>price</th>
  </tr>
    <xsl:for-each select="books/watch">
    <xsl:sort select="title"/>
      <tr>
        <td><xsl:value-of select="author"/></td>
        <td width="700px"><xsl:value-of select="country"/></td>
        <td><xsl:value-of select="title"/></td> 
      </tr>  
    </xsl:for-each>
  </table>
  </body> 
  </html> 
</xsl:template>  
</xsl:stylesheet>