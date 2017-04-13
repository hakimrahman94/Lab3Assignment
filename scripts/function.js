$(document).ready(function() { 
	Transform();  
});

function Transform() {
	var xml = getXMLData("scripts/createXML.php");

	var xsl = getXMLData("scripts/caplist.xsl");  

	xsltProcessor = new XSLTProcessor();
	xsltProcessor.importStylesheet(xsl);
	var result = xsltProcessor.transformToFragment(xml, document);

	$("#cap").append(result);	
}

function getXMLData(url) {
	return $.ajax({type:"GET",
				   url:url,
		           async:false}).responseXML;
}