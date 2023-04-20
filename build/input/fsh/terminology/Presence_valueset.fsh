ValueSet:       PresenceSCTValueSet
Id:             presence-sct-valueset
Title:          "Presence Answer List - Snomed CT"
Description:    "Permissible values for presence - Snomed CT"
* ^experimental = true
* $SCT#52101004 "Present"
* $SCT#2667000 "Absent"

ValueSet:       PresenceLNCValueSet
Id:             presence-lnc-valueset
Title:          "Presence Answer List - LOINC"
Description:    "Permissible values for presence - LOINC"
* ^experimental = true
* $LNC#LA9633-4 "Present"
* $LNC#LA9634-2 "Absent"

ValueSet:       PresenceValueSet
Id:             presence-valueset
Title:          "Presence Answer List - Snomed and LOINC"
Description:    "Permissible values for presence, from Snomed CT and LOINC"
* ^experimental = true
* include codes from valueset PresenceSCTValueSet
* include codes from valueset PresenceLNCValueSet
