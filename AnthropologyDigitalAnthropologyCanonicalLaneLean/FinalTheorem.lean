import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.DigitalFieldwork
import HautevilleHouse.AnthropologyDigitalAnthropologyCanonicalLaneLean.DigitalEthnography

namespace HautevilleHouse
namespace AnthropologyDigitalAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DigitalFieldworkClosed (A.object : DigitalFieldworkPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- bridge construction from admissible class
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  DigitalEthnographyClosed (A.object : DigitalEthnographyPackage)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyDigitalAnthropologyCanonicalLaneLean
end HautevilleHouse