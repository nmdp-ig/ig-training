Profile: MyBundle
Id: my-bundle
Parent: Bundle
Title: "My Bundle"
Description: "Collection Bundle"
* insert MetaSecurityRules
* insert BundleEntrySlicingRules
* entry and entry.resource MS
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    mypatient 1..1 MS and
    myobservation 1..* MS and
    mydiagnosis 0..* MS
* entry[mypatient]
  * resource only my-patient
  * ^short = "My Patient"
  * ^definition = "My Patient"
* entry[myobservation]
  * resource only my-observation
  * ^short = "Observation for patient"
  * ^definition = "Observation for patient."
* entry[mydiagnosis]
  * resource only my-diagnosis
  * ^short = "Diagnosis Patient"
  * ^definition = "The Diagnosis for the patient."

Instance: BundleCollectionExample
InstanceOf: my-bundle
Description: "Bundle Example"
Usage: #example
* insert MetaSecurityExample
* type = #collection
* timestamp = 2020-11-24T23:50:50-05:00
* entry[+].fullUrl = "urn:uuid:864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa"
* entry[=].resource = 864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa
* entry[+].fullUrl = "urn:uuid:281f5214-a344-4070-a231-61a2686c4fc1"
* entry[=].resource = 281f5214-a344-4070-a231-61a2686c4fc1
* entry[+].fullUrl = "urn:uuid:1bd28a4b-8743-4bc6-956e-52302218c803"
* entry[=].resource = 1bd28a4b-8743-4bc6-956e-52302218c803


// Instance: BundleCollectionExample
// InstanceOf: my-bundle
// Description: "Bundle Example"
// Usage: #example
// * insert MetaSecurityExample
// * type = #collection
// * timestamp = 2020-11-24T23:50:50-05:00
// * insert uuidEntries(864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
// * insert uuidEntries(281f5214-a344-4070-a231-61a2686c4fc1)
// * insert uuidEntries(1bd28a4b-8743-4bc6-956e-52302218c803)


Instance: BundleTransactionExample
InstanceOf: my-bundle
Description: "Bundle Example"
Usage: #example
* insert MetaSecurityExample
* type = #transaction
* timestamp = 2020-11-24T23:50:50-05:00
* insert uuidEntries(864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
* insert postRequest("Patient")
* insert uuidEntries(281f5214-a344-4070-a231-61a2686c4fc1)
* insert postRequest("Condition")
* insert uuidEntries(1bd28a4b-8743-4bc6-956e-52302218c803)
* insert postRequest("Observation")


// -------------------------
// example instances for bundle

Instance: 864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa
InstanceOf: MyCIBMTRPatient
Description: "An example of a patient with a license to krill."
Usage:  #inline
* insert MetaSecurityExample
* name
  * given[+] = "James"
  * given[+] = "Bubba"
  * family = "Pond"
* gender = #male
* birthDate = "1987-02-20"
* identifier[+].system = "http://example.org/mrn"
* identifier[=].value = "abc"
* identifier[CRID].value = "123456"

Instance: 281f5214-a344-4070-a231-61a2686c4fc1
InstanceOf: my-diagnosis
Description: "Example of a Diagnois: AML"
Usage:  #inline
* insert MetaSecurityExample
* extension[NumberOfRemissions].valueInteger = 0
* code = $SCT#91861009	"Acute myeloid leukemia"
* subject = Reference(urn:uuid:864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)

Instance: 1bd28a4b-8743-4bc6-956e-52302218c803
InstanceOf: CMVPresenceObservation
Description: "Example of CMV Observations"
Usage:  #inline
* insert MetaSecurityExample
* status = #final
* code = $LNC#16718-9	"Cytomegalovirus Ag [Presence] in Blood"
* valueCodeableConcept = $SCT#52101004 "Present"
* subject = Reference(urn:uuid:864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
