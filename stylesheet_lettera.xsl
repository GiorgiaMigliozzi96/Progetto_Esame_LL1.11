<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version='1.0' 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mei="https://music-encoding.org/schema/4.0.1/mei-all.rng"
    exclude-result-prefixes="xs" >
    
    <xsl:output method="html" version="1.0" indent="yes"/>
    
    <!-- rules e template-->
    <xsl:template match="/">
        <html>
            <head>
                <title>LL 1.11 di Vincenzo Bellini - Introduzione</title>
                <!--<link href="style.css" rel="stylesheet" type="text/css"/>-->
                <style>
            
                    @import url('https://fonts.googleapis.com/css2?family=Merriweather');
                    @import url('https://fonts.googleapis.com/css2?family=Montserrat');
                    
                    .testi {
                        background-color: #d9d9d9;
                        margin: 0% 0% 0% 0%;
                        position:absolute;
                        float: right;
                        right: 0%;
                        top: 35%;
                        width: 35%;
                        font-family: 'Montserrat', sans-serif;
                    }
                    .trascrizione {
                        border: 2px solid #262626;
                        /*position:fixed;*/
                    }
                    .titolo {
                        text-align: center;
                        font-family: 'Merriweather', serif;    
                        background-color: #262626;
                        margin: 0% 0% 0% 0%;
                        padding: 1% 0% 1% 0%;
                        color: #f2f2f2;            
                    }
                    .titolo h1, h2 {
                        margin: 0% 0% 0% 0%;
                        padding: 0.3% 0% 0.3% 0%;
                    }
                    h3 {
                        margin: 0% 0% 0% 0%;
                        padding: 0.3% 0% 0.3% 0%;
                        font-family: 'Merriweather', serif; 
                    }
                    body {
                        margin: 0% 0% 0% 0%;
                        padding: 0% 0% 0% 0%;
                        background-color: #d9d9d9;
                    }
                    .linea {
                        margin: 0% 0% 0% 0%;
                        position: absolute;
                    }
                    .hotspot {
                        margin: 0% 0% 0% 0%;
                        position: absolute;
                    }
                    .linea:hover {
                        background-color: #b3d9ff;
                        opacity: 0.6;
                    }
                    .hotspot:hover {
                        background-color: #ffff80;
                        opacity: 0.4;
                    }                 
                    .immagine {
                        position:relative;
                        transform: scale(50%,50%);
                        -webkit-transform: scale(50%,50%);
                        -moz-transform: scale(50%,50%);
                        -o-transform: scale(50%,50%);
                        -ms-transform: scale(50%,50%);
                        -khtml-transform: scale(50%,50%);
                        transform-origin: 0% 0%;
                        padding: 0% 0% 0% 0%;
                        margin: 0% 0% 0% 0%;
                    }
                    img {
                        position:static;
                    }
                    #i2 {
                        transform-origin: 0% -100%
                    }
                    #i3 {
                        transform-origin: 0% -200%
                    }
                    #i4 {
                        transform-origin: 0% -300%
                    }



                    
                    .menu {
                        background-color: #0d0d0d;
                    }
                    .menu ul li {
                        display: inline;
                        font-family: 'Merriweather', serif;
                        font-size: 150%;
                        margin: 0% 0% 0% 0%;
                        padding: 0.3% 1% 0.3% 1%;;
                        border: 3px solid #0d0d0d;
                        background-color: #999999;
                    }
                    .menu ul {
                        margin: 0% 0% 0% 0%;
                        padding: 0.6% 0.3% 0.6% 0.3%;
                    }
                    /* link non visitato*/
                    li a:link {
                        color: #1a1a1a;
                        text-decoration: none;
                        transition: 1s;
                    }
                    /* link visitato */
                    li a:visited {
                        color: #1a1a1a;
                        text-decoration: none;
                    }
                    /* mouse over link */
                    li a:hover {
                        color: #f2f2f2;
                        text-decoration: underline;
                        background-color: #262626;
                        padding: 0.3% 2% 0.3% 2%;
                        transition: 1s;
                    }
                    /* link selezionato */
                    li a:active {
                        color: #1a1a1a;
                        text-decoration: underline;
                    }
                  
                    .finestra {
                        position: relative;
                        display: inline;
                        font-size: 130%;
                    }
                    .finestra_aperta p {
                        font-size: 80%;
                        margin: 3% 3% 3% 3%;
                    }
                    .finestra .finestra_aperta {
                        visibility: hidden;
                        position: absolute;
                        width: 300px;
                        height: auto;
                        z-index: 1;
                        bottom: 125%;
                        left: 10%;
                        right: 10%;
                        margin-left: -50px;
                        border: 3px solid #0d0d0d;
                        opacity: 0;
                        color: #f2f2f2;
                        background-color: #262626;
                        transition: 1s; /*Questo trovato (vedi hoover)*/
                    }
                    .finestra:hover .finestra_aperta {
                        visibility: visible;
                        opacity: 1;
                        transition: 1s; /*Questo scritto*/
                    }
                    .dateline {
                        text-align: right;
                    }
                    .ricostruito {
                        font-weight: bold;
                        font-style: italic;
                    }
                    .classPersName {
                        font-style: italic;
                    }
                    .del {
                        text-decoration: line-through;
                    }
                    .und {
                        text-decoration: underline;
                    }
                    .paratext {
                        font-size: 200%;
                        padding: 0.2% 0.2% 0.2% 0.2%;
                        font-family: 'Merriweather', serif;
                    }
                    
                    .contenitore {
                        padding: 2% 2% 2% 2%;
                    }
                    .testi a {
                        text-decoration: none;
                        font-size: 110%;
                    }
                    .testi a:visited {
                        color: blue;
                    }
                    .titoliLista {
                        font-family: 'Merriweather', serif;
                        font-size: 110%;
                    }
                    .introLista {
                        font-size: 120%;
                        font-weight: bold;
                    }
                    .dateline .finestra_aperta {
                        text-align: left;
                    }
                    .classPlaceName .finestra_aperta {
                        width: 150px;
                    }
                    .classPlaceName {
                        display: inline;
                        font-weight: bold;
                    }
                    .ricostruitoDiv .finestra_aperta {
                        width: 150px;
                    }
                    .ricostruitoDiv {
                        display: inline;
                    }
                    #finestraSalma {
                        width: 400px;
                        margin-left: -180px;
                    }
                    #finestraSpartito {
                        width: 400px;
                        margin-left: -280px;
                    }
                    #finestraBubbola {
                        width: 400px;
                        margin-left: -80px;
                    }
                    #finestraImpresario {
                        width: 400px;
                        margin-left: -60px;
                    }
                    #finestraGap {
                        width: 150px;
                        margin-left: -35px;
                    }
                    #finestraParatext {
                        width: 150px;
                        margin-left: -15px;
                        bottom: 145%;
                    }
                    #origStyle {
                        width: 100px;
                    }
                    .classAbbr {
                        display: inline;
                    }
                    .classAbbr .finestra_aperta {
                        width: 150px;
                    }
                    #finestraVB {
                        margin-left: -40px;
                    }
                    #finestraPT {
                        width: 150px;
                    }
                    #soci {
                        font-size: 130%;
                    }
                    #finestraGenitori {
                        margin-left: -100px;
                    }


                </style>
            </head>
            
            <body>
                <div class="titolo">
                    <h1>Lettera LL 1.11</h1>
                    <h2>di Vincenzo Bellini</h2>
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="Introduzione.html">Introduzione</a></li>
                        <li><a href="Lettera.html">Lettera</a></li>
                    </ul>
                </div>
                
                <div class="galleria">
                    
                    <div class="immagine" id="i1">
                        <a class="ImgTxt">
                            <xsl:attribute name="name">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='1']/@xml:id"/>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='1']/@start"/>
                            </xsl:attribute>
                            <img><xsl:attribute name="src"><xsl:value-of select="//tei:facsimile/tei:surface[@n='1']/tei:graphic/@url"/></xsl:attribute></img>
                        </a>
                        <xsl:for-each select="//tei:surface[@n='1']//tei:zone[@rendition='Line']">
                            <a class="ImgTxt">
                                <xsl:attribute name="name">
                                    <xsl:value-of select="@xml:id"/>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@start"/>
                                </xsl:attribute>
                                <div class="linea">
                                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:attribute name="style"> left:<xsl:value-of select="(@ulx)"/>; top:<xsl:value-of select="(@uly)"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                                </div>
                            </a>
                        </xsl:for-each>
                        <xsl:for-each select="//tei:surface[@n='1']//tei:zone[@rendition='HotSpot']">
                            <div class="hotspot">
                                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                <xsl:attribute name="style"> left:<xsl:value-of select="(@ulx)"/>; top:<xsl:value-of select="(@uly)"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                            </div>
                        </xsl:for-each>
                    </div>

                    <div class="immagine" id="i2">
                        <a class="ImgTxt">
                            <xsl:attribute name="name">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='2']/@xml:id"/>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='2']/@start"/>
                            </xsl:attribute>
                            <img><xsl:attribute name="src"><xsl:value-of select='//tei:facsimile/tei:surface[@n="2"]/tei:graphic/@url'/></xsl:attribute></img>
                        </a>
                        <xsl:for-each select="//tei:surface[@n='2']//tei:zone[@rendition='Line']">
                            <a class="ImgTxt">
                                <xsl:attribute name="name">
                                    <xsl:value-of select="@xml:id"/>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@start"/>
                                </xsl:attribute>
                                <div class="linea">
                                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                                </div>
                            </a>
                        </xsl:for-each>
                        <xsl:for-each select="//tei:surface[@n='2']//tei:zone[@rendition='HotSpot']">
                            <div class="hotspot">
                                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                            </div>
                        </xsl:for-each>
                    </div>

                    
                    <div class="immagine" id="i3">
                        <a class="ImgTxt">
                            <xsl:attribute name="name">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='3']/@xml:id"/>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='3']/@start"/>
                            </xsl:attribute>
                            <img><xsl:attribute name="src"><xsl:value-of select='//tei:facsimile/tei:surface[@n="3"]/tei:graphic/@url'/></xsl:attribute></img>
                        </a>
                        <xsl:for-each select="//tei:surface[@n='3']//tei:zone[@rendition='Line']">
                            <a class="ImgTxt">
                                <xsl:attribute name="name">
                                    <xsl:value-of select="@xml:id"/>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@start"/>
                                </xsl:attribute>
                                <div class="linea">
                                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                                </div>
                            </a>
                        </xsl:for-each>
                        <xsl:for-each select="//tei:surface[@n='3']//tei:zone[@rendition='HotSpot']">
                            <div class="hotspot">
                                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                            </div>
                        </xsl:for-each>
                    </div>
                    
                    <div class="immagine" id="i4">
                        <a class="ImgTxt">
                            <xsl:attribute name="name">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='4']/@xml:id"/>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="//tei:facsimile/tei:surface[@n='4']/@start"/>
                            </xsl:attribute>
                            <img><xsl:attribute name="src"><xsl:value-of select='//tei:facsimile/tei:surface[@n="4"]/tei:graphic/@url'/></xsl:attribute></img>
                        </a>
                        <xsl:for-each select="//tei:surface[@n='4']//tei:zone[@rendition='Line']">
                            <a class="ImgTxt">
                                <xsl:attribute name="name">
                                    <xsl:value-of select="@xml:id"/>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@start"/>
                                </xsl:attribute>
                                <div class="linea">
                                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                    <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                                </div>
                            </a>
                        </xsl:for-each>
                        <xsl:for-each select="//tei:surface[@n='4']//tei:zone[@rendition='HotSpot']">
                            <div class="hotspot">
                                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                <xsl:attribute name="style"> left:<xsl:value-of select="@ulx"/>; top:<xsl:value-of select="@uly"/>; height:<xsl:value-of select="((@lry)-(@uly))"/>;  width:<xsl:value-of select="((@lrx)-(@ulx))"/> </xsl:attribute>
                            </div>
                        </xsl:for-each>
                    </div>
                </div> 
                <div class="testi">   
                    <div class="trascrizione" id="tr">
                        <div class="contenitore">
                            <h3><xsl:value-of select="//tei:msItem/tei:title"/></h3>
                            <xsl:apply-templates />
                        </div>
                    </div>
                    <div class="approfondimento" id="app">
                        <div class="contenitore">
                            <div id="work">
                                <h3>Le opere</h3>
                                <span class="introLista" id="TEI-ListWork.xml#Norma"><p><span class="titoliLista">Titolo:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/title' /></p></span>
                                <ul class="classWork">
                                    <li><p><span class="titoliLista">Compositore:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/mei:composer' /></p></li>
                                    <li><p><span class="titoliLista">Librettista:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/mei:librettist' /></p></li>
                                    <li><p><span class="titoliLista">Prima:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/orgName' />, <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/placeName' />, <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/date' /></p></li>
                                    <li><p><span class="titoliLista">Note:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/note' /></p></li>
                                </ul>
                                <span class="introLista" id="TEI-ListWork.xml#Sonnambula"><p><span class="titoliLista">Titolo:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Sonnambula"]/title' /></p></span>
                                <ul class="classWork">
                                    <li><p><span class="titoliLista">Compositore:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Sonnambula"]/mei:composer' /></p></li>
                                    <li><p><span class="titoliLista">Librettista:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Sonnambula"]/mei:librettist' /></p></li>
                                    <li><p><span class="titoliLista">Prima:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Sonnambula"]/orgName' />, <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/placeName' />, <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Norma"]/date' /></p></li>
                                    <li><p><span class="titoliLista">Note:</span> <xsl:value-of select='document("TEI-ListWork.xml")/TEI/text/back/div/listBibl/bibl[@xml:id="Sonnambula"]/note' /></p></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//tei:teiHeader" name="teiHeader"></xsl:template>

    <xsl:template match="//tei:front" name="front"></xsl:template>

    <xsl:template match="//tei:back" name="back"></xsl:template>

    <xsl:template match="//tei:supplied" name="supplied"></xsl:template>

    <xsl:template match="//tei:expan" name="expan"></xsl:template>

    <xsl:template match="//tei:rs/tei:hi[@rend='underline']" name="underline">
        <span class="und">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <xsl:template match="//tei:g" name="g">
        <sup>
            <xsl:value-of select="."/>
        </sup>
    </xsl:template>

    <xsl:template match="//tei:term" name="term">
        <xsl:if test="@ref='#salma'">
            <div class="finestra">
                <span class="classTerm">
                    <xsl:value-of select="."/>
                </span>
                <div class="finestra_aperta" id="finestraSalma">
                    <p>
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:label/tei:term[@xml:id='salma']"/>: 
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:item/tei:gloss[@target='#salma']"/> 
                    </p>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#spartito'">
            <div class="finestra">
                <span class="classTerm">
                    <xsl:value-of select="."/>
                </span>
                <div class="finestra_aperta" id="finestraSpartito">
                    <p>
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:label/tei:term[@xml:id='spartito']"/>: 
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:item/tei:gloss[@target='#spartito']"/> 
                    </p>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#bubbola'">
            <div class="finestra">
                <span class="classTerm">
                    <xsl:value-of select="."/>
                </span>
                <div class="finestra_aperta" id="finestraBubbola">
                    <p>
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:label/tei:term[@xml:id='bubbola']"/>: 
                            <xsl:value-of select="//tei:list[@type='terminology']/tei:item/tei:gloss[@target='#bubbola']"/> 
                    </p>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#impresario'">
            <div class="finestra">
                <span class="classTerm">
                    <xsl:value-of select="."/>
                </span>
                <div class="finestra_aperta" id="finestraImpresario">
                    <p>
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:label/tei:term[@xml:id='impresario']"/>: 
                        <xsl:value-of select="//tei:list[@type='terminology']/tei:item/tei:gloss[@target='#impresario']"/> 
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template match="//tei:placeName" name="placeName">
        <xsl:if test="@ref='#Etna'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='Etna']/tei:placeName/tei:geogName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='Etna']/tei:placeName/tei:settlement"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#CT'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='CT']/tei:placeName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='CT']/tei:country"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#VE'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='VE']/tei:placeName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='VE']/tei:country"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#TS'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='TS']/tei:placeName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='TS']/tei:country"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#MI'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='MI']/tei:placeName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='MI']/tei:country"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="@ref='#PA'">
            <div class="finestra">
                <div class="classPlaceName">
                    <xsl:value-of select="."/>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='PA']/tei:placeName"/>, 
                            <xsl:value-of select="//tei:listPlace/tei:place[@xml:id='PA']/tei:country"/> 
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template match="//tei:damage/tei:gap" name="gap">
        <div class="finestra">
            <a href="#LL1.11_hotspot_1rv_04">
                <xsl:attribute name="href">
                    <xsl:value-of select="../@facs"/>
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="../@xml:id"/>
                </xsl:attribute>
                (XXX)
            </a>
            <div class="finestra_aperta" id="finestraGap">
                <p>La porzione di testo è andata perduta in seguito ad un danno riportato dal documento.</p>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="//tei:choice/tei:abbr" name="abbr">
        <div class="classAbbr">
            <div class="finestra">
                <xsl:apply-templates />
                <div class="finestra_aperta">
                    <p><xsl:value-of select="../tei:expan"/></p>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="//tei:choice/tei:orig" name="orig">
        <div class="finestra">
            <xsl:apply-templates />
            <div class="finestra_aperta" id="origStyle">
                <p><xsl:value-of select="../tei:reg"/></p>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="//tei:damage/tei:supplied" name="damage">
        <div class="finestra">
            <div class="ricostruitoDiv">
                <span class="ricostruito">
                    <xsl:value-of select="."/>
                </span>
                <div class="finestra_aperta">
                    <p>Il testo è stato ricostruito perché danneggiato.</p>
                </div>
            </div>
        </div>  
    </xsl:template>

    <xsl:template match="//tei:w" name="w">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="//tei:rs" name="rs">
        <a>
            <xsl:attribute name="href">
                #<xsl:value-of select="@ref"/>
            </xsl:attribute>
            <xsl:attribute name="class">
                rs
            </xsl:attribute>
            <span class="classRS">
                <xsl:apply-templates />
            </span>
        </a>
    </xsl:template>

    <xsl:template match="//tei:subst/tei:del" name="del">
        <span class="del">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="//tei:subst/tei:add" name="add">
        <sup>
            <xsl:value-of select="."/>
        </sup>
    </xsl:template>

    <xsl:template match="//tei:persName" name="persName">
        <xsl:choose>
            <xsl:when test="@ref='#VF'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='VF']/tei:note/tei:p"/> 
                        </p>
                    </div>  
                </div>
            </xsl:when>
            <xsl:when test="@ref='#FFlo'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FFlo']/tei:persName"/>: 
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FFlo']/tei:persName/@role"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#IGM'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='IGM']/tei:note/tei:p"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#IGM #AGP'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            Padre: <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='IGM']/tei:persName"/>, 
                            Figlia: <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='AGP']/tei:persName"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#PT'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta" id="finestraPT">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='PT']/tei:persName"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#GBP'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='GBP']/tei:persName"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#GNP'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='GNP']/tei:persName"/>: 
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='GNP']/tei:persName/@role"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#FS'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FS']/tei:note/tei:p"/> 
                        </p>
                    </div>
                </div>  
            </xsl:when>
            <xsl:when test="@ref='#AT'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='AT']/tei:note/tei:p"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#FR'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='FR']/tei:note/tei:p"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#AF #RB'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta" id="finestraGenitori">
                        <p>
                            Madre: <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='AF']/tei:persName"/>, 
                            Padre: <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='RB']/tei:persName"/> 
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#RM'">
                <div class="finestra">
                    <span class="classPersName">
                        <xsl:apply-templates />
                    </span>
                    <div class="finestra_aperta">
                        <p>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='RM']/tei:persName"/>
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:when test="@ref='#VB'">
                <div class="finestra">
                    <span class="classPersName">
                        <span class="und">
                            <xsl:apply-templates />
                        </span>
                    </span>
                    <div class="finestra_aperta" id="finestraVB">
                        <p>
                            <xsl:for-each select="//tei:listPerson/tei:person[@xml:id='VB']/tei:persName/tei:forename">
                                <xsl:value-of select="."/>&#160;
                            </xsl:for-each>
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='VB']/tei:persName/tei:surname"/>, 
                            alias <em><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='VB']/tei:persName/tei:addName"/></em>, 
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='VB']/tei:persName/tei:roleName"/>: 
                            <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='VB']/tei:persName/@role"/>
                        </p>
                    </div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <span class="classPersName" id="soci">
                    <xsl:value-of select="."/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="//tei:pb" name="pageBegin"> 
        <xsl:for-each select=".">
            <br />
            <a class="TxtImg">
                <xsl:attribute name="name">
                    <xsl:value-of select="@xml:id"/>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="@facs"/>
                </xsl:attribute>
                [*]
            </a>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="//tei:lb" name="lineBegin">
        <xsl:for-each select=".">
            <xsl:choose>
                <xsl:when test="@break">
                    <sub>
                        =
                    </sub>
                    <br />
                    <a class="TxtImg">
                        <xsl:attribute name="name">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="@facs"/>
                        </xsl:attribute>
                        (*)
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <br />
                    <a class="TxtImg">
                        <xsl:attribute name="name">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="@facs"/>
                        </xsl:attribute>
                        (*)
                    </a>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="//tei:s" name="sentence">
        <span class="sentence">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="//tei:dateline" name="dateline">
        <div class="dateline">
            <xsl:apply-templates />
        </div>
    </xsl:template>

    <xsl:template match="//tei:ab[@type='parag']" name="parag">
        <span class="parag">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="//tei:ab[@type='paratext']" name="paratext">
        <br />
        <div class="finestra">
            <span class="paratext">
                <a>
                    <xsl:attribute name="name">
                        <xsl:value-of select="@xml:id"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="@facs"/>
                    </xsl:attribute>
                    <xsl:value-of select="."/>
                </a>
            </span>
            <div class="finestra_aperta" id="finestraParatext">
                <p>Il testo è stato aggiunto da una seconda mano.</p>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>
