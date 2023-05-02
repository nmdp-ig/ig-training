<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.html');
else 
  Redirect('http://example.org/ig/exampleig/0.2.0/StructureDefinition-gvhd-diagnosis.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.