xquery version "3.1";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method   "xml";
declare option output:encoding "UTF-8";
declare option output:media-type "text/xml";

let $result := transform(map {"stylesheet-node":doc('../xsl/add-license.xsl'),"source-node":doc('../xml/DeVulgariEloquentia.xml'), "stylesheet-params": map {
	QName('', 'user'): "ANGELO"
}})

return $result?output