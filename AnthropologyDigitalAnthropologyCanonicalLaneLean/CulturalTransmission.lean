import canonicalLaneMathlib.CulturalTransmission

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure CulturalTransmissionPackage where
  verticalTransmission : Prop
  obliqueTransmission : Prop
  horizontalTransmission : Prop
  innovationRate : Prop

structure CulturalTransmissionEvidence (C : CulturalTransmissionPackage) where
  verticalTransmissionClosed : C.verticalTransmission
  obliqueTransmissionClosed : C.obliqueTransmission
  horizontalTransmissionClosed : C.horizontalTransmission
  innovationRateClosed : C.innovationRate

def CulturalTransmissionClosed (C : CulturalTransmissionPackage) : Prop :=
  C.verticalTransmission ∧ C.obliqueTransmission ∧ C.horizontalTransmission ∧ C.innovationRate

theorem cultural_transmission_closed_from_evidence (C : CulturalTransmissionPackage) (Ev : CulturalTransmissionEvidence C) :
    CulturalTransmissionClosed C := by
  exact And.intro Ev.verticalTransmissionClosed
    (And.intro Ev.obliqueTransmissionClosed
      (And.intro Ev.horizontalTransmissionClosed Ev.innovationRateClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse