<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
      <link rel="stylesheet" type="text/css" href="style.css"/>
      <html lang="en">
        <head>
          <meta charset="UTF-8" />
          <meta http-equiv="X-UA-Compatible" content="IE=edge" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <title>Parte 2 grupo 02</title>
        </head>
        <body>
          <div style="padding: 2em;">
          <xsl:for-each select="/registro/factura">
          <div style="margin-bottom:3em;">
            <table class="tituloFactura" style="width: 100%">
              <tr>
                <th class="cabecera">Factura No: <span class="numeroFactura"><xsl:value-of select="num" /></span></th>
                <td>Tipo: <xsl:value-of select="tipo" /></td>
              </tr>
              <tr>
                <th class="cabecera">Cliente:</th>
              </tr>
              <tr>
                <td class="cabecera">Nombre:  <xsl:value-of select="cliente/nombre" /></td>
                <td>Documento: <xsl:value-of select="cliente/documento/dui" /> </td>
              </tr>
              <tr>
                <td class="cabecera">Teléfono: <xsl:value-of select="cliente/telefono" /></td>
                <td>Email: <xsl:value-of select="cliente/email"/></td>
              </tr>
            </table>
            <table class="cuerpoFactura" style="width: 100%">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Detalle</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                <xsl:for-each select="lineafactura">
                    <tr>
                        <td><xsl:value-of select="codigo" /></td>
                        <td><xsl:value-of select="detalle" /></td>
                        <td><xsl:value-of select="cantidad" /></td>
                        <td><xsl:value-of select="precio/moneda"/><xsl:value-of select="precio/valor"/></td>
                        <td><xsl:value-of select="subtotal/moneda" /><xsl:value-of select="subtotal/valor"/></td>
                    </tr>
                </xsl:for-each>
                    <tr class="lineafondo">
                        <td style="border:0;"></td>
                        <td style="border:0;"></td>
                        <td style="border:0;"></td>
                        <td style="border: 0;">TOTAL</td>
                        <td><xsl:value-of select="total/moneda" /><xsl:value-of select="total/valor"/></td>
                    </tr>
                </tbody>
            </table>
            </div>
          </xsl:for-each>
      </div>
        </body>
      </html>

    </xsl:template>
</xsl:stylesheet>