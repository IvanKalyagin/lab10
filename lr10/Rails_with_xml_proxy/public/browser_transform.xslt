<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th>№</th>
                            <th>Число</th>
                            <th>Квадрат числа</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="objects/object">
                            <xsl:variable name="counter" select="position()"/>
                                <tr>
                                    <th>
                                        <xsl:value-of select="$counter"></xsl:value-of>
                                    </th>
                                    <th>
                                        <xsl:value-of select="first"></xsl:value-of>
                                    </th>
                                    <th>
                                        <xsl:value-of select="second"></xsl:value-of>
                                    </th>
                                </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>