// // documentation on FHIRPath here: http://hl7.org/fhirpath/N1/

Invariant:  sec-rc
Severity:   #error
Description: "Use transplant center identifier for security tag"
Expression: "matches('^rc_[0-9]{5}$')"