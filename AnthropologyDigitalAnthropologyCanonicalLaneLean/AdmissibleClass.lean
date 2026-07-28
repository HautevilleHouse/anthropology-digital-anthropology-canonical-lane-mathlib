import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure AdmissibleClass where
  object : DigitalAnthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigitalAnthropologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse