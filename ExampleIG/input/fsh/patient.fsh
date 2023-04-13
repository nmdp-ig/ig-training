// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Id: my-patient
Parent: Patient
Description: "An example profile of the Patient resource."
* insert MetaSecurityRules
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
Usage: #example
* insert MetaSecurityExample
* name
  * given[0] = "James"
  * given[1] = "Bubba"
  * family = "Pond"


// USCore require each Patient must have 
//   - a patient identifier (e.g. MRN)
//   - a patient name
//   - a gender
// We are adding an addition constraint here, a birth date

Profile: MyUSCorePatient
Parent: us-core-patient
Description: "An example profile on the US Core Patient profile."
* insert MetaSecurityRules
* birthDate 1..1 MS

Instance: MyUSCorePatientExample
InstanceOf: MyUSCorePatient
Description: "An example of a patient with a license to krill."
Usage: #example
* insert MetaSecurityExample
* name
  * given[+] = "James"
  * given[+] = "Bubba"
  * family = "Pond"
// * name.given[0] = "James"
// * name.given[1] = "Bubba"
// * name.family = "Pond"
* identifier
  * system = "http://myhospital.org"
  * value = #12345
* gender = #male
* birthDate = "1987-02-20"

// Patient Profile using slicing
Profile: MyCIBMTRPatient
Parent: MyUSCorePatient
Description: "An example profile on the US Core Patient profile."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slicing on identifier.system"
* identifier contains 
    CRID 0..1 MS and
    GRID 0..1 MS and
    NMDPRecipient 0..1 MS and
    SSN 0..1 MS
* identifier[CRID].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[GRID].system = "http://www.isbt128.org/uri/GRID"
* identifier[GRID].type.coding.system = "https://www.hl7.org/fhir/v2/0203/index.html"
* identifier[GRID].type.coding.code = #DR
* identifier[NMDPRecipient].system = "http://terminology.nmdp.org/identifier/recipient"
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"

Instance: MyCIBMTRPatientExample
InstanceOf: MyCIBMTRPatient
Description: "An example of a patient with a license to krill."
Usage: #example
* insert MetaSecurityExample
* name
  * given[+] = "James"
  * given[+] = "Bubba"
  * family = "Pond"
* gender = #male
* birthDate = "1987-02-20"
* identifier[+].system = "http://example.org/mrn"
* identifier[=].value = "abc"
// * identifier[+].system = "http://terminology.cibmtr.org/identifier/CRID"
// * identifier[=].value = "123456"// 
* identifier[CRID].value = "123456"