
Profile:     ExamplePatientProfile1
Id:          example-patient-profile1
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"

// Require at least one value inside the `name` element
* name 1..*

// Mark elements as MustSupport
* name and name.given and name.family MS

* name ^short = "Official name (i.e., legal name) of patient"
* name ^definition = "Official name (i.e., legal name) of the patient, corresponding to `official` in [this value set](https://www.hl7.org/fhir/valueset-name-use.html)."


* birthDate ^comment = "If exact date of birth is partially or completely unknown, Implementers SHALL populate this element with the date of birth information listed on the patient's government-issued identification."

// Do not allow `gender` to be included.
* gender 0..0

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// Restrict `something[x]` to a specific type -- in this case only allowing dateTime to be used
* deceased[x] only dateTime