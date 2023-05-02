<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.html');
else 
  Redirect('http://example.org/ig/exampleig/0.2.0/Condition-DiagnosisExample-AML.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
