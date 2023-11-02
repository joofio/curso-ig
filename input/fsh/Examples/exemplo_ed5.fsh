Instance: cfsb1698745319555
InstanceOf: Condition
Description: "teste"
Usage: #example
 
* category = http://example.org#1
* category.text = "1"

* category[1] = http://example.org#2
* category[1].text = "2"

* bodySite = http://example.org#122
* bodySite.text = "122"

 // Reference to Patient: Paciente
* subject = Reference(cfsb1698745450589)

* identifier.system = "112"
* identifier.value = "1222"
* identifier.use = #usual

* clinicalStatus = http://example.com#122
* clinicalStatus.text = "222"

* onsetDateTime = "2015-02-07T13:28:17Z"

 // Reference to Practitioner: TESTE
* recorder = Reference(cfsb1698745778988)

// @Name: Instance Example
// @Description: An example of an instance of a Patient resource

Instance: PatientExample3
InstanceOf: Patient
Description: "Patient"
* name.family = "Silva"
* name.given[0] = "Mario"
* name.given[1] = "BSilva."
// The first element [0] can also be represented as [+] if it is not preceded by any hard index
* contact.telecom[+].system = #work
* contact.telecom[=].value = "222-632-4568"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #email
* contact.telecom[=].value = "mario.silva@example.com"

* gender = #male

* birthDate = "1999-05-02"

* address.line = "bla bla bla"
* address.city = "CITY"
* address.postalCode = "12345"
* address.country = "AO"

* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: cfsb1698744957183
InstanceOf: Practitioner
Description: "teste"
Usage: #example
 
* identifier.system = "1"
* identifier.value = "001"
* identifier.use = #usual

* identifier[1].system = "2"
* identifier[1].value = "002"
* identifier[1].use = #usual

* active = true

* name.text = "Miguel"
* name.given = "Miguel"
* name.family = "Silva"
* name.use = #usual

* telecom.system = #phone
* telecom.value = "2555222255522"
* telecom.use = #home

* address.text = "Rua bla bla bla n12"
* address.use = #home
* address.city = "Luanda"
* address.country = "Angola"

* gender = #male

* birthDate = "2009-02-02"


* qualification.code = http://example.org#11

* qualification.code.text = "teste"

Instance: cfsb1698744980100
InstanceOf: Practitioner
Description: "Luis Santos MD"
Usage: #example
 
* identifier.system = "Coordinator"
* identifier.value = "teste"
* identifier.use = #official

* identifier[1].system = "oftalmologist"
* identifier[1].value = "teste"
* identifier[1].use = #secondary


* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#PHS

* qualification.code.text = "Doctor of Science"

* active = true

* name.text = "Test"
* name.given = "Luis"
* name.family = "Santos"
* name.use = #official

* gender = #male

* birthDate = "2009-02-02"

* telecom.system = #email
* telecom.value = "blablabla2@blabla.bla"
* telecom.use = #work



Instance: PractitionerExample
InstanceOf: Practitioner
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "Medico"
* identifier[1].system = "http://example.org"
* identifier[1].value = "Especialista"
* active = true
* name.given = "Rui"
* name.family = "Gonçalves"
* address.city = "Porto"
* gender = #male
* birthDate = "1978-10-17"
* telecom.system = #phone
* telecom.value = "9876543210"
* qualification.code = http://example.org#123
* qualification.code.text = "exemploQualification"


Instance: ConditionExample
InstanceOf: Condition
Usage: #example
 
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[1] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* bodySite = http://snomed.info/sct#386108004 "Heart tissue"
* subject = Reference(Patient/PatientExample)


Instance: ExamplePracticioner2
InstanceOf: Practitioner
Description: "Example_Practicioner"
Usage: #example

* identifier[+].system = "http://www.example.com/identifier-coding"
* identifier[=].value = "id4435"
* identifier[=].use = #official


* identifier[+].system = "http://www.example.com/identifier-coding"
* identifier[=].value = "id4401"
* identifier[=].use = #old

* qualification.identifier.system = "http://www.example.com/qualification-coding"

* qualification.identifier.value = "id123"

* qualification.identifier.use = #official

* qualification.code = #123

* qualification.code.text = "example123"

* name.given[+] = "José"
* name.given[+] = "Miguel"

* name.family = "Alves Fonseca"
* name.use = #official

* gender = #male

* telecom.system = #pager
* telecom.value = "222333444"
* telecom.use = #old

* birthDate = "2009-02-02"

* active = true


Instance: cfsb1698744692865
InstanceOf: Practitioner
Description: "PractitonerJM"

* identifier.system = "http://exampleJM.org"
* identifier.value = "João"
* identifier.use = #usual

* identifier[1].system = "http://exampleJM.org"
* identifier[1].value = "João Moreira"
* identifier[1].use = #official

* telecom.system = #phone
* telecom.value = "930000000"
* telecom.use = #work

* active = true

