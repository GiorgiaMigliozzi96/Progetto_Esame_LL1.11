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
                <title>LL 1.11 di Vincenzo Bellini - Introduzione</title>
                <!--<link href="style.css" rel="stylesheet" type="text/css"/>-->
                <style>
                    @import url('https://fonts.googleapis.com/css2?family=Merriweather');
                    @import url('https://fonts.googleapis.com/css2?family=Montserrat');
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
                    body {
                    margin: 0% 0% 0% 0%;
                    padding: 0% 0% 0% 0%;
                    background-color: #d9d9d9;
                    }
                    p{
                    font-family: 'Montserrat', sans-serif;
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
                    /* unvisited link */
                    li a:link {
                    color: #1a1a1a;
                    text-decoration: none;
                    transition: 1s;
                    }
                    /* visited link */
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
                    /* selected link */
                    li a:active {
                    color: #1a1a1a;
                    text-decoration: underline;
                    }
                    .imgdecorativa {
                        float: right;
                        vertical-align: middle;
                        right: 2%;
                        padding: 1% 1% 2% 2%;
                        width: 150px;
                    }
                    .imgdecorativaLettera {
                        float: right;
                        vertical-align: middle;
                        right: 2%;
                        padding: 0px 5px 0px 5px;
                        width: 150px;
                    }
                    .imgdecorativaLettera img {
                      padding: 5px 0px 5px 0px;
                    }
                    .contenuto {
                        padding: 1% 1% 1% 1%;
                    }
                    img {
                        width: 100%;
                    }
                    .ricostruito {
                        font-weight: bold;
                    }
                    .del {
                        text-decoration: line-through;
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
                        width: 100px;
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
                    .contenuto a {
                        text-decoration: none;
                    }
                    .contenuto a:visited {
                        color: blue;
                    }
                    .titoliLista, .enfasi {
                        font-family: 'Merriweather', serif;
                        font-size: 110%;
                    }
                    .introLista {
                        font-size: 120%;
                        font-weight: bold;
                    }
                    .ricostruito {
                        font-weight: bold;
                        font-style: italic;
                        font-size: 130%;
                    }
                    .classPersName {
                        font-style: italic;
                        font-size: 130%;
                    }
                    .classPlaceName {
                        font-weight: bold;
                        font-size: 130%;
                    }
                    .classAbbr {
                        font-size: 130%;
                        font-family: 'Montserrat', sans-serif;
                    }
                    .fintoLink {
                        color: blue;
                    }
                    .finestra .classAbbr {
                        display:inline;
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
                <div class="progetto">
                    <div class="titolo">
                        <h2>Il Progetto</h2>
                    </div>
                    <div class="contenuto">
                        <div class="imgdecorativa">
                            <img src="immagini/Le_lettere_di_Bellini_Pastura.jpg"/>
                        </div>
                        <p>Questo progetto è stato realizzato da <span class="enfasi"><xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name[@ref='#ADS']"/></span> (matricola <span class="enfasi">530335</span>) e <span class="enfasi"><xsl:value-of select="//tei:editionStmt/tei:respStmt/tei:name[@ref='#GM']"/></span> (matricola <span class="enfasi">536803</span>) per il Corso di Codifica di Testi a.a. 2019/2020 del corso di laurea di Informatica Umanistica dell'Università di Pisa.</p>
                        <p>La trascrizione di riferimento è quella di <xsl:value-of select="//tei:titleStmt/tei:respStmt/tei:name"/> nell'edizione <em>Vincenzo Bellini. Carteggi</em> del 2017 nelle pagine <xsl:value-of select="//tei:sourceDesc/tei:bibl/tei:citedRange"/> con identificativo <xsl:value-of select="//tei:sourceDesc/tei:bibl/@ana"/>.</p>
                        <p>L'edizione digitale è stata realizzata nel <xsl:value-of select="//tei:editionStmt/tei:edition/tei:date/@when"/>.</p>
                        <p>Il codice della lettera è <span class="enfasi"><xsl:value-of select="//tei:msIdentifier/tei:idno"/></span>; questa è conservata nel <xsl:value-of select="//tei:msIdentifier/tei:repository"/> e <xsl:value-of select="//tei:msIdentifier/tei:altIdentifier/tei:idno"/>.</p>
                        <p><xsl:value-of select='//tei:adminInfo/tei:note'/></p>
                    </div>
                </div>
                <div class="lettera">
                    <div class="titolo">
                        <h2>La Lettera</h2>
                    </div>
                    <div class="contenuto">
                        <div>
                            <div class="imgdecorativaLettera">
                                <img src="immagini/LL1.11_0001.jpg"/>
                                <img src="immagini/LL1.11_0003.jpg"/>
                            </div>
                            <div class="imgdecorativaLettera">
                                <img src="immagini/LL1.11_0004.jpg"/>
                                <img src="immagini/LL1.11_0002.jpg"/>
                            </div>
                        </div>
                        <p>La lettera dal titolo <span class="enfasi"><em><xsl:value-of select="//tei:msItem/tei:title"/></em></span> è scritta in <xsl:value-of select="//tei:msItem/tei:textLang"/>.</p>
                        <p><xsl:value-of select="//tei:support/tei:stamp"/></p>
                        <p><xsl:for-each select="//tei:support/tei:p"><xsl:value-of select="."/><br/></xsl:for-each></p>
                        <p>La lettera è composta da <xsl:value-of select="//tei:extent/tei:measure"/>&#160;<xsl:value-of select="//tei:extent/tei:measure/@type"/> con lati della lunghezza di <xsl:value-of select="//tei:extent/tei:dimensions/tei:height"/>&#160;<xsl:value-of select="//tei:extent/tei:dimensions/@unit"/> e <xsl:value-of select="//tei:extent/tei:dimensions/tei:width"/>&#160;<xsl:value-of select="//tei:extent/tei:dimensions/@unit"/>.</p>
                        <p><xsl:value-of select="//tei:supportDesc/tei:foliation"/></p>
                        <p><xsl:value-of select='//tei:handDesc/tei:handNote/tei:p'/></p>
                        <p><xsl:value-of select='//tei:handDesc/tei:handNote[@xml:id="h1"]/tei:p'/></p>
                        <p><xsl:value-of select='//tei:sealDesc/tei:seal/tei:p'/></p>
                    </div>
                </div>
                <div class="funzionamento">
                    <div class="titolo">
                        <h2>Come Funziona</h2>
                    </div>
                    <div class="contenuto">
                        <p>Con questo piccolo sito abbiamo voluto rendere accessibili i principali contenuti dell'analisi della lettera.</p>
                        <p>Nella pagina dedicata alla <a href="Lettera.html">lettera</a> abbiamo riportato le scansioni di tutte le parti della lettera marcandone le porzioni interessanti (linee di testo, segni particolari...) in modo che risultino evidenziate al passaggio del mouse; inoltre, clickando sulle righe, è anche possibile essere rimandati alla trascrizione della porzione di testo interessata, così come è possibile fare il percorso inverso. Nella trascrizione, infatti, si trovano due simboli <span class="fintoLink">[*]</span>, <span class="fintoLink">(*)</span> che rispettivamnete rimandano alla pagina e alla linea che ha inizio in quel punto di testo. In questo modo è possibile navigare tra il facsimile dell'originale e la trascrizione.</p> 
                        <p>Nel testo sono inoltre presenti alcune particolarità che vengono di volta in volta evidenziate:</p>
                        <ul>
                            <li><p>Il testo mancante nella lettera, e che è stato possibile ricostruire, nella trascrizione è indicato come <span class="ricostruito">esempio</span>.</p></li>
                            <li><p>Il testo mancante nella lettera, e che non è stato possibile ricostruire, nella trascrizione è indicato come <span class="ricostruito" style="color:blu">(XXX)</span>.</p></li>
                            <li><p>Il testo che presenta una cancellatura è stato reso con carattere barrato (<span class="del">esempio</span>) laddove il testo cancellato risultava leggibile, analogamente con <span class="del">xxx</span> quando non era possibile.</p></li>
                            <li><p>Le correzioni aggiunte nel testo dalla mano dello stesso autore sono state rese come <sup>esempio</sup> per seguire il più possibile la resa effettiva della lettera.</p></li>
                            <li><p>Durante l'elaborazione dell'edizione digitale abbiamo ritenuto opportuno rendere disponibili anche in questa visualizzazione alcune integrazioni a nomi o abbreviazioni che, pur non facendo parte del testo esplicito della lettera, facilitano la comprensione al lettore contemporaneo. Queste aggiunte non compaiono direttamente nel testo della trascrizione ma sono disponibili in fumetti che si aprono al passaggio del mouse (passare il mouse sulla riga che segue). <div class="finestra"><span class="enfasi">Prova qui</span><div class="finestra_aperta"><p>Questa è l'aggiunta.</p></div></div></p></li>
                            <li><p>I nomi di persone sono rappresentati come <div class="finestra"><span class="classPersName">Esempio</span><div class="finestra_aperta"><p>Qualche informazione sulla persona.</p></div></div> e danno accesso a informaizoni ulteriori, più o meno estese, con un fumetto che appare al passaggio del mouse.</p></li>
                            <li><p>I nomi di luoghi sono rappresentati come <div class="finestra"><span class="classPlaceName">Esempio</span><div class="finestra_aperta"><p>Qualche informazione sul luogo.</p></div></div> e danno accesso a informaizoni ulteriori, più o meno estese, con un fumetto che appare al passaggio del mouse.</p></li>
                            <li><p>Le abbreviazioni e le espressioni meno comuni sono trascritte nella forma originale e, al passaggio del mouse, mostrano l'espressione estesa <div class="finestra"><span class="classAbbr">es.</span><div class="finestra_aperta"><p>esempio</p></div></div>.</p></li>
                            <li><p>Abbiamo creato, infine, una piccola appendice di approfondimento in cui sono disponibili alcuni dati sulle opere di <em>Bellini</em> citate nella lettera, dati che sono raggiungibili anche tramite i titoli nella trascrizione, e che si presentano come <span class="fintoLink">Esempio</span>.</p></li>
                        </ul>
                    </div>
                </div>
                <div class="bibliografia">
                    <div class="titolo">
                        <h2>Bibliografia</h2>
                    </div>
                    <div class="contenuto">
                        <p> Le informazioni per lo svolgimento sono state prese dai seguenti testi:</p>
                        <xsl:call-template name="bibl" />
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//tei:back" name="bibl">
        <xsl:for-each select="//tei:div[@type='biblCompleta']/tei:listBibl/tei:bibl">
            <div>
                <xsl:attribute name="class">
                    classeBibl
                </xsl:attribute>
                <xsl:attribute name="id">
                    <xsl:value-of select="tei:bibl/@xml:id"/>
                </xsl:attribute>
                <span class="introLista"><p><span class="titoliLista">Titolo:</span>&#160;<xsl:value-of select="tei:title[@level='m']"/></p></span>
                <ul>
                    <xsl:if test="tei:title[@level='s']">
                        <li><p><span class="titoliLista">Sottotitolo:</span>&#160;<xsl:value-of select="tei:title[@level='s']"/></p></li>
                    </xsl:if>
                    <xsl:if test="tei:bibleScope[@unit='volume']">
                        <li><p><span class="titoliLista">Volume:</span>&#160;<xsl:value-of select="tei:bibleScope[@unit='volume']"/>, <xsl:value-of select="tei:bibleScope[@unit='page']"/></p></li>
                    </xsl:if>
                    <li><p>
                        <xsl:if test="tei:author">
                            <span class="titoliLista">Autore:</span>&#160;<span class="foresur"><xsl:value-of select="tei:author"/></span>
                        </xsl:if>
                        <xsl:if test="tei:editor">
                            <span class="titoliLista">Editor:</span>&#160;<span class="foresur"><xsl:value-of select="tei:editor"/></span>
                        </xsl:if>
                    </p></li>
                    <li><p><span class="titoliLista">Edito da:</span>&#160;<xsl:value-of select="tei:publisher"/></p></li>
                    <li><p><span class="titoliLista">Edito a:</span>&#160;<xsl:value-of select="tei:pubPlace"/></p></li>
                    <li><p><span class="titoliLista">Anno:</span>&#160;<xsl:value-of select="tei:date"/></p></li>
                    <li><p><span class="titoliLista">Range:</span> pp. <xsl:value-of select="tei:citedRange"/></p></li>
                    <xsl:if test="tei:citedRange/@ana">
                        <li><p><span class="titoliLista">Identificativo:</span>&#160;<xsl:value-of select="tei:citedRange/@ana"/></p></li>
                    </xsl:if>
                </ul>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
