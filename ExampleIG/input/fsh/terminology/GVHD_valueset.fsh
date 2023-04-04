// ValueSet: GVHDICD10VS
// Id: gvhd-icd10-codes
// Title: "GVHD ICD-10 Codes"
// Description: "GVHD ICD-10 Codes"
// * ^experimental = true
// * include codes from system $ICD10 where concept is-a #D89.81 "Graft-versus-host disease"

// //  ------------------

// ValueSet: GVHDSCTVS
// Id: gvhd-sct-codes
// Title: "GVHD SNOMED CT Codes"
// Description: "GVHD SNOMED CT Codes"
// * ^experimental = true
// * include codes from system $SCT where concept is-a #234646005 "Graft-versus-host disease (disorder)"

// //  ------------------

// ValueSet:    GVHDTypeValueSet
// Title:       "GVHD Type Value Set"
// Id:          gvhd-all-valueset
// Description: "Permissible values for types of Graft vs Host Disease, from SNOMED CT and ICD-10"
// * ^experimental = true
// * include codes from valueset GVHDSCTVS
// * include codes from valueset GVHDICD10VS
// * include codes from system cibmtr-cadsr-vm

// //  ------------------

// ValueSet:    HematopoieticDisorderVS
// Id:          hematopoietic-disorder-vs
// Title:       "Disorders of hematopoietic structure"
// Description: "SNOMED: Disorders of hematopoietic structure"
// * ^experimental = true
// * include codes from system $SCT where concept is-a #414027002 "Disorder of hematopoietic structure"
