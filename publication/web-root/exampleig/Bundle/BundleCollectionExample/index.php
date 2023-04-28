<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.html');
else 
  Redirect('http://example.org/ig/exampleig/0.1.0/Bundle-BundleCollectionExample.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
