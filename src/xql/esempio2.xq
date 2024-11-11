xquery version "3.1";
(: Esercizio 2 Workshop CLARIN - SIENA 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "xml";
declare option output:encoding "UTF-8";
declare option output:media-type "text/xml";

let $doc := doc('./xml/switchboard.clarin.eu-step9.xml')
let $lemmata := distinct-values ($doc//w/@lemma)

return
    <lemmata n="{count($lemmata)}">{
            for $l in $lemmata
            return 
             <lemma value="{$l}">{
                for $form in distinct-values($doc//w[@lemma=$l])
                return 
                    <form value="{data($form)}" />
                        
            }</lemma>
    }
    </lemmata>

