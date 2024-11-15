xquery version "3.1";
(: Esercizio 5 Workshop FeDHLab 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "html";
declare option output:encoding "UTF-8";
declare option output:media-type "text/html";

let $doc := doc('../xml/switchboard.clarin.eu-step9.xml')
let $words := $doc//w[ft:query(@lemma,"miser~0.5")]
for $w at $idx in $words
return <li style="list-style-type:none">
        <span style="font-weight:bold">{$idx}</span>
        <span style="padding-left:1em">{string($w/@lemma)}</span>
        <span style="font-style:italic; padding-left:1em">({string($w)})</span>
       </li>