<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.html');
else 
  Redirect('http://example.org/ig/exampleig/0.1.0/CodeSystem-cibmtr-cadsr-vm-cs.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
