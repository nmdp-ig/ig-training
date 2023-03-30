
Profile: MyObservation
Parent: Observation
Description: "An example profile of the observation resource which requires a subject that is a MyPatient instance."
* subject 1..1 MS
* subject only Reference(MyPatient)

Instance: ObservationExample1
InstanceOf: MyObservation
Description: "An example of a MyObservation with a subject. This is required since the profile constrains this element."
* status = #final
* code = $LNC#26508-2
* valueString = "This is the answer"
* subject = Reference(PatientExample)

Instance: ObservationExample2
InstanceOf: Observation
Description: "An example of a base Observation without a subject. The base resource doesn't require a subject."
* status = #final
* code = $LNC#26508-2
* valueQuantity[+]
  * value = 5
  * unit = "%"
  * system = "http://unitsofmeasure.org"

Instance: ObservationExample3
InstanceOf: MyObservation
Description: "An example of an instance MyObservation with a subject. This profile requires a subject."
* status = #final
* code = $LNC#1753-3 "Albumin [Presence] in Urine"
* subject = Reference(PatientExample)
* valueCodeableConcept.text = "Present"
* valueCodeableConcept.coding[+] = $LNC#LA9633-4 "Present"
* valueCodeableConcept.coding[+] = $SCT#52101004 "Present"