* qualification.identifier.system = "http://exampleJM.org"
* qualification.identifier.value = "1"
* qualification.identifier.use = #usual
* qualification.code = http://exampleJMrg#123
* qualification.code.text = "CodigoTesteJM"

* birthDate = "2000-01-01"

* gender = #male

* name.given = "João"
* name.family = "Moreira"
* name.use = #official

Instance: cfsb1698745463394
InstanceOf: Condition
Description: "ConditionJM"
 
* identifier.system = "http://exampleJM.org"
* identifier.value = "123456789"
* identifier.use = #official

* bodySite = http://exampleJM.org#1
* bodySite.text = "BodySiteCodeExample"

* abatementDateTime = "2023-10-31"

* subject = Reference(cfsb1698745806641)

* category = http://exampleJM.org#1
* category.text = "Example1"
* category[1] = http://exampleJM.org#2
* category[1].text = "Example2"

* recorder = Reference(cfsb1698744692865)

* note.authorString = "João Moreira"
* note.time = "2023-10-31"
* note.text = "Teste 11111"


Instance: cfsb16987459614553
InstanceOf: Condition
Description: "Shoulderpain"
Usage: #example
 

* category = #teste#123

* category[1] = #teste2#321

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#relapse

 // Reference to Group: patientsmsk
* subject = Reference(cfsb1698746585639)

* bodySite = http://Base_of_first_metatarsal_bone#89221001

* recordedDate = "2015-02-07T13:28:17Z"

* evidence.code = http://snomed.info/sct#198007
// Reference to Condition: Condition1
* evidence.detail = Reference(cfsb1698745961455)



Instance: cfsb16987459614552
InstanceOf: Condition
Description: "Shoulderpain"
Usage: #example
 

* category = #teste#123

* category[1] = #teste2#321

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#relapse

 // Reference to Group: patientsmsk
* subject = Reference(cfsb1698746585639)

* recordedDate = "2015-02-07T13:28:17Z"


* bodySite = http://hl7.org/fhir/CodeSystem/body-site#123

* evidence.code = http://snomed.info/sct#198007
// Reference to Condition: Condition1
* evidence.detail = Reference(cfsb1698745961455)


Instance: PractitionerEx1
InstanceOf: Practitioner
Description: "Example Practitioner"
 
* identifier.system = "1"
* identifier.value = "1"
* identifier.use = #usual

* identifier[1].system = "2"
* identifier[1].value = "2"
* identifier[1].use = #official

* active = true

* name.given = "José"
* name.family = "Silva"

* telecom[0].system = #phone
* telecom[0].value = "955555"
* telecom[0].use = #home

* telecom[1].system = #email
* telecom[1].value = "teste@gmail.com"
* telecom[1].use = #work

* address.text = "Rua Teste"
* address.use = #home
* address.type = #physical
* address.city = "Horta"
* address.country = "Portugal"

* gender = #male

* birthDate = "1980-01-01"

* qualification.code = http://example.org#1
* qualification.code.text = "Exemplo 1"




Instance: ConditionEx1
InstanceOf: Condition
Description: "Condition Exercicio 2"

 
* identifier.system = "001"
* identifier.value = "001"
* identifier.use = #usual

* code = http://example.org#7
* code.text = "7"


* clinicalStatus = http://example.org#1
* clinicalStatus.text = "01"

* verificationStatus = http://example.org#2
* verificationStatus.text = "2"

* category = http://example.org#3
* category.text = "3"


* category[1] = http://example.org#4
* category[1].text = "4"


* bodySite = http://example.org#5
* bodySite.text = "5"


 // Reference to Patient: PatientTest
* subject = Reference(cfsb1698746373341)

* recordedDate = "2023-10-31"


* note.authorString = "VS"
* note.text = "Teste1"


//Criar extensão
Extension: Teste
Description: "Teste Aula"

* value[x] only boolean

//Criar Perfil
// @Name: Profile
// @Description: Example of a profile of the Patient resource. This example includes a few of the most commonly used constraints and documentation features of FHIR profiles.

Profile:     ExamplePatientProfile
Id:          example-patient-profile
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"

* name 1..*

* name and name.given and name.family MS


* gender 0..1

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// Restrict `something[x]` to a specific type -- in this case only allowing dateTime to be used
* deceased[x] only dateTime

//Paciente
Instance: cfsb1697532193938
InstanceOf: ExamplePatientProfile
Description: "Paciente"
Usage: #example
 
* name.given = "Maria"
* name.family = "Ferreira"
* name.use = #official

* identifier.system = "teste"


* maritalStatus.text = "single"

* gender = #female


Extension: TesteNvieira
Description: "some extension"
* ^url = "http://example.org/extension/nvieira"
* value[x] only boolean or integer

Profile:     NvieiraPatientProfile
Id:          nvieira-patient-profile
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile for patient with some condition"
* identifier 1..*
* name 1..*
* deceased[x] only boolean
* gender 0..0

Instance: PatientNvieira
InstanceOf: NvieiraPatientProfile 
Description: "Example of patient based on profile"

