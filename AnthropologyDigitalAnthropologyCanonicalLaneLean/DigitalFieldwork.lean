import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalFieldworkPackage where
  researchSite : Type u
  dataCollectionMethod : Prop
  participantObservation : Prop
  digitalToolsUsed : Prop
  fieldworkEthicsApproved : Prop

structure DigitalFieldworkEvidence (P : DigitalFieldworkPackage) where
  dataCollectionMethodClosed : P.dataCollectionMethod
  participantObservationClosed : P.participantObservation
  digitalToolsUsedClosed : P.digitalToolsUsed
  fieldworkEthicsApprovedClosed : P.fieldworkEthicsApproved

def DigitalFieldworkClosed (P : DigitalFieldworkPackage) : Prop :=
  P.dataCollectionMethod ∧ P.participantObservation ∧ P.digitalToolsUsed ∧ P.fieldworkEthicsApproved

theorem digital_fieldwork_closed_from_evidence
    (P : DigitalFieldworkPackage) (E : DigitalFieldworkEvidence P) : DigitalFieldworkClosed P := by
  exact And.intro E.dataCollectionMethodClosed (And.intro E.participantObservationClosed (And.intro E.digitalToolsUsedClosed E.fieldworkEthicsApprovedClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse