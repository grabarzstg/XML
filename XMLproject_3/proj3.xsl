<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	


<xsl:template match="/">
	<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl"> 
    <head> 
        <meta charset="utf-8"/> 
		<link rel="stylesheet" type="text/css" href="style.css" />
        <title>Projekt 3</title> 
    </head> 
  <body>
  
  <xsl:for-each select="ksiazka/prace/praca">
	    <h2>Firma: <xsl:value-of select="nazwa_pr"/> </h2>

  <xsl:variable name="kod" ><xsl:value-of select="@kod_pr"/></xsl:variable> 


  <table>
  <xsl:for-each select="/ksiazka/osoby/osoba">

   <xsl:variable name="www" ><xsl:value-of select="strona"/></xsl:variable> 
  

	<tr>
	<xsl:if test="@kod_praca=$kod">
	<td>
	<xsl:value-of select="nazwisko"/>
	</td>
	<td>
   <xsl:value-of select="imie"/>
   </td>
   <td>
   <xsl:value-of select="adres"/>
		</td>
		
		   <td>
   <xsl:value-of select="gg"/>
		</td>
		   <td>
   <xsl:value-of select="telefony"/>
		</td>
		   <td>
	<a href="" ><xsl:value-of select="$www"/></a>	   
		</td>
		
	</xsl:if>
	<xsl:if test="@kod_praca!=$kod"><td></td></xsl:if>
	
	</tr>
  
  </xsl:for-each>
  </table>
  </xsl:for-each>
  
  
<div id="w3c">
  <a id="w3" href="http://validator.w3.org/check?uri=https%3A%2F%2Finf.ug.edu.pl%2F~mgrabowski%2FXML%2Fxml.xhtml"><b> W3C Validator </b></a> </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
