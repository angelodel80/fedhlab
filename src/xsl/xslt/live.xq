xquery version "3.1";

let $xml := doc("./xml/IRT030.xml")
let $xslt := doc("./styles/live-xslt-16.xsl")
return transform:transform($xml, $xslt, ())
