xquery version "3.1";
(: Esercizio 1 Workshop FeDHLab 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "html";
declare option output:encoding "UTF-8";
declare option output:media-type "text/html";


let $doc := doc('../xml/switchboard.clarin.eu-step9.xml')
let $words := $doc//w[lower-case(@lemma)="musa"]
for $w in $words
return <p><b>{string($w/@lemma)} </b><i style="padding-left:1em"> {string($w)}</i></p>
