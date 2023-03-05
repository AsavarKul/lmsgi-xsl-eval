<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" doctype-system="about:legacy-compat"/>
	<xsl:variable name="nombre" select="'Eneko'"/>
	<!-- <xsl:variable name="nombre" select="'El clarete'"/> -->
	
	<xsl:template match="/reservaeventos">
		<html lang="es">
			<head>
				<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
				<meta name="description" content="Página principal" />
				<title>titulo de la web</title>
			</head>
			<body>
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="teatro.xml">Teatro</a>
					<a href="restaurante.xml">Restaurante</a>
					<a href="festival.xml">Festival</a>
				</header>
				<xsl:for-each select="restaurante">
					<xsl:if test="nombrerestaurante=$nombre">
						
						<main>
							<h1><a href="{informacion}">
									<xsl:value-of select="nombrerestaurante"/> - <xsl:value-of select="ciudad"/>
								</a>
							</h1>
							<xsl:for-each select="menu">
								<article class="restaurante">
									<h3><xsl:value-of select="@tipo"/></h3>
									<xsl:for-each select="plato">
										<p><xsl:value-of select="."/></p>
									</xsl:for-each>
								</article>
							</xsl:for-each>
						</main>
					</xsl:if>
				</xsl:for-each>
				
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
	
	
	
</xsl:stylesheet>