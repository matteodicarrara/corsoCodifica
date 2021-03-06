<?xml version="1.0"?>
<!-- hours-from-datetime.xsl -->
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>&#xA;Extracting the hour from an xs:dateTime:</xsl:text>
    <xsl:variable name="currentDateTime" as="xs:dateTime" 
      select="current-dateTime()"/>
    <xsl:text>&#xA;&#xA;  The current date and time is: </xsl:text>
    <xsl:value-of select="$currentDateTime"/>

    <xsl:text>&#xA;&#xA;  The current hour is: </xsl:text>
    <xsl:value-of select="hours-from-dateTime($currentDateTime)"/>
    <xsl:text>&#xA;    Also known as </xsl:text>
    <xsl:value-of select="format-dateTime($currentDateTime, '[h] [Pn]')"/>
    <xsl:text>&#xA;    or </xsl:text>
    <xsl:value-of select="format-dateTime($currentDateTime, '[H] [ZN]')"/>
    <xsl:text>&#xA;    or </xsl:text>
    <xsl:value-of select="format-dateTime($currentDateTime, '[H] [z]')"/>
  </xsl:template>

</xsl:stylesheet>
