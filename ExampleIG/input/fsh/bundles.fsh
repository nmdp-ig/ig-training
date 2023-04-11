// Profile: MyBundle
// Id: my-bundle
// Parent: Bundle
// Title: "My Bundle"
// Description: "Collection Bundle"
// // * insert MetaSecurityRules
// * insert BundleEntrySlicingRules
// * entry and entry.resource MS
// * entry contains
//     // These resources are required per Conformance > Supported Profiles.
//     mypatient 1..1 MS and
//     myobservation 1..* MS and
//     mydiagnosis 0..* MS
// * entry[mypatient]
//   * resource only my-patient
//   * ^short = "My Patient"
//   * ^definition = "My Patient"
// * entry[mydiagnosis]
//   * resource only my-diagnosis
//   * ^short = "Diagnosis Patient"
//   * ^definition = "The Diagnosis for the patient."
// * entry[myobservation]
//   * resource only my-observation
//   * ^short = "Observation for patient "
//   * ^definition = "Observation for patient."


// Instance: BundleCollectionExample
// InstanceOf: Bundle
// Description: "Bundle Example"
// // * meta.security[TransplantCenter].code = #tc_123
// * type = #collection
// * timestamp = 2020-11-24T23:50:50-05:00
// * insert uuidEntries(864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
// * insert uuidEntries(281f5214-a344-4070-a231-61a2686c4fc1)
// * insert uuidEntries(1bd28a4b-8743-4bc6-956e-52302218c803)

// Instance: BundleTransactionExample
// InstanceOf: Bundle
// Description: "Bundle Example"
// // * meta.security[TransplantCenter].code = #tc_123
// * type = #transaction 
// * timestamp = 2020-11-24T23:50:50-05:00
// * insert uuidEntries(864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
// * insert postRequest("Patient")
// * insert uuidEntries(281f5214-a344-4070-a231-61a2686c4fc1)
// * insert postRequest("Condition")
// * insert uuidEntries(1bd28a4b-8743-4bc6-956e-52302218c803)
// * insert postRequest("Observation")


// // -------------------------
// // example instances for bundle

// Instance: 864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa
// InstanceOf: my-patient
// Description: "An example of a patient with a license to krill."
// // * insert MetaSecurityExample
// * name
//   * given[0] = "James"
//   * given[1] = "Bubba"
//   * family = "Pond"

// Instance: 281f5214-a344-4070-a231-61a2686c4fc1
// InstanceOf: my-diagnosis
// Description: "Example of a Diagnois: AML"
// // * insert MetaSecurityExample
// * extension[NumberOfRemissions].valueInteger = 0
// // * meta.security[TransplantCenter].code = #tc_123
// * code = $SCT#91861009	"Acute myeloid leukemia"
// * subject = Reference(urn:uuid:864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
// * recordedDate = "2021-11-01"

// Instance: 1bd28a4b-8743-4bc6-956e-52302218c803
// InstanceOf: my-observation
// Description: "Example of CMV Observations"
// // * insert MetaSecurityExample
// * status = #final
// * code = $LNC#16718-9	"Cytomegalovirus Ag [Presence] in Blood"
// * valueCodeableConcept = $SCT#52101004 "Present"
// * subject = Reference(urn:uuid:864ac823-bdac-4b1b-9ce5-f6fbeebdf0fa)
