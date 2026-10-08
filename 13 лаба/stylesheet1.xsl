<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="body">
    <html>
    <head>
          <title>список студентов</titel>
          <link rel="stylesheet" href="main.css"/>
    </head>
    <body>
          <table>
                 <tr bgcolor="#9acd32">
                     <th>Имя студента</th>
                     <th>Мат Анализ</th>
                     <th>ОПИ</th>
                     <th>ОАИП</th>
                     <th>Англ яз</th>
                     <th>Бел яз</th>
                     <th>Лин ал</th>
                </tr>
                <xsl:for-each select="student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <xsl:choose>
                <xsl:when test="mark &gt; 8">
                    <td bgcolor="green"><xsl:value-of select="mark"/></td>
                </xsl:when>
                <xsl:when test="mark &lt; 4">
                    <td bgcolor="red"><xsl:value-of select="mark"/></td>
                </xsl:when>
                <xsl:otherwise>
                    <td><xsl:value-of select="mark"/></td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
        </xsl:for-each>
          </table>
    </body>
    </html>
    </xsl:template>
    <xsl:stylesheet>
                    