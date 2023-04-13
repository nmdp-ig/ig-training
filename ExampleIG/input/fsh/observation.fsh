
Profile: MyObservation
Id: my-observation
Parent: Observation
Description: "An example profile of the observation resource which requires a subject that is a MyPatient instance."
* insert MetaSecurityRules
* subject 1..1 MS
* subject only Reference(MyPatient)

Instance: ObservationExample1
InstanceOf: MyObservation
Description: "An example of a MyObservation with a subject. This is required since the profile constrains this element."
Usage: #example
* insert MetaSecurityExample
* status = #final
* code = $LNC#26508-2
* valueString = "This is the answer"
* subject = Reference(PatientExample)

Instance: ObservationExample2
InstanceOf: Observation
Description: "An example of a base Observation without a subject. The base resource doesn't require a subject."
Usage: #example
* status = #final
* code = $LNC#26508-2
* valueQuantity[+]
  * value = 5
  * unit = "%"
  * system = "http://unitsofmeasure.org"

Instance: ObservationExample3
InstanceOf: MyObservation
Description: "An example of an instance MyObservation with a subject. This profile requires a subject."
Usage: #example
* insert MetaSecurityExample
* status = #final
* code = $LNC#1753-3 "Albumin [Presence] in Urine"
* subject = Reference(PatientExample)
* valueCodeableConcept.text = "Present"
* valueCodeableConcept.coding[+] = $LNC#LA9633-4 "Present"
* valueCodeableConcept.coding[+] = $SCT#52101004 "Present"

//----------------------

Profile: CMVObservation
Id: cmv-observation
Parent: MyObservation
Description: "An example profile of the observation resource which requires a subject that is a MyPatient instance."
* code from CMVValueSet

Instance: CMVObservationExample
InstanceOf: CMVObservation
Description: "Example of CMV Observations"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code = $LNC#16718-9	"Cytomegalovirus Ag [Presence] in Blood"
// * code = $LNC#1753-3 "Albumin [Presence] in Urine"
* valueString = "This is the answer"
* subject = Reference(PatientExample)

Profile: CMVPresenceObservation
Parent: MyObservation
Id: cmv-presence-observation
Description: "An example profile of the observation resource which requires a subject that is a MyPatient instance."
* code from CMVPresenceValueSet
* value[x] only CodeableConcept
* valueCodeableConcept from PresenceValueSet (required)

Instance: CMVObservationPresenceExample
InstanceOf: CMVPresenceObservation
Description: "Example of CMV Observations"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code = $LNC#16718-9	"Cytomegalovirus Ag [Presence] in Blood"
* valueCodeableConcept = $SCT#52101004 "Present"
* subject = Reference(PatientExample)
