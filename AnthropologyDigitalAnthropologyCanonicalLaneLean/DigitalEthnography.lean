import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalEthnographyPackage where
  thematicAnalysis : Prop
  codingScheme : Prop
  participantObservationData : Prop
  reflexivityStatement : Prop
  ethnographicValidity : Prop

structure DigitalEthnographyEvidence (E : DigitalEthnographyPackage) where
  thematicAnalysisClosed : E.thematicAnalysis
  codingSchemeClosed : E.codingScheme
  participantObservationDataClosed : E.participantObservationData
  reflexivityStatementClosed : E.reflexivityStatement
  ethnographicValidityClosed : E.ethnographicValidity

def DigitalEthnographyClosed (E : DigitalEthnographyPackage) : Prop :=
  E.thematicAnalysis ∧ E.codingScheme ∧ E.participantObservationData ∧ E.reflexivityStatement ∧ E.ethnographicValidity

theorem digital_ethnography_closed_from_evidence
    (E : DigitalEthnographyPackage) (Ev : DigitalEthnographyEvidence E) : DigitalEthnographyClosed E := by
  exact And.intro Ev.thematicAnalysisClosed (And.intro Ev.codingSchemeClosed (And.intro Ev.participantObservationDataClosed (And.intro Ev.reflexivityStatementClosed Ev.ethnographicValidityClosed)))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse