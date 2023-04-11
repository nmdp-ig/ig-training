// Profile: MyDiagnosis
// Parent: Condition
// Id: my-diagnosis
// Description: "Diagnosis of hematopoietic disorder"
// // * insert MetaSecurityRules
// // * extension contains NumberOfRemissions named NumberOfRemissions 0..1
// * code 1..1 MS
// * code from hematopoietic-disorder-vs (required)
// * subject 1..1 MS
// * subject only Reference(MyPatient)

// Instance: DiagnosisExample-AML
// InstanceOf: my-diagnosis
// Description: "Example of a Diagnois: AML"
// // * insert MetaSecurityExample
// // * extension[NumberOfRemissions].valueInteger = 0
// // * meta.security[TransplantCenter].code = #tc_123
// * code = $SCT#91861009	"Acute myeloid leukemia"
// * subject = Reference(PatientExample)
// * recordedDate = "2021-11-01"
