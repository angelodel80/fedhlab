xquery version "3.1";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "xhtml";
declare option output:media-type "text/html";
declare option output:omit-xml-declaration "no";
declare option output:indent "yes";
declare option output:doctype-public "-//W3C//DTD&#160;XHTML&#160;1.0&#160;Transitional//EN";
declare option output:doctype-system "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd";


let $xml := doc("./xml/IRT256a.xml")
let $xslt := doc("./Stylesheets-9.4/start-edition.xsl")
return transform:transform($xml, $xslt, ())