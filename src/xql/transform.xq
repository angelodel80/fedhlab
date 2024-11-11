xquery version "3.1";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "xml";
declare option output:encoding "UTF-8";
declare option output:media-type "text/xml";

let $doc := doc('/db/apps/clarin-siena-2024/xml/DeVulgariEloquentia.xml')
let $xsl := doc('/db/apps/clarin-siena-2024/xslt/add-license.xsl')

let $params := <parameters><param name="user" value="DEL GROSSO" /></parameters>

let $result := transform:transform($doc,$xsl,$params)

return $result