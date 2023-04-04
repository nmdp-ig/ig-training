// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * given[1] = "Bubba"
  * family = "Pond"


// USCore require each Patient must have 
//   - a patient identifier (e.g. MRN)
//   - a patient name
//   - a gender
// We are adding an addition constraint here, a birth date

// Profile: MyUSCorePatient
// Parent: us-core-patient
// Description: "An example profile on the US Core Patient profile."
// * birthDate 1..1 MS

// Instance: MyUSCorePatientExample
// InstanceOf: MyUSCorePatient
// Description: "An example of a patient with a license to krill."
// * name
//   * given[0] = "James"
//   * given[1] = "Bubba"
//   * family = "Pond"
// * identifier
//   * system = "http://myhospital.org"
//   * value = #12345
// * gender = #male
// * birthDate = "1987-02-20"
