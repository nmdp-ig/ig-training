<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.html');
else 
  Redirect('http://example.org/ig/exampleig/0.1.0/ValueSet-cmv-vs.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
