Profile: MyDiagnosis
Parent: Condition
Id: my-diagnosis
Description: "Diagnosis of hematopoietic disorder"
* insert MetaSecurityRules
* extension contains NumberOfRemissions named NumberOfRemissions 0..1
* code 1..1 MS
* code from hematopoietic-disorder-vs (required)
* subject 1..1 MS
* subject only Reference(MyPatient)

Instance: DiagnosisExample-AML
InstanceOf: my-diagnosis
Description: "Example of a Diagnois: AML"
Usage: #example
* insert MetaSecurityExample
* extension[NumberOfRemissions].valueInteger = 0
* code = $SCT#91861009	"Acute myeloid leukemia"
* subject = Reference(PatientExample)
* recordedDate = "2021-11-01"

// ----------------------------
// GVHD condition

// Profile: GVHDDiagnosis
// Parent: Condition
// Id: gvhd-diagnosis
// Description: "GVHD Diagnosis"
// * insert MetaSecurityRules
// * extension contains NumberOfRemissions named NumberOfRemissions 0..1
// * code 1..1 MS
// * recordedDate 1..1 MS
// * clinicalStatus 1..1 MS
// * code from gvhd-all-valueset (required)
// * subject 1..1 MS
// * subject only Reference(MyPatient)

// Instance: GVHDExample
// InstanceOf: gvhd-diagnosis
// Description: "Example of a GVHD Diagnois"
// Usage: #example
// * insert MetaSecurityExample
// * extension[NumberOfRemissions].valueInteger = 0
// * clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
// * code = $SCT#402355000	"Acute graft-versus-host disease (disorder)"
// * subject = Reference(PatientExample)
// * recordedDate = "2021-11-01"
