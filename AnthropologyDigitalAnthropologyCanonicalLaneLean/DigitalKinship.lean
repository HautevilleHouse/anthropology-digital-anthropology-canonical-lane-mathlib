import canonicalLaneMathlib.DigitalKinship

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

structure DigitalKinshipPackage where
  kinshipTerminology : Prop
  marriagePatterns : Prop
  descentRules : Prop
  digitalAffinity : Prop

structure DigitalKinshipEvidence (K : DigitalKinshipPackage) where
  kinshipTerminologyClosed : K.kinshipTerminology
  marriagePatternsClosed : K.marriagePatterns
  descentRulesClosed : K.descentRules
  digitalAffinityClosed : K.digitalAffinity

def DigitalKinshipClosed (K : DigitalKinshipPackage) : Prop :=
  K.kinshipTerminology ∧ K.marriagePatterns ∧ K.descentRules ∧ K.digitalAffinity

theorem digital_kinship_closed_from_evidence (K : DigitalKinshipPackage) (Ev : DigitalKinshipEvidence K) :
    DigitalKinshipClosed K := by
  exact And.intro Ev.kinshipTerminologyClosed
    (And.intro Ev.marriagePatternsClosed
      (And.intro Ev.descentRulesClosed Ev.digitalAffinityClosed))

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse