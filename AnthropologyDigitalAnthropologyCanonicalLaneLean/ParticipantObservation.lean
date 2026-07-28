import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure ObservationMethod where
  type : String
  duration : Nat
  consentObtained : Prop
  researcherPositionality : String

def ObservationMethodClosed (O : ObservationMethod) : Prop :=
  O.consentObtained

structure ParticipantObservation where
  method : ObservationMethod
  fieldNotes : String
  interactionLog : Type
  reflexivityStatement : Prop

def ParticipantObservationClosed (P : ParticipantObservation) : Prop :=
  ObservationMethodClosed P.method ∧ P.reflexivityStatement

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse