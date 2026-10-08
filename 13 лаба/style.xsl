<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match="/">
        <html>
            <head>
                <title>Список продуктов</title>
                
            </head>
            <body>
                <h1>Список продуктов</h1>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Бренд</th>
                        <th>Цена</th>
                        <th>Страна производитель</th>
                    </tr>
                    <xsl:for-each select="store/products/product">
                        <xsl:sort select="price" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="country"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>