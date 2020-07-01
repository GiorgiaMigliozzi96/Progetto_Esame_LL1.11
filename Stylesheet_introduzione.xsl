<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version='1.0' 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" >
    <xsl:output method="html" version="1.0" indent="yes"/>

    <!-- rules e template-->
    <xsl:template match="/">
        <html>
            <head>
                <title>Prova Progetto codifica</title>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>

            <body>
                <div class="menu">
                    <button><a href="Introduzione.html">Introduzione</a></button>
                    <button><a href="Lettera.html">Lettera</a></button>
                </div>
                <div>
                    <h1>Il Progetto</h1>
                    <!--Info progetto-->
                    <p>Questo progetto è stato realizzato da <xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name[@ref='#ADS']"/> (matricola 530335) e <xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name[@ref='#GM']"/> (matricola 536803) per il Corso di Codifica di Testi a.a. 2019/2020 del corso di laurea di Informatica Umanistica dell'Università di Pisa.</p>
                    <p>Con la trascrizione di <xsl:value-of select="//tei:titleStmt/tei:respStmt/tei:name"/> nell'edizione <em>Vincenzo Bellini. Carteggi</em> del 2017 nelle pagine <xsl:value-of select="//tei:sourceDesc/tei:bibl/tei:citedRange"/> con identificativo <xsl:value-of select="//tei:sourceDesc/tei:bibl/@ana"/>.</p>
                    <p>L'edizione digitale è stata realizzata nel <xsl:value-of select="//tei:editionStmt/tei:edition/tei:date/@when"/>.</p>
                    <p>Il codice della lettera è <xsl:value-of select="//tei:msIdentifier/tei:idno"/>; questa è conservata nel <xsl:value-of select="//tei:msIdentifier/tei:repository"/> e <xsl:value-of select="//tei:msIdentifier/tei:altIdentifier/tei:idno"/>.</p>
                    <p><xsl:value-of select='//tei:adminInfo/tei:note'/></p>
                    <h2>La Lettera</h2>
                    <p>La lettera dal titolo <em><xsl:value-of select="//tei:msItem/tei:title"/></em> è scritta in <xsl:value-of select="//tei:msItem/tei:textLang"/>.</p>
                    <p><xsl:value-of select="//tei:support/tei:stamp"/></p>
                    <div><xsl:for-each select="//tei:support/tei:p"><xsl:value-of select="."/><br/></xsl:for-each></div>
                    <p>La lettera è composta da <xsl:value-of select="//tei:extent/tei:measure"/>&#160;<xsl:value-of select="//tei:extent/tei:measure/@type"/> di dimensioni <xsl:value-of select="//tei:extent/tei:dimensions/tei:height"/>&#160;<xsl:value-of select="//tei:extent/tei:dimensions/@unit"/> e <xsl:value-of select="//tei:extent/tei:dimensions/tei:width"/>&#160;<xsl:value-of select="//tei:extent/tei:dimensions/@unit"/>.</p>
                    <p><xsl:value-of select="//tei:supportDesc/tei:foliation"/></p>
                    <p><xsl:value-of select='//tei:handDesc/tei:handNote/tei:p'/></p>
                    <p><xsl:value-of select='//tei:handDesc/tei:handNote[@xml:id="h1"]/tei:p'/></p>
                    <p><xsl:value-of select='//tei:sealDesc/tei:seal/tei:p'/></p>


                </div>
                
                <div>
                    <!--Info condizoioni lettera-->
                </div>

                <div class="bibliografia">
                    <!--Info bibliografia-->
                    <p></p>
                </div>
                <!-- <xsl:apply-templates /> -->
            </body>
        </html>
    </xsl:template>
    <!--<xsl:template name="prova" match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support" >
        <xsl:value-of select="./p"/>
    </xsl:template>-->


</xsl:stylesheet>
