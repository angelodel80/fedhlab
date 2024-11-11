xquery version "3.1";
(: Esercizio 4 Workshop CLARIN - SIENA 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "text";
declare option output:encoding "UTF-8";
declare option output:media-type "text/plain";

let $doc := doc('./xml/switchboard.clarin.eu-step9.xml')
for $word in $doc//w
let $lemma := $word/@lemma
where lower-case($lemma) = "miser"
let $eclo := data($word/ancestor::div1/descendant::head/descendant::title)
let $verso := data($word/ancestor::l/@n)
return concat(string($word), " in ", normalize-space($eclo), " ecloga ", $verso, " verso", "&#xa;")