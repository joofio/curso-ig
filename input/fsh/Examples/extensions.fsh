//definição de extensoes e utilização em exemplo

Extension: Laterality
Description: "Body side of a body location."
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/bodysite-laterality (required)

Extension: example
Id:        therapy-sessions-completed1
Title:     "Therapy Sessions Completed"
Description: "The number of sessions of some therapy."
// Limit the context to Procedures -- Also see Rule Sets for a context-setting rule set
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
* value[x] only unsignedInt  // 0 or more

Extension: RelatedCondition
Id:        related-condition
Title:    "Condition related to the current resource"
Description: "The resource has an unspecified relationship with a Condition."
* value[x] only Reference(Condition)

// @Name: Local Code Systems

// Define a local code system
CodeSystem: ProfisaoCS
Id:         prof-cs
Title:     "profissao code system"
Description: "Lymph node terms that could not be found in standard sources such as SNOMED CT."


* #serralheiro
    "serralheiro"
* #medico
    "medico"
* #motorista
    "motorista"




// @Name: Include Entire Code System
// @Description: Value set comprised of an entire code system
ValueSet: ProffisaoVS
Id: ptprof-vs
Title: "Profissao Value Set"
Description: "valores de profissao para PT"
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system prof-cs






