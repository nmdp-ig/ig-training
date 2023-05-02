<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.html');
else 
  Redirect('http://example.org/ig/exampleig/0.2.0/ValueSet-gvhd-sct-codes.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