* identifier.system = "http://someurl.org"
* identifier.value = "some_value"
* identifier.use = #usual

* name.text = "nuno"
* name.given = "manuel"
* name.family = "vieira"
* name.use = #usual

* deceasedBoolean = true

* extension.url = "http://example.org/extension/nvieira"
* extension.valueBoolean = false
* extension.valueInteger = 1


Instance: ConditionNVIEIRA
InstanceOf: Condition
Description: "testCondition"

* category[0] = http://somesystem.org#123
* category[0].text = "someCategory"

* category[1] = http://someurlsystem.org#456
* category[1].text = "another category"

* bodySite = http://bodysiteurl.org#123
* bodySite.text = "some body site text"

* subject = Reference(Patient/SomePatient)

* identifier.system = "http://somesystem.org"
* identifier.value = "some value"
* identifier.use = #official

* encounter = Reference(Encounter/SomeEncounter)

* severity = http://example.org#1234
* severity.text = "some severity"


Instance: PractitionerNvieira
InstanceOf: Practitioner 
Description: "Example of Practitioner"

* identifier[0].system = "http://example.org"
* identifier[0].value = "12345"
* identifier[0].use = #official

* identifier[1].system = "http://algumsite.org"
* identifier[1].value = "54321"
* identifier[1].use = #secondary

* name.text = "some nvieira name"
* name.given = "some given"
* name.family = "some family name"
* name.use = #usual

* address.text = "some address text"
* address.use = #home
* address.city = "some city"
* address.country = "some country"


* birthDate = "1989-01-01"

* gender = #male

* active = true

* qualification.code = http://example.org#1234
* qualification.code.text = "some qualification"

Instance: ExamplePracticioner
InstanceOf: Practitioner
Description: "Example_Practicioner"
Usage: #example

* identifier[+].system = "http://www.example.com/identifier-coding"
* identifier[=].value = "id4435"
* identifier[=].use = #official


* identifier[+].system = "http://www.example.com/identifier-coding"
* identifier[=].value = "id4401"
* identifier[=].use = #old

* qualification.identifier.system = "http://www.example.com/qualification-coding"

* qualification.identifier.value = "id123"

* qualification.identifier.use = #official

* qualification.code = #123

* qualification.code.text = "example123"

* name.given[+] = "José"
* name.given[+] = "Miguel"

* name.family = "Alves Fonseca"
* name.use = #official

* gender = #male

* telecom.system = #pager
* telecom.value = "222333444"
* telecom.use = #old

* birthDate = "2009-02-02"

* active = true


Instance: exampleCondition
InstanceOf: Condition
Description: "ConditionExample"
Usage: #example
 
* severity = http://snomed.info/sct#24484000
* severity.text = "Severe"

 // Reference to Patient: PatientExample
* subject = Reference(cfsb1698746247923)


* category[+] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* category[+] = http://example.com#prob "Problema"


* bodySite = http://snomed.info/sct#251007
* bodySite.text = "Pectoral region"

* recordedDate = "2015-02-07T13:28:17Z"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

* code = http://snomed.info/sct#134006
* code.text = "Decreased hair growth"

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

// @Name: Simple Extensions
// @Description: Examples of extensions with values (no sub-extensions)


Extension: TherapySessionsCompleted
Id:        therapy-sessions-completed
Title:     "Therapy Sessions Completed"
Description: "The number of sessions of some therapy."
// Limit the context to Procedures -- Also see Rule Sets for a context-setting rule set
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only unsignedInt  // 0 or more

// @Name: Profile
// @Description: Example of a profile of the Patient resource. This example includes a few of the most commonly used constraints and documentation features of FHIR profiles.

Profile:     ExamplePatientProfile2
Id:          example-patient-profile2
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"


// Require at least one value inside the `name` element
* name 1..*

* active 1..1

// require gender
* gender 1..1

* telecom 1..1

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// Restrict `something[x]` to a specific type -- in this case only allowing dateTime to be used
* deceased[x] only dateTime

* extension contains TherapySessionsCompleted named sessoes 0..1

//Criar extensão
Extension: Teste2
Description: "Teste Aula"
* ^url = "http://example.org/extensions/teste"


* value[x] only boolean

//Criar Perfil
Profile:     ExamplePatientProfile3
Id:          example-patient-profile3
Parent:      Patient
Title:       "Example Patient Profile"
Description: "Example of a profile of Patient"

* name 1..*

* name and name.given and name.family MS


* gender 0..1

* deceased[x] only boolean

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

//Exemplo Paciente
Instance: cfsb16975321939382
InstanceOf: ExamplePatientProfile3
Description: "Paciente"
Usage: #example
 
* name.given = "Maria"
* name.family = "Ferreira"
* name.use = #official
* extension[+].url = "http://example.org/extensions/teste"

* identifier.system = "teste"


* maritalStatus.text = "single"

* gender = #female

* birthDate = "2000-10-02"

* deceasedBoolean = true
