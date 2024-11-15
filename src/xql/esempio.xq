xquery version "3.1";
(: Esempio Workshop FeDHLab 2024 :)

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "text";
declare option output:encoding "UTF-8";
declare option output:media-type "text/plain";

let $c := 'num DIVs: ' || count(//div)
return $c

