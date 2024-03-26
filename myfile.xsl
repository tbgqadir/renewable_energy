<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
 <xsl:for-each select="Courses">
  <h2><xsl:value-of select="@title"/></h2>
  </xsl:for-each>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Course Code</th>
      <th style="text-align:left">CP</th>
      <th style="text-align:left">Course title</th>
    </tr>
    <xsl:for-each select="Courses/MyCourses/Course">
    <tr>
      <td><xsl:value-of select="@code"/></td>
      <td><xsl:value-of select="@CP"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>
    </xsl:for-each>
  </table>

<table border="1">
    <tr bgcolor="#ffffaa">
      <th style="text-align:left">Course Code</th>
      <th style="text-align:left">CP</th>
      <th style="text-align:left">Course title</th>
    </tr>
    <xsl:for-each select="Courses/AllCourses/Course">
    <tr>
      <td><xsl:value-of select="@code"/></td>
      <td><xsl:value-of select="@CP"/></td>
      <td><xsl:value-of select="."/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

