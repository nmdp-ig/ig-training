<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.html');
else 
  Redirect('http://example.org/ig/exampleig/0.2.0/Observation-CMVObservationPresenceExample.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
