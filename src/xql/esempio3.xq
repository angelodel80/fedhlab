xquery version "3.1";
(: Esercizio 3 Workshop FeDHLab 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "html";
declare option output:encoding "UTF-8";
declare option output:media-type "text/html";

let $doc := doc('../xml/switchboard.clarin.eu-step9.xml')
let $words := $doc//w
for $w in $words
group by $l := $w/@lemma
order by count($w) descending
return <ul>{
    for $p in distinct-values($w)
    return <li><b>{$p}</b><i style="padding-left:1em">{string($w[1]/@lemma)}</i> ({count($w)})</li>
}</ul>